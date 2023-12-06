from os.path import join
from functools import partial
from matplotlib import pyplot as plt
import pandas as pd
from sklearn.cluster import AgglomerativeClustering
from sklearn.metrics import pairwise_distances



from configuration import CORRELATION_RELEVANT_ANSWERS, DEV_KEY
from data_utils import get_survey_ds
from cluster_utils import plot_dendrogram, extract_clusters, clusters_stats
from questions_utils import get_question_text, get_question_index

NO_VAL = -10



def sim(x, y):
    return abs(x-y)


def sim_affinity(X):
    return pairwise_distances(X, metric=sim)

def sim_affinity_by_func(X
                 , sim_fun):
    return pairwise_distances(X, metric=sim_fun)

def corr_sim(x
             , y
             , corr
             , index_to_name):
    HIGH_VAL = 10

    p = corr[index_to_name[int(x[0])]][index_to_name[int(y[0])]]
    if p < 0:
        rc = HIGH_VAL
    else:
        rc = 1- p # so Pearson 1 will have distance 0

    return rc

def questions_AgglomerativeClustering():

    df = get_survey_ds()


    clusters_df = PearsonAgglomerativeClustering(df
                                   , dimensions=CORRELATION_RELEVANT_ANSWERS
                                   , title="Questions Hierarchical Clustering Dendrogram")

    clusters_df.to_csv(join("clusters"
                  , 'CORRELATION_RELEVANT_ANSWERS_samples.csv')
             , index=False)


def PearsonAgglomerativeClustering(df
                                   , dimensions
                                   , title):

    corr = df[dimensions].corr()

    """
    Most correlated questions
    , 'Q102' # I have significant influence on the repository
    , 'Q78' # I am a core member of the repository

    """
    print(corr['Q102']['Q78'])
    pearson_sim = partial(corr_sim
                            , corr=corr
                            , index_to_name=dimensions)
    pearson_sim_affinity = partial(sim_affinity_by_func
                                   , sim_fun=pearson_sim)


    clustering = AgglomerativeClustering(n_clusters=None
                                         , affinity=pearson_sim_affinity
                                         , linkage='single'
                                         , compute_full_tree='auto'
                                         , distance_threshold=0
                                         , compute_distances=True).fit(
        [[i] for i in range(len(dimensions))])

    plt.title(title)
    #plt.rcParams["figure.figsize"] = (20, 20)
    plt.figure(figsize=(15, 20))
    # plot the dendrogram
    plot_dendrogram(clustering
                    , truncate_mode="level"
                    #, p=3
                    , labels=[get_question_index(i) for i in dimensions]
                    , orientation='left'
                    , leaf_font_size=12
                    )
    plt.xlabel("Distance function is 1 - Pearson : high correlation is translated to close to zero values")
    plt.figure().set_figheight(20)
    plt.show()

    db_df = pd.DataFrame([[i] for i in range(len(dimensions))]
                         , columns=[DEV_KEY])
    clusters_df = extract_clusters(db=db_df
                    , clustering=clustering
                    , key=DEV_KEY)

    return clusters_df


def run_clusters_stats():
    db = get_survey_ds()

    clusters_df = pd.read_csv(join("clusters"
                  , 'CORRELATION_RELEVANT_ANSWERS_samples.csv'))

    g = clusters_stats(db
                   , clusters_df
                   , dimensions=CORRELATION_RELEVANT_ANSWERS
                   , key=DEV_KEY)

    g.to_csv(join("clusters"
                  , 'CORRELATION_RELEVANT_ANSWERS_samples_stats.csv')
             , index=False)

if __name__ == "__main__":
    questions_AgglomerativeClustering()
    #run_clusters_stats() # Not suitable to this kind of clustering
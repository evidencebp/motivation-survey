from os.path import join
import pandas as pd
from scipy.stats import entropy

from configuration import DATA_PATH

from cochange_analysis import cochange_analysis, the_higher_the_better, cochange_analysis_by_value
from df_to_latex_table import df_to_latex_table
from stability_analysis import analyze_stability

DRY_FILE = 'developer_motivation_per_year_per_repo.csv'
LB_COCHANGE_STATS = 'labeling_functions_cochange_stats_{concept}.csv'

labeling_functions_change = {'message_length_avg': the_higher_the_better
    , 'refactor_mle': the_higher_the_better
    , 'commit_hours': the_higher_the_better
                             }
KEYS = ['author_email', 'repo_name']


def labeling_functions_cochange():

    dry = pd.read_csv(join(DATA_PATH
                           , DRY_FILE))
    for i in labeling_functions_change.keys():
        metrics_dict ={i : the_higher_the_better}
        metrics_dict.update({i: the_higher_the_better for i in set(labeling_functions_change.keys()) -set(i)})

        stats = cochange_analysis(per_year_df=dry
                          , metrics_dict=metrics_dict
                          , keys=KEYS
                          , control_variables=[]
                          , min_cnt_column=None
                          , min_cnt_threshold=None
                          )




        stats_df = pd.DataFrame.from_dict(stats, orient='index')
        stats_df = (stats_df.reset_index()).rename(columns={'index': 'feature'})
        stats_df = stats_df.sort_values(['precision_lift','feature']
                                            , ascending=[False, True])
        stats_df.to_csv(join(DATA_PATH
                             , LB_COCHANGE_STATS.format(concept=i))
                        , index=False)

    return stats_df

def labeling_functions_stability():

    KEYS = ['author_email', 'repo_name']
    dry = pd.read_csv(join(DATA_PATH
                           , DRY_FILE))

    stats = analyze_stability(metric_per_year_df=dry
                      , keys=KEYS
                      , metrics=list(labeling_functions_change.keys())
                      , time_column='year'
                      , minimal_time=-1
                      , control_variables=[]
                      , min_cnt_column=None
                      , min_cnt_threshold=None)


    stats_df = pd.DataFrame.from_dict(stats, orient='index')
    stats_df.to_csv(join(DATA_PATH
                           , 'motivation_stability.csv'))

def aggregate_cochange_results():

    rows = []
    for concept in labeling_functions_change.keys():
        df = pd.read_csv(join(DATA_PATH
                              , LB_COCHANGE_STATS.format(concept=concept)))
        for classifier in labeling_functions_change.keys():
            if concept == classifier:
                rows.append((concept, classifier, ''))
            else:
                precision = df[df['feature']==classifier]['precision'].iloc[0]
                precision_lift = df[df['feature']==classifier]['precision_lift'].iloc[0]
                rows.append((concept, classifier, '{precision} ({lift})'.format(precision=precision
                                                                                , lift=precision_lift)))

    agg_df = pd.DataFrame(rows
                          , columns=['Concept', 'Classifier', 'Performance'])

    renames = {'message_length_avg': 'Messages'
        , 'refactor_mle': 'Refactoring'
        , 'commit_hours': 'Hours'
        }
    agg_df['Concept'] = agg_df['Concept'].map(lambda x: renames.get(x, x))
    agg_df['Classifier'] = agg_df['Classifier'].map(lambda x: renames.get(x, x))

    print(agg_df)

def controled_cochange():

    controls = ['age_group', 'language_code'
        , 'dev_group', 'popularity_group' #, 'Is_Company'
                 ]
    dry = pd.read_csv(join(DATA_PATH
                           , DRY_FILE))
    for i in labeling_functions_change.keys():
        print(i)

        for control in controls:
            print(control)
            metrics_dict ={i : the_higher_the_better}
            metrics_dict.update({i: the_higher_the_better for i in set(labeling_functions_change.keys()) -set(i)})

            stats = cochange_analysis_by_value(per_year_df=dry
                                   , metrics_dict=metrics_dict
                                   , fixed_variable=control
                                   , fixed_values=None #[True, False] - values for Is_Company, to ignore nan
                                   , keys=KEYS
                                   , control_variables=[]
                                   )
            for c in stats.keys():
                for classifier in stats[c].keys():
                    lift = stats[c][classifier]['precision_lift']
                    if lift <= 0.0:
                        print("concept {concept}: Partition {control} classifier {classifier} ".format(control=c
                        , classifier=classifier
                        , concept=i)
                        , lift)

if __name__ == "__main__":
    #labeling_functions_cochange()
    labeling_functions_stability()
    #aggregate_cochange_results()
    #controled_cochange()
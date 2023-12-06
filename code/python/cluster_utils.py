from scipy.cluster.hierarchy import dendrogram
import numpy as np
import pandas as pd

def plot_dendrogram(model, **kwargs):
    # Create linkage matrix and then plot the dendrogram

    # create the counts of samples under each node
    counts = np.zeros(model.children_.shape[0])
    n_samples = len(model.labels_)
    for i, merge in enumerate(model.children_):
        current_count = 0
        for child_idx in merge:
            if child_idx < n_samples:
                current_count += 1  # leaf node
            else:
                current_count += counts[child_idx - n_samples]
        counts[i] = current_count

    linkage_matrix = np.column_stack(
        [model.children_, model.distances_, counts]
    ).astype(float)

    # Plot the corresponding dendrogram
    return dendrogram(linkage_matrix, **kwargs)



def extract_clusters(db
                  , clustering
                  , key):
    rows = []
    for i in range(len(db)):
        rows.append((db[key].iloc[i]
                    , clustering.labels_[i]))

    df = pd.DataFrame(rows
                      , columns=[key, 'Cluster'])
    return df

def clusters_stats(db
                   , clustering
                   , dimensions
                   , key):

    joint = pd.merge(db
                     , clustering
                     , on=key)
    agg = {i: ['mean', 'std'] for i in dimensions}
    agg[key] = 'count'

    g = joint.groupby('Cluster', as_index=False).agg(agg)

    return g
from os.path import join
import pandas as pd

from configuration import STATS_PATH, MOTIVATION_TYPE_MOTIVATION_PEARSON_FILE, MOTIVATION_TYPE_INNER_CORRELATION_FILE\
    , PROJECT_DEVELOPERS_STABILITY_FILE, REPO_TWINS_MOTIVATION_STATS_FILE, HALVES_PREDICTIVE_STATS_CSV\
    , FOLLOWUP_STABILITY_FILE, FOLLOWUP_PREDICTABILITY_STATS_FILE, MOTIVATION_TYPE_HIGH_ANSWER_FILE
from df_to_latex_table import df_to_latex_table

def summarize_motivation_influence():

    # Inner correlation
    df = pd.read_csv(join(STATS_PATH
                     , MOTIVATION_TYPE_INNER_CORRELATION_FILE))
    df = df[['Type', 'Avg_correlation']]
    df.rename(columns={'Avg_correlation':'Inner Avg. Pearson'}
              , inplace=True)
    joint = df

    # Correlation with Motivation
    df = pd.read_csv(join(STATS_PATH
                     , MOTIVATION_TYPE_MOTIVATION_PEARSON_FILE))
    df.rename(columns={'Pearson':'Pearson with Motivation'}
              , inplace=True)
    joint = pd.merge(joint
                     , df
                     , on='Type'
                     )

    # Developers from the same project stability - Pred(25) Lift
    df = pd.read_csv(join(STATS_PATH
                     , PROJECT_DEVELOPERS_STABILITY_FILE))
    g = df.groupby('motivation_type').agg({'pred_25_lift': 'mean'})
    g.rename(columns={'pred_25_lift': 'Same Project Stability Lift'}
             , inplace=True)
    joint = joint.merge(g
                     , left_on='Type'
                     , right_on='motivation_type'
                     )

    # Developers from the same project predictability - Precision Lift

    df = pd.read_csv(join(STATS_PATH
                     , REPO_TWINS_MOTIVATION_STATS_FILE))
    g = df.groupby('motivation_type').agg({'precision_lift': 'mean'})
    g.rename(columns={'precision_lift': 'Same Project Predictability Lift'}
             , inplace=True)
    joint = joint.merge(g
                     , left_on='Type'
                     , right_on='motivation_type'
                     )

    # Followup stability - Pred(25) Lift

    df = pd.read_csv(join(STATS_PATH
                     , FOLLOWUP_STABILITY_FILE
                          ))
    g = df.groupby('motivation_type').agg({'pred_25_lift': 'mean'})
    g.rename(columns={'pred_25_lift': 'Follow up Stability Lift'}
             , inplace=True)
    joint = joint.merge(g
                     , left_on='Type'
                     , right_on='motivation_type'
                     )

    # Followup - Precision Lift

    df = pd.read_csv(join(STATS_PATH
                     , FOLLOWUP_PREDICTABILITY_STATS_FILE))
    g = df.groupby('motivation_type').agg({'precision_lift': 'mean'})
    g.rename(columns={'precision_lift': 'Followup Predictability Lift'}
             , inplace=True)
    # Ugly patch to fix payment
    g['Followup Predictability Lift'] = g['Followup Predictability Lift'].map(lambda x: x if x != -1 else '')
    joint = joint.merge(g
                     , left_on='Type'
                     , right_on='motivation_type'
                     )
    # Halves Lift


    df = pd.read_csv(join(STATS_PATH
                     , HALVES_PREDICTIVE_STATS_CSV))
    g = df.groupby('motivation_type').agg({'precision_lift': 'mean'})
    g.rename(columns={'precision_lift': 'Halves Predictability Lift'}
             , inplace=True)
    joint = joint.merge(g
                     , left_on='Type'
                     , right_on='motivation_type'
                     , how='left'
                     )


    df = pd.read_csv(join(STATS_PATH
                     , MOTIVATION_TYPE_HIGH_ANSWER_FILE))
    joint = joint.merge(df
                     , on='Type'
                     , how='left'
                     )

    joint = joint.fillna('')
    joint = joint.sort_values('Type')
    #joint.iat[6, joint.columns.get_loc('Followup Predictability Lift')] = ''
    #joint.iloc[6]['Followup Predictability Lift'] = ''
    df_to_latex_table(joint[['Type', 'High Answer Probability', 'Inner Avg. Pearson', 'Pearson with Motivation',
      # 'Same Project Stability Lift', 'Same Project Predictability Lift',
       'Follow up Stability Lift', 'Followup Predictability Lift',
       'Halves Predictability Lift']]
                      , caption="\label{tab:motivation-type-sum} Motivation Type Summary")

    return joint

if __name__ == "__main__":
    summarize_motivation_influence()
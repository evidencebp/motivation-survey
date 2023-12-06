from os.path import join
import pandas as pd


from configuration import CORRELATION_RELEVANT_ANSWERS, STATS_PATH, INDEPENDENT_STATS_FILE
from data_utils import get_survey_ds

def generate_col_self_ind_dist(df: pd.DataFrame
                               , col: str) -> pd.DataFrame:

    col_dist = df[col].value_counts(normalize=True).sort_index()
    col_df = pd.DataFrame(col_dist).reset_index()
    col_df.columns = ['val', 'prob']
    col_df['bluff_key'] = 0

    joint = pd.merge(col_df
                     , col_df
                     , on='bluff_key')
    joint = joint[['val_x', 'prob_x', 'val_y', 'prob_y']]
    joint['joint_prob'] = joint['prob_x']*joint['prob_y']

    return joint

def col_independent_pred(df: pd.DataFrame
                               , col: str
                                , threshold: float = 0.25) -> float:

    df = generate_col_self_ind_dist(df=df
                               , col=col)

    df['rel_diff'] = df.apply(lambda x: 0.0 if x.val_x == 0.0 else x.val_y/x.val_x, axis=1)
    df['threshold_rel_diff'] = df.rel_diff.map(lambda x: x > (1 - threshold) and x < (1 + threshold))

    return df[df['threshold_rel_diff']].joint_prob.sum()

def compute_questions_independent_match():
    df = get_survey_ds()

    rows = []
    for i in CORRELATION_RELEVANT_ANSWERS:
        ind_prob = col_independent_pred(df=df
                               , col=i)
        rows.append((i, ind_prob))

    stats_df = pd.DataFrame(rows, columns=['Question', 'ind_pred_25'])
    stats_df = stats_df.sort_values('ind_pred_25'
                                    , ascending=False)
    stats_df.to_csv(join(STATS_PATH
                         , INDEPENDENT_STATS_FILE)
                    , index=False)

if __name__ == "__main__":
    compute_questions_independent_match()

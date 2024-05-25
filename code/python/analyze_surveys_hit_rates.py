from os.path import join

import numpy as np
import pandas as pd

from configuration import DATA_PATH

from df_to_latex_table import df_to_latex_table

def analyze_surveys_hit_rates():
    df = pd.read_csv(join(DATA_PATH
                          , "motivation_factors_hit_rates.csv"))
    to_rank_columns = ['herzberg1986one', 'our', 'follow-up']

    for i in to_rank_columns:
        df[i + '_rank'] = df[i].rank(ascending=False)
        df[i + '_combined'] = df.apply(lambda x: '' if np.isnan(x[i]) else str(x[i + '_rank']) + ' (' + str(x[i]) + ')'
                                       , axis=1)
    i = 'gerosa2021shifting'
    df[i + '_rank'] = df[i].rank(ascending=True)
    df[i + '_combined'] = df.apply(lambda x: '' if np.isnan(x[i]) else str(x[i + '_rank']) + ' (' + str(x[i]) + ')'
                                       , axis=1)

    ranked = [i + '_rank' for i in to_rank_columns] + ['couger1988motivators 1977 (fitz1978dp)', 'couger1988motivators 1987']
    df['avg_rank'] = df[ranked].mean(axis=1)
    df['min_rank'] = df[ranked].min(axis=1)
    df['max_rank'] = df[ranked].max(axis=1)
    df['rank_gap'] = df['max_rank'] - df['min_rank']


    df = df.sort_values('avg_rank')
    df.rename(columns={'Ours': 'Motivator'}
              , inplace=True)

    print()

    columns_header = '{ | p{25mm}| p{12mm}| p{12mm}| p{12mm}| p{15mm}| p{12mm}| p{12mm}  |p{12mm}  | p{12mm}  |}'
    df_to_latex_table(df[['Motivator', 'avg_rank']
                         + ['couger1988motivators 1977 (fitz1978dp)', 'couger1988motivators 1987'
                            , 'herzberg1986one_combined', 'gerosa2021shifting_combined'
                            , 'our_combined', 'follow-up_combined' , 'rank_gap']
                         ].fillna('')
                        , caption=' \label{tab:surveys-hit-rate} Surveys Hit Rate Comparison'
                        , columns_to_name={'avg_rank': 'Avg. Rank'
                                           , 'couger1988motivators 1977 (fitz1978dp)' : 'Fitz \cite{fitz1978dp}'
                                           , 'couger1988motivators 1987' : 'Couger \cite{couger1988motivators}'
                                           , 'herzberg1986one_combined' : 'Herzberg \cite{herzberg1986one}'
                                           , 'gerosa2021shifting_combined': 'Gerosa \cite{gerosa2021shifting}'
                                           , 'our_combined': 'Our'
                                           , 'follow-up_combined': 'Follow-up'
                                           , 'rank_gap': 'Gap'
                                           }
                        , star_table=True
                        , columns_header=columns_header
                      )

    corr = df.corr()
    print(corr)
    print('avg_rank_corr', corr['avg_rank'])
    print('our', corr['our'])
    print('couger1988motivators 1987', corr['couger1988motivators 1987'])

if __name__ == "__main__":
    analyze_surveys_hit_rates()

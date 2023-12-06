from configuration import DEV_KEY

from verify_labeling_functions_by_survey import verify_labeling_functions

labeling_functions = ['dev_message_length_avg'
    , 'dev_refactor_mle'
    , 'dev_commit_hours'
                      ]


def verify_with_target(df
                       , target):
    for f in labeling_functions:
        high_name = 'High_' + f
        relevant_df = df.copy()[~df[f].isna()]
        split = df[f].mean()
        relevant_df[high_name] = relevant_df[f].map(lambda x: x > split)
        print("Split by {f} higher than {s}".format(f=f
                                                    , s=split))
        print(relevant_df.groupby(high_name).agg({DEV_KEY: 'count'
                                                     , target: 'mean'
                                                     , 'high_' + target: 'mean'}))


if __name__ == "__main__":
    verify_labeling_functions()

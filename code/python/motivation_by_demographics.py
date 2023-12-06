from os.path import join

from configuration import DEV_KEY, motivation_type_questions, MOTIVATION_QUESTION, STATS_PATH, PAYMENT_COL
from data_utils import get_survey_ds
from demographic_analysis import enhance_df_with_academy, enhance_df_with_country
from plot_georgraphic_distribution import enhance_df_with_age, enhance_df_with_experience

def get_factors_df():
    df = get_survey_ds()

    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)

    df = enhance_df_with_academy(df)
    df = enhance_df_with_age(df)
    df = enhance_df_with_experience(df)
    df = enhance_df_with_country(df)

    # 'I work as a professional programmer'
    df['Is_Professional'] = df['Q63'].map(lambda x: True if x == 1 else False if x == 2 else None)

    return df

def get_metrics_dict():

    metrics = {i: 'mean' for i in motivation_type_questions.keys()}
    metrics[DEV_KEY] = 'count'
    metrics[MOTIVATION_QUESTION] = 'mean'

    return metrics

def motivation_by_term(term):
    df = get_factors_df()

    #df = enhance_with_types(df)
    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)


    g = df.groupby([term], as_index=False).agg(get_metrics_dict())

    print(g)

    g.to_csv(join(STATS_PATH
                  , "motivation_by_{term}.csv".format(term=term)))

def run_motivation_by_demographic():
    motivation_by_term(term='Is_male')
    motivation_by_term(term='domain')
    motivation_by_term(term='degree')
    motivation_by_term(term='age_cat')
    motivation_by_term(term='exp_cat')
    motivation_by_term(term=PAYMENT_COL)
    motivation_by_term(term='Is_Professional')
    motivation_by_term(term='country')

if __name__ == "__main__":
    run_motivation_by_demographic()

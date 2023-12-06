from os.path import join


import numpy as np
import pandas as pd

from configuration import DEV_KEY, MOTIVATION_QUESTION, REPLY_EMAIL_QUESTION\
    , SAME_REPO_QUESTION, gender_encoding, GENDER_COLUMN, BEING_PAID_QUESTION, NOT_PAID_ANSWER, PAYMENT_COL\
    , REPOSITORY_QUESTION,  WORKING_HOURS_QUESTION, is_high_answer, motivation_type_questions, STATS_PATH


from confusion_matrix import ConfusionMatrix
from data_utils import get_survey_ds
from demographic_analysis import EXPERIENCE_QUESTION, GITHUB_YEARS_QUESTION
from followup_similarity import get_match_ds, FIRST_PREFIX, FOLLOWUP_PREFIX
from plot_cdf import plot_cdf_by_column
from questions_utils import get_question_text
from verify_metrics import HIGH_ANSWER

AGE_COLUMN = 'Q61_1'


def working_hours_cdf_by_motivation():
    df = get_survey_ds()

    df[MOTIVATION_QUESTION] = df[MOTIVATION_QUESTION].map(lambda x: {0: 'Low Motivation'
        ,1 : 'High Motivation'}.get(is_high_answer(x), is_high_answer(x)))
    df['Working Hours'] = pd.to_numeric(df[WORKING_HOURS_QUESTION], errors='coerce')

    print("High motivation distribution")
    print(df[MOTIVATION_QUESTION].value_counts(normalize=True))
    df = df[(~df[MOTIVATION_QUESTION].isna()) & (~df[WORKING_HOURS_QUESTION].isna())]
    plot_cdf_by_column(df
                       , 'Working Hours'
                       , title="Working Hours CDF by Motivation Level"
                       # , output_file=os.path.join(FIGURES_PATH
                       #                            , '{title}.png'.format(title=title))
                       , output_file=None
                       , subsets_column=MOTIVATION_QUESTION)


def motivation_more_important_than_skill():

    COUNT_NAME = 'Developers'
    MOTIVSTION_SKILL_QUESTION = 'Q83'
    NEUTRAL = 6
    Preference = 'At_Least'



    df = get_survey_ds()

    g = df.groupby(MOTIVSTION_SKILL_QUESTION, as_index=False).agg({DEV_KEY : 'count'})
    g = g.rename(columns={DEV_KEY: COUNT_NAME})
    g[Preference] = g[MOTIVSTION_SKILL_QUESTION].map(lambda x: x > NEUTRAL)

    g = g.groupby(Preference, as_index=False).agg({COUNT_NAME: 'sum'})
    print(g)


def unpaid_payment_answers():

    PHYSICAL_CONDITIONS = 'Q87.1'
    PAYMENT_SATISFACTION = 'Q92.1'

    df = get_survey_ds()
    print('developers', len(df))
    print(df[PAYMENT_COL].value_counts())
    print(df[PAYMENT_COL].value_counts(normalize=True))

    df['is_github'] = df.apply(lambda x: 'github' in x[REPOSITORY_QUESTION].lower()
                               , axis=1)
    print("Payment in github"
          , df[df['is_github'] == True][PAYMENT_COL].value_counts(normalize=True))

    df = df[df[BEING_PAID_QUESTION] == NOT_PAID_ANSWER]
    print("unpaid developers", len(df))

    print(" Payment satisfaction (of unpaid) answers ratio", len(df[~df[PAYMENT_SATISFACTION].isna()])/len(df))
    print("unpaid satisfaction distribution"
          , df[PAYMENT_SATISFACTION].value_counts(normalize=True).sort_index())
    print(" Physical conditions (of unpaid) answers ratio", len(df[~df[PHYSICAL_CONDITIONS].isna()])/len(df))


def single_dev_community_answers():

    AUTHORS_FEATURE = 'repo_authors'
    community_questions = ['Q75', 'Q83.1', 'Q89.1', 'Q95.1', 'Q96.1',  'Q97.1',  'Q98.1']

    df = get_survey_ds()

    df = df[df[AUTHORS_FEATURE] == 1]

    print("\nDevelopers in a single person projects", len(df))
    for i in community_questions:
        print(i
              , get_question_text(i)
              , len(df[~df[i].isna()])/len(df))
        print("Distribution"
            , df[i].value_counts(normalize=True).sort_index())

def gender_typos():

    df = get_survey_ds()



    gender_typos = ['mail','Males','boi', 'J']
    df['Gender_typo'] = df[GENDER_COLUMN].map(
        lambda x: 1 if x in gender_typos else 0 if x in gender_encoding else None)

    print("Gender typo", df['Gender_typo'].value_counts(normalize=True))

    helicopters =['Attack Helicopter',  'Apache Helicopter', 'Assault Truck']
    df['helicopters'] = df[GENDER_COLUMN].map(
        lambda x: 1 if x in helicopters else 0)
    print("helicopters", len(df[df['helicopters']==1])/len(df[~df[GENDER_COLUMN].isna()]))



def age_answers():

    df = get_survey_ds()



    print("Age dist", df[AGE_COLUMN].value_counts().sort_index())
    print("Strange Age Prob."
          , len(df[df[AGE_COLUMN] == 100])/len(df[~df[AGE_COLUMN].isna()]))

def time_change(column
                , joint
                , reasonable_difference=3):
    init = FIRST_PREFIX + column
    follow_up = FOLLOWUP_PREFIX + column

    joint['diff'] = joint[follow_up] - joint[init]
    joint['unreasonable'] = joint['diff'].map(lambda x: (x < -1 or x > reasonable_difference)) # -1 to allow rounding errors

    print("change")
    g = joint.groupby('diff', as_index=False).agg({REPLY_EMAIL_QUESTION: 'count'})
    print(g)

    g = joint.groupby([init
                        , follow_up], as_index=False).agg({REPLY_EMAIL_QUESTION: 'count'})
    print(g)

    print("unreasonable ratio")
    print(len(joint[joint['unreasonable'] == 1])/len(joint))

def age_change():

    print("age change")
    joint = get_match_ds(same_project_only=True)

    time_change(AGE_COLUMN
                , joint)

def experience_change():
    print("experience change")
    joint = get_match_ds(same_project_only=True
                         , base_columns=[EXPERIENCE_QUESTION])
    init = FIRST_PREFIX + EXPERIENCE_QUESTION
    follow_up = FOLLOWUP_PREFIX + EXPERIENCE_QUESTION

    joint[FIRST_PREFIX +'exp'] = joint[init].map(lambda x: None if not str(x).isnumeric() else int(x))
    joint[FOLLOWUP_PREFIX +'exp'] = joint[follow_up] #.map(lambda x: None if not str(x).isnumeric() else int(x))

    joint = joint.dropna()

    time_change('exp'
                , joint)


def github_experience_change():
    print("experience change")
    joint = get_match_ds(same_project_only=True
                         , base_columns=[GITHUB_YEARS_QUESTION])
    init = FIRST_PREFIX + GITHUB_YEARS_QUESTION
    follow_up = FOLLOWUP_PREFIX + GITHUB_YEARS_QUESTION

    joint[FIRST_PREFIX +'git_exp'] = joint[init]#.map(lambda x: None if not str(x).isnumeric() else int(x))
    joint[FOLLOWUP_PREFIX +'git_exp'] = joint[follow_up] #.map(lambda x: None if not str(x).isnumeric() else int(x))

    joint = joint.dropna()

    time_change('git_exp'
                , joint)

#GITHUB_YEARS_QUESTION
def motivation_and_churn():

    # TODO - add followup question if should use it
    joint = get_match_ds()
    g = joint.groupby(FOLLOWUP_PREFIX + SAME_REPO_QUESTION).agg({FIRST_PREFIX + MOTIVATION_QUESTION: 'mean'
                                                                 , FOLLOWUP_PREFIX + MOTIVATION_QUESTION: 'mean'
                                                                 , REPLY_EMAIL_QUESTION : 'count'})
    print("Motivation by staying in project"
          , g)
    print("1: Yes, 2: No, 3: Not sure")

def motivation_stability():

    print("motivation question stability")
    question_stability(MOTIVATION_QUESTION)

    print("working hours question stability")
    question_stability(WORKING_HOURS_QUESTION)

def question_stability(question):
    joint = get_match_ds(same_project_only=True
                         , base_columns=[question])
    joint = joint[
        (~joint[FIRST_PREFIX + question].isna() & ~joint[FOLLOWUP_PREFIX + question].isna())]
    joint[FIRST_PREFIX + question] = pd.to_numeric(joint[FIRST_PREFIX + question], errors='coerce')
    joint[FOLLOWUP_PREFIX + question] = pd.to_numeric(joint[FOLLOWUP_PREFIX + question], errors='coerce')


    joint[FIRST_PREFIX + question] = joint[FIRST_PREFIX + question].map(lambda x: x>= 9)
    print("Follow-up averages")
    print(joint.groupby([FIRST_PREFIX + question]).agg({FOLLOWUP_PREFIX + question : 'sum'}))
    joint[FOLLOWUP_PREFIX + question] = joint[FOLLOWUP_PREFIX + question].map(lambda x: x>= 9)
    g = joint.groupby([FIRST_PREFIX + question
                        , FOLLOWUP_PREFIX + question]
                        , as_index=False).agg({REPLY_EMAIL_QUESTION : 'count'})
    cm = ConfusionMatrix(classifier=FIRST_PREFIX + question
                         , concept=FOLLOWUP_PREFIX + question
                         , count=REPLY_EMAIL_QUESTION
                         , g_df=g)
    sum = cm.summarize()
    print("high  stability")
    print(sum)
    print("positive prob over negative prob")
    print(sum['precision']/((sum['false_negatives'])/(sum['true_negatives']+sum['false_negatives'])))


def working_hours_and_motivation():
    df = get_survey_ds()
    df[WORKING_HOURS_QUESTION] =  pd.to_numeric(df[WORKING_HOURS_QUESTION], errors='coerce')
    #df[WORKING_HOURS_QUESTION].astype(dtype = float, errors = 'ignore')
    print("Correlation of motivation and working hours"
        , df.corr()[WORKING_HOURS_QUESTION][MOTIVATION_QUESTION])

    for paid in df[BEING_PAID_QUESTION].unique():
        print("Correlation of motivation and working hours"
              , " paid "
              , paid
              , df.corr()[WORKING_HOURS_QUESTION][MOTIVATION_QUESTION])

    df['high_motivation'] = df[MOTIVATION_QUESTION].map(lambda x: x >= HIGH_ANSWER)
    print("working hours by high motivation"
          , df.groupby('high_motivation').agg({WORKING_HOURS_QUESTION: 'mean'}))
    print("working hours by high motivation and payment"
              , df.groupby(['high_motivation', BEING_PAID_QUESTION]).agg({WORKING_HOURS_QUESTION: 'mean'}))


def high_hostility_motivations():
    print("**************** High hostility motivations ****************")
    df = get_survey_ds()
    df = df[~df[MOTIVATION_QUESTION].isna()]

    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)
        #df[type] = df[type].map(lambda x: None if x == np.nan
        #    else 1 if float(x) > 0 else 0)
    df['High Hostility'] = df['Hostility'].map(lambda x: None if np.isnan(x) else x >= HIGH_ANSWER)

    agg = {i: 'mean' for i in motivation_type_questions.keys()}
    agg[DEV_KEY] = 'count'

    g = df.groupby('High Hostility', as_index=False).agg(agg)
    print(g)
    g.to_csv(join(STATS_PATH
                  , 'motivation_by_high_hostility.csv')
             , index=False)

def motivation_vs_skill():

    MOTIVATION_VS_SKILL = 'Q83'
    df = get_survey_ds()

    print("My motivation has more influence on my productivity, than my skill")
    print(df[MOTIVATION_VS_SKILL].value_counts(normalize=True).sort_index().cumsum())

def quality_experience_correlation():

    HIGH_QUALITY_QUESTION = 'Q88'
    df = get_survey_ds()

    print("Quality cumulative dist"
          , df[HIGH_QUALITY_QUESTION].value_counts(normalize=True).sort_index().cumsum())

    df[HIGH_QUALITY_QUESTION].value_counts(normalize=True).sort_index().cumsum()

    df['exp'] = df[EXPERIENCE_QUESTION].map(lambda x: None if x == '0' or not x.isnumeric() else int(x))
    corr = df.corr()

    print("Correlation of experience and code quality"
          , corr['exp'][HIGH_QUALITY_QUESTION])

def run_anecdotes():
    working_hours_cdf_by_motivation()
    single_dev_community_answers()
    motivation_more_important_than_skill()
    unpaid_payment_answers()
    gender_typos()
    age_answers()
    #motivation_and_churn()
    working_hours_and_motivation()
    high_hostility_motivations()
    age_change()
    experience_change()
    github_experience_change()
    motivation_vs_skill()
    quality_experience_correlation()
    motivation_stability()

if __name__ == "__main__":
    gender_typos()
    motivation_stability()
    #run_anecdotes()

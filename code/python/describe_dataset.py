from os.path import join
import pandas as pd

from configuration import GIT_PROFILE_QUESTION, REPOSITORY_QUESTION, DATA_PATH\
    , CORRELATION_RELEVANT_ANSWERS, STATS_PATH, BASIC_STATS_FILE

from data_utils import get_survey_ds
from questions_utils import get_question_keys, get_question_text, question_type, get_question_motivation_type



def describe_dataset():

    df = get_survey_ds()

    print("number of answers", len(df))
    print("number of finished answers", len(df[df.Finished ==True]))

    print("Start", df.StartDate.min()[:10])
    print("End", df.StartDate.max()[:10])

    # source of developers
    print("developers source", df.sampling_method.value_counts())
    print("developers source", df.sampling_method.value_counts(normalize=True))


    df = get_survey_ds(anon=True)
    #print("Profiles", df[GIT_PROFILE_QUESTION].nunique()) # removed in anonymization
    print("Repos", df[REPOSITORY_QUESTION].nunique())


def uncategorized_questions():
    for i in set(get_question_keys()) - set(CORRELATION_RELEVANT_ANSWERS):
        print("'{}'".format(i), get_question_text(i))

def public_emails():
    df = pd.read_csv(join(DATA_PATH, 'developers_by_public_email.csv'))
    print("public emails", df.email.nunique())


def compute_stats():

    df = get_survey_ds()[CORRELATION_RELEVANT_ANSWERS]
    stats_df = df.describe().T.reset_index()

    stats_df = stats_df.rename(columns={'index': 'Question'})
    stats_df['Question Text'] = stats_df['Question'].map(get_question_text)

    stats_df.to_csv(join(STATS_PATH
                         , BASIC_STATS_FILE))

    print("general stats", stats_df.agg({'mean': 'mean'
                                         , 'std': 'mean'}))

    stats_df['question_type'] = stats_df['Question'].map(lambda x: question_type(x))
    print("question type stats", stats_df.groupby('question_type').agg({'mean': 'mean'
                                         , 'std': 'mean'}))


    stats_df['motivation_type'] = stats_df['Question'].map(lambda x: get_question_motivation_type(x))
    print("motivation type stats", stats_df.groupby('motivation_type').agg({'mean': 'mean'
                                         , 'std': 'mean'}).sort_values('mean'))


def run_dataset_description():
    describe_dataset()
    public_emails()
    uncategorized_questions()
    compute_stats()

if __name__ == "__main__":
    run_dataset_description()

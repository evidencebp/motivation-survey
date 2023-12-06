from configuration import JOB_SATISFACTION
from data_utils import get_survey_ds
from questions_utils import get_question_text

def job_satisfaction():

    df = get_survey_ds()

    for i in JOB_SATISFACTION:
        print(i, get_question_text(i))
        print(df[i].value_counts(normalize=True).sort_index())
        #print("mean", df[i].mean())
        print("At least satisfied",
              df[i].map(lambda x: None if x not in range(11) else 1 if x >= 6 else 0).mean())

if __name__ == "__main__":
    job_satisfaction()

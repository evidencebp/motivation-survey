from os.path import join
import pandas as pd

from configuration import STATS_PATH, BASIC_STATS_FILE
from data_utils import get_survey_ds
from questions_utils import get_question_text, question_type

comparison_pairs = [
    {'person': 'Q99' # I improved as a programmer since a year ago
     , 'project': 'Q82' # Code quality in the repository improved since a year ago
     }
    , {'person': 'Q88' # My code is of high quality
        , 'project': 'Q81'  # The quality of the code in this repository is better than others
     }
    , {'person': 'Q87'  # I am skilled in software development
        , 'project': 'Q76'  # The community is very professional.
       }
    , {'person': 'Q86' # I regularly have a high level of motivation to contribute to the repository
        , 'project': 'Q83.1'  # The repository’s community of developers is more motivated than that of other repositories.
       }
]

def person_vs_project():

    df = get_survey_ds()

    for i in comparison_pairs:
        df['diff'] = df[i['person']] - df[i['project']]
        print()
        print(i['person'], df[i['person']].mean(), get_question_text(i['person']))
        print(i['project'], df[i['project']].mean(), get_question_text(i['project']))
        print('diff', df['diff'].mean())
        print('relative diff', df['diff'].mean()/df[i['person']].mean())

    stats_df = pd.read_csv(join(STATS_PATH
                                , BASIC_STATS_FILE))
    print(stats_df.groupby('question_type').agg({'mean': 'mean'}))

if __name__ == "__main__":
    person_vs_project()
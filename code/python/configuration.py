import os
import sys

from functools import *


ANALYSIS_PATH = r'c:\src\analysis_utils'
sys.path.append(ANALYSIS_PATH)

from ml_utils import get_predictive_columns, save_model


HOME = os.path.normpath(os.path.join(os.path.dirname(__file__), "..", ".."))#'C:/Idan/GitHub/motivation/'
DATA_PATH = os.path.join(HOME, r'data')
STATS_PATH = os.path.join(HOME, r'stats')
MODELS_PATH = os.path.join(HOME, r'models')
PERFORMANCE_PATH = os.path.join(HOME, r'performance')
FIGURES_PATH = os.path.join(HOME, r'figures')


COMMITS_FILE = 'developers_list_with_commits.csv'
EMAILS_FILE = 'developers_emails.csv'
COLUMNS_DICT_FILE = 'columns_names.json'
CORRECTED_REPOS_FILES = 'survey_corrected_repos.csv'

GIT_REPO_PROPERTIES = 'survey_repos_gitapi_properties.csv'
BG_REPO_FILE = 'survey_repo_properties.csv'
DEVELOPER_BEHAVIOUR_FILE = 'survey_matching_developer_per_repo_profile.csv'

ENHANCED_CORRECTED_REPOS_FILE = 'survey_enhanced_repos.csv'

CORRELATIONS_FILE = 'all_correlations.csv'
REPO_TWINS_MOTIVATION_STATS_FILE = 'repo_twins_motivation_stats.csv'
INDEPENDENT_STATS_FILE = 'independent_stats.csv'

MOTIVATION_PEARSON_FILE = 'correlation_with_motivation.csv'
QUESTION_TYPE_MOTIVATION_PEARSON_FILE = 'question_type_correlation_with_motivation.csv'
MOTIVATION_TYPE_MOTIVATION_PEARSON_FILE = 'motivation_type_correlation_with_motivation.csv'
MOTIVATION_TYPE_INNER_CORRELATION_FILE = 'categories_correlations.csv'

PROJECT_DEVELOPERS_STABILITY_FILE = 'project_developers_pearson.csv'
HALVES_PREDICTIVE_STATS_CSV = 'motivation_halves_analysis.csv'
FOLLOWUP_STABILITY_FILE = 'followup_agreement.csv'
FOLLOWUP_PREDICTABILITY_STATS_FILE = 'steps_motivation_stats.csv'

HIGH_ANSWER_FILE = 'high_answer_prob.csv'
MOTIVATION_TYPE_HIGH_ANSWER_FILE = 'high_answer_prob_by_motivation_type.csv'
QUESTION_TYPE_HIGH_ANSWER_FILE='high_answer_prob_by_question_type.csv'

NOT_FOUND = "EMAIL@NOT.FOUND"

SOURCE_EMAIL = ''
SOURCE_PASS = ''

RAW_SURVEY_BATCH1_FILE = 'GitHub_Developers_survey_April_24_2021.csv'
RAW_SURVEY_BATCH2_FILE = 'Developers_survey_April_24_2021.csv'
RAW_FOLLOWUP_FILE = 'Developers_survey_follow_up_May_9_2022.csv'
ANON_FOLLOWUP_FILE = 'anon_follow_up_results.csv'
SURVEY_FILE = 'survey_results.csv'
ANON_SURVEY_FILE = 'anon_survey_results.csv'

GIT_PROFILE_QUESTION = 'Q68.1'
REPLY_EMAIL_QUESTION = 'Q68.2'
REPOSITORY_QUESTION = 'Q29'

SAMPLING_COL = 'sampling_method'

DEV_KEY = 'ResponseId'
PROJECT_KEY = 'project'

NUMERIC_NULL = -1
TEST_SIZE = 0.2
RANDOM_STATE = 37

BEING_PAID_QUESTION = 'Q31'
NOT_PAID_ANSWER = 2.0
PAYMENT_COL = 'Is_Paid'


PERSON_ANSWERS = ['Q91', 'Q83', 'Q71', 'Q93', 'Q94', 'Q99', 'Q65_1'
, 'Q92', 'Q98', 'Q87', 'Q88', 'Q90', 'Q85', 'Q97', 'Q1', 'Q84', 'Q96', 'Q95'
, 'Q61_1', 'Q89']

#'Q30' How many hours a week do you work on the repository (average)?
# 'Q62' Gender
#'Q63' I work as a professional programmer
# 'Q66' Academic background (degree)
#'Q67.1' Academic background (degree and graduation year)

PROJECT_ANSWERS = ['Q68', 'Q71.1', 'Q73', 'Q76', 'Q81', 'Q82', 'Q83.1']

DEVELOPER_IN_PROJECT_ANSWERS = [PAYMENT_COL, 'Q86', 'Q34', 'Q102', 'Q101', 'Q67', 'Q70'
    , 'Q72', 'Q74', 'Q75', 'Q77', 'Q78', 'Q79'
    , 'Q84.1', 'Q95.1', 'Q96.1', 'Q97.1', 'Q98.1', 'Q72.1', 'Q86.1', 'Q87.1', 'Q88.1', 'Q89.1'
    , 'Q90.1', 'Q91.1', 'Q92.1', 'Q93.1', 'Q94.1', 'Q69']
# 'Q30' 'How many hours a week do you work on the repository (average)?',

JOB_SATISFACTION = ['Q72.1', 'Q86.1', 'Q87.1', 'Q88.1',	'Q89.1', 'Q90.1'
    ,	'Q91.1',	'Q92.1',	'Q93.1',	'Q94.1']

CORRELATION_RELEVANT_ANSWERS = list(set(PERSON_ANSWERS + PROJECT_ANSWERS
                                   + DEVELOPER_IN_PROJECT_ANSWERS) - set(JOB_SATISFACTION))
question_types = { 'Person': list(set(PERSON_ANSWERS) - set(JOB_SATISFACTION))
                   , 'Project': list(set(PROJECT_ANSWERS) - set(JOB_SATISFACTION))
                   , 'Person in Project': list(set(DEVELOPER_IN_PROJECT_ANSWERS) - set(JOB_SATISFACTION))
                    }
MOTIVATION_QUESTION = 'Q86'
WORKING_HOURS_QUESTION = 'Q30'

# Asking in the follow-up survey if continued in the same repo
SAME_REPO_QUESTION = 'SAME_REPO'

GENDER_COLUMN = 'Q62'
male_encoding = ['Male', 'Male ', 'M', 'male', 'm', 'mail', 'man', 'Man', 'Make', 'boi', 'male ', 'Males']
female_encoding = ['female', 'F', 'f', 'Female', 'Femal', 'boi']
gender_encoding = ['No-binary', 'Half Female, Half Male', 'Non binary'] + female_encoding + male_encoding

AGE_COLUMN = 'Q61_1'

motivation_type_questions = {
'Enjoyment':
    ['Q91' # I enjoy software development very much
     , 'Q97' # I enjoy trying to solve complex problems
     , 'Q70' # My work on the repository is creative
     , 'Q72' # I derive satisfaction from working on this repository
     #, 'Q72.1' # Freedom to choose your own method of working
     ]
, 'Challenge': ['Q71.1' # Working on this repository is challenging
                #, 'Q86.1' # Amount of variety in your work
                ]
, 'Recognition' : ['Q96' # I try to write high quality code because others will see it
                   , 'Q95' # I contribute to open source in order to have an online portfolio
                   , 'Q77' # I get recognition due to my contribution to the repository
                   #, 'Q90.1' # Recognition you get for good work
                   , 'Q97.1' # In the past year, members of my GitHub community asked questions that show their understanding of my contributions.
                   , 'Q98.1'  # In the past year, members of my GitHub community expressed interest in my contributions.
                   ]

, 'Community': ['Q76' # The community is very professional.
                , 'Q83.1' # The repository’s community of developers is more motivated than that of other repositories.
                , 'Q75' # Belonging to the  community is motivating my work on the repository.
                , 'Q97.1' # In the past year, members of my GitHub community asked questions that show their understanding of my contributions.
                , 'Q98.1' # In the past year, members of my GitHub community expressed interest in my contributions.
                #, 'Q89.1' # Your colleagues and fellow workers
                ]
, 'Hostility': ['Q68' # We have many heated arguments in the community.
              , 'Q95.1' # In the past year, members of my GitHub community put me down or were condescending to me.
              , 'Q96.1' # In the past year, members of my GitHub community made demeaning or derogatory remarks about me.
              , 'Q69' # I wish that certain developers in the repository will leave.
               ]
, 'Importance': ['Q73' # The repository is important
                 ]
, 'Payment': [PAYMENT_COL # I’m being paid for my work in this repository (direction aligned)
              #, 'Q92.1' # Your remuneration (payment)
              ]
, 'Ownership': ['Q34' # I have complete autonomy in contributing to the repository
                , 'Q102' # I have significant influence on the repository
                , 'Q101' # I feel responsible to the repository success
                , 'Q78' # I am a core member of the repository
                #, 'Q93.1' # Amount of responsibility you are given

                ]
, 'Learning': [#'Q76' # The community is very professional.
                 'Q79' # I learn from my contributions
                #, 'Q88.1' # Opportunities to use your abilities
    ]
, 'Self-use': ['Q67' # I’m interested in the repository for my own needs
               ]
, 'Ideology': ['Q71' # I contribute to open source due to ideology
               ]
, 'Motivation': [#'Q94.1' # Taking everything into consideration, how do you feel about your work?
                  'Q86' # I regularly have a high level of motivation to contribute to the repository
                 ]
# In ownership
#, 'Autonomy': ['Q34' # I have complete autonomy in contributing to the repository
#               ]
# In joy
#, 'Creativity': ['Q70' # My work on the repository is creative
#                        ]
}



verifiable = [
'Q93' # I write tests for my code
, 'Q94' # I write detailed commit messages
, 'Q99' # I improved as a programmer since a year ago
, 'Q65_1' # Years of contribution to GitHub
, 'Q87' # I am skilled in software development
, 'Q88' # My code is of high quality
, 'Q85' # I am a relatively productive programmer
, 'Q81' # The quality of the code in this repository is better than others
, 'Q82' # Code quality in the repository improved since a year ago
, 'Q84.1' # My personal motivation in this repository has increased since a year ago
]

BASIC_STATS_FILE = 'questions_basic_stats.csv'


# Developer in the same project
SIDE_A = 'A_'
SIDE_B = 'B_'

DUPLICATED_PROJECTS = ['beat', 'database - rider', 'rust - analyzer', 'symfony', 'edx - platform', 'phytestcs'
    , 'coq', 'zephyr', 'moodle', 'flutter', 'libelektra', 'lighthouse', 'godot', 'luna',
                       'waltz']  # Omitting noon, private


project_save_model = partial(save_model
                                  , directory=MODELS_PATH)

HIGH_ANSWER = 9

def is_high_answer(answer):
    #Check that answer is provided
    if answer is None:
        return None
    elif answer >= HIGH_ANSWER:
        return True
    elif 1 <= answer and answer < HIGH_ANSWER:
        return False
    else:
        return None

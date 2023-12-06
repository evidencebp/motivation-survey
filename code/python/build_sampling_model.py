from os.path import join

from configuration import NUMERIC_NULL, \
    TEST_SIZE, RANDOM_STATE, FIGURES_PATH, PERFORMANCE_PATH, MODELS_PATH
from data_utils import get_survey_ds
from modeling_utils import run_basic_models
from build_motivation_model import large_classifiers
CONCEPT = 'is_random'
PERSONAL_FEATURES = ['Q1', 'Q83', 'Q84', 'Q85', 'Q87', 'Q88', 'Q89', 'Q90', 'Q91', 'Q92', 'Q93', 'Q94'
                     , 'Q95', 'Q96', 'Q97', 'Q99'
                     , 'Q98' # I contribute to open source in order to become a better programmer
                     , 'Q71' # Open source ideology
                     ]
NON_PREDICTIVE_FEATURES = []

def run_build_sampling_models():

    df = get_survey_ds()
    df = df.fillna(NUMERIC_NULL)
    df[CONCEPT] = df.apply(lambda x: (x['sampling_method'] == 'random_approach')
                                , axis=1)
    df = df[PERSONAL_FEATURES + [CONCEPT]]

    clf, df = run_basic_models(concept=CONCEPT
                               , df=df
                               , classifiers=large_classifiers)

    clf, df = run_basic_models(concept=CONCEPT
                     , df=df
                     , non_predictive_features=NON_PREDICTIVE_FEATURES
                     , test_size=TEST_SIZE
                     , model_location_format=join(MODELS_PATH, '{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, '{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, '{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers=large_classifiers)


if __name__ == '__main__':
    run_build_sampling_models()
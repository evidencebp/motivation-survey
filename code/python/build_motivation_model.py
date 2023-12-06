from functools import *
from os.path import join

from configuration import DATA_PATH, NUMERIC_NULL, \
    TEST_SIZE, RANDOM_STATE, FIGURES_PATH, PERFORMANCE_PATH, MODELS_PATH\
    , CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION, motivation_type_questions, is_high_answer

from data_utils import get_survey_ds
from build_followup_model import enhance_with_types
from ml_utils import get_predictive_columns, build_and_eval_model, save_model, plot_tree, same_set_build_and_eval_model
from modeling_utils import run_basic_models

from sklearn.ensemble import AdaBoostClassifier
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.neighbors import KNeighborsClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.naive_bayes import MultinomialNB
from sklearn.neural_network import MLPClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import SGDClassifier
from sklearn.svm import SVC

class_weight = {1: 1, 0: 1}

MIN_SAMPLES = 3
MAX_DEPTH = 3

base=DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                          , class_weight=class_weight)

large_classifiers = {'Tree_ms50_md3': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                               , max_depth=MAX_DEPTH
                                                               , class_weight=class_weight)
    , 'Tree_default': DecisionTreeClassifier(class_weight=class_weight)
    , 'Tree_ms50': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                          , class_weight=class_weight)
    , 'Tree_md3': DecisionTreeClassifier(max_depth=MAX_DEPTH
                                         , class_weight=class_weight)
    , 'RandomForest': RandomForestClassifier(n_estimators=10
                                                , min_samples_leaf=MIN_SAMPLES)
    , 'AdaBoost': AdaBoostClassifier(n_estimators=100, random_state=0, learning_rate=0.1)
    , 'AdaBoost_v1': AdaBoostClassifier(base_estimator=base
                                        , n_estimators=100, random_state=0, learning_rate=0.1)
    , 'GradientBoostingClassifier': GradientBoostingClassifier(learning_rate=0.1
                                                               , min_samples_leaf=MIN_SAMPLES
                                                               , max_depth=MAX_DEPTH)
    , 'Tree_Stump': DecisionTreeClassifier(max_depth=1
                                                               , class_weight=class_weight)
    , 'LogisticRegression': LogisticRegression(class_weight=class_weight)
    , 'SVC': SVC()
    , 'SGDClassifier': SGDClassifier()
    , 'KNeighborsClassifier': KNeighborsClassifier()
    #, 'MultinomialNB': MultinomialNB()
    , 'MLPClassifier': MLPClassifier(solver='lbfgs', alpha=1e-5,
                    hidden_layer_sizes=(5, 2), random_state=1, max_iter=20000)

    }

MIN_MOTIVATION = 9
CONCEPT = 'HIGH_MOTIVATION'

NON_PREDICTIVE_FEATURES = []
project_predictive_columns = partial(get_predictive_columns
                                     , excluded_features=set(list(NON_PREDICTIVE_FEATURES) + [CONCEPT]))

project_build_and_eval_model = partial(build_and_eval_model
                                       , concept=CONCEPT
                                       , test_size=TEST_SIZE
                                       , random_state=RANDOM_STATE
                                       , get_predictive_columns_func=project_predictive_columns
                                       )

project_save_model = partial(save_model
                             , directory=MODELS_PATH)



def run_build_motivation_model():
    print("**************** High motivation ****************")
    df = get_survey_ds()
    df = df[~df[MOTIVATION_QUESTION].isnull()]

    df[CONCEPT] = df[MOTIVATION_QUESTION].map(is_high_answer)

    df = df.fillna(NUMERIC_NULL)
    df = df[set(CORRELATION_RELEVANT_ANSWERS + [CONCEPT]) - set([MOTIVATION_QUESTION])]


    clf, df = run_basic_models(concept=CONCEPT
                     , df=df
                     , non_predictive_features=NON_PREDICTIVE_FEATURES
                     , test_size=TEST_SIZE
                     , model_location_format=join(MODELS_PATH, 'high_motivation_{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, 'high_motivation_{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, 'high_motivation_{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers=large_classifiers
                     )



def run_build_motivation_type_model():
    print("**************** High motivation by type ****************")
    df = get_survey_ds()
    df = df[~df[MOTIVATION_QUESTION].isnull()]

    df[CONCEPT] = df[MOTIVATION_QUESTION].map(is_high_answer)
    #df = enhance_with_types(df)
    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)
        df[type] = df[type].map(is_high_answer)

    df = df.fillna(NUMERIC_NULL)


    clf, df = run_basic_models(concept=CONCEPT
                     , df=df[list(motivation_type_questions.keys()) + [CONCEPT]]
                     , non_predictive_features=NON_PREDICTIVE_FEATURES + ['Motivation']
                     , test_size=TEST_SIZE
                     , model_location_format=join(MODELS_PATH, 'high_motivation_by_type_{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, 'high_motivation_by_type_{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, 'high_motivation_by_type_{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers=large_classifiers
                     )



def run_build_motivation_type_logistic():
    print("**************** High motivation by type  - Logistic regression ****************")
    df = get_survey_ds()
    df = df[~df[MOTIVATION_QUESTION].isnull()]

    df[CONCEPT] = df[MOTIVATION_QUESTION].map(is_high_answer)
    #df = enhance_with_types(df)
    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)
        df[type] = df[type].map(is_high_answer)

    df = df.fillna(NUMERIC_NULL)


    clf, df = run_basic_models(concept=CONCEPT
                     , df=df[list(motivation_type_questions.keys()) + [CONCEPT]]
                     , non_predictive_features=NON_PREDICTIVE_FEATURES + ['Motivation']
                     , test_size=TEST_SIZE
                     , model_location_format=join(MODELS_PATH, 'high_motivation_by_type_{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, 'high_motivation_by_type_{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, 'high_motivation_by_type_{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers={'LogisticRegression': LogisticRegression(class_weight=class_weight)
 }
                     )

    print("intercept", clf.intercept_)
    for i in range(clf.n_features_in_):
        print(clf.feature_names_in_[i], clf.coef_[0][i])
    print("names", clf.feature_names_in_)
    print("coefficients", clf.coef_)

if __name__ == '__main__':
    #run_build_motivation_model()
    run_build_motivation_type_model()
    #plot_high_motivation()
    run_build_motivation_type_logistic()


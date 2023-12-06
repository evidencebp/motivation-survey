from os.path import join
import numpy as np
import pandas as pd

from configuration import CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION \
    , RANDOM_STATE, PERFORMANCE_PATH, MODELS_PATH, motivation_type_questions

from build_motivation_steps_model import build_motivation_steps_ds
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

MIN_SAMPLES = 10
MAX_DEPTH = 3

classifiers = {'Tree_ms50_md3': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                                               , max_depth=MAX_DEPTH
                                                               , class_weight=class_weight)
    , 'Tree_default': DecisionTreeClassifier(class_weight=class_weight)
    , 'Tree_ms50': DecisionTreeClassifier(min_samples_leaf=MIN_SAMPLES
                                          , class_weight=class_weight)
    , 'Tree_md3': DecisionTreeClassifier(max_depth=MAX_DEPTH
                                         , class_weight=class_weight)
    , 'RandomForest': RandomForestClassifier(n_estimators=10
                                                , min_samples_leaf=MIN_SAMPLES)
    }


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
    , 'AdaBoost_n_small': AdaBoostClassifier(n_estimators=30, random_state=0, learning_rate=0.1)
    , 'AdaBoost_base_small': AdaBoostClassifier(base_estimator=base
                                        , n_estimators=50, random_state=0, learning_rate=0.1)
    , 'AdaBoost_v1': AdaBoostClassifier(base_estimator=base
                                        , n_estimators=100, random_state=0, learning_rate=0.1)
    , 'GradientBoostingClassifier': GradientBoostingClassifier(learning_rate=0.1
                                                               , min_samples_leaf=MIN_SAMPLES
                                                               , max_depth=MAX_DEPTH)
    , 'Stump': DecisionTreeClassifier(max_depth=1
                                                               , class_weight=class_weight)
    , 'LogisticRegression': LogisticRegression(class_weight=class_weight)
    , 'SVC': SVC()
    , 'SGDClassifier': SGDClassifier()
    , 'KNeighborsClassifier': KNeighborsClassifier()
    #, 'MultinomialNB': MultinomialNB()
    , 'MLPClassifier': MLPClassifier(solver='lbfgs', alpha=1e-5,
                    hidden_layer_sizes=(5, 2), random_state=1, max_iter=20000)

    }

stump = { 'Stump': DecisionTreeClassifier(max_depth=1
                                                               , class_weight=class_weight)
}
def enhance_with_types(df: pd.DataFrame):

    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].sum(axis=1)
        df[type] = df[type].map(lambda x: None if x == np.nan
            else 1 if float(x) > 0 else 0)

    return df

def run_build_followup_type_models():

    print("**************** High motivation by type ****************")

    steps_ds = build_motivation_steps_ds()

    NON_PREDICTIVE_FEATURES = ['Motivation']

    for i in CORRELATION_RELEVANT_ANSWERS:
        steps_ds[i] = steps_ds['rel_' + i].map(lambda x: None if i == np.nan
            else 1 if float(x) > 0 else 0)

    steps_ds = enhance_with_types(steps_ds)
    steps_ds = steps_ds[list(motivation_type_questions.keys()) + [MOTIVATION_QUESTION]]
    clf, df = run_basic_models(concept=MOTIVATION_QUESTION
                     , df=steps_ds
                     , non_predictive_features=NON_PREDICTIVE_FEATURES
                     , test_size=0.3
                     , model_location_format=join(MODELS_PATH, 'followup_type_{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, 'followup_type_{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, 'followup_type_{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers=large_classifiers
                     )


def run_build_followup_models():

    print("**************** High motivation ****************")
    steps_ds = build_motivation_steps_ds()

    #NON_PREDICTIVE_FEATURES = [i for i in steps_ds.columns if steps_ds.dtypes[i] not in ('int64', 'float64')]
    #steps_ds = steps_ds.fillna(-1)
    NON_PREDICTIVE_FEATURES = list(set(steps_ds.columns) - set(CORRELATION_RELEVANT_ANSWERS))

    for i in CORRELATION_RELEVANT_ANSWERS:
        steps_ds[i] = steps_ds['rel_' + i].map(lambda x: None if i == np.nan
            else 1 if float(x) > 0 else 0)

    steps_ds = enhance_with_types(steps_ds)
    clf, df = run_basic_models(concept=MOTIVATION_QUESTION
                     , df=steps_ds
                     , non_predictive_features=NON_PREDICTIVE_FEATURES
                     , test_size=0.3
                     , model_location_format=join(MODELS_PATH, 'followup_{}.pkl')
                     , model_text_location_format=join(MODELS_PATH, 'followup_{}.sql')
                     , performance_location_format=join(PERFORMANCE_PATH, 'followup_{}.json')
                     , random_state=RANDOM_STATE
                     , classifiers=large_classifiers
                     )


if __name__ == '__main__':
    #run_build_followup_models()
    run_build_followup_type_models()
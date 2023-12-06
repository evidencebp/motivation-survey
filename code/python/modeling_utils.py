import os

from configuration import project_save_model

from functools import *
from ml_utils import get_predictive_columns, build_and_eval_model, save_model, plot_tree, same_set_build_and_eval_model
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
import time
from transform_tree import tree_to_sql, random_forest_to_sql

class_weight = {1: 1, 0: 1}
default_classifiers = {'Tree_ms50_md3': DecisionTreeClassifier(min_samples_leaf=2, max_depth=3, class_weight=class_weight)
    , 'Tree_default': DecisionTreeClassifier(class_weight=class_weight)
    , 'Tree_ms50': DecisionTreeClassifier(min_samples_leaf=2, class_weight=class_weight)
    , 'Tree_md3': DecisionTreeClassifier(max_depth=3, class_weight=class_weight)
    , 'RandomForest': RandomForestClassifier(min_samples_leaf=50)
    }


def build_basic_model(df
                      , classifier
                      , concept
                      , model_file_name=None
                      , performance_file=None
                      , ablation_columns=[]
                      , non_predictive_features=[]
                      , test_size=0.2
                      , random_state=0):
    local_project_predictive_columns = partial(get_predictive_columns
                                               , excluded_features=set(list(non_predictive_features)
                                                                       + ablation_columns
                                                                       + [concept])
                                               )

    local_project_build_and_eval_model = partial(build_and_eval_model
                                                 , concept=concept
                                                 , test_size=test_size
                                                 , random_state=random_state
                                                 , get_predictive_columns_func=local_project_predictive_columns
                                                 )

    classifier, performance = local_project_build_and_eval_model(df
                                                                 , classifier=classifier
                                                                 , performance_file=performance_file
                                                                 )

    """
    classifier, performance = same_set_build_and_eval_model(df
                         , classifier
                         , concept=concept
                        , random_state=RANDOM_STATE
                        , get_predictive_columns_func=local_project_predictive_columns
                        , performance_file=None
                        )
    print("performance on full train")
    print(performance)
    """
    classifier, performance = build_and_eval_model(df
                                                   , classifier
                                                   , concept=concept
                                                   , test_size=test_size
                                                   , random_state=random_state
                                                   , get_predictive_columns_func=local_project_predictive_columns
                                                   , performance_file=performance_file
                                                   )
    print("performance on  test")
    print(performance)

    if model_file_name:
        project_save_model(model=classifier
                           , output_file_name=model_file_name)

    return classifier, performance


def run_basic_models(concept
                     , df
                     , non_predictive_features=[]
                     , test_size=0.2
                     , model_location_format=None
                     , model_text_location_format=None
                     , performance_location_format=None
                     , classifiers=default_classifiers
                     , random_state=0
                     ):
    project_predictive_columns = partial(get_predictive_columns
                                         , excluded_features=set(list(non_predictive_features) + [concept]))

    start = time.time()

    print(project_predictive_columns(df))

    end = time.time()
    print("Load data time", end - start)


    for model_name in classifiers.keys():
        print(model_name)
        start = time.time()
        regressor = classifiers[model_name]

        performance_file = None if performance_location_format is None \
            else performance_location_format.format(model_name)
        model_file = None if model_location_format is None \
            else model_location_format.format(model_name)
        regressor, performance = build_basic_model(df
                                                   , concept=concept
                                                   , classifier=regressor
                                                   , model_file_name=model_file
                                                   , performance_file=performance_file
                                                   , non_predictive_features=non_predictive_features
                                                   , test_size=test_size
                                                   , random_state=random_state
                                                   )
        # plot_tree(regressor
        #          , dot_file_path=os.path.join(FIGURES_PATH, '{}.dot'.format(model_name))
        #          , png_file_path=os.path.join(FIGURES_PATH, '{}.png'.format(model_name))
        #          , feature_names=project_predictive_columns(df)
        #          )

        if model_text_location_format:
            if model_name.startswith('Tree'):
                tree_to_sql(tree=regressor
                        , feature_names=project_predictive_columns(df)
                        , function_name="continue.tree"
                        , output_file=model_text_location_format.format(model_name))
            elif model_name.startswith('RandomForest'):
                random_forest_to_sql(rf=regressor
                         , feature_names=project_predictive_columns(df)
                         , function_name_prefix="rf_"
                         , output_file_prefix=model_text_location_format.format(model_name))

        end = time.time()
        print("Model running time", end - start)

    return regressor, df



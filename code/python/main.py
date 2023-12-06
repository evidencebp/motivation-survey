
# Sampling for survey
# Compute ccp.active_2019_commits (See CCP for details)
# Run compute_developer_properties.sql on big query to populate ccp.author_per_repo_per_year
# Run get_develpoers_list on BigQuery to get developers_list_with_commits.csv

from configuration import motivation_type_questions

from basic_survey_enhancement import run_enhance_survey
from extract_repos_gitapi import run_fetch_repo_gitapi
from enhance_survey_with_externals import enhance_survey_with_gitapi, run_enhance_survey_with_repo_bq\
    , enhance_with_developer_behaviour, run_anonymize_survey
from independent_distributions import compute_questions_independent_match
from anecdotes import run_anecdotes
from build_motivation_model import run_build_motivation_model
from build_motivation_steps_model import compute_steps_features_stats
from build_sampling_model import run_build_sampling_models
from correlation_with_motivation import correlation_with_motivation
from demographic_analysis import run_demographic_analysis
from describe_dataset import run_dataset_description
from followup_similarity import followup_similarity
from job_satisfaction import job_satisfaction
from payment_analysis import payment_analysis
from person_vs_project import person_vs_project
from plot_answers import plot_answers
from plot_geographic_distribution import plot_geographic_distribution
from print_category_features import print_category_features
from questions_correlations import run_questions_correlations
from questions_halves_analysis import questions_halves_analysis
from repo_answers_similarity import analyze_repo_similarity
from same_repo_dev_analysis import same_repo_dev_analysis
from summarize_motivation_influence import summarize_motivation_influence
from verify_metrics import verify_metrics

def main():

    # TODO
    # Manually change the first Q72 column in the followup survey to SAME_REPO
    # Qualtics has duplicated column names. Thanks!

    # The data contained personal identifier (e.g. GitHub profile), in order to match data from different sources.
    # In order to keep privacy, unused columns (e.g. IP address) were removed and keys were replaced with their
    # signature.
    # Therefore, the initial ETL is no longer used or possible.
    # It is kept here, commented out, to clarify the preprocessing.
    """
    run_enhance_survey()

    # Take survey_repos.csv, manually do corrections, apply correction to survey file

    # Fetch star from GitApi and enhance survey with them
    run_fetch_repo_gitapi()
    enhance_survey_with_gitapi()

    # Take profiles from survey, correct manually, apply corrections


    run_enhance_survey_with_repo_bq()
    enhance_with_developer_behaviour()
    run_anonymize_survey()
    """

    # Analysis
    run_dataset_description()
    run_anecdotes()
    run_demographic_analysis()
    print_category_features(motivation_type_questions)
    run_questions_correlations()

    compute_questions_independent_match()
    correlation_with_motivation()
    followup_similarity()
    job_satisfaction()
    payment_analysis()
    person_vs_project()
    questions_halves_analysis()
    analyze_repo_similarity()
    same_repo_dev_analysis()
    verify_metrics()

    summarize_motivation_influence()

    # Models
    run_build_motivation_model()
    compute_steps_features_stats()
    run_build_sampling_models()

    # Plots
    plot_geographic_distribution()
    plot_answers()
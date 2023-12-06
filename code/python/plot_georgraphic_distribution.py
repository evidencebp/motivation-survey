from math import sqrt
import os

import numpy as np
import pandas as pd
import plotly.graph_objs as go

from anecdotes import AGE_COLUMN
from data_utils import get_survey_ds
from demographic_analysis import EXPERIENCE_QUESTION

FONT_SIZE = 28
def plot_dual_distribution(categories
                           , survey_dist
                           , stackoverflow_dist
                           , title
                           , font_size=24):


    trace1 = go.Bar(
        x=categories,
        y=survey_dist,
        name='Survey',
        text=[round(i, 1) for i in survey_dist],
        textposition='auto',
    )

    trace2 = go.Bar(
        x=categories,
        y=stackoverflow_dist,
        name='StackOverflow',
        text=[round(i, 1) for i in stackoverflow_dist],
        textposition='auto',
    )

    data = [trace1, trace2]
    # layout = go.Layout(
    #    barmode='group'
    # )

    layout = go.Layout(
        barmode='group',
        #title=title,
        xaxis=dict(
            #title='Term',
            titlefont=dict(
                family='Courier New, monospace',
                size=font_size,
               # color='#7f7f7f'
            )
        ),
        yaxis=dict(
            title='Percentage',
            titlefont=dict(
                family='Courier New, monospace',
                size=font_size,
                #color='#7f7f7f'
            )
        )
    )

    fig = go.Figure(data=data, layout=layout)
    fig.update_layout(
        font=dict(
            family="Courier New, monospace",
            size=font_size,
            #color="RebeccaPurple"
        ))

    """
    plot(fig,
        image = 'png', image_filename="c:/tmp/countries.png",
                 output_type='file')
    """

    fig.show()
    #fig.write_image("c:/tmp/countries.png")

    return fig

#
def plot_geographic_distribution():

    countries = ['United States', 'Germany', 'Great Britain', 'India', 'France']
    survey_dist = [25.4, 9.8, 7.0, 4.7, 4.2]
    stackoverflow_dist =[18.3, 6.8, 5.4, 12.6, 3.2]

    return plot_dual_distribution(categories=countries
                           , survey_dist=survey_dist
                           , stackoverflow_dist=stackoverflow_dist
                           , title="Geographic Distribution"
                           , font_size=FONT_SIZE)



def age_cat(x):

    if x is None:
        rc = None
    elif x <= 18:
        rc = 'Under 18'
    elif x <= 24:
        rc = '18-24'
    elif x <= 34:
        rc = '25-34'
    elif x <= 44:
        rc = '35-44'
    elif x <= 54:
        rc = '45-54'
    elif x <= 64:
        rc  = '55-64'
    elif x >= 65:
        rc = 'Over 64'
    else:
        rc = None

    return rc

def plot_age_distribution():
    # Age
    categories = ['Under 18'
        , '18-24'
        , '25-34'
        , '35-44'
        , '45-54'
        , '55-64'
        , 'Over 64']
    stackoverflow_dist = [6.52
        , 25.47
        , 39.52
        , 18.42
        , 6.64
        , 2.21
        , 0.51]
    # Also in SO Prefer not to say 0.7%
    df = get_survey_ds()

    df = enhance_df_with_age(df)

    survey_dist = []

    for i in categories:
        survey_dist.append(100*len(df[df['age_cat']==i])/len(df[~df['age_cat'].isna()]))

    return plot_dual_distribution(categories=categories
                           , survey_dist=survey_dist
                           , stackoverflow_dist=stackoverflow_dist
                           , title="Age Distribution"
                           , font_size=FONT_SIZE)


def enhance_df_with_age(df):
    df['age'] = df[AGE_COLUMN].map(lambda x: None if x == '0' or x is None or np.isnan(x)
    else int(x))
    df['age_cat'] = df['age'].map(lambda x: age_cat(x))

    return df

def exp_cat(x):

    if x < 1:
        rc = 'Under 1'
    elif x <= 4:
        rc = '1 to 4'
    elif x <= 9:
        rc = '5 to 9'
    elif x <= 14:
        rc = '10 to 14'
    elif x <= 19:
        rc = '15 to 19'
    elif x <= 24:
        rc  = '20 to 24'
    elif x <= 29:
        rc = '25 to 29'
    elif x <= 34:
        rc = '30 to 34'
    elif x <= 39:
        rc = '35 to 39'
    elif x <= 44:
        rc = '40 to 44'
    elif x <= 49:
        rc = '45 to 49'
    elif x >= 50:
        rc = 'Over 49'
    else:
        rc = None

    return rc

def plot_experience_distribution():
    # Years of experience

    categories = ['Under 1'
                  , '1 to 4'
                  , '5 to 9'
                  , '10 to 14'
                  , '15 to 19'
                  , '20 to 24'
                  , '25 to 29'
                  , '30 to 34'
                  , '35 to 39'
                  , '40 to 44'
                  , '45 to 49'
                  , 'Over 49']
    stackoverflow_dist = [1.82
                          , 17.8
                          , 29.91
                          , 18.9
                          , 10.4
                          , 8.17
                          , 4.48
                          , 3.
                          , 2.65
                          , 1.75
                          , 0.41
                          , 0.28]

    df = get_survey_ds()

    df = enhance_df_with_experience(df)
    survey_dist = []

    for i in categories:
        survey_dist.append(100*len(df[df['exp_cat']==i])/len(df[~df['exp_cat'].isna()]))

    return plot_dual_distribution(categories=categories
                           , survey_dist=survey_dist
                           , stackoverflow_dist=stackoverflow_dist
                           , title="Years of Experience Distribution"
                           , font_size=FONT_SIZE)


def enhance_df_with_experience(df):
    df['exp'] = df[EXPERIENCE_QUESTION].map(lambda x: None if x == '0' or not x.isnumeric() else int(x))
    df['exp_cat'] = df['exp'].map(lambda x: exp_cat(x))

    return df


def plot_academic_background_distribution():

    categories = ['None'
              , 'BA\\BSc'
              , 'MA\\MSc'
              , 'PhD'
              , 'Other' # (including students to first degree)
              ]
    stackoverflow_dist = [2.97 + 11.43 # Primary/elementary school, Secondary school
                , 42.37 # Bachelor’s degree
                , 20.99 # Master’s degree
                , 1.51 + 3.08 # Professional degree (JD, MD, etc.), Other doctoral degree (Ph.D., Ed.D., etc.)

                , 12.69 + 2.67 + 1.92 # Some college/university study without earning a degree
                                       # , Associate degree, Something else
    ]
    survey_dist = [15.9
        , 38.6
        , 30.6
        , 10.5
        , 4.4]

    return plot_dual_distribution(categories=categories
                           , survey_dist=survey_dist
                           , stackoverflow_dist=stackoverflow_dist
                           , title="Academic Background Distribution"
                           , font_size=FONT_SIZE)



if __name__ == '__main__':
    fig = plot_academic_background_distribution()
    fig = plot_age_distribution()
    fig = plot_experience_distribution()
    fig = plot_geographic_distribution()

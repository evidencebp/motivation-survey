from configuration import DEV_KEY, MOTIVATION_QUESTION, WORKING_HOURS_QUESTION
from data_utils import get_survey_ds
from decorate_figure import decorate_figure
from questions_utils import get_question_text, get_question_keys, get_question_index, question_to_index_dict

import numpy as np

import pandas as pd
import plotly.express as px
#import plotly.graph_objs as go

COUNT_NAME = 'Developers'
FONT_SIZE = 18

def plot_answers():


    df = get_survey_ds()
    # TODO - 'Q68.1', 'Q30',
    # 'Q60'  - Country
    # 'Q66' - Academic background
    # 'Q67.1' - Academic background
    # Q64 - years of experience
    # Q62 - Gender
    # 'Q71.2' - comments
    # Q63 - professional programmer - take care of bars

    excluded_questions = {
    'Q29' # project
    , 'Q30' # your working hours
    , 'Q60'  # Country
    , 'Q62' # Gender
    , 'Q63' # proffesional programmer - take care of bars
    , 'Q64' # year of experinece
    , 'Q66' #  Academic background
    , 'Q67.1' # Academic background
    , 'Q68.1' # profile
    , 'Q68.2' # gitHubRepo
    , 'Q71.2' # comments

    }
    # 3.23 (Q96.1), 3.13 (Q75)
    paper_figures = ['2.2', '3.1', '2.9', '3.16', '3.17', '3.11', '3.9', '3.5', '2.18', '2.13', '3.13', '3.23']
    for i in sorted(set(get_question_keys()) -excluded_questions):
    #for i in ['Q97.1']: #, 'Q98.1']:
    #for i in [j for j in sorted(set(get_question_keys()) - excluded_questions) if get_question_index(j) in paper_figures]:
    #for i in [j for j in sorted(set(get_question_keys()) - excluded_questions) if get_question_index(j) in ['3.23']]:
        """
        fig = plot_multi_bar(df
                             , grouping_column=i
                             , metrics=metrics_description)
        """
        print(get_question_index(i), get_question_text(i))

        g = df.groupby([i], as_index=False).agg({DEV_KEY : 'count'})
        g = g.rename(columns={DEV_KEY: COUNT_NAME})
        fig = px.bar(g
                     , x=i
                     , y=COUNT_NAME
                     , text_auto=True

                     )

        fig = decorate_figure(fig
                              , title=get_question_text(i)
                              , xaxis_title='Answers to question ' + get_question_index(i)
                              , font_dict=dict(
                family="Courier New, monospace",
                size=FONT_SIZE,
                color="black"
            )
                              )

        fig.update_layout(
            xaxis=dict(
                tickmode='array',
                tickvals=list(range(12)),
                ticktext=list(range(12))
            ),
        )

        fig.show()
        """
        # Go version
        trace1 = go.Bar(
            x=[i+1 for i in range(11)],
            y=g[COUNT_NAME],
           # ids=[str(i+1) for i in range(11)],
            name='Survey',
            text=g[COUNT_NAME],
            textposition='auto',
        )
    

        data = [trace1]
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
                    size=FONT_SIZE,
                   # color='#7f7f7f'
                )
            ),
            yaxis=dict(
                title='Percentage',
                titlefont=dict(
                    family='Courier New, monospace',
                    size=FONT_SIZE,
                    #color='#7f7f7f'
                )
            )
        )
    
        fig = go.Figure(data=data, layout=layout)
        fig.update_layout(
            font=dict(
                family="Courier New, monospace",
                size=FONT_SIZE,
                #color="RebeccaPurple"
            ))
        fig.show()
        """
    i='Q75'
    handcrafted_plot(df
        , text="Belonging to the community is motivating my work on the project"
        , qualtrics_key=i
        , index=get_question_index(i))

    i='Q96.1'
    handcrafted_plot(df
        , text="In the past year, members of my GitHub community made demeaning or derogatory remarks about me"
        , qualtrics_key=i
        , index=get_question_index(i)
        , font=18)

    """
    i='Q96.1'
    handcrafted_plot(df
        , text="In the past year, members of my GitHub community made demeaning or derogatory remarks about me"
        , qualtrics_key=i
        , index=get_question_index(i))



    i = MOTIVATION_QUESTION
    handcrafted_plot(df
        , text="I regularly have a high level of motivation to contribute to the repository"
        , qualtrics_key=i
        , index=get_question_index(i))
    motivation_vs_hours_plot(df
                             , text="Motivation")

    i = 'Q83'
    handcrafted_plot(df
        , text="My motivation has more influence on my productivity, than my skill"
        , qualtrics_key=i
        , index=get_question_index(i))
    """

def handcrafted_plot(df
                     , text
                     , qualtrics_key
                     , index
                     , font=FONT_SIZE):


    g = df.groupby([qualtrics_key], as_index=False).agg({DEV_KEY: 'count'})
    g = g.rename(columns={DEV_KEY: COUNT_NAME})

    fig = px.bar(g
                 , x=qualtrics_key
                 , y=COUNT_NAME
                 , text_auto=True

                 )

    fig = decorate_figure(fig
                          , title=text
                          , xaxis_title='Answers to question ' + get_question_index(qualtrics_key)
                          , font_dict=dict(
            family="Courier New, monospace",
            size=font,
            color="black"
        )
                          )

    fig.update_layout(
        xaxis=dict(
            tickmode='array',
            tickvals=list(range(12)),
            ticktext=list(range(12))
        ),
    )

    fig.show()


def motivation_vs_hours_plot(df
                     , text):

    df[WORKING_HOURS_QUESTION] = pd.to_numeric(df[WORKING_HOURS_QUESTION], errors='coerce')
    df = df[(~df[MOTIVATION_QUESTION].isna()
             & ~df[WORKING_HOURS_QUESTION].isna())]
    print("Avg. motivation", df[MOTIVATION_QUESTION].mean())
    print("Avg. hours", df[WORKING_HOURS_QUESTION].mean())
    print(df.groupby(MOTIVATION_QUESTION, as_index=False).agg({WORKING_HOURS_QUESTION: 'mean'
                                                                  , DEV_KEY: 'count'}))
    print("low motivation working hour dist")
    print(df[df[MOTIVATION_QUESTION] < 9][WORKING_HOURS_QUESTION].value_counts(normalize=True).sort_index().cumsum())
    print("high motivation working hour dist")
    print(df[df[MOTIVATION_QUESTION] >= 9][WORKING_HOURS_QUESTION].value_counts(normalize=True).sort_index().cumsum())
    #df[WORKING_HOURS_QUESTION] = df[WORKING_HOURS_QUESTION].map(lambda x : x + np.random.normal(0
    #                                                                                            ,200))

    fig = px.scatter(df
                     , x=MOTIVATION_QUESTION
                     , y=WORKING_HOURS_QUESTION)
    fig = decorate_figure(fig
                          , title="Working hours by motivation"
                          , xaxis_title=text
                          , font_dict=dict(
            family="Courier New, monospace",
            size=18,
            color="black"
        )
                          )
    fig.show()


    fig = px.box(df
                     , x=MOTIVATION_QUESTION
                     , y=WORKING_HOURS_QUESTION)
    fig = decorate_figure(fig
                          , title="Working hours by motivation"
                          , xaxis_title=text
                          , font_dict=dict(
            family="Courier New, monospace",
            size=18,
            color="black"
        )
                          )
    fig.show()

def print_survey_questions():

    questions = [(k, question_to_index_dict[k]) for k in question_to_index_dict.keys()]
    questions = sorted(questions
                       , key= lambda x: x[1])

    for p in questions:
        print(p[1], p[0], get_question_text(p[0]))
if __name__ == "__main__":
    plot_answers()
    print_survey_questions()

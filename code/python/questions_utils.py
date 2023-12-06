from os.path import join
import json

from configuration import DATA_PATH, COLUMNS_DICT_FILE, PERSON_ANSWERS, PROJECT_ANSWERS\
    , DEVELOPER_IN_PROJECT_ANSWERS, motivation_type_questions, PAYMENT_COL

def get_question_text(id):
    with open(join(DATA_PATH, COLUMNS_DICT_FILE), 'r') as f:
        s = f.read()
        s = s.replace("didn't", 'did not')
        s = s.replace("'", '"')
        questions = json.loads(s)

    #with open(join(DATA_PATH, COLUMNNS_DICT_FILE)) as json_file:
    #    questions = json.load(json_file)

    return questions.get(id, id)


def get_question_keys(inclued_administrative=False):

    administravitve_columns = {'StartDate', 'EndDate', 'Status', 'IPAddress', 'Progress', 'Duration (in seconds)'
        , 'Finished', 'RecordedDate', 'ResponseId', 'RecipientLastName', 'RecipientFirstName', 'RecipientEmail'
        , 'ExternalReference', 'LocationLatitude', 'LocationLongitude', 'DistributionChannel', 'UserLanguage'
        , 'survey', 'sampling_method'}

    with open(join(DATA_PATH, COLUMNS_DICT_FILE), 'r') as f:
        s = f.read()
        s = s.replace("didn't", 'did not')
        s = s.replace("'", '"')
        questions = json.loads(s)

    if inclued_administrative:
        return list(questions.keys()) + [PAYMENT_COL]
    else:
        return list(set(questions.keys()) - administravitve_columns) + [PAYMENT_COL]

def dict_array_lookup(dict
                , val):
    for i in dict.keys():
        if val in dict[i]:
            return i
    return None

def question_type(question_id):

    if question_id in PERSON_ANSWERS:
        return 'Person'
    elif question_id in PROJECT_ANSWERS:
        return 'Project'
    elif question_id in DEVELOPER_IN_PROJECT_ANSWERS:
        return 'Person in Project'
    else:
        return 'Other'

def get_question_motivation_type(question):

    return dict_array_lookup(motivation_type_questions
                , question)

question_to_index_dict ={ 'Q1' : '2.1'
, 'Q83' : '2.2'
, 'Q84' : '2.3'
, 'Q85' : '2.4'
, 'Q87' : '2.5'
, 'Q88' : '2.6'
, 'Q89' : '2.7'
, 'Q90' : '2.8'
, 'Q91' : '2.9'
, 'Q92' : '2.10'
, 'Q93' : '2.11'
, 'Q94' : '2.12'
, 'Q95' : '2.13'
, 'Q96' : '2.14'
, 'Q97' : '2.15'
, 'Q98' : '2.16'
, 'Q99' : '2.17'
, 'Q71' : '2.18'
, 'Q29' : '3.a'
, 'Q30' : '3.b'
, 'Q31' : '3.c'
, 'Is_Paid' : '3.c'
, 'Q86' : '3.1'
, 'Q34' : '3.2'
, 'Q102' : '3.3'
, 'Q101' : '3.4'
, 'Q67' : '3.5'
, 'Q68' : '3.6'
, 'Q69' : '3.7'
, 'Q70' : '3.8'
, 'Q71.1' : '3.9'
, 'Q72' : '3.10'
, 'Q73' : '3.11'
, 'Q74' : '3.12'
, 'Q75' : '3.13'
, 'Q76' : '3.14'
, 'Q77' : '3.15'
, 'Q78' : '3.16'
, 'Q79' : '3.17'
, 'Q81' : '3.18'
, 'Q82' : '3.19'
, 'Q83.1' : '3.20'
, 'Q84.1' : '3.21'
, 'Q95.1' : '3.22'
, 'Q96.1' : '3.23'
, 'Q97.1' : '3.24'
, 'Q98.1' : '3.25'
, 'Q72.1' : '4.1'
, 'Q86.1' : '4.2'
, 'Q87.1' : '4.3'
, 'Q88.1' : '4.4'
, 'Q89.1' : '4.5'
, 'Q90.1' : '4.6'
, 'Q91.1' : '4.7'
, 'Q92.1' : '4.8'
, 'Q93.1' : '4.9'
, 'Q94.1' : '4.10'
, 'Q60' : '5.1'
, 'Q61_1' : '5.2'
, 'Q62' : '5.3'
, 'Q63' : '5.4'
, 'Q64' : '5.5'
, 'Q65_1' : '5.6'
, 'Q66' : '5.7'
, 'Q68.1' : '5.8'
, 'Q71.2' : '6.1'
, 'Q68.2' : '6.2'
}

def get_question_index(question):
    PREFIX= ''
    rc = 'Not Found:' + question

    if question in question_to_index_dict.keys():
        rc = PREFIX + question_to_index_dict.get(question)

    return rc

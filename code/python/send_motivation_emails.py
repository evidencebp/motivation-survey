from os.path import join
from time import sleep


from configuration import DATA_PATH, SOURCE_EMAIL, SOURCE_PASS

from batch_process import BatchProcessor
from email_utilities import generate_email_message, generate_text_from_template, open_email_server, send_email

server = open_email_server(from_user=SOURCE_EMAIL
                           , pwd=SOURCE_PASS)

MOTIVATION_SUBJECT = "Open Source Development Survey"

MOTIVATION_TEMPLATE = """
Dear {name},
<BR>
<BR>
We are a team of researchers interested in improving software development.
<BR>
<BR>
If you contributed to a GitHub repository as a developer in the last 12 months
, we ask for your help by answering questions about your contribution and motivation.
<BR>
<BR>
Answering <a href="https://huji.az1.qualtrics.com/jfe/form/SV_73wu35ICXBWm07j">these questions</a> is estimated to take about 10 minutes of your time.
<BR>
<BR>
Three of the participants will receive a 50$ gift card.
<BR>
<BR>
Thank you so much for your help in answering  <a href="https://huji.az1.qualtrics.com/jfe/form/SV_73wu35ICXBWm07j">the survey</a>.
<BR>
<BR>
Prof. Dror Feitelson, Prof. Avi Kluger,  Ph.D. candidate Idan Amit
<BR>
<BR>
If you have any question you can contact Idan Amit at idan.amit@mail.huji.ac.il"""

def generate_motivation_message(name :str
                                , recipient : str):
    email_text = generate_text_from_template(template=MOTIVATION_TEMPLATE
                                 , params_dict={'name' : name})

    return email_text

def send_motivation_email(record):

    message = generate_motivation_message(name=record.author_name
                                          , recipient=record.public_email)
    return send_email(server
               , from_user=SOURCE_EMAIL
               , recipient=record.public_email
               , subject=MOTIVATION_SUBJECT
               , body=message)

def send_motivation_emails(input_file: str
                           , output_file: str
                           , error_file : str = None):

    pause_function = lambda : sleep(10)
    bp = BatchProcessor(input_file=input_file
                   , output_file=output_file
                   , prev_file=None
                   , fetch_function=send_motivation_email
                   , keys=['author_name', 'public_email']
                   , error_file=error_file
                   , pause_function=pause_function
                   )
    bp.process()


def run_send_motivation_emails():

    send_motivation_emails(input_file=join(DATA_PATH, "send_tst1.csv")
        , output_file=join(DATA_PATH, "send_tst_output.csv")
                           )
    server.close()


if __name__ == '__main__':

    run_send_motivation_emails()

import pytest
from os.path import join
import pandas as pd

from configuration import DATA_PATH, SOURCE_EMAIL, SOURCE_PASS

from send_motivation_emails import generate_motivation_message, send_motivation_email, open_email_server


server = open_email_server(from_user=SOURCE_EMAIL
                           , pwd=SOURCE_PASS)

@pytest.mark.parametrize(('name'
                            , 'recipient'
                            , 'expected'
                          )
    , [
pytest.param(
                'Alan Turing'
                , 'alan@turing.ac.uk'
                ,
"""From: idan.amit@mail.huji.ac.il
To: ['alan@turing.ac.uk']
Subject: Open Source Development Survey
Mime-Version: 1.0;
Content-Type: text/html; charset="ISO-8859-1";
Content-Transfer-Encoding: 7bit;


<html>
<body>

Dear Alan Turing,
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
If you have any question you can contact Idan Amit at idan.amit@mail.huji.ac.il
</body>
</html>
"""
, id='reg1')
                         ])
def test_generate_motivation_message(name :str
                                        , recipient : str
                                        , expected  : str
                         ):
    actual = generate_motivation_message(name
                         , recipient
                         )

    assert actual == expected

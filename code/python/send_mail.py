import smtplib


# https://stackoverflow.com/questions/10147455/how-to-send-an-email-with-gmail-as-provider-using-python
# https://support.google.com/mail/thread/23341254?hl=en - no captcha
# https://support.google.com/mail/thread/38519529?hl=en - allow access
# https://support.reolink.com/hc/en-us/articles/360003525833-How-to-Allow-Less-Secure-Apps-to-Access-Your-G-mail-Account
def send_email(user, pwd, recipient, subject, body):


    FROM = user
    TO = recipient if isinstance(recipient, list) else [recipient]
    SUBJECT = subject
    TEXT = body

    # Prepare actual message
    message = """From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
    #try:
    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.ehlo()
    server.starttls()
    server.login(user, pwd)
    server.sendmail(FROM, TO, message)
    server.close()
    print('successfully sent the mail')
    #except:
    #    print("failed to send mail")

if __name__ == "__main__":
    send_email(user='idan.amit@mail.huji.ac.il'
               , pwd=''
               , recipient='idan@acumen.io'
               , subject='Hello, World gmail!'
               , body='Mazal Tov')
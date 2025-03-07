FROM python:2.7.14

RUN mkdir /opt/hello_word/
WORKDIR /opt/hello_word/

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY dist/hello_world /opt/hello_word/

EXPOSE 80

CMD [ "app.py" ]

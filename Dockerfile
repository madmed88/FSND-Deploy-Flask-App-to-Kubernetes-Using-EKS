FROM python:stretch
WORKDIR /app

RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app/

CMD ["gunicorn", "-b", ":8080", "main:APP"]
FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . .

#RUN chmod 777 /app
#
#ENTRYPOINT ["pytest", "--remote"]

CMD ["pytest"]
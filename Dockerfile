FROM python:3.8

ENV PORT 5000
ENV HOSTDIR 0.0.0.0

EXPOSE 5000

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app


ENTRYPOINT ["python", "app.py"]

FROM python:3.9-slim

WORKDIR /app

COPY server server
COPY .linters/requirements.txt .linters/requirements.txt
COPY app.py .
COPY requirements.txt .
COPY .env .

RUN pip install -r requirements.txt && pip install python-dotenv
RUN pip install -r .linters/requirements.txt

ARG FLASK_PORT
ENV FLASK_PORT=${FLASK_PORT}
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST='0.0.0.0'

EXPOSE ${FLASK_PORT}

CMD ["flask", "run"]
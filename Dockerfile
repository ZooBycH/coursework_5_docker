FROM python:3.10

WORKDIR /deploy
COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["sh", "run.sh"]

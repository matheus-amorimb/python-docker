FROM python:3.10-buster

RUN pip install poetry==1.7.0

WORKDIR /app
ENV FLASK_APP src/app.py

COPY pyproject.toml poetry.lock ./
RUN touch README.md

RUN poetry install --without dev --no-root

COPY . /app

CMD ["poetry", "run", "flask", "run", "--host=0.0.0.0"]

FROM python:3.12-alpine

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONIOENCODING="utf-8"
ENV LANG="C.UTF-8"
ENV PIPENV_NOSPIN=True
ENV PIPENV_QUIET=True
ENV PIPENV_DONT_USE_PYENV=True
ENV PIPENV_DONT_USE_ASDF=True

RUN apk --no-cache add olm \
    && apk add --no-cache --virtual .builddeps olm-dev make cmake g++

WORKDIR /app

COPY Pipfile* .
COPY *.py .

RUN pip install --no-cache-dir --disable-pip-version-check --upgrade --root-user-action=ignore pip wheel pipenv \
    && pipenv sync \
    && apk del .builddeps

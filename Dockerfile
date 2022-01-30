FROM python:3.6.12-alpine3.12

RUN apk add --no-cache git

RUN python -m pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir pre-commit

RUN git clone https://github.com/JoeRoumy/pre-commit-docker-action.git && cd pre-commit-docker-action

RUN pre-commit run

# ENTRYPOINT ["django-find-conflicts"]

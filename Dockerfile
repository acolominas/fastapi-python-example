# pull official base image
FROM python:3.12.0-alpine as builder

RUN apk update && apk upgrade --no-cache

# set work directory
WORKDIR /code

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# copy requirements file
COPY ./requirements.txt /code/requirements.txt

# install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

FROM builder AS build2

# set work directory
WORKDIR /code

# copy project
COPY ./app /code/app

# run server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

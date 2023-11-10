# fastapi-python-example

A simple example of using Fast API in Python.

## Preconditions:

- Python 3
- Python Pip

## Run local

### Install dependencies

```
sudo pip install -r requirements.txt
```

### Run server

```
uvicorn app.main:app --reload
```

### Run test

```
pytest test/test.py
```

## API documentation (provided by Swagger UI)

```
http://127.0.0.1:8000/docs
```

## Test locally in Docker

```
docker build -t myimage .
```

```
docker run -d --name mycontainer -p 80:80 myimage
```
```
http://127.0.0.1:80
```

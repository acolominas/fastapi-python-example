from starlette.testclient import TestClient
from app.main import app
import json

client = TestClient(app)


def test_read_main():
    response = client.get('/')
    assert response.status_code == 200
    assert response.json() == {'message': 'Hello World'}

def test_read_arnau():
    response = client.get('/arnau')
    assert response.status_code == 200
    assert response.json() == {'message': 'Hello Arnau'}

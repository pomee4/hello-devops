# Hello World – Flask alkalmazás

Ez egy egyszerű Flask alapú "Hello World" alkalmazás, amely HTTP-n keresztül érhető el a http://localhost:8080 címen.

## Futtatás fejlesztői környezetben

```bash
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python app.py

## Docker build és futtatás

```bash
docker build -t hello-devops:v1 .
docker run -p 8080:8080 hello-devops:v1

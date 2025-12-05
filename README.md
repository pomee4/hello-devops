Hello DevOps Flask Application

This project contains a simple Flask application with two endpoints:
"/" returns a basic text response
"/time" returns the current server time in JSON format

Run locally:
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python app.py

Docker usage:
docker build -t hello-devops:v1 .
docker run -p 8080:8080 hello-devops:v1

DevContainer:
The .devcontainer folder contains a Docker-based DevContainer setup.
To open in VS Code:
Ctrl + Shift + P
Select "Dev Containers: Rebuild and Reopen in Container"
The application will start automatically inside the DevContainer and will be available at http://localhost:8080

Git workflow:
main branch used as trunk
feature/add-time-endpoint branch created
multiple commits added and merged back to main

Repository structure:
app.py
requirements.txt
Dockerfile
README.md
.devcontainer/
.gitignore

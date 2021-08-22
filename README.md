# CC DevOps Challenge Challenge

Objectives:
1. Build & run the app in Docker
2. Put a basic CI/CD pipeline in place via GitHub Actions
3. Make the app visible from outside & deploy to k8s cluster on Google Cloud Platform via Google Kubernetes Engine

## App visible on
Main branch version (tagged latest) & endpoints:
- http://34.118.26.61/
- http://34.118.26.61/ready
- http://34.118.26.61/healthz

Development branch version (tagged test) & endpoints:
- http://34.118.17.56/
- http://34.118.17.56/ready
- http://34.118.17.56/healthz

## Description
For the sake of implementing a "basic" CI/CD, pylint and basic tests carried out by pytest were introduced.

To simplify import process of our app to pytest, I took the liberty to swap name of app source file from flask-app to flask_app.

Docker images of the app are being published both in ghcr as well as gcr.








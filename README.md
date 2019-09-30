[![CircleCI](https://circleci.com/gh/ippeter/lesson5.svg?style=svg)](https://circleci.com/gh/ippeter/lesson5)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Description of the files in the repository

* .circleci/config.yml - CircleCI configuration file
* Dockerfile - instructions how to containerize the app
* Makefile - instructions how to setup the environment, to lint, etc.
* README.md - this file ;)
* app.py - main application body
* output_txt_files/docker_out.txt - output of the docker container with LOG.info
* output_txt_files/kubernetes_out.txt - output of launching the app in minikube
* requirements.txt - list of required libraries for python
* run_docker.sh - script to build and run the docker container with the app
* run_kubernetes.sh - script to run the deployment (with the app containerized in the pod) and to do the port forwarding in minikube
* upload_docker.sh - script to upload the docker container to hub.docker.com
* make_predictions.sh - script to make actual predictions 
* model_data/* - directory which contains the prebuilt model

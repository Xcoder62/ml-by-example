[![Xcoder62](https://circleci.com/gh/Xcoder62/ml-by-example.svg?style=svg)](https://circleci.com/gh/xcoder62/ml-by-example)

## Project Overview - New Master Branch

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Files

* run_docker.sh - Creates a docker image from this source code
* run_kubernetes - Runs the flask web app as a pod in the minikube cluster
* docker_out.txt - an example of the logs displayed after making a prediction from docker.
* kubernetes_out.txt - an example of the logs displayed after making a prediction from kuberenetes.
* .circleci - config for circleci to ensure builds are tested and linted for every commit to github.


---

## Setup the Environments

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

1. Setup and Configure Kubernetes locally ``./run_kubernetes.sh`
2. Use `kubectl get pods` to see pod status, when pod status is set to running, run `./run_kubernetes.sh` again to port-forward
3. In a seperate terminal, run `make_prediction.sh`

[![ahmetcetin](https://circleci.com/gh/ahmetcetin/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/ahmetcetin/ml-microservice-kubernetes)

## Project Overview

A sample project shows deployment of a pretrained `sklearn` model (housing price prediction) using docker and kubernetes. It also has CircleCI integration, where linting Dockerfile for best practices using [hadolint](https://github.com/hadolint/hadolint) and checking python app using `pylint`.

## Setup the Environment

### Running `app.py` locally

* Either clone or download this repo
* Create a virtualenv and activate it by running the following commands one after the other:
  - python3 -m venv ~/.devops
  - source ~/.devops/bin/activate
* Run `make install` to install the necessary dependencies
* Run `python app.py` (If you're not able to use port 80, change the port in last line of app.py)

### Running in docker

* Either clone or download this repo
* Execute `./run_docker.sh` in terminal
* In another terminal session, execute `./make_prediction.sh`

### Running in kubernetes

* Either clone or download this repo
* Execute `./run_kubernetes.sh`. You would get an error message when you run first time, as kubernetes cluster downloads the docker image first
* After 2-3 mins later, execute `./run_kubernetes.sh` again
* In another terminal session, execute `./make_prediction.sh`

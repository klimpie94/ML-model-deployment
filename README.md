[![WGUdacity](https://circleci.com/gh/klimpie94/ML-model-deployment.svg?style=svg)](https://app.circleci.com/pipelines/github/klimpie94/ML-model-deployment)

## Project Overview
# Summary 
This project is about operationalizing a Machine learning Microservice API. Together with tools such as `Flask`, `Sklearn`, `Docker`, `Kubernetes` and `CircleCI` we have been able to deploy an app that serves out predictions about housing prices through API calls.
# How to run
Clone the repository to your local machine and run:
`python3 -m venv venv` In order to create a virtual env and activate it `source venv/bin/activate`
run `make install`, this will install all the dependencies required to run. This may take a while.
# Building, deploying and pushing the container
Use your text editor of choice and replace the `dockerpath` in the following files with your own: `run_kubernetes.sh`, `upload_docker.sh`.
Now first `sh run_docker.sh` this will build and start the container locally.
 If you want to send a payload to it an see the output you'll have to check the port which is defined in the `make_prediction.sh` file, this port has to be the exposed container port so it can communicate with your container.
To upload the built image to the container repo `sh upload_docker.sh`.  This script will prompt you to login with your docker hub credentials.
For the next steps you'll need `virtualbox` and `minikube` installed `sh run_kubernetes.sh` this will pull the image from the remote repo and spin up a k8s pod inside the cluster.
Minikube will output the IP on which you can see the application running in the pod. \
You can also look at the pod output by doing `kubectl logs -f <POD NAME>`, you can get the pod name by doing `kubectl get pods -n default` however this is already shown when you run the script.

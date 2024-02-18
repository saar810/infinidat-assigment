# Project Name

This is a Flask frontend web application with endpoints for handling different routes and demonstrating error handling.

## Table of Contents

- [Project Name](#project-name)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Configuration](#configuration)
  - [Contributing](#contributing)
  - [License](#license)

## Description

This web application showcases the capabilities of Flask, a micro web framework for Python, by providing a simple frontend interface with multiple endpoints. It includes proper error handling and logging to ensure smooth operation and easy debugging.

The app has a main pages served at "/" and an about page served at "/about".

The currently support only HTTP because a certificate was not issued.

## Installation

1. Clone the repository:
    ```
    git clone https://github.com/saar810/infinidat-assigment.git
    ```
2. Move to the project directory:
    ```
    cd infinidat-assigment
    ```
3. Install dependencies:
    ```
    pip install -r requirements.txt / python -m pip install -r requirements.txt
    ```

## Usage

### Local 

1. Run the Flask application:
    ```
    flask run / python -m flask run
    ```
2. Access the app at "localhost:5000"

### Docker-compose
1. Start the app from docker-compose:
    ```
    docker-compose up
    ```
2. Access the app at "localhost:5000"

### Kubernetes
1. Connect to the k8s cluster
2. Apply the configuration yaml:
    ```
    kubectl apply -f deployment.yaml
    ```
3. Get the load balancer ip:
    ```
    kubectl get service -n flask-app-ns
    ```
3. Access the app at "LoadBalancerIP"

## Building the image
Any push to the github repo will trigger the github workflow "cicd.yaml" which can be found in the path: ".github\workflows\"
The files would be checked out to a newly created github machine which will then build the app with dockerx, package it and push it to ghcr.

The created image will then be pulled and used as container while the ci run unittests and linters over the code.

Once merged a PR to the main branch, the cicd.yaml would be triggered again but tagging the pushed image as "latest" and pushing to ghcr.

## Configuration

Explain any configuration options available and how to set them up.

## Contributing

Provide guidelines for contributing to the project, including how to report issues or submit pull requests.

## License

State the license under which the project is distributed.

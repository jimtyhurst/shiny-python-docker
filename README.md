# shiny-python-docker

The sole purpose of this project is to demonstrate how to deploy a [Shiny](https://shiny.posit.co/) app for Python in a [Docker](https://www.docker.com/) image. I could not find a sample Dockerfile in the [Shiny documentation](https://shiny.posit.co/py/docs/overview.html), so I created this simple example.

**Contents**

- [Introduction](#introduction)
- [Run Locally](#run-locally)
- [Build a Docker image](#build-a-docker-image)
- [Run the Docker image](#run-the-docker-image)
- [License](#license)

## Introduction

The "Shiny" part of the app is from a [posit](https://posit.co/) tutorial:
[Deploying a Shiny for Python application with Posit Connect](https://posit.co/blog/deploying-a-shiny-for-python-application-with-posit-connect/).

This example adds to that tutorial. Rather than deploying to
[Posit Connect](https://posit.co/products/enterprise/connect/),
this example builds a [Docker](https://www.docker.com/) image,
which can then be deployed in any environment that runs containers,
such as Google [Cloud Run](https://cloud.google.com/run] or
AWS Elastic Container Service ([ECS](https://aws.amazon.com/ecs/]).

## Run locally

To run this Shiny app locally in a terminal from the project's root directory
without using a Docker image:

```bash
shiny run ./app.py
```

That command starts a Uvicorn server running on port 8000.
Direct your browser to http://127.0.0.1:8000 to see the interactive web application.

## Build a Docker image

To build a Docker image from the project's root directory:

```bash
docker image build --pull --file './Dockerfile' --tag 'helloshinypython:latest' .
```

## Run the Docker image

Run the Docker image interactively:

```bash
# Maps port 8000 in the container to port 8080 on the host machine.
# View the app in browser on host machine at http://127.0.0.1:8080
docker run -it --rm -p 8080:8000 helloshinypython:latest
```

## License

Copyright (c) 2024 Jim Tyhurst

This program is free software: you can redistribute it and/or modify
it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/)
as published by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.

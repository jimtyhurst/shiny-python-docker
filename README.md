# hello-shiny-python
This is a trivial [Shiny](https://shiny.posit.co/) app for Python, 
which is deployed in a [Docker](https://www.docker.com/) image.

**Contents**

- [Introduction](#introduction)
- [Run Locally](#run-locally)
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
docker run -it --rm -p 8000:8000 helloshinypython:latest
``````

## License
Copyright (c) 2024 Jim Tyhurst

This program is free software: you can redistribute it and/or modify
it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/)
as published by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

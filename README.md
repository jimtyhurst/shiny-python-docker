# hello-shiny-python
This is a trivial [Shiny](https://shiny.posit.co/) app for Python, 
which is deployed in a [Docker](https://www.docker.com/) image.

The "Shiny" part of the app is from a [posit](https://posit.co/) tutorial:
[Deploying a Shiny for Python application with Posit Connect](https://posit.co/blog/deploying-a-shiny-for-python-application-with-posit-connect/).

This example adds to that tutorial. Rather than deploying to
[Posit Connect](https://posit.co/products/enterprise/connect/),
this example builds a [Docker](https://www.docker.com/) image,
which can then be deployed in any environment that runs containers,
such as Google [Cloud Run](https://cloud.google.com/run] or 
AWS Elastic Container Service ([ECS](https://aws.amazon.com/ecs/]).

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

# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim

# Container will expose the endpoint on port 8000
EXPOSE 8080

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY . /app

# Creates a non-root user with an explicit UID and adds permission to access the /app folder
# For more info, please refer to https://aka.ms/vscode-docker-python-configure-containers
# This command is not used for deployments to Google Cloud Run.
#RUN <<EOF
#adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
#rm /app/requirements.txt
#EOF
#USER appuser

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]

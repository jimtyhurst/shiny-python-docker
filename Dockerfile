# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim

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
RUN <<EOF
adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
rm /app/requirements.txt
EOF
USER appuser

# 'shiny run' exposes an endpoint
EXPOSE 8080

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
#CMD ["shiny", "run", "--port", "8080", "app.py"]
CMD ["uvicorn", "app:app", "--host", "127.0.0.1", "--port", "8080"]

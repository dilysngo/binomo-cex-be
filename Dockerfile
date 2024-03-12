# Pull base image
FROM python:3.8

# Set environment variables
# ENV PIP_DISABLE_PIP_VERSION_CHECK 1
# ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install systemd gettext -y

EXPOSE 8000

# Copy project
COPY . .
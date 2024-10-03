# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

RUN pip install --upgrade pip && pip install mssql-scripter
# Run app.py when the container launches
ENTRYPOINT [ "mssql-scripter" ]

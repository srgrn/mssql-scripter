# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

RUN  apt-get update && apt install -y -q wget &&\
     wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.13_amd64.deb &&\
     dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.8_amd64.deb

RUN pip install --upgrade pip && pip install mssql-scripter
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
# Run app.py when the container launches
ENTRYPOINT [ "mssql-scripter" ]

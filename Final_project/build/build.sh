#!/bin/bash

cd petclinic/
chmod +x mvnw
./mvnw package
cp target/*.jar /home/ubuntu/docker/app.jar
cd /home/ubuntu/docker/
docker build -t dariavesn/petclinic .
docker login -u $1 -p $2
docker push dariavesn/petclinic:latest

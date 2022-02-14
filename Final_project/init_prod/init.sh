#!/bin/bash
docker login -u $1 -p $2
docker pull dariavesn/petclinic
docker run -d --name petclinic -p 80:8080 dariavesn/petclinic:latest
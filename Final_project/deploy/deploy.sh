#!/bin/bash
docker pull dariavesn/petclinic:latest
docker stop petclinic
docker rm petclinic
docker run -d --name petclinic -p 80:8080 dariavesn/petclinic:latest
docker system prune -f
rm deploy.sh

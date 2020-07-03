#!/bin/bash
docker run --rm  -v /home/jenkins/whyunkill/hello-world:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package
docker-compose -f docker-compose.yml up -d

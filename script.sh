#!/bin/bash
mkdir hello-world
cp -r workspace/whyunkill/hello-world hello-world
docker run --rm  -v /home/jenkins/jenkins-data/jenkins_home/hello-world:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package

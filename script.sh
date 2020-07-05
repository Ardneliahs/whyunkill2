#!/bin/bash
#/var/jenkins_home/workspace/whyunkill/hello-world
mkdir -p /var/jenkins_home/hello-world
cp -r /var/jenkins_home/workspace/whyunkill/hello-world /var/jenkins_home/
docker run --rm  -v /home/jenkins/jenkins-data/jenkins_home/hello-world:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package

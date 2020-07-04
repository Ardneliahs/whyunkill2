#!/bin/bash
docker run --rm  -v /home/jenkins/jenkins-data/jenkins_home/workspace/whyunkill/hello-world:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package
sudo chown -R jenkins:jenkins /home/jenkins/jenkins-data/jenkins_home/workspace/whyunkill/hello-world/server/target
sudo chown -R jenkins:jenkins /home/jenkins/jenkins-data/jenkins_home/workspace/whyunkill/hello-world/webapp/target

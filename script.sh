#!/bin/bash
docker run --rm  -v /var/jenkins_home/workspace/whyunkill/hello-world:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn -B -DskipTests clean package

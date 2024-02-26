#!/bin/bash

if [ "$1" == true ]; then
    apt update && apt -y install wget unzip && apt clean
    wget -O jacocoagent.zip https://oss.sonatype.org/service/local/artifact/maven/redirect\?r\=snapshots\&g\=org.jacoco\&a\=jacoco\&e\=zip\&v\=LATEST
    unzip jacocoagent.zip -d jacocoagent
    rm -rf jacocoagent.zip
fi

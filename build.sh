#!/bin/bash
if [ $# -eq 2 ]
then
    time mvn clean install -Denvironment.type=$1 -Ddeploy.type=$2 -Dtarget.os=unix
else
    time mvn clean install -Denvironment.type=$1 -Dtarget.os=unix
fi


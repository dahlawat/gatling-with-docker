#!/bin/bash

nohup java -jar /${APPLICATION_NAME}-${VERSION}.${TYPE} > temp.log 2>&1 &

sleep 60

curl http://localhost:8080/planet/info

mvn clean gatling:test
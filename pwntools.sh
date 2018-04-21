#!/bin/bash
docker-compose up -d
id=`docker ps -qf name=pwntools`
docker exec -it $id bash


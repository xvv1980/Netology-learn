#!/bin/bash

#Клонируем репозиторий
git clone https://github.com/xvv1980/shvirtd-example-python.git /opt/app
cd /opt/app
docker compose up -d

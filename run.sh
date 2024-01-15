#!/bin/bash

/bin/cp -Rf adm build/adm/adm

/bin/cp -Rf srv build/adm/srv

/bin/cp -Rf adm build/srv/adm

/bin/cp -Rf srv build/srv/srv

/bin/cp -Rf go.mod build/adm

/bin/cp -Rf go.sum build/adm

/bin/cp -Rf go.mod build/srv

/bin/cp -Rf go.sum build/srv

sudo docker compose -f docker-compose.yaml up --build

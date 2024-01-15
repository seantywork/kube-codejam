#!/bin/bash

sudo docker compose -f docker-compose.yaml down

rm -r build/adm/adm

rm -r build/adm/srv

rm -r build/srv/adm

rm -r build/srv/srv

rm -r build/adm/go.mod

rm -r build/adm/go.sum

rm -r build/srv/go.mod

rm -r build/srv/go.sum


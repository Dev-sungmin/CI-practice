#!/bin/bash
cd /home/ubuntu/backend
docker compose down
docker compose pull
docker compose up -d
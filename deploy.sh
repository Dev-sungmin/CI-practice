#!/bin/bash

cd /var/lib/jenkins/backend  # docker-compose.yml이 있는 디렉토리로 이동

# 기존 컨테이너 정리
docker compose down --remove-orphans

# 사용하지 않는 이미지 정리 (선택사항)
docker image prune -f

# 최신 이미지로 재배포
docker compose pull
docker compose up -d

# 컨테이너 상태 확인
docker compose ps
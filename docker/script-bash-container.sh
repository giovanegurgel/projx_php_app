#!/usr/bin/env bash
clear
docker ps --format "ContainerId: {{.ID}} | {{.Image}} | Last run:{{.RunningFor}} | {{.State}}"
echo ""
echo ""
echo "Digite o id do Container que deseja acessar:"
read container_id
echo ""
docker exec -it -u root $container_id bash

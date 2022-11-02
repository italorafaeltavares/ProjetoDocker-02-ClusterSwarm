#!/bin/bash
echo Swarm Init...
sudo docker swarm init --listen-addr 192.168.56.200:2377 --advertise-addr 192.168.56.200:2377
sudo docker swarm join-token --quiet worker > /vagrant/node_token
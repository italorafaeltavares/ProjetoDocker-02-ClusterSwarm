#!/bin/bash
echo Swarm Init...
sudo docker swarm init --listen-addr 10.10.10.200:2377 --advertise-addr 10.100.199.200:2377
sudo docker swarm join-token --quiet node > /vagrant/node_token
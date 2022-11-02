#!/bin/bash
echo Installing Docker...
curl -fsSL https://get.docker.com/ | bash
sudo usermod -aG docker vagrant
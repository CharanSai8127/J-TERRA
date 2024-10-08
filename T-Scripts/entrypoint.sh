#!/bin/bash
sudo apt update -y
sudo apt install -y docker.io
sudo chmod 666 /var/run/docker.sock
sudo systemctl start docker
sudo usermod -aG docker ubuntu
sudo systemctl restart docker
sudo apt install maven -y
git clone https://github.com/CharanSai8127/jpetstore-6.git
cd /jpetstore
mvn package
docker build -t petstore-new .
docker run -d -p 8080:8080 charansait372/petstore-new

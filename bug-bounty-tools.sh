##Update Repositories and install Docker
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now

## GitTools -- Dumping Git Repositories
cd /opt
git clone https://github.com/internetwache/GitTools.git

## Rustscan -- Faster Nmap
sudo docker pull rustscan/rustscan:alpine

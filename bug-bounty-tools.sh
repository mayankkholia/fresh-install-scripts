

## Update Repositories and other necessary tools
sudo apt update
sudo apt install -y htop bzip2 git ntmui nano vim tmux 
sudo apt install golang
echo 'Repo Updated'

## install docker
sudo apt install -y docker.io
sudo systemctl enable docker --now
echo 'Docker installed'

## install metasploit & msfvemon
echo '*************Install Metasploit yourself*************'

## install burpsuite

echo '*************Install burpsuite yourself*************'

## Get seclists
cd /opt
git clone https://github.com/danielmiessler/SecLists.git
cd $HOME
echo 'seclists downloaded'

## Get Rockyou.txt
cd /opt
wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
bzip2 -d rockyou.txt.bz2
rm -f rockyou.txt.bz2
cd $HOME
echo 'Rockyou.txt downloaded'

## GitTools -- Dumping Git Repositories
cd /opt
git clone https://github.com/internetwache/GitTools.git
cd $HOME
echo 'GitTools installed'

## Rustscan -- Faster Nmap
sudo docker pull rustscan/rustscan:alpine
echo 'rustscan installed via docker'

## ffuf web application fuzzing tool
go get -u github.com/ffuf/ffuf
echo 'ffuf installed via GO'


## pwncat -- netcat on steroids
cd /opt
git clone https://github.com/calebstewart/pwncat.git
python3 -m venv pwncat-env
source pwncat-env/bin/activate
python setup.py install
cd $HOME
echo 'pwncat installed'

#!/usr/bin/bash
sudo apt update
sudo apt install nginx -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo ufw --force enable
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
cd /$(whoami)/ || cd /home/$(whoami)
git clone https://github.com/Janortop5/altschool-december-nginx-challenge.git
cd /$(whoami)/altschool-december-nginx-challenge || cd /home/$(whoami)/altschool-december-nginx-challenge
mkdir node-app
mv package.json server.js node-app/
cd /$(whoami)/altschool-december-nginx-challenge/node-app || cd /home/$(whoami)/altschool-december-nginx-challenge/node-app
sudo npm install
sudo npm install -g pm2
sudo npm install uuid@latest
sudo pm2 start server.js
sudo pm2 startup
sudo mkdir /var/www/eaaladejana.live
sudo touch /var/www/eaaladejana.live/index.html
sudo cp /$(whoami)/altschool-december-nginx-challenge/eaaladejana.live /etc/nginx/sites-available/eaaladejana.live || sudo cp /home/$(whoami)/altschool-december-nginx-challenge/eaaladejana.live /etc/nginx/sites-available/eaaladejana.live
sudo ln -s /etc/nginx/sites-available/eaaladejana.live /etc/nginx/sites-enabled/eaaladejana.live
sudo rm /etc/nginx/sites-enabled/default
sudo systemctl restart nginx

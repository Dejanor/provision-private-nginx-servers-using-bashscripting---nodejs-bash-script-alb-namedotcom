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
npm install
npm install -g pm2
npm install uuid@latest
pm2 start server.js
pm2 startup
mkdir /var/www/eaaladejana.live
touch /var/www/eaaladejana.live/index.html
cp /$(whoami)/altschool-december-nginx-challenge/eaaladejana.live /etc/nginx/sites-available/eaaladejana.live || sudo cp /home/$(whoami)/altschool-december-nginx-challenge/eaaladejana.live /etc/nginx/sites-available/eaaladejana.live
ln -s /etc/nginx/sites-available/eaaladejana.live /etc/nginx/sites-enabled/eaaladejana.live
rm /etc/nginx/sites-enabled/default
systemctl restart nginx
pm2 list

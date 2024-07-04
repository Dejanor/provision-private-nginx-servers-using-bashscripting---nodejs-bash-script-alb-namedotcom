#!/bin/bash
cd /app
npm install
node server.js &
nginx -g 'daemon off;'

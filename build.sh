#!/usr/bin/sh
set -e
hugo
scp -r public/* root@blog.port-zero.com:/var/www/port-zero.com/html
ssh root@blog.port-zero.com systemctl restart caddy

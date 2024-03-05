#!/usr/bin/env bash
# Install nginx inserver and change to the the nginx root
# Script to be executed with sudo privileges
apt-get update
apt-get install nginx -y

ROOT=/var/www
index="<html> <body> Hello World! </body> </html>"
notfound_page="<html> <body>Ceci n'est pas une page</body> </html>"
notfound=/usr/share/nginx/html/notfound.html
default=/etc/nginx/sites-enabled/default

# Replace the whole contents of "/etc/nginx/sites-enabled/default" with below
contents=$(cat <<END
server {
	listen 80 default_server;
	listen [::]:80 default_server;
	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;
	server_name anexe.tech www.anexe.tech;
	add_header  X-Served-By  "$HOSTNAME";

	rewrite ^/redirect_me/?$ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;

	error_page 404 /notfound.html;
	location = /notfound.html {
		root /usr/share/nginx/html; # Default but just being explicit
		internal;
	}
}

END
)

mkdir -p $ROOT/html
mkdir -p /usr/share/nginx/html

echo "$index" | tee "$ROOT/html/index.html" > /dev/null
# 404 page
echo "$notfound_page" | tee "$notfound" > /dev/null

echo "$contents" | tee "$default" > /dev/null
# nginx -t
service nginx restart # or nginx -s reload for uninterrupted silent reload of config


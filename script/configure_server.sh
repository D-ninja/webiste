#!/bin/bash
echo "Configuring Nginx..."
# Replace the default Nginx config if needed (adjust the path as necessary)
cp /var/www/html/nginx.conf /etc/nginx/nginx.conf

# Test the configuration
nginx -t

# Reload Nginx to apply the new configuration
systemctl reload nginx
echo "Nginx configured and reloaded."


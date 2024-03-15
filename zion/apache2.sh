# DocumentRoot /var/www/html

# Modules
LoadModule mpm_event_module modules/mod_mpm_event.so
LoadModule headers_module modules/mod_headers.so
LoadModule rewrite_module modules/mod_rewrite.so

# VirtualHost
<VirtualHost *:80>
  DocumentRoot /var/www/html
  ServerName www.example.com
  <Directory /var/www/html>
    Options Indexes FollowSymLinks
    AllowOverride All
  </Directory>
</VirtualHost>
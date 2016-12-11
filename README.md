This Puppet Module was made for course 'Linuxin keskitetty hallinta'.
http://terokarvinen.com/2016/aikataulu-linuxin-keskitetty-hallinta-ict4tn011-10-loppusyksy-2016

## Puppet Module
- Installs SSH (no root access)
- Enables firewall (22 & 80 /tcp)
- Installs Apache2, MySQL & PHP
- Installs Wordpress with DB access

## Notes
- Wordpress installs to /var/www/html/
- MySQL wordpress user and password hardcoded to module
- MySQL root password is empty

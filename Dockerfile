FROM ubuntu/apache2:2.4-24.04_beta
Copy ./index.html /var/www/html/
Copy ./myprofilephoto.png /var/www/html/
Expose 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

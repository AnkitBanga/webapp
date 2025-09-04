FROM ubuntu/apache2:2.4-24.04_beta
Copy ./index.html /usr/local/apache2/htdocs/
Copy ./myprofilephoto.png /usr/local/apache2/htdocs/
Expose 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

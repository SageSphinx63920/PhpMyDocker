# PhpMyDocker
PhpMyDocker is a simple docker compose project which automatically downloads phpmyadmin, starts a MariaDB server and hosts a nginx for you to connect. I made this project because i had the problem with hosting phpmyadmin on my MacBook. With this you just have to run a bash script and start the compose file! Feel free to visit the Docker Hub page here: https://hub.docker.com/r/sagesphinx63920/phpmydocker-fpm

 --- 
## Setup 
Setup is pretty easy and everybody can do it. Here are the setps you can to do
1. Install docker on your system https://docs.docker.com/engine/install/
1. Make sure you have docker compose installed with `docker compose version`;
   - The projects needs at least **docker engine version 19.03.0+** and **docker compose v2**
1. Clone the proect using `git clone https://github.com/SageSphinx63920/phpmydocker`
1. Run the download script using `bash ./download.sh`;
   - This script might need to be marked as executable with chmod
   - You need to have tar and curl installed on your system *which you do have, bc docker needs these*
   - No root access required 
1. Start the project with `docker compose up -d`
- You might need to change the http/s port and SQL binding! These can be changed in the .env file
- **You have to change the root password of the MariaDB server in the .env file!**
1. Locate to `http://localhost/setup` and set up phpmyadmin as normal
> Please use the host `mariadb` and port 3306 if asked for a hostname regardless of your .env file
1. After setting up phpmyadmin you can use it as normal
*1. Stop the project using `docker compose down`

---
## Updating
*This is still WiP! Prepare for running a script with sudo access to update the project**

## More configuration
### HTTPS
You can easily add https support to the nginx. The config file for this is in `./data/conf/nginx/phpmyadmin.conf`. You can find more about SSL setup on nginx [here](https://nginx.org/en/docs/http/configuring_https_servers.html). Place the certificate files in `./data/ssl`

### MariaDB config
The my.ini can be edited. The file is located in `./data/conf/mariadb/my.ini`. Please note that changing the port here does not have any effect on your host system! This will may only break your phpmyadmin configuration

### PHP config
The settings for php8.1-fpm can be found in `./data/conf/fpm/`. Changing values here may break fpm, so please only change these if you know what you're doing! *If you need to change the custom docker image f.E. when installing an additional extention you can do this in `./fpm-image/Dockerfie`, but this is only for advanced users. You may want to create an Issue if you need an extention to run phpmyadmin* 

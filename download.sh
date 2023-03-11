#!/bin/bash

# Define the URL for the latest version of PhpMyAdmin
PMA_URL="https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz"

# Define the directory where PhpMyAdmin will be installed
PMA_DIR="./data/web/"

# Download the latest version of PhpMyAdmin
wget -o ./data/web/phpmyadmin.tar.gz $PMA_URL

# Extract the PhpMyAdmin archive to the installation directory
tar -xzf ./data/web/phpmyadmin.tar.gz -C $PMA_DIR --strip-components=1

# Clean up the downloaded archive file
rm ./data/web/phpmyadmin.tar.gz

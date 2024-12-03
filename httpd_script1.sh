#!/bin/bash


## can use it for provisioning ###
#### for deploy website in ubuntu with httpd #####
#### This is for centos , you can feel free to use it with your package manager ####'

## check your os information
sudo cat /etc/*release*  

## update 
sudo dnf update

## install the service, and packages
sudo dnf install httpd wget unzip git -y

## create a directory and download or clone the project
sudo mkdir -p /tmp/webfile
git clone <URL> /tmp/webfile
unzip /tmp/webfile/clonefile.zip -d /tmp/webfile

## you can also use wget
wget <URL> -O /tmp/webfile
unzip /tmp/webfile/downloadfile.zip -d /tmp/webfile


## start the httpd service
sudo systemctl start httpd
sudo systemctl enable httpd


## copy files to html directory
cp -r /tmp/webfile/unzipped_file/* /var/www/html

sudo systemctl restart httpd

### then use your ip address in browser url have fun.
echo "User your ip address to run the web site"

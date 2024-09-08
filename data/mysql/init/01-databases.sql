#disable strict mode
set global sql_mode='';

#create required users
#GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'%' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'localhost' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'womenandinfants'@'%' IDENTIFIED BY 'milk22';
#GRANT ALL PRIVILEGES ON *.* TO 'womenandinfants'@'localhost' IDENTIFIED BY 'milk22';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'loader'

CREATE DATABASE IF NOT EXISTS platform;
CREATE DATABASE IF NOT EXISTS platform_dw;

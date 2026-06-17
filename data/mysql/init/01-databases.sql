#disable strict mode
set global sql_mode='';

# Change root user authentication to mysql_native_password for compatibility
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';

#create required users
#GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'%' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'localhost' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'womenandinfants'@'%' IDENTIFIED BY 'milk22';
#GRANT ALL PRIVILEGES ON *.* TO 'womenandinfants'@'localhost' IDENTIFIED BY 'milk22';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'loader';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'loader'

CREATE DATABASE IF NOT EXISTS platform;
CREATE DATABASE IF NOT EXISTS platform_dw;

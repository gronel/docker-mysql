#disable strict mode
set global sql_mode='';

#create required users
GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'%' IDENTIFIED BY 'loader';
GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'127.0.0.1' IDENTIFIED BY 'loader';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' IDENTIFIED BY '';


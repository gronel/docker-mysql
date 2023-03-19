## Version-7 Docker Container

Note: All artisan command should be docker exec -it v7_app var/www/html/artisan your_artisan_command_here
- Rename example_env to .env and modify values as you see fit
- Go to your Source Location Path and make artisan executable
    - chmod +x artisan
- docker-compose build --no-cache (execute once only or as needed, example when you change or IMAGE to php7-apache)
- docker-compose up
- docker exec -it v7_app bash
    - cd /var/www/html
    - php composer.phar install
    - php composer.phar update
- docker exec -it v7_app var/www/html/artisan migrate:fresh
- docker exec -it v7_app var/www/html/artisan db:seed
- all ports in source path .env should be port 3306
- add timeless-dev-v7 or your dns in host file
- Browse http://timeless-dev-v7

#Docker Debugging with VSCode
- launch.json file content
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug on Docker App",
            "type": "php",
            "request": "launch",
            "port": 9003,
            "pathMappings": {
                "/var/www/html": "${workspaceFolder}"
            },
            "hostname": "hris.idev.org", // change DNS name as needed
            "xdebugSettings": {
                "max_data": 65535,
                "show_hidden": 1,
                "max_children": 100,
                "max_depth": 5
            }
        }
    ]
}
```
Note: IF NOT WORKING, modify xdebug.ini client_host from host.docker.internal using the docker container IP address or using your host ip address
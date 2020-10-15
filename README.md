#   VSCode-Server
Code-Server + composer + npm
- linuxserver/code-server
- php-cli
- composer
- npm

#   Usable Command
```
docker build -t code-server .
docker-compose -f Core_food-docker-compose.yml build
docker-compose -f Core_food-docker-compose.yml up
docker run -p 8443:8443 -p 8080:8080 -it code-server bash
```

`bash`：cmd line 下可以切換先前指令

`libonig-dev`：代替 mbstring


#   xDebug for VSCode
1. install the extension : 'felixfbecker.php-debug' 
2. click 'Run' in SideBar
3. add this slice into 'launch.json'
```json
        {
            "name": "Listen for Core_food @ CodeServer",
            "type": "php",
            "request": "launch",
            "port": 9001,
            "pathMappings": {
                "/var/www/html/Core_food": "${workspaceFolder}/Core_food"
            },
        },
```
4. click 'start debugging' button


#   Step
//  TODO
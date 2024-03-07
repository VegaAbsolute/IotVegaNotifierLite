[![IotVega](http://iotvega.com/images/logo.png)](http://iotvega.com)
# IotVegaNotifierLite
Application to notify IotVegaServer users about an alarm event. 
# Quick start

There are two options for running an application in a Docker container or on bare metal

## Docker container
The easiest way to run this application is using the docker.
### Preparation
- Install [docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/)

### Run with docker-compose
- pull the repository with command `git clone https://github.com/VegaAbsolute/IotVegaNotifierLite.git`
- navigate to the directory `cd IotVegaNotifierLite`
- execute command `docker compose up -d --build`
- That's it, now you can configure the application via the web interface on port `4040` with the default login `notifier` and password `iotvega`

#### OR
### Running the image without docker compose
- Navigate to the directory where your configuration file will be stored `cd /my/config/path` for example
- Create empty config file with name *config.ini*  `touch config.ini`
- Execute command:
```
docker run --restart=always -d \
           -v ${PWD}/config.ini:/config.ini \
           -p 4040:4040 \
           --name notifier-lite \
           vegaabsolute/notifier-lite:latest
```
instead of `${PWD}` you can specify an absolute path convenient for you to store the configuration file of this application
- That's it, now you can configure the application via the web interface on port `4040` with the default login `notifier` and password `iotvega`


## Standalone application
### Preparation
- Install node.js 


[download](https://nodejs.org/en/download/)


or

Using Ubuntu


`curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs`


Using Debian, as root

`curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
apt-get install -y nodejs`


- Install the Nodejs Application Task Manager PM2 `npm install pm2 -g`
- Install git (examle for ubuntu `apt-get install git`)
### Installing and running the application
- Make a clone of the repository IotVegaNotifier `git clone https://github.com/VegaAbsolute/IotVegaNotifierLite.git`
- Go to the Applications folder IotVegaNotifier `cd IotVegaNotifierLite`
#### If OS Linux
- Running the application `pm2 start npm -- start` or if use sudo `pm2 start npm -- start --unsafe-perm`
- Configure IotVegaNotifier. Edit the config.ini file.
- Restart the application so that the settings are applied `pm2 restart 0`
> To view the program work use the command `pm2 monit`
> To exit the console, press CTRL+D
#### If OS Windows
- Running the application `npm start`
- Exit, press CTRL+D
- Configure IotVegaNotifierLite. Edit the config.ini file.
- Running the application `npm start` or Configuring autorun


#### Configuring autorun
##### If pm2
- `pm2 save`
- `pm2 startup` and You simply have to copy/paste the line PM2 gives you and the startup script will be configured for your OS.
##### If OS Windows
- `npm install -g qckwinsvc`
- `qckwinsvc --name "IotVegaNotifierLite" --description "IotVegaNotifierLite" –script "G:\IOT VEGA\IotVegaNotifierLite\index.js" –startImmediately` - Where "G: \ IOT VEGA \ Iot Vega Notifier Lite \ index.js" is your application path
 
[Description http API rus](api.md)

## Support devices
- UE
- SVE
- GM-1
- GM-2
- SI-11
- SI-12
- SI-13
- SI-21
- SI-22
- TD-11
- TP-11
- LM-1
- TL-11
- SRC-1
- M-BUS-1
- M-BUS-2
- SMART HS-0101
- SMART MC-0101
- SMART AS-0101
- SMART MS-0101
- SMART SS-0101
- SMART SS-0102
- SMART UM-0101
- SPBZIP 2726/2727
- Mercury
- SH-02

## Support events
- dangers device
- low battery
- gateway active
- gateway inactive
- server not available
- startup notifiere

## Maximum version compatibility:
1.0.5 with IotVegaPulse v1.1.13b






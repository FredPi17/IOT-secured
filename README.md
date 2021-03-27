# IOT Secured

IoT secured stack

## SECURITY

### MQTT BROKER 

The MQTT broker has authentication and TLS certificates to log and communicate between clients. To do so, see the picture below to connect to it. 

#### TLS OPTION and ACLs AUTH

The client configuration needs to be like this in MQTTX: 

![TLS add](TLS-config.png)

### NODE-RED

Node-red is the service that allows to connect to the mqtt broker, get messages, and transfer data to the MYSQL database. 

#### AUTH with username/password

The configuration supports two users: 

* `guilhem` : for Guilhem user
* `fred` : for Frédéric user

To be able to connect, you should execute this command for each user : 

```bash
docker exec -it node-red npx node-red admin hash-pw <user>
```
A command prompt asks for the password you want to give to the user. 

Then you need to copy these hashes and past into you `.env` file and source it :

```bash
source .env
```

The you can log-in to the node-red web interface at `1880` port. 

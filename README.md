#DOCKER FOR HAPPYLEAF MASTERNODES

Supported coins:
- happyleaf

SETUP EXAMPLE:

```
  MN1:
    build: ./docker
    restart: unless-stopped
    environment:
      masternodeprivkey: "PUT YOUR KEY HERE"
    ports:    
      - "25001:5333"
```

In ports section make shure that port: 18001 is unique for your server, if not change it.
In environment section you need to change: coin, ip and masternodeprivkey
- coin - please look at Supported coin list 
- ip - your masternode server IP
- masternodeprivkey - please generate in your wallet


Also you can open docker-compose.yml file example here:
docker-compose.yml


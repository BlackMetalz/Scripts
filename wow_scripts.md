# 1. Auto Restart World Server

```bash
#!/bin/bash

while :; do
sudo ./worldserver
sleep 0
done
```

# 2. Running Server
```
# Now to start the auth and restarter without having PuTTy open, we going to use screen
# Run the following commands to get screen running with name and in detach mode =. S: sessioname, md: start screen in detached mde
screen -mdS auth ./authserver
screen -mdS world ./restarter.sh

```

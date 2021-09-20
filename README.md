# i3blocks-docker-containers

Listing certain local docker containers in i3blocks. Mouse buttons (left, middle, right) actions for containers (start, stop, restart).
## Install dependece
https://rancher.com/docs/rancher/v2.0-v2.4/en/cli/
## Configure
Add to your `i3/config` file blocks:
```bash
 bar {
     position bottom
     status_command i3blocks -c path-to-i3blocks-docker-containers/i3blocks2.conf
 }
 
 bar {
     position bottom
     status_command i3blocks -c path-to-i3blocks-docker-containers/i3blocks3.conf
 }
```

Replace `path-to-i3blocks-docker-containers` in both `i3blocks3.conf` and `i3blocks2.conf` files with path to cloned project. 
Reload i3 config.

# HomeLab-Development-Environments

## Build
To build
```docker build . -t homelab:latest```

## Run
To run a homelab env
```docker run -ti -d -p 3000:22 -v /var/run/docker.sock:/var/run/docker.sock homelab:latest```
and connect with ssh, or vs code with Remote Development using SSH https://code.visualstudio.com/docs/remote/ssh

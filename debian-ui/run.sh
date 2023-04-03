#! /bin/bash

XDG_RUNTIME_DIR=/home/homelab/xpra

mkdir -p "$XDG_RUNTIME_DIR"

xpra start-desktop --start=openbox --bind-tcp="0.0.0.0:8080" --tcp-auth="password:value=DEFAULT_PASSWORD" --daemon="no" --start="tint2" --bell="no" --max-size="1280x720"
#!/bin/bash

# Instance 1 (default)
syncthing --home="/home/chara/.config/syncthing" &

# Instance 2 (custom)
syncthing \
  --home="/home/chara/.config/syncthing2" \
  --gui-address="http://127.0.0.1:8385/" &

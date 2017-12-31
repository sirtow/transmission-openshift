#!/bin/bash

exec transmission-daemon  --config-dir /transmission/settings --foreground --log-info --no-portmap --auth  --username admin --password admin


#!/bin/bash

scout --port $MONGO_PORT --host $MONGO_HOST load case $YAML

if [ ! -z "$PED" ] && [ ! -z "$VCF" ]; then
  loqusdb --port $MONGO_PORT --host $MONGO_HOST load -f $PED $VCF
fi




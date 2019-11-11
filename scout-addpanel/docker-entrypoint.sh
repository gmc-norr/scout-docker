#!/bin/bash

scout --port $MONGO_PORT --host $MONGO_HOST load panel --institute $INSTID --panel-id $PANELID $FILE 


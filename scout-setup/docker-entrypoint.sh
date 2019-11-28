#!/bin/bash

scout --port $MONGO_PORT --host $MONGO_HOST setup database --api-key $API_KEY

loqusdb --port $MONGO_PORT --host $MONGO_HOST index

scout --port $MONGO_PORT --host $MONGO_HOST load institute -d GMS -s nina.karlsson.norgren@regionvasterbotten.se -i g001

scout --port $MONGO_PORT --host $MONGO_HOST load user --institute-id g001 --user-name Nina_Norgren --user-mail nina.norgren@umu.se --admin

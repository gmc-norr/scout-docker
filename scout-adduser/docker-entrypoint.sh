#!/bin/bash

scout --port $MONGO_PORT --host $MONGO_HOST load user --institute-id $INSTID --user-name $USERNAME --user-mail $USERMAIL $ADMIN


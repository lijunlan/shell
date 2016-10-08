#! /bin/bash

mongo <<EOF

use admin
db.shutdownServer()

EOF

#mongo --eval "use admin;db.shutdownServer();exit;"

#mongo --eval "show dbs;" 


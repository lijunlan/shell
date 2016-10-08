#! /bin/bash

mongod -dbpath /data/db/ --logpath=/log/mongodb/mongodb.log --logappend --fork 

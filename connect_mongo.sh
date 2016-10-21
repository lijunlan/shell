#!/bin/bash
#create user root
#db.createUser({user:'test', pwd:'test123', roles:['userAdminAnyDatabase']})

#mongo 115.159.87.160/luna-dev -u luna-dev -p dsidiejvng
#mongo 47.90.63.120/admin -u root -p ll1992917
#mongo 47.90.63.120/mydb -u mydb -p 123456
if [ $# = 1 ] ; then
        if [ $1 = "focus_audit" ] ; then
        	mongo 10.10.196.6/admin -u focus_audit -p qwe123!@#
	elif [ $1 = "mymongo" ] ; then
        	mongo 47.90.63.120/mydb -u mydb -p 123456
	else
                 echo "unknow parameter,please input newhouse_test/focus_dc"
        fi
else
         echo "please input parameter: focus_audit/mymongo"
fi

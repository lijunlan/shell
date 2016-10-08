#!/bin/bash
if [ $# = 1 ] ; then
	if [ $1 = "newhouse_test" ] ; then
		mysql -h 10.31.84.120 -P 3307 -u fdbuser -pWslm:11Wps -D newhouse_product_20160530
	elif [ $1 = "focus_dc" ] ; then
		mysql -h 10.31.85.33 -P 3311 -u focus_dc_rw -ptest#rwpass -D focus_dc
	else
		echo "unknow parameter,please input newhouse_test/focus_dc"
	fi
else
	echo "please input parameter: newhouse_test/focus_dc"
fi

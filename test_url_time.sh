#! /bin/bash  
  
# arg1=start, arg2=end, format: %s.%N  
function getTiming() {  
    start=$1  
    end=$2  
     
    start_s=$(echo $start | cut -d '.' -f 1)  
    start_ns=$(echo $start | cut -d '.' -f 2)  
    end_s=$(echo $end | cut -d '.' -f 1)  
    end_ns=$(echo $end | cut -d '.' -f 2)  

# for debug..  
    echo $start  
    echo $end  
  
  
#    time=$(( ( 10#$end_s - 10#$start_s ) * 1000 + ( 10#$end_ns / 1000000 - 10#$start_ns / 1000000 ) ))  
    time=$(( ( $end_s - $start_s ) * 1000 + ( $end_ns / 1000000 - $start_ns / 1000000 ) ))
 
    echo "$time ms"  
}

function access() {

    start=$(date +%s.%N)  

    #curl -X GET http://house-be-manage.focus.cn//spiderMessage/count/checking -H 'Cookie:FOCUS_A_UDIG=SnbsRrwDJjOKVL6sjiIphFhChVCCfwzDQuQUlGSfUPU7jN/2wJ6k8Ilw1INLqbaksKmt5lJJPk6ZDdEnYW2T1DnjFYu6/j+7uhgEUovjnne9pT1nvwTZiyp2yF/I/wgFByzA9uJrrEeaFegRhuB41nQjEqgzXPEfRa6uoRfj7mY='

    curl -i https://t3.focus-img.cn/xf/zxc/1f325486f5feeb95d8693ca682bac29a.jpg

    echo ''

    end=$(date +%s.%N)  

    getTiming $start $end  
}

function accessMore() {
    for((i=0; i<100; i++)) 
    do
        access &
    done
}

access

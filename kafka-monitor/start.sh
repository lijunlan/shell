#!/bin/bash
java -cp KafkaOffsetMonitor-assembly-0.2.0.jar \
     com.quantifind.kafka.offsetapp.OffsetGetterWeb \
     --zk 10.31.85.40:2181 --port 8086 --refresh 10.seconds  --retain 7.days 1>stdout.log 2>stderr.log &

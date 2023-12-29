#!/bin/bash
#sends keys to first and second terminals
./libs/kafka/bin/zookeeper-server-start.sh ./libs/kafka/config/zookeeper.properties &
./libs/kafka/bin/kafka-server-start.sh ./libs/kafka/config/server.properties &
./libs/kafka/bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 4

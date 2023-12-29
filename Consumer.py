import psutil
from kafka import KafkaConsumer

topic_name = 'test-topic'
consumer = KafkaConsumer(topic_name)

for message in consumer:
    value = int.from_bytes(message.value, 'big')
    print(value)
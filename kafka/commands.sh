# Delete a kafka topic
docker exec -it broker kafka-topics --bootstrap-server broker:9092 --delete --topic sensor_data

# List kafka topics
docker exec -it broker kafka-topics --bootstrap-server broker:9092 --list

# Describe a topic
docker exec -it broker kafka-topics --bootstrap-server broker:9092 --describe --topic sensor_data

# Write topic content to file
docker exec -it broker kafka-console-consumer --bootstrap-server broker:9092 --topic sensor_data --from-beginning
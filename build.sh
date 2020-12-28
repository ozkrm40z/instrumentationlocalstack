#Create External network
docker network create loki || true

#Tear down compose for grafana
docker-compose -f docker-compose-grafana.yml down

#Tear down compose for fluentbit
docker-compose -f docker-compose-fluentbit.yml down

#Starting compose for grafana
docker-compose -f docker-compose-grafana.yml up -d 

#Starting compose for fluentbit
docker-compose -f docker-compose-fluentbit.yml up -d
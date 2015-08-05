FROM confluent/zookeeper
MAINTAINER lg
RUN rm -rf /usr/local/bin/zk-docker.sh
#ADD /root/zk-docker.sh /usr/local/bin/zk-docker.sh
RUN curl --location --silent --insecure --output /usr/local/bin/zk-docker.sh https://raw.githubusercontent.com/lgforgithub/mykafka/master/zk-docker.sh
ENTRYPOINT ["/usr/local/bin/zk-docker.sh"]
VOLUME [/var/lib/zookeeper]
USER [confluent]
EXPOSE 2181/tcp 2888/tcp 3888/tcp
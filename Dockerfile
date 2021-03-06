FROM neo4j:latest as neo4j


FROM openjdk:8-jdk

COPY --from=neo4j /var/lib/neo4j /var/lib/neo4j
COPY build-entrypoint.sh /build-entrypoint.sh
RUN mkdir /data && echo "dbms.security.auth_enabled=false" >>/var/lib/neo4j/conf/neo4j.conf

WORKDIR /build

EXPOSE 7687 7474

ENTRYPOINT ["/build-entrypoint.sh"]
CMD ["neo4j"]


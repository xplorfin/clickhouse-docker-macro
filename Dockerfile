FROM yandex/clickhouse-server:19.17

COPY config.xml /etc/clickhouse-server/config.d/local.xml
COPY macros.xml /etc/clickhouse-server/config.d/macros.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN chown -R clickhouse:clickhouse /etc/clickhouse-server/config.d/
RUN chown clickhouse:clickhouse /run.sh

CMD [ "/run.sh" ]

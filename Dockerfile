FROM yandex/clickhouse-server:19.17

COPY config.xml /local.xml
COPY macros.xml /macros.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN chown clickhouse:clickhouse /run.sh
RUN chmod -R 777 /run.sh

CMD [ "/run.sh" ]

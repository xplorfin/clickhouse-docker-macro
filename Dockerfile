FROM ubuntu:18.10

COPY macros.xml /macros.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN chmod 777 /run.sh

CMD [ "/run.sh" ]

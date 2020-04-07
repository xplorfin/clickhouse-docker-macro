FROM ubuntu:18.04

COPY macros.xml /macros.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN chmod 666 /run.sh

CMD [ "/run.sh" ]

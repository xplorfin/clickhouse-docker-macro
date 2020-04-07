FROM ubuntu:18.04

COPY macros.xml /macros.xml
COPY run.sh /run.sh
RUN sudo chmod +x /run.sh
RUN sudo chmod 666 /run.sh

CMD [ "/run.sh" ]

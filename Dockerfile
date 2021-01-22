FROM ubuntu:latest

RUN apt update && apt install ipmitool -y

ADD worker.sh .

ENV INTERVAL 1
ENV BMC_USER "USERID"
ENV BMC_PASSWORD "PASSWORD"
ENV BMC_IPADDRESS "127.0.0.1"
ENV IPMI_CMD "RUN CMD"

CMD ./worker.sh
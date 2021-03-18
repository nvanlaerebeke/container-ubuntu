FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim bwm-ng cifs-utils nfs-common tar gzip iputils-ping jq make telnet git subversion && \
    rm -rf /var/lib/apt/lists/*the download is a 

ENTRYPOINT [ "sleep", "infinity" ]
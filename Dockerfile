FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get upgrade && apt-get install motion \
 && rm -rf /var/lib/apt/lists/*
RUN mkdir /mnt/motion && chown motion /mnt/motion
COPY entrypoint.sh .
RUN chmod 755 /./entrypoint.sh

EXPOSE 8081

CMD /./entrypoint.sh

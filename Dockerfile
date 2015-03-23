FROM mongo:3.0.0

RUN apt-get update -qq
RUN apt-get install -yqq iptables

COPY common/keyfile /opt/keyfile

RUN chmod 0600 /opt/keyfile
RUN chown mongodb:mongodb /opt/keyfile

EXPOSE 27017
CMD ["mongod"]
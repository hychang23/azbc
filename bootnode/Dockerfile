FROM ethereum/client-go

#ENV HTTP_PROXY "http://10.160.3.88:8080"
RUN apk add --update bash 
ENV HTTP_PROXY ""

ADD start.sh /root/start.sh
ADD boot.key /root/boot.key
RUN chmod +x /root/start.sh
ADD keystore /root/keystore
ADD genesis.json /root/genesis.json
ADD password /root/password

ENTRYPOINT /root/start.sh
EXPOSE 8545

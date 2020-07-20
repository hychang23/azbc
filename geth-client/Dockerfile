FROM ethereum/client-go

#ENV HTTP_PROXY "http://10.160.3.88:8080"
RUN apk add --update bash
ENV HTTP_PROXY ""

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
ADD keystore /root/keystore
ADD genesis.json /root/genesis.json
ENTRYPOINT /root/start.sh

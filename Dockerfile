FROM alpine

RUN apk --update add wget python libsodium unzip

WORKDIR /shadowsocksr

RUN wget https://codeload.github.com/shadowsocksrr/shadowsocksr/zip/manyuser -O shadowsocksr-manyuser.zip
RUN unzip shadowsocksr-manyuser.zip
EXPOSE 1080
CMD python shadowsocksr-manyuser/shadowsocks/server.py -p 1080 -k $PASSWORD -m $METHOD -O $PROTOCOL -o $OBFS -G $PROTOCOLPARAM -t $TIMEOUT
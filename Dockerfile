FROM hyperledger/besu:latest
MAINTAINER SuporteInfraAplicacoes <suporte-infra-aplicacoes@bndes.gov.br>

# Corrigir timezone
RUN ln -snf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

ADD ./nodeC/configNode.toml /conf/local/configNode.toml

ADD ./genesis.json /conf/genesis.json

RUN echo 'Configure seu arquivo TOML' > /conf/LEAIME.txt

WORKDIR /conf/local

EXPOSE 8545
EXPOSE 8546
EXPOSE 8547
EXPOSE 8548
EXPOSE 8549
EXPOSE 8550
EXPOSE 8551
EXPOSE 8552
EXPOSE 8553
EXPOSE 8554
EXPOSE 8555

EXPOSE 30303
EXPOSE 30304
EXPOSE 30305
EXPOSE 30306
EXPOSE 30307
EXPOSE 30308
EXPOSE 30309
EXPOSE 30310
EXPOSE 30311
EXPOSE 30312
EXPOSE 30313

VOLUME /conf
VOLUME /conf/local
VOLUME /conf/data

ENTRYPOINT ["besu","--config-file=/conf/local/configNode.toml"]
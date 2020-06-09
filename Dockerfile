FROM hyperledger/besu:latest
MAINTAINER SuporteInfraAplicacoes <suporte-infra-aplicacoes@bndes.gov.br>

# Corrigir timezone
RUN ln -snf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

ADD ./node1/configNode.toml /conf/local/configNode.toml

ADD ./genesis.json /conf/genesis.json

RUN echo 'Configure seu arquivo TOML' > /conf/LEAIME.txt

WORKDIR /conf/local

EXPOSE 8545

VOLUME /conf
VOLUME /conf/local

ENTRYPOINT ["besu","--config-file=/conf/local/configNode.toml"]
FROM hyperledger/besu:latest
MAINTAINER SuporteInfraAplicacoes <suporte-infra-aplicacoes@bndes.gov.br>

# Corrigir timezone
RUN ln -snf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

ADD ./node1/configNode.toml ./conf/node/configNode.toml

ADD ./genesis.json ./conf/genesis.json

WORKDIR ./conf/node

#RUN npm install

EXPOSE 8545

#VOLUME ["/"]
#VOLUME ["/backend/Back/arquivos/declaracao"]
#VOLUME ["/backend/Back/arquivos/modelo_declaracao"]
#VOLUME ["/backend/Back/arquivos/comprovante_doacao"]
#VOLUME ["/backend/Back/arquivos/comprovante_liquidacao"]

#ENTRYPOINT ["ls","-la"]
ENTRYPOINT ["besu","--config-file=./configNode.toml"]
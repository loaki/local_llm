FROM ubuntu:22.04

RUN  apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y wget \
    && apt-get install -y git \
    && apt-get install -y gcc \
    && apt-get install -y g++ \
    && apt-get install -y make

WORKDIR /scripts

COPY llm.sh .

RUN chmod 777 llm.sh

CMD ./llm.sh 
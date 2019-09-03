FROM izakmarais/grafana-reporter:2.2.1
MAINTAINER Stratio Operations <operations@stratio.com>

ADD entrypoint.sh /entrypoint.sh
ADD muttrc /muttrc

RUN apt-get update && \
    apt-get install jq telnet curl wget procps mutt gpgsm vim strace -y && \
    mkdir -p ~/.mutt/cache/headers && \
    mkdir ~/.mutt/cache/bodies && \
    touch ~/.mutt/certificates && \
    mv /muttrc ~/.mutt/

ENTRYPOINT [ "/entrypoint.sh" ]

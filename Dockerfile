FROM izakmarais/grafana-reporter:2.2.1

ADD entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get install jq telnet curl wget procps -y && \
    mkdir -p ~/.mutt/cache/headers && \
    mkdir ~/.mutt/cache/bodies && \
    touch ~/.mutt/certificates && \
    touch ~/.mutt/muttrc && \

ENTRYPOINT [ "/entrypoint.sh" ]

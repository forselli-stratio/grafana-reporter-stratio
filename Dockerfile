FROM izakmarais/grafana-reporter:2.2.1
####with jq,telnet,curl,wget,procps

ADD entrypoint.sh /entrypoint.sh
ADD kms_utils.sh kms_utils.sh
ADD b-log.sh b-log.sh
ADD grafana-reporter /usr/local/bin/grafana-reporter

RUN apt-get update && \
    apt-get install jq telnet curl wget procps -y

ENTRYPOINT [ "/entrypoint.sh" ]

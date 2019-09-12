#!/bin/bash

/usr/local/bin/grafana-reporter -ip $GRAFANA_URL -proto $PROTO -ssl-check=$SSL_CHECK &

wget -O /tmp/informe.pdf "localhost:8686/api/v5/report/$DASHBOARD_ID?apitoken=$API_KEY"

sleep 20

mutt -s 'Informe Semanal' $MAIL_TO -a /tmp/informe.pdf < /dev/null

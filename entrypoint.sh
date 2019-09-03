#!/bin/bash

EXPORT GRAFANA_URL=172.19.2.34:3000
EXPORT DASHBOARD_ID=-CC1XCKZz
EXPORT API_KEY=eyJrIjoiOTJDUUJ3MmMxRm1GRjV0TEZYeENTTmFEVmVNbTc4dlUiLCJuIjoicHJ1ZWJhIiwiaWQiOjF9

/usr/local/bin/grafana-reporter -ip $GRAFANA_URL &

wget -O /tmp/informe.pdf "localhost:8686/api/v5/report/$DASHBOARD_ID?apitoken=$API_KEY"

sleep 40

mutt -s 'Prueba Informe' forselli@stratio.com -a /tmp/informe.pdf < /dev/null
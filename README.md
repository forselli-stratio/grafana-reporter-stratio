# Stratio Grafana Reporter

Stratio grafana reporter is a tool based on IzakMarais/reporter, which is a service that generates a PDF report from a Grafana dashboard.

Stratio Grafana reporters runs as a Metronome job.

## Prerequisites

You need to set the Grafana hostport to 3000(or what you want, but consider Grafana reporter connects to the port where the host exposes the container where Grafana runs)

You have to specify some vars to make it work:

| Variable | Definition |
|-------------------|:--------------|
| SSL_CHECK    | Check the SSL issuer and validity. Set this to false if your grafana serves https using an unverified self-signed certificate.(true/false)         |
| DASHBOARD_ID   | Grafana dashboard id you want to get the report from.         |
| PROTO   | Grafana Protocol. Change to 'https://' if Grafana is using https.(https:// or http://)         |
| API_KEY   | Api key to connect to Grafana.         |
| GRAFANA_URL   | Grafana mesos slave URL and port.(grafana-prueba.marathon.slave.mesos:3000)         |

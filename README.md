STRATIO GRAFANA REPORTER

docker run -it --name paas-bootstrap -v /stratio_volume:/stratio_volume

mutt -s 'Prueba Informe' correodestino@stratio.com -a informe-mutua-dev.pdf < /dev/null


./go/bin/grafana-reporter -ip bootstrap.foxtrot.hetzner.stratio.com/service/grafana-eo -port :8787 -proto 'https://' -ssl-check=false

wget -O prueba.pdf localhost:8787/api/v5/report/g0DLA2FZk?apitoken=eyJrIjoiZ0Nha0J5RkNuWjFoV2JpbWVnQkNTc3FrREFJVDBWMUciLCJuIjoiZ3JhZmFuYS1yZXBvcnRlciIsImlkIjoxfQ==




./go/bin/grafana-reporter -cmd_enable=1 -cmd_apiKey eyJrIjoiWEp6Y1NMNWRqdFBiNzk2NE9ROW5KMk5YbGJ4V2lkZmoiLCJuIjoiZ3JhZmFuYS1yZXBvcnRlciIsImlkIjoxfQ== -ip https://bootstrap.foxtrot.hetzner.stratio.com/service/grafana-eos -cmd_dashboard g0DLA2FZk -cmd_ts from=now-1h -cmd_o out.pdf


api mutuadev: eyJrIjoiVGlseFNzMkpneEt6Z3JzcVlEamRaYWhsODU3RjlncEEiLCJuIjoiZ3JhZmFuYS1yZXBvcnRlciIsImlkIjoxfQ



./go/bin/grafana-reporter -cmd_enable=1 -cmd_apiKey eyJrIjoiVGlseFNzMkpneEt6Z3JzcVlEamRaYWhsODU3RjlncEEiLCJuIjoiZ3JhZmFuYS1yZXBvcnRlciIsImlkIjoxfQ== -ip 172.27.150.24:3000 -cmd_dashboard o-dgRs_iz -cmd_ts from=now-1h -cmd_o out.pdf
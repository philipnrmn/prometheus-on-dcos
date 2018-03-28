FROM prom/prometheus
MAINTAINER Philip Norman <philip@mesosphere.io>

# Install rq and the configuration script
COPY bin/rq /bin/rq
COPY bin/configure.sh /bin/configure
COPY bin/start.sh /bin/start
COPY etc/prometheus.yml /etc/prometheus/prometheus.yml

ENTRYPOINT "/bin/start"

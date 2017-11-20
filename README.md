# Prometheus on DC/OS

This repository is the home of the [Prometheus on DC/OS][1] Docker image. 

This image builds on the official Prometheus image ([prom/prometheus][2]). It uses [rq](https://github.com/dflemstr/rq)
to interpret Mesos' [state-summary endpoint][3] and output a [prometheus.yml][4] file. 

A cron job runs the configuration job every minute. 

Note that you have to run the dcos-metrics [Prometheus plugin][5] in order to use this image, you cannot use it in
isolation.

[1]: https://hub.docker.com/r/philipnrmn/prometheus-on-dcos/ 
[2]: https://hub.docker.com/r/prom/prometheus
[3]: http://mesos.apache.org/documentation/latest/endpoints/master/state-summary/
[4]: https://prometheus.io/docs/prometheus/latest/configuration/configuration/
[5]: https://github.com/dcos/dcos-metrics/tree/master/plugins/prometheus


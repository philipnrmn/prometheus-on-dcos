# Prometheus on DC/OS

This repository is the home of the [Prometheus on DC/OS][1] Docker image. 

This image builds on the official Prometheus image ([prom/prometheus][2]). It uses [rq](https://github.com/dflemstr/rq)
to interpret Mesos' [state-summary endpoint][3] and output a [prometheus service discovery][4] file. 

The configuration job runs in the background every minute

This image works out-of-the-box on DC/OS 1.11 and later; for earlier versions of DC/OS you will require the
[Prometheus plugin][5].

[1]: https://hub.docker.com/r/philipnrmn/prometheus-on-dcos/ 
[2]: https://hub.docker.com/r/prom/prometheus
[3]: http://mesos.apache.org/documentation/latest/endpoints/master/state-summary/
[4]: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#%3Cfile_sd_config%3E
[5]: https://github.com/dcos/dcos-metrics/tree/master/plugins/prometheus


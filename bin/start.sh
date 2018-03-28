#!/bin/sh

# Start the configure process in the background to keep the agents file up-to-date
start-stop-daemon -S -b -x /bin/configure

# Run Prometheus as the main entrypoint
/bin/prometheus "--config.file=/etc/prometheus/prometheus.yml" "--web.console.libraries=/etc/prometheus/console_libraries" "--web.console.templates=/etc/prometheus/consoles"


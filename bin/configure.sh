#!/bin/sh

# Prepare new config file
cp /etc/prometheus/prometheus.yml /tmp/prometheus.yml
# Remove last line
sed -i '$ d' /tmp/prometheus.yml

# Filter state-summary to extract all the agents, mix in the leader,
# output result to temp file
wget -qO- http://leader.mesos:5050/state-summary \
  | rq -jJ "at slaves | spread | at hostname | map (ip) => { ip + ':8088' } | collect" \
  | sed "s/\s//g" \
  | sed "s/\[/[\"leader.mesos:8088\",/" \
  > /tmp/nodes

# Read nodes into memory
NODES=`cat /tmp/nodes`
echo "      - targets: $NODES" >> /tmp/prometheus.yml

# Rotate files
mv /tmp/prometheus.yml /etc/prometheus/prometheus.yml

# Notify Prometheus that the configuration changed
kill -1 `pgrep -f bin.prometheus`
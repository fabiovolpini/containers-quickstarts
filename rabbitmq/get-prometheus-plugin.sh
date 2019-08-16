#!/bin/sh

# make sure the directory exists
mkdir -p /opt/rabbitmq/plugins
cd /opt/rabbitmq/plugins

# Downloads prometheus_rabbitmq_exporter and its dependencies with curl

readonly base_url='https://github.com/deadtrickster/prometheus_rabbitmq_exporter/releases/download/rabbitmq-3.6.14.1'

get() {
  curl -LO "$base_url/$1"
}

get accept-0.3.3.ez
get prometheus-3.4.3.ez
get prometheus_httpd-2.1.8.ez
get prometheus_process_collector-1.3.0.ez
get prometheus_process_collector-1.3.0.FreeBSD.ez
get prometheus_rabbitmq_exporter-v3.6.14.1.ez

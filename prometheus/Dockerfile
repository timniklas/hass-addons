FROM docker.io/prom/prometheus:latest

LABEL \
  io.hass.name="Prometheus" \
  io.hass.description="Prometheus server (official image) for Home Assistant" \
  io.hass.type="addon" \
  io.hass.version="0.1.4"

# Start-Wrapper
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Unser Wrapper wird ENTRYPOINT; die Prometheus-Flags bleiben als CMD
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--config.file=/config/prometheus/prometheus.yml","--storage.tsdb.path=/data/prometheus","--web.listen-address=:9090"]

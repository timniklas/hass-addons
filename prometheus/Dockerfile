FROM docker.io/prom/prometheus:latest

LABEL \
  io.hass.name="Prometheus" \
  io.hass.description="Prometheus server (official image) for Home Assistant" \
  io.hass.type="addon" \
  io.hass.version="0.1.3"

# Nur Args setzen (ENTRYPOINT kommt aus dem Basisimage)
CMD ["--config.file=/config/prometheus/prometheus.yml","--storage.tsdb.path=/data/prometheus","--web.listen-address=:9090"]

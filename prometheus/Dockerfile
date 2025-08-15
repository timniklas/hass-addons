FROM docker.io/prom/prometheus:latest

# Home Assistant Add-on Labels
LABEL \
  io.hass.name="Prometheus" \
  io.hass.description="Prometheus server (official image) for Home Assistant" \
  io.hass.type="addon" \
  io.hass.version="0.1.2"

# Überschreibe den Startbefehl mit festen Parametern
CMD ["/bin/prometheus",
     "--config.file=/config/prometheus/prometheus.yml",
     "--storage.tsdb.path=/data/prometheus",
     "--web.listen-address=:9090"]

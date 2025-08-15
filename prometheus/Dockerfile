FROM docker.io/prom/prometheus:latest

# HA-Add-on Labels
LABEL \
  io.hass.name="Prometheus" \
  io.hass.description="Prometheus server (official image) for Home Assistant" \
  io.hass.type="addon" \
  io.hass.version="0.1.1"

# Starte Prometheus explizit mit der HA-Config
# PROM_EXTRA_ARGS erlaubt dir später Flags aus environment zu ergänzen
CMD ["/bin/sh","-lc","exec /bin/prometheus \
  --config.file=/config/prometheus/prometheus.yml \
  --storage.tsdb.path=/data/prometheus \
  --web.listen-address=:9090 ${PROM_EXTRA_ARGS}"]

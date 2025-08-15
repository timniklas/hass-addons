FROM docker.io/prom/prometheus:latest

# Wichtig: als root laufen, damit wir /data anlegen können
USER root

LABEL \
  io.hass.name="Prometheus" \
  io.hass.description="Prometheus server (official image) for Home Assistant" \
  io.hass.type="addon" \
  io.hass.version="0.1.5"

# Wrapper-Script kopieren (Ausführbit nicht nötig)
COPY entrypoint.sh /usr/local/bin/ha-prom-entrypoint

# Shell startet das Script direkt (kein chmod erforderlich)
ENTRYPOINT ["/bin/sh", "/usr/local/bin/ha-prom-entrypoint"]

# Prometheus-Flags bleiben als CMD (ENTRYPOINT des Basisimages wird überschrieben)
CMD ["--config.file=/config/prometheus/prometheus.yml","--storage.tsdb.path=/data/prometheus","--web.listen-address=:9090"]

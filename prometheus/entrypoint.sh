#!/bin/sh
set -e

# TSDB-Verzeichnis sicherstellen
mkdir -p /data/prometheus

# Schreibrechte sicherstellen (falls Image standardmäßig 'nobody' nutzt)
# Wenn das nicht klappt (BusyBox/Permission), ist es trotzdem ok – wir starten als root.
chown -R 65534:65534 /data 2>/dev/null || true

# Prometheus starten (übernimmt die CMD-Argumente)
exec /bin/prometheus "$@"

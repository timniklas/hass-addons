#!/bin/sh
set -e

# Stelle sicher, dass das TSDB-Verzeichnis existiert und schreibbar ist
mkdir -p /data/prometheus

# Prometheus läuft im offiziellen Image als uid 65534 (nobody) – Rechte setzen
# (falls das Image bzw. Build das so nutzt; schadet aber nicht)
chown -R 65534:65534 /data

# Starte Prometheus mit den CMD-Argumenten
exec /bin/prometheus "$@"

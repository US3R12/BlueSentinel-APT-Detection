#!/bin/bash
# Sample script to ingest Suricata logs into ELK

LOG_DIR="/var/log/suricata/eve.json"
curl -H "Content-Type: application/json" -XPOST "http://localhost:9200/suricata/_doc" --data-binary "@$LOG_DIR"

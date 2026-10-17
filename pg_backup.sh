#!/bin/bash
set -euo pipefail
DIR=/var/backups/pg
cd "$DIR"
STAMP=$(date +%F_%H%M)
pg_dump -Fc labdb -f "$DIR/labdb_$STAMP.dump"
find "$DIR" -name 'labdb_*.dump' -mtime +7 -delete

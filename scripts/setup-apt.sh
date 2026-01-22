#!/bin/sh
DEBIAN_SUITE=$1
SUITE=$2

# Configuration Parrot repo (NO Mobian)
cat > /etc/apt/sources.list.d/parrot.list << EOF
deb https://deb.parrot.sh/parrot ${SUITE} main contrib non-free non-free-firmware
EOF

# Priority Parrot
cat > /etc/apt/preferences.d/00-parrot-priority << EOF
Package: *
Pin: release o=Parrot
Pin-Priority: 700
EOF

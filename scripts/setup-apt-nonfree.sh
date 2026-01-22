#!/bin/sh
NONFREE=$1

if [ "${NONFREE}" != "true" ]; then
    exit 0
fi

# Only Parrot (NO Mobian)
sed -i 's/main$/main contrib non-free non-free-firmware/g' /etc/apt/sources.list.d/parrot.list

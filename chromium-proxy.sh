#!/bin/bash
chromium_config="/etc/chromium/default"
if [ "$EUID" -ne 0 ]
  then echo "ಠ_ಠ рутом будь!"
  exit
fi
if grep -Fq 'CHROMIUM_FLAGS="-proxy-server=proxy_server:port"' $chromium_config
then
sed -i '/^CHROMIUM_FLAGS=\"-proxy-server/d' $chromium_config
echo "ʕ •̀ o •́ ʔ"
else
echo 'CHROMIUM_FLAGS="-proxy-server=proxy:8080"' >> $chromium_config
echo "ʕ ᵔᴥᵔ ʔ"
fi
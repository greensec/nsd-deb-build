#!/bin/sh
# To add this repository please do:

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

${SUDO} apt-get update
${SUDO} apt-get -y install lsb-release ca-certificates wget
${SUDO} wget -O /usr/share/keyrings/greensec.github.io-nsd-debian.key https://greensec.github.io/nsd-debian/public.key
echo "deb [signed-by=/usr/share/keyrings/greensec.github.io-nsd-debian.key] https://greensec.github.io/nsd-debian/repo $(lsb_release -sc) main" | ${SUDO} tee /etc/apt/sources.list.d/nsd-debian.list
${SUDO} apt-get update

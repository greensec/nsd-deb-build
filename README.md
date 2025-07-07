# NSD Debian Packages

This repository contains the packaging configuration for building Debian packages of NSD (Name Server Daemon). NSD is an authoritative DNS name server with a focus on speed, security, and reliability.

## Repository Information

Pre-built packages are available at: https://greensec.github.io/nsd-deb-build/

## Supported Debian/Ubuntu Versions

### Debian
- buster (10)
- bullseye (11)
- bookworm (12)
- sid (unstable)

### Ubuntu
- jammy (22.04 LTS)
- noble (24.04 LTS)

### Automated Builds

This repository uses GitHub Actions to automatically build packages for all supported distributions.

### How to add this repository:

#### Automatically via script
```bash
wget -O- https://greensec.github.io/nsd-deb-build/add-repository.sh | bash
apt-get install nsd
```

#### Manually
```bash
apt-get install wget lsb-release ca-certificates
wget -O /usr/share/keyrings/greensec.github.io-nsd-deb-build.key https://greensec.github.io/nsd-deb-build/public.key
echo "deb [signed-by=/usr/share/keyrings/greensec.github.io-nsd-deb-build.key] https://greensec.github.io/nsd-deb-build/repo $(lsb_release -sc) main" > /etc/apt/sources.list.d/nsd-deb-build.list
apt-get update && apt-get install nsd
```

## Acknowledgements

This package is based on the work of the NSD developers and the Debian DNS team.

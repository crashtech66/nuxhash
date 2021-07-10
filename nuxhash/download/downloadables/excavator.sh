#!/bin/sh

  VERSION='1.7.1d'
  SHA256='2cf36f8dfa54bcbc4658e4205dd63db35cf0f1c228e07c8818269825a75699bc'
case "$1" in
verify)
        [ -f excavator ] && [ `sha256sum excavator | awk '{print $1}'` = "$SHA256" ]
        exit $?
        ;;
download)
     #   curl -L -O "https://github.com/nicehash/excavator/releases/download/v${VERSION}/excavator_${VERSION}_amd64.deb"
         curl -L -O "https://github.com/nicehash/excavator/archive/refs/tags/v${VERSION}.tar.gz"
     #  https://github.com/nicehash/excavator/archive/refs/tags/v1.7.1d.tar.gz
     #  ar x "excavator_${VERSION}_amd64.deb" data.tar.xz
     #  tar xf data.tar.xz --strip-components 4 ./opt/excavator/bin/excavator
        tar xf v${VERSION}.tar.gz --strip-components 4 ./opt/excavator/bin/excavator
     #  rm -f "excavator_${VERSION}_amd64.deb" data.tar.xz
        rm -f "v${VERSION}.tar.gz"
        exit 0
        ;;
esac


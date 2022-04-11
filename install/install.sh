#!/bin/sh

echo Checking for PDP-10 emulator:
type pdp10-ki || echo "Emulator not found."

(cd tools && make -k)
mkdir -p media
. ./media.sh
make_installation_media

pdp10-ki simh/install.do

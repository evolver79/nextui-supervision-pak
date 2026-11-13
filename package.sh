#!/bin/sh
# Builds dist/SUPERVISION.pak.zip with the pak's files at the top of the zip (the layout Pak Store expects).
# For a manual install, unzip it into a new folder: SD card Emus/tg5040/SUPERVISION.pak/.
set -e
cd "$(dirname "$0")"
[ -f SUPERVISION.pak/potator_libretro.so ] || ./fetch-core.sh
cp LICENSE-potator SUPERVISION.pak/
mkdir -p dist
rm -f dist/SUPERVISION.pak.zip
(cd SUPERVISION.pak && zip -q -X ../dist/SUPERVISION.pak.zip launch.sh default.cfg potator_libretro.so LICENSE-potator)
rm SUPERVISION.pak/LICENSE-potator
unzip -l dist/SUPERVISION.pak.zip

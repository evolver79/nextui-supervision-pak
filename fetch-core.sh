#!/bin/sh
# Updates the potator libretro core (64-bit ARM Linux, libretro buildbot nightly) in SUPERVISION.pak/.
# The core is committed, so releases ship the build that was tested; run this only to move to a newer one,
# then test it on a device before tagging.
set -e
cd "$(dirname "$0")"
tmp=$(mktemp -d)
curl -fsSL -o "$tmp/core.zip" https://buildbot.libretro.com/nightly/linux/aarch64/latest/potator_libretro.so.zip
unzip -oq "$tmp/core.zip" -d "$tmp"
mv "$tmp/potator_libretro.so" SUPERVISION.pak/
rm -rf "$tmp"
file SUPERVISION.pak/potator_libretro.so
shasum -a 256 SUPERVISION.pak/potator_libretro.so

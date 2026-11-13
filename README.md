# Supervision pak for NextUI

Adds the Watara Supervision (1992, also sold as the Quickshot Supervision) to
[NextUI](https://github.com/LoveRetro/NextUI), using the libretro [Potator](https://github.com/libretro/potator) core.
No BIOS needed.

Tested on the TrimUI Brick (`tg5040`).

## Install

**Pak Store:** look for Supervision under Emulators.

**By hand:** download `SUPERVISION.pak.zip` from [Releases](../../releases) and unzip it into a new folder on the SD card,
`Emus/tg5040/SUPERVISION.pak/`.

## Games

Put games (`.bin` or `.sv`) in `Roms/Supervision (SUPERVISION)/`. The folder name can be anything, but the tag in
brackets must be `SUPERVISION`. Saves go to `Saves/SUPERVISION/`.

## Controls

Same as the Game Boy: D-pad, A, B, Select, Start. Change them in the in-game menu, where you can also pick a screen
palette (greyscale by default, plus amber, green, Game Boy and more) and LCD ghosting.

## Building

```sh
./package.sh       # writes dist/SUPERVISION.pak.zip
./fetch-core.sh    # only to move to a newer core build; test it on a device before releasing
```

The core in `SUPERVISION.pak/` is the libretro buildbot's 64-bit ARM Linux nightly from 13 Nov 2026 (needs glibc 2.17+).

Pushing a tag `vX.Y.Z` that matches `version` in `pak.json` makes a GitHub release with the zip attached.

## Made with an AI assistant

This pak was built with the help of an LLM (Claude, by Anthropic): the scripts, configuration and documentation were
written in conversation with it, and tested on a real TrimUI Brick.

## License

The pak's own files are MIT ([LICENSE](LICENSE)). Potator is public domain ([LICENSE-potator](LICENSE-potator)); the
release zip includes its notice.

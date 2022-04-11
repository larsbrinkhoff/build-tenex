#!/bin/sh

# Tools from https://github.com/larsbrinkhoff/pdp10-its-disassembler
TOOLS=$PWD/tools

make_dectape() {
    file="$1"; shift
    "$TOOLS"/tendmp -T -L "TENEX" -b boot/dtboot.bin -c "$file" "$@"
}

make_magtape() {
    file="$1"; shift
    "$TOOLS"/cat36 -B512 -Wascii -Xtape "$@" > "$file"
}

make_dumper() {
    file="$1"; shift
    "$TOOLS"/dumper -cf "$file" "$@"
}

# Outputs.
DECTAPE=media/syslod.dta
MAGTAPE=media/syslod.tap
SYSTEM_TAPE=media/system.tap
SOURCES_TAPE=media/sources.tap

# Inputs.
MONITOR="boot/tenex.swp boot/tenex.sav"
DLUSER="subsys/dluser.sav boot/users.txt"
DUMPER="subsys/dumper.sav"
SYSTEM="system/* subsys/*"
SOURCES="monitor/* sources/* exec/*"

make_dectape "$DECTAPE" $MONITOR $DLUSER $DUMPER
make_magtape "$MAGTAPE" $DLUSER $DUMPER
make_dumper  "$SYSTEM_TAPE" $SYSTEM
make_dumper  "$SOURCES_TAPE" $SOURCES

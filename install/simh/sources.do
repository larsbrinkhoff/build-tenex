attach -r mta0 media/sources.tap

expect "@" send "ENABLE\r"
expect "!" send "DUMPER\r"
expect "DUMP, LOAD, CHECK, OR SINGLE?" send "L"
expect "SPECIFIC USERS?" send "N"
expect "INTO SAME DIRECTORY(S)?" send "Y"
expect "TYPE MAG TAPE UNIT NUMBER:" send "0"
expect "TYPE N IF NO MORE:" send "N"
expect "!" send "ENABLE\r"

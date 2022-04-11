attach -r dt0  media/syslod.dta
attach -r mta0 media/system.tap

expect "\n" sleep 1; send "SYSLOD\033G"; continue
expect "CLOBBER THE DISC BY RE-INITIALIZING?" send "Y"; continue
expect "\n." send "I"; continue
expect "NIT BIT TABLE" send "."; continue
expect "READ BADSPOTS FROM FILE:" send "TTY:\r"; continue
expect "[Confirm]" send "\r"

load -c -s boot/tenex.sav
go 100

expect "\n" send "\032"; continue
expect "\n." send "G"; continue
;expect "ET FILE" send "DTA0:DLUSER.SAV\r"; continue
;expect "[Confirm]" send "\r"; continue
;expect "\n." send "S"; continue
;expect "TART" send "."; continue
;expect "DUMP OR LOAD?" send "L"; continue
;expect "FILE:" send "DTA0:USERS.TXT\r"; continue
;expect "[Old file]" send "\r"; continue
;expect "\n." send "G"
;continue

;expect "ET FILE" send "DTA0:DUMPER.SAV\r"; continue
;expect "[Confirm]" send "\r"; continue
;expect "\n." send "S"; continue
;expect "TART" send "."; continue
;expect "DUMP, LOAD, CHECK, OR SINGLE?" send "L"; continue
;expect "SPECIFIC USERS?" send "N"; continue
;expect "INTO SAME DIRECTORY(S)?" send "Y"; continue
;expect "TYPE MAG TAPE UNIT NUMBER:" send "0"; continue
;expect "TYPE N IF NO MORE:" send "N"; continue
;expect "\n." send "G"
;continue

expect "ET FILE" send "DTA0:EXEC.SAV\r"; continue
expect "[Confirm]" send "\r"; continue
expect "\n." send "S"; continue
expect "TART" send "."; continue
expect "MM/DD/YY HH:MM --" send "%DATE_MM%/%DATE_DD%/%DATE_YYYY% %TIME_HH%:%TIME_MM%:%TIME_SS%\r"; continue
expect "\n@" send "ENABLE\r"; continue
expect "\n!" send "MOUNT DTA0:\r"; continue
expect "\n!" send "GET DTA0:EXEC.SAV\r"; continue
expect "\n!" send "SSAVE 0 777 EXEC.SAV\r"; continue
expect "[New file]" send "\r"; continue
expect "\n!" send "RUN DTA0:DLUSER.SAV\r"; continue
expect "DUMP OR LOAD?" send "L"; continue
expect "FILE:" send "DTA0:USERS.TXT\r"; continue
expect "[Old file]" send "\r"; continue
expect "DONE."
continue

expect "\n!" send "GET DTA0:DUMPER.SAV\r"; continue
expect "\n!" send "SSAVE 0 777 <SUBSYS>DUMPER.SAV\r"; continue
expect "[New file]" send "\r"
continue

;attach mta0 install.tap
;attach mta1 sources.tap

send delay=10M
;expect "\n" sleep 2; send "kimuom/.\033b syslod\033g"; continue
expect "\n" sleep 2; send "syslod\033g"; continue
go 100

;expect "\n." send "I"
;expect "NIT BIT TABLE" send "."
;expect "\n." send "G"
;expect "ET FILE" send "MTA0:"
;expect "\n." send "S"
;expect "TART" send "."
;expect "DUMP OR LOAD?" send "L"
;expect "FILE:" send "MTA0:"
;...
;expect "DONE." send "G"
;expect "ET FILE" send "MTA0:"
;expect "\n." send "S"
;expect "TART" send "."
;expect "DUMP, LOAD, CHECK, OR SINGLE?" send "L"
;expect "SPECIFIC USERS?" send "N"
;expect "INTO SAME DIRECTORY(S)?" send "Y"
;...
;expect "TYPE N IF NO MORE:" send "N"
;expect "\n." send "E"
;expect "@" send "..."
;...
;do halt.do

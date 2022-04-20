do install/simh/hardware.do

set cpu history=10000
set debug stdout
;set dt debug=dataio
;set dt debug
;set dt nodebug=coni
;set dpa debug
;set dpa nodebug=coni;data
;set dk debug
;set cpu debug
;set ddc debug

attach -r dt0  install/media/syslod.dta
attach -r mta0 install/media/system.tap
load -c -s install/boot/tenex.sav
go 100

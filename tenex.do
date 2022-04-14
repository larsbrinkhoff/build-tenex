do install/simh/hardware.do

set cpu history=10000
set debug stdout
;set dt debug
;set dt nodebug=coni
;set dpa debug
;set dpa nodebug=coni;data
;set dk debug
;set cpu debug
set ddc debug

;break 114010 piapr
;getswm		OK
;break 117755
;wrmon		OK
;break 137726
;wrmon+20
;break 137746
;kimuom
;116343

attach -r dt0 tenex.dta
load -c -s tenex.sav
;do syslod.do
go 100

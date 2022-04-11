set console wru=034

set cpu 512k df10
set ptp enabled
set ptr enabled
set dt  enabled
set mta enabled type=a
set dpa enabled rp03
set ddc enabled
set dk  enabled
set dc  enabled
set imp enabled bbn
set lpt enabled
set tym enabled

set dpb disabled
set rpa disabled
set rpb disabled
set tua disabled
set fha disabled

attach lpt printer.txt
attach -u dc 12345 speed=2400
attach -u tym 12346

attach ddc0 media/tenex0.ddc
attach ddc1 media/tenex1.ddc
attach dpa0 media/tenex0.rp03
attach dpa1 media/tenex1.rp03
attach dpa2 media/tenex2.rp03
attach dpa3 media/tenex3.rp03
attach dpa4 media/tenex4.rp03
attach dpa5 media/tenex5.rp03
attach dpa6 media/tenex6.rp03

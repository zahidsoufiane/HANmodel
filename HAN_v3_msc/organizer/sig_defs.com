clear-test-values boolean -
define-test-value boolean true
define-test-value boolean false
clear-test-values bit -
clear-test-values bit_string -
clear-test-values character -
clear-test-values charstring -
clear-test-values duration -
define-test-value duration 10.0000
define-test-value duration 50.0000
define-test-value duration 300.0000
define-test-value duration 360.0000
clear-test-values IA5String -
clear-test-values integer -
define-test-value integer 1
define-test-value integer 2
define-test-value integer 3
define-test-value integer 4
define-test-value integer 5
define-test-value integer 6
define-test-value integer 7
define-test-value integer 8
define-test-value integer 9
define-test-value integer 10
clear-test-values natural -
clear-test-values null -
clear-test-values NumericString -
clear-test-values object_identifier -
clear-test-values octet -
clear-test-values octet_string -
clear-test-values pid -
clear-test-values PrintableString -
clear-test-values real -
define-test-value real 0.0000
define-test-value real 0.5000
define-test-value real 1.0000
define-test-value real 1.2000
define-test-value real 1.5000
define-test-value real 1.8000
define-test-value real 3.5000
define-test-value real 4.1000
define-test-value real 13.5000
define-test-value real 20.0000
define-test-value real 25.0000
define-test-value real 45.0000
define-test-value real 50.0000
define-test-value real 90.0000
define-test-value real 100.0000
define-test-value real 360.0000
define-test-value real 500.0000
define-test-value real 1000.0000
define-test-value real 5000.0000
define-test-value real 10000.0000
define-test-value real 132000.0000
clear-test-values time -
clear-test-values VisibleString -
clear-test-values AppType -
define-test-value AppType CTRL
define-test-value AppType CRITICAL
define-test-value AppType NULL
clear-test-values AppArray -
clear-test-values TypeArray -
clear-test-values ConsArray -
clear-test-values PryArray -
clear-test-values SetID -
clear-test-values AppID -
clear-test-values DevPriority -
define-test-value DevPriority 0
define-test-value DevPriority 1
define-test-value DevPriority 2
clear-test-values Charge -
clear-test-values Consumption -
clear-test-values FULL -
clear-test-values Price -
clear-test-values Storage -
clear-test-values BidID -
clear-test-values RTPID -

clear-signal-definitions RenewableE
define-signal RenewableE 10000.0000 10.0000
define-signal RenewableE 500.0000 10.0000
define-signal RenewableE 100.0000 10.0000

clear-signal-definitions ConnectEV
define-signal ConnectEV 99.9900 500.0000 132000.0000
define-signal ConnectEV 99.0000 1000.0000 132000.0000
define-signal ConnectEV 100.0000 500.0000 132000.0000

clear-signal-definitions DisconnectEV
define-signal DisconnectEV 

clear-signal-definitions PowerON
define-signal PowerON 1 CTRL 1 4.1000
define-signal PowerON 2 CTRL 1 0.5000
define-signal PowerON 3 CTRL 2 20.0000
define-signal PowerON 4 CTRL 2 45.0000
define-signal PowerON 5 CTRL 2 50.0000
define-signal PowerON 6 CTRL 2 13.5000
define-signal PowerON 7 CTRL 2 25.0000
define-signal PowerON 8 CRITICAL 0 3.5000
define-signal PowerON 9 CRITICAL 0 25.000
define-signal PowerON 10 CRITICAL 0 1.5000


clear-signal-definitions PowerOFF
define-signal PowerOFF 1
define-signal PowerOFF 8
define-signal PowerOFF 9

clear-signal-definitions getMetering
define-signal getMetering 

clear-signal-definitions Bid
define-signal Bid 1 1.0000 1.2000
define-signal Bid 2 1000.0000 1.8000
define-signal Bid 3 200000.0000 1.8000
define-signal Bid 4 2000000.0000 1.8000

clear-signal-definitions RTP
define-signal RTP 1 1.0000 10.0000 1.5000
define-signal RTP 2 100.0000 10.0000 1.5000
define-signal RTP 3 1000.0000 10.0000 1.5000

clear-signal-definitions UseStorage
define-signal UseStorage true
define-signal UseStorage false

clear-signal-definitions ChargeCar
define-signal ChargeCar 

clear-signal-definitions ResetCost
define-signal ResetCost 

clear-signal-definitions SaleEnergy
define-signal SaleEnergy true 1.5000
define-signal SaleEnergy false 0.0000

define-bit-state-hash-table-size 1000000000
define-bit-state-depth 150000
Define-Max-Input-Port-Length 3
Define-Report-Log MaxQueueLength Off
Define-Max-State-Size 500000

Define-Max-Instance 10
Define-Max-Transition-Length 1000

Define-Random-Walk-Repetitions 10000
Define-Random-Walk-Depth 5000

channel-disable C14


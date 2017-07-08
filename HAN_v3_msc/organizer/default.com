clear-test-values boolean -
define-test-value boolean true
define-test-value boolean false
clear-test-values bit -
clear-test-values bit_string -
clear-test-values character -
clear-test-values charstring -
clear-test-values duration -
define-test-value duration 0.0000
clear-test-values IA5String -
clear-test-values integer -
define-test-value integer 0
define-test-value integer -55
define-test-value integer 55
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
define-test-value real -55.0000
define-test-value real 55.0000
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
define-signal RenewableE 0.0000 0.0000
define-signal RenewableE 55.0000 0.0000

clear-signal-definitions ConnectEV
define-signal ConnectEV 0.0000 0.0000 0.0000
define-signal ConnectEV 0.0000 0.0000 55.0000
define-signal ConnectEV 0.0000 55.0000 0.0000
define-signal ConnectEV 0.0000 55.0000 55.0000
define-signal ConnectEV 55.0000 0.0000 0.0000
define-signal ConnectEV 55.0000 0.0000 55.0000
define-signal ConnectEV 55.0000 55.0000 0.0000
define-signal ConnectEV 55.0000 55.0000 55.0000

clear-signal-definitions DisconnectEV
define-signal DisconnectEV 

clear-signal-definitions PowerON
define-signal PowerON 55 NULL 1 55.0000
define-signal PowerON 55 CRITICAL 0 0.0000
define-signal PowerON 55 NULL 0 0.0000
define-signal PowerON 55 CTRL 2 0.0000
define-signal PowerON 55 NULL 0 55.0000
define-signal PowerON 55 NULL 1 55.0000
define-signal PowerON 55 NULL 0 55.0000
define-signal PowerON 55 CTRL 1 0.0000
define-signal PowerON 55 CTRL 0 55.0000
define-signal PowerON 55 NULL 0 0.0000

clear-signal-definitions PowerOFF
define-signal PowerOFF 55

clear-signal-definitions getMetering
define-signal getMetering 

clear-signal-definitions Bid
define-signal Bid 55 0.0000 0.0000
define-signal Bid 55 0.0000 55.0000
define-signal Bid 55 55.0000 0.0000
define-signal Bid 55 55.0000 55.0000

clear-signal-definitions RTP
define-signal RTP 0 0.0000 0.0000 0.0000
define-signal RTP 0 0.0000 0.0000 55.0000
define-signal RTP 0 55.0000 0.0000 0.0000
define-signal RTP 0 55.0000 0.0000 55.0000
define-signal RTP 55 0.0000 0.0000 0.0000
define-signal RTP 55 0.0000 0.0000 55.0000
define-signal RTP 55 55.0000 0.0000 0.0000
define-signal RTP 55 55.0000 0.0000 55.0000

clear-signal-definitions UseStorage
define-signal UseStorage true
define-signal UseStorage false
clear-signal-definitions ChargeCar
define-signal ChargeCar 
clear-signal-definitions ResetCost
define-signal ResetCost 
clear-signal-definitions SaleEnergy
define-signal SaleEnergy true 0.0000
define-signal SaleEnergy true 55.0000
define-signal SaleEnergy false 0.0000
define-signal SaleEnergy false 55.0000

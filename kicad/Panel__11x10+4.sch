EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "WordClock LED Panel 11x10 + 4 minutes"
Date "2019-10-28"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C CM1
U 1 1 5DBA5AEF
P 1000 7200
F 0 "CM1" H 1115 7246 50  0000 L CNN
F 1 "100n" H 1115 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 7050 50  0001 C CNN
F 3 "~" H 1000 7200 50  0001 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C CM2
U 1 1 5DCEDB8B
P 1450 7200
F 0 "CM2" H 1565 7246 50  0000 L CNN
F 1 "100n" H 1565 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 7050 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C CM3
U 1 1 5DCEDF66
P 1900 7200
F 0 "CM3" H 2015 7246 50  0000 L CNN
F 1 "100n" H 2015 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 7050 50  0001 C CNN
F 3 "~" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C CM4
U 1 1 5DCEE3CB
P 2400 7200
F 0 "CM4" H 2515 7246 50  0000 L CNN
F 1 "100n" H 2515 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 7050 50  0001 C CNN
F 3 "~" H 2400 7200 50  0001 C CNN
	1    2400 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7350 1450 7350
Connection ~ 1450 7350
Wire Wire Line
	1450 7350 1900 7350
Connection ~ 1900 7350
Wire Wire Line
	1900 7350 2400 7350
Wire Wire Line
	1000 7050 1450 7050
Connection ~ 1450 7050
Wire Wire Line
	1450 7050 1900 7050
Connection ~ 1900 7050
Wire Wire Line
	1900 7050 2400 7050
$Comp
L power:VBUS #PWR04
U 1 1 5DCEEB71
P 1000 7000
F 0 "#PWR04" H 1000 6850 50  0001 C CNN
F 1 "VBUS" H 1015 7173 50  0000 C CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "" H 1000 7000 50  0001 C CNN
	1    1000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DCEF3E2
P 1000 7400
F 0 "#PWR05" H 1000 7150 50  0001 C CNN
F 1 "GND" H 1005 7227 50  0000 C CNN
F 2 "" H 1000 7400 50  0001 C CNN
F 3 "" H 1000 7400 50  0001 C CNN
	1    1000 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7400 1000 7350
Connection ~ 1000 7350
Wire Wire Line
	1000 7050 1000 7000
Connection ~ 1000 7050
$Comp
L Device:C CD1
U 1 1 5DCF1937
P 1000 6300
F 0 "CD1" H 1115 6346 50  0000 L CNN
F 1 "100n" H 1115 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 6150 50  0001 C CNN
F 3 "~" H 1000 6300 50  0001 C CNN
	1    1000 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD3
U 1 1 5DCF1941
P 1450 6300
F 0 "CD3" H 1565 6346 50  0000 L CNN
F 1 "100n" H 1565 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 6150 50  0001 C CNN
F 3 "~" H 1450 6300 50  0001 C CNN
	1    1450 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD5
U 1 1 5DCF194B
P 1900 6300
F 0 "CD5" H 2015 6346 50  0000 L CNN
F 1 "100n" H 2015 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 6150 50  0001 C CNN
F 3 "~" H 1900 6300 50  0001 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD7
U 1 1 5DCF1955
P 2400 6300
F 0 "CD7" H 2515 6346 50  0000 L CNN
F 1 "100n" H 2515 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 6150 50  0001 C CNN
F 3 "~" H 2400 6300 50  0001 C CNN
	1    2400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6450 1450 6450
Connection ~ 1450 6450
Wire Wire Line
	1450 6450 1900 6450
Connection ~ 1900 6450
Wire Wire Line
	1900 6450 2400 6450
Wire Wire Line
	1000 6150 1450 6150
Connection ~ 1450 6150
Wire Wire Line
	1450 6150 1900 6150
Connection ~ 1900 6150
Wire Wire Line
	1900 6150 2400 6150
$Comp
L power:VBUS #PWR0123
U 1 1 5DCF1969
P 1000 6100
F 0 "#PWR0123" H 1000 5950 50  0001 C CNN
F 1 "VBUS" H 1015 6273 50  0000 C CNN
F 2 "" H 1000 6100 50  0001 C CNN
F 3 "" H 1000 6100 50  0001 C CNN
	1    1000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DCF1973
P 1000 6500
F 0 "#PWR03" H 1000 6250 50  0001 C CNN
F 1 "GND" H 1005 6327 50  0000 C CNN
F 2 "" H 1000 6500 50  0001 C CNN
F 3 "" H 1000 6500 50  0001 C CNN
	1    1000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6500 1000 6450
Connection ~ 1000 6450
Wire Wire Line
	1000 6150 1000 6100
Connection ~ 1000 6150
$Comp
L Device:C CD11
U 1 1 5DCF68CA
P 3300 6300
F 0 "CD11" H 3415 6346 50  0000 L CNN
F 1 "100n" H 3415 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 6150 50  0001 C CNN
F 3 "~" H 3300 6300 50  0001 C CNN
	1    3300 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD13
U 1 1 5DCF68D4
P 3750 6300
F 0 "CD13" H 3865 6346 50  0000 L CNN
F 1 "100n" H 3865 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3788 6150 50  0001 C CNN
F 3 "~" H 3750 6300 50  0001 C CNN
	1    3750 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD15
U 1 1 5DCF68DE
P 4250 6300
F 0 "CD15" H 4365 6346 50  0000 L CNN
F 1 "100n" H 4365 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 6150 50  0001 C CNN
F 3 "~" H 4250 6300 50  0001 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6450 3300 6450
Connection ~ 3300 6450
Wire Wire Line
	3300 6450 3750 6450
Connection ~ 3750 6450
Wire Wire Line
	3750 6450 4250 6450
Wire Wire Line
	2850 6150 3300 6150
Connection ~ 3300 6150
Wire Wire Line
	3300 6150 3750 6150
Connection ~ 3750 6150
Wire Wire Line
	3750 6150 4250 6150
$Comp
L Device:C CD9
U 1 1 5DCF68C0
P 2850 6300
F 0 "CD9" H 2965 6346 50  0000 L CNN
F 1 "100n" H 2965 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 6150 50  0001 C CNN
F 3 "~" H 2850 6300 50  0001 C CNN
	1    2850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6150 2850 6150
Connection ~ 2400 6150
Connection ~ 2850 6150
Wire Wire Line
	2850 6450 2400 6450
Connection ~ 2850 6450
Connection ~ 2400 6450
$Comp
L Device:C CD17
U 1 1 5DCFAD84
P 4700 6300
F 0 "CD17" H 4815 6346 50  0000 L CNN
F 1 "100n" H 4815 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 6150 50  0001 C CNN
F 3 "~" H 4700 6300 50  0001 C CNN
	1    4700 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD19
U 1 1 5DCFAD8E
P 5150 6300
F 0 "CD19" H 5265 6346 50  0000 L CNN
F 1 "100n" H 5265 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5188 6150 50  0001 C CNN
F 3 "~" H 5150 6300 50  0001 C CNN
	1    5150 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD21
U 1 1 5DCFAD98
P 5650 6300
F 0 "CD21" H 5765 6346 50  0000 L CNN
F 1 "100n" H 5765 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5688 6150 50  0001 C CNN
F 3 "~" H 5650 6300 50  0001 C CNN
	1    5650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6450 4700 6450
Connection ~ 4700 6450
Wire Wire Line
	4700 6450 5150 6450
Connection ~ 5150 6450
Wire Wire Line
	5150 6450 5650 6450
Wire Wire Line
	4250 6150 4700 6150
Connection ~ 4700 6150
Wire Wire Line
	4700 6150 5150 6150
Connection ~ 5150 6150
Wire Wire Line
	5150 6150 5650 6150
Connection ~ 4250 6150
Connection ~ 4250 6450
$Comp
L Device:C CD0
U 1 1 5DD03ACA
P 1000 5400
F 0 "CD0" H 1115 5446 50  0000 L CNN
F 1 "100n" H 1115 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 5250 50  0001 C CNN
F 3 "~" H 1000 5400 50  0001 C CNN
	1    1000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD2
U 1 1 5DD03AD4
P 1450 5400
F 0 "CD2" H 1565 5446 50  0000 L CNN
F 1 "100n" H 1565 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 5250 50  0001 C CNN
F 3 "~" H 1450 5400 50  0001 C CNN
	1    1450 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD4
U 1 1 5DD03ADE
P 1900 5400
F 0 "CD4" H 2015 5446 50  0000 L CNN
F 1 "100n" H 2015 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 5250 50  0001 C CNN
F 3 "~" H 1900 5400 50  0001 C CNN
	1    1900 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD6
U 1 1 5DD03AE8
P 2400 5400
F 0 "CD6" H 2515 5446 50  0000 L CNN
F 1 "100n" H 2515 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 5250 50  0001 C CNN
F 3 "~" H 2400 5400 50  0001 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5550 1450 5550
Connection ~ 1450 5550
Wire Wire Line
	1450 5550 1900 5550
Connection ~ 1900 5550
Wire Wire Line
	1900 5550 2400 5550
Wire Wire Line
	1000 5250 1450 5250
Connection ~ 1450 5250
Wire Wire Line
	1450 5250 1900 5250
Connection ~ 1900 5250
Wire Wire Line
	1900 5250 2400 5250
$Comp
L power:VBUS #PWR00
U 1 1 5DD03AFC
P 1000 5200
F 0 "#PWR00" H 1000 5050 50  0001 C CNN
F 1 "VBUS" H 1015 5373 50  0000 C CNN
F 2 "" H 1000 5200 50  0001 C CNN
F 3 "" H 1000 5200 50  0001 C CNN
	1    1000 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5DD03B06
P 1000 5600
F 0 "#PWR0124" H 1000 5350 50  0001 C CNN
F 1 "GND" H 1005 5427 50  0000 C CNN
F 2 "" H 1000 5600 50  0001 C CNN
F 3 "" H 1000 5600 50  0001 C CNN
	1    1000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5600 1000 5550
Connection ~ 1000 5550
Wire Wire Line
	1000 5250 1000 5200
Connection ~ 1000 5250
$Comp
L Device:C CD10
U 1 1 5DD03B14
P 3300 5400
F 0 "CD10" H 3415 5446 50  0000 L CNN
F 1 "100n" H 3415 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 5250 50  0001 C CNN
F 3 "~" H 3300 5400 50  0001 C CNN
	1    3300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD12
U 1 1 5DD03B1E
P 3750 5400
F 0 "CD12" H 3865 5446 50  0000 L CNN
F 1 "100n" H 3865 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3788 5250 50  0001 C CNN
F 3 "~" H 3750 5400 50  0001 C CNN
	1    3750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD14
U 1 1 5DD03B28
P 4250 5400
F 0 "CD14" H 4365 5446 50  0000 L CNN
F 1 "100n" H 4365 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 5250 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5550 3300 5550
Connection ~ 3300 5550
Wire Wire Line
	3300 5550 3750 5550
Connection ~ 3750 5550
Wire Wire Line
	3750 5550 4250 5550
Wire Wire Line
	2850 5250 3300 5250
Connection ~ 3300 5250
Wire Wire Line
	3300 5250 3750 5250
Connection ~ 3750 5250
Wire Wire Line
	3750 5250 4250 5250
$Comp
L Device:C CD8
U 1 1 5DD03B3C
P 2850 5400
F 0 "CD8" H 2965 5446 50  0000 L CNN
F 1 "100n" H 2965 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 5250 50  0001 C CNN
F 3 "~" H 2850 5400 50  0001 C CNN
	1    2850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5250 2850 5250
Connection ~ 2400 5250
Connection ~ 2850 5250
Wire Wire Line
	2850 5550 2400 5550
Connection ~ 2850 5550
Connection ~ 2400 5550
$Comp
L Device:C CD16
U 1 1 5DD03B4C
P 4700 5400
F 0 "CD16" H 4815 5446 50  0000 L CNN
F 1 "100n" H 4815 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 5250 50  0001 C CNN
F 3 "~" H 4700 5400 50  0001 C CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD18
U 1 1 5DD03B56
P 5150 5400
F 0 "CD18" H 5265 5446 50  0000 L CNN
F 1 "100n" H 5265 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5188 5250 50  0001 C CNN
F 3 "~" H 5150 5400 50  0001 C CNN
	1    5150 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C CD20
U 1 1 5DD03B60
P 5650 5400
F 0 "CD20" H 5765 5446 50  0000 L CNN
F 1 "100n" H 5765 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5688 5250 50  0001 C CNN
F 3 "~" H 5650 5400 50  0001 C CNN
	1    5650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5550 4700 5550
Connection ~ 4700 5550
Wire Wire Line
	4700 5550 5150 5550
Connection ~ 5150 5550
Wire Wire Line
	5150 5550 5650 5550
Wire Wire Line
	4250 5250 4700 5250
Connection ~ 4700 5250
Wire Wire Line
	4700 5250 5150 5250
Connection ~ 5150 5250
Wire Wire Line
	5150 5250 5650 5250
Connection ~ 4250 5250
Connection ~ 4250 5550
$Comp
L LED:WS2812B LEDM1
U 1 1 5DBA50E5
P 1450 4350
F 0 "LEDM1" H 1100 4600 50  0000 L CNN
F 1 "WS2812B" H 1794 4305 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1500 4050 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1550 3975 50  0001 L TNN
	1    1450 4350
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LEDM2
U 1 1 5DD180F0
P 2150 4350
F 0 "LEDM2" H 1800 4600 50  0000 L CNN
F 1 "WS2812B" H 2494 4305 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2200 4050 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2250 3975 50  0001 L TNN
	1    2150 4350
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LEDM3
U 1 1 5DD18A3D
P 2850 4350
F 0 "LEDM3" H 2500 4600 50  0000 L CNN
F 1 "WS2812B" H 3194 4305 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2900 4050 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2950 3975 50  0001 L TNN
	1    2850 4350
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LEDM4
U 1 1 5DD192B9
P 3550 4350
F 0 "LEDM4" H 3200 4600 50  0000 L CNN
F 1 "WS2812B" H 3894 4305 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3600 4050 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3650 3975 50  0001 L TNN
	1    3550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4650 2150 4650
Connection ~ 2150 4650
Wire Wire Line
	2150 4650 2850 4650
Connection ~ 2850 4650
Wire Wire Line
	2850 4650 3550 4650
Wire Wire Line
	3550 4050 2850 4050
Connection ~ 2150 4050
Wire Wire Line
	2150 4050 1450 4050
Connection ~ 2850 4050
Wire Wire Line
	2850 4050 2150 4050
Wire Wire Line
	1750 4350 1850 4350
Wire Wire Line
	2450 4350 2550 4350
Wire Wire Line
	3150 4350 3250 4350
Text GLabel 1000 4350 0    50   Input ~ 0
RxD
Wire Wire Line
	1000 4350 1150 4350
$Comp
L power:VBUS #PWR08
U 1 1 5DD23C2E
P 1450 4000
F 0 "#PWR08" H 1450 3850 50  0001 C CNN
F 1 "VBUS" H 1465 4173 50  0000 C CNN
F 2 "" H 1450 4000 50  0001 C CNN
F 3 "" H 1450 4000 50  0001 C CNN
	1    1450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DD242B9
P 1450 4700
F 0 "#PWR09" H 1450 4450 50  0001 C CNN
F 1 "GND" H 1455 4527 50  0000 C CNN
F 2 "" H 1450 4700 50  0001 C CNN
F 3 "" H 1450 4700 50  0001 C CNN
	1    1450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4700 1450 4650
Connection ~ 1450 4650
Wire Wire Line
	1450 4000 1450 4050
Connection ~ 1450 4050
$Comp
L LED:WS2812B LED0
U 1 1 5DD304F5
P 1450 3050
F 0 "LED0" H 1150 3300 50  0000 L CNN
F 1 "WS2812B" H 1794 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1500 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1550 2675 50  0001 L TNN
	1    1450 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED1
U 1 1 5DD304FF
P 2150 3050
F 0 "LED1" H 1850 3300 50  0000 L CNN
F 1 "WS2812B" H 2494 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2200 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2250 2675 50  0001 L TNN
	1    2150 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED2
U 1 1 5DD30509
P 2850 3050
F 0 "LED2" H 2550 3300 50  0000 L CNN
F 1 "WS2812B" H 3194 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2900 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2950 2675 50  0001 L TNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED3
U 1 1 5DD30513
P 3550 3050
F 0 "LED3" H 3250 3300 50  0000 L CNN
F 1 "WS2812B" H 3894 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3600 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3650 2675 50  0001 L TNN
	1    3550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3350 2150 3350
Connection ~ 2150 3350
Wire Wire Line
	2150 3350 2850 3350
Connection ~ 2850 3350
Wire Wire Line
	2850 3350 3550 3350
Wire Wire Line
	3550 2750 2850 2750
Connection ~ 2150 2750
Wire Wire Line
	2150 2750 1450 2750
Connection ~ 2850 2750
Wire Wire Line
	2850 2750 2150 2750
Wire Wire Line
	1750 3050 1850 3050
Wire Wire Line
	2450 3050 2550 3050
Wire Wire Line
	3150 3050 3250 3050
Wire Wire Line
	1000 3050 1150 3050
$Comp
L power:VBUS #PWR06
U 1 1 5DD3052B
P 1450 2700
F 0 "#PWR06" H 1450 2550 50  0001 C CNN
F 1 "VBUS" H 1465 2873 50  0000 C CNN
F 2 "" H 1450 2700 50  0001 C CNN
F 3 "" H 1450 2700 50  0001 C CNN
	1    1450 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DD30535
P 1450 3400
F 0 "#PWR07" H 1450 3150 50  0001 C CNN
F 1 "GND" H 1455 3227 50  0000 C CNN
F 2 "" H 1450 3400 50  0001 C CNN
F 3 "" H 1450 3400 50  0001 C CNN
	1    1450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3400 1450 3350
Connection ~ 1450 3350
Wire Wire Line
	1450 2700 1450 2750
Connection ~ 1450 2750
$Comp
L LED:WS2812B LED4
U 1 1 5DD37656
P 4250 3050
F 0 "LED4" H 3950 3300 50  0000 L CNN
F 1 "WS2812B" H 4594 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4300 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4350 2675 50  0001 L TNN
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED5
U 1 1 5DD37660
P 4950 3050
F 0 "LED5" H 4650 3300 50  0000 L CNN
F 1 "WS2812B" H 5294 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5000 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5050 2675 50  0001 L TNN
	1    4950 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED6
U 1 1 5DD3766A
P 5650 3050
F 0 "LED6" H 5350 3300 50  0000 L CNN
F 1 "WS2812B" H 5994 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5700 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5750 2675 50  0001 L TNN
	1    5650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3350 4250 3350
Connection ~ 4250 3350
Wire Wire Line
	4250 3350 4950 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3350 5650 3350
Wire Wire Line
	5650 2750 4950 2750
Connection ~ 4250 2750
Wire Wire Line
	4250 2750 3550 2750
Connection ~ 4950 2750
Wire Wire Line
	4950 2750 4250 2750
Wire Wire Line
	3850 3050 3950 3050
Wire Wire Line
	4550 3050 4650 3050
Wire Wire Line
	5250 3050 5350 3050
Connection ~ 3550 2750
Connection ~ 3550 3350
$Comp
L LED:WS2812B LED7
U 1 1 5DD3D188
P 6350 3050
F 0 "LED7" H 6050 3300 50  0000 L CNN
F 1 "WS2812B" H 6694 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6400 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6450 2675 50  0001 L TNN
	1    6350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3350 6350 3350
Wire Wire Line
	6350 2750 5650 2750
Wire Wire Line
	5950 3050 6050 3050
$Comp
L LED:WS2812B LED8
U 1 1 5DD3D195
P 7050 3050
F 0 "LED8" H 6750 3300 50  0000 L CNN
F 1 "WS2812B" H 7394 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7100 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7150 2675 50  0001 L TNN
	1    7050 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED9
U 1 1 5DD3D19F
P 7750 3050
F 0 "LED9" H 7450 3300 50  0000 L CNN
F 1 "WS2812B" H 8094 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7800 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7850 2675 50  0001 L TNN
	1    7750 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED10
U 1 1 5DD3D1A9
P 8450 3050
F 0 "LED10" H 8150 3300 50  0000 L CNN
F 1 "WS2812B" H 8794 3005 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8500 2750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8550 2675 50  0001 L TNN
	1    8450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3350 7050 3350
Connection ~ 7050 3350
Wire Wire Line
	7050 3350 7750 3350
Connection ~ 7750 3350
Wire Wire Line
	7750 3350 8450 3350
Wire Wire Line
	8450 2750 7750 2750
Connection ~ 7050 2750
Wire Wire Line
	7050 2750 6350 2750
Connection ~ 7750 2750
Wire Wire Line
	7750 2750 7050 2750
Wire Wire Line
	6650 3050 6750 3050
Wire Wire Line
	7350 3050 7450 3050
Wire Wire Line
	8050 3050 8150 3050
Connection ~ 6350 2750
Connection ~ 6350 3350
Connection ~ 5650 2750
Connection ~ 5650 3350
Wire Wire Line
	4100 4350 3850 4350
$Comp
L LED:WS2812B LED11
U 1 1 5DD4FDCE
P 8450 1550
F 0 "LED11" H 8550 1800 50  0000 L CNN
F 1 "WS2812B" H 8794 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8500 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8550 1175 50  0001 L TNN
	1    8450 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED12
U 1 1 5DD4FDD8
P 7750 1550
F 0 "LED12" H 7850 1800 50  0000 L CNN
F 1 "WS2812B" H 8094 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7800 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7850 1175 50  0001 L TNN
	1    7750 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED13
U 1 1 5DD4FDE2
P 7050 1550
F 0 "LED13" H 7150 1800 50  0000 L CNN
F 1 "WS2812B" H 7394 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7100 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7150 1175 50  0001 L TNN
	1    7050 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED14
U 1 1 5DD4FDEC
P 6350 1550
F 0 "LED14" H 6450 1800 50  0000 L CNN
F 1 "WS2812B" H 6694 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6400 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6450 1175 50  0001 L TNN
	1    6350 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 1850 7750 1850
Connection ~ 7750 1850
Wire Wire Line
	7750 1850 7050 1850
Connection ~ 7050 1850
Wire Wire Line
	7050 1850 6350 1850
Wire Wire Line
	6350 1250 7050 1250
Connection ~ 7750 1250
Wire Wire Line
	7750 1250 8450 1250
Connection ~ 7050 1250
Wire Wire Line
	7050 1250 7750 1250
Wire Wire Line
	8150 1550 8050 1550
Wire Wire Line
	7450 1550 7350 1550
Wire Wire Line
	6750 1550 6650 1550
Wire Wire Line
	8900 1550 8750 1550
$Comp
L LED:WS2812B LED15
U 1 1 5DD4FE1C
P 5650 1550
F 0 "LED15" H 5750 1800 50  0000 L CNN
F 1 "WS2812B" H 5994 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5700 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5750 1175 50  0001 L TNN
	1    5650 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED16
U 1 1 5DD4FE26
P 4950 1550
F 0 "LED16" H 5050 1800 50  0000 L CNN
F 1 "WS2812B" H 5294 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5000 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5050 1175 50  0001 L TNN
	1    4950 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED17
U 1 1 5DD4FE30
P 4250 1550
F 0 "LED17" H 4350 1800 50  0000 L CNN
F 1 "WS2812B" H 4594 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4300 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4350 1175 50  0001 L TNN
	1    4250 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 1850 5650 1850
Connection ~ 5650 1850
Wire Wire Line
	5650 1850 4950 1850
Connection ~ 4950 1850
Wire Wire Line
	4950 1850 4250 1850
Wire Wire Line
	4250 1250 4950 1250
Connection ~ 5650 1250
Wire Wire Line
	5650 1250 6350 1250
Connection ~ 4950 1250
Wire Wire Line
	4950 1250 5650 1250
Wire Wire Line
	6050 1550 5950 1550
Wire Wire Line
	5350 1550 5250 1550
Wire Wire Line
	4650 1550 4550 1550
Connection ~ 6350 1250
Connection ~ 6350 1850
$Comp
L LED:WS2812B LED18
U 1 1 5DD4FE49
P 3550 1550
F 0 "LED18" H 3650 1800 50  0000 L CNN
F 1 "WS2812B" H 3894 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3600 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3650 1175 50  0001 L TNN
	1    3550 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1850 3550 1850
Wire Wire Line
	3550 1250 4250 1250
Wire Wire Line
	3950 1550 3850 1550
$Comp
L LED:WS2812B LED19
U 1 1 5DD4FE56
P 2850 1550
F 0 "LED19" H 2950 1800 50  0000 L CNN
F 1 "WS2812B" H 3194 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2900 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2950 1175 50  0001 L TNN
	1    2850 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED20
U 1 1 5DD4FE60
P 2150 1550
F 0 "LED20" H 2250 1800 50  0000 L CNN
F 1 "WS2812B" H 2494 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2200 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2250 1175 50  0001 L TNN
	1    2150 1550
	-1   0    0    -1  
$EndComp
$Comp
L LED:WS2812B LED21
U 1 1 5DD4FE6A
P 1450 1550
F 0 "LED21" H 1550 1800 50  0000 L CNN
F 1 "WS2812B" H 1794 1505 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1500 1250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1550 1175 50  0001 L TNN
	1    1450 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 1850 2850 1850
Connection ~ 2850 1850
Wire Wire Line
	2850 1850 2150 1850
Connection ~ 2150 1850
Wire Wire Line
	2150 1850 1450 1850
Wire Wire Line
	1450 1250 2150 1250
Connection ~ 2850 1250
Wire Wire Line
	2850 1250 3550 1250
Connection ~ 2150 1250
Wire Wire Line
	2150 1250 2850 1250
Wire Wire Line
	3250 1550 3150 1550
Wire Wire Line
	2550 1550 2450 1550
Wire Wire Line
	1850 1550 1750 1550
Connection ~ 3550 1250
Connection ~ 3550 1850
Connection ~ 4250 1250
Connection ~ 4250 1850
Wire Wire Line
	8900 3050 8900 1550
Wire Wire Line
	8750 3050 8900 3050
$Comp
L power:VBUS #PWR0125
U 1 1 5DDCB236
P 1450 1200
F 0 "#PWR0125" H 1450 1050 50  0001 C CNN
F 1 "VBUS" H 1465 1373 50  0000 C CNN
F 2 "" H 1450 1200 50  0001 C CNN
F 3 "" H 1450 1200 50  0001 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5DDCBBFB
P 1450 1900
F 0 "#PWR0126" H 1450 1650 50  0001 C CNN
F 1 "GND" H 1455 1727 50  0000 C CNN
F 2 "" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1900 1450 1850
Connection ~ 1450 1850
Wire Wire Line
	1450 1200 1450 1250
Connection ~ 1450 1250
Wire Wire Line
	1000 3050 1000 3750
Wire Wire Line
	1000 3750 4100 3750
Wire Wire Line
	4100 3750 4100 4350
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5DE33B7B
P 7450 4900
F 0 "J4" V 7600 4850 50  0000 L CNN
F 1 "DOut" V 7413 4980 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 7450 4900 50  0001 C CNN
F 3 "~" H 7450 4900 50  0001 C CNN
	1    7450 4900
	0    1    1    0   
$EndComp
Text GLabel 7450 4550 1    50   Input ~ 0
DOUT
Wire Wire Line
	7450 4550 7450 4700
Text GLabel 950  1550 0    50   Input ~ 0
DOUT
Wire Wire Line
	950  1550 1150 1550
$Comp
L power:VBUS #PWR0101
U 1 1 5DE51F9F
P 8350 4500
F 0 "#PWR0101" H 8350 4350 50  0001 C CNN
F 1 "VBUS" H 8365 4673 50  0000 C CNN
F 2 "" H 8350 4500 50  0001 C CNN
F 3 "" H 8350 4500 50  0001 C CNN
	1    8350 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DE52A47
P 8350 5600
F 0 "#PWR0103" H 8350 5350 50  0001 C CNN
F 1 "GND" H 8355 5427 50  0000 C CNN
F 2 "" H 8350 5600 50  0001 C CNN
F 3 "" H 8350 5600 50  0001 C CNN
	1    8350 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5DE53929
P 8350 4800
F 0 "J5" V 8500 4750 50  0000 L CNN
F 1 "+5V" V 8313 4880 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8350 4800 50  0001 C CNN
F 3 "~" H 8350 4800 50  0001 C CNN
	1    8350 4800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5DE5463C
P 8550 4800
F 0 "J6" V 8700 4750 50  0000 L CNN
F 1 "+5V" V 8513 4880 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8550 4800 50  0001 C CNN
F 3 "~" H 8550 4800 50  0001 C CNN
	1    8550 4800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5DE54FEF
P 8750 4800
F 0 "J7" V 8900 4750 50  0000 L CNN
F 1 "+5V" V 8713 4880 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8750 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5DE563FD
P 8750 5300
F 0 "J10" V 8900 5250 50  0000 L CNN
F 1 "GND" V 8713 5380 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8750 5300 50  0001 C CNN
F 3 "~" H 8750 5300 50  0001 C CNN
	1    8750 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5DE56407
P 8550 5300
F 0 "J9" V 8700 5250 50  0000 L CNN
F 1 "GND" V 8513 5380 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8550 5300 50  0001 C CNN
F 3 "~" H 8550 5300 50  0001 C CNN
	1    8550 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5DE56411
P 8350 5300
F 0 "J8" V 8500 5250 50  0000 L CNN
F 1 "GND" V 8313 5380 50  0001 L CNN
F 2 "barn53-kicad:PCBSolderConnector" H 8350 5300 50  0001 C CNN
F 3 "~" H 8350 5300 50  0001 C CNN
	1    8350 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4500 8350 4600
Wire Wire Line
	8350 4600 8550 4600
Connection ~ 8350 4600
Connection ~ 8550 4600
Wire Wire Line
	8550 4600 8750 4600
Wire Wire Line
	8350 5600 8350 5500
Wire Wire Line
	8350 5500 8550 5500
Connection ~ 8350 5500
Connection ~ 8550 5500
Wire Wire Line
	8550 5500 8750 5500
$EndSCHEMATC

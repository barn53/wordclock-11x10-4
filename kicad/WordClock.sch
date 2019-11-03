EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "WordClock Microprocessor"
Date "2019-10-28"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5DB6EF3C
P 4000 6200
F 0 "U2" H 4000 6442 50  0000 C CNN
F 1 "AMS1117-3.3" H 4000 6351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4000 6400 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4100 5950 50  0001 C CNN
	1    4000 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DB81E34
P 3400 1450
F 0 "C2" H 3515 1496 50  0000 L CNN
F 1 "4.7u" H 3515 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3438 1300 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DB82581
P 4150 3500
F 0 "R1" H 4220 3546 50  0000 L CNN
F 1 "10k" H 4220 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 3500 50  0001 C CNN
F 3 "~" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:ESP-12E U3
U 1 1 5DB8646D
P 8400 2200
F 0 "U3" H 8400 3181 50  0000 C CNN
F 1 "ESP-12E" H 8400 3090 50  0000 C CNN
F 2 "barn53-kicad:ESP-12E" H 8400 2200 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 8050 2300 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:USB_B_Micro J1
U 1 1 5DB8FF43
P 1850 6350
F 0 "J1" H 1907 6817 50  0000 C CNN
F 1 "USB_B_Micro" H 1907 6726 50  0000 C CNN
F 2 "barn53-kicad:MicroUSB_1" H 2000 6300 50  0001 C CNN
F 3 "~" H 2000 6300 50  0001 C CNN
	1    1850 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 5DB93A78
P 3400 4650
F 0 "Q2" H 3590 4604 50  0000 L CNN
F 1 "S8050" H 3590 4695 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 4575 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 3400 4650 50  0001 L CNN
	1    3400 4650
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:S8050 Q1
U 1 1 5DB94616
P 3400 4000
F 0 "Q1" H 3590 4046 50  0000 L CNN
F 1 "S8050" H 3590 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 3925 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 3400 4000 50  0001 L CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
$Comp
L barn53-kicad:MicrowaveRadarSensorRCWL-0516 M1
U 1 1 5DB97EAC
P 7450 4750
F 0 "M1" H 9128 4596 50  0000 L CNN
F 1 "MicrowaveRadarSensorRCWL-0516" H 9128 4505 50  0000 L CNN
F 2 "barn53-kicad:MicrowaveRadarSensorRCWL-0516" H 8375 4075 50  0001 C CNN
F 3 "" H 7600 4900 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
$Sheet
S 8400 8550 1100 500 
U 5DB9F213
F0 "Panel__11x10+4" 50
F1 "Panel__11x10+4.sch" 50
$EndSheet
$Comp
L power:GND #PWR0104
U 1 1 5DBADAF3
P 1850 7000
F 0 "#PWR0104" H 1850 6750 50  0001 C CNN
F 1 "GND" H 1855 6827 50  0000 C CNN
F 2 "" H 1850 7000 50  0001 C CNN
F 3 "" H 1850 7000 50  0001 C CNN
	1    1850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6750 1850 6900
Wire Wire Line
	1750 6750 1750 6900
Wire Wire Line
	1750 6900 1850 6900
Connection ~ 1850 6900
Wire Wire Line
	1850 6900 1850 7000
$Comp
L power:GND #PWR0105
U 1 1 5DBB0E06
P 4000 6800
F 0 "#PWR0105" H 4000 6550 50  0001 C CNN
F 1 "GND" H 4005 6627 50  0000 C CNN
F 2 "" H 4000 6800 50  0001 C CNN
F 3 "" H 4000 6800 50  0001 C CNN
	1    4000 6800
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0106
U 1 1 5DBB197D
P 2300 6050
F 0 "#PWR0106" H 2300 5900 50  0001 C CNN
F 1 "VBUS" H 2315 6223 50  0000 C CNN
F 2 "" H 2300 6050 50  0001 C CNN
F 3 "" H 2300 6050 50  0001 C CNN
	1    2300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6150 2300 6150
Wire Wire Line
	2300 6150 2300 6050
$Comp
L power:VBUS #PWR0107
U 1 1 5DBB244F
P 3100 6100
F 0 "#PWR0107" H 3100 5950 50  0001 C CNN
F 1 "VBUS" H 3115 6273 50  0000 C CNN
F 2 "" H 3100 6100 50  0001 C CNN
F 3 "" H 3100 6100 50  0001 C CNN
	1    3100 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DBB2F56
P 3100 6550
F 0 "C3" H 3215 6596 50  0000 L CNN
F 1 "10u" H 3215 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3138 6400 50  0001 C CNN
F 3 "~" H 3100 6550 50  0001 C CNN
	1    3100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DBB3D04
P 3500 6550
F 0 "C4" H 3615 6596 50  0000 L CNN
F 1 "100n" H 3615 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 6400 50  0001 C CNN
F 3 "~" H 3500 6550 50  0001 C CNN
	1    3500 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5DBB56DD
P 4900 6550
F 0 "C6" H 5015 6596 50  0000 L CNN
F 1 "10u" H 5015 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4938 6400 50  0001 C CNN
F 3 "~" H 4900 6550 50  0001 C CNN
	1    4900 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6200 3100 6100
Wire Wire Line
	3100 6200 3500 6200
Wire Wire Line
	3100 6400 3100 6200
Connection ~ 3100 6200
Wire Wire Line
	3500 6400 3500 6200
Connection ~ 3500 6200
Wire Wire Line
	3500 6200 3700 6200
Wire Wire Line
	4300 6200 4450 6200
Wire Wire Line
	4900 6200 4900 6400
Wire Wire Line
	4450 6400 4450 6200
Connection ~ 4450 6200
Wire Wire Line
	4450 6200 4900 6200
$Comp
L power:+3V3 #PWR0108
U 1 1 5DBB75D6
P 4900 6100
F 0 "#PWR0108" H 4900 5950 50  0001 C CNN
F 1 "+3V3" H 4915 6273 50  0000 C CNN
F 2 "" H 4900 6100 50  0001 C CNN
F 3 "" H 4900 6100 50  0001 C CNN
	1    4900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6100 4900 6200
Connection ~ 4900 6200
Connection ~ 4000 6750
Wire Wire Line
	3100 6750 3500 6750
$Comp
L Device:C C5
U 1 1 5DBB50BA
P 4450 6550
F 0 "C5" H 4565 6596 50  0000 L CNN
F 1 "100n" H 4565 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 6400 50  0001 C CNN
F 3 "~" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6500 4000 6750
Wire Wire Line
	4000 6750 4450 6750
Wire Wire Line
	3100 6700 3100 6750
Wire Wire Line
	3500 6700 3500 6750
Connection ~ 3500 6750
Wire Wire Line
	3500 6750 4000 6750
Wire Wire Line
	4450 6700 4450 6750
Connection ~ 4450 6750
Wire Wire Line
	4450 6750 4900 6750
Wire Wire Line
	4900 6700 4900 6750
Wire Wire Line
	4000 6800 4000 6750
NoConn ~ 2150 6550
Text GLabel 2300 6350 2    50   Input ~ 0
D+
Text GLabel 2300 6450 2    50   Input ~ 0
D-
Wire Wire Line
	2150 6350 2300 6350
Wire Wire Line
	2150 6450 2300 6450
Text GLabel 2200 1850 0    50   Input ~ 0
D+
Text GLabel 2200 1950 0    50   Input ~ 0
D-
Wire Wire Line
	2350 1850 2200 1850
Wire Wire Line
	2200 1950 2350 1950
NoConn ~ 3150 1850
NoConn ~ 3150 1950
NoConn ~ 2350 2350
NoConn ~ 2350 2450
$Comp
L power:VBUS #PWR0109
U 1 1 5DBBFA16
P 1800 2000
F 0 "#PWR0109" H 1800 1850 50  0001 C CNN
F 1 "VBUS" H 1815 2173 50  0000 C CNN
F 2 "" H 1800 2000 50  0001 C CNN
F 3 "" H 1800 2000 50  0001 C CNN
	1    1800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1800 2050
Wire Wire Line
	1800 2050 2350 2050
NoConn ~ 2350 1650
NoConn ~ 2350 1750
NoConn ~ 2850 1450
$Comp
L power:GND #PWR0102
U 1 1 5DBC3A75
P 3350 3300
F 0 "#PWR0102" H 3350 3050 50  0001 C CNN
F 1 "GND" H 3355 3127 50  0000 C CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L dk_Interface-Controllers:CP2102-GMR_NRND U1
U 1 1 5DB75046
P 2650 2250
F 0 "U1" H 2750 1153 60  0000 C CNN
F 1 "CP2102-GMR_NRND" H 2750 1047 60  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm_ThermalVias" H 2850 2450 60  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf" H 2850 2550 60  0001 L CNN
F 4 "336-1160-1-ND" H 2850 2650 60  0001 L CNN "Digi-Key_PN"
F 5 "CP2102-GMR" H 2850 2750 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2850 2850 60  0001 L CNN "Category"
F 7 "Interface - Controllers" H 2850 2950 60  0001 L CNN "Family"
F 8 "https://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf" H 2850 3050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/silicon-labs/CP2102-GMR/336-1160-1-ND/3672615" H 2850 3150 60  0001 L CNN "DK_Detail_Page"
F 10 "IC USB-TO-UART BRIDGE 28VQFN" H 2850 3250 60  0001 L CNN "Description"
F 11 "Silicon Labs" H 2850 3350 60  0001 L CNN "Manufacturer"
F 12 "Not For New Designs" H 2850 3450 60  0001 L CNN "Status"
	1    2650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3250 2750 3300
Wire Wire Line
	2750 3300 2850 3300
Wire Wire Line
	2850 3300 2850 3250
Wire Wire Line
	2850 3300 3350 3300
Connection ~ 2850 3300
Wire Wire Line
	1550 2150 1750 2150
$Comp
L Device:R R2
U 1 1 5DBC85F1
P 1900 2150
F 0 "R2" H 1970 2196 50  0000 L CNN
F 1 "10k" H 1970 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1830 2150 50  0001 C CNN
F 3 "~" H 1900 2150 50  0001 C CNN
	1    1900 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2150 2350 2150
Text GLabel 2250 2250 0    50   Input ~ 0
TxD
Wire Wire Line
	2250 2250 2350 2250
Text GLabel 3300 2150 2    50   Input ~ 0
RxD
Wire Wire Line
	3300 2150 3150 2150
Text GLabel 3300 2250 2    50   Input ~ 0
DTR
Wire Wire Line
	3300 2250 3150 2250
Text GLabel 3300 2050 2    50   Input ~ 0
RTS
Wire Wire Line
	3300 2050 3150 2050
$Comp
L power:VBUS #PWR0110
U 1 1 5DBCE3DF
P 2950 1050
F 0 "#PWR0110" H 2950 900 50  0001 C CNN
F 1 "VBUS" H 2965 1223 50  0000 C CNN
F 2 "" H 2950 1050 50  0001 C CNN
F 3 "" H 2950 1050 50  0001 C CNN
	1    2950 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5DBD08B7
P 3800 1450
F 0 "C9" H 3915 1496 50  0000 L CNN
F 1 "100n" H 3915 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 1300 50  0001 C CNN
F 3 "~" H 3800 1450 50  0001 C CNN
	1    3800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1300 3800 1250
Wire Wire Line
	3800 1250 3400 1250
Wire Wire Line
	2950 1250 2950 1450
Wire Wire Line
	3400 1300 3400 1250
Connection ~ 3400 1250
Wire Wire Line
	3400 1250 2950 1250
Wire Wire Line
	3400 1600 3400 1650
Wire Wire Line
	3400 1650 3800 1650
Wire Wire Line
	3800 1650 3800 1600
$Comp
L power:GND #PWR0111
U 1 1 5DBD3E7D
P 3800 1700
F 0 "#PWR0111" H 3800 1450 50  0001 C CNN
F 1 "GND" H 3805 1527 50  0000 C CNN
F 2 "" H 3800 1700 50  0001 C CNN
F 3 "" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1700 3800 1650
Connection ~ 3800 1650
$Comp
L Device:C C1
U 1 1 5DBD56E2
P 2000 1300
F 0 "C1" H 2115 1346 50  0000 L CNN
F 1 "100n" H 2115 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 1150 50  0001 C CNN
F 3 "~" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DBD6096
P 2000 1500
F 0 "#PWR0112" H 2000 1250 50  0001 C CNN
F 1 "GND" H 2005 1327 50  0000 C CNN
F 2 "" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0001 C CNN
	1    2000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1500 2000 1450
Wire Wire Line
	2750 1100 2750 1450
Wire Wire Line
	2000 1150 2000 1100
Wire Wire Line
	2000 1100 2750 1100
Wire Wire Line
	2950 1050 2950 1250
Connection ~ 2950 1250
$Comp
L Device:R R3
U 1 1 5DBE5548
P 2800 4000
F 0 "R3" H 2870 4046 50  0000 L CNN
F 1 "10k" H 2870 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 4000 50  0001 C CNN
F 3 "~" H 2800 4000 50  0001 C CNN
	1    2800 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DBE5B3E
P 2800 4650
F 0 "R4" H 2870 4696 50  0000 L CNN
F 1 "10k" H 2870 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 4650 50  0001 C CNN
F 3 "~" H 2800 4650 50  0001 C CNN
	1    2800 4650
	0    1    1    0   
$EndComp
Text GLabel 2450 4000 0    50   Input ~ 0
DTR
Text GLabel 2450 4650 0    50   Input ~ 0
RTS
Text GLabel 4300 3750 2    50   Input ~ 0
Reset
Text GLabel 4900 4900 2    50   Input ~ 0
GPIO0
Wire Wire Line
	2450 4000 2550 4000
Wire Wire Line
	2450 4650 2550 4650
Wire Wire Line
	2950 4000 3200 4000
Wire Wire Line
	2950 4650 3200 4650
Wire Wire Line
	2550 4300 3500 4300
Wire Wire Line
	2550 4000 2550 4300
Connection ~ 2550 4000
Wire Wire Line
	2550 4000 2650 4000
Wire Wire Line
	2550 4650 2550 4500
Wire Wire Line
	2550 4500 3300 4500
Wire Wire Line
	3300 4500 3300 4200
Wire Wire Line
	3300 4200 3500 4200
Connection ~ 2550 4650
Wire Wire Line
	2550 4650 2650 4650
Wire Wire Line
	3500 4850 3500 4900
Wire Wire Line
	3500 3800 3500 3750
Wire Wire Line
	3500 3750 4150 3750
Wire Wire Line
	3500 4300 3500 4450
$Comp
L Device:C C10
U 1 1 5DBF95C5
P 4150 4000
F 0 "C10" H 4265 4046 50  0000 L CNN
F 1 "100n" H 4265 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 3850 50  0001 C CNN
F 3 "~" H 4150 4000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5DBFA4A4
P 4150 3250
F 0 "#PWR0113" H 4150 3100 50  0001 C CNN
F 1 "+3V3" H 4165 3423 50  0000 C CNN
F 2 "" H 4150 3250 50  0001 C CNN
F 3 "" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5DBFAB45
P 4150 4250
F 0 "#PWR0114" H 4150 4000 50  0001 C CNN
F 1 "GND" H 4155 4077 50  0000 C CNN
F 2 "" H 4150 4250 50  0001 C CNN
F 3 "" H 4150 4250 50  0001 C CNN
	1    4150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3250 4150 3350
Wire Wire Line
	4150 3650 4150 3750
Connection ~ 4150 3750
Wire Wire Line
	4150 3750 4300 3750
Wire Wire Line
	4150 3750 4150 3850
Wire Wire Line
	4150 4150 4150 4250
NoConn ~ 7450 5150
NoConn ~ 7450 4750
$Comp
L power:GND #PWR0115
U 1 1 5DC0E4BB
P 8400 3000
F 0 "#PWR0115" H 8400 2750 50  0001 C CNN
F 1 "GND" H 8405 2827 50  0000 C CNN
F 2 "" H 8400 3000 50  0001 C CNN
F 3 "" H 8400 3000 50  0001 C CNN
	1    8400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DC0EAA1
P 6950 5400
F 0 "#PWR0116" H 6950 5150 50  0001 C CNN
F 1 "GND" H 6955 5227 50  0000 C CNN
F 2 "" H 6950 5400 50  0001 C CNN
F 3 "" H 6950 5400 50  0001 C CNN
	1    6950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4850 6950 5400
$Comp
L power:VBUS #PWR0117
U 1 1 5DC121F9
P 6800 4550
F 0 "#PWR0117" H 6800 4400 50  0001 C CNN
F 1 "VBUS" H 6815 4723 50  0000 C CNN
F 2 "" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5050 6800 4550
Text GLabel 7350 4950 0    50   Input ~ 0
Move
Wire Wire Line
	7350 4950 7450 4950
Wire Wire Line
	6950 4850 7450 4850
Wire Wire Line
	6800 5050 7450 5050
NoConn ~ 7800 2200
NoConn ~ 7800 2300
NoConn ~ 7800 2400
NoConn ~ 7800 2500
NoConn ~ 7800 2600
NoConn ~ 7800 2700
Wire Wire Line
	8400 2900 8400 3000
$Comp
L power:+3V3 #PWR0118
U 1 1 5DC2AC3F
P 8400 1150
F 0 "#PWR0118" H 8400 1000 50  0001 C CNN
F 1 "+3V3" H 8415 1323 50  0000 C CNN
F 2 "" H 8400 1150 50  0001 C CNN
F 3 "" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1150 8400 1400
Text GLabel 7650 1600 0    50   Input ~ 0
Reset
Wire Wire Line
	7800 1800 6950 1800
Wire Wire Line
	6950 1800 6950 1400
$Comp
L Device:R R6
U 1 1 5DC32D75
P 6950 1250
F 0 "R6" H 7020 1296 50  0000 L CNN
F 1 "10k" H 7020 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 1250 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
	1    6950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 5DC334C7
P 6950 1050
F 0 "#PWR0119" H 6950 900 50  0001 C CNN
F 1 "+3V3" H 6965 1223 50  0000 C CNN
F 2 "" H 6950 1050 50  0001 C CNN
F 3 "" H 6950 1050 50  0001 C CNN
	1    6950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1050 6950 1100
Text GLabel 9150 1600 2    50   Input ~ 0
GPIO0
Wire Wire Line
	7800 1600 7650 1600
Wire Wire Line
	9150 1600 9000 1600
Text GLabel 9150 1700 2    50   Input ~ 0
TxD
Text GLabel 9150 1900 2    50   Input ~ 0
RxD
Text GLabel 9600 2000 2    50   Input ~ 0
Move
NoConn ~ 9000 2100
NoConn ~ 9000 2600
NoConn ~ 9000 2400
NoConn ~ 9000 2200
NoConn ~ 9000 2300
$Comp
L Device:R R5
U 1 1 5DC59793
P 4700 4700
F 0 "R5" H 4770 4746 50  0000 L CNN
F 1 "10k" H 4770 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4630 4700 50  0001 C CNN
F 3 "~" H 4700 4700 50  0001 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 5DC5979D
P 4700 4450
F 0 "#PWR0120" H 4700 4300 50  0001 C CNN
F 1 "+3V3" H 4715 4623 50  0000 C CNN
F 2 "" H 4700 4450 50  0001 C CNN
F 3 "" H 4700 4450 50  0001 C CNN
	1    4700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4450 4700 4550
Wire Wire Line
	3500 4900 4700 4900
Wire Wire Line
	4700 4850 4700 4900
Connection ~ 4700 4900
Wire Wire Line
	4700 4900 4900 4900
Wire Wire Line
	9650 1800 9650 1400
$Comp
L Device:R R9
U 1 1 5DC61AF9
P 9650 1250
F 0 "R9" H 9720 1296 50  0000 L CNN
F 1 "10k" H 9720 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 1250 50  0001 C CNN
F 3 "~" H 9650 1250 50  0001 C CNN
	1    9650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5DC61B03
P 9650 1050
F 0 "#PWR0121" H 9650 900 50  0001 C CNN
F 1 "+3V3" H 9665 1223 50  0000 C CNN
F 2 "" H 9650 1050 50  0001 C CNN
F 3 "" H 9650 1050 50  0001 C CNN
	1    9650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1050 9650 1100
Wire Wire Line
	9000 1800 9650 1800
$Comp
L Device:R R8
U 1 1 5DC6B5DD
P 9500 2800
F 0 "R8" H 9570 2846 50  0000 L CNN
F 1 "10k" H 9570 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 2800 50  0001 C CNN
F 3 "~" H 9500 2800 50  0001 C CNN
	1    9500 2800
	1    0    0    -1  
$EndComp
Connection ~ 9500 2000
Wire Wire Line
	9500 2000 9600 2000
Wire Wire Line
	9000 1900 9150 1900
Wire Wire Line
	9150 1700 9000 1700
$Comp
L power:GND #PWR0122
U 1 1 5DC76A97
P 9500 3050
F 0 "#PWR0122" H 9500 2800 50  0001 C CNN
F 1 "GND" H 9505 2877 50  0000 C CNN
F 2 "" H 9500 3050 50  0001 C CNN
F 3 "" H 9500 3050 50  0001 C CNN
	1    9500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2950 9500 3000
$Comp
L Device:R R7
U 1 1 5DC7D662
P 9200 2800
F 0 "R7" H 9270 2846 50  0000 L CNN
F 1 "10k" H 9270 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 2800 50  0001 C CNN
F 3 "~" H 9200 2800 50  0001 C CNN
	1    9200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2000 9500 2000
Wire Wire Line
	9200 2650 9200 2500
Wire Wire Line
	9200 2500 9000 2500
Wire Wire Line
	9500 2000 9500 2650
Wire Wire Line
	9500 3000 9200 3000
Wire Wire Line
	9200 3000 9200 2950
Connection ~ 9500 3000
Wire Wire Line
	9500 3000 9500 3050
$Comp
L Device:R R10
U 1 1 5DC925CF
P 6600 1250
F 0 "R10" H 6670 1296 50  0000 L CNN
F 1 "220k" H 6670 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 1250 50  0001 C CNN
F 3 "~" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5DC925D9
P 6600 1050
F 0 "#PWR02" H 6600 900 50  0001 C CNN
F 1 "+3V3" H 6615 1223 50  0000 C CNN
F 2 "" H 6600 1050 50  0001 C CNN
F 3 "" H 6600 1050 50  0001 C CNN
	1    6600 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1050 6600 1100
Wire Wire Line
	6600 1400 6600 2000
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5DCB684C
P 6150 2000
F 0 "J2" H 6068 1775 50  0000 C CNN
F 1 "Conn_01x01" H 6068 1866 50  0000 C CNN
F 2 "barn53-kicad:ThroughHolePin1x1" H 6150 2000 50  0001 C CNN
F 3 "~" H 6150 2000 50  0001 C CNN
	1    6150 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5DCB78A4
P 6150 2350
F 0 "J3" H 6068 2125 50  0000 C CNN
F 1 "Conn_01x01" H 6068 2216 50  0000 C CNN
F 2 "barn53-kicad:ThroughHolePin1x1" H 6150 2350 50  0001 C CNN
F 3 "~" H 6150 2350 50  0001 C CNN
	1    6150 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DCB81BC
P 6450 2450
F 0 "#PWR01" H 6450 2200 50  0001 C CNN
F 1 "GND" H 6455 2277 50  0000 C CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2350 6450 2350
Wire Wire Line
	6450 2350 6450 2450
Wire Wire Line
	6350 2000 6600 2000
Wire Wire Line
	6600 2000 7800 2000
Connection ~ 6600 2000
Text GLabel 1550 2150 0    50   Input ~ 0
VDD
Text GLabel 1900 1100 0    50   Input ~ 0
VDD
Wire Wire Line
	1900 1100 2000 1100
Connection ~ 2000 1100
$EndSCHEMATC
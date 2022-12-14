EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 615E0F57
P 3400 3050
F 0 "U1" H 3400 3292 50  0000 C CNN
F 1 "AMS1117-3.3" H 3400 3201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3400 3250 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3500 2800 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 615E23FD
P 3050 3250
F 0 "C1" H 3165 3296 50  0000 L CNN
F 1 "C" H 3165 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3088 3100 50  0001 C CNN
F 3 "~" H 3050 3250 50  0001 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 615E2CD1
P 3750 3250
F 0 "C2" H 3865 3296 50  0000 L CNN
F 1 "C" H 3865 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3788 3100 50  0001 C CNN
F 3 "~" H 3750 3250 50  0001 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 615E3495
P 3400 3450
F 0 "#PWR0101" H 3400 3200 50  0001 C CNN
F 1 "GND" H 3405 3277 50  0000 C CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3100 3050 3050
Wire Wire Line
	3050 3050 3100 3050
Wire Wire Line
	3700 3050 3750 3050
Wire Wire Line
	3750 3050 3750 3100
Wire Wire Line
	3400 3350 3400 3400
Wire Wire Line
	3050 3400 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3400 3400 3400 3450
Wire Wire Line
	3750 3400 3400 3400
$Comp
L SAO_library:SAOV1.69BIS U2
U 1 1 615E5AE3
P 5650 1500
F 0 "U2" H 6178 1551 50  0000 L CNN
F 1 "SAOV1.69BIS" H 6178 1460 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 5650 1500 50  0001 C CNN
F 3 "" H 5650 1500 50  0001 C CNN
	1    5650 1500
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U6
U 1 1 615E6C9D
P 6700 1500
F 0 "U6" H 7228 1551 50  0000 L CNN
F 1 "SAOV1.69BIS" H 7228 1460 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U10
U 1 1 615EB91C
P 7800 1500
F 0 "U10" H 8328 1551 50  0000 L CNN
F 1 "SAOV1.69BIS" H 8328 1460 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 7800 1500 50  0001 C CNN
F 3 "" H 7800 1500 50  0001 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U14
U 1 1 615EC1D8
P 8900 1500
F 0 "U14" H 9428 1551 50  0000 L CNN
F 1 "SAOV1.69BIS" H 9428 1460 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 8900 1500 50  0001 C CNN
F 3 "" H 8900 1500 50  0001 C CNN
	1    8900 1500
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U3
U 1 1 615ED54F
P 5650 2450
F 0 "U3" H 6178 2501 50  0000 L CNN
F 1 "SAOV1.69BIS" H 6178 2410 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 5650 2450 50  0001 C CNN
F 3 "" H 5650 2450 50  0001 C CNN
	1    5650 2450
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U7
U 1 1 615ED559
P 6700 2450
F 0 "U7" H 7228 2501 50  0000 L CNN
F 1 "SAOV1.69BIS" H 7228 2410 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6700 2450 50  0001 C CNN
F 3 "" H 6700 2450 50  0001 C CNN
	1    6700 2450
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U11
U 1 1 615ED563
P 7800 2450
F 0 "U11" H 8328 2501 50  0000 L CNN
F 1 "SAOV1.69BIS" H 8328 2410 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 7800 2450 50  0001 C CNN
F 3 "" H 7800 2450 50  0001 C CNN
	1    7800 2450
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U15
U 1 1 615ED56D
P 8900 2450
F 0 "U15" H 9428 2501 50  0000 L CNN
F 1 "SAOV1.69BIS" H 9428 2410 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 8900 2450 50  0001 C CNN
F 3 "" H 8900 2450 50  0001 C CNN
	1    8900 2450
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U4
U 1 1 615F003A
P 5650 3400
F 0 "U4" H 6178 3451 50  0000 L CNN
F 1 "SAOV1.69BIS" H 6178 3360 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 5650 3400 50  0001 C CNN
F 3 "" H 5650 3400 50  0001 C CNN
	1    5650 3400
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U8
U 1 1 615F0044
P 6700 3400
F 0 "U8" H 7228 3451 50  0000 L CNN
F 1 "SAOV1.69BIS" H 7228 3360 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U12
U 1 1 615F004E
P 7800 3400
F 0 "U12" H 8328 3451 50  0000 L CNN
F 1 "SAOV1.69BIS" H 8328 3360 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 7800 3400 50  0001 C CNN
F 3 "" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U16
U 1 1 615F0058
P 8900 3400
F 0 "U16" H 9428 3451 50  0000 L CNN
F 1 "SAOV1.69BIS" H 9428 3360 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 8900 3400 50  0001 C CNN
F 3 "" H 8900 3400 50  0001 C CNN
	1    8900 3400
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U5
U 1 1 615F0062
P 5650 4350
F 0 "U5" H 6178 4401 50  0000 L CNN
F 1 "SAOV1.69BIS" H 6178 4310 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 5650 4350 50  0001 C CNN
F 3 "" H 5650 4350 50  0001 C CNN
	1    5650 4350
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U9
U 1 1 615F006C
P 6700 4350
F 0 "U9" H 7228 4401 50  0000 L CNN
F 1 "SAOV1.69BIS" H 7228 4310 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6700 4350 50  0001 C CNN
F 3 "" H 6700 4350 50  0001 C CNN
	1    6700 4350
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U13
U 1 1 615F0076
P 7800 4350
F 0 "U13" H 8328 4401 50  0000 L CNN
F 1 "SAOV1.69BIS" H 8328 4310 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 7800 4350 50  0001 C CNN
F 3 "" H 7800 4350 50  0001 C CNN
	1    7800 4350
	1    0    0    -1  
$EndComp
$Comp
L SAO_library:SAOV1.69BIS U17
U 1 1 615F0080
P 8900 4350
F 0 "U17" H 9428 4401 50  0000 L CNN
F 1 "SAOV1.69BIS" H 9428 4310 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 8900 4350 50  0001 C CNN
F 3 "" H 8900 4350 50  0001 C CNN
	1    8900 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 615F92B7
P 2450 3150
F 0 "J1" H 2507 3467 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 2507 3376 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 2500 3110 50  0001 C CNN
F 3 "~" H 2500 3110 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6160076E
P 2800 3300
F 0 "#PWR0102" H 2800 3050 50  0001 C CNN
F 1 "GND" H 2805 3127 50  0000 C CNN
F 2 "" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3250 2800 3250
Wire Wire Line
	2800 3250 2800 3300
Wire Wire Line
	2750 3150 2800 3150
Wire Wire Line
	2800 3150 2800 3250
Connection ~ 2800 3250
Wire Wire Line
	2750 3050 2950 3050
Connection ~ 3050 3050
$Comp
L Regulator_Linear:AMS1117-3.3 U18
U 1 1 616DB1A6
P 3400 3950
F 0 "U18" H 3400 4192 50  0000 C CNN
F 1 "AMS1117-3.3" H 3400 4101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3400 4150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3500 3700 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 616DB1AC
P 3050 4150
F 0 "C3" H 3165 4196 50  0000 L CNN
F 1 "C" H 3165 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3088 4000 50  0001 C CNN
F 3 "~" H 3050 4150 50  0001 C CNN
	1    3050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 616DB1B2
P 3750 4150
F 0 "C4" H 3865 4196 50  0000 L CNN
F 1 "C" H 3865 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3788 4000 50  0001 C CNN
F 3 "~" H 3750 4150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 616DB1B8
P 3400 4350
F 0 "#PWR0103" H 3400 4100 50  0001 C CNN
F 1 "GND" H 3405 4177 50  0000 C CNN
F 2 "" H 3400 4350 50  0001 C CNN
F 3 "" H 3400 4350 50  0001 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4000 3050 3950
Wire Wire Line
	3050 3950 3100 3950
Wire Wire Line
	3700 3950 3750 3950
Wire Wire Line
	3750 3950 3750 4000
Wire Wire Line
	3400 4250 3400 4300
Wire Wire Line
	3050 4300 3400 4300
Connection ~ 3400 4300
Wire Wire Line
	3400 4300 3400 4350
Wire Wire Line
	3750 4300 3400 4300
Wire Wire Line
	2950 3950 3050 3950
Connection ~ 3050 3950
Wire Wire Line
	2950 3950 2950 3050
Connection ~ 2950 3050
Wire Wire Line
	2950 3050 3050 3050
$Comp
L power:GND #PWR0104
U 1 1 616DBBF2
P 5700 1350
F 0 "#PWR0104" H 5700 1100 50  0001 C CNN
F 1 "GND" H 5705 1177 50  0000 C CNN
F 2 "" H 5700 1350 50  0001 C CNN
F 3 "" H 5700 1350 50  0001 C CNN
	1    5700 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 616DCBD9
P 5700 2300
F 0 "#PWR0105" H 5700 2050 50  0001 C CNN
F 1 "GND" H 5705 2127 50  0000 C CNN
F 2 "" H 5700 2300 50  0001 C CNN
F 3 "" H 5700 2300 50  0001 C CNN
	1    5700 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 616DD0BB
P 5700 3250
F 0 "#PWR0106" H 5700 3000 50  0001 C CNN
F 1 "GND" H 5705 3077 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 616DD362
P 5700 4200
F 0 "#PWR0107" H 5700 3950 50  0001 C CNN
F 1 "GND" H 5705 4027 50  0000 C CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 616DFF4D
P 6750 1350
F 0 "#PWR0108" H 6750 1100 50  0001 C CNN
F 1 "GND" H 6755 1177 50  0000 C CNN
F 2 "" H 6750 1350 50  0001 C CNN
F 3 "" H 6750 1350 50  0001 C CNN
	1    6750 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 616DFF53
P 6750 2300
F 0 "#PWR0109" H 6750 2050 50  0001 C CNN
F 1 "GND" H 6755 2127 50  0000 C CNN
F 2 "" H 6750 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0001 C CNN
	1    6750 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 616DFF59
P 6750 3250
F 0 "#PWR0110" H 6750 3000 50  0001 C CNN
F 1 "GND" H 6755 3077 50  0000 C CNN
F 2 "" H 6750 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 616DFF5F
P 6750 4200
F 0 "#PWR0111" H 6750 3950 50  0001 C CNN
F 1 "GND" H 6755 4027 50  0000 C CNN
F 2 "" H 6750 4200 50  0001 C CNN
F 3 "" H 6750 4200 50  0001 C CNN
	1    6750 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 616E1828
P 7850 1350
F 0 "#PWR0112" H 7850 1100 50  0001 C CNN
F 1 "GND" H 7855 1177 50  0000 C CNN
F 2 "" H 7850 1350 50  0001 C CNN
F 3 "" H 7850 1350 50  0001 C CNN
	1    7850 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 616E182E
P 7850 2300
F 0 "#PWR0113" H 7850 2050 50  0001 C CNN
F 1 "GND" H 7855 2127 50  0000 C CNN
F 2 "" H 7850 2300 50  0001 C CNN
F 3 "" H 7850 2300 50  0001 C CNN
	1    7850 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 616E1834
P 7850 3250
F 0 "#PWR0114" H 7850 3000 50  0001 C CNN
F 1 "GND" H 7855 3077 50  0000 C CNN
F 2 "" H 7850 3250 50  0001 C CNN
F 3 "" H 7850 3250 50  0001 C CNN
	1    7850 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 616E183A
P 7850 4200
F 0 "#PWR0115" H 7850 3950 50  0001 C CNN
F 1 "GND" H 7855 4027 50  0000 C CNN
F 2 "" H 7850 4200 50  0001 C CNN
F 3 "" H 7850 4200 50  0001 C CNN
	1    7850 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 616E2C97
P 8950 1350
F 0 "#PWR0116" H 8950 1100 50  0001 C CNN
F 1 "GND" H 8955 1177 50  0000 C CNN
F 2 "" H 8950 1350 50  0001 C CNN
F 3 "" H 8950 1350 50  0001 C CNN
	1    8950 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 616E2C9D
P 8950 2300
F 0 "#PWR0117" H 8950 2050 50  0001 C CNN
F 1 "GND" H 8955 2127 50  0000 C CNN
F 2 "" H 8950 2300 50  0001 C CNN
F 3 "" H 8950 2300 50  0001 C CNN
	1    8950 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 616E2CA3
P 8950 3250
F 0 "#PWR0118" H 8950 3000 50  0001 C CNN
F 1 "GND" H 8955 3077 50  0000 C CNN
F 2 "" H 8950 3250 50  0001 C CNN
F 3 "" H 8950 3250 50  0001 C CNN
	1    8950 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 616E2CA9
P 8950 4200
F 0 "#PWR0119" H 8950 3950 50  0001 C CNN
F 1 "GND" H 8955 4027 50  0000 C CNN
F 2 "" H 8950 4200 50  0001 C CNN
F 3 "" H 8950 4200 50  0001 C CNN
	1    8950 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 3050 3800 3050
Connection ~ 3750 3050
Wire Wire Line
	3750 3950 3800 3950
Connection ~ 3750 3950
Text GLabel 3800 3050 2    50   Input ~ 0
VCC1
Text GLabel 3800 3950 2    50   Input ~ 0
VCC2
Text GLabel 5700 1250 0    50   Input ~ 0
VCC1
Text GLabel 5700 2200 0    50   Input ~ 0
VCC1
Text GLabel 6750 2200 0    50   Input ~ 0
VCC1
Text GLabel 6750 1250 0    50   Input ~ 0
VCC1
Text GLabel 6750 3150 0    50   Input ~ 0
VCC1
Text GLabel 6750 4100 0    50   Input ~ 0
VCC1
Text GLabel 5700 4100 0    50   Input ~ 0
VCC1
Text GLabel 5700 3150 0    50   Input ~ 0
VCC1
Text GLabel 7850 1250 0    50   Input ~ 0
VCC2
Text GLabel 8950 1250 0    50   Input ~ 0
VCC2
Text GLabel 8950 2200 0    50   Input ~ 0
VCC2
Text GLabel 7850 2200 0    50   Input ~ 0
VCC2
Text GLabel 7850 3150 0    50   Input ~ 0
VCC2
Text GLabel 8950 3150 0    50   Input ~ 0
VCC2
Text GLabel 8950 4100 0    50   Input ~ 0
VCC2
Text GLabel 7850 4100 0    50   Input ~ 0
VCC2
$Comp
L Mechanical:MountingHole H1
U 1 1 616E8086
P 2350 1400
F 0 "H1" H 2450 1446 50  0000 L CNN
F 1 "MountingHole" H 2450 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2350 1400 50  0001 C CNN
F 3 "~" H 2350 1400 50  0001 C CNN
	1    2350 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 616E9458
P 2350 1700
F 0 "H2" H 2450 1746 50  0000 L CNN
F 1 "MountingHole" H 2450 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2350 1700 50  0001 C CNN
F 3 "~" H 2350 1700 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 616E9826
P 2350 2100
F 0 "H3" H 2450 2146 50  0000 L CNN
F 1 "MountingHole" H 2450 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2350 2100 50  0001 C CNN
F 3 "~" H 2350 2100 50  0001 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 616E9AE1
P 2350 2500
F 0 "H4" H 2450 2546 50  0000 L CNN
F 1 "MountingHole" H 2450 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2350 2500 50  0001 C CNN
F 3 "~" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 616F6F48
P 3350 1400
F 0 "H5" H 3450 1446 50  0000 L CNN
F 1 "MountingHole" H 3450 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 1400 50  0001 C CNN
F 3 "~" H 3350 1400 50  0001 C CNN
	1    3350 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 616F6F4E
P 3350 1700
F 0 "H6" H 3450 1746 50  0000 L CNN
F 1 "MountingHole" H 3450 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 1700 50  0001 C CNN
F 3 "~" H 3350 1700 50  0001 C CNN
	1    3350 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 616F6F54
P 3350 2100
F 0 "H7" H 3450 2146 50  0000 L CNN
F 1 "MountingHole" H 3450 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 2100 50  0001 C CNN
F 3 "~" H 3350 2100 50  0001 C CNN
	1    3350 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 616F6F5A
P 3350 2500
F 0 "H8" H 3450 2546 50  0000 L CNN
F 1 "MountingHole" H 3450 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 2500 50  0001 C CNN
F 3 "~" H 3350 2500 50  0001 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
Text GLabel 5700 1450 0    50   Input ~ 0
SDA1
Text GLabel 5700 2400 0    50   Input ~ 0
SDA1
Text GLabel 5700 3350 0    50   Input ~ 0
SDA1
Text GLabel 6750 3350 0    50   Input ~ 0
SDA1
Text GLabel 6750 2400 0    50   Input ~ 0
SDA1
Text GLabel 6750 1450 0    50   Input ~ 0
SDA1
Text GLabel 6750 4300 0    50   Input ~ 0
SDA1
Text GLabel 5700 4300 0    50   Input ~ 0
SDA1
Text GLabel 5700 4400 0    50   Input ~ 0
SCL1
Text GLabel 6750 4400 0    50   Input ~ 0
SCL1
Text GLabel 6750 3450 0    50   Input ~ 0
SCL1
Text GLabel 5700 3450 0    50   Input ~ 0
SCL1
Text GLabel 5700 2500 0    50   Input ~ 0
SCL1
Text GLabel 6750 2500 0    50   Input ~ 0
SCL1
Text GLabel 5700 1550 0    50   Input ~ 0
SCL1
Text GLabel 6750 1550 0    50   Input ~ 0
SCL1
Text GLabel 7850 1450 0    50   Input ~ 0
SDA2
Text GLabel 8950 1450 0    50   Input ~ 0
SDA2
Text GLabel 8950 2400 0    50   Input ~ 0
SDA2
Text GLabel 7850 2400 0    50   Input ~ 0
SDA2
Text GLabel 7850 3350 0    50   Input ~ 0
SDA2
Text GLabel 8950 3350 0    50   Input ~ 0
SDA2
Text GLabel 8950 4300 0    50   Input ~ 0
SDA2
Text GLabel 7850 4300 0    50   Input ~ 0
SDA2
Text GLabel 7850 3450 0    50   Input ~ 0
SCL2
Text GLabel 8950 3450 0    50   Input ~ 0
SCL2
Text GLabel 8950 4400 0    50   Input ~ 0
SCL2
Text GLabel 7850 4400 0    50   Input ~ 0
SCL2
Text GLabel 7850 1550 0    50   Input ~ 0
SCL2
Text GLabel 8950 1550 0    50   Input ~ 0
SCL2
Text GLabel 8950 2500 0    50   Input ~ 0
SCL2
Text GLabel 7850 2500 0    50   Input ~ 0
SCL2
$Comp
L Device:C C13
U 1 1 6170E40A
P 3100 5250
F 0 "C13" H 3215 5296 50  0000 L CNN
F 1 "C" H 3215 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3138 5100 50  0001 C CNN
F 3 "~" H 3100 5250 50  0001 C CNN
	1    3100 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 6170ECB5
P 3450 5250
F 0 "C15" H 3565 5296 50  0000 L CNN
F 1 "C" H 3565 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3488 5100 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 6170EFDE
P 3800 5250
F 0 "C17" H 3915 5296 50  0000 L CNN
F 1 "C" H 3915 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3838 5100 50  0001 C CNN
F 3 "~" H 3800 5250 50  0001 C CNN
	1    3800 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 6170F2AE
P 4150 5250
F 0 "C19" H 4265 5296 50  0000 L CNN
F 1 "C" H 4265 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4188 5100 50  0001 C CNN
F 3 "~" H 4150 5250 50  0001 C CNN
	1    4150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6170F8AD
P 1750 5550
F 0 "#PWR0120" H 1750 5300 50  0001 C CNN
F 1 "GND" H 1755 5377 50  0000 C CNN
F 2 "" H 1750 5550 50  0001 C CNN
F 3 "" H 1750 5550 50  0001 C CNN
	1    1750 5550
	1    0    0    -1  
$EndComp
Text GLabel 1750 4950 1    50   Input ~ 0
VCC1
$Comp
L Device:C C5
U 1 1 61712987
P 1750 5250
F 0 "C5" H 1865 5296 50  0000 L CNN
F 1 "C" H 1865 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1788 5100 50  0001 C CNN
F 3 "~" H 1750 5250 50  0001 C CNN
	1    1750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 61712991
P 2050 5250
F 0 "C7" H 2165 5296 50  0000 L CNN
F 1 "C" H 2165 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2088 5100 50  0001 C CNN
F 3 "~" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6171299B
P 2400 5250
F 0 "C9" H 2515 5296 50  0000 L CNN
F 1 "C" H 2515 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2438 5100 50  0001 C CNN
F 3 "~" H 2400 5250 50  0001 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 617129A5
P 2750 5250
F 0 "C11" H 2865 5296 50  0000 L CNN
F 1 "C" H 2865 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2788 5100 50  0001 C CNN
F 3 "~" H 2750 5250 50  0001 C CNN
	1    2750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5100 3800 5100
Wire Wire Line
	1750 5100 1750 4950
Connection ~ 1750 5100
Connection ~ 2050 5100
Wire Wire Line
	2050 5100 1750 5100
Connection ~ 2400 5100
Wire Wire Line
	2400 5100 2050 5100
Connection ~ 2750 5100
Wire Wire Line
	2750 5100 2400 5100
Connection ~ 3100 5100
Wire Wire Line
	3100 5100 2750 5100
Connection ~ 3450 5100
Wire Wire Line
	3450 5100 3100 5100
Connection ~ 3800 5100
Wire Wire Line
	3800 5100 3450 5100
Wire Wire Line
	4150 5400 3800 5400
Wire Wire Line
	1750 5400 1750 5550
Connection ~ 1750 5400
Connection ~ 2050 5400
Wire Wire Line
	2050 5400 1750 5400
Connection ~ 2400 5400
Wire Wire Line
	2400 5400 2050 5400
Connection ~ 2750 5400
Wire Wire Line
	2750 5400 2400 5400
Connection ~ 3100 5400
Wire Wire Line
	3100 5400 2750 5400
Connection ~ 3450 5400
Wire Wire Line
	3450 5400 3100 5400
Connection ~ 3800 5400
Wire Wire Line
	3800 5400 3450 5400
$Comp
L Device:C C14
U 1 1 61722717
P 3100 6450
F 0 "C14" H 3215 6496 50  0000 L CNN
F 1 "C" H 3215 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3138 6300 50  0001 C CNN
F 3 "~" H 3100 6450 50  0001 C CNN
	1    3100 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 6172271D
P 3450 6450
F 0 "C16" H 3565 6496 50  0000 L CNN
F 1 "C" H 3565 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3488 6300 50  0001 C CNN
F 3 "~" H 3450 6450 50  0001 C CNN
	1    3450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 61722723
P 3800 6450
F 0 "C18" H 3915 6496 50  0000 L CNN
F 1 "C" H 3915 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3838 6300 50  0001 C CNN
F 3 "~" H 3800 6450 50  0001 C CNN
	1    3800 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 61722729
P 4150 6450
F 0 "C20" H 4265 6496 50  0000 L CNN
F 1 "C" H 4265 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4188 6300 50  0001 C CNN
F 3 "~" H 4150 6450 50  0001 C CNN
	1    4150 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6172272F
P 1750 6750
F 0 "#PWR0121" H 1750 6500 50  0001 C CNN
F 1 "GND" H 1755 6577 50  0000 C CNN
F 2 "" H 1750 6750 50  0001 C CNN
F 3 "" H 1750 6750 50  0001 C CNN
	1    1750 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61722736
P 1750 6450
F 0 "C6" H 1865 6496 50  0000 L CNN
F 1 "C" H 1865 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1788 6300 50  0001 C CNN
F 3 "~" H 1750 6450 50  0001 C CNN
	1    1750 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6172273C
P 2050 6450
F 0 "C8" H 2165 6496 50  0000 L CNN
F 1 "C" H 2165 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2088 6300 50  0001 C CNN
F 3 "~" H 2050 6450 50  0001 C CNN
	1    2050 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61722742
P 2400 6450
F 0 "C10" H 2515 6496 50  0000 L CNN
F 1 "C" H 2515 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2438 6300 50  0001 C CNN
F 3 "~" H 2400 6450 50  0001 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61722748
P 2750 6450
F 0 "C12" H 2865 6496 50  0000 L CNN
F 1 "C" H 2865 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2788 6300 50  0001 C CNN
F 3 "~" H 2750 6450 50  0001 C CNN
	1    2750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6300 3800 6300
Wire Wire Line
	1750 6300 1750 6150
Connection ~ 1750 6300
Connection ~ 2050 6300
Wire Wire Line
	2050 6300 1750 6300
Connection ~ 2400 6300
Wire Wire Line
	2400 6300 2050 6300
Connection ~ 2750 6300
Wire Wire Line
	2750 6300 2400 6300
Connection ~ 3100 6300
Wire Wire Line
	3100 6300 2750 6300
Connection ~ 3450 6300
Wire Wire Line
	3450 6300 3100 6300
Connection ~ 3800 6300
Wire Wire Line
	3800 6300 3450 6300
Wire Wire Line
	4150 6600 3800 6600
Wire Wire Line
	1750 6600 1750 6750
Connection ~ 1750 6600
Connection ~ 2050 6600
Wire Wire Line
	2050 6600 1750 6600
Connection ~ 2400 6600
Wire Wire Line
	2400 6600 2050 6600
Connection ~ 2750 6600
Wire Wire Line
	2750 6600 2400 6600
Connection ~ 3100 6600
Wire Wire Line
	3100 6600 2750 6600
Connection ~ 3450 6600
Wire Wire Line
	3450 6600 3100 6600
Connection ~ 3800 6600
Wire Wire Line
	3800 6600 3450 6600
Text GLabel 1750 6150 1    50   Input ~ 0
VCC2
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 61741728
P 6150 5000
F 0 "J2" H 6178 4976 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6178 4885 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 6150 5000 50  0001 C CNN
F 3 "~" H 6150 5000 50  0001 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 6174259D
P 8300 5050
F 0 "J3" H 8328 5026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8328 4935 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 8300 5050 50  0001 C CNN
F 3 "~" H 8300 5050 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61743426
P 5950 4900
F 0 "#PWR0122" H 5950 4650 50  0001 C CNN
F 1 "GND" H 5955 4727 50  0000 C CNN
F 2 "" H 5950 4900 50  0001 C CNN
F 3 "" H 5950 4900 50  0001 C CNN
	1    5950 4900
	0    1    1    0   
$EndComp
Text GLabel 5750 5000 0    50   Input ~ 0
VCC1
Text GLabel 5950 5100 0    50   Input ~ 0
SDA1
Text GLabel 5950 5200 0    50   Input ~ 0
SCL1
$Comp
L power:GND #PWR0123
U 1 1 61744B11
P 8100 4950
F 0 "#PWR0123" H 8100 4700 50  0001 C CNN
F 1 "GND" H 8105 4777 50  0000 C CNN
F 2 "" H 8100 4950 50  0001 C CNN
F 3 "" H 8100 4950 50  0001 C CNN
	1    8100 4950
	0    1    1    0   
$EndComp
Text GLabel 7900 5050 0    50   Input ~ 0
VCC2
Text GLabel 8100 5150 0    50   Input ~ 0
SDA2
Text GLabel 8100 5250 0    50   Input ~ 0
SCL2
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 6174BE0F
P 5850 5000
F 0 "JP1" H 5850 5185 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5850 5094 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5850 5000 50  0001 C CNN
F 3 "~" H 5850 5000 50  0001 C CNN
	1    5850 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 6174D7F0
P 8000 5050
F 0 "JP2" H 8000 5235 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8000 5144 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8000 5050 50  0001 C CNN
F 3 "~" H 8000 5050 50  0001 C CNN
	1    8000 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6176ADF6
P 4250 4100
F 0 "D2" V 4289 3982 50  0000 R CNN
F 1 "LED" V 4198 3982 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 4250 4100 50  0001 C CNN
F 3 "~" H 4250 4100 50  0001 C CNN
	1    4250 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 6176CB72
P 4250 3250
F 0 "D1" V 4289 3132 50  0000 R CNN
F 1 "LED" V 4198 3132 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 4250 3250 50  0001 C CNN
F 3 "~" H 4250 3250 50  0001 C CNN
	1    4250 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6176D8CB
P 4600 3250
F 0 "R1" H 4670 3296 50  0000 L CNN
F 1 "R" H 4670 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4530 3250 50  0001 C CNN
F 3 "~" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6176DE05
P 4600 4100
F 0 "R2" H 4670 4146 50  0000 L CNN
F 1 "R" H 4670 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4530 4100 50  0001 C CNN
F 3 "~" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6176E629
P 4600 3400
F 0 "#PWR0124" H 4600 3150 50  0001 C CNN
F 1 "GND" H 4605 3227 50  0000 C CNN
F 2 "" H 4600 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6176E94F
P 4600 4250
F 0 "#PWR0125" H 4600 4000 50  0001 C CNN
F 1 "GND" H 4605 4077 50  0000 C CNN
F 2 "" H 4600 4250 50  0001 C CNN
F 3 "" H 4600 4250 50  0001 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3400 4250 3450
Wire Wire Line
	4250 3450 4450 3450
Wire Wire Line
	4450 3450 4450 3050
Wire Wire Line
	4450 3050 4600 3050
Wire Wire Line
	4600 3050 4600 3100
Wire Wire Line
	4250 4250 4250 4300
Wire Wire Line
	4250 4300 4450 4300
Wire Wire Line
	4450 4300 4450 3900
Wire Wire Line
	4450 3900 4600 3900
Wire Wire Line
	4600 3900 4600 3950
Text GLabel 4250 3950 1    50   Input ~ 0
VCC2
Text GLabel 4250 3100 1    50   Input ~ 0
VCC1
$EndSCHEMATC

extends RefCounted

const SIZES = {
	"0000": {
		"id": "0000",
		"DiameterInches": "10",
		"WidthMM": "135",
		"Profile": "75"
	},
	"0010": {
		"id": "0010",
		"DiameterInches": "10",
		"WidthMM": "145",
		"Profile": "95"
	},
	"0020": {
		"id": "0020",
		"DiameterInches": "11",
		"WidthMM": "145",
		"Profile": "70"
	},
	"0030": {
		"id": "0030",
		"DiameterInches": "11",
		"WidthMM": "155",
		"Profile": "90"
	},
	"0040": {
		"id": "0040",
		"DiameterInches": "12",
		"WidthMM": "135",
		"Profile": "60"
	},
	"0050": {
		"id": "0050",
		"DiameterInches": "12",
		"WidthMM": "135",
		"Profile": "70"
	},
	"0060": {
		"id": "0060",
		"DiameterInches": "12",
		"WidthMM": "145",
		"Profile": "70"
	},
	"0070": {
		"id": "0070",
		"DiameterInches": "12",
		"WidthMM": "145",
		"Profile": "80"
	},
	"0080": {
		"id": "0080",
		"DiameterInches": "13",
		"WidthMM": "135",
		"Profile": "80"
	},
	"0090": {
		"id": "0090",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "55"
	},
	"0100": {
		"id": "0100",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "65"
	},
	"0110": {
		"id": "0110",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "70"
	},
	"0120": {
		"id": "0120",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "55"
	},
	"0130": {
		"id": "0130",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "60"
	},
	"0140": {
		"id": "0140",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "65"
	},
	"0150": {
		"id": "0150",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "70"
	},
	"0160": {
		"id": "0160",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "75"
	},
	"0170": {
		"id": "0170",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "80"
	},
	"0180": {
		"id": "0180",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "55"
	},
	"0190": {
		"id": "0190",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "65"
	},
	"0200": {
		"id": "0200",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "70"
	},
	"0210": {
		"id": "0210",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "60"
	},
	"0220": {
		"id": "0220",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "65"
	},
	"0230": {
		"id": "0230",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "70"
	},
	"0240": {
		"id": "0240",
		"DiameterInches": "13",
		"WidthMM": "185",
		"Profile": "70"
	},
	"0250": {
		"id": "0250",
		"DiameterInches": "14",
		"WidthMM": "145",
		"Profile": "75"
	},
	"0260": {
		"id": "0260",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "55"
	},
	"0270": {
		"id": "0270",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "60"
	},
	"0280": {
		"id": "0280",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "65"
	},
	"0290": {
		"id": "0290",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "50"
	},
	"0300": {
		"id": "0300",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "55"
	},
	"0310": {
		"id": "0310",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "60"
	},
	"0320": {
		"id": "0320",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "65"
	},
	"0330": {
		"id": "0330",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "70"
	},
	"0340": {
		"id": "0340",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "75"
	},
	"0350": {
		"id": "0350",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "50"
	},
	"0360": {
		"id": "0360",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "60"
	},
	"0370": {
		"id": "0370",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "65"
	},
	"0380": {
		"id": "0380",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "55"
	},
	"0390": {
		"id": "0390",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "60"
	},
	"0400": {
		"id": "0400",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "65"
	},
	"0410": {
		"id": "0410",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "70"
	},
	"0420": {
		"id": "0420",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "55"
	},
	"0430": {
		"id": "0430",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "60"
	},
	"0440": {
		"id": "0440",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "65"
	},
	"0450": {
		"id": "0450",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "70"
	},
	"0460": {
		"id": "0460",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "60"
	},
	"0470": {
		"id": "0470",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "65"
	},
	"0480": {
		"id": "0480",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "70"
	},
	"0490": {
		"id": "0490",
		"DiameterInches": "14",
		"WidthMM": "215",
		"Profile": "60"
	},
	"0500": {
		"id": "0500",
		"DiameterInches": "14",
		"WidthMM": "215",
		"Profile": "70"
	},
	"0510": {
		"id": "0510",
		"DiameterInches": "14",
		"WidthMM": "235",
		"Profile": "55"
	},
	"0520": {
		"id": "0520",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "50"
	},
	"0530": {
		"id": "0530",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "55"
	},
	"0540": {
		"id": "0540",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "65"
	},
	"0550": {
		"id": "0550",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "70"
	},
	"0560": {
		"id": "0560",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "50"
	},
	"0570": {
		"id": "0570",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "55"
	},
	"0580": {
		"id": "0580",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "60"
	},
	"0590": {
		"id": "0590",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "65"
	},
	"0600": {
		"id": "0600",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "80"
	},
	"0610": {
		"id": "0610",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "50"
	},
	"0620": {
		"id": "0620",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "55"
	},
	"0630": {
		"id": "0630",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "60"
	},
	"0640": {
		"id": "0640",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "50"
	},
	"0650": {
		"id": "0650",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "55"
	},
	"0660": {
		"id": "0660",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "60"
	},
	"0670": {
		"id": "0670",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "65"
	},
	"0680": {
		"id": "0680",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "70"
	},
	"0690": {
		"id": "0690",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "50"
	},
	"0700": {
		"id": "0700",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "55"
	},
	"0710": {
		"id": "0710",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "60"
	},
	"0720": {
		"id": "0720",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "65"
	},
	"0730": {
		"id": "0730",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "50"
	},
	"0740": {
		"id": "0740",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "55"
	},
	"0750": {
		"id": "0750",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "60"
	},
	"0760": {
		"id": "0760",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "65"
	},
	"0770": {
		"id": "0770",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "50"
	},
	"0780": {
		"id": "0780",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "55"
	},
	"0790": {
		"id": "0790",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "60"
	},
	"0800": {
		"id": "0800",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "65"
	},
	"0810": {
		"id": "0810",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "70"
	},
	"0820": {
		"id": "0820",
		"DiameterInches": "15",
		"WidthMM": "235",
		"Profile": "70"
	},
	"0830": {
		"id": "0830",
		"DiameterInches": "15",
		"WidthMM": "245",
		"Profile": "45"
	},
	"0840": {
		"id": "0840",
		"DiameterInches": "15",
		"WidthMM": "245",
		"Profile": "50"
	},
	"0850": {
		"id": "0850",
		"DiameterInches": "15",
		"WidthMM": "255",
		"Profile": "55"
	},
	"0860": {
		"id": "0860",
		"DiameterInches": "15",
		"WidthMM": "285",
		"Profile": "50"
	},
	"0870": {
		"id": "0870",
		"DiameterInches": "15",
		"WidthMM": "355",
		"Profile": "40"
	},
	"0880": {
		"id": "0880",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "50"
	},
	"0890": {
		"id": "0890",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "55"
	},
	"0900": {
		"id": "0900",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "60"
	},
	"0910": {
		"id": "0910",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "65"
	},
	"0920": {
		"id": "0920",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "55"
	},
	"0930": {
		"id": "0930",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "60"
	},
	"0940": {
		"id": "0940",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "75"
	},
	"0950": {
		"id": "0950",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "45"
	},
	"0960": {
		"id": "0960",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "50"
	},
	"0970": {
		"id": "0970",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "55"
	},
	"0980": {
		"id": "0980",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "60"
	},
	"0990": {
		"id": "0990",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "65"
	},
	"1000": {
		"id": "1000",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "45"
	},
	"1010": {
		"id": "1010",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "50"
	},
	"1020": {
		"id": "1020",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "55"
	},
	"1030": {
		"id": "1030",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "60"
	},
	"1040": {
		"id": "1040",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "65"
	},
	"1050": {
		"id": "1050",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "45"
	},
	"1060": {
		"id": "1060",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "50"
	},
	"1070": {
		"id": "1070",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "55"
	},
	"1080": {
		"id": "1080",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "60"
	},
	"1090": {
		"id": "1090",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "40"
	},
	"1100": {
		"id": "1100",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "45"
	},
	"1110": {
		"id": "1110",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "50"
	},
	"1120": {
		"id": "1120",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "55"
	},
	"1130": {
		"id": "1130",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "60"
	},
	"1140": {
		"id": "1140",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "45"
	},
	"1150": {
		"id": "1150",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "50"
	},
	"1160": {
		"id": "1160",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "55"
	},
	"1170": {
		"id": "1170",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "60"
	},
	"1180": {
		"id": "1180",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "65"
	},
	"1190": {
		"id": "1190",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "45"
	},
	"1200": {
		"id": "1200",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "50"
	},
	"1210": {
		"id": "1210",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "65"
	},
	"1220": {
		"id": "1220",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "40"
	},
	"1230": {
		"id": "1230",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "45"
	},
	"1240": {
		"id": "1240",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "50"
	},
	"1250": {
		"id": "1250",
		"DiameterInches": "16",
		"WidthMM": "265",
		"Profile": "50"
	},
	"1260": {
		"id": "1260",
		"DiameterInches": "16",
		"WidthMM": "285",
		"Profile": "40"
	},
	"1270": {
		"id": "1270",
		"DiameterInches": "16",
		"WidthMM": "295",
		"Profile": "45"
	},
	"1280": {
		"id": "1280",
		"DiameterInches": "16",
		"WidthMM": "315",
		"Profile": "40"
	},
	"1290": {
		"id": "1290",
		"DiameterInches": "16",
		"WidthMM": "355",
		"Profile": "40"
	},
	"1300": {
		"id": "1300",
		"DiameterInches": "16",
		"WidthMM": "365",
		"Profile": "35"
	},
	"1310": {
		"id": "1310",
		"DiameterInches": "17",
		"WidthMM": "145",
		"Profile": "60"
	},
	"1320": {
		"id": "1320",
		"DiameterInches": "17",
		"WidthMM": "185",
		"Profile": "50"
	},
	"1330": {
		"id": "1330",
		"DiameterInches": "17",
		"WidthMM": "195",
		"Profile": "50"
	},
	"1340": {
		"id": "1340",
		"DiameterInches": "17",
		"WidthMM": "195",
		"Profile": "55"
	},
	"1350": {
		"id": "1350",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "45"
	},
	"1360": {
		"id": "1360",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "50"
	},
	"1370": {
		"id": "1370",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "55"
	},
	"1380": {
		"id": "1380",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "60"
	},
	"1390": {
		"id": "1390",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "40"
	},
	"1400": {
		"id": "1400",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "45"
	},
	"1410": {
		"id": "1410",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "50"
	},
	"1420": {
		"id": "1420",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "55"
	},
	"1430": {
		"id": "1430",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "40"
	},
	"1440": {
		"id": "1440",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "45"
	},
	"1450": {
		"id": "1450",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "50"
	},
	"1460": {
		"id": "1460",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "55"
	},
	"1470": {
		"id": "1470",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "35"
	},
	"1480": {
		"id": "1480",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "40"
	},
	"1490": {
		"id": "1490",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "45"
	},
	"1500": {
		"id": "1500",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "50"
	},
	"1510": {
		"id": "1510",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "55"
	},
	"1520": {
		"id": "1520",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "40"
	},
	"1530": {
		"id": "1530",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "45"
	},
	"1540": {
		"id": "1540",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "50"
	},
	"1550": {
		"id": "1550",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "55"
	},
	"1560": {
		"id": "1560",
		"DiameterInches": "17",
		"WidthMM": "255",
		"Profile": "40"
	},
	"1570": {
		"id": "1570",
		"DiameterInches": "17",
		"WidthMM": "255",
		"Profile": "45"
	},
	"1580": {
		"id": "1580",
		"DiameterInches": "17",
		"WidthMM": "265",
		"Profile": "40"
	},
	"1590": {
		"id": "1590",
		"DiameterInches": "17",
		"WidthMM": "265",
		"Profile": "45"
	},
	"1600": {
		"id": "1600",
		"DiameterInches": "17",
		"WidthMM": "275",
		"Profile": "40"
	},
	"1610": {
		"id": "1610",
		"DiameterInches": "17",
		"WidthMM": "285",
		"Profile": "40"
	},
	"1620": {
		"id": "1620",
		"DiameterInches": "17",
		"WidthMM": "285",
		"Profile": "60"
	},
	"1630": {
		"id": "1630",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "35"
	},
	"1640": {
		"id": "1640",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "40"
	},
	"1650": {
		"id": "1650",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "45"
	},
	"1660": {
		"id": "1660",
		"DiameterInches": "17",
		"WidthMM": "315",
		"Profile": "35"
	},
	"1670": {
		"id": "1670",
		"DiameterInches": "17",
		"WidthMM": "325",
		"Profile": "35"
	},
	"1680": {
		"id": "1680",
		"DiameterInches": "17",
		"WidthMM": "335",
		"Profile": "35"
	},
	"1690": {
		"id": "1690",
		"DiameterInches": "17",
		"WidthMM": "365",
		"Profile": "35"
	},
	"1700": {
		"id": "1700",
		"DiameterInches": "18",
		"WidthMM": "155",
		"Profile": "55"
	},
	"1710": {
		"id": "1710",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "40"
	},
	"1720": {
		"id": "1720",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "45"
	},
	"1730": {
		"id": "1730",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "50"
	},
	"1740": {
		"id": "1740",
		"DiameterInches": "18",
		"WidthMM": "225",
		"Profile": "40"
	},
	"1750": {
		"id": "1750",
		"DiameterInches": "18",
		"WidthMM": "225",
		"Profile": "45"
	},
	"1760": {
		"id": "1760",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "40"
	},
	"1770": {
		"id": "1770",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "45"
	},
	"1780": {
		"id": "1780",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "60"
	},
	"1790": {
		"id": "1790",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "35"
	},
	"1800": {
		"id": "1800",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "40"
	},
	"1810": {
		"id": "1810",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "45"
	},
	"1820": {
		"id": "1820",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "35"
	},
	"1830": {
		"id": "1830",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "40"
	},
	"1840": {
		"id": "1840",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "45"
	},
	"1850": {
		"id": "1850",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "40"
	},
	"1860": {
		"id": "1860",
		"DiameterInches": "18",
		"WidthMM": "265",
		"Profile": "35"
	},
	"1870": {
		"id": "1870",
		"DiameterInches": "18",
		"WidthMM": "265",
		"Profile": "40"
	},
	"1880": {
		"id": "1880",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "35"
	},
	"1890": {
		"id": "1890",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "40"
	},
	"1900": {
		"id": "1900",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "35"
	},
	"1910": {
		"id": "1910",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "35"
	},
	"1920": {
		"id": "1920",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "40"
	},
	"1930": {
		"id": "1930",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "45"
	},
	"1940": {
		"id": "1940",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "35"
	},
	"1950": {
		"id": "1950",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "40"
	},
	"1960": {
		"id": "1960",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "55"
	},
	"1970": {
		"id": "1970",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "40"
	},
	"1980": {
		"id": "1980",
		"DiameterInches": "18",
		"WidthMM": "305",
		"Profile": "35"
	},
	"1990": {
		"id": "1990",
		"DiameterInches": "18",
		"WidthMM": "305",
		"Profile": "40"
	},
	"2000": {
		"id": "2000",
		"DiameterInches": "18",
		"WidthMM": "315",
		"Profile": "40"
	},
	"2010": {
		"id": "2010",
		"DiameterInches": "18",
		"WidthMM": "325",
		"Profile": "30"
	},
	"2020": {
		"id": "2020",
		"DiameterInches": "18",
		"WidthMM": "325",
		"Profile": "40"
	},
	"2030": {
		"id": "2030",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "30"
	},
	"2040": {
		"id": "2040",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "35"
	},
	"2050": {
		"id": "2050",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "40"
	},
	"2060": {
		"id": "2060",
		"DiameterInches": "18",
		"WidthMM": "345",
		"Profile": "30"
	},
	"2070": {
		"id": "2070",
		"DiameterInches": "18",
		"WidthMM": "345",
		"Profile": "35"
	},
	"2080": {
		"id": "2080",
		"DiameterInches": "18",
		"WidthMM": "355",
		"Profile": "35"
	},
	"2090": {
		"id": "2090",
		"DiameterInches": "19",
		"WidthMM": "245",
		"Profile": "35"
	},
	"2100": {
		"id": "2100",
		"DiameterInches": "19",
		"WidthMM": "275",
		"Profile": "30"
	},
	"2110": {
		"id": "2110",
		"DiameterInches": "19",
		"WidthMM": "285",
		"Profile": "30"
	},
	"2120": {
		"id": "2120",
		"DiameterInches": "19",
		"WidthMM": "295",
		"Profile": "35"
	},
	"2130": {
		"id": "2130",
		"DiameterInches": "19",
		"WidthMM": "335",
		"Profile": "30"
	},
	"2140": {
		"id": "2140",
		"DiameterInches": "20",
		"WidthMM": "225",
		"Profile": "40"
	},
	"2150": {
		"id": "2150",
		"DiameterInches": "22",
		"WidthMM": "245",
		"Profile": "55"
	},
	"2160": {
		"id": "2160",
		"DiameterInches": "19",
		"WidthMM": "235",
		"Profile": "35"
	},
	"2170": {
		"id": "2170",
		"DiameterInches": "10",
		"WidthMM": "135",
		"Profile": "75"
	},
	"2180": {
		"id": "2180",
		"DiameterInches": "10",
		"WidthMM": "145",
		"Profile": "95"
	},
	"2190": {
		"id": "2190",
		"DiameterInches": "11",
		"WidthMM": "145",
		"Profile": "70"
	},
	"2200": {
		"id": "2200",
		"DiameterInches": "11",
		"WidthMM": "155",
		"Profile": "90"
	},
	"2210": {
		"id": "2210",
		"DiameterInches": "12",
		"WidthMM": "135",
		"Profile": "60"
	},
	"2220": {
		"id": "2220",
		"DiameterInches": "12",
		"WidthMM": "135",
		"Profile": "70"
	},
	"2230": {
		"id": "2230",
		"DiameterInches": "12",
		"WidthMM": "145",
		"Profile": "70"
	},
	"2240": {
		"id": "2240",
		"DiameterInches": "12",
		"WidthMM": "145",
		"Profile": "80"
	},
	"2250": {
		"id": "2250",
		"DiameterInches": "13",
		"WidthMM": "135",
		"Profile": "80"
	},
	"2260": {
		"id": "2260",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "55"
	},
	"2270": {
		"id": "2270",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "65"
	},
	"2280": {
		"id": "2280",
		"DiameterInches": "13",
		"WidthMM": "145",
		"Profile": "70"
	},
	"2290": {
		"id": "2290",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "55"
	},
	"2300": {
		"id": "2300",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "60"
	},
	"2310": {
		"id": "2310",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "65"
	},
	"2320": {
		"id": "2320",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "70"
	},
	"2330": {
		"id": "2330",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "75"
	},
	"2340": {
		"id": "2340",
		"DiameterInches": "13",
		"WidthMM": "155",
		"Profile": "80"
	},
	"2350": {
		"id": "2350",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "55"
	},
	"2360": {
		"id": "2360",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "65"
	},
	"2370": {
		"id": "2370",
		"DiameterInches": "13",
		"WidthMM": "165",
		"Profile": "70"
	},
	"2380": {
		"id": "2380",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "60"
	},
	"2390": {
		"id": "2390",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "65"
	},
	"2400": {
		"id": "2400",
		"DiameterInches": "13",
		"WidthMM": "175",
		"Profile": "70"
	},
	"2410": {
		"id": "2410",
		"DiameterInches": "13",
		"WidthMM": "185",
		"Profile": "70"
	},
	"2420": {
		"id": "2420",
		"DiameterInches": "14",
		"WidthMM": "145",
		"Profile": "75"
	},
	"2430": {
		"id": "2430",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "55"
	},
	"2440": {
		"id": "2440",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "60"
	},
	"2450": {
		"id": "2450",
		"DiameterInches": "14",
		"WidthMM": "155",
		"Profile": "65"
	},
	"2460": {
		"id": "2460",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "50"
	},
	"2470": {
		"id": "2470",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "55"
	},
	"2480": {
		"id": "2480",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "60"
	},
	"2490": {
		"id": "2490",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "65"
	},
	"2500": {
		"id": "2500",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "70"
	},
	"2510": {
		"id": "2510",
		"DiameterInches": "14",
		"WidthMM": "165",
		"Profile": "75"
	},
	"2520": {
		"id": "2520",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "50"
	},
	"2530": {
		"id": "2530",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "60"
	},
	"2540": {
		"id": "2540",
		"DiameterInches": "14",
		"WidthMM": "175",
		"Profile": "65"
	},
	"2550": {
		"id": "2550",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "55"
	},
	"2560": {
		"id": "2560",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "60"
	},
	"2570": {
		"id": "2570",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "65"
	},
	"2580": {
		"id": "2580",
		"DiameterInches": "14",
		"WidthMM": "185",
		"Profile": "70"
	},
	"2590": {
		"id": "2590",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "55"
	},
	"2600": {
		"id": "2600",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "60"
	},
	"2610": {
		"id": "2610",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "65"
	},
	"2620": {
		"id": "2620",
		"DiameterInches": "14",
		"WidthMM": "195",
		"Profile": "70"
	},
	"2630": {
		"id": "2630",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "60"
	},
	"2640": {
		"id": "2640",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "65"
	},
	"2650": {
		"id": "2650",
		"DiameterInches": "14",
		"WidthMM": "205",
		"Profile": "70"
	},
	"2660": {
		"id": "2660",
		"DiameterInches": "14",
		"WidthMM": "215",
		"Profile": "60"
	},
	"2670": {
		"id": "2670",
		"DiameterInches": "14",
		"WidthMM": "215",
		"Profile": "70"
	},
	"2680": {
		"id": "2680",
		"DiameterInches": "14",
		"WidthMM": "235",
		"Profile": "55"
	},
	"2690": {
		"id": "2690",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "50"
	},
	"2700": {
		"id": "2700",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "55"
	},
	"2710": {
		"id": "2710",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "65"
	},
	"2720": {
		"id": "2720",
		"DiameterInches": "15",
		"WidthMM": "165",
		"Profile": "70"
	},
	"2730": {
		"id": "2730",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "50"
	},
	"2740": {
		"id": "2740",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "55"
	},
	"2750": {
		"id": "2750",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "60"
	},
	"2760": {
		"id": "2760",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "65"
	},
	"2770": {
		"id": "2770",
		"DiameterInches": "15",
		"WidthMM": "175",
		"Profile": "80"
	},
	"2780": {
		"id": "2780",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "50"
	},
	"2790": {
		"id": "2790",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "55"
	},
	"2800": {
		"id": "2800",
		"DiameterInches": "15",
		"WidthMM": "185",
		"Profile": "60"
	},
	"2810": {
		"id": "2810",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "50"
	},
	"2820": {
		"id": "2820",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "55"
	},
	"2830": {
		"id": "2830",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "60"
	},
	"2840": {
		"id": "2840",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "65"
	},
	"2850": {
		"id": "2850",
		"DiameterInches": "15",
		"WidthMM": "195",
		"Profile": "70"
	},
	"2860": {
		"id": "2860",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "50"
	},
	"2870": {
		"id": "2870",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "55"
	},
	"2880": {
		"id": "2880",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "60"
	},
	"2890": {
		"id": "2890",
		"DiameterInches": "15",
		"WidthMM": "205",
		"Profile": "65"
	},
	"2900": {
		"id": "2900",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "50"
	},
	"2910": {
		"id": "2910",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "55"
	},
	"2920": {
		"id": "2920",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "60"
	},
	"2930": {
		"id": "2930",
		"DiameterInches": "15",
		"WidthMM": "215",
		"Profile": "65"
	},
	"2940": {
		"id": "2940",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "50"
	},
	"2950": {
		"id": "2950",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "55"
	},
	"2960": {
		"id": "2960",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "60"
	},
	"2970": {
		"id": "2970",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "65"
	},
	"2980": {
		"id": "2980",
		"DiameterInches": "15",
		"WidthMM": "225",
		"Profile": "70"
	},
	"2990": {
		"id": "2990",
		"DiameterInches": "15",
		"WidthMM": "235",
		"Profile": "70"
	},
	"3000": {
		"id": "3000",
		"DiameterInches": "15",
		"WidthMM": "245",
		"Profile": "45"
	},
	"3010": {
		"id": "3010",
		"DiameterInches": "15",
		"WidthMM": "245",
		"Profile": "50"
	},
	"3020": {
		"id": "3020",
		"DiameterInches": "15",
		"WidthMM": "255",
		"Profile": "55"
	},
	"3030": {
		"id": "3030",
		"DiameterInches": "15",
		"WidthMM": "285",
		"Profile": "50"
	},
	"3040": {
		"id": "3040",
		"DiameterInches": "15",
		"WidthMM": "355",
		"Profile": "40"
	},
	"3050": {
		"id": "3050",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "50"
	},
	"3060": {
		"id": "3060",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "55"
	},
	"3070": {
		"id": "3070",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "60"
	},
	"3080": {
		"id": "3080",
		"DiameterInches": "16",
		"WidthMM": "175",
		"Profile": "65"
	},
	"3090": {
		"id": "3090",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "55"
	},
	"3100": {
		"id": "3100",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "60"
	},
	"3110": {
		"id": "3110",
		"DiameterInches": "16",
		"WidthMM": "185",
		"Profile": "75"
	},
	"3120": {
		"id": "3120",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "45"
	},
	"3130": {
		"id": "3130",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "50"
	},
	"3140": {
		"id": "3140",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "55"
	},
	"3150": {
		"id": "3150",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "60"
	},
	"3160": {
		"id": "3160",
		"DiameterInches": "16",
		"WidthMM": "195",
		"Profile": "65"
	},
	"3170": {
		"id": "3170",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "45"
	},
	"3180": {
		"id": "3180",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "50"
	},
	"3190": {
		"id": "3190",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "55"
	},
	"3200": {
		"id": "3200",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "60"
	},
	"3210": {
		"id": "3210",
		"DiameterInches": "16",
		"WidthMM": "205",
		"Profile": "65"
	},
	"3220": {
		"id": "3220",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "45"
	},
	"3230": {
		"id": "3230",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "50"
	},
	"3240": {
		"id": "3240",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "55"
	},
	"3250": {
		"id": "3250",
		"DiameterInches": "16",
		"WidthMM": "215",
		"Profile": "60"
	},
	"3260": {
		"id": "3260",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "40"
	},
	"3270": {
		"id": "3270",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "45"
	},
	"3280": {
		"id": "3280",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "50"
	},
	"3290": {
		"id": "3290",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "55"
	},
	"3300": {
		"id": "3300",
		"DiameterInches": "16",
		"WidthMM": "225",
		"Profile": "60"
	},
	"3310": {
		"id": "3310",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "45"
	},
	"3320": {
		"id": "3320",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "50"
	},
	"3330": {
		"id": "3330",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "55"
	},
	"3340": {
		"id": "3340",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "60"
	},
	"3350": {
		"id": "3350",
		"DiameterInches": "16",
		"WidthMM": "235",
		"Profile": "65"
	},
	"3360": {
		"id": "3360",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "45"
	},
	"3370": {
		"id": "3370",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "50"
	},
	"3380": {
		"id": "3380",
		"DiameterInches": "16",
		"WidthMM": "245",
		"Profile": "65"
	},
	"3390": {
		"id": "3390",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "40"
	},
	"3400": {
		"id": "3400",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "45"
	},
	"3410": {
		"id": "3410",
		"DiameterInches": "16",
		"WidthMM": "255",
		"Profile": "50"
	},
	"3420": {
		"id": "3420",
		"DiameterInches": "16",
		"WidthMM": "265",
		"Profile": "50"
	},
	"3430": {
		"id": "3430",
		"DiameterInches": "16",
		"WidthMM": "285",
		"Profile": "40"
	},
	"3440": {
		"id": "3440",
		"DiameterInches": "16",
		"WidthMM": "295",
		"Profile": "45"
	},
	"3450": {
		"id": "3450",
		"DiameterInches": "16",
		"WidthMM": "315",
		"Profile": "40"
	},
	"3460": {
		"id": "3460",
		"DiameterInches": "16",
		"WidthMM": "355",
		"Profile": "40"
	},
	"3470": {
		"id": "3470",
		"DiameterInches": "16",
		"WidthMM": "365",
		"Profile": "35"
	},
	"3480": {
		"id": "3480",
		"DiameterInches": "17",
		"WidthMM": "145",
		"Profile": "60"
	},
	"3490": {
		"id": "3490",
		"DiameterInches": "17",
		"WidthMM": "185",
		"Profile": "50"
	},
	"3500": {
		"id": "3500",
		"DiameterInches": "17",
		"WidthMM": "195",
		"Profile": "50"
	},
	"3510": {
		"id": "3510",
		"DiameterInches": "17",
		"WidthMM": "195",
		"Profile": "55"
	},
	"3520": {
		"id": "3520",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "45"
	},
	"3530": {
		"id": "3530",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "50"
	},
	"3540": {
		"id": "3540",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "55"
	},
	"3550": {
		"id": "3550",
		"DiameterInches": "17",
		"WidthMM": "205",
		"Profile": "60"
	},
	"3560": {
		"id": "3560",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "40"
	},
	"3570": {
		"id": "3570",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "45"
	},
	"3580": {
		"id": "3580",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "50"
	},
	"3590": {
		"id": "3590",
		"DiameterInches": "17",
		"WidthMM": "215",
		"Profile": "55"
	},
	"3600": {
		"id": "3600",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "40"
	},
	"3610": {
		"id": "3610",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "45"
	},
	"3620": {
		"id": "3620",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "50"
	},
	"3630": {
		"id": "3630",
		"DiameterInches": "17",
		"WidthMM": "225",
		"Profile": "55"
	},
	"3640": {
		"id": "3640",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "35"
	},
	"3650": {
		"id": "3650",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "40"
	},
	"3660": {
		"id": "3660",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "45"
	},
	"3670": {
		"id": "3670",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "50"
	},
	"3680": {
		"id": "3680",
		"DiameterInches": "17",
		"WidthMM": "235",
		"Profile": "55"
	},
	"3690": {
		"id": "3690",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "40"
	},
	"3700": {
		"id": "3700",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "45"
	},
	"3710": {
		"id": "3710",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "50"
	},
	"3720": {
		"id": "3720",
		"DiameterInches": "17",
		"WidthMM": "245",
		"Profile": "55"
	},
	"3730": {
		"id": "3730",
		"DiameterInches": "17",
		"WidthMM": "255",
		"Profile": "40"
	},
	"3740": {
		"id": "3740",
		"DiameterInches": "17",
		"WidthMM": "255",
		"Profile": "45"
	},
	"3750": {
		"id": "3750",
		"DiameterInches": "17",
		"WidthMM": "265",
		"Profile": "40"
	},
	"3760": {
		"id": "3760",
		"DiameterInches": "17",
		"WidthMM": "265",
		"Profile": "45"
	},
	"3770": {
		"id": "3770",
		"DiameterInches": "17",
		"WidthMM": "275",
		"Profile": "40"
	},
	"3780": {
		"id": "3780",
		"DiameterInches": "17",
		"WidthMM": "285",
		"Profile": "40"
	},
	"3790": {
		"id": "3790",
		"DiameterInches": "17",
		"WidthMM": "285",
		"Profile": "60"
	},
	"3800": {
		"id": "3800",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "35"
	},
	"3810": {
		"id": "3810",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "40"
	},
	"3820": {
		"id": "3820",
		"DiameterInches": "17",
		"WidthMM": "295",
		"Profile": "45"
	},
	"3830": {
		"id": "3830",
		"DiameterInches": "17",
		"WidthMM": "315",
		"Profile": "35"
	},
	"3840": {
		"id": "3840",
		"DiameterInches": "17",
		"WidthMM": "325",
		"Profile": "35"
	},
	"3850": {
		"id": "3850",
		"DiameterInches": "17",
		"WidthMM": "335",
		"Profile": "35"
	},
	"3860": {
		"id": "3860",
		"DiameterInches": "17",
		"WidthMM": "365",
		"Profile": "35"
	},
	"3870": {
		"id": "3870",
		"DiameterInches": "18",
		"WidthMM": "155",
		"Profile": "55"
	},
	"3880": {
		"id": "3880",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "40"
	},
	"3890": {
		"id": "3890",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "45"
	},
	"3900": {
		"id": "3900",
		"DiameterInches": "18",
		"WidthMM": "215",
		"Profile": "50"
	},
	"3910": {
		"id": "3910",
		"DiameterInches": "18",
		"WidthMM": "225",
		"Profile": "40"
	},
	"3920": {
		"id": "3920",
		"DiameterInches": "18",
		"WidthMM": "225",
		"Profile": "45"
	},
	"3930": {
		"id": "3930",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "40"
	},
	"3940": {
		"id": "3940",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "45"
	},
	"3950": {
		"id": "3950",
		"DiameterInches": "18",
		"WidthMM": "235",
		"Profile": "60"
	},
	"3960": {
		"id": "3960",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "35"
	},
	"3970": {
		"id": "3970",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "40"
	},
	"3980": {
		"id": "3980",
		"DiameterInches": "18",
		"WidthMM": "245",
		"Profile": "45"
	},
	"3990": {
		"id": "3990",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "35"
	},
	"4000": {
		"id": "4000",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "40"
	},
	"4010": {
		"id": "4010",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "45"
	},
	"4020": {
		"id": "4020",
		"DiameterInches": "18",
		"WidthMM": "255",
		"Profile": "40"
	},
	"4030": {
		"id": "4030",
		"DiameterInches": "18",
		"WidthMM": "265",
		"Profile": "35"
	},
	"4040": {
		"id": "4040",
		"DiameterInches": "18",
		"WidthMM": "265",
		"Profile": "40"
	},
	"4050": {
		"id": "4050",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "35"
	},
	"4060": {
		"id": "4060",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "40"
	},
	"4070": {
		"id": "4070",
		"DiameterInches": "18",
		"WidthMM": "275",
		"Profile": "35"
	},
	"4080": {
		"id": "4080",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "35"
	},
	"4090": {
		"id": "4090",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "40"
	},
	"4100": {
		"id": "4100",
		"DiameterInches": "18",
		"WidthMM": "285",
		"Profile": "45"
	},
	"4110": {
		"id": "4110",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "35"
	},
	"4120": {
		"id": "4120",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "40"
	},
	"4130": {
		"id": "4130",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "55"
	},
	"4140": {
		"id": "4140",
		"DiameterInches": "18",
		"WidthMM": "295",
		"Profile": "40"
	},
	"4150": {
		"id": "4150",
		"DiameterInches": "18",
		"WidthMM": "305",
		"Profile": "35"
	},
	"4160": {
		"id": "4160",
		"DiameterInches": "18",
		"WidthMM": "305",
		"Profile": "40"
	},
	"4170": {
		"id": "4170",
		"DiameterInches": "18",
		"WidthMM": "315",
		"Profile": "40"
	},
	"4180": {
		"id": "4180",
		"DiameterInches": "18",
		"WidthMM": "325",
		"Profile": "30"
	},
	"4190": {
		"id": "4190",
		"DiameterInches": "18",
		"WidthMM": "325",
		"Profile": "40"
	},
	"4200": {
		"id": "4200",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "30"
	},
	"4210": {
		"id": "4210",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "35"
	},
	"4220": {
		"id": "4220",
		"DiameterInches": "18",
		"WidthMM": "335",
		"Profile": "40"
	},
	"4230": {
		"id": "4230",
		"DiameterInches": "18",
		"WidthMM": "345",
		"Profile": "30"
	},
	"4240": {
		"id": "4240",
		"DiameterInches": "18",
		"WidthMM": "345",
		"Profile": "35"
	},
	"4250": {
		"id": "4250",
		"DiameterInches": "18",
		"WidthMM": "355",
		"Profile": "35"
	},
	"4260": {
		"id": "4260",
		"DiameterInches": "19",
		"WidthMM": "245",
		"Profile": "35"
	},
	"4270": {
		"id": "4270",
		"DiameterInches": "19",
		"WidthMM": "275",
		"Profile": "30"
	},
	"4280": {
		"id": "4280",
		"DiameterInches": "19",
		"WidthMM": "285",
		"Profile": "30"
	},
	"4290": {
		"id": "4290",
		"DiameterInches": "19",
		"WidthMM": "295",
		"Profile": "35"
	},
	"4300": {
		"id": "4300",
		"DiameterInches": "19",
		"WidthMM": "335",
		"Profile": "30"
	},
	"4310": {
		"id": "4310",
		"DiameterInches": "20",
		"WidthMM": "225",
		"Profile": "40"
	},
	"4320": {
		"id": "4320",
		"DiameterInches": "22",
		"WidthMM": "245",
		"Profile": "55"
	},
	"4330": {
		"id": "4330",
		"DiameterInches": "19",
		"WidthMM": "235",
		"Profile": "35"
	}
}

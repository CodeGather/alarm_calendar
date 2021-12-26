/* 
 * @Author: 21克的爱情
 * @Date: 2021-12-25 14:30:42
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2021-12-26 11:16:13
 * @Description: TimeZone 代码查询表
 */
class TimeZone extends Africa with America,Antarctica,Asia,Atlantic,Australia,Canada,Etc,Europe,Indian,Pacific,US{
  /**
   *
  名称：西部标准时间 (澳大利亚) -> 代码：Antarctica/Casey -> 时差：28800000
  名称：戴维斯时间 -> 代码：Antarctica/Davis -> 时差：25200000
  名称：Dumont-d'Urville 时间 -> 代码：Antarctica/DumontDUrville -> 时差：36000000
  名称：麦夸里岛时间 -> 代码：Antarctica/Macquarie -> 时差：39600000
  名称：莫森时间 -> 代码：Antarctica/Mawson -> 时差：18000000
  名称：新西兰标准时间 -> 代码：Antarctica/McMurdo -> 时差：43200000
  名称：智利时间 -> 代码：Antarctica/Palmer -> 时差：-10800000
  名称：罗瑟拉时间 -> 代码：Antarctica/Rothera -> 时差：-10800000
  名称：新西兰标准时间 -> 代码：Antarctica/South_Pole -> 时差：43200000
  名称：Syowa 时间 -> 代码：Antarctica/Syowa -> 时差：10800000
  名称：协调世界时间 -> 代码：Antarctica/Troll -> 时差：0
  名称：莫斯托克时间 -> 代码：Antarctica/Vostok -> 时差：21600000
  名称：中欧时间 -> 代码：Arctic/Longyearbyen -> 时差：3600000
  名称：阿拉伯标准时间 -> 代码：Asia/Aden -> 时差：10800000
  名称：Alma-Ata 时间 -> 代码：Asia/Almaty -> 时差：21600000
  名称：东欧时间 -> 代码：Asia/Amman -> 时差：7200000
  名称：阿那底河时间 -> 代码：Asia/Anadyr -> 时差：43200000
  名称：Aqtau 时间 -> 代码：Asia/Aqtau -> 时差：18000000
  名称：Aqtobe 时间 -> 代码：Asia/Aqtobe -> 时差：18000000
  名称：土库曼时间 -> 代码：Asia/Ashgabat -> 时差：18000000
  名称：土库曼时间 -> 代码：Asia/Ashkhabad -> 时差：18000000
  名称：GMT+05: 00 -> 代码：Asia/Atyrau -> 时差：18000000
  名称：阿拉伯标准时间 -> 代码：Asia/Baghdad -> 时差：10800000
  名称：阿拉伯标准时间 -> 代码：Asia/Bahrain -> 时差：10800000
  名称：亚塞拜然时间 -> 代码：Asia/Baku -> 时差：14400000
  名称：印度支那时间 -> 代码：Asia/Bangkok -> 时差：25200000
  名称：GMT+07: 00 -> 代码：Asia/Barnaul -> 时差：25200000
  名称：东欧时间 -> 代码：Asia/Beirut -> 时差：7200000
  名称：吉尔吉斯斯坦时间 -> 代码：Asia/Bishkek -> 时差：21600000
  名称：文莱时间 -> 代码：Asia/Brunei -> 时差：28800000
  名称：印度标准时间 -> 代码：Asia/Calcutta -> 时差：19800000
  名称：亚库次克时间 -> 代码：Asia/Chita -> 时差：32400000
  名称：Choibalsan 时间 -> 代码：Asia/Choibalsan -> 时差：28800000
  名称：中国标准时间 -> 代码：Asia/Chongqing -> 时差：28800000
  名称：中国标准时间 -> 代码：Asia/Chungking -> 时差：28800000
  名称：印度标准时间 -> 代码：Asia/Colombo -> 时差：19800000
  名称：孟加拉时间 -> 代码：Asia/Dacca -> 时差：21600000
  名称：东欧时间 -> 代码：Asia/Damascus -> 时差：7200000
  名称：孟加拉时间 -> 代码：Asia/Dhaka -> 时差：21600000
  名称：东帝汶时间 -> 代码：Asia/Dili -> 时差：32400000
  名称：波斯湾标准时间 -> 代码：Asia/Dubai -> 时差：14400000
  名称：塔吉克斯坦时间 -> 代码：Asia/Dushanbe -> 时差：18000000
  名称：GMT+02: 00 -> 代码：Asia/Famagusta -> 时差：7200000
  名称：东欧时间 -> 代码：Asia/Gaza -> 时差：7200000
  名称：中国标准时间 -> 代码：Asia/Harbin -> 时差：28800000
  名称：东欧时间 -> 代码：Asia/Hebron -> 时差：7200000
  名称：印度支那时间 -> 代码：Asia/Ho_Chi_Minh -> 时差：25200000
  名称：香港时间 -> 代码：Asia/Hong_Kong -> 时差：28800000
  名称：科布多时间 -> 代码：Asia/Hovd -> 时差：25200000
  名称：伊尔库次克时间 -> 代码：Asia/Irkutsk -> 时差：28800000
  名称：东欧时间 -> 代码：Asia/Istanbul -> 时差：10800000
  名称：西印度尼西亚时间 -> 代码：Asia/Jakarta -> 时差：25200000
  名称：东印度尼西亚时间 -> 代码：Asia/Jayapura -> 时差：32400000
  名称：以色列标准时间 -> 代码：Asia/Jerusalem -> 时差：7200000
  名称：阿富汗时间 -> 代码：Asia/Kabul -> 时差：16200000
  名称：彼得罗巴甫洛夫斯克时间 -> 代码：Asia/Kamchatka -> 时差：43200000
  名称：巴基斯坦时间 -> 代码：Asia/Karachi -> 时差：18000000
  名称：中国标准时间 -> 代码：Asia/Kashgar -> 时差：21600000
  名称：尼泊尔时间 -> 代码：Asia/Kathmandu -> 时差：20700000
  名称：尼泊尔时间 -> 代码：Asia/Katmandu -> 时差：20700000
  名称：亚库次克时间 -> 代码：Asia/Khandyga -> 时差：32400000
  名称：印度标准时间 -> 代码：Asia/Kolkata -> 时差：19800000
  名称：克拉斯诺亚尔斯克时间 -> 代码：Asia/Krasnoyarsk -> 时差：25200000
  名称：马来西亚时间 -> 代码：Asia/Kuala_Lumpur -> 时差：28800000
  名称：马来西亚时间 -> 代码：Asia/Kuching -> 时差：28800000
  名称：阿拉伯标准时间 -> 代码：Asia/Kuwait -> 时差：10800000
  名称：中国标准时间 -> 代码：Asia/Macao -> 时差：28800000
  名称：中国标准时间 -> 代码：Asia/Macau -> 时差：28800000
  名称：Magadan 时间 -> 代码：Asia/Magadan -> 时差：39600000
  名称：中部印度尼西亚时间 -> 代码：Asia/Makassar -> 时差：28800000
  名称：Philippines Standard Time -> 代码：Asia/Manila -> 时差：28800000
  名称：波斯湾标准时间 -> 代码：Asia/Muscat -> 时差：14400000
  名称：东欧时间 -> 代码：Asia/Nicosia -> 时差：7200000
  名称：克拉斯诺亚尔斯克时间 -> 代码：Asia/Novokuznetsk -> 时差：25200000
  名称：Novosibirsk 时间 -> 代码：Asia/Novosibirsk -> 时差：25200000
  名称：鄂木斯克时间 -> 代码：Asia/Omsk -> 时差：21600000
  名称：Oral 时间 -> 代码：Asia/Oral -> 时差：18000000
  名称：印度支那时间 -> 代码：Asia/Phnom_Penh -> 时差：25200000
  名称：西印度尼西亚时间 -> 代码：Asia/Pontianak -> 时差：25200000
  名称：韩国标准时间 -> 代码：Asia/Pyongyang -> 时差：32400000
  名称：阿拉伯标准时间 -> 代码：Asia/Qatar -> 时差：10800000
  名称：Kostanay Standard Time -> 代码：Asia/Qostanay -> 时差：21600000
  名称：Qyzylorda 时间 -> 代码：Asia/Qyzylorda -> 时差：18000000
  名称：缅甸时间 -> 代码：Asia/Rangoon -> 时差：23400000
  名称：阿拉伯标准时间 -> 代码：Asia/Riyadh -> 时差：10800000
  名称：印度支那时间 -> 代码：Asia/Saigon -> 时差：25200000
  名称：库页岛时间 -> 代码：Asia/Sakhalin -> 时差：39600000
  名称：乌兹别克斯坦时间 -> 代码：Asia/Samarkand -> 时差：18000000
  名称：韩国标准时间 -> 代码：Asia/Seoul -> 时差：32400000
  名称：中国标准时间 -> 代码：Asia/Shanghai -> 时差：28800000
  名称：新加坡时间 -> 代码：Asia/Singapore -> 时差：28800000
  名称：Srednekolymsk Time -> 代码：Asia/Srednekolymsk -> 时差：39600000
  名称：中国标准时间 -> 代码：Asia/Taipei -> 时差：28800000
  名称：乌兹别克斯坦时间 -> 代码：Asia/Tashkent -> 时差：18000000
  名称：乔治亚时间 -> 代码：Asia/Tbilisi -> 时差：14400000
  名称：伊朗标准时间 -> 代码：Asia/Tehran -> 时差：12600000
  名称：以色列标准时间 -> 代码：Asia/Tel_Aviv -> 时差：7200000
  名称：不丹时间 -> 代码：Asia/Thimbu -> 时差：21600000
  名称：不丹时间 -> 代码：Asia/Thimphu -> 时差：21600000
  名称：日本标准时间 -> 代码：Asia/Tokyo -> 时差：32400000
  名称：GMT+07: 00 -> 代码：Asia/Tomsk -> 时差：25200000
  名称：中部印度尼西亚时间 -> 代码：Asia/Ujung_Pandang -> 时差：28800000
  名称：库伦时间 -> 代码：Asia/Ulaanbaatar -> 时差：28800000
  名称：库伦时间 -> 代码：Asia/Ulan_Bator -> 时差：28800000
  名称：中国标准时间 -> 代码：Asia/Urumqi -> 时差：21600000
  名称：乌斯季涅拉时间 -> 代码：Asia/Ust-Nera -> 时差：36000000
  名称：印度支那时间 -> 代码：Asia/Vientiane -> 时差：25200000
  名称：海参崴时间 -> 代码：Asia/Vladivostok -> 时差：36000000
  名称：亚库次克时间 -> 代码：Asia/Yakutsk -> 时差：32400000
  名称：缅甸时间 -> 代码：Asia/Yangon -> 时差：23400000
  名称：Yekaterinburg 时间 -> 代码：Asia/Yekaterinburg -> 时差：18000000
  名称：亚美尼亚时间 -> 代码：Asia/Yerevan -> 时差：14400000
  名称：亚速尔群岛时间 -> 代码：Atlantic/Azores -> 时差：-3600000
  名称：大西洋标准时间 -> 代码：Atlantic/Bermuda -> 时差：-14400000
  名称：西欧时间 -> 代码：Atlantic/Canary -> 时差：0
  名称：佛德角时间 -> 代码：Atlantic/Cape_Verde -> 时差：-3600000
  名称：西欧时间 -> 代码：Atlantic/Faeroe -> 时差：0
  名称：西欧时间 -> 代码：Atlantic/Faroe -> 时差：0
  名称：中欧时间 -> 代码：Atlantic/Jan_Mayen -> 时差：3600000
  名称：西欧时间 -> 代码：Atlantic/Madeira -> 时差：0
  名称：格林威治时间 -> 代码：Atlantic/Reykjavik -> 时差：0
  名称：南乔治亚标准时间 -> 代码：Atlantic/South_Georgia -> 时差：-7200000
  名称：格林威治时间 -> 代码：Atlantic/St_Helena -> 时差：0
  名称：福克兰群岛时间 -> 代码：Atlantic/Stanley -> 时差：-10800000
  名称：东部标准时间 (新南威尔斯) -> 代码：Australia/ACT -> 时差：36000000
  名称：中央标准时间 (南澳大利亚) -> 代码：Australia/Adelaide -> 时差：34200000
  名称：东部标准时间 (昆士兰) -> 代码：Australia/Brisbane -> 时差：36000000
  名称：中央标准时间 (南澳大利亚/新南威尔斯) -> 代码：Australia/Broken_Hill -> 时差：34200000
  名称：东部标准时间 (新南威尔斯) -> 代码：Australia/Canberra -> 时差：36000000
  名称：东部标准时间 (新南威尔斯) -> 代码：Australia/Currie -> 时差：36000000
  名称：中央标准时间 (北领地) -> 代码：Australia/Darwin -> 时差：34200000
  名称：中西部标准时间 (澳大利亚) -> 代码：Australia/Eucla -> 时差：31500000
  名称：东部标准时间 (塔斯马尼亚) -> 代码：Australia/Hobart -> 时差：36000000
  名称：豪公标准时间 -> 代码：Australia/LHI -> 时差：37800000
  名称：东部标准时间 (昆士兰) -> 代码：Australia/Lindeman -> 时差：36000000
  名称：豪公标准时间 -> 代码：Australia/Lord_Howe -> 时差：37800000
  名称：东部标准时间 (维多利亚) -> 代码：Australia/Melbourne -> 时差：36000000
  名称：东部标准时间 (新南威尔斯) -> 代码：Australia/NSW -> 时差：36000000
  名称：中央标准时间 (北领地) -> 代码：Australia/North -> 时差：34200000
  名称：西部标准时间 (澳大利亚) -> 代码：Australia/Perth -> 时差：28800000
  名称：东部标准时间 (昆士兰) -> 代码：Australia/Queensland -> 时差：36000000
  名称：中央标准时间 (南澳大利亚) -> 代码：Australia/South -> 时差：34200000
  名称：东部标准时间 (新南威尔斯) -> 代码：Australia/Sydney -> 时差：36000000
  名称：东部标准时间 (塔斯马尼亚) -> 代码：Australia/Tasmania -> 时差：36000000
  名称：东部标准时间 (维多利亚) -> 代码：Australia/Victoria -> 时差：36000000
  名称：西部标准时间 (澳大利亚) -> 代码：Australia/West -> 时差：28800000
  名称：中央标准时间 (南澳大利亚/新南威尔斯) -> 代码：Australia/Yancowinna -> 时差：34200000
  名称：Acre 时间 -> 代码：Brazil/Acre -> 时差：-18000000
  名称：费尔南多德诺罗尼亚时间 -> 代码：Brazil/DeNoronha -> 时差：-7200000
  名称：巴西利亚时间 -> 代码：Brazil/East -> 时差：-10800000
  名称：亚马逊时间 -> 代码：Brazil/West -> 时差：-14400000
  名称：中欧时间 -> 代码：CET -> 时差：3600000
  名称：中央标准时间 -> 代码：CST6CDT -> 时差：-21600000
  名称：大西洋标准时间 -> 代码：Canada/Atlantic -> 时差：-14400000
  名称：中央标准时间 -> 代码：Canada/Central -> 时差：-21600000
  名称：东部标准时间 -> 代码：Canada/Eastern -> 时差：-18000000
  名称：Mountain 标准时间 -> 代码：Canada/Mountain -> 时差：-25200000
  名称：纽芬兰标准时间 -> 代码：Canada/Newfoundland -> 时差：-12600000
  名称：太平洋标准时间 -> 代码：Canada/Pacific -> 时差：-28800000
  名称：中央标准时间 -> 代码：Canada/Saskatchewan -> 时差：-21600000
  名称：太平洋标准时间 -> 代码：Canada/Yukon -> 时差：-28800000
  名称：智利时间 -> 代码：Chile/Continental -> 时差：-14400000
  名称：复活岛时间 -> 代码：Chile/EasterIsland -> 时差：-21600000
  名称：古巴标准时间 -> 代码：Cuba -> 时差：-18000000
  名称：东欧时间 -> 代码：EET -> 时差：7200000
  名称：东部标准时间 -> 代码：EST5EDT -> 时差：-18000000
  名称：东欧时间 -> 代码：Egypt -> 时差：7200000
  名称：格林威治时间 -> 代码：Eire -> 时差：0
  名称：中欧时间 -> 代码：Europe/Amsterdam -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Andorra -> 时差：3600000
  名称：GMT+04: 00 -> 代码：Europe/Astrakhan -> 时差：14400000
  名称：东欧时间 -> 代码：Europe/Athens -> 时差：7200000
  名称：格林威治时间 -> 代码：Europe/Belfast -> 时差：0
  名称：中欧时间 -> 代码：Europe/Belgrade -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Berlin -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Bratislava -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Brussels -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Bucharest -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Budapest -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Busingen -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Chisinau -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Copenhagen -> 时差：3600000
  名称：格林威治时间 -> 代码：Europe/Dublin -> 时差：0
  名称：中欧时间 -> 代码：Europe/Gibraltar -> 时差：3600000
  名称：格林威治时间 -> 代码：Europe/Guernsey -> 时差：0
  名称：东欧时间 -> 代码：Europe/Helsinki -> 时差：7200000
  名称：格林威治时间 -> 代码：Europe/Isle_of_Man -> 时差：0
  名称：东欧时间 -> 代码：Europe/Istanbul -> 时差：10800000
  名称：格林威治时间 -> 代码：Europe/Jersey -> 时差：0
  名称：东欧时间 -> 代码：Europe/Kaliningrad -> 时差：7200000
  名称：东欧时间 -> 代码：Europe/Kiev -> 时差：7200000
  名称：GMT+03: 00 -> 代码：Europe/Kirov -> 时差：10800000
  名称：西欧时间 -> 代码：Europe/Lisbon -> 时差：0
  名称：中欧时间 -> 代码：Europe/Ljubljana -> 时差：3600000
  名称：格林威治时间 -> 代码：Europe/London -> 时差：0
  名称：中欧时间 -> 代码：Europe/Luxembourg -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Madrid -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Malta -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Mariehamn -> 时差：7200000
  名称：莫斯科标准时间 -> 代码：Europe/Minsk -> 时差：10800000
  名称：中欧时间 -> 代码：Europe/Monaco -> 时差：3600000
  名称：莫斯科标准时间 -> 代码：Europe/Moscow -> 时差：10800000
  名称：东欧时间 -> 代码：Europe/Nicosia -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Oslo -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Paris -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Podgorica -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Prague -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Riga -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Rome -> 时差：3600000
  名称：沙马拉时间 -> 代码：Europe/Samara -> 时差：14400000
  名称：中欧时间 -> 代码：Europe/San_Marino -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Sarajevo -> 时差：3600000
  名称：GMT+04: 00 -> 代码：Europe/Saratov -> 时差：14400000
  名称：莫斯科标准时间 -> 代码：Europe/Simferopol -> 时差：10800000
  名称：中欧时间 -> 代码：Europe/Skopje -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Sofia -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Stockholm -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Tallinn -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Tirane -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Tiraspol -> 时差：7200000
  名称：GMT+04: 00 -> 代码：Europe/Ulyanovsk -> 时差：14400000
  名称：东欧时间 -> 代码：Europe/Uzhgorod -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Vaduz -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Vatican -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Vienna -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Vilnius -> 时差：7200000
  名称：莫斯科标准时间 -> 代码：Europe/Volgograd -> 时差：14400000
  名称：中欧时间 -> 代码：Europe/Warsaw -> 时差：3600000
  名称：中欧时间 -> 代码：Europe/Zagreb -> 时差：3600000
  名称：东欧时间 -> 代码：Europe/Zaporozhye -> 时差：7200000
  名称：中欧时间 -> 代码：Europe/Zurich -> 时差：3600000
  名称：格林威治时间 -> 代码：GB -> 时差：0
  名称：格林威治时间 -> 代码：GB-Eire -> 时差：0
  名称：格林威治时间 -> 代码：GMT -> 时差：0
  名称：格林威治时间 -> 代码：GMT0 -> 时差：0
  名称：格林威治时间 -> 代码：Greenwich -> 时差：0
  名称：香港时间 -> 代码：Hongkong -> 时差：28800000
  名称：格林威治时间 -> 代码：Iceland -> 时差：0
  名称：东非时间 -> 代码：Indian/Antananarivo -> 时差：10800000
  名称：印度洋地带时间 -> 代码：Indian/Chagos -> 时差：21600000
  名称：圣诞岛时间 -> 代码：Indian/Christmas -> 时差：25200000
  名称：可可斯群岛时间 -> 代码：Indian/Cocos -> 时差：23400000
  名称：东非时间 -> 代码：Indian/Comoro -> 时差：10800000
  名称：法属南极时间 -> 代码：Indian/Kerguelen -> 时差：18000000
  名称：塞席尔群岛时间 -> 代码：Indian/Mahe -> 时差：14400000
  名称：马尔代夫时间 -> 代码：Indian/Maldives -> 时差：18000000
  名称：摩里西斯时间 -> 代码：Indian/Mauritius -> 时差：14400000
  名称：东非时间 -> 代码：Indian/Mayotte -> 时差：10800000
  名称：留尼旺岛时间 -> 代码：Indian/Reunion -> 时差：14400000
  名称：伊朗标准时间 -> 代码：Iran -> 时差：12600000
  名称：以色列标准时间 -> 代码：Israel -> 时差：7200000
  名称：东部标准时间 -> 代码：Jamaica -> 时差：-18000000
  名称：日本标准时间 -> 代码：Japan -> 时差：32400000
  名称：马绍尔群岛时间 -> 代码：Kwajalein -> 时差：43200000
  名称：东欧时间 -> 代码：Libya -> 时差：7200000
  名称：中欧时间 -> 代码：MET -> 时差：3600000
  名称：Mountain 标准时间 -> 代码：MST7MDT -> 时差：-25200000
  名称：太平洋标准时间 -> 代码：Mexico/BajaNorte -> 时差：-28800000
  名称：Mountain 标准时间 -> 代码：Mexico/BajaSur -> 时差：-25200000
  名称：中央标准时间 -> 代码：Mexico/General -> 时差：-21600000
  名称：新西兰标准时间 -> 代码：NZ -> 时差：43200000
  名称：查萨姆标准时间 -> 代码：NZ-CHAT -> 时差：45900000
  名称：Mountain 标准时间 -> 代码：Navajo -> 时差：-25200000
  名称：中国标准时间 -> 代码：PRC -> 时差：28800000
  名称：太平洋标准时间 -> 代码：PST8PDT -> 时差：-28800000
  名称：西萨摩亚时间 -> 代码：Pacific/Apia -> 时差：46800000
  名称：新西兰标准时间 -> 代码：Pacific/Auckland -> 时差：43200000
  名称：Bougainville Standard Time -> 代码：Pacific/Bougainville -> 时差：39600000
  名称：查萨姆标准时间 -> 代码：Pacific/Chatham -> 时差：45900000
  名称：丘克时间 -> 代码：Pacific/Chuuk -> 时差：36000000
  名称：复活岛时间 -> 代码：Pacific/Easter -> 时差：-21600000
  名称：瓦奴阿图时间 -> 代码：Pacific/Efate -> 时差：39600000
  名称：菲尼克斯群岛时间 -> 代码：Pacific/Enderbury -> 时差：46800000
  名称：托克劳群岛时间 -> 代码：Pacific/Fakaofo -> 时差：46800000
  名称：斐济时间 -> 代码：Pacific/Fiji -> 时差：43200000
  名称：吐鲁瓦时间 -> 代码：Pacific/Funafuti -> 时差：43200000
  名称：加拉巴哥时间 -> 代码：Pacific/Galapagos -> 时差：-21600000
  名称：冈比亚时间 -> 代码：Pacific/Gambier -> 时差：-32400000
  名称：所罗门群岛时间 -> 代码：Pacific/Guadalcanal -> 时差：39600000
  名称：Chamorro 标准时间 -> 代码：Pacific/Guam -> 时差：36000000
  名称：夏威夷标准时间 -> 代码：Pacific/Honolulu -> 时差：-36000000
  名称：夏威夷标准时间 -> 代码：Pacific/Johnston -> 时差：-36000000
  名称：Line 岛时间 -> 代码：Pacific/Kiritimati -> 时差：50400000
  名称：Kosrae 时间 -> 代码：Pacific/Kosrae -> 时差：39600000
  名称：马绍尔群岛时间 -> 代码：Pacific/Kwajalein -> 时差：43200000
  名称：马绍尔群岛时间 -> 代码：Pacific/Majuro -> 时差：43200000
  名称：马克萨斯时间 -> 代码：Pacific/Marquesas -> 时差：-34200000
  名称：萨摩亚群岛标准时间 -> 代码：Pacific/Midway -> 时差：-39600000
  名称：诺鲁时间 -> 代码：Pacific/Nauru -> 时差：43200000
  名称：纽威岛时间 -> 代码：Pacific/Niue -> 时差：-39600000
  名称：诺福克时间 -> 代码：Pacific/Norfolk -> 时差：39600000
  名称：新加勒多尼亚时间 -> 代码：Pacific/Noumea -> 时差：39600000
  名称：萨摩亚群岛标准时间 -> 代码：Pacific/Pago_Pago -> 时差：-39600000
  名称：帛琉时间 -> 代码：Pacific/Palau -> 时差：32400000
  名称：皮特康岛标准时间 -> 代码：Pacific/Pitcairn -> 时差：-28800000
  名称：波纳佩时间 -> 代码：Pacific/Pohnpei -> 时差：39600000
  名称：波纳佩时间 -> 代码：Pacific/Ponape -> 时差：39600000
  名称：巴布亚新几内亚时间 -> 代码：Pacific/Port_Moresby -> 时差：36000000
  名称：库克群岛时间 -> 代码：Pacific/Rarotonga -> 时差：-36000000
  名称：Chamorro 标准时间 -> 代码：Pacific/Saipan -> 时差：36000000
  名称：萨摩亚群岛标准时间 -> 代码：Pacific/Samoa -> 时差：-39600000
  名称：大溪地岛时间 -> 代码：Pacific/Tahiti -> 时差：-36000000
  名称：吉伯特群岛时间 -> 代码：Pacific/Tarawa -> 时差：43200000
  名称：东加时间 -> 代码：Pacific/Tongatapu -> 时差：46800000
  名称：丘克时间 -> 代码：Pacific/Truk -> 时差：36000000
  名称：威克时间 -> 代码：Pacific/Wake -> 时差：43200000
  名称：瓦利斯及福杜纳群岛时间 -> 代码：Pacific/Wallis -> 时差：43200000
  名称：丘克时间 -> 代码：Pacific/Yap -> 时差：36000000
  名称：中欧时间 -> 代码：Poland -> 时差：3600000
  名称：西欧时间 -> 代码：Portugal -> 时差：0
  名称：韩国标准时间 -> 代码：ROK -> 时差：32400000
  名称：新加坡时间 -> 代码：Singapore -> 时差：28800000
  名称：大西洋标准时间 -> 代码：SystemV/AST4 -> 时差：-14400000
  名称：大西洋标准时间 -> 代码：SystemV/AST4ADT -> 时差：-14400000
  名称：中央标准时间 -> 代码：SystemV/CST6 -> 时差：-21600000
  名称：中央标准时间 -> 代码：SystemV/CST6CDT -> 时差：-21600000
  名称：东部标准时间 -> 代码：SystemV/EST5 -> 时差：-18000000
  名称：东部标准时间 -> 代码：SystemV/EST5EDT -> 时差：-18000000
  名称：夏威夷标准时间 -> 代码：SystemV/HST10 -> 时差：-36000000
  名称：Mountain 标准时间 -> 代码：SystemV/MST7 -> 时差：-25200000
  名称：Mountain 标准时间 -> 代码：SystemV/MST7MDT -> 时差：-25200000
  名称：太平洋标准时间 -> 代码：SystemV/PST8 -> 时差：-28800000
  名称：太平洋标准时间 -> 代码：SystemV/PST8PDT -> 时差：-28800000
  名称：阿拉斯加标准时间 -> 代码：SystemV/YST9 -> 时差：-32400000
  名称：阿拉斯加标准时间 -> 代码：SystemV/YST9YDT -> 时差：-32400000
  名称：东欧时间 -> 代码：Turkey -> 时差：10800000
  名称：协调世界时间 -> 代码：UCT -> 时差：0
  名称：阿拉斯加标准时间 -> 代码：US/Alaska -> 时差：-32400000
  名称：夏威夷标准时间 -> 代码：US/Aleutian -> 时差：-36000000
  名称：Mountain 标准时间 -> 代码：US/Arizona -> 时差：-25200000
  名称：中央标准时间 -> 代码：US/Central -> 时差：-21600000
  名称：东部标准时间 -> 代码：US/East-Indiana -> 时差：-18000000
  名称：东部标准时间 -> 代码：US/Eastern -> 时差：-18000000
  名称：夏威夷标准时间 -> 代码：US/Hawaii -> 时差：-36000000
  名称：中央标准时间 -> 代码：US/Indiana-Starke -> 时差：-21600000
  名称：东部标准时间 -> 代码：US/Michigan -> 时差：-18000000
  名称：Mountain 标准时间 -> 代码：US/Mountain -> 时差：-25200000
  名称：太平洋标准时间 -> 代码：US/Pacific -> 时差：-28800000
  名称：太平洋标准时间 -> 代码：US/Pacific-New -> 时差：-28800000
  名称：萨摩亚群岛标准时间 -> 代码：US/Samoa -> 时差：-39600000
  名称：协调世界时间 -> 代码：UTC -> 时差：0
  名称：协调世界时间 -> 代码：Universal -> 时差：0
  名称：莫斯科标准时间 -> 代码：W-SU -> 时差：10800000
  名称：西欧时间 -> 代码：WET -> 时差：0
  名称：协调世界时间 -> 代码：Zulu -> 时差：0
  名称：东部标准时间 -> 代码：EST -> 时差：-18000000
  名称：夏威夷标准时间 -> 代码：HST -> 时差：-36000000
  名称：Mountain 标准时间 -> 代码：MST -> 时差：-25200000
  名称：中央标准时间 (北领地) -> 代码：ACT -> 时差：34200000
  名称：东部标准时间 (新南威尔斯) -> 代码：AET -> 时差：36000000
  名称：阿根廷时间 -> 代码：AGT -> 时差：-10800000
  名称：东欧时间 -> 代码：ART -> 时差：7200000
  名称：阿拉斯加标准时间 -> 代码：AST -> 时差：-32400000
  名称：巴西利亚时间 -> 代码：BET -> 时差：-10800000
  名称：孟加拉时间 -> 代码：BST -> 时差：21600000
  名称：中非时间 -> 代码：CAT -> 时差：7200000
  名称：纽芬兰标准时间 -> 代码：CNT -> 时差：-12600000
  名称：中央标准时间 -> 代码：CST -> 时差：-21600000
  名称：中国标准时间 -> 代码：CTT -> 时差：28800000
  名称：东非时间 -> 代码：EAT -> 时差：10800000
  名称：中欧时间 -> 代码：ECT -> 时差：3600000
  名称：东部标准时间 -> 代码：IET -> 时差：-18000000
  名称：印度标准时间 -> 代码：IST -> 时差：19800000
  名称：日本标准时间 -> 代码：JST -> 时差：32400000
  名称：西萨摩亚时间 -> 代码：MIT -> 时差：46800000
  名称：亚美尼亚时间 -> 代码：NET -> 时差：14400000
  名称：新西兰标准时间 -> 代码：NST -> 时差：43200000
  名称：巴基斯坦时间 -> 代码：PLT -> 时差：18000000
  名称：Mountain 标准时间 -> 代码：PNT -> 时差：-25200000
  名称：大西洋标准时间 -> 代码：PRT -> 时差：-14400000
  名称：太平洋标准时间 -> 代码：PST -> 时差：-28800000
  名称：所罗门群岛时间 -> 代码：SST -> 时差：39600000
  名称：印度支那时间 -> 代码：VST -> 时差：25200000
   */

}

class Africa{
  /// 名称：格林威治时间 -> 代码：Africa/Abidjan -> 时差：0
  final String Abidjan = 'Africa/Abidjan';
  /// 名称：加纳时间 -> 代码：Africa/Accra -> 时差：0
  final String Accra = 'Africa/Accra';
  /// 名称：东非时间 -> 代码：Africa/Addis_Ababa -> 时差：10800000
  final String Addis_Ababa = 'Africa/Addis_Ababa';
  /// 名称：中欧时间 -> 代码：Africa/Algiers -> 时差：3600000
  final String Algiers = 'Africa/Algiers';
  /// 名称：东非时间 -> 代码：Africa/Asmara -> 时差：10800000
  final String Asmara = 'Africa/Asmara';
  /// 名称：东非时间 -> 代码：Africa/Asmera -> 时差：10800000
  final String Asmera = 'Africa/Asmera';
  /// 名称：格林威治时间 -> 代码：Africa/Bamako -> 时差：0
  final String Bamako = 'Africa/Bamako';
  /// 名称：西非时间 -> 代码：Africa/Bangui -> 时差：3600000
  final String Bangui = 'Africa/Bangui';
  /// 名称：格林威治时间 -> 代码：Africa/Banjul -> 时差：0
  final String Banjul = 'Africa/Banjul';
  /// 名称：格林威治时间 -> 代码：Africa/Bissau -> 时差：0
  final String Bissau = 'Africa/Bissau';
  /// 名称：中非时间 -> 代码：Africa/Blantyre -> 时差：7200000
  final String Blantyre = 'Africa/Blantyre';
  /// 名称：西非时间 -> 代码：Africa/Brazzaville -> 时差：3600000
  final String Brazzaville = 'Africa/Brazzaville';
  /// 名称：中非时间 -> 代码：Africa/Bujumbura -> 时差：7200000
  final String Bujumbura = 'Africa/Bujumbura';
  /// 名称：东欧时间 -> 代码：Africa/Cairo -> 时差：7200000
  final String Cairo = 'Africa/Cairo';
  /// 名称：西欧时间 -> 代码：Africa/Casablanca -> 时差：0
  final String Casablanca = 'Africa/Casablanca';
  /// 名称：中欧时间 -> 代码：Africa/Ceuta -> 时差：3600000
  final String Ceuta = 'Africa/Ceuta';
  /// 名称：格林威治时间 -> 代码：Africa/Conakry -> 时差：0
  final String Conakry = 'Africa/Conakry';
  /// 名称：格林威治时间 -> 代码：Africa/Dakar -> 时差：0
  final String Dakar = 'Africa/Dakar';
  /// 名称：东非时间 -> 代码：Africa/Dar_es_Salaam -> 时差：10800000
  final String Dar_es_Salaam = 'Africa/Dar_es_Salaam';
  /// 名称：东非时间 -> 代码：Africa/Djibouti -> 时差：10800000
  final String Djibouti = 'Africa/Djibouti';
  /// 名称：西非时间 -> 代码：Africa/Douala -> 时差：3600000
  final String Douala = 'Africa/Douala';
  /// 名称：西欧时间 -> 代码：Africa/El_Aaiun -> 时差：0
  final String El_Aaiun = 'Africa/El_Aaiun';
  /// 名称：格林威治时间 -> 代码：Africa/Freetown -> 时差：0
  final String Freetown = 'Africa/Freetown';
  /// 名称：中非时间 -> 代码：Africa/Gaborone -> 时差：7200000
  final String Gaborone = 'Africa/Gaborone';
  /// 名称：中非时间 -> 代码：Africa/Harare -> 时差：7200000
  final String Harare = 'Africa/Harare';
  /// 名称：南非标准时间 -> 代码：Africa/Johannesburg -> 时差：7200000
  final String Johannesburg = 'Africa/Johannesburg';
  /// 名称：东非时间 -> 代码：Africa/Juba -> 时差：10800000
  final String Juba = 'Africa/Juba';
  /// 名称：东非时间 -> 代码：Africa/Kampala -> 时差：10800000
  final String Kampala = 'Africa/Kampala';
  /// 名称：中非时间 -> 代码：Africa/Khartoum -> 时差：7200000
  final String Khartoum = 'Africa/Khartoum';
  /// 名称：中非时间 -> 代码：Africa/Kigali -> 时差：7200000
  final String Kigali = 'Africa/Kigali';
  /// 名称：西非时间 -> 代码：Africa/Kinshasa -> 时差：3600000
  final String Kinshasa = 'Africa/Kinshasa';
  /// 名称：西非时间 -> 代码：Africa/Lagos -> 时差：3600000
  final String Lagos = 'Africa/Lagos';
  /// 名称：西非时间 -> 代码：Africa/Libreville -> 时差：3600000
  final String Libreville = 'Africa/Libreville';
  /// 名称：格林威治时间 -> 代码：Africa/Lome -> 时差：0
  final String Lome = 'Africa/Lome';
  /// 名称：西非时间 -> 代码：Africa/Luanda -> 时差：3600000
  final String Luanda = 'Africa/Luanda';
  /// 名称：中非时间 -> 代码：Africa/Lubumbashi -> 时差：7200000
  final String Lubumbashi = 'Africa/Lubumbashi';
  /// 名称：中非时间 -> 代码：Africa/Lusaka -> 时差：7200000
  final String Lusaka = 'Africa/Lusaka';
  /// 名称：西非时间 -> 代码：Africa/Malabo -> 时差：3600000
  final String Malabo = 'Africa/Malabo';
  /// 名称：中非时间 -> 代码：Africa/Maputo -> 时差：7200000
  final String Maputo = 'Africa/Maputo';
  /// 名称：南非标准时间 -> 代码：Africa/Maseru -> 时差：7200000
  final String Maseru = 'Africa/Maseru';
  /// 名称：南非标准时间 -> 代码：Africa/Mbabane -> 时差：7200000
  final String Mbabane = 'Africa/Mbabane';
  /// 名称：东非时间 -> 代码：Africa/Mogadishu -> 时差：10800000
  final String Mogadishu = 'Africa/Mogadishu';
  /// 名称：格林威治时间 -> 代码：Africa/Monrovia -> 时差：0
  final String Monrovia = 'Africa/Monrovia';
  /// 名称：东非时间 -> 代码：Africa/Nairobi -> 时差：10800000
  final String Nairobi = 'Africa/Nairobi';
  /// 名称：西非时间 -> 代码：Africa/Ndjamena -> 时差：3600000
  final String Ndjamena = 'Africa/Ndjamena';
  /// 名称：西非时间 -> 代码：Africa/Niamey -> 时差：3600000
  final String Niamey = 'Africa/Niamey';
  /// 名称：格林威治时间 -> 代码：Africa/Nouakchott -> 时差：0
  final String Nouakchott = 'Africa/Nouakchott';
  /// 名称：格林威治时间 -> 代码：Africa/Ouagadougou -> 时差：0
  final String Ouagadougou = 'Africa/Ouagadougou';
  /// 名称：西非时间 -> 代码：Africa/Porto-Novo -> 时差：3600000
  final String Porto = 'Africa/Porto';
  /// 名称：格林威治时间 -> 代码：Africa/Sao_Tome -> 时差：0
  final String Sao_Tome = 'Africa/Sao_Tome';
  /// 名称：格林威治时间 -> 代码：Africa/Timbuktu -> 时差：0
  final String Timbuktu = 'Africa/Timbuktu';
  /// 名称：东欧时间 -> 代码：Africa/Tripoli -> 时差：7200000
  final String Tripoli = 'Africa/Tripoli';
  /// 名称：中欧时间 -> 代码：Africa/Tunis -> 时差：3600000
  final String Tunis = 'Africa/Tunis';
  /// 名称：中非时间 -> 代码：Africa/Windhoek -> 时差：7200000
  final String Windhoek = 'Africa/Windhoek';
}

class America{
  /// 名称：夏威夷标准时间 -> 代码：America/Adak -> 时差：-36000000
  final String Adak = 'America/Adak';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Anchorage -> 时差：-32400000
  final String Anchorage = 'America/Anchorage';
  /// 名称：大西洋标准时间 -> 代码：America/Anguilla -> 时差：-14400000
  final String Anguilla = 'America/Anguilla';
  /// 名称：大西洋标准时间 -> 代码：America/Antigua -> 时差：-14400000
  final String Antigua = 'America/Antigua';
  /// 名称：巴西利亚时间 -> 代码：America/Araguaina -> 时差：-10800000
  final String Araguaina = 'America/Araguaina';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Buenos_Aires -> 时差：-10800000
  final String Buenos_Aires = 'America/Argentina/Buenos_Aires';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Catamarca -> 时差：-10800000
  final String Catamarca = 'America/Argentina/Catamarca';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/ComodRivadavia -> 时差：-10800000
  final String ComodRivadavia = 'America/Argentina/ComodRivadavia';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Cordoba -> 时差：-10800000
  final String Cordoba = 'America/Argentina/Cordoba';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Jujuy -> 时差：-10800000
  final String Jujuy = 'America/Argentina/Jujuy';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/La_Rioja -> 时差：-10800000
  final String La_Rioja = 'America/Argentina/La_Rioja';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Mendoza -> 时差：-10800000
  final String Mendoza = 'America/Argentina/Mendoza';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Rio_Gallegos -> 时差：-10800000
  final String Rio_Gallegos = 'America/Argentina/Rio_Gallegos';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Salta -> 时差：-10800000
  final String Salta = 'America/Argentina/Salta';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/San_Juan -> 时差：-10800000
  final String San_Juan = 'America/Argentina/San_Juan';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/San_Luis -> 时差：-10800000
  final String San_Luis = 'America/Argentina/San_Luis';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Tucuman -> 时差：-10800000
  final String Tucuman = 'America/Argentina/Tucuman';
  /// 名称：阿根廷时间 -> 代码：America/Argentina/Ushuaia -> 时差：-10800000
  final String Ushuaia = 'America/Argentina/Ushuaia';
  /// 名称：大西洋标准时间 -> 代码：America/Aruba -> 时差：-14400000
  final String Aruba = 'America/Aruba';
  /// 名称：巴拉圭时间 -> 代码：America/Asuncion -> 时差：-14400000
  final String Asuncion = 'America/Asuncion';
  /// 名称：东部标准时间 -> 代码：America/Atikokan -> 时差：-18000000
  final String Atikokan = 'America/Atikokan';
  /// 名称：夏威夷标准时间 -> 代码：America/Atka -> 时差：-36000000
  final String Atka = 'America/Atka';
  /// 名称：巴西利亚时间 -> 代码：America/Bahia -> 时差：-10800000
  final String Bahia = 'America/Bahia';
  /// 名称：中央标准时间 -> 代码：America/Bahia_Banderas -> 时差：-21600000
  final String Bahia_Banderas = 'America/Bahia_Banderas';
  /// 名称：大西洋标准时间 -> 代码：America/Barbados -> 时差：-14400000
  final String Barbados = 'America/Barbados';
  /// 名称：巴西利亚时间 -> 代码：America/Belem -> 时差：-10800000
  final String Belem = 'America/Belem';
  /// 名称：中央标准时间 -> 代码：America/Belize -> 时差：-21600000
  final String Belize = 'America/Belize';
  /// 名称：大西洋标准时间 -> 代码：America/Blanc-Sablon -> 时差：-14400000
  final String Blanc = 'America/Blanc';
  /// 名称：亚马逊时间 -> 代码：America/Boa_Vista -> 时差：-14400000
  final String Boa_Vista = 'America/Boa_Vista';
  /// 名称：哥伦比亚时间 -> 代码：America/Bogota -> 时差：-18000000
  final String Bogota = 'America/Bogota';
  /// 名称：Mountain 标准时间 -> 代码：America/Boise -> 时差：-25200000
  final String Boise = 'America/Boise';
  /// 名称：Mountain 标准时间 -> 代码：America/Cambridge_Bay -> 时差：-25200000
  final String Cambridge_Bay = 'America/Cambridge_Bay';
  /// 名称：亚马逊时间 -> 代码：America/Campo_Grande -> 时差：-14400000
  final String Campo_Grande = 'America/Campo_Grande';
  /// 名称：东部标准时间 -> 代码：America/Cancun -> 时差：-18000000
  final String Cancun = 'America/Cancun';
  /// 名称：委内瑞拉时间 -> 代码：America/Caracas -> 时差：-14400000
  final String Caracas = 'America/Caracas';
  /// 名称：法属圭亚那时间 -> 代码：America/Cayenne -> 时差：-10800000
  final String Cayenne = 'America/Cayenne';
  /// 名称：东部标准时间 -> 代码：America/Cayman -> 时差：-18000000
  final String Cayman = 'America/Cayman';
  /// 名称：中央标准时间 -> 代码：America/Chicago -> 时差：-21600000
  final String Chicago = 'America/Chicago';
  /// 名称：Mountain 标准时间 -> 代码：America/Chihuahua -> 时差：-25200000
  final String Chihuahua = 'America/Chihuahua';
  /// 名称：东部标准时间 -> 代码：America/Coral_Harbour -> 时差：-18000000
  final String Coral_Harbour = 'America/Coral_Harbour';
  /// 名称：中央标准时间 -> 代码：America/Costa_Rica -> 时差：-21600000
  final String Costa_Rica = 'America/Costa_Rica';
  /// 名称：Mountain 标准时间 -> 代码：America/Creston -> 时差：-25200000
  final String Creston = 'America/Creston';
  /// 名称：亚马逊时间 -> 代码：America/Cuiaba -> 时差：-14400000
  final String Cuiaba = 'America/Cuiaba';
  /// 名称：大西洋标准时间 -> 代码：America/Curacao -> 时差：-14400000
  final String Curacao = 'America/Curacao';
  /// 名称：格林威治时间 -> 代码：America/Danmarkshavn -> 时差：0
  final String Danmarkshavn = 'America/Danmarkshavn';
  /// 名称：太平洋标准时间 -> 代码：America/Dawson -> 时差：-28800000
  final String Dawson = 'America/Dawson';
  /// 名称：Mountain 标准时间 -> 代码：America/Dawson_Creek -> 时差：-25200000
  final String Dawson_Creek = 'America/Dawson_Creek';
  /// 名称：Mountain 标准时间 -> 代码：America/Denver -> 时差：-25200000
  final String Denver = 'America/Denver';
  /// 名称：东部标准时间 -> 代码：America/Detroit -> 时差：-18000000
  final String Detroit = 'America/Detroit';
  /// 名称：大西洋标准时间 -> 代码：America/Dominica -> 时差：-14400000
  final String Dominica = 'America/Dominica';
  /// 名称：Mountain 标准时间 -> 代码：America/Edmonton -> 时差：-25200000
  final String Edmonton = 'America/Edmonton';
  /// 名称：Acre 时间 -> 代码：America/Eirunepe -> 时差：-18000000
  final String Eirunepe = 'America/Eirunepe';
  /// 名称：中央标准时间 -> 代码：America/El_Salvador -> 时差：-21600000
  final String El_Salvador = 'America/El_Salvador';
  /// 名称：太平洋标准时间 -> 代码：America/Ensenada -> 时差：-28800000
  final String Ensenada = 'America/Ensenada';
  /// 名称：Mountain 标准时间 -> 代码：America/Fort_Nelson -> 时差：-25200000
  final String Fort_Nelson = 'America/Fort_Nelson';
  /// 名称：东部标准时间 -> 代码：America/Fort_Wayne -> 时差：-18000000
  final String Fort_Wayne = 'America/Fort_Wayne';
  /// 名称：巴西利亚时间 -> 代码：America/Fortaleza -> 时差：-10800000
  final String Fortaleza = 'America/Fortaleza';
  /// 名称：大西洋标准时间 -> 代码：America/Glace_Bay -> 时差：-14400000
  final String Glace_Bay = 'America/Glace_Bay';
  /// 名称：西格林兰岛时间 -> 代码：America/Godthab -> 时差：-10800000
  final String Godthab = 'America/Godthab';
  /// 名称：大西洋标准时间 -> 代码：America/Goose_Bay -> 时差：-14400000
  final String Goose_Bay = 'America/Goose_Bay';
  /// 名称：东部标准时间 -> 代码：America/Grand_Turk -> 时差：-18000000
  final String Grand_Turk = 'America/Grand_Turk';
  /// 名称：大西洋标准时间 -> 代码：America/Grenada -> 时差：-14400000
  final String Grenada = 'America/Grenada';
  /// 名称：大西洋标准时间 -> 代码：America/Guadeloupe -> 时差：-14400000
  final String Guadeloupe = 'America/Guadeloupe';
  /// 名称：中央标准时间 -> 代码：America/Guatemala -> 时差：-21600000
  final String Guatemala = 'America/Guatemala';
  /// 名称：厄瓜多尔时间 -> 代码：America/Guayaquil -> 时差：-18000000
  final String Guayaquil = 'America/Guayaquil';
  /// 名称：圭亚那时间 -> 代码：America/Guyana -> 时差：-14400000
  final String Guyana = 'America/Guyana';
  /// 名称：大西洋标准时间 -> 代码：America/Halifax -> 时差：-14400000
  final String Halifax = 'America/Halifax';
  /// 名称：古巴标准时间 -> 代码：America/Havana -> 时差：-18000000
  final String Havana = 'America/Havana';
  /// 名称：Mountain 标准时间 -> 代码：America/Hermosillo -> 时差：-25200000
  final String Hermosillo = 'America/Hermosillo';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Indianapolis -> 时差：-18000000
  final String Indianapolis = 'America/Indiana/Indianapolis';
  /// 名称：中央标准时间 -> 代码：America/Indiana/Knox -> 时差：-21600000
  final String Knox = 'America/Indiana/Knox';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Marengo -> 时差：-18000000
  final String Marengo = 'America/Indiana/Marengo';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Petersburg -> 时差：-18000000
  final String Petersburg = 'America/Indiana/Petersburg';
  /// 名称：中央标准时间 -> 代码：America/Indiana/Tell_City -> 时差：-21600000
  final String Tell_City = 'America/Indiana/Tell_City';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Vevay -> 时差：-18000000
  final String Vevay = 'America/Indiana/Vevay';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Vincennes -> 时差：-18000000
  final String Vincennes = 'America/Indiana/Vincennes';
  /// 名称：东部标准时间 -> 代码：America/Indiana/Winamac -> 时差：-18000000
  final String Winamac = 'America/Indiana/Winamac';
  /// 名称：Mountain 标准时间 -> 代码：America/Inuvik -> 时差：-25200000
  final String Inuvik = 'America/Inuvik';
  /// 名称：东部标准时间 -> 代码：America/Iqaluit -> 时差：-18000000
  final String Iqaluit = 'America/Iqaluit';
  /// 名称：东部标准时间 -> 代码：America/Jamaica -> 时差：-18000000
  final String Jamaica = 'America/Jamaica';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Juneau -> 时差：-32400000
  final String Juneau = 'America/Juneau';
  /// 名称：东部标准时间 -> 代码：America/Kentucky/Louisville -> 时差：-18000000
  final String Kentucky = 'America/Kentucky';
  /// 名称：中央标准时间 -> 代码：America/Knox_IN -> 时差：-21600000
  final String Knox_IN = 'America/Knox_IN';
  /// 名称：大西洋标准时间 -> 代码：America/Kralendijk -> 时差：-14400000
  final String Kralendijk = 'America/Kralendijk';
  /// 名称：玻利维亚时间 -> 代码：America/La_Paz -> 时差：-14400000
  final String La_Paz = 'America/La_Paz';
  /// 名称：秘鲁时间 -> 代码：America/Lima -> 时差：-18000000
  final String Lima = 'America/Lima';
  /// 名称：太平洋标准时间 -> 代码：America/Los_Angeles -> 时差：-28800000
  final String Los_Angeles = 'America/Los_Angeles';
  /// 名称：东部标准时间 -> 代码：America/Louisville -> 时差：-18000000
  final String Louisville = 'America/Louisville';
  /// 名称：大西洋标准时间 -> 代码：America/Lower_Princes -> 时差：-14400000
  final String Lower_Princes = 'America/Lower_Princes';
  /// 名称：巴西利亚时间 -> 代码：America/Maceio -> 时差：-10800000
  final String Maceio = 'America/Maceio';
  /// 名称：中央标准时间 -> 代码：America/Managua -> 时差：-21600000
  final String Managua = 'America/Managua';
  /// 名称：亚马逊时间 -> 代码：America/Manaus -> 时差：-14400000
  final String Manaus = 'America/Manaus';
  /// 名称：大西洋标准时间 -> 代码：America/Marigot -> 时差：-14400000
  final String Marigot = 'America/Marigot';
  /// 名称：大西洋标准时间 -> 代码：America/Martinique -> 时差：-14400000
  final String Martinique = 'America/Martinique';
  /// 名称：中央标准时间 -> 代码：America/Matamoros -> 时差：-21600000
  final String Matamoros = 'America/Matamoros';
  /// 名称：Mountain 标准时间 -> 代码：America/Mazatlan -> 时差：-25200000
  final String Mazatlan = 'America/Mazatlan';
  /// 名称：中央标准时间 -> 代码：America/Menominee -> 时差：-21600000
  final String Menominee = 'America/Menominee';
  /// 名称：中央标准时间 -> 代码：America/Merida -> 时差：-21600000
  final String Merida = 'America/Merida';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Metlakatla -> 时差：-32400000
  final String Metlakatla = 'America/Metlakatla';
  /// 名称：中央标准时间 -> 代码：America/Mexico_City -> 时差：-21600000
  final String Mexico_City = 'America/Mexico_City';
  /// 名称：皮埃尔岛及密克隆岛标准时间 -> 代码：America/Miquelon -> 时差：-10800000
  final String Miquelon = 'America/Miquelon';
  /// 名称：大西洋标准时间 -> 代码：America/Moncton -> 时差：-14400000
  final String Moncton = 'America/Moncton';
  /// 名称：中央标准时间 -> 代码：America/Monterrey -> 时差：-21600000
  final String Monterrey = 'America/Monterrey';
  /// 名称：乌拉圭时间 -> 代码：America/Montevideo -> 时差：-10800000
  final String Montevideo = 'America/Montevideo';
  /// 名称：东部标准时间 -> 代码：America/Montreal -> 时差：-18000000
  final String Montreal = 'America/Montreal';
  /// 名称：大西洋标准时间 -> 代码：America/Montserrat -> 时差：-14400000
  final String Montserrat = 'America/Montserrat';
  /// 名称：东部标准时间 -> 代码：America/Nassau -> 时差：-18000000
  final String Nassau = 'America/Nassau';
  /// 名称：东部标准时间 -> 代码：America/New_York -> 时差：-18000000
  final String New_York = 'America/New_York';
  /// 名称：东部标准时间 -> 代码：America/Nipigon -> 时差：-18000000
  final String Nipigon = 'America/Nipigon';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Nome -> 时差：-32400000
  final String Nome = 'America/Nome';
  /// 名称：费尔南多德诺罗尼亚时间 -> 代码：America/Noronha -> 时差：-7200000
  final String Noronha = 'America/Noronha';
  /// 名称：中央标准时间 -> 代码：America/North_Dakota/Beulah -> 时差：-21600000
  final String Beulah = 'America/North_Dakota/Beulah';
  /// 名称：中央标准时间 -> 代码：America/North_Dakota/Center -> 时差：-21600000
  final String Center = 'America/North_Dakota/Center';
  /// 名称：中央标准时间 -> 代码：America/North_Dakota/New_Salem -> 时差：-21600000
  final String New_Salem = 'America/North_Dakota/New_Salem';
  /// 名称：Mountain 标准时间 -> 代码：America/Ojinaga -> 时差：-25200000
  final String Ojinaga = 'America/Ojinaga';
  /// 名称：东部标准时间 -> 代码：America/Panama -> 时差：-18000000
  final String Panama = 'America/Panama';
  /// 名称：东部标准时间 -> 代码：America/Pangnirtung -> 时差：-18000000
  final String Pangnirtung = 'America/Pangnirtung';
  /// 名称：苏利南时间 -> 代码：America/Paramaribo -> 时差：-10800000
  final String Paramaribo = 'America/Paramaribo';
  /// 名称：Mountain 标准时间 -> 代码：America/Phoenix -> 时差：-25200000
  final String Phoenix = 'America/Phoenix';
  /// 名称：东部标准时间 -> 代码：America/Port-au-Prince -> 时差：-18000000
  final String Port = 'America/Port';
  /// 名称：大西洋标准时间 -> 代码：America/Port_of_Spain -> 时差：-14400000
  final String Port_of_Spain = 'America/Port_of_Spain';
  /// 名称：Acre 时间 -> 代码：America/Porto_Acre -> 时差：-18000000
  final String Porto_Acre = 'America/Porto_Acre';
  /// 名称：亚马逊时间 -> 代码：America/Porto_Velho -> 时差：-14400000
  final String Porto_Velho = 'America/Porto_Velho';
  /// 名称：大西洋标准时间 -> 代码：America/Puerto_Rico -> 时差：-14400000
  final String Puerto_Rico = 'America/Puerto_Rico';
  /// 名称：GMT-03: 00 -> 代码：America/Punta_Arenas -> 时差：-10800000
  final String Punta_Arenas = 'America/Punta_Arenas';
  /// 名称：中央标准时间 -> 代码：America/Rainy_River -> 时差：-21600000
  final String Rainy_River = 'America/Rainy_River';
  /// 名称：中央标准时间 -> 代码：America/Rankin_Inlet -> 时差：-21600000
  final String Rankin_Inlet = 'America/Rankin_Inlet';
  /// 名称：巴西利亚时间 -> 代码：America/Recife -> 时差：-10800000
  final String Recife = 'America/Recife';
  /// 名称：中央标准时间 -> 代码：America/Regina -> 时差：-21600000
  final String Regina = 'America/Regina';
  /// 名称：中央标准时间 -> 代码：America/Resolute -> 时差：-21600000
  final String Resolute = 'America/Resolute';
  /// 名称：Acre 时间 -> 代码：America/Rio_Branco -> 时差：-18000000
  final String Rio_Branco = 'America/Rio_Branco';
  /// 名称：阿根廷时间 -> 代码：America/Rosario -> 时差：-10800000
  final String Rosario = 'America/Rosario';
  /// 名称：太平洋标准时间 -> 代码：America/Santa_Isabel -> 时差：-28800000
  final String Santa_Isabel = 'America/Santa_Isabel';
  /// 名称：巴西利亚时间 -> 代码：America/Santarem -> 时差：-10800000
  final String Santarem = 'America/Santarem';
  /// 名称：智利时间 -> 代码：America/Santiago -> 时差：-14400000
  final String Santiago = 'America/Santiago';
  /// 名称：大西洋标准时间 -> 代码：America/Santo_Domingo -> 时差：-14400000
  final String Santo_Domingo = 'America/Santo_Domingo';
  /// 名称：巴西利亚时间 -> 代码：America/Sao_Paulo -> 时差：-10800000
  final String Sao_Paulo = 'America/Sao_Paulo';
  /// 名称：东格林岛时间 -> 代码：America/Scoresbysund -> 时差：-3600000
  final String Scoresbysund = 'America/Scoresbysund';
  /// 名称：Mountain 标准时间 -> 代码：America/Shiprock -> 时差：-25200000
  final String Shiprock = 'America/Shiprock';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Sitka -> 时差：-32400000
  final String Sitka = 'America/Sitka';
  /// 名称：大西洋标准时间 -> 代码：America/St_Barthelemy -> 时差：-14400000
  final String St_Barthelemy = 'America/St_Barthelemy';
  /// 名称：纽芬兰标准时间 -> 代码：America/St_Johns -> 时差：-12600000
  final String St_Johns = 'America/St_Johns';
  /// 名称：大西洋标准时间 -> 代码：America/St_Kitts -> 时差：-14400000
  final String St_Kitts = 'America/St_Kitts';
  /// 名称：大西洋标准时间 -> 代码：America/St_Lucia -> 时差：-14400000
  final String St_Lucia = 'America/St_Lucia';
  /// 名称：大西洋标准时间 -> 代码：America/St_Thomas -> 时差：-14400000
  final String St_Thomas = 'America/St_Thomas';
  /// 名称：大西洋标准时间 -> 代码：America/St_Vincent -> 时差：-14400000
  final String St_Vincent = 'America/St_Vincent';
  /// 名称：中央标准时间 -> 代码：America/Swift_Current -> 时差：-21600000
  final String Swift_Current = 'America/Swift_Current';
  /// 名称：中央标准时间 -> 代码：America/Tegucigalpa -> 时差：-21600000
  final String Tegucigalpa = 'America/Tegucigalpa';
  /// 名称：大西洋标准时间 -> 代码：America/Thule -> 时差：-14400000
  final String Thule = 'America/Thule';
  /// 名称：东部标准时间 -> 代码：America/Thunder_Bay -> 时差：-18000000
  final String Thunder_Bay = 'America/Thunder_Bay';
  /// 名称：太平洋标准时间 -> 代码：America/Tijuana -> 时差：-28800000
  final String Tijuana = 'America/Tijuana';
  /// 名称：东部标准时间 -> 代码：America/Toronto -> 时差：-18000000
  final String Toronto = 'America/Toronto';
  /// 名称：大西洋标准时间 -> 代码：America/Tortola -> 时差：-14400000
  final String Tortola = 'America/Tortola';
  /// 名称：太平洋标准时间 -> 代码：America/Vancouver -> 时差：-28800000
  final String Vancouver = 'America/Vancouver';
  /// 名称：大西洋标准时间 -> 代码：America/Virgin -> 时差：-14400000
  final String Virgin = 'America/Virgin';
  /// 名称：太平洋标准时间 -> 代码：America/Whitehorse -> 时差：-28800000
  final String Whitehorse = 'America/Whitehorse';
  /// 名称：中央标准时间 -> 代码：America/Winnipeg -> 时差：-21600000
  final String Winnipeg = 'America/Winnipeg';
  /// 名称：阿拉斯加标准时间 -> 代码：America/Yakutat -> 时差：-32400000
  final String Yakutat = 'America/Yakutat';
  /// 名称：Mountain 标准时间 -> 代码：America/Yellowknife -> 时差：-25200000
  final String Yellowknife = 'America/Yellowknife';
}

class Antarctica{
  final String Casey ='Antarctica/Casey';
  final String Davis ='Antarctica/Davis';
  final String DumontDUrville ='Antarctica/DumontDUrville';
  final String Macquarie ='Antarctica/Macquarie';
  final String Mawson ='Antarctica/Mawson';
  final String McMurdo ='Antarctica/McMurdo';
  final String Palmer ='Antarctica/Palmer';
  final String Rothera ='Antarctica/Rothera';
  final String South_Pole ='Antarctica/South_Pole';
  final String Syowa ='Antarctica/Syowa';
  final String Troll ='Antarctica/Troll';
  final String Vostok ='Antarctica/Vostok';
}

class Asia{
  final String Aden='Asia/Aden';
  final String Almaty='Asia/Almaty';
  final String Amman='Asia/Amman';
  final String Anadyr='Asia/Anadyr';
  final String Aqtau='Asia/Aqtau';
  final String Aqtobe='Asia/Aqtobe';
  final String Ashgabat='Asia/Ashgabat';
  final String Ashkhabad='Asia/Ashkhabad';
  final String Atyrau='Asia/Atyrau';
  final String Baghdad='Asia/Baghdad';
  final String Bahrain='Asia/Bahrain';
  final String Baku='Asia/Baku';
  final String Bangkok='Asia/Bangkok';
  final String Barnaul='Asia/Barnaul';
  final String Beirut='Asia/Beirut';
  final String Bishkek='Asia/Bishkek';
  final String Brunei='Asia/Brunei';
  final String Calcutta='Asia/Calcutta';
  final String Chita='Asia/Chita';
  final String Choibalsan='Asia/Choibalsan';
  final String Chongqing='Asia/Chongqing';
  final String Chungking='Asia/Chungking';
  final String Colombo='Asia/Colombo';
  final String Dacca='Asia/Dacca';
  final String Damascus='Asia/Damascus';
  final String Dhaka='Asia/Dhaka';
  final String Dili='Asia/Dili';
  final String Dubai='Asia/Dubai';
  final String Dushanbe='Asia/Dushanbe';
  final String Famagusta='Asia/Famagusta';
  final String Gaza='Asia/Gaza';
  final String Harbin='Asia/Harbin';
  final String Hebron='Asia/Hebron';
  final String Ho_Chi_Minh='Asia/Ho_Chi_Minh';
  final String Hong_Kong='Asia/Hong_Kong';
  final String Hovd='Asia/Hovd';
  final String Irkutsk='Asia/Irkutsk';
  final String Istanbul='Asia/Istanbul';
  final String Jakarta='Asia/Jakarta';
  final String Jayapura='Asia/Jayapura';
  final String Jerusalem='Asia/Jerusalem';
  final String Kabul='Asia/Kabul';
  final String Kamchatka='Asia/Kamchatka';
  final String Karachi='Asia/Karachi';
  final String Kashgar='Asia/Kashgar';
  final String Kathmandu='Asia/Kathmandu';
  final String Katmandu='Asia/Katmandu';
  final String Khandyga='Asia/Khandyga';
  final String Kolkata='Asia/Kolkata';
  final String Krasnoyarsk='Asia/Krasnoyarsk';
  final String Kuala_Lumpur='Asia/Kuala_Lumpur';
  final String Kuching='Asia/Kuching';
  final String Kuwait='Asia/Kuwait';
  final String Macao='Asia/Macao';
  final String Macau='Asia/Macau';
  final String Magadan='Asia/Magadan';
  final String Makassar='Asia/Makassar';
  final String Manila='Asia/Manila';
  final String Muscat='Asia/Muscat';
  final String Nicosia='Asia/Nicosia';
  final String Novokuznetsk='Asia/Novokuznetsk';
  final String Novosibirsk='Asia/Novosibirsk';
  final String Omsk='Asia/Omsk';
  final String Oral='Asia/Oral';
  final String Phnom_Penh='Asia/Phnom_Penh';
  final String Pontianak='Asia/Pontianak';
  final String Pyongyang='Asia/Pyongyang';
  final String Qatar='Asia/Qatar';
  final String Qostanay='Asia/Qostanay';
  final String Qyzylorda='Asia/Qyzylorda';
  final String Rangoon='Asia/Rangoon';
  final String Riyadh='Asia/Riyadh';
  final String Saigon='Asia/Saigon';
  final String Sakhalin='Asia/Sakhalin';
  final String Samarkand='Asia/Samarkand';
  final String Seoul='Asia/Seoul';
  final String Shanghai='Asia/Shanghai';
  final String Singapore='Asia/Singapore';
  final String Srednekolymsk='Asia/Srednekolymsk';
  final String Taipei='Asia/Taipei';
  final String Tashkent='Asia/Tashkent';
  final String Tbilisi='Asia/Tbilisi';
  final String Tehran='Asia/Tehran';
  final String Tel_Aviv='Asia/Tel_Aviv';
  final String Thimbu='Asia/Thimbu';
  final String Thimphu='Asia/Thimphu';
  final String Tokyo='Asia/Tokyo';
  final String Tomsk='Asia/Tomsk';
  final String Ujung_Pandang='Asia/Ujung_Pandang';
  final String Ulaanbaatar='Asia/Ulaanbaatar';
  final String Ulan_Bator='Asia/Ulan_Bator';
  final String Urumqi='Asia/Urumqi';
  final String Ust='Asia/Ust';
  final String Vientiane='Asia/Vientiane';
  final String Vladivostok='Asia/Vladivostok';
  final String Yakutsk='Asia/Yakutsk';
  final String Yangon='Asia/Yangon';
  final String Yekaterinburg='Asia/Yekaterinburg';
  final String Yerevan='Asia/Yerevan';
}

class Atlantic{
  final String Azores='Atlantic/Azores';
  final String Bermuda='Atlantic/Bermuda';
  final String Canary='Atlantic/Canary';
  final String Cape_Verde='Atlantic/Cape_Verde';
  final String Faeroe='Atlantic/Faeroe';
  final String Faroe='Atlantic/Faroe';
  final String Jan_Mayen='Atlantic/Jan_Mayen';
  final String Madeira='Atlantic/Madeira';
  final String Reykjavik='Atlantic/Reykjavik';
  final String South_Georgia='Atlantic/South_Georgia';
  final String St_Helena='Atlantic/St_Helena';
  final String Stanley='Atlantic/Stanley';
}

class Australia{
  final String ACT = 'Australia/ACT';
  final String Adelaide = 'Australia/Adelaide';
  final String Brisbane = 'Australia/Brisbane';
  final String Broken_Hill = 'Australia/Broken_Hill';
  final String Canberra = 'Australia/Canberra';
  final String Currie = 'Australia/Currie';
  final String Darwin = 'Australia/Darwin';
  final String Eucla = 'Australia/Eucla';
  final String Hobart = 'Australia/Hobart';
  final String LHI = 'Australia/LHI';
  final String Lindeman = 'Australia/Lindeman';
  final String Lord_Howe = 'Australia/Lord_Howe';
  final String Melbourne = 'Australia/Melbourne';
  final String NSW = 'Australia/NSW';
  final String North = 'Australia/North';
  final String Perth = 'Australia/Perth';
  final String Queensland = 'Australia/Queensland';
  final String South = 'Australia/South';
  final String Sydney = 'Australia/Sydney';
  final String Tasmania = 'Australia/Tasmania';
  final String Victoria = 'Australia/Victoria';
  final String West = 'Australia/West';
  final String Yancowinna = 'Australia/Yancowinna';
}

class Canada{
  final String Atlantic='Canada/Atlantic';
  final String Central='Canada/Central';
  final String Eastern='Canada/Eastern';
  final String Mountain='Canada/Mountain';
  final String Newfoundland='Canada/Newfoundland';
  final String Pacific='Canada/Pacific';
  final String Saskatchewan='Canada/Saskatchewan';
  final String Yukon='Canada/Yukon';
}

class Etc{
  /// 格林威治时间
  final String GMT = 'Etc/GMT';
  /// 格林威治时间
  final String GMTPlus0 = 'Etc/GMT+0';
  /// GMT-01: 00
  final String GMTPlus1 = 'Etc/GMT+1';
  /// GMT-10: 00
  final String GMTPlus10 = 'Etc/GMT+10';
  /// GMT-11: 00
  final String GMTPlus11 = 'Etc/GMT+11';
  /// GMT-12: 00
  final String GMTPlus12 = 'Etc/GMT+12';
  /// GMT-02: 00
  final String GMTPlus2 = 'Etc/GMT+2';
  /// GMT-03: 00
  final String GMTPlus3 = 'Etc/GMT+3';
  /// GMT-04: 00
  final String GMTPlus4 = 'Etc/GMT+4';
  /// GMT-05: 00
  final String GMTPlus5 = 'Etc/GMT+5';
  /// GMT-06: 00
  final String GMTPlus6 = 'Etc/GMT+6';
  /// GMT-07: 00
  final String GMTPlus7 = 'Etc/GMT+7';
  /// GMT-08: 00
  final String GMTPlus8 = 'Etc/GMT+8';
  /// GMT-09: 00
  final String GMTPlus9 = 'Etc/GMT+9';
  /// 格林威治时间
  final String GMTCut0 = 'Etc/GMT-0';
  /// GMT+01: 00
  final String GMTCut1 = 'Etc/GMT-1';
  /// GMT+10: 00
  final String GMTCut10 = 'Etc/GMT-10';
  /// GMT+11: 00
  final String GMTCut11 = 'Etc/GMT-11';
  /// GMT+12: 00
  final String GMTCut12 = 'Etc/GMT-12';
  /// GMT+13: 00
  final String GMTCut13 = 'Etc/GMT-13';
  /// GMT+14: 00
  final String GMTCut14 = 'Etc/GMT-14';
  /// GMT+02: 00
  final String GMTCut2 = 'Etc/GMT-2';
  /// GMT+03: 00
  final String GMTCut3 = 'Etc/GMT-3';
  /// GMT+04: 00
  final String GMTCut4 = 'Etc/GMT-4';
  /// GMT+05: 00
  final String GMTCut5 = 'Etc/GMT-5';
  /// GMT+06: 00
  final String GMTCut6 = 'Etc/GMT-6';
  /// GMT+07: 00
  final String GMTCut7 = 'Etc/GMT-7';
  /// GMT+08: 00
  final String GMTCut8 = 'Etc/GMT-8';
  /// GMT+09: 00
  final String GMTCut9 = 'Etc/GMT-9';
  /// 格林威治时间
  final String GMT0 = 'Etc/GMT0';
  /// 格林威治时间
  final String Greenwich = 'Etc/Greenwich';
  /// 协调世界时间
  final String UCT = 'Etc/UCT';
  /// 协调世界时间
  final String UTC = 'Etc/UTC';
  /// 协调世界时间
  final String Universal = 'Etc/Universal';
  /// 协调世界时间
  final String Zulu = 'Etc/Zulu';
}

class Europe{
  final String Amsterdam = 'Europe/Amsterdam';
  final String Andorra = 'Europe/Andorra';
  final String Astrakhan = 'Europe/Astrakhan';
  final String Athens = 'Europe/Athens';
  final String Belfast = 'Europe/Belfast';
  final String Belgrade = 'Europe/Belgrade';
  final String Berlin = 'Europe/Berlin';
  final String Bratislava = 'Europe/Bratislava';
  final String Brussels = 'Europe/Brussels';
  final String Bucharest = 'Europe/Bucharest';
  final String Budapest = 'Europe/Budapest';
  final String Busingen = 'Europe/Busingen';
  final String Chisinau = 'Europe/Chisinau';
  final String Copenhagen = 'Europe/Copenhagen';
  final String Dublin = 'Europe/Dublin';
  final String Gibraltar = 'Europe/Gibraltar';
  final String Guernsey = 'Europe/Guernsey';
  final String Helsinki = 'Europe/Helsinki';
  final String Isle_of_Man = 'Europe/Isle_of_Man';
  final String Istanbul = 'Europe/Istanbul';
  final String Jersey = 'Europe/Jersey';
  final String Kaliningrad = 'Europe/Kaliningrad';
  final String Kiev = 'Europe/Kiev';
  final String Kirov = 'Europe/Kirov';
  final String Lisbon = 'Europe/Lisbon';
  final String Ljubljana = 'Europe/Ljubljana';
  final String London = 'Europe/London';
  final String Luxembourg = 'Europe/Luxembourg';
  final String Madrid = 'Europe/Madrid';
  final String Malta = 'Europe/Malta';
  final String Mariehamn = 'Europe/Mariehamn';
  final String Minsk = 'Europe/Minsk';
  final String Monaco = 'Europe/Monaco';
  final String Moscow = 'Europe/Moscow';
  final String Nicosia = 'Europe/Nicosia';
  final String Oslo = 'Europe/Oslo';
  final String Paris = 'Europe/Paris';
  final String Podgorica = 'Europe/Podgorica';
  final String Prague = 'Europe/Prague';
  final String Riga = 'Europe/Riga';
  final String Rome = 'Europe/Rome';
  final String Samara = 'Europe/Samara';
  final String San_Marino = 'Europe/San_Marino';
  final String Sarajevo = 'Europe/Sarajevo';
  final String Saratov = 'Europe/Saratov';
  final String Simferopol = 'Europe/Simferopol';
  final String Skopje = 'Europe/Skopje';
  final String Sofia = 'Europe/Sofia';
  final String Stockholm = 'Europe/Stockholm';
  final String Tallinn = 'Europe/Tallinn';
  final String Tirane = 'Europe/Tirane';
  final String Tiraspol = 'Europe/Tiraspol';
  final String Ulyanovsk = 'Europe/Ulyanovsk';
  final String Uzhgorod = 'Europe/Uzhgorod';
  final String Vaduz = 'Europe/Vaduz';
  final String Vatican = 'Europe/Vatican';
  final String Vienna = 'Europe/Vienna';
  final String Vilnius = 'Europe/Vilnius';
  final String Volgograd = 'Europe/Volgograd';
  final String Warsaw = 'Europe/Warsaw';
  final String Zagreb = 'Europe/Zagreb';
  final String Zaporozhye = 'Europe/Zaporozhye';
  final String Zurich = 'Europe/Zurich';
}

class Indian{
  final String Antananarivo='Indian/Antananarivo';
  final String Chagos='Indian/Chagos';
  final String Christmas='Indian/Christmas';
  final String Cocos='Indian/Cocos';
  final String Comoro='Indian/Comoro';
  final String Kerguelen='Indian/Kerguelen';
  final String Mahe='Indian/Mahe';
  final String Maldives='Indian/Maldives';
  final String Mauritius='Indian/Mauritius';
  final String Mayotte='Indian/Mayotte';
  final String Reunion='Indian/Reunion';
}

class Pacific{
  final String Apia='Pacific/Apia';
  final String Auckland='Pacific/Auckland';
  final String Bougainville='Pacific/Bougainville';
  final String Chatham='Pacific/Chatham';
  final String Chuuk='Pacific/Chuuk';
  final String Easter='Pacific/Easter';
  final String Efate='Pacific/Efate';
  final String Enderbury='Pacific/Enderbury';
  final String Fakaofo='Pacific/Fakaofo';
  final String Fiji='Pacific/Fiji';
  final String Funafuti='Pacific/Funafuti';
  final String Galapagos='Pacific/Galapagos';
  final String Gambier='Pacific/Gambier';
  final String Guadalcanal='Pacific/Guadalcanal';
  final String Guam='Pacific/Guam';
  final String Honolulu='Pacific/Honolulu';
  final String Johnston='Pacific/Johnston';
  final String Kiritimati='Pacific/Kiritimati';
  final String Kosrae='Pacific/Kosrae';
  final String Kwajalein='Pacific/Kwajalein';
  final String Majuro='Pacific/Majuro';
  final String Marquesas='Pacific/Marquesas';
  final String Midway='Pacific/Midway';
  final String Nauru='Pacific/Nauru';
  final String Niue='Pacific/Niue';
  final String Norfolk='Pacific/Norfolk';
  final String Noumea='Pacific/Noumea';
  final String Pago_Pago='Pacific/Pago_Pago';
  final String Palau='Pacific/Palau';
  final String Pitcairn='Pacific/Pitcairn';
  final String Pohnpei='Pacific/Pohnpei';
  final String Ponape='Pacific/Ponape';
  final String Port_Moresby='Pacific/Port_Moresby';
  final String Rarotonga='Pacific/Rarotonga';
  final String Saipan='Pacific/Saipan';
  final String Samoa='Pacific/Samoa';
  final String Tahiti='Pacific/Tahiti';
  final String Tarawa='Pacific/Tarawa';
  final String Tongatapu='Pacific/Tongatapu';
  final String Truk='Pacific/Truk';
  final String Wake='Pacific/Wake';
  final String Wallis='Pacific/Wallis';
  final String Yap='Pacific/Yap';
}

class US{
  final String Alaska   = 'US/Alaska';
  final String Aleutian = 'US/Aleutian';
  final String Arizona  = 'US/Arizona';
  final String Central  = 'US/Central';
  final String East     = 'US/East';
  final String Eastern  = 'US/Eastern';
  final String Hawaii   = 'US/Hawaii';
  final String Indiana  = 'US/Indiana';
  final String Michigan = 'US/Michigan';
  final String Mountain = 'US/Mountain';
  final String Pacific  = 'US/Pacific';
  final String New      = 'US/Pacific-New';
  final String Samoa    = 'US/Samoa';
}
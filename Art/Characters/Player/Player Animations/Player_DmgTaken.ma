//Maya ASCII 2023 scene
//Name: Player_DmgTaken.ma
//Last modified: Mon, Jan 20, 2025 05:58:35 PM
//Codeset: 1252
file -rdi 1 -ns "Player_rig" -rfn "Player_rigRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Mon, Jan 20, 2025 02:20:32 PM|ICON|undef|INFO|undef|OBJN|744|INCL|/Characters/Player/Player_model.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.mb";
file -rdi 2 -ns ":" -rfn "Player_rig:Player_modelRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Mon, Jan 20, 2025 02:04:35 PM|ICON|undef|INFO|undef|OBJN|26|INCL|/Characters/Player/SK_Orion.fbx(/Characters/Player/SK_Saucer.fbx(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "/Characters/Player/Player_model.mb";
file -rdi 3 -ns ":" -rfn "Player_rig:SK_OrionRN" -op "fbx" -typ "FBX export"
		 "/Characters/Player/SK_Orion.fbx";
file -rdi 3 -ns ":" -rfn "Player_rig:SK_SaucerRN" -op "fbx" -typ "FBX export"
		 "/Characters/Player/SK_Saucer.fbx";
file -r -ns "Player_rig" -dr 1 -rfn "Player_rigRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Mon, Jan 20, 2025 02:20:32 PM|ICON|undef|INFO|undef|OBJN|744|INCL|/Characters/Player/Player_model.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.mb";
requires maya "2023";
requires "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "61887EC1-49C5-C535-E521-BF973E3BF833";
createNode transform -s -n "persp";
	rename -uid "DD262A2A-419C-7C78-3E26-889A3F374C30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -487.68079448263325 642.93393278736994 1946.3817550236922 ;
	setAttr ".r" -type "double3" -17.738352730428332 2502.9999999996026 8.314699528675148e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1DCF9480-42CB-6555-D287-C9AC0756A598";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2108.2510048450076;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0050395080430973849 -0.09440875460525433 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8ED4DE97-4B6A-88D4-7219-AEA7B587B7A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0FCAC9A1-41E4-F719-D8F9-45BDF4F44D89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C52DD715-45C8-944A-C7BD-0CA04C009EFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4E607C45-42E8-B5BD-AD8A-B79ED1347040";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E6100B64-4554-DB9F-931B-5EB9690DD129";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D180FEF1-422E-2A3D-F14F-B2A0F702365C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode dagContainer -n "animBot";
	rename -uid "42CAF4A1-4F6A-FBBF-64AA-8FB08C242856";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -s false -ci true -sn "tempNodes" -ln "tempNodes" -at "message";
	addAttr -s false -ci true -sn "animBot_Anim_Recovery_Scene_ID" -ln "animBot_Anim_Recovery_Scene_ID" 
		-at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.5.2";
	setAttr ".iconSimpleName" -type "string" "animBot";
createNode dagContainer -n "animBot_Anim_Recovery_Scene_ID" -p "animBot";
	rename -uid "60E85A29-443F-3A2B-B60A-AD8923C5526F";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -ci true -sn "sceneID" -ln "sceneID" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.5.2";
	setAttr ".iconSimpleName" -type "string" "anim_recovery";
	setAttr ".sceneID" -type "string" "1737404784.116285";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D199104F-4BF7-D24B-3250-8AAA9865A1B5";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8E57841F-416B-E522-AF75-EB89A9DFC89B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EA0D495D-4DCC-83FF-F16B-6D9FA1DE02FA";
createNode displayLayerManager -n "layerManager";
	rename -uid "D5C90F75-4F13-AD7F-E69F-D992C678E19E";
createNode displayLayer -n "defaultLayer";
	rename -uid "35C4D256-4F7C-388E-B2D3-918DF8407933";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9E2D14EB-4DFC-E42A-4366-52A6A99553F7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DB82C193-46A5-DC05-C6CF-1BA9A89FE19A";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "C9A0936E-4171-3A16-0F6E-5BAEF7DFFA13";
	setAttr ".ihi" 0;
createNode reference -n "Player_rigRN";
	rename -uid "80E90AAE-4162-A2B8-D1CB-31B65D922BCD";
	setAttr -s 307 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Player_rigRN"
		"Player_rig:SK_OrionRN" 0
		"Player_rig:SK_SaucerRN" 0
		"Player_rigRN" 0
		"Player_rig:Player_modelRN" 0
		"Player_rig:SK_OrionRN" 4
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Orion.message" "Player_rigRN.placeHolderList[1]" 
		""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Orion|Player_rig:OrionShape.message" 
		"Player_rigRN.placeHolderList[2]" ""
		5 3 "Player_rigRN" "Player_rig:Material2.message" "Player_rigRN.placeHolderList[3]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG2.message" "Player_rigRN.placeHolderList[4]" 
		""
		"Player_rig:SK_SaucerRN" 2
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Saucer.message" "Player_rigRN.placeHolderList[5]" 
		""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Saucer|Player_rig:SaucerShape.message" 
		"Player_rigRN.placeHolderList[6]" ""
		"Player_rigRN" 302
		2 "|Player_rig:rig_controls|Player_rig:CTRL_ship" "rotatePivot" " -type \"double3\" 0.0050395080430902794 0 0"
		
		2 "|Player_rig:rig_controls|Player_rig:CTRL_ship" "scalePivot" " -type \"double3\" 0.0050395080430902794 0 0"
		
		2 "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed" 
		"instObjGroups.objectGroups" " -s 2"
		2 "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed" 
		"uvSet[0].uvSetName" " -type \"string\" \"UVMap\""
		2 "Player_rig:geo" "hideOnPlayback" " 0"
		2 "Player_rig:groupParts3" "inputRemoveComponent" " -type \"componentList\" 1 \"f[160:255]\""
		
		2 "Player_rig:groupParts3" "groupId" " 103"
		2 "Player_rig:layer1" "hideOnPlayback" " 0"
		3 "Player_rig:skinCluster4.outputGeometry[0]" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.inMesh" 
		""
		3 "Player_rig:groupId9.groupId" "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed.instObjGroups.objectGroups[2].objectGroupId" 
		""
		3 "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed.instObjGroups.objectGroups[2]" 
		":defaultLastHiddenSet.dagSetMembers" "-na"
		3 "Player_rig:groupId9.message" ":defaultLastHiddenSet.groupNodes" "-na"
		3 "Player_rig:groupId9.groupId" "Player_rig:groupParts3.groupId" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton.message" "Player_rigRN.placeHolderList[20]" 
		""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root.message" "Player_rigRN.placeHolderList[21]" 
		""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis.message" 
		"Player_rigRN.placeHolderList[22]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine.message" 
		"Player_rigRN.placeHolderList[23]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest.message" 
		"Player_rigRN.placeHolderList[24]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head.message" 
		"Player_rigRN.placeHolderList[25]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:nose.message" 
		"Player_rigRN.placeHolderList[26]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:nose|Player_rig:nose_tip.message" 
		"Player_rigRN.placeHolderList[27]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:head_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[28]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l.message" 
		"Player_rigRN.placeHolderList[29]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l.message" 
		"Player_rigRN.placeHolderList[30]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:hand_l.message" 
		"Player_rigRN.placeHolderList[31]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:hand_l|Player_rig:hand_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[32]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:lowerarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[33]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:upperarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[34]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r.message" 
		"Player_rigRN.placeHolderList[35]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r.message" 
		"Player_rigRN.placeHolderList[36]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:hand_r.message" 
		"Player_rigRN.placeHolderList[37]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:hand_r|Player_rig:hand_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[38]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:lowerarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[39]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:upperarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[40]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:chest_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[41]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:spine|Player_rig:spine_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[42]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l.message" 
		"Player_rigRN.placeHolderList[43]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l.message" 
		"Player_rigRN.placeHolderList[44]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:foot_l.message" 
		"Player_rigRN.placeHolderList[45]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:foot_l|Player_rig:foot_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[46]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:calf_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[47]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:thigh_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[48]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r.message" 
		"Player_rigRN.placeHolderList[49]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r.message" 
		"Player_rigRN.placeHolderList[50]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:foot_r.message" 
		"Player_rigRN.placeHolderList[51]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:foot_r|Player_rig:foot_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[52]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:calf_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[53]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:thigh_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[54]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:pelvis|Player_rig:pelvis_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[55]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root|Player_rig:root_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[56]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship.message" 
		"Player_rigRN.placeHolderList[57]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship|Player_rig:ship.message" 
		"Player_rigRN.placeHolderList[58]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship|Player_rig:root_parentConstraint2.message" 
		"Player_rigRN.placeHolderList[59]" ""
		5 3 "Player_rigRN" "|Player_rig:model.message" "Player_rigRN.placeHolderList[60]" 
		""
		5 3 "Player_rigRN" "|Player_rig:rig_controls.message" "Player_rigRN.placeHolderList[61]" 
		""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[62]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[63]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[64]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[65]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[66]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[67]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[68]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[69]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[70]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[71]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[72]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[73]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[74]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[75]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[76]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[77]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[78]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[79]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[80]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[81]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[82]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[83]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[84]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[85]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[86]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[87]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[88]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[89]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[90]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[91]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[92]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[93]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[94]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[95]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[96]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[97]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[98]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[99]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[100]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[101]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[102]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[103]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[104]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[105]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[106]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[107]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[108]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[109]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[110]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.message" 
		"Player_rigRN.placeHolderList[111]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[112]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[113]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[114]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[115]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[116]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship|Player_rig:CTRL_shipShape.message" 
		"Player_rigRN.placeHolderList[117]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.message" 
		"Player_rigRN.placeHolderList[118]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_rootShape.message" 
		"Player_rigRN.placeHolderList[119]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.message" 
		"Player_rigRN.placeHolderList[120]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:CTRL_cogShape.message" 
		"Player_rigRN.placeHolderList[121]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp.message" 
		"Player_rigRN.placeHolderList[122]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.message" 
		"Player_rigRN.placeHolderList[123]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_pelvis_IKShape.message" 
		"Player_rigRN.placeHolderList[124]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_spine_IK.message" 
		"Player_rigRN.placeHolderList[125]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_spine_IK|Player_rig:CTRL_spine_IKShape.message" 
		"Player_rigRN.placeHolderList[126]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_spine_IK|Player_rig:CTRL_chest_IK.message" 
		"Player_rigRN.placeHolderList[127]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_spine_IK|Player_rig:CTRL_chest_IK|Player_rig:CTRL_chest_IKShape.message" 
		"Player_rigRN.placeHolderList[128]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK.message" 
		"Player_rigRN.placeHolderList[129]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_pelvis_FKShape.message" 
		"Player_rigRN.placeHolderList[130]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK.message" 
		"Player_rigRN.placeHolderList[131]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_spine_FKShape.message" 
		"Player_rigRN.placeHolderList[132]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK.message" 
		"Player_rigRN.placeHolderList[133]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK|Player_rig:CTRL_chest_FKShape.message" 
		"Player_rigRN.placeHolderList[134]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:torso_grp|Player_rig:ikHandle_spine.message" 
		"Player_rigRN.placeHolderList[135]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[136]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK.message" 
		"Player_rigRN.placeHolderList[137]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK|Player_rig:CTRL_leg_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[138]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[139]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_thigh_r_FKShape.message" 
		"Player_rigRN.placeHolderList[140]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK.message" 
		"Player_rigRN.placeHolderList[141]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK|Player_rig:CTRL_calf_r_FKShape.message" 
		"Player_rigRN.placeHolderList[142]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole.message" 
		"Player_rigRN.placeHolderList[143]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole|Player_rig:CTRL_leg_r_poleShape.message" 
		"Player_rigRN.placeHolderList[144]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.message" 
		"Player_rigRN.placeHolderList[145]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:CTRL_foot_r_IKShape.message" 
		"Player_rigRN.placeHolderList[146]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r.message" 
		"Player_rigRN.placeHolderList[147]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r|Player_rig:ikHandle2_leg_r_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[148]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[149]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK.message" 
		"Player_rigRN.placeHolderList[150]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK|Player_rig:CTRL_leg_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[151]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[152]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_thigh_l_FKShape.message" 
		"Player_rigRN.placeHolderList[153]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK.message" 
		"Player_rigRN.placeHolderList[154]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK|Player_rig:CTRL_calf_l_FKShape.message" 
		"Player_rigRN.placeHolderList[155]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.message" 
		"Player_rigRN.placeHolderList[156]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:CTRL_foot_l_IKShape.message" 
		"Player_rigRN.placeHolderList[157]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle_foot_l.message" 
		"Player_rigRN.placeHolderList[158]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle_foot_l|Player_rig:ikHandle_foot_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[159]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole.message" 
		"Player_rigRN.placeHolderList[160]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole|Player_rig:CTRL_leg_l_poleShape.message" 
		"Player_rigRN.placeHolderList[161]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[162]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[163]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_upperarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[164]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[165]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_lowerarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[166]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK.message" 
		"Player_rigRN.placeHolderList[167]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK|Player_rig:CTRL_hand_r_FKShape.message" 
		"Player_rigRN.placeHolderList[168]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK.message" 
		"Player_rigRN.placeHolderList[169]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK|Player_rig:CTRL_arm_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[170]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.message" 
		"Player_rigRN.placeHolderList[171]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole|Player_rig:CTRL_arm_r_poleShape.message" 
		"Player_rigRN.placeHolderList[172]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.message" 
		"Player_rigRN.placeHolderList[173]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:CTRL_arm_r_ikShape.message" 
		"Player_rigRN.placeHolderList[174]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r.message" 
		"Player_rigRN.placeHolderList[175]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r|Player_rig:ikHandle3_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[176]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[177]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK.message" 
		"Player_rigRN.placeHolderList[178]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK|Player_rig:CTRL_arm_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[179]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[180]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_upperarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[181]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[182]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_lowerarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[183]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK.message" 
		"Player_rigRN.placeHolderList[184]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK|Player_rig:CTRL_hand_l_FKShape.message" 
		"Player_rigRN.placeHolderList[185]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.message" 
		"Player_rigRN.placeHolderList[186]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:CTRL_arm_l_ikShape.message" 
		"Player_rigRN.placeHolderList[187]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle1_arm_l.message" 
		"Player_rigRN.placeHolderList[188]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle1_arm_l|Player_rig:ikHandle1_arm_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[189]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.message" 
		"Player_rigRN.placeHolderList[190]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole|Player_rig:CTRL_arm_l_poleShape.message" 
		"Player_rigRN.placeHolderList[191]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:head_grp.message" 
		"Player_rigRN.placeHolderList[192]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:head_grp|Player_rig:CTRL_head.message" 
		"Player_rigRN.placeHolderList[193]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:head_grp|Player_rig:CTRL_head|Player_rig:CTRL_headShape.message" 
		"Player_rigRN.placeHolderList[194]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:head_grp|Player_rig:head_grp_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[195]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems.message" "Player_rigRN.placeHolderList[196]" 
		""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group.message" 
		"Player_rigRN.placeHolderList[197]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:chest_ctrljnt.message" 
		"Player_rigRN.placeHolderList[198]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:chest_ctrljnt|Player_rig:chest_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[199]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:mid_ctrljnt.message" 
		"Player_rigRN.placeHolderList[200]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:mid_ctrljnt|Player_rig:mid_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[201]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_ctrljnt.message" 
		"Player_rigRN.placeHolderList[202]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_ctrljnt|Player_rig:pelvis_ctrljnt1_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[203]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:spine_ik_curve.message" 
		"Player_rigRN.placeHolderList[204]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShape.message" 
		"Player_rigRN.placeHolderList[205]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShapeOrig.message" 
		"Player_rigRN.placeHolderList[206]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_IK.message" 
		"Player_rigRN.placeHolderList[207]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK.message" 
		"Player_rigRN.placeHolderList[208]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:chest_IK.message" 
		"Player_rigRN.placeHolderList[209]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:effector3.message" 
		"Player_rigRN.placeHolderList[210]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK.message" 
		"Player_rigRN.placeHolderList[211]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK.message" 
		"Player_rigRN.placeHolderList[212]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK.message" 
		"Player_rigRN.placeHolderList[213]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK|Player_rig:chest_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[214]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:spine_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[215]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:pelvis_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[216]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[217]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK.message" 
		"Player_rigRN.placeHolderList[218]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK.message" 
		"Player_rigRN.placeHolderList[219]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK.message" 
		"Player_rigRN.placeHolderList[220]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK|Player_rig:hand_l_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[221]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:effector5.message" 
		"Player_rigRN.placeHolderList[222]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[223]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[224]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK.message" 
		"Player_rigRN.placeHolderList[225]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK|Player_rig:hand_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[226]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:lowerarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[227]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:upperarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[228]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[229]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK.message" 
		"Player_rigRN.placeHolderList[230]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK.message" 
		"Player_rigRN.placeHolderList[231]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK.message" 
		"Player_rigRN.placeHolderList[232]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK|Player_rig:hand_r_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[233]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:effector7.message" 
		"Player_rigRN.placeHolderList[234]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[235]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[236]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK.message" 
		"Player_rigRN.placeHolderList[237]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK|Player_rig:hand_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[238]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:lowerarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[239]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:upperarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[240]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[241]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_IK.message" 
		"Player_rigRN.placeHolderList[242]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK.message" 
		"Player_rigRN.placeHolderList[243]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:foot_l_IK.message" 
		"Player_rigRN.placeHolderList[244]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:effector4.message" 
		"Player_rigRN.placeHolderList[245]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[246]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK.message" 
		"Player_rigRN.placeHolderList[247]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:foot_l_FK.message" 
		"Player_rigRN.placeHolderList[248]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:calf_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[249]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:thigh_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[250]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[251]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_IK.message" 
		"Player_rigRN.placeHolderList[252]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK.message" 
		"Player_rigRN.placeHolderList[253]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:foot_r_IK.message" 
		"Player_rigRN.placeHolderList[254]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:effector6.message" 
		"Player_rigRN.placeHolderList[255]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[256]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK.message" 
		"Player_rigRN.placeHolderList[257]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:foot_r_FK.message" 
		"Player_rigRN.placeHolderList[258]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:calf_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[259]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:thigh_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[260]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:worldspace_locator.message" 
		"Player_rigRN.placeHolderList[261]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:worldspace_locator|Player_rig:worldspace_locatorShape.message" 
		"Player_rigRN.placeHolderList[262]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed.message" 
		"Player_rigRN.placeHolderList[263]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.instObjGroups.objectGroups[2]" 
		"Player_rigRN.placeHolderList[264]" ""
		5 4 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.instObjGroups.objectGroups[2].objectGroupId" 
		"Player_rigRN.placeHolderList[265]" ""
		5 4 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.instObjGroups.objectGroups[2].objectGrpColor" 
		"Player_rigRN.placeHolderList[266]" ""
		5 4 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.instObjGroups.objectGroups[3].objectGroupId" 
		"Player_rigRN.placeHolderList[267]" ""
		5 4 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.inMesh" 
		"Player_rigRN.placeHolderList[268]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.message" 
		"Player_rigRN.placeHolderList[269]" ""
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager.message" "Player_rigRN.placeHolderList[270]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager.message" "Player_rigRN.placeHolderList[271]" 
		""
		5 3 "Player_rigRN" "Player_rig:layerManager.message" "Player_rigRN.placeHolderList[272]" 
		""
		5 3 "Player_rigRN" "Player_rig:defaultLayer.message" "Player_rigRN.placeHolderList[273]" 
		""
		5 3 "Player_rigRN" "Player_rig:uiConfigurationScriptNode.message" "Player_rigRN.placeHolderList[274]" 
		""
		5 3 "Player_rigRN" "Player_rig:sceneConfigurationScriptNode.message" 
		"Player_rigRN.placeHolderList[275]" ""
		5 3 "Player_rigRN" "Player_rig:Player_modelRN.message" "Player_rigRN.placeHolderList[276]" 
		""
		5 3 "Player_rigRN" "Player_rig:geo.message" "Player_rigRN.placeHolderList[277]" 
		""
		5 3 "Player_rigRN" "Player_rig:tweak1.message" "Player_rigRN.placeHolderList[278]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle1.message" "Player_rigRN.placeHolderList[279]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster2.message" "Player_rigRN.placeHolderList[280]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose3.message" "Player_rigRN.placeHolderList[281]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry1.message" "Player_rigRN.placeHolderList[282]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle2.message" "Player_rigRN.placeHolderList[283]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry2.message" "Player_rigRN.placeHolderList[284]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry3.message" "Player_rigRN.placeHolderList[285]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse1.message" "Player_rigRN.placeHolderList[286]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse2.message" "Player_rigRN.placeHolderList[287]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionShapeDeformedHiddenFacesSet.message" 
		"Player_rigRN.placeHolderList[288]" ""
		5 3 "Player_rigRN" "Player_rig:reverse3.message" "Player_rigRN.placeHolderList[289]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry4.message" "Player_rigRN.placeHolderList[290]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse4.message" "Player_rigRN.placeHolderList[291]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse5.message" "Player_rigRN.placeHolderList[292]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle3.message" "Player_rigRN.placeHolderList[293]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry5.message" "Player_rigRN.placeHolderList[294]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry6.message" "Player_rigRN.placeHolderList[295]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle4.message" "Player_rigRN.placeHolderList[296]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry7.message" "Player_rigRN.placeHolderList[297]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry8.message" "Player_rigRN.placeHolderList[298]" 
		""
		5 3 "Player_rigRN" "Player_rig:pasted__multiplyDivide1.message" "Player_rigRN.placeHolderList[299]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster4.outputGeometry[0]" "Player_rigRN.placeHolderList[300]" 
		"Player_rig:SaucerShapeDeformed.i"
		5 3 "Player_rigRN" "Player_rig:skinCluster4.message" "Player_rigRN.placeHolderList[301]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose5.message" "Player_rigRN.placeHolderList[302]" 
		""
		5 3 "Player_rigRN" "Player_rig:sharedReferenceNode1.message" "Player_rigRN.placeHolderList[303]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster5.message" "Player_rigRN.placeHolderList[304]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose6.message" "Player_rigRN.placeHolderList[305]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind1.message" "Player_rigRN.placeHolderList[306]" 
		""
		5 3 "Player_rigRN" "Player_rig:layer1.message" "Player_rigRN.placeHolderList[307]" 
		""
		"Player_rig:Player_modelRN" 13
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager1.message" "Player_rigRN.placeHolderList[7]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager1.message" "Player_rigRN.placeHolderList[8]" 
		""
		5 3 "Player_rigRN" "Player_rig:layerManager1.message" "Player_rigRN.placeHolderList[9]" 
		""
		5 3 "Player_rigRN" "Player_rig:defaultLayer1.message" "Player_rigRN.placeHolderList[10]" 
		""
		5 3 "Player_rigRN" "Player_rig:uiConfigurationScriptNode1.message" "Player_rigRN.placeHolderList[11]" 
		""
		5 3 "Player_rigRN" "Player_rig:sceneConfigurationScriptNode1.message" 
		"Player_rigRN.placeHolderList[12]" ""
		5 3 "Player_rigRN" "Player_rig:Material.message" "Player_rigRN.placeHolderList[13]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG.message" "Player_rigRN.placeHolderList[14]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material1.message" "Player_rigRN.placeHolderList[15]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG1.message" "Player_rigRN.placeHolderList[16]" 
		""
		5 3 "Player_rigRN" "Player_rig:SK_OrionRN.message" "Player_rigRN.placeHolderList[17]" 
		""
		5 3 "Player_rigRN" "Player_rig:SK_SaucerRN.message" "Player_rigRN.placeHolderList[18]" 
		""
		5 3 "Player_rigRN" "Player_rig:sharedReferenceNode.message" "Player_rigRN.placeHolderList[19]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "B1001E88-4C19-8EA1-8004-96BBF80D74DA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1152.3809065894493 -103.9682498369269 ;
	setAttr ".tgi[0].vh" -type "double2" 1152.3809065894493 103.9682498369269 ;
	setAttr -s 250 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 84.285713195800781;
	setAttr ".tgi[0].ni[0].y" 31.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -268.57144165039062;
	setAttr ".tgi[0].ni[1].y" 31.428571701049805;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1567.142822265625;
	setAttr ".tgi[0].ni[2].y" 1414.2857666015625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1567.142822265625;
	setAttr ".tgi[0].ni[3].y" 1888.5714111328125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1567.142822265625;
	setAttr ".tgi[0].ni[4].y" 4510;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 624.28570556640625;
	setAttr ".tgi[0].ni[5].y" 4551.4287109375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -1525.7142333984375;
	setAttr ".tgi[0].ni[6].y" 7514.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 2184.28564453125;
	setAttr ".tgi[0].ni[7].y" 9667.142578125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 952.85711669921875;
	setAttr ".tgi[0].ni[8].y" 5445.71435546875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -1218.5714111328125;
	setAttr ".tgi[0].ni[9].y" 8197.142578125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2184.28564453125;
	setAttr ".tgi[0].ni[10].y" 9544.2861328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2184.28564453125;
	setAttr ".tgi[0].ni[11].y" 9382.857421875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[12].y" 507.14285278320312;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -1525.7142333984375;
	setAttr ".tgi[0].ni[13].y" 7810;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1260;
	setAttr ".tgi[0].ni[14].y" 3471.428466796875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[15].y" 2567.142822265625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2184.28564453125;
	setAttr ".tgi[0].ni[16].y" 9202.857421875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2184.28564453125;
	setAttr ".tgi[0].ni[17].y" 8998.5712890625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 952.85711669921875;
	setAttr ".tgi[0].ni[18].y" 3831.428466796875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2265.71435546875;
	setAttr ".tgi[0].ni[19].y" -9451.4287109375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 10;
	setAttr ".tgi[0].ni[20].y" 8931.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 624.28570556640625;
	setAttr ".tgi[0].ni[21].y" 4314.28564453125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1260;
	setAttr ".tgi[0].ni[22].y" 3168.571533203125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 2184.28564453125;
	setAttr ".tgi[0].ni[23].y" 8875.7138671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -297.14285278320312;
	setAttr ".tgi[0].ni[24].y" 7721.4287109375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 2265.71435546875;
	setAttr ".tgi[0].ni[25].y" -242.85714721679688;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -1218.5714111328125;
	setAttr ".tgi[0].ni[26].y" 7714.28564453125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1260;
	setAttr ".tgi[0].ni[27].y" 5474.28564453125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 2184.28564453125;
	setAttr ".tgi[0].ni[28].y" 8752.857421875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2184.28564453125;
	setAttr ".tgi[0].ni[29].y" 8605.7138671875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 952.85711669921875;
	setAttr ".tgi[0].ni[30].y" 3708.571533203125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 2184.28564453125;
	setAttr ".tgi[0].ni[31].y" 8454.2861328125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1260;
	setAttr ".tgi[0].ni[32].y" 8677.142578125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2184.28564453125;
	setAttr ".tgi[0].ni[33].y" 8311.4287109375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 952.85711669921875;
	setAttr ".tgi[0].ni[34].y" 4980;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 10;
	setAttr ".tgi[0].ni[35].y" 8040;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[36].y" 2690;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -604.28570556640625;
	setAttr ".tgi[0].ni[37].y" 8148.5712890625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2265.71435546875;
	setAttr ".tgi[0].ni[38].y" -9300;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -297.14285278320312;
	setAttr ".tgi[0].ni[39].y" 8425.7138671875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 2265.71435546875;
	setAttr ".tgi[0].ni[40].y" -9148.5712890625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1567.142822265625;
	setAttr ".tgi[0].ni[41].y" 3637.142822265625;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -1834.2857666015625;
	setAttr ".tgi[0].ni[42].y" 7761.4287109375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 2184.28564453125;
	setAttr ".tgi[0].ni[43].y" 8188.5712890625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 624.28570556640625;
	setAttr ".tgi[0].ni[44].y" 5148.5712890625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 952.85711669921875;
	setAttr ".tgi[0].ni[45].y" 6025.71435546875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1567.142822265625;
	setAttr ".tgi[0].ni[46].y" 1651.4285888671875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2265.71435546875;
	setAttr ".tgi[0].ni[47].y" -8997.142578125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1567.142822265625;
	setAttr ".tgi[0].ni[48].y" 8007.14306640625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[49].y" 7137.14306640625;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[50].y" 7014.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2265.71435546875;
	setAttr ".tgi[0].ni[51].y" -8845.7138671875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -604.28570556640625;
	setAttr ".tgi[0].ni[52].y" 7335.71435546875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 2184.28564453125;
	setAttr ".tgi[0].ni[53].y" 8065.71435546875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2265.71435546875;
	setAttr ".tgi[0].ni[54].y" -8694.2861328125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1260;
	setAttr ".tgi[0].ni[55].y" 4828.5712890625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[56].y" 3990;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 2184.28564453125;
	setAttr ".tgi[0].ni[57].y" 7885.71435546875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 2184.28564453125;
	setAttr ".tgi[0].ni[58].y" 7672.85693359375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 624.28570556640625;
	setAttr ".tgi[0].ni[59].y" 4911.4287109375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 952.85711669921875;
	setAttr ".tgi[0].ni[60].y" 3954.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1260;
	setAttr ".tgi[0].ni[61].y" 3880;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 2265.71435546875;
	setAttr ".tgi[0].ni[62].y" -8542.857421875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1567.142822265625;
	setAttr ".tgi[0].ni[63].y" 3817.142822265625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 1260;
	setAttr ".tgi[0].ni[64].y" 5065.71435546875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1567.142822265625;
	setAttr ".tgi[0].ni[65].y" 4272.85693359375;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 317.14285278320312;
	setAttr ".tgi[0].ni[66].y" 7285.71435546875;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[67].y" 211.42857360839844;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1344.2857666015625;
	setAttr ".tgi[0].ni[68].y" -545.71429443359375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 2184.28564453125;
	setAttr ".tgi[0].ni[69].y" 7525.71435546875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[70].y" 3155.71435546875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 2265.71435546875;
	setAttr ".tgi[0].ni[71].y" -8391.4287109375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 2265.71435546875;
	setAttr ".tgi[0].ni[72].y" -8240;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[73].y" 6768.5712890625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 2265.71435546875;
	setAttr ".tgi[0].ni[74].y" -8088.5712890625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2265.71435546875;
	setAttr ".tgi[0].ni[75].y" -7937.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 2184.28564453125;
	setAttr ".tgi[0].ni[76].y" 7345.71435546875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 2265.71435546875;
	setAttr ".tgi[0].ni[77].y" -7785.71435546875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 2245.71435546875;
	setAttr ".tgi[0].ni[78].y" -1577.142822265625;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 2184.28564453125;
	setAttr ".tgi[0].ni[79].y" 7194.28564453125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2265.71435546875;
	setAttr ".tgi[0].ni[80].y" 150;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[81].y" 6465.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1567.142822265625;
	setAttr ".tgi[0].ni[82].y" 7245.71435546875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1567.142822265625;
	setAttr ".tgi[0].ni[83].y" 2877.142822265625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1260;
	setAttr ".tgi[0].ni[84].y" 3348.571533203125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1651.4285888671875;
	setAttr ".tgi[0].ni[85].y" -545.71429443359375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1344.2857666015625;
	setAttr ".tgi[0].ni[86].y" -394.28570556640625;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -1218.5714111328125;
	setAttr ".tgi[0].ni[87].y" 7894.28564453125;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1651.4285888671875;
	setAttr ".tgi[0].ni[88].y" -697.14288330078125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[89].y" -242.85714721679688;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1344.2857666015625;
	setAttr ".tgi[0].ni[90].y" 357.14285278320312;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1567.142822265625;
	setAttr ".tgi[0].ni[91].y" 7368.5712890625;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 952.85711669921875;
	setAttr ".tgi[0].ni[92].y" 8472.857421875;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1651.4285888671875;
	setAttr ".tgi[0].ni[93].y" 211.42857360839844;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1260;
	setAttr ".tgi[0].ni[94].y" 8440;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1567.142822265625;
	setAttr ".tgi[0].ni[95].y" 6291.4287109375;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[96].y" -394.28570556640625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1651.4285888671875;
	setAttr ".tgi[0].ni[97].y" -394.28570556640625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1567.142822265625;
	setAttr ".tgi[0].ni[98].y" 2468.571533203125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 2184.28564453125;
	setAttr ".tgi[0].ni[99].y" 6895.71435546875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[100].y" -545.71429443359375;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 10;
	setAttr ".tgi[0].ni[101].y" 7557.14306640625;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1037.142822265625;
	setAttr ".tgi[0].ni[102].y" -242.85714721679688;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 1651.4285888671875;
	setAttr ".tgi[0].ni[103].y" -242.85714721679688;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1344.2857666015625;
	setAttr ".tgi[0].ni[104].y" -242.85714721679688;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1567.142822265625;
	setAttr ".tgi[0].ni[105].y" 3400;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[106].y" -697.14288330078125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 2265.71435546875;
	setAttr ".tgi[0].ni[107].y" -7634.28564453125;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[108].y" 88.571426391601562;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 2265.71435546875;
	setAttr ".tgi[0].ni[109].y" -7482.85693359375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2265.71435546875;
	setAttr ".tgi[0].ni[110].y" -848.5714111328125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[111].y" -910;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[112].y" 6891.4287109375;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[113].y" 6588.5712890625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 2184.28564453125;
	setAttr ".tgi[0].ni[114].y" 6772.85693359375;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 2184.28564453125;
	setAttr ".tgi[0].ni[115].y" 6650;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2265.71435546875;
	setAttr ".tgi[0].ni[116].y" -971.4285888671875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2265.71435546875;
	setAttr ".tgi[0].ni[117].y" -7331.4287109375;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[118].y" -1274.2857666015625;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 2184.28564453125;
	setAttr ".tgi[0].ni[119].y" 6527.14306640625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 2264.28564453125;
	setAttr ".tgi[0].ni[120].y" -1728.5714111328125;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 624.28570556640625;
	setAttr ".tgi[0].ni[121].y" 4674.28564453125;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[122].y" -1122.857177734375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 2265.71435546875;
	setAttr ".tgi[0].ni[123].y" -1122.857177734375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 2238.571533203125;
	setAttr ".tgi[0].ni[124].y" -1425.7142333984375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2184.28564453125;
	setAttr ".tgi[0].ni[125].y" 6404.28564453125;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2265.71435546875;
	setAttr ".tgi[0].ni[126].y" -1274.2857666015625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 1260;
	setAttr ".tgi[0].ni[127].y" 7860;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1344.2857666015625;
	setAttr ".tgi[0].ni[128].y" 177.14285278320312;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -604.28570556640625;
	setAttr ".tgi[0].ni[129].y" 8271.4287109375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 2184.28564453125;
	setAttr ".tgi[0].ni[130].y" 6228.5712890625;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 10;
	setAttr ".tgi[0].ni[131].y" 8408.5712890625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 10;
	setAttr ".tgi[0].ni[132].y" 8285.7138671875;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 317.14285278320312;
	setAttr ".tgi[0].ni[133].y" 8348.5712890625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 624.28570556640625;
	setAttr ".tgi[0].ni[134].y" 8697.142578125;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 2184.28564453125;
	setAttr ".tgi[0].ni[135].y" 6078.5712890625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 317.14285278320312;
	setAttr ".tgi[0].ni[136].y" 7522.85693359375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 2184.28564453125;
	setAttr ".tgi[0].ni[137].y" 5955.71435546875;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 2265.71435546875;
	setAttr ".tgi[0].ni[138].y" -9602.857421875;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 624.28570556640625;
	setAttr ".tgi[0].ni[139].y" 8991.4287109375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -911.4285888671875;
	setAttr ".tgi[0].ni[140].y" 7938.5712890625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -297.14285278320312;
	setAttr ".tgi[0].ni[141].y" 8062.85693359375;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 10;
	setAttr ".tgi[0].ni[142].y" 8162.85693359375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -1218.5714111328125;
	setAttr ".tgi[0].ni[143].y" 8017.14306640625;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 624.28570556640625;
	setAttr ".tgi[0].ni[144].y" 7365.71435546875;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 2184.28564453125;
	setAttr ".tgi[0].ni[145].y" 5534.28564453125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 317.14285278320312;
	setAttr ".tgi[0].ni[146].y" 7645.71435546875;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 624.28570556640625;
	setAttr ".tgi[0].ni[147].y" 8117.14306640625;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 317.14285278320312;
	setAttr ".tgi[0].ni[148].y" 8225.7138671875;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2184.28564453125;
	setAttr ".tgi[0].ni[149].y" 5262.85693359375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 2184.28564453125;
	setAttr ".tgi[0].ni[150].y" 5140;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 2184.28564453125;
	setAttr ".tgi[0].ni[151].y" 5017.14306640625;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -911.4285888671875;
	setAttr ".tgi[0].ni[152].y" 8118.5712890625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 10;
	setAttr ".tgi[0].ni[153].y" 7680;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 317.14285278320312;
	setAttr ".tgi[0].ni[154].y" 6982.85693359375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[155].y" 3507.142822265625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 2265.71435546875;
	setAttr ".tgi[0].ni[156].y" -394.28570556640625;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[157].y" 8274.2861328125;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 2184.28564453125;
	setAttr ".tgi[0].ni[158].y" 4448.5712890625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 2265.71435546875;
	setAttr ".tgi[0].ni[159].y" -7180;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 2265.71435546875;
	setAttr ".tgi[0].ni[160].y" -7028.5712890625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 2184.28564453125;
	setAttr ".tgi[0].ni[161].y" 4275.71435546875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[162].y" 7317.14306640625;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 730;
	setAttr ".tgi[0].ni[163].y" 154.28572082519531;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 2184.28564453125;
	setAttr ".tgi[0].ni[164].y" 4104.28564453125;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 2265.71435546875;
	setAttr ".tgi[0].ni[165].y" -6877.14306640625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 2265.71435546875;
	setAttr ".tgi[0].ni[166].y" -6725.71435546875;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 952.85711669921875;
	setAttr ".tgi[0].ni[167].y" 4077.142822265625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 1037.142822265625;
	setAttr ".tgi[0].ni[168].y" 142.85714721679688;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" -2141.428466796875;
	setAttr ".tgi[0].ni[169].y" 7672.85693359375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[170].y" 7497.14306640625;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 2184.28564453125;
	setAttr ".tgi[0].ni[171].y" 3765.71435546875;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 2265.71435546875;
	setAttr ".tgi[0].ni[172].y" -6574.28564453125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[173].y" 9354.2861328125;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 624.28570556640625;
	setAttr ".tgi[0].ni[174].y" 6662.85693359375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 2184.28564453125;
	setAttr ".tgi[0].ni[175].y" 3535.71435546875;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 2265.71435546875;
	setAttr ".tgi[0].ni[176].y" -6422.85693359375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 2265.71435546875;
	setAttr ".tgi[0].ni[177].y" -62.857143402099609;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 2265.71435546875;
	setAttr ".tgi[0].ni[178].y" -6271.4287109375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 2265.71435546875;
	setAttr ".tgi[0].ni[179].y" -6120;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 317.14285278320312;
	setAttr ".tgi[0].ni[180].y" 7105.71435546875;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 2265.71435546875;
	setAttr ".tgi[0].ni[181].y" -5968.5712890625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 2184.28564453125;
	setAttr ".tgi[0].ni[182].y" 3270;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1567.142822265625;
	setAttr ".tgi[0].ni[183].y" 4804.28564453125;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 10;
	setAttr ".tgi[0].ni[184].y" 7802.85693359375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2265.71435546875;
	setAttr ".tgi[0].ni[185].y" -5817.14306640625;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2184.28564453125;
	setAttr ".tgi[0].ni[186].y" 2918.571533203125;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 2265.71435546875;
	setAttr ".tgi[0].ni[187].y" -5665.71435546875;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2184.28564453125;
	setAttr ".tgi[0].ni[188].y" 2567.142822265625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 2265.71435546875;
	setAttr ".tgi[0].ni[189].y" -5514.28564453125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[190].y" 3687.142822265625;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[191].y" 3867.142822265625;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 2265.71435546875;
	setAttr ".tgi[0].ni[192].y" -5362.85693359375;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 2265.71435546875;
	setAttr ".tgi[0].ni[193].y" -5211.4287109375;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[194].y" 7734.28564453125;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 2265.71435546875;
	setAttr ".tgi[0].ni[195].y" -5060;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[196].y" 7857.14306640625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 2184.28564453125;
	setAttr ".tgi[0].ni[197].y" 2215.71435546875;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2265.71435546875;
	setAttr ".tgi[0].ni[198].y" -4908.5712890625;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2265.71435546875;
	setAttr ".tgi[0].ni[199].y" -697.14288330078125;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2184.28564453125;
	setAttr ".tgi[0].ni[200].y" 1930;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -2448.571533203125;
	setAttr ".tgi[0].ni[201].y" 7568.5712890625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1958.5714111328125;
	setAttr ".tgi[0].ni[202].y" -91.428573608398438;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[203].y" 9534.2861328125;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 624.28570556640625;
	setAttr ".tgi[0].ni[204].y" 7014.28564453125;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 2184.28564453125;
	setAttr ".tgi[0].ni[205].y" 1644.2857666015625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 317.14285278320312;
	setAttr ".tgi[0].ni[206].y" 5068.5712890625;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2265.71435546875;
	setAttr ".tgi[0].ni[207].y" -4757.14306640625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1260;
	setAttr ".tgi[0].ni[208].y" 4297.14306640625;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 2265.71435546875;
	setAttr ".tgi[0].ni[209].y" -4605.71435546875;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 2265.71435546875;
	setAttr ".tgi[0].ni[210].y" -4454.28564453125;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 1260;
	setAttr ".tgi[0].ni[211].y" 4002.857177734375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 2184.28564453125;
	setAttr ".tgi[0].ni[212].y" 1472.857177734375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2265.71435546875;
	setAttr ".tgi[0].ni[213].y" -4302.85693359375;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[214].y" 1415.7142333984375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 2184.28564453125;
	setAttr ".tgi[0].ni[215].y" 1292.857177734375;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[216].y" 1292.857177734375;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2265.71435546875;
	setAttr ".tgi[0].ni[217].y" -4151.4287109375;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 2265.71435546875;
	setAttr ".tgi[0].ni[218].y" -4000;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -297.14285278320312;
	setAttr ".tgi[0].ni[219].y" 8185.71435546875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2265.71435546875;
	setAttr ".tgi[0].ni[220].y" -3848.571533203125;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 2265.71435546875;
	setAttr ".tgi[0].ni[221].y" -3697.142822265625;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[222].y" 810;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 2265.71435546875;
	setAttr ".tgi[0].ni[223].y" -3545.71435546875;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[224].y" 9174.2861328125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 2265.71435546875;
	setAttr ".tgi[0].ni[225].y" -3394.28564453125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[226].y" 630;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 2265.71435546875;
	setAttr ".tgi[0].ni[227].y" -545.71429443359375;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[228].y" 8397.142578125;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[229].y" 8994.2861328125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 2265.71435546875;
	setAttr ".tgi[0].ni[230].y" -3242.857177734375;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2265.71435546875;
	setAttr ".tgi[0].ni[231].y" -3091.428466796875;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[232].y" 1112.857177734375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 2265.71435546875;
	setAttr ".tgi[0].ni[233].y" -2940;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 2265.71435546875;
	setAttr ".tgi[0].ni[234].y" -2788.571533203125;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 2265.71435546875;
	setAttr ".tgi[0].ni[235].y" -2637.142822265625;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[236].y" 8037.14306640625;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 2184.28564453125;
	setAttr ".tgi[0].ni[237].y" 1011.4285888671875;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 1260;
	setAttr ".tgi[0].ni[238].y" 6911.4287109375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[239].y" 932.85711669921875;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 2265.71435546875;
	setAttr ".tgi[0].ni[240].y" -2485.71435546875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2184.28564453125;
	setAttr ".tgi[0].ni[241].y" 708.5714111328125;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2265.71435546875;
	setAttr ".tgi[0].ni[242].y" -2334.28564453125;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 2184.28564453125;
	setAttr ".tgi[0].ni[243].y" 507.14285278320312;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 2265.71435546875;
	setAttr ".tgi[0].ni[244].y" -2182.857177734375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[245].y" 6057.14306640625;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[246].y" 8577.142578125;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 2265.71435546875;
	setAttr ".tgi[0].ni[247].y" -2031.4285888671875;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 1874.2857666015625;
	setAttr ".tgi[0].ni[248].y" 8814.2861328125;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 2265.71435546875;
	setAttr ".tgi[0].ni[249].y" -1880;
	setAttr ".tgi[0].ni[249].nvs" 18304;
createNode objectSet -n "Player_rig:SaucerShapeDeformedHiddenFacesSet";
	rename -uid "7021D548-497C-790A-1530-4A99A5347157";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "7106E779-45E4-6992-C715-39A72847C140";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "7EF6AA3E-4F12-5A92-D98C-BF8D55073F81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[541:632]";
createNode groupId -n "groupId2";
	rename -uid "A3EAE9C5-4984-23E2-0ED3-6FA3387140FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C16C3FA0-40DA-B87D-5EB8-289AE21DCD45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[541:632]";
createNode animCurveTA -n "CTRL_ship_rotateX";
	rename -uid "BA5641F0-4564-DBB7-FD48-A5B33AC502CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.0505056982307586 1 0.57397732764049503
		 3 -0.022100206899911101 10 3.3328765144927246 18 4.3459467972211883 22 3.9705037520072723
		 26 3.012654439577211 31 0.43139354378068173 33 -0.022100206899911101 40 2.8190376524252372
		 48 3.8437860911097768 56 3.1728021051773698 60 1.0505056982307586 61 0.50858987461555283;
	setAttr -s 14 ".kit[0:13]"  1 1 18 18 18 18 18 18 
		18 18 18 1 18 1;
	setAttr -s 14 ".kot[0:13]"  1 1 18 1 18 18 18 18 
		18 1 18 1 18 1;
	setAttr -s 14 ".kix[0:13]"  0.96321478203944133 0.9665654121024585 
		1 0.98857473118799299 1 0.99621412460433412 0.97945419306246095 0.97519048577735612 
		1 0.99101743421965582 1 0.99143268131564855 0.96321478203944133 0.16666666666666674;
	setAttr -s 14 ".kiy[0:13]"  -0.2687327364887121 -0.2564201710614909 
		0 0.15073155229276791 0 -0.086933410946656131 -0.20166676397553335 -0.22136737891867481 
		0 0.13373273747549652 0 -0.13061867561441448 -0.2687327364887121 -0.041601121379698153;
	setAttr -s 14 ".kox[0:13]"  0.96321478203944144 0.96656541060206103 
		1 0.98857473118436379 1 0.99621412460433412 0.97945419306246095 0.97519048577735612 
		1 0.99098224263341994 1 0.99143268131564866 0.96321478203944144 0.066666666666667762;
	setAttr -s 14 ".koy[0:13]"  -0.2687327364887121 -0.25642017671717909 
		0 0.15073155231657046 0 -0.086933410946656131 -0.20166676397553335 -0.22136737891867481 
		0 0.13399326395471467 0 -0.13061867561441443 -0.2687327364887121 -0.016640448551879301;
createNode animCurveTA -n "CTRL_ship_rotateY";
	rename -uid "B0FE560E-4E34-DB30-8381-60A3135A86C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0.068542886722309612 16 0.056634038944870138
		 21 -0.15501379363051138 31 -0.16528796026038425 43 0.10697745543124741 55 0.13112174701144844
		 60 0;
createNode animCurveTA -n "CTRL_ship_rotateZ";
	rename -uid "5FBBCD80-48DA-0376-B1A9-288570EF1951";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 15 -1.3008705327047176 21 1.0247702321552017
		 25 1.6835361230589991 31 1.9038477154944327 42 -0.75683922705892759 49 0.91531999204668191
		 53 1.2832890802565182 60 -0.05579517740245675;
	setAttr -s 9 ".kit[1:8]"  18 18 1 18 1 1 1 18;
	setAttr -s 9 ".kot[1:8]"  18 18 1 18 1 1 1 18;
	setAttr -s 9 ".kix[0:8]"  1 1 0.98801004942364123 0.99879427023468981 
		1 1 0.23333333333333384 0.99994192799368553 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.15438957943428078 0.049091809361170712 
		0 0 0.030374343847845438 0.010776856697161219 0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.98801004942364112 0.99879427059967862 
		1 1 0.13333333333333286 0.9999419279823718 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.15438957943428078 0.049091801935313477 
		0 0 0.017356767913054523 0.010776857746914109 0;
createNode animCurveTU -n "CTRL_ship_visibility";
	rename -uid "26AA098F-4DBC-3427-A53D-AEA51353BDCE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 15 1 22 1 24 1 30 1 31 1 60 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "CTRL_ship_translateX";
	rename -uid "D1C31274-488E-8142-B3D1-CAB68E350D92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 15 0 22 0 24 0 30 0 31 0 60 0;
createNode animCurveTL -n "CTRL_ship_translateY";
	rename -uid "D62E4035-4B5D-5342-5D74-6383EB797861";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.09440875460525433 1 3.7858082384727139
		 3 7.5495367142451038 5 5.0567170375692507 8 -0.09440875460525433 9 1.0503679308091094
		 12 5.6839242476398768 13 3.1911045709640491 16 -0.09440875460525433 18 3.7858082384727139
		 20 7.5495367142451038 21 5.0567170375692507 22 2.871912706022115 24 -0.09440875460525433
		 26 1.0503679308091094 28 5.6839242476398768 29 3.1911045709640491 31 0.43637249634353825
		 32 -0.09440875460525433 34 3.7858082384727139 36 7.5495367142451038 38 5.0567170375692507
		 41 -0.09440875460525433 42 1.0503679308091094 45 5.6839242476398768 46 3.1911045709640491
		 49 -0.09440875460525433 51 3.7858082384727139 53 7.5495367142451038 54 5.0567170375692507
		 57 -0.21057091494582991 60 0.72705027805143274;
	setAttr -s 32 ".kit[8:31]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18;
	setAttr -s 32 ".kot[5:31]"  1 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1;
	setAttr -s 32 ".kix[8:31]"  1 0.017440346038977223 1 0.014250802692386362 
		0.019409574854038887 1 0.023068565157778401 1 0.019053046479953692 0.030422555864946368 
		1 0.017440346038977223 1 0.021798567835230955 1 0.023068565157778401 1 0.023068565157778401 
		1 0.017440346038977223 1 0.017179356640231111 1 1;
	setAttr -s 32 ".kiy[8:31]"  0 0.99984790559866688 0 -0.99989845215532891 
		-0.99981161645781325 0 0.99973388524224849 0 -0.99981847423411452 -0.9995371269215787 
		0 0.99984790559866688 0 -0.99976238298924436 0 0.99973388524224849 0 -0.99973388524224849 
		0 0.99984790559866688 0 -0.9998524239633706 0 0;
	setAttr -s 32 ".kox[5:31]"  0.0043056270118580616 1 0.023068565157778397 
		1 0.023045405808518247 1 0.014250802692386362 0.019409574854038887 1 0.0043056270118580616 
		1 0.019053046479953692 0.030422555864946365 1 0.013081129927394684 1 0.021798567835230959 
		1 0.0043056270118580616 1 0.023068565157778401 1 0.023045405808518247 1 0.017179356640231114 
		1 0.0043056270118580616;
	setAttr -s 32 ".koy[5:31]"  0.99999073074505773 0 -0.99973388524224838 
		0 0.99973441936902463 0 -0.99989845215532891 -0.99981161645781313 0 0.99999073074505773 
		0 -0.99981847423411452 -0.9995371269215787 0 0.9999144383595141 0 -0.99976238298924458 
		0 0.99999073074505773 0 -0.9997338852422486 0 0.99973441936902463 0 -0.9998524239633706 
		0 0.99999073074505773;
createNode animCurveTL -n "CTRL_ship_translateZ";
	rename -uid "20350947-47A1-19AE-A2D3-D99AD32414EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 15 0 22 0 24 0 30 0 31 0 60 0;
createNode animCurveTU -n "CTRL_ship_scaleX";
	rename -uid "F7B1D5B0-4466-1E5D-AC96-D8B6EA81BABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 15 1 22 1 24 1 30 1 31 1 60 1;
createNode animCurveTU -n "CTRL_ship_scaleY";
	rename -uid "231D52C1-440D-323A-BEF2-22BE28C491FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 15 1 22 1 24 1 30 1 31 1 60 1;
createNode animCurveTU -n "CTRL_ship_scaleZ";
	rename -uid "6735CB34-4B9E-E697-5636-95AF842678C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 15 1 22 1 24 1 30 1 31 1 60 1;
createNode animLayer -n "BaseAnimation";
	rename -uid "F2551814-46B7-AC12-077B-E1B06BFB79D0";
	setAttr -s 4 ".cdly";
	setAttr -s 4 ".chsl";
	setAttr ".ovrd" yes;
createNode animLayer -n "ForwardTilt";
	rename -uid "2728B89D-44DE-4D65-9CE3-53B5EDCD4D27";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_ForwardTilt";
	rename -uid "491F4A48-44C1-C585-EB32-C5B6B08AE225";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_ForwardTilt";
	rename -uid "E4C6CE80-48C5-6982-47D5-19AFDAD949FC";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_ForwardTilt";
	rename -uid "E7167B3C-4773-609B-1F79-B8884B65B4BB";
	setAttr ".o" -0.09440875460525433;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_ForwardTilt";
	rename -uid "A6FEDE14-463E-87C8-9DE0-B0B9C93B794E";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_ForwardTilt";
	rename -uid "75260DE1-419D-A453-A341-72814F76AFA3";
	setAttr ".o" -type "double3" 20.907055098225726 -0.16039197501074953 1.8418782975987502 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_ForwardTilt";
	rename -uid "5BF855EF-42A2-1960-7EBA-40B205EA624A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_ForwardTilt";
	rename -uid "6056AB37-4890-5B8E-0D2B-6D99D5FA37CC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_ForwardTilt";
	rename -uid "01D91DFF-4CB9-B8F2-8A9C-6BA55308B5FE";
	setAttr ".o" 1;
createNode animCurveTA -n "CTRL_ship_rotate_ForwardTilt_inputBX";
	rename -uid "22F64FEE-4AC2-A0E9-2837-908ABA5B8692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.810792524302382;
createNode animCurveTA -n "CTRL_ship_rotate_ForwardTilt_inputBY";
	rename -uid "D7EB2A31-4415-375E-969A-FEA497DF1B3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "CTRL_ship_rotate_ForwardTilt_inputBZ";
	rename -uid "8DA0321A-47C3-52ED-6306-25BFF219C7FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "CTRL_ship_visibility_ForwardTilt_inputB";
	rename -uid "B8A3BB77-46E9-A09D-C0B8-F588FF44C284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_ForwardTilt_inputB";
	rename -uid "573334FF-4EE4-6C6D-BE98-E5BDD2DB911C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "CTRL_ship_translateY_ForwardTilt_inputB";
	rename -uid "91428899-4764-6C8A-5A09-40BA9921E20A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "CTRL_ship_translateZ_ForwardTilt_inputB";
	rename -uid "7F2E1680-4ED6-55BD-6FB0-F1B233007C6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "CTRL_ship_scaleX_ForwardTilt_inputB";
	rename -uid "AF6A18AB-4362-2890-8CD3-B2944B8616A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "CTRL_ship_scaleY_ForwardTilt_inputB";
	rename -uid "06C183AD-4101-2AEE-8A8F-2399CBF8C7EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "CTRL_ship_scaleZ_ForwardTilt_inputB";
	rename -uid "12D52D1E-4377-384E-CA9B-6F9438D05BF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animLayer -n "BackwardsTilt";
	rename -uid "3637BB27-48EE-F997-A767-4DAC2DA3B8D5";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_BackwardsTilt";
	rename -uid "101CC407-4E01-8454-08EB-E6958C4C2038";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_BackwardsTilt";
	rename -uid "DE634C73-4B36-069C-2FFE-0492CC897588";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_BackwardsTilt";
	rename -uid "6789E177-4EA8-AA30-546D-5DAA634297EB";
	setAttr ".o" -0.09440875460525433;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_BackwardsTilt";
	rename -uid "A879EA0D-44B4-5ED3-7EE6-43AE92EFECCB";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_BackwardsTilt";
	rename -uid "934B0976-4152-0FC0-28A2-938C9EC86F34";
	setAttr ".o" -type "double3" 20.907055098225726 -0.16039197501074953 1.8418782975987502 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_BackwardsTilt";
	rename -uid "978F6136-4D63-B4CE-109B-FD9CFF334FB9";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_BackwardsTilt";
	rename -uid "FD3243F1-41F3-436B-7E20-19AE66095155";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_BackwardsTilt";
	rename -uid "A9BE1D14-4304-0C0B-73A2-8DBDB49A7C4E";
	setAttr ".o" 1;
createNode animLayer -n "LeftTilt";
	rename -uid "BA5BC31D-4C7D-A080-A5B2-EEBECF656DB8";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_LeftTilt";
	rename -uid "43BD7111-4B7A-80EF-908B-2A8BB7F49379";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_LeftTilt";
	rename -uid "B9886259-4977-FF1E-BD77-5D9F07CBE5F8";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_LeftTilt";
	rename -uid "E78F823F-4010-1850-E272-4B9BEC611E51";
	setAttr ".o" -0.09440875460525433;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_LeftTilt";
	rename -uid "AACC8DEF-419E-7554-BB3B-ADB411483A13";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_LeftTilt";
	rename -uid "23E2BA0B-4FC0-8E51-ED92-8F86D8EB43C0";
	setAttr ".o" -type "double3" 20.907055098225726 -0.16039197501074953 1.8418782975987502 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_LeftTilt";
	rename -uid "63778942-45D7-43D6-055C-98933CE1F81A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_LeftTilt";
	rename -uid "AA0F31BF-44F2-94CF-A6B8-8AAF4805544C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_LeftTilt";
	rename -uid "C3477DA9-4C39-3818-EAAD-AE9E9384E13B";
	setAttr ".o" 1;
createNode animLayer -n "RightTilt";
	rename -uid "66E2E030-4096-4B97-9464-EEBB03813D98";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_RightTilt";
	rename -uid "FA3D2E77-4348-D6F7-3EC1-7D808FC44CB1";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_RightTilt";
	rename -uid "BCDB323E-41B8-145A-EE6C-238CB5799FC0";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_RightTilt";
	rename -uid "5114B126-4F48-E977-AC49-DFA2D3A05434";
	setAttr ".o" -0.09440875460525433;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_RightTilt";
	rename -uid "097ED065-49E0-338D-A4B0-60B08A617DC9";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_RightTilt";
	rename -uid "82046EF4-4D51-13D9-8211-8E8373971815";
	setAttr ".o" -type "double3" 20.907055098225726 -0.16039197501074953 1.8418782975987502 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_RightTilt";
	rename -uid "AD79EDC2-4410-AF44-FA2B-2B89268A3B9E";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_RightTilt";
	rename -uid "D1BCED39-4ED7-5709-2688-BBBC9AD98571";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_RightTilt";
	rename -uid "7D0F11DA-471A-B920-421B-8EACC64D164D";
	setAttr ".o" 1;
createNode animCurveTA -n "CTRL_ship_rotate_BackwardsTilt_inputBX";
	rename -uid "2865F850-4AF6-AE72-88E0-46BD37913C88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -20.418486825011257;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_BackwardsTilt_inputBY";
	rename -uid "4931CA76-498E-03C3-BAD4-24BFE664ED86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_BackwardsTilt_inputBZ";
	rename -uid "735A3DD0-446A-DC51-9B18-9D8D5198A209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_BackwardsTilt_inputB";
	rename -uid "63262590-4C79-1184-0E55-12B87F8896F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_BackwardsTilt_inputB";
	rename -uid "8A85133B-4BEF-C0B7-8676-C2B98D787721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_BackwardsTilt_inputB";
	rename -uid "9E74767F-45C7-3AB2-30A7-FEAEC63C3A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_BackwardsTilt_inputB";
	rename -uid "FE39C68D-48A8-8ED6-627A-A2BD7AF081D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_BackwardsTilt_inputB";
	rename -uid "2FD770CD-4228-12BD-55AD-528C3BDB6F35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_BackwardsTilt_inputB";
	rename -uid "7BA70517-4A0D-1600-5FDA-E19A70899967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_BackwardsTilt_inputB";
	rename -uid "E4D44925-450F-46C9-15C0-30919E1EAFC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_LeftTilt_inputBX";
	rename -uid "FDD21CD0-44DF-F72A-6DAE-129B2D4F4ECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_LeftTilt_inputBY";
	rename -uid "4B6FC182-4801-EA0C-4CD8-069AEB5C02EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_LeftTilt_inputBZ";
	rename -uid "827A5C2B-4F6A-2372-BAE7-A8B2A7DB2477";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -24.164464696405673;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_LeftTilt_inputB";
	rename -uid "1E78186F-4635-846E-C870-CFB42079186D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_LeftTilt_inputB";
	rename -uid "0741CF0C-4B50-5FAB-4750-EAA8D76DAA3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_LeftTilt_inputB";
	rename -uid "DFF1CCAF-4DC9-1170-062C-859993B47C51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_LeftTilt_inputB";
	rename -uid "A316D979-485C-6E44-8DDD-449D68C34B66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_LeftTilt_inputB";
	rename -uid "2E5CAD1A-48AC-1E42-CA63-C698BE1FC2F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_LeftTilt_inputB";
	rename -uid "D6B549CB-4FC4-FE5B-3424-0A9A6DDF3D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_LeftTilt_inputB";
	rename -uid "04B09125-4576-7BFE-4ACA-54B3897EFBA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_RightTilt_inputBX";
	rename -uid "C1CC0511-4177-C84D-EE4D-AC819D7165C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_RightTilt_inputBY";
	rename -uid "1C580305-4DD1-B485-6759-BCB670614146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_RightTilt_inputBZ";
	rename -uid "571E4883-4B9F-3D30-CB8C-9C97C7D1941D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 23.922168459659659;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_RightTilt_inputB";
	rename -uid "DC2BE714-4EFF-02BF-1F45-078874A4B5ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_RightTilt_inputB";
	rename -uid "BE46916C-4F9D-7F5B-D3CB-12B8F835AAD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_RightTilt_inputB";
	rename -uid "4F877F6C-4D78-B0BD-017C-75808D4B3D24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_RightTilt_inputB";
	rename -uid "58108F0B-4687-017D-33CB-35B93CECCD52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_RightTilt_inputB";
	rename -uid "2C24D8FA-46B9-A802-2493-70B8DFA11552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_RightTilt_inputB";
	rename -uid "44596677-44CE-91DE-B83F-FD9190FBE86D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_RightTilt_inputB";
	rename -uid "231DC2F8-42DA-6FBE-C883-83B1E2905CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8F8F6ADA-4B16-C67A-59B0-DBAF7875C2B9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1467\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1466\n            -height 730\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1467\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"flatShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2941\n            -height 1527\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2941\\n    -height 1527\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2941\\n    -height 1527\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "26B27906-4569-BACE-23EA-FD8F84074F6B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 313 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 32;
	setAttr ".unw" 32;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".mcfr" 30;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :defaultHideFaceDataSet;
	setAttr -s 2 ".dnsm";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Player_rigRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Player_rigRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Player_rigRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Player_rigRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Player_rigRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Player_rigRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Player_rigRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Player_rigRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Player_rigRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Player_rigRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Player_rigRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Player_rigRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Player_rigRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Player_rigRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Player_rigRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Player_rigRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Player_rigRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Player_rigRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Player_rigRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Player_rigRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Player_rigRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Player_rigRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Player_rigRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Player_rigRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Player_rigRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Player_rigRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Player_rigRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Player_rigRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Player_rigRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Player_rigRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Player_rigRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Player_rigRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Player_rigRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Player_rigRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Player_rigRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Player_rigRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Player_rigRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Player_rigRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Player_rigRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Player_rigRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Player_rigRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Player_rigRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Player_rigRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Player_rigRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Player_rigRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Player_rigRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Player_rigRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Player_rigRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Player_rigRN.phl[62]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[63]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[64]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[65]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_translateY_RightTilt.o" "Player_rigRN.phl[66]";
connectAttr "Player_rigRN.phl[67]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[68]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[69]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[70]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_translateX_RightTilt.o" "Player_rigRN.phl[71]";
connectAttr "Player_rigRN.phl[72]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[73]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[74]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[75]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_translateZ_RightTilt.o" "Player_rigRN.phl[76]";
connectAttr "Player_rigRN.phl[77]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[78]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[79]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[80]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_rotate_RightTilt.ox" "Player_rigRN.phl[81]";
connectAttr "Player_rigRN.phl[82]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[83]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[84]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[85]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_rotate_RightTilt.oy" "Player_rigRN.phl[86]";
connectAttr "Player_rigRN.phl[87]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[88]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[89]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[90]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_rotate_RightTilt.oz" "Player_rigRN.phl[91]";
connectAttr "Player_rigRN.phl[92]" "CTRL_ship_rotate_ForwardTilt.ro";
connectAttr "Player_rigRN.phl[93]" "CTRL_ship_rotate_BackwardsTilt.ro";
connectAttr "Player_rigRN.phl[94]" "CTRL_ship_rotate_LeftTilt.ro";
connectAttr "Player_rigRN.phl[95]" "CTRL_ship_rotate_RightTilt.ro";
connectAttr "Player_rigRN.phl[96]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[97]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[98]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[99]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_scaleY_RightTilt.o" "Player_rigRN.phl[100]";
connectAttr "Player_rigRN.phl[101]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[102]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[103]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[104]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_scaleX_RightTilt.o" "Player_rigRN.phl[105]";
connectAttr "Player_rigRN.phl[106]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[107]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[108]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[109]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_scaleZ_RightTilt.o" "Player_rigRN.phl[110]";
connectAttr "Player_rigRN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Player_rigRN.phl[112]" "ForwardTilt.dsm" -na;
connectAttr "Player_rigRN.phl[113]" "BackwardsTilt.dsm" -na;
connectAttr "Player_rigRN.phl[114]" "LeftTilt.dsm" -na;
connectAttr "Player_rigRN.phl[115]" "RightTilt.dsm" -na;
connectAttr "CTRL_ship_visibility_RightTilt.o" "Player_rigRN.phl[116]";
connectAttr "Player_rigRN.phl[117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Player_rigRN.phl[118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Player_rigRN.phl[119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Player_rigRN.phl[120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Player_rigRN.phl[121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Player_rigRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Player_rigRN.phl[123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Player_rigRN.phl[124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Player_rigRN.phl[125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Player_rigRN.phl[126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Player_rigRN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Player_rigRN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Player_rigRN.phl[129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Player_rigRN.phl[130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Player_rigRN.phl[131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Player_rigRN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Player_rigRN.phl[133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Player_rigRN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Player_rigRN.phl[135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Player_rigRN.phl[136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Player_rigRN.phl[137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Player_rigRN.phl[138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Player_rigRN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Player_rigRN.phl[140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Player_rigRN.phl[141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Player_rigRN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Player_rigRN.phl[143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Player_rigRN.phl[144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Player_rigRN.phl[145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Player_rigRN.phl[146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Player_rigRN.phl[147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Player_rigRN.phl[148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Player_rigRN.phl[149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Player_rigRN.phl[150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Player_rigRN.phl[151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Player_rigRN.phl[152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Player_rigRN.phl[153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Player_rigRN.phl[154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Player_rigRN.phl[155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Player_rigRN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Player_rigRN.phl[157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Player_rigRN.phl[158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Player_rigRN.phl[159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Player_rigRN.phl[160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Player_rigRN.phl[161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Player_rigRN.phl[162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Player_rigRN.phl[163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Player_rigRN.phl[164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Player_rigRN.phl[165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Player_rigRN.phl[166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Player_rigRN.phl[167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Player_rigRN.phl[168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Player_rigRN.phl[169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Player_rigRN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Player_rigRN.phl[171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Player_rigRN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Player_rigRN.phl[173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Player_rigRN.phl[174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Player_rigRN.phl[175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Player_rigRN.phl[176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Player_rigRN.phl[177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Player_rigRN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Player_rigRN.phl[179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Player_rigRN.phl[180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Player_rigRN.phl[181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Player_rigRN.phl[182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Player_rigRN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Player_rigRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Player_rigRN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Player_rigRN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Player_rigRN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Player_rigRN.phl[188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Player_rigRN.phl[189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Player_rigRN.phl[190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Player_rigRN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Player_rigRN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Player_rigRN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Player_rigRN.phl[194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Player_rigRN.phl[195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Player_rigRN.phl[196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Player_rigRN.phl[197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Player_rigRN.phl[198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Player_rigRN.phl[199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Player_rigRN.phl[200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Player_rigRN.phl[201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Player_rigRN.phl[202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Player_rigRN.phl[203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Player_rigRN.phl[204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Player_rigRN.phl[205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Player_rigRN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Player_rigRN.phl[207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Player_rigRN.phl[208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Player_rigRN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Player_rigRN.phl[210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Player_rigRN.phl[211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Player_rigRN.phl[212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Player_rigRN.phl[213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Player_rigRN.phl[214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Player_rigRN.phl[215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Player_rigRN.phl[216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Player_rigRN.phl[217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Player_rigRN.phl[218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Player_rigRN.phl[219]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Player_rigRN.phl[220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Player_rigRN.phl[221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Player_rigRN.phl[222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Player_rigRN.phl[223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Player_rigRN.phl[224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Player_rigRN.phl[225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Player_rigRN.phl[226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Player_rigRN.phl[227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Player_rigRN.phl[228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Player_rigRN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Player_rigRN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Player_rigRN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Player_rigRN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Player_rigRN.phl[233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Player_rigRN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Player_rigRN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Player_rigRN.phl[236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Player_rigRN.phl[237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Player_rigRN.phl[238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Player_rigRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Player_rigRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Player_rigRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Player_rigRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Player_rigRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Player_rigRN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Player_rigRN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Player_rigRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Player_rigRN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Player_rigRN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Player_rigRN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Player_rigRN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Player_rigRN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Player_rigRN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Player_rigRN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Player_rigRN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Player_rigRN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Player_rigRN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Player_rigRN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Player_rigRN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Player_rigRN.phl[259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Player_rigRN.phl[260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Player_rigRN.phl[261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Player_rigRN.phl[262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Player_rigRN.phl[263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Player_rigRN.phl[264]" "Player_rig:SaucerShapeDeformedHiddenFacesSet.dsm"
		 -na;
connectAttr "groupId1.id" "Player_rigRN.phl[265]";
connectAttr "Player_rig:SaucerShapeDeformedHiddenFacesSet.mwc" "Player_rigRN.phl[266]"
		;
connectAttr "groupId2.id" "Player_rigRN.phl[267]";
connectAttr "groupParts2.og" "Player_rigRN.phl[268]";
connectAttr "Player_rigRN.phl[269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Player_rigRN.phl[270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Player_rigRN.phl[271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Player_rigRN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Player_rigRN.phl[273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Player_rigRN.phl[274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Player_rigRN.phl[275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Player_rigRN.phl[276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Player_rigRN.phl[277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Player_rigRN.phl[278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Player_rigRN.phl[279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Player_rigRN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Player_rigRN.phl[281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Player_rigRN.phl[282]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Player_rigRN.phl[283]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Player_rigRN.phl[284]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Player_rigRN.phl[285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Player_rigRN.phl[286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Player_rigRN.phl[287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Player_rigRN.phl[288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Player_rigRN.phl[289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Player_rigRN.phl[290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Player_rigRN.phl[291]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Player_rigRN.phl[292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Player_rigRN.phl[293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Player_rigRN.phl[294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Player_rigRN.phl[295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Player_rigRN.phl[296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Player_rigRN.phl[297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Player_rigRN.phl[298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Player_rigRN.phl[299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Player_rigRN.phl[300]" "groupParts1.ig";
connectAttr "Player_rigRN.phl[301]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Player_rigRN.phl[302]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Player_rigRN.phl[303]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Player_rigRN.phl[304]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Player_rigRN.phl[305]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Player_rigRN.phl[306]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Player_rigRN.phl[307]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Player_rigRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Player_rigRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Player_rigRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Player_rigRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Player_rigRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Player_rigRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Player_rigRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Player_rigRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Player_rigRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Player_rigRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Player_rigRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Player_rigRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Player_rigRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "hyperLayout1.msg" "animBot.hl";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "animBot.animBot_Anim_Recovery_Scene_ID"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "hyperLayout1.hyp[0].dn";
connectAttr "animBot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Player_rigRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn";
connectAttr "groupId1.msg" "Player_rig:SaucerShapeDeformedHiddenFacesSet.gn" -na
		;
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "ForwardTilt.sl" "BaseAnimation.chsl[0]";
connectAttr "BackwardsTilt.sl" "BaseAnimation.chsl[1]";
connectAttr "LeftTilt.sl" "BaseAnimation.chsl[2]";
connectAttr "RightTilt.sl" "BaseAnimation.chsl[3]";
connectAttr "ForwardTilt.play" "BaseAnimation.cdly[0]";
connectAttr "BackwardsTilt.play" "BaseAnimation.cdly[1]";
connectAttr "LeftTilt.play" "BaseAnimation.cdly[2]";
connectAttr "RightTilt.play" "BaseAnimation.cdly[3]";
connectAttr "BaseAnimation.csol" "ForwardTilt.sslo";
connectAttr "BaseAnimation.fgwt" "ForwardTilt.pwth";
connectAttr "BaseAnimation.omte" "ForwardTilt.pmte";
connectAttr "CTRL_ship_visibility_ForwardTilt.msg" "ForwardTilt.bnds[0]";
connectAttr "CTRL_ship_translateX_ForwardTilt.msg" "ForwardTilt.bnds[1]";
connectAttr "CTRL_ship_translateY_ForwardTilt.msg" "ForwardTilt.bnds[2]";
connectAttr "CTRL_ship_translateZ_ForwardTilt.msg" "ForwardTilt.bnds[3]";
connectAttr "CTRL_ship_rotate_ForwardTilt.msg" "ForwardTilt.bnds[7]";
connectAttr "CTRL_ship_scaleX_ForwardTilt.msg" "ForwardTilt.bnds[8]";
connectAttr "CTRL_ship_scaleY_ForwardTilt.msg" "ForwardTilt.bnds[9]";
connectAttr "CTRL_ship_scaleZ_ForwardTilt.msg" "ForwardTilt.bnds[10]";
connectAttr "ForwardTilt.bgwt" "CTRL_ship_visibility_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_visibility_ForwardTilt.wb";
connectAttr "CTRL_ship_visibility.o" "CTRL_ship_visibility_ForwardTilt.ia";
connectAttr "CTRL_ship_visibility_ForwardTilt_inputB.o" "CTRL_ship_visibility_ForwardTilt.ib"
		;
connectAttr "ForwardTilt.bgwt" "CTRL_ship_translateX_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_translateX_ForwardTilt.wb";
connectAttr "CTRL_ship_translateX.o" "CTRL_ship_translateX_ForwardTilt.ia";
connectAttr "CTRL_ship_translateX_ForwardTilt_inputB.o" "CTRL_ship_translateX_ForwardTilt.ib"
		;
connectAttr "ForwardTilt.bgwt" "CTRL_ship_translateY_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_translateY_ForwardTilt.wb";
connectAttr "CTRL_ship_translateY.o" "CTRL_ship_translateY_ForwardTilt.ia";
connectAttr "CTRL_ship_translateY_ForwardTilt_inputB.o" "CTRL_ship_translateY_ForwardTilt.ib"
		;
connectAttr "ForwardTilt.bgwt" "CTRL_ship_translateZ_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_translateZ_ForwardTilt.wb";
connectAttr "CTRL_ship_translateZ.o" "CTRL_ship_translateZ_ForwardTilt.ia";
connectAttr "CTRL_ship_translateZ_ForwardTilt_inputB.o" "CTRL_ship_translateZ_ForwardTilt.ib"
		;
connectAttr "CTRL_ship_rotateX.o" "CTRL_ship_rotate_ForwardTilt.iax";
connectAttr "CTRL_ship_rotateY.o" "CTRL_ship_rotate_ForwardTilt.iay";
connectAttr "CTRL_ship_rotateZ.o" "CTRL_ship_rotate_ForwardTilt.iaz";
connectAttr "ForwardTilt.oram" "CTRL_ship_rotate_ForwardTilt.acm";
connectAttr "ForwardTilt.bgwt" "CTRL_ship_rotate_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_rotate_ForwardTilt.wb";
connectAttr "CTRL_ship_rotate_ForwardTilt_inputBX.o" "CTRL_ship_rotate_ForwardTilt.ibx"
		;
connectAttr "CTRL_ship_rotate_ForwardTilt_inputBY.o" "CTRL_ship_rotate_ForwardTilt.iby"
		;
connectAttr "CTRL_ship_rotate_ForwardTilt_inputBZ.o" "CTRL_ship_rotate_ForwardTilt.ibz"
		;
connectAttr "ForwardTilt.sam" "CTRL_ship_scaleX_ForwardTilt.acm";
connectAttr "ForwardTilt.bgwt" "CTRL_ship_scaleX_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_scaleX_ForwardTilt.wb";
connectAttr "CTRL_ship_scaleX.o" "CTRL_ship_scaleX_ForwardTilt.ia";
connectAttr "CTRL_ship_scaleX_ForwardTilt_inputB.o" "CTRL_ship_scaleX_ForwardTilt.ib"
		;
connectAttr "ForwardTilt.sam" "CTRL_ship_scaleY_ForwardTilt.acm";
connectAttr "ForwardTilt.bgwt" "CTRL_ship_scaleY_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_scaleY_ForwardTilt.wb";
connectAttr "CTRL_ship_scaleY.o" "CTRL_ship_scaleY_ForwardTilt.ia";
connectAttr "CTRL_ship_scaleY_ForwardTilt_inputB.o" "CTRL_ship_scaleY_ForwardTilt.ib"
		;
connectAttr "ForwardTilt.sam" "CTRL_ship_scaleZ_ForwardTilt.acm";
connectAttr "ForwardTilt.bgwt" "CTRL_ship_scaleZ_ForwardTilt.wa";
connectAttr "ForwardTilt.fgwt" "CTRL_ship_scaleZ_ForwardTilt.wb";
connectAttr "CTRL_ship_scaleZ.o" "CTRL_ship_scaleZ_ForwardTilt.ia";
connectAttr "CTRL_ship_scaleZ_ForwardTilt_inputB.o" "CTRL_ship_scaleZ_ForwardTilt.ib"
		;
connectAttr "BaseAnimation.csol" "BackwardsTilt.sslo";
connectAttr "BaseAnimation.fgwt" "BackwardsTilt.pwth";
connectAttr "BaseAnimation.omte" "BackwardsTilt.pmte";
connectAttr "CTRL_ship_visibility_BackwardsTilt.msg" "BackwardsTilt.bnds[0]";
connectAttr "CTRL_ship_translateX_BackwardsTilt.msg" "BackwardsTilt.bnds[1]";
connectAttr "CTRL_ship_translateY_BackwardsTilt.msg" "BackwardsTilt.bnds[2]";
connectAttr "CTRL_ship_translateZ_BackwardsTilt.msg" "BackwardsTilt.bnds[3]";
connectAttr "CTRL_ship_rotate_BackwardsTilt.msg" "BackwardsTilt.bnds[7]";
connectAttr "CTRL_ship_scaleX_BackwardsTilt.msg" "BackwardsTilt.bnds[8]";
connectAttr "CTRL_ship_scaleY_BackwardsTilt.msg" "BackwardsTilt.bnds[9]";
connectAttr "CTRL_ship_scaleZ_BackwardsTilt.msg" "BackwardsTilt.bnds[10]";
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_visibility_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_visibility_BackwardsTilt.wb";
connectAttr "CTRL_ship_visibility_ForwardTilt.o" "CTRL_ship_visibility_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_visibility_BackwardsTilt_inputB.o" "CTRL_ship_visibility_BackwardsTilt.ib"
		;
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_translateX_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_translateX_BackwardsTilt.wb";
connectAttr "CTRL_ship_translateX_ForwardTilt.o" "CTRL_ship_translateX_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_translateX_BackwardsTilt_inputB.o" "CTRL_ship_translateX_BackwardsTilt.ib"
		;
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_translateY_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_translateY_BackwardsTilt.wb";
connectAttr "CTRL_ship_translateY_ForwardTilt.o" "CTRL_ship_translateY_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_translateY_BackwardsTilt_inputB.o" "CTRL_ship_translateY_BackwardsTilt.ib"
		;
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_translateZ_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_translateZ_BackwardsTilt.wb";
connectAttr "CTRL_ship_translateZ_ForwardTilt.o" "CTRL_ship_translateZ_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_translateZ_BackwardsTilt_inputB.o" "CTRL_ship_translateZ_BackwardsTilt.ib"
		;
connectAttr "CTRL_ship_rotate_ForwardTilt.ox" "CTRL_ship_rotate_BackwardsTilt.iax"
		;
connectAttr "CTRL_ship_rotate_ForwardTilt.oy" "CTRL_ship_rotate_BackwardsTilt.iay"
		;
connectAttr "CTRL_ship_rotate_ForwardTilt.oz" "CTRL_ship_rotate_BackwardsTilt.iaz"
		;
connectAttr "BackwardsTilt.oram" "CTRL_ship_rotate_BackwardsTilt.acm";
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_rotate_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_rotate_BackwardsTilt.wb";
connectAttr "CTRL_ship_rotate_BackwardsTilt_inputBX.o" "CTRL_ship_rotate_BackwardsTilt.ibx"
		;
connectAttr "CTRL_ship_rotate_BackwardsTilt_inputBY.o" "CTRL_ship_rotate_BackwardsTilt.iby"
		;
connectAttr "CTRL_ship_rotate_BackwardsTilt_inputBZ.o" "CTRL_ship_rotate_BackwardsTilt.ibz"
		;
connectAttr "BackwardsTilt.sam" "CTRL_ship_scaleX_BackwardsTilt.acm";
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_scaleX_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_scaleX_BackwardsTilt.wb";
connectAttr "CTRL_ship_scaleX_ForwardTilt.o" "CTRL_ship_scaleX_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_scaleX_BackwardsTilt_inputB.o" "CTRL_ship_scaleX_BackwardsTilt.ib"
		;
connectAttr "BackwardsTilt.sam" "CTRL_ship_scaleY_BackwardsTilt.acm";
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_scaleY_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_scaleY_BackwardsTilt.wb";
connectAttr "CTRL_ship_scaleY_ForwardTilt.o" "CTRL_ship_scaleY_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_scaleY_BackwardsTilt_inputB.o" "CTRL_ship_scaleY_BackwardsTilt.ib"
		;
connectAttr "BackwardsTilt.sam" "CTRL_ship_scaleZ_BackwardsTilt.acm";
connectAttr "BackwardsTilt.bgwt" "CTRL_ship_scaleZ_BackwardsTilt.wa";
connectAttr "BackwardsTilt.fgwt" "CTRL_ship_scaleZ_BackwardsTilt.wb";
connectAttr "CTRL_ship_scaleZ_ForwardTilt.o" "CTRL_ship_scaleZ_BackwardsTilt.ia"
		;
connectAttr "CTRL_ship_scaleZ_BackwardsTilt_inputB.o" "CTRL_ship_scaleZ_BackwardsTilt.ib"
		;
connectAttr "BaseAnimation.csol" "LeftTilt.sslo";
connectAttr "BaseAnimation.fgwt" "LeftTilt.pwth";
connectAttr "BaseAnimation.omte" "LeftTilt.pmte";
connectAttr "CTRL_ship_visibility_LeftTilt.msg" "LeftTilt.bnds[0]";
connectAttr "CTRL_ship_translateX_LeftTilt.msg" "LeftTilt.bnds[1]";
connectAttr "CTRL_ship_translateY_LeftTilt.msg" "LeftTilt.bnds[2]";
connectAttr "CTRL_ship_translateZ_LeftTilt.msg" "LeftTilt.bnds[3]";
connectAttr "CTRL_ship_rotate_LeftTilt.msg" "LeftTilt.bnds[7]";
connectAttr "CTRL_ship_scaleX_LeftTilt.msg" "LeftTilt.bnds[8]";
connectAttr "CTRL_ship_scaleY_LeftTilt.msg" "LeftTilt.bnds[9]";
connectAttr "CTRL_ship_scaleZ_LeftTilt.msg" "LeftTilt.bnds[10]";
connectAttr "LeftTilt.bgwt" "CTRL_ship_visibility_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_visibility_LeftTilt.wb";
connectAttr "CTRL_ship_visibility_BackwardsTilt.o" "CTRL_ship_visibility_LeftTilt.ia"
		;
connectAttr "CTRL_ship_visibility_LeftTilt_inputB.o" "CTRL_ship_visibility_LeftTilt.ib"
		;
connectAttr "LeftTilt.bgwt" "CTRL_ship_translateX_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_translateX_LeftTilt.wb";
connectAttr "CTRL_ship_translateX_BackwardsTilt.o" "CTRL_ship_translateX_LeftTilt.ia"
		;
connectAttr "CTRL_ship_translateX_LeftTilt_inputB.o" "CTRL_ship_translateX_LeftTilt.ib"
		;
connectAttr "LeftTilt.bgwt" "CTRL_ship_translateY_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_translateY_LeftTilt.wb";
connectAttr "CTRL_ship_translateY_BackwardsTilt.o" "CTRL_ship_translateY_LeftTilt.ia"
		;
connectAttr "CTRL_ship_translateY_LeftTilt_inputB.o" "CTRL_ship_translateY_LeftTilt.ib"
		;
connectAttr "LeftTilt.bgwt" "CTRL_ship_translateZ_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_translateZ_LeftTilt.wb";
connectAttr "CTRL_ship_translateZ_BackwardsTilt.o" "CTRL_ship_translateZ_LeftTilt.ia"
		;
connectAttr "CTRL_ship_translateZ_LeftTilt_inputB.o" "CTRL_ship_translateZ_LeftTilt.ib"
		;
connectAttr "CTRL_ship_rotate_BackwardsTilt.ox" "CTRL_ship_rotate_LeftTilt.iax";
connectAttr "CTRL_ship_rotate_BackwardsTilt.oy" "CTRL_ship_rotate_LeftTilt.iay";
connectAttr "CTRL_ship_rotate_BackwardsTilt.oz" "CTRL_ship_rotate_LeftTilt.iaz";
connectAttr "LeftTilt.oram" "CTRL_ship_rotate_LeftTilt.acm";
connectAttr "LeftTilt.bgwt" "CTRL_ship_rotate_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_rotate_LeftTilt.wb";
connectAttr "CTRL_ship_rotate_LeftTilt_inputBX.o" "CTRL_ship_rotate_LeftTilt.ibx"
		;
connectAttr "CTRL_ship_rotate_LeftTilt_inputBY.o" "CTRL_ship_rotate_LeftTilt.iby"
		;
connectAttr "CTRL_ship_rotate_LeftTilt_inputBZ.o" "CTRL_ship_rotate_LeftTilt.ibz"
		;
connectAttr "LeftTilt.sam" "CTRL_ship_scaleX_LeftTilt.acm";
connectAttr "LeftTilt.bgwt" "CTRL_ship_scaleX_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_scaleX_LeftTilt.wb";
connectAttr "CTRL_ship_scaleX_BackwardsTilt.o" "CTRL_ship_scaleX_LeftTilt.ia";
connectAttr "CTRL_ship_scaleX_LeftTilt_inputB.o" "CTRL_ship_scaleX_LeftTilt.ib";
connectAttr "LeftTilt.sam" "CTRL_ship_scaleY_LeftTilt.acm";
connectAttr "LeftTilt.bgwt" "CTRL_ship_scaleY_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_scaleY_LeftTilt.wb";
connectAttr "CTRL_ship_scaleY_BackwardsTilt.o" "CTRL_ship_scaleY_LeftTilt.ia";
connectAttr "CTRL_ship_scaleY_LeftTilt_inputB.o" "CTRL_ship_scaleY_LeftTilt.ib";
connectAttr "LeftTilt.sam" "CTRL_ship_scaleZ_LeftTilt.acm";
connectAttr "LeftTilt.bgwt" "CTRL_ship_scaleZ_LeftTilt.wa";
connectAttr "LeftTilt.fgwt" "CTRL_ship_scaleZ_LeftTilt.wb";
connectAttr "CTRL_ship_scaleZ_BackwardsTilt.o" "CTRL_ship_scaleZ_LeftTilt.ia";
connectAttr "CTRL_ship_scaleZ_LeftTilt_inputB.o" "CTRL_ship_scaleZ_LeftTilt.ib";
connectAttr "BaseAnimation.csol" "RightTilt.sslo";
connectAttr "BaseAnimation.fgwt" "RightTilt.pwth";
connectAttr "BaseAnimation.omte" "RightTilt.pmte";
connectAttr "CTRL_ship_visibility_RightTilt.msg" "RightTilt.bnds[0]";
connectAttr "CTRL_ship_translateX_RightTilt.msg" "RightTilt.bnds[1]";
connectAttr "CTRL_ship_translateY_RightTilt.msg" "RightTilt.bnds[2]";
connectAttr "CTRL_ship_translateZ_RightTilt.msg" "RightTilt.bnds[3]";
connectAttr "CTRL_ship_rotate_RightTilt.msg" "RightTilt.bnds[7]";
connectAttr "CTRL_ship_scaleX_RightTilt.msg" "RightTilt.bnds[8]";
connectAttr "CTRL_ship_scaleY_RightTilt.msg" "RightTilt.bnds[9]";
connectAttr "CTRL_ship_scaleZ_RightTilt.msg" "RightTilt.bnds[10]";
connectAttr "RightTilt.bgwt" "CTRL_ship_visibility_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_visibility_RightTilt.wb";
connectAttr "CTRL_ship_visibility_LeftTilt.o" "CTRL_ship_visibility_RightTilt.ia"
		;
connectAttr "CTRL_ship_visibility_RightTilt_inputB.o" "CTRL_ship_visibility_RightTilt.ib"
		;
connectAttr "RightTilt.bgwt" "CTRL_ship_translateX_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_translateX_RightTilt.wb";
connectAttr "CTRL_ship_translateX_LeftTilt.o" "CTRL_ship_translateX_RightTilt.ia"
		;
connectAttr "CTRL_ship_translateX_RightTilt_inputB.o" "CTRL_ship_translateX_RightTilt.ib"
		;
connectAttr "RightTilt.bgwt" "CTRL_ship_translateY_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_translateY_RightTilt.wb";
connectAttr "CTRL_ship_translateY_LeftTilt.o" "CTRL_ship_translateY_RightTilt.ia"
		;
connectAttr "CTRL_ship_translateY_RightTilt_inputB.o" "CTRL_ship_translateY_RightTilt.ib"
		;
connectAttr "RightTilt.bgwt" "CTRL_ship_translateZ_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_translateZ_RightTilt.wb";
connectAttr "CTRL_ship_translateZ_LeftTilt.o" "CTRL_ship_translateZ_RightTilt.ia"
		;
connectAttr "CTRL_ship_translateZ_RightTilt_inputB.o" "CTRL_ship_translateZ_RightTilt.ib"
		;
connectAttr "CTRL_ship_rotate_LeftTilt.ox" "CTRL_ship_rotate_RightTilt.iax";
connectAttr "CTRL_ship_rotate_LeftTilt.oy" "CTRL_ship_rotate_RightTilt.iay";
connectAttr "CTRL_ship_rotate_LeftTilt.oz" "CTRL_ship_rotate_RightTilt.iaz";
connectAttr "RightTilt.oram" "CTRL_ship_rotate_RightTilt.acm";
connectAttr "RightTilt.bgwt" "CTRL_ship_rotate_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_rotate_RightTilt.wb";
connectAttr "CTRL_ship_rotate_RightTilt_inputBX.o" "CTRL_ship_rotate_RightTilt.ibx"
		;
connectAttr "CTRL_ship_rotate_RightTilt_inputBY.o" "CTRL_ship_rotate_RightTilt.iby"
		;
connectAttr "CTRL_ship_rotate_RightTilt_inputBZ.o" "CTRL_ship_rotate_RightTilt.ibz"
		;
connectAttr "RightTilt.sam" "CTRL_ship_scaleX_RightTilt.acm";
connectAttr "RightTilt.bgwt" "CTRL_ship_scaleX_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_scaleX_RightTilt.wb";
connectAttr "CTRL_ship_scaleX_LeftTilt.o" "CTRL_ship_scaleX_RightTilt.ia";
connectAttr "CTRL_ship_scaleX_RightTilt_inputB.o" "CTRL_ship_scaleX_RightTilt.ib"
		;
connectAttr "RightTilt.sam" "CTRL_ship_scaleY_RightTilt.acm";
connectAttr "RightTilt.bgwt" "CTRL_ship_scaleY_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_scaleY_RightTilt.wb";
connectAttr "CTRL_ship_scaleY_LeftTilt.o" "CTRL_ship_scaleY_RightTilt.ia";
connectAttr "CTRL_ship_scaleY_RightTilt_inputB.o" "CTRL_ship_scaleY_RightTilt.ib"
		;
connectAttr "RightTilt.sam" "CTRL_ship_scaleZ_RightTilt.acm";
connectAttr "RightTilt.bgwt" "CTRL_ship_scaleZ_RightTilt.wa";
connectAttr "RightTilt.fgwt" "CTRL_ship_scaleZ_RightTilt.wb";
connectAttr "CTRL_ship_scaleZ_LeftTilt.o" "CTRL_ship_scaleZ_RightTilt.ia";
connectAttr "CTRL_ship_scaleZ_RightTilt_inputB.o" "CTRL_ship_scaleZ_RightTilt.ib"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Player_rig:SaucerShapeDeformedHiddenFacesSet.msg" ":defaultHideFaceDataSet.dnsm"
		 -na;
connectAttr "groupId2.msg" ":defaultLastHiddenSet.gn" -na;
// End of Player_DmgTaken.ma

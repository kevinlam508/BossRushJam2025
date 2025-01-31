//Maya ASCII 2023 scene
//Name: Player_OmniWalk.ma
//Last modified: Sat, Feb 01, 2025 04:23:42 PM
//Codeset: 1252
file -rdi 1 -ns "Player_rig" -rfn "Player_rigRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:25 PM|ICON|undef|INFO|undef|OBJN|270|INCL|/Characters/Player/Player_model.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.mb";
file -rdi 2 -ns ":" -rfn "Player_rig:Player_modelRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:05 PM|ICON|undef|INFO|undef|OBJN|26|INCL|/Characters/Player/SK_Orion.fbx(/Characters/Player/SK_Saucer.fbx(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "/Characters/Player/Player_model.mb";
file -rdi 3 -ns ":" -rfn "Player_rig:SK_OrionRN" -op "fbx" -typ "FBX export"
		 "/Characters/Player/SK_Orion.fbx";
file -rdi 3 -ns ":" -rfn "Player_rig:SK_SaucerRN" -op "fbx" -typ "FBX export"
		 "/Characters/Player/SK_Saucer.fbx";
file -r -ns "Player_rig" -dr 1 -rfn "Player_rigRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:25 PM|ICON|undef|INFO|undef|OBJN|270|INCL|/Characters/Player/Player_model.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.mb";
requires maya "2023";
requires "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "20DE1982-4847-F9E4-EFB0-8486F13E3C8C";
createNode transform -s -n "persp";
	rename -uid "4979B525-4118-F212-F43B-048F99A79897";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -576.730305085635 267.70049046410259 936.37386389451206 ;
	setAttr ".r" -type "double3" -16.538352692299913 -1468.5999999999699 -9.0564246986458237e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "36BC0C55-49BC-0965-CF0F-03A68351BBB2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1081.5220140683391;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 20.601487335002126 56.978540747696663 48.374762905882577 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8134A77A-477B-2C94-DB1F-C583673502E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "99E3E517-47E2-B153-5656-2FAA9EE8B727";
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
	rename -uid "2350CE69-4900-ABCD-7C13-AE9929C47111";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "57E816BD-4E47-B2B1-8026-55BA5C1DB314";
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
	rename -uid "1EEE4267-4836-250B-3F4E-369E8F0029FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E982275F-4464-96D2-B42D-758A25CB01BD";
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
	rename -uid "F85B1DCF-4E4F-76D2-CCA9-B6AAAD1C62BB";
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
	rename -uid "823BA183-4834-8FD4-1840-EEAA98C89026";
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
	setAttr ".sceneID" -type "string" "1738442332.683396";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "78751C40-43AA-042B-57E9-D0B41355F3B8";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EE265B46-48EE-3E54-AB0F-59B6B841A03A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "03FF7F71-4120-BE92-4998-E19FE1521E38";
createNode displayLayerManager -n "layerManager";
	rename -uid "63FFBBEA-486A-AD70-EABF-AF9DDD4E895B";
createNode displayLayer -n "defaultLayer";
	rename -uid "2B492891-480F-7219-EF5D-75936A24AE39";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3235B997-4A95-0FCD-1360-7E85D24CBFE3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F4F626A1-4C97-B1A3-7CD3-E59D3EDE7F1D";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "1914F556-47D5-B632-4C67-EAADD7D80CA0";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
createNode reference -n "Player_rigRN";
	rename -uid "107DD9BD-4535-8B94-36BA-B0B105547D3D";
	setAttr -s 1095 ".phl";
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
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".phl[822]" 0;
	setAttr ".phl[823]" 0;
	setAttr ".phl[824]" 0;
	setAttr ".phl[825]" 0;
	setAttr ".phl[826]" 0;
	setAttr ".phl[827]" 0;
	setAttr ".phl[828]" 0;
	setAttr ".phl[829]" 0;
	setAttr ".phl[830]" 0;
	setAttr ".phl[831]" 0;
	setAttr ".phl[832]" 0;
	setAttr ".phl[833]" 0;
	setAttr ".phl[834]" 0;
	setAttr ".phl[835]" 0;
	setAttr ".phl[836]" 0;
	setAttr ".phl[837]" 0;
	setAttr ".phl[838]" 0;
	setAttr ".phl[839]" 0;
	setAttr ".phl[840]" 0;
	setAttr ".phl[841]" 0;
	setAttr ".phl[842]" 0;
	setAttr ".phl[843]" 0;
	setAttr ".phl[844]" 0;
	setAttr ".phl[845]" 0;
	setAttr ".phl[846]" 0;
	setAttr ".phl[847]" 0;
	setAttr ".phl[848]" 0;
	setAttr ".phl[849]" 0;
	setAttr ".phl[850]" 0;
	setAttr ".phl[851]" 0;
	setAttr ".phl[852]" 0;
	setAttr ".phl[853]" 0;
	setAttr ".phl[854]" 0;
	setAttr ".phl[855]" 0;
	setAttr ".phl[856]" 0;
	setAttr ".phl[857]" 0;
	setAttr ".phl[858]" 0;
	setAttr ".phl[859]" 0;
	setAttr ".phl[860]" 0;
	setAttr ".phl[861]" 0;
	setAttr ".phl[862]" 0;
	setAttr ".phl[863]" 0;
	setAttr ".phl[864]" 0;
	setAttr ".phl[865]" 0;
	setAttr ".phl[866]" 0;
	setAttr ".phl[867]" 0;
	setAttr ".phl[868]" 0;
	setAttr ".phl[869]" 0;
	setAttr ".phl[870]" 0;
	setAttr ".phl[871]" 0;
	setAttr ".phl[872]" 0;
	setAttr ".phl[873]" 0;
	setAttr ".phl[874]" 0;
	setAttr ".phl[875]" 0;
	setAttr ".phl[876]" 0;
	setAttr ".phl[877]" 0;
	setAttr ".phl[878]" 0;
	setAttr ".phl[879]" 0;
	setAttr ".phl[880]" 0;
	setAttr ".phl[881]" 0;
	setAttr ".phl[882]" 0;
	setAttr ".phl[883]" 0;
	setAttr ".phl[884]" 0;
	setAttr ".phl[885]" 0;
	setAttr ".phl[886]" 0;
	setAttr ".phl[887]" 0;
	setAttr ".phl[888]" 0;
	setAttr ".phl[889]" 0;
	setAttr ".phl[890]" 0;
	setAttr ".phl[891]" 0;
	setAttr ".phl[892]" 0;
	setAttr ".phl[893]" 0;
	setAttr ".phl[894]" 0;
	setAttr ".phl[895]" 0;
	setAttr ".phl[896]" 0;
	setAttr ".phl[897]" 0;
	setAttr ".phl[898]" 0;
	setAttr ".phl[899]" 0;
	setAttr ".phl[900]" 0;
	setAttr ".phl[901]" 0;
	setAttr ".phl[902]" 0;
	setAttr ".phl[903]" 0;
	setAttr ".phl[904]" 0;
	setAttr ".phl[905]" 0;
	setAttr ".phl[906]" 0;
	setAttr ".phl[907]" 0;
	setAttr ".phl[908]" 0;
	setAttr ".phl[909]" 0;
	setAttr ".phl[910]" 0;
	setAttr ".phl[911]" 0;
	setAttr ".phl[912]" 0;
	setAttr ".phl[913]" 0;
	setAttr ".phl[914]" 0;
	setAttr ".phl[915]" 0;
	setAttr ".phl[916]" 0;
	setAttr ".phl[917]" 0;
	setAttr ".phl[918]" 0;
	setAttr ".phl[919]" 0;
	setAttr ".phl[920]" 0;
	setAttr ".phl[921]" 0;
	setAttr ".phl[922]" 0;
	setAttr ".phl[923]" 0;
	setAttr ".phl[924]" 0;
	setAttr ".phl[925]" 0;
	setAttr ".phl[926]" 0;
	setAttr ".phl[927]" 0;
	setAttr ".phl[928]" 0;
	setAttr ".phl[929]" 0;
	setAttr ".phl[930]" 0;
	setAttr ".phl[931]" 0;
	setAttr ".phl[932]" 0;
	setAttr ".phl[933]" 0;
	setAttr ".phl[934]" 0;
	setAttr ".phl[935]" 0;
	setAttr ".phl[936]" 0;
	setAttr ".phl[937]" 0;
	setAttr ".phl[938]" 0;
	setAttr ".phl[939]" 0;
	setAttr ".phl[940]" 0;
	setAttr ".phl[941]" 0;
	setAttr ".phl[942]" 0;
	setAttr ".phl[943]" 0;
	setAttr ".phl[944]" 0;
	setAttr ".phl[945]" 0;
	setAttr ".phl[946]" 0;
	setAttr ".phl[947]" 0;
	setAttr ".phl[948]" 0;
	setAttr ".phl[949]" 0;
	setAttr ".phl[950]" 0;
	setAttr ".phl[951]" 0;
	setAttr ".phl[952]" 0;
	setAttr ".phl[953]" 0;
	setAttr ".phl[954]" 0;
	setAttr ".phl[955]" 0;
	setAttr ".phl[956]" 0;
	setAttr ".phl[957]" 0;
	setAttr ".phl[958]" 0;
	setAttr ".phl[959]" 0;
	setAttr ".phl[960]" 0;
	setAttr ".phl[961]" 0;
	setAttr ".phl[962]" 0;
	setAttr ".phl[963]" 0;
	setAttr ".phl[964]" 0;
	setAttr ".phl[965]" 0;
	setAttr ".phl[966]" 0;
	setAttr ".phl[967]" 0;
	setAttr ".phl[968]" 0;
	setAttr ".phl[969]" 0;
	setAttr ".phl[970]" 0;
	setAttr ".phl[971]" 0;
	setAttr ".phl[972]" 0;
	setAttr ".phl[973]" 0;
	setAttr ".phl[974]" 0;
	setAttr ".phl[975]" 0;
	setAttr ".phl[976]" 0;
	setAttr ".phl[977]" 0;
	setAttr ".phl[978]" 0;
	setAttr ".phl[979]" 0;
	setAttr ".phl[980]" 0;
	setAttr ".phl[981]" 0;
	setAttr ".phl[982]" 0;
	setAttr ".phl[983]" 0;
	setAttr ".phl[984]" 0;
	setAttr ".phl[985]" 0;
	setAttr ".phl[986]" 0;
	setAttr ".phl[987]" 0;
	setAttr ".phl[988]" 0;
	setAttr ".phl[989]" 0;
	setAttr ".phl[990]" 0;
	setAttr ".phl[991]" 0;
	setAttr ".phl[992]" 0;
	setAttr ".phl[993]" 0;
	setAttr ".phl[994]" 0;
	setAttr ".phl[995]" 0;
	setAttr ".phl[996]" 0;
	setAttr ".phl[997]" 0;
	setAttr ".phl[998]" 0;
	setAttr ".phl[999]" 0;
	setAttr ".phl[1000]" 0;
	setAttr ".phl[1001]" 0;
	setAttr ".phl[1002]" 0;
	setAttr ".phl[1003]" 0;
	setAttr ".phl[1004]" 0;
	setAttr ".phl[1005]" 0;
	setAttr ".phl[1006]" 0;
	setAttr ".phl[1007]" 0;
	setAttr ".phl[1008]" 0;
	setAttr ".phl[1009]" 0;
	setAttr ".phl[1010]" 0;
	setAttr ".phl[1011]" 0;
	setAttr ".phl[1012]" 0;
	setAttr ".phl[1013]" 0;
	setAttr ".phl[1014]" 0;
	setAttr ".phl[1015]" 0;
	setAttr ".phl[1016]" 0;
	setAttr ".phl[1017]" 0;
	setAttr ".phl[1018]" 0;
	setAttr ".phl[1019]" 0;
	setAttr ".phl[1020]" 0;
	setAttr ".phl[1021]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1023]" 0;
	setAttr ".phl[1024]" 0;
	setAttr ".phl[1025]" 0;
	setAttr ".phl[1026]" 0;
	setAttr ".phl[1027]" 0;
	setAttr ".phl[1028]" 0;
	setAttr ".phl[1029]" 0;
	setAttr ".phl[1030]" 0;
	setAttr ".phl[1031]" 0;
	setAttr ".phl[1032]" 0;
	setAttr ".phl[1033]" 0;
	setAttr ".phl[1034]" 0;
	setAttr ".phl[1035]" 0;
	setAttr ".phl[1036]" 0;
	setAttr ".phl[1037]" 0;
	setAttr ".phl[1038]" 0;
	setAttr ".phl[1039]" 0;
	setAttr ".phl[1040]" 0;
	setAttr ".phl[1041]" 0;
	setAttr ".phl[1042]" 0;
	setAttr ".phl[1043]" 0;
	setAttr ".phl[1044]" 0;
	setAttr ".phl[1045]" 0;
	setAttr ".phl[1046]" 0;
	setAttr ".phl[1047]" 0;
	setAttr ".phl[1048]" 0;
	setAttr ".phl[1049]" 0;
	setAttr ".phl[1050]" 0;
	setAttr ".phl[1051]" 0;
	setAttr ".phl[1052]" 0;
	setAttr ".phl[1053]" 0;
	setAttr ".phl[1054]" 0;
	setAttr ".phl[1055]" 0;
	setAttr ".phl[1056]" 0;
	setAttr ".phl[1057]" 0;
	setAttr ".phl[1058]" 0;
	setAttr ".phl[1059]" 0;
	setAttr ".phl[1060]" 0;
	setAttr ".phl[1061]" 0;
	setAttr ".phl[1062]" 0;
	setAttr ".phl[1063]" 0;
	setAttr ".phl[1064]" 0;
	setAttr ".phl[1065]" 0;
	setAttr ".phl[1066]" 0;
	setAttr ".phl[1067]" 0;
	setAttr ".phl[1068]" 0;
	setAttr ".phl[1069]" 0;
	setAttr ".phl[1070]" 0;
	setAttr ".phl[1071]" 0;
	setAttr ".phl[1072]" 0;
	setAttr ".phl[1073]" 0;
	setAttr ".phl[1074]" 0;
	setAttr ".phl[1075]" 0;
	setAttr ".phl[1076]" 0;
	setAttr ".phl[1077]" 0;
	setAttr ".phl[1078]" 0;
	setAttr ".phl[1079]" 0;
	setAttr ".phl[1080]" 0;
	setAttr ".phl[1081]" 0;
	setAttr ".phl[1082]" 0;
	setAttr ".phl[1083]" 0;
	setAttr ".phl[1084]" 0;
	setAttr ".phl[1085]" 0;
	setAttr ".phl[1086]" 0;
	setAttr ".phl[1087]" 0;
	setAttr ".phl[1088]" 0;
	setAttr ".phl[1089]" 0;
	setAttr ".phl[1090]" 0;
	setAttr ".phl[1091]" 0;
	setAttr ".phl[1092]" 0;
	setAttr ".phl[1093]" 0;
	setAttr ".phl[1094]" 0;
	setAttr ".phl[1095]" 0;
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
		5 3 "Player_rigRN" "Player_rig:Material5.message" "Player_rigRN.placeHolderList[3]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG5.message" "Player_rigRN.placeHolderList[4]" 
		""
		"Player_rig:SK_SaucerRN" 5
		2 "|Player_rig:model|Player_rig:Saucer" "visibility" " 1"
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Saucer.message" "Player_rigRN.placeHolderList[5]" 
		""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Saucer|Player_rig:SaucerShape.message" 
		"Player_rigRN.placeHolderList[6]" ""
		5 3 "Player_rigRN" "Player_rig:MT_Saucer1.message" "Player_rigRN.placeHolderList[7]" 
		""
		5 3 "Player_rigRN" "Player_rig:SaucerSG1.message" "Player_rigRN.placeHolderList[8]" 
		""
		"Player_rigRN" 1120
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "rotatePivot" 
		" -type \"double3\" 0 18.57046318054199219 0"
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "scalePivot" 
		" -type \"double3\" 0 18.57046318054199219 0"
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "IKFK_Switch" 
		" -k 1"
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK" 
		"translate" " -type \"double3\" 0.46157761800440472 33.32140635295178299 1.25912539709253646"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK" 
		"rotatePivot" " -type \"double3\" -32.15200276358225295 10.07478864294837706 0.25439295748276702"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK" 
		"scalePivot" " -type \"double3\" -32.15200276358225295 10.07478864294837706 0.25439295748276702"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole" 
		"translate" " -type \"double3\" 0.29689094320532916 31.95316864716697935 49.21450672862889064"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole" 
		"rotatePivot" " -type \"double3\" -8.5932 8.32031 30.254396"
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole" 
		"scalePivot" " -type \"double3\" -8.5932 8.32031 30.254396"
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK" 
		"rotatePivot" " -type \"double3\" -8.59319885440051756 -0.174261793494221 -2.3633450815796486e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK" 
		"scalePivot" " -type \"double3\" -8.59319885440051756 -0.174261793494221 -2.3633450815796486e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK" 
		"translate" " -type \"double3\" 0.46157761800440472 33.32140635295178299 1.25912539709253646"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK" 
		"rotatePivot" " -type \"double3\" 32.15200276358225295 10.07478864294837706 0.25439295748276702"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK" 
		"scalePivot" " -type \"double3\" 32.15200276358225295 10.07478864294837706 0.25439295748276702"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK" 
		"rotatePivot" " -type \"double3\" 8.59319885440051756 -0.174261793494221 -2.3633450815796486e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK" 
		"scalePivot" " -type \"double3\" 8.59319885440051756 -0.174261793494221 -2.3633450815796486e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole" 
		"translate" " -type \"double3\" 0.29689094320532916 31.95316864716697935 49.21450672862889064"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole" 
		"rotatePivot" " -type \"double3\" 8.59319928427458457 8.32030677795410334 30.25439605692401557"
		
		2 "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole" 
		"scalePivot" " -type \"double3\" 8.59319928427458457 8.32030677795410334 30.25439605692401557"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik" 
		"rotatePivot" " -type \"double3\" -37.04238510131745699 41.037933349609375 -5.3644179374146006e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik" 
		"scalePivot" " -type \"double3\" -37.04238510131745699 41.037933349609375 -5.3644179374146006e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole" 
		"rotatePivot" " -type \"double3\" -29.08889961242675781 41.0428009033203125 -30.37459999322891235"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole" 
		"scalePivot" " -type \"double3\" -29.08889961242675781 41.0428009033203125 -30.37459999322891235"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l" 
		"rotatePivot" " -type \"double3\" 18.53 41.04299999999998505 0.088"
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l" 
		"scalePivot" " -type \"double3\" 18.53 41.04299999999998505 0.088"
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"rotatePivot" " -type \"double3\" 37.04238510131685302 41.037933349609375 -5.3644178947820365e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"scalePivot" " -type \"double3\" 37.04238510131685302 41.037933349609375 -5.3644178947820365e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole" 
		"rotatePivot" " -type \"double3\" 29.08891487121582031 41.04275894165039062 -30.37459972500801086"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole" 
		"scalePivot" " -type \"double3\" 29.08891487121582031 41.04275894165039062 -30.37459972500801086"
		
		2 "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head" "Orient" 
		" -k 1"
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK" 
		"rotatePivot" " -type \"double3\" -6.8347105752764037e-08 18.57046318054199219 -3.0994415283203125e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK" 
		"scalePivot" " -type \"double3\" -6.8347105752764037e-08 18.57046318054199219 -3.0994415283203125e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK" 
		"rotatePivot" " -type \"double3\" 0 26.53812026977539062 0"
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK" 
		"scalePivot" " -type \"double3\" 0 26.53812026977539062 0"
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK" 
		"rotatePivot" " -type \"double3\" 7.0610730062981168e-07 37.65923690795898438 0.00010497094626771286"
		
		2 "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK" 
		"scalePivot" " -type \"double3\" 7.0610730062981168e-07 37.65923690795898438 0.00010497094626771286"
		
		2 "Player_rig:geo" "visibility" " 0"
		2 "Player_rig:geo" "hideOnPlayback" " 0"
		3 "Player_rig:reverse2.outputX" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		""
		3 "Player_rig:reverse2.outputX" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		""
		3 "Player_rig:reverse4.outputX" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		""
		3 "Player_rig:reverse5.outputX" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		""
		3 "Player_rig:reverse1.outputX" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		""
		3 "Player_rig:reverse3.outputX" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		""
		3 "Player_rig:reverse4.outputX" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		""
		5 3 "Player_rigRN" "|Player_rig:skeleton.message" "Player_rigRN.placeHolderList[22]" 
		""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player.message" 
		"Player_rigRN.placeHolderList[23]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis.message" 
		"Player_rigRN.placeHolderList[24]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine.message" 
		"Player_rigRN.placeHolderList[25]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest.message" 
		"Player_rigRN.placeHolderList[26]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head.message" 
		"Player_rigRN.placeHolderList[27]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:nose.message" 
		"Player_rigRN.placeHolderList[28]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:nose|Player_rig:nose_tip.message" 
		"Player_rigRN.placeHolderList[29]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:head|Player_rig:head_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[30]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l.message" 
		"Player_rigRN.placeHolderList[31]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l.message" 
		"Player_rigRN.placeHolderList[32]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:hand_l.message" 
		"Player_rigRN.placeHolderList[33]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:hand_l|Player_rig:hand_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[34]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:lowerarm_l|Player_rig:lowerarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[35]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_l|Player_rig:upperarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[36]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r.message" 
		"Player_rigRN.placeHolderList[37]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r.message" 
		"Player_rigRN.placeHolderList[38]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:hand_r.message" 
		"Player_rigRN.placeHolderList[39]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:hand_r|Player_rig:hand_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[40]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:lowerarm_r|Player_rig:lowerarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[41]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:upperarm_r|Player_rig:upperarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[42]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:chest|Player_rig:chest_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[43]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:spine|Player_rig:spine_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[44]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l.message" 
		"Player_rigRN.placeHolderList[45]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l.message" 
		"Player_rigRN.placeHolderList[46]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:foot_l.message" 
		"Player_rigRN.placeHolderList[47]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:foot_l|Player_rig:foot_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[48]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:calf_l|Player_rig:calf_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[49]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_l|Player_rig:thigh_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[50]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r.message" 
		"Player_rigRN.placeHolderList[51]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r.message" 
		"Player_rigRN.placeHolderList[52]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:foot_r.message" 
		"Player_rigRN.placeHolderList[53]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:foot_r|Player_rig:foot_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[54]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:calf_r|Player_rig:calf_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[55]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:thigh_r|Player_rig:thigh_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[56]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:pelvis|Player_rig:pelvis_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[57]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_player|Player_rig:root_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[58]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship.message" 
		"Player_rigRN.placeHolderList[59]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship|Player_rig:ship.message" 
		"Player_rigRN.placeHolderList[60]" ""
		5 3 "Player_rigRN" "|Player_rig:skeleton|Player_rig:root_ship|Player_rig:root_parentConstraint2.message" 
		"Player_rigRN.placeHolderList[61]" ""
		5 3 "Player_rigRN" "|Player_rig:model.message" "Player_rigRN.placeHolderList[62]" 
		""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Orion_test.message" 
		"Player_rigRN.placeHolderList[63]" ""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Orion_test|Player_rig:Orion_testShape.message" 
		"Player_rigRN.placeHolderList[64]" ""
		5 3 "Player_rigRN" "|Player_rig:model|Player_rig:Orion_test|Player_rig:Orion_testShapeDeformed.message" 
		"Player_rigRN.placeHolderList[65]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls.message" "Player_rigRN.placeHolderList[66]" 
		""
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
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[72]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[73]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[74]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[75]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[76]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[77]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[78]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[79]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[80]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[81]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[82]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[83]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[84]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[85]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[86]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[87]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[88]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[89]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[90]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[91]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[92]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[93]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[94]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[95]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[96]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[97]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[98]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
		"Player_rigRN.placeHolderList[99]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateOrder" 
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
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[106]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[107]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[108]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[109]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[110]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[111]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[112]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[113]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[114]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[115]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.message" 
		"Player_rigRN.placeHolderList[116]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[117]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[118]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[119]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[120]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[121]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship|Player_rig:CTRL_shipShape.message" 
		"Player_rigRN.placeHolderList[122]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateX" 
		"Player_rigRN.placeHolderList[123]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateX" 
		"Player_rigRN.placeHolderList[124]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateX" 
		"Player_rigRN.placeHolderList[125]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateX" 
		"Player_rigRN.placeHolderList[126]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateX" 
		"Player_rigRN.placeHolderList[127]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateY" 
		"Player_rigRN.placeHolderList[128]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateY" 
		"Player_rigRN.placeHolderList[129]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateY" 
		"Player_rigRN.placeHolderList[130]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateY" 
		"Player_rigRN.placeHolderList[131]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateY" 
		"Player_rigRN.placeHolderList[132]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateZ" 
		"Player_rigRN.placeHolderList[133]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateZ" 
		"Player_rigRN.placeHolderList[134]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateZ" 
		"Player_rigRN.placeHolderList[135]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateZ" 
		"Player_rigRN.placeHolderList[136]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.translateZ" 
		"Player_rigRN.placeHolderList[137]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateX" 
		"Player_rigRN.placeHolderList[138]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateX" 
		"Player_rigRN.placeHolderList[139]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateX" 
		"Player_rigRN.placeHolderList[140]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateX" 
		"Player_rigRN.placeHolderList[141]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateX" 
		"Player_rigRN.placeHolderList[142]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateY" 
		"Player_rigRN.placeHolderList[143]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateY" 
		"Player_rigRN.placeHolderList[144]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateY" 
		"Player_rigRN.placeHolderList[145]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateY" 
		"Player_rigRN.placeHolderList[146]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateY" 
		"Player_rigRN.placeHolderList[147]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateZ" 
		"Player_rigRN.placeHolderList[148]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateZ" 
		"Player_rigRN.placeHolderList[149]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateZ" 
		"Player_rigRN.placeHolderList[150]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateZ" 
		"Player_rigRN.placeHolderList[151]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateZ" 
		"Player_rigRN.placeHolderList[152]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateOrder" 
		"Player_rigRN.placeHolderList[153]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateOrder" 
		"Player_rigRN.placeHolderList[154]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateOrder" 
		"Player_rigRN.placeHolderList[155]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.rotateOrder" 
		"Player_rigRN.placeHolderList[156]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleX" 
		"Player_rigRN.placeHolderList[157]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleX" 
		"Player_rigRN.placeHolderList[158]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleX" 
		"Player_rigRN.placeHolderList[159]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleX" 
		"Player_rigRN.placeHolderList[160]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleX" 
		"Player_rigRN.placeHolderList[161]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleY" 
		"Player_rigRN.placeHolderList[162]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleY" 
		"Player_rigRN.placeHolderList[163]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleY" 
		"Player_rigRN.placeHolderList[164]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleY" 
		"Player_rigRN.placeHolderList[165]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleY" 
		"Player_rigRN.placeHolderList[166]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleZ" 
		"Player_rigRN.placeHolderList[167]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleZ" 
		"Player_rigRN.placeHolderList[168]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleZ" 
		"Player_rigRN.placeHolderList[169]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleZ" 
		"Player_rigRN.placeHolderList[170]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.scaleZ" 
		"Player_rigRN.placeHolderList[171]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.message" 
		"Player_rigRN.placeHolderList[172]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.visibility" 
		"Player_rigRN.placeHolderList[173]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.visibility" 
		"Player_rigRN.placeHolderList[174]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.visibility" 
		"Player_rigRN.placeHolderList[175]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.visibility" 
		"Player_rigRN.placeHolderList[176]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.visibility" 
		"Player_rigRN.placeHolderList[177]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_rootShape.message" 
		"Player_rigRN.placeHolderList[178]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.IKFK_Switch" 
		"Player_rigRN.placeHolderList[179]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.IKFK_Switch" 
		"Player_rigRN.placeHolderList[180]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.IKFK_Switch" 
		"Player_rigRN.placeHolderList[181]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.IKFK_Switch" 
		"Player_rigRN.placeHolderList[182]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.IKFK_Switch" 
		"Player_rigRN.placeHolderList[183]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.message" 
		"Player_rigRN.placeHolderList[184]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateY" 
		"Player_rigRN.placeHolderList[185]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateY" 
		"Player_rigRN.placeHolderList[186]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateY" 
		"Player_rigRN.placeHolderList[187]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateY" 
		"Player_rigRN.placeHolderList[188]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateY" 
		"Player_rigRN.placeHolderList[189]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateZ" 
		"Player_rigRN.placeHolderList[190]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateZ" 
		"Player_rigRN.placeHolderList[191]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateZ" 
		"Player_rigRN.placeHolderList[192]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateZ" 
		"Player_rigRN.placeHolderList[193]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateZ" 
		"Player_rigRN.placeHolderList[194]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateX" 
		"Player_rigRN.placeHolderList[195]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateX" 
		"Player_rigRN.placeHolderList[196]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateX" 
		"Player_rigRN.placeHolderList[197]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateX" 
		"Player_rigRN.placeHolderList[198]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.translateX" 
		"Player_rigRN.placeHolderList[199]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateX" 
		"Player_rigRN.placeHolderList[200]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateX" 
		"Player_rigRN.placeHolderList[201]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateX" 
		"Player_rigRN.placeHolderList[202]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateX" 
		"Player_rigRN.placeHolderList[203]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateX" 
		"Player_rigRN.placeHolderList[204]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateY" 
		"Player_rigRN.placeHolderList[205]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateY" 
		"Player_rigRN.placeHolderList[206]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateY" 
		"Player_rigRN.placeHolderList[207]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateY" 
		"Player_rigRN.placeHolderList[208]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateY" 
		"Player_rigRN.placeHolderList[209]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateZ" 
		"Player_rigRN.placeHolderList[210]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateZ" 
		"Player_rigRN.placeHolderList[211]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateZ" 
		"Player_rigRN.placeHolderList[212]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateZ" 
		"Player_rigRN.placeHolderList[213]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateZ" 
		"Player_rigRN.placeHolderList[214]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.visibility" 
		"Player_rigRN.placeHolderList[215]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.visibility" 
		"Player_rigRN.placeHolderList[216]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.visibility" 
		"Player_rigRN.placeHolderList[217]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.visibility" 
		"Player_rigRN.placeHolderList[218]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.visibility" 
		"Player_rigRN.placeHolderList[219]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleX" 
		"Player_rigRN.placeHolderList[220]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleX" 
		"Player_rigRN.placeHolderList[221]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleX" 
		"Player_rigRN.placeHolderList[222]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleX" 
		"Player_rigRN.placeHolderList[223]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleX" 
		"Player_rigRN.placeHolderList[224]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleY" 
		"Player_rigRN.placeHolderList[225]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleY" 
		"Player_rigRN.placeHolderList[226]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleY" 
		"Player_rigRN.placeHolderList[227]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleY" 
		"Player_rigRN.placeHolderList[228]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleY" 
		"Player_rigRN.placeHolderList[229]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleZ" 
		"Player_rigRN.placeHolderList[230]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleZ" 
		"Player_rigRN.placeHolderList[231]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleZ" 
		"Player_rigRN.placeHolderList[232]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleZ" 
		"Player_rigRN.placeHolderList[233]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.scaleZ" 
		"Player_rigRN.placeHolderList[234]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateOrder" 
		"Player_rigRN.placeHolderList[235]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateOrder" 
		"Player_rigRN.placeHolderList[236]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateOrder" 
		"Player_rigRN.placeHolderList[237]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.rotateOrder" 
		"Player_rigRN.placeHolderList[238]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:CTRL_cogShape.message" 
		"Player_rigRN.placeHolderList[239]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[240]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK.message" 
		"Player_rigRN.placeHolderList[241]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK|Player_rig:CTRL_leg_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[242]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[243]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_thigh_r_FKShape.message" 
		"Player_rigRN.placeHolderList[244]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK.message" 
		"Player_rigRN.placeHolderList[245]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK|Player_rig:CTRL_calf_r_FKShape.message" 
		"Player_rigRN.placeHolderList[246]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole.message" 
		"Player_rigRN.placeHolderList[247]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole|Player_rig:CTRL_leg_r_poleShape.message" 
		"Player_rigRN.placeHolderList[248]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[249]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[250]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[251]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[252]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[253]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.message" 
		"Player_rigRN.placeHolderList[254]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[255]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[256]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[257]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[258]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[259]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[260]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[261]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[262]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[263]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[264]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[265]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[266]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[267]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[268]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[269]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[270]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[271]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[272]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[273]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[274]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[275]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[276]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[277]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[278]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[279]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[280]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[281]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[282]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[283]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[284]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[285]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[286]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[287]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[288]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleX" 
		"Player_rigRN.placeHolderList[289]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleX" 
		"Player_rigRN.placeHolderList[290]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleX" 
		"Player_rigRN.placeHolderList[291]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleX" 
		"Player_rigRN.placeHolderList[292]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleX" 
		"Player_rigRN.placeHolderList[293]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleY" 
		"Player_rigRN.placeHolderList[294]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleY" 
		"Player_rigRN.placeHolderList[295]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleY" 
		"Player_rigRN.placeHolderList[296]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleY" 
		"Player_rigRN.placeHolderList[297]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleY" 
		"Player_rigRN.placeHolderList[298]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleZ" 
		"Player_rigRN.placeHolderList[299]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleZ" 
		"Player_rigRN.placeHolderList[300]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleZ" 
		"Player_rigRN.placeHolderList[301]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleZ" 
		"Player_rigRN.placeHolderList[302]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.scaleZ" 
		"Player_rigRN.placeHolderList[303]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:CTRL_foot_r_IKShape.message" 
		"Player_rigRN.placeHolderList[304]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r.message" 
		"Player_rigRN.placeHolderList[305]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r|Player_rig:ikHandle2_leg_r_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[306]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[307]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK.message" 
		"Player_rigRN.placeHolderList[308]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK|Player_rig:CTRL_leg_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[309]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[310]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_thigh_l_FKShape.message" 
		"Player_rigRN.placeHolderList[311]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK.message" 
		"Player_rigRN.placeHolderList[312]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK|Player_rig:CTRL_calf_l_FKShape.message" 
		"Player_rigRN.placeHolderList[313]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[314]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[315]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[316]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[317]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[318]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.message" 
		"Player_rigRN.placeHolderList[319]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[320]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[321]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[322]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[323]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[324]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[325]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[326]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[327]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[328]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[329]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[330]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[331]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[332]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[333]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[334]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[335]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[336]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[337]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[338]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[339]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[340]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[341]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[342]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[343]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[344]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[345]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[346]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[347]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[348]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[349]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[350]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[351]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[352]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[353]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleX" 
		"Player_rigRN.placeHolderList[354]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleX" 
		"Player_rigRN.placeHolderList[355]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleX" 
		"Player_rigRN.placeHolderList[356]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleX" 
		"Player_rigRN.placeHolderList[357]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleX" 
		"Player_rigRN.placeHolderList[358]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleY" 
		"Player_rigRN.placeHolderList[359]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleY" 
		"Player_rigRN.placeHolderList[360]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleY" 
		"Player_rigRN.placeHolderList[361]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleY" 
		"Player_rigRN.placeHolderList[362]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleY" 
		"Player_rigRN.placeHolderList[363]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleZ" 
		"Player_rigRN.placeHolderList[364]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleZ" 
		"Player_rigRN.placeHolderList[365]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleZ" 
		"Player_rigRN.placeHolderList[366]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleZ" 
		"Player_rigRN.placeHolderList[367]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.scaleZ" 
		"Player_rigRN.placeHolderList[368]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:CTRL_foot_l_IKShape.message" 
		"Player_rigRN.placeHolderList[369]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle5_leg_l.message" 
		"Player_rigRN.placeHolderList[370]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle5_leg_l|Player_rig:ikHandle5_leg_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[371]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole.message" 
		"Player_rigRN.placeHolderList[372]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole|Player_rig:CTRL_leg_l_poleShape.message" 
		"Player_rigRN.placeHolderList[373]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[374]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.message" 
		"Player_rigRN.placeHolderList[375]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[376]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[377]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[378]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[379]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[380]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[381]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[382]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[383]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[384]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[385]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[386]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[387]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[388]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[389]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[390]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[391]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[392]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[393]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[394]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[395]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[396]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[397]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[398]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[399]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[400]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[401]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[402]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[403]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[404]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[405]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[406]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[407]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[408]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[409]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[410]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateOrder" 
		"Player_rigRN.placeHolderList[411]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateOrder" 
		"Player_rigRN.placeHolderList[412]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateOrder" 
		"Player_rigRN.placeHolderList[413]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.rotateOrder" 
		"Player_rigRN.placeHolderList[414]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[415]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[416]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[417]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[418]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[419]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[420]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[421]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[422]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[423]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[424]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[425]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[426]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[427]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[428]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[429]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r|Player_rig:CTRL_shoulder_rShape.message" 
		"Player_rigRN.placeHolderList[430]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[431]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_upperarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[432]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[433]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_lowerarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[434]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK.message" 
		"Player_rigRN.placeHolderList[435]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK|Player_rig:CTRL_hand_r_FKShape.message" 
		"Player_rigRN.placeHolderList[436]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[437]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[438]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[439]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[440]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[441]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateX" 
		"Player_rigRN.placeHolderList[442]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateX" 
		"Player_rigRN.placeHolderList[443]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateX" 
		"Player_rigRN.placeHolderList[444]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateX" 
		"Player_rigRN.placeHolderList[445]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateX" 
		"Player_rigRN.placeHolderList[446]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateY" 
		"Player_rigRN.placeHolderList[447]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateY" 
		"Player_rigRN.placeHolderList[448]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateY" 
		"Player_rigRN.placeHolderList[449]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateY" 
		"Player_rigRN.placeHolderList[450]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateY" 
		"Player_rigRN.placeHolderList[451]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateZ" 
		"Player_rigRN.placeHolderList[452]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateZ" 
		"Player_rigRN.placeHolderList[453]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateZ" 
		"Player_rigRN.placeHolderList[454]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateZ" 
		"Player_rigRN.placeHolderList[455]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateZ" 
		"Player_rigRN.placeHolderList[456]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[457]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[458]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[459]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[460]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[461]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[462]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[463]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[464]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[465]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[466]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[467]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[468]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[469]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[470]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[471]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[472]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[473]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[474]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[475]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.message" 
		"Player_rigRN.placeHolderList[476]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleX" 
		"Player_rigRN.placeHolderList[477]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleX" 
		"Player_rigRN.placeHolderList[478]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleX" 
		"Player_rigRN.placeHolderList[479]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleX" 
		"Player_rigRN.placeHolderList[480]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleX" 
		"Player_rigRN.placeHolderList[481]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleY" 
		"Player_rigRN.placeHolderList[482]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleY" 
		"Player_rigRN.placeHolderList[483]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleY" 
		"Player_rigRN.placeHolderList[484]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleY" 
		"Player_rigRN.placeHolderList[485]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleY" 
		"Player_rigRN.placeHolderList[486]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleZ" 
		"Player_rigRN.placeHolderList[487]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleZ" 
		"Player_rigRN.placeHolderList[488]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleZ" 
		"Player_rigRN.placeHolderList[489]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleZ" 
		"Player_rigRN.placeHolderList[490]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.scaleZ" 
		"Player_rigRN.placeHolderList[491]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:CTRL_arm_r_ikShape.message" 
		"Player_rigRN.placeHolderList[492]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r.message" 
		"Player_rigRN.placeHolderList[493]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r|Player_rig:ikHandle3_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[494]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[495]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[496]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[497]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[498]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[499]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[500]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[501]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[502]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[503]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[504]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[505]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[506]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[507]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[508]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[509]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[510]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[511]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[512]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[513]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[514]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.message" 
		"Player_rigRN.placeHolderList[515]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[516]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[517]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[518]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[519]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[520]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[521]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[522]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[523]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[524]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[525]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[526]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[527]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[528]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[529]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[530]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[531]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[532]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[533]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[534]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[535]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[536]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[537]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[538]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[539]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[540]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[541]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[542]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[543]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[544]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[545]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[546]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[547]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[548]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[549]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole|Player_rig:CTRL_arm_r_poleShape.message" 
		"Player_rigRN.placeHolderList[550]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK.message" 
		"Player_rigRN.placeHolderList[551]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK|Player_rig:CTRL_arm_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[552]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[553]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.message" 
		"Player_rigRN.placeHolderList[554]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[555]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[556]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[557]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[558]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[559]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[560]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[561]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[562]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[563]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[564]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[565]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[566]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[567]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[568]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[569]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[570]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[571]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[572]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[573]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[574]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[575]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[576]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[577]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[578]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[579]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[580]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[581]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[582]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[583]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[584]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[585]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[586]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[587]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[588]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[589]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateOrder" 
		"Player_rigRN.placeHolderList[590]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateOrder" 
		"Player_rigRN.placeHolderList[591]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateOrder" 
		"Player_rigRN.placeHolderList[592]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.rotateOrder" 
		"Player_rigRN.placeHolderList[593]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[594]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[595]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[596]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[597]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[598]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[599]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[600]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[601]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[602]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[603]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[604]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[605]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[606]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[607]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[608]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l|Player_rig:CTRL_shoulder_lShape.message" 
		"Player_rigRN.placeHolderList[609]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK.message" 
		"Player_rigRN.placeHolderList[610]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK|Player_rig:CTRL_arm_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[611]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[612]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_upperarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[613]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[614]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_lowerarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[615]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK.message" 
		"Player_rigRN.placeHolderList[616]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK|Player_rig:CTRL_hand_l_FKShape.message" 
		"Player_rigRN.placeHolderList[617]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[618]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[619]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[620]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[621]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[622]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateY" 
		"Player_rigRN.placeHolderList[623]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateY" 
		"Player_rigRN.placeHolderList[624]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateY" 
		"Player_rigRN.placeHolderList[625]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateY" 
		"Player_rigRN.placeHolderList[626]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateY" 
		"Player_rigRN.placeHolderList[627]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateX" 
		"Player_rigRN.placeHolderList[628]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateX" 
		"Player_rigRN.placeHolderList[629]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateX" 
		"Player_rigRN.placeHolderList[630]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateX" 
		"Player_rigRN.placeHolderList[631]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateX" 
		"Player_rigRN.placeHolderList[632]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateZ" 
		"Player_rigRN.placeHolderList[633]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateZ" 
		"Player_rigRN.placeHolderList[634]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateZ" 
		"Player_rigRN.placeHolderList[635]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateZ" 
		"Player_rigRN.placeHolderList[636]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateZ" 
		"Player_rigRN.placeHolderList[637]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[638]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[639]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[640]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[641]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[642]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[643]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[644]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[645]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[646]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[647]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[648]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[649]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[650]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[651]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[652]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[653]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[654]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[655]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[656]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.message" 
		"Player_rigRN.placeHolderList[657]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleX" 
		"Player_rigRN.placeHolderList[658]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleX" 
		"Player_rigRN.placeHolderList[659]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleX" 
		"Player_rigRN.placeHolderList[660]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleX" 
		"Player_rigRN.placeHolderList[661]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleX" 
		"Player_rigRN.placeHolderList[662]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleY" 
		"Player_rigRN.placeHolderList[663]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleY" 
		"Player_rigRN.placeHolderList[664]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleY" 
		"Player_rigRN.placeHolderList[665]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleY" 
		"Player_rigRN.placeHolderList[666]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleY" 
		"Player_rigRN.placeHolderList[667]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleZ" 
		"Player_rigRN.placeHolderList[668]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleZ" 
		"Player_rigRN.placeHolderList[669]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleZ" 
		"Player_rigRN.placeHolderList[670]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleZ" 
		"Player_rigRN.placeHolderList[671]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.scaleZ" 
		"Player_rigRN.placeHolderList[672]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:CTRL_arm_l_ikShape.message" 
		"Player_rigRN.placeHolderList[673]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle4_arm_l.message" 
		"Player_rigRN.placeHolderList[674]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle4_arm_l|Player_rig:ikHandle4_arm_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[675]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[676]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[677]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[678]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[679]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[680]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[681]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[682]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[683]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[684]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[685]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[686]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[687]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[688]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[689]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[690]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[691]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[692]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[693]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[694]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[695]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.message" 
		"Player_rigRN.placeHolderList[696]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[697]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[698]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[699]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[700]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[701]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[702]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[703]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[704]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[705]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[706]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[707]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[708]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[709]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[710]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[711]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[712]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[713]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[714]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[715]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[716]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[717]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[718]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[719]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[720]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[721]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[722]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[723]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[724]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[725]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[726]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[727]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[728]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[729]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[730]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole|Player_rig:CTRL_arm_l_poleShape.message" 
		"Player_rigRN.placeHolderList[731]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp.message" 
		"Player_rigRN.placeHolderList[732]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.Orient" 
		"Player_rigRN.placeHolderList[733]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.Orient" 
		"Player_rigRN.placeHolderList[734]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.Orient" 
		"Player_rigRN.placeHolderList[735]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.Orient" 
		"Player_rigRN.placeHolderList[736]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.Orient" 
		"Player_rigRN.placeHolderList[737]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateX" 
		"Player_rigRN.placeHolderList[738]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateX" 
		"Player_rigRN.placeHolderList[739]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateX" 
		"Player_rigRN.placeHolderList[740]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateX" 
		"Player_rigRN.placeHolderList[741]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateX" 
		"Player_rigRN.placeHolderList[742]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateY" 
		"Player_rigRN.placeHolderList[743]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateY" 
		"Player_rigRN.placeHolderList[744]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateY" 
		"Player_rigRN.placeHolderList[745]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateY" 
		"Player_rigRN.placeHolderList[746]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateY" 
		"Player_rigRN.placeHolderList[747]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateZ" 
		"Player_rigRN.placeHolderList[748]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateZ" 
		"Player_rigRN.placeHolderList[749]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateZ" 
		"Player_rigRN.placeHolderList[750]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateZ" 
		"Player_rigRN.placeHolderList[751]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.translateZ" 
		"Player_rigRN.placeHolderList[752]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateX" 
		"Player_rigRN.placeHolderList[753]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateX" 
		"Player_rigRN.placeHolderList[754]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateX" 
		"Player_rigRN.placeHolderList[755]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateX" 
		"Player_rigRN.placeHolderList[756]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateX" 
		"Player_rigRN.placeHolderList[757]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateY" 
		"Player_rigRN.placeHolderList[758]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateY" 
		"Player_rigRN.placeHolderList[759]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateY" 
		"Player_rigRN.placeHolderList[760]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateY" 
		"Player_rigRN.placeHolderList[761]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateY" 
		"Player_rigRN.placeHolderList[762]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateZ" 
		"Player_rigRN.placeHolderList[763]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateZ" 
		"Player_rigRN.placeHolderList[764]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateZ" 
		"Player_rigRN.placeHolderList[765]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateZ" 
		"Player_rigRN.placeHolderList[766]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateZ" 
		"Player_rigRN.placeHolderList[767]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateOrder" 
		"Player_rigRN.placeHolderList[768]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateOrder" 
		"Player_rigRN.placeHolderList[769]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateOrder" 
		"Player_rigRN.placeHolderList[770]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.rotateOrder" 
		"Player_rigRN.placeHolderList[771]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleX" 
		"Player_rigRN.placeHolderList[772]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleX" 
		"Player_rigRN.placeHolderList[773]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleX" 
		"Player_rigRN.placeHolderList[774]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleX" 
		"Player_rigRN.placeHolderList[775]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleX" 
		"Player_rigRN.placeHolderList[776]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleY" 
		"Player_rigRN.placeHolderList[777]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleY" 
		"Player_rigRN.placeHolderList[778]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleY" 
		"Player_rigRN.placeHolderList[779]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleY" 
		"Player_rigRN.placeHolderList[780]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleY" 
		"Player_rigRN.placeHolderList[781]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleZ" 
		"Player_rigRN.placeHolderList[782]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleZ" 
		"Player_rigRN.placeHolderList[783]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleZ" 
		"Player_rigRN.placeHolderList[784]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleZ" 
		"Player_rigRN.placeHolderList[785]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.scaleZ" 
		"Player_rigRN.placeHolderList[786]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.message" 
		"Player_rigRN.placeHolderList[787]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.visibility" 
		"Player_rigRN.placeHolderList[788]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.visibility" 
		"Player_rigRN.placeHolderList[789]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.visibility" 
		"Player_rigRN.placeHolderList[790]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.visibility" 
		"Player_rigRN.placeHolderList[791]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.visibility" 
		"Player_rigRN.placeHolderList[792]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head|Player_rig:CTRL_headShape.message" 
		"Player_rigRN.placeHolderList[793]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:head_grp_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[794]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp.message" 
		"Player_rigRN.placeHolderList[795]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		"Player_rigRN.placeHolderList[796]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		"Player_rigRN.placeHolderList[797]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		"Player_rigRN.placeHolderList[798]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		"Player_rigRN.placeHolderList[799]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.visibility" 
		"Player_rigRN.placeHolderList[800]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[801]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[802]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[803]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[804]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[805]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[806]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[807]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[808]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[809]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[810]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[811]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[812]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[813]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[814]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[815]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[816]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[817]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[818]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[819]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[820]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[821]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[822]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[823]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[824]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[825]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[826]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[827]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[828]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[829]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[830]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[831]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[832]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[833]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[834]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleX" 
		"Player_rigRN.placeHolderList[835]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleX" 
		"Player_rigRN.placeHolderList[836]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleX" 
		"Player_rigRN.placeHolderList[837]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleX" 
		"Player_rigRN.placeHolderList[838]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleX" 
		"Player_rigRN.placeHolderList[839]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleY" 
		"Player_rigRN.placeHolderList[840]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleY" 
		"Player_rigRN.placeHolderList[841]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleY" 
		"Player_rigRN.placeHolderList[842]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleY" 
		"Player_rigRN.placeHolderList[843]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleY" 
		"Player_rigRN.placeHolderList[844]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleZ" 
		"Player_rigRN.placeHolderList[845]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleZ" 
		"Player_rigRN.placeHolderList[846]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleZ" 
		"Player_rigRN.placeHolderList[847]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleZ" 
		"Player_rigRN.placeHolderList[848]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.scaleZ" 
		"Player_rigRN.placeHolderList[849]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.message" 
		"Player_rigRN.placeHolderList[850]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_pelvis_IKShape.message" 
		"Player_rigRN.placeHolderList[851]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[852]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[853]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[854]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[855]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[856]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[857]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[858]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[859]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[860]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[861]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[862]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[863]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[864]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[865]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[866]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateZ" 
		"Player_rigRN.placeHolderList[867]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateZ" 
		"Player_rigRN.placeHolderList[868]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateZ" 
		"Player_rigRN.placeHolderList[869]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateZ" 
		"Player_rigRN.placeHolderList[870]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateZ" 
		"Player_rigRN.placeHolderList[871]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateX" 
		"Player_rigRN.placeHolderList[872]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateX" 
		"Player_rigRN.placeHolderList[873]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateX" 
		"Player_rigRN.placeHolderList[874]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateX" 
		"Player_rigRN.placeHolderList[875]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateX" 
		"Player_rigRN.placeHolderList[876]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateY" 
		"Player_rigRN.placeHolderList[877]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateY" 
		"Player_rigRN.placeHolderList[878]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateY" 
		"Player_rigRN.placeHolderList[879]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateY" 
		"Player_rigRN.placeHolderList[880]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateY" 
		"Player_rigRN.placeHolderList[881]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[882]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[883]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[884]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[885]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleX" 
		"Player_rigRN.placeHolderList[886]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleX" 
		"Player_rigRN.placeHolderList[887]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleX" 
		"Player_rigRN.placeHolderList[888]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleX" 
		"Player_rigRN.placeHolderList[889]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleX" 
		"Player_rigRN.placeHolderList[890]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleY" 
		"Player_rigRN.placeHolderList[891]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleY" 
		"Player_rigRN.placeHolderList[892]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleY" 
		"Player_rigRN.placeHolderList[893]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleY" 
		"Player_rigRN.placeHolderList[894]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleY" 
		"Player_rigRN.placeHolderList[895]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleZ" 
		"Player_rigRN.placeHolderList[896]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleZ" 
		"Player_rigRN.placeHolderList[897]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleZ" 
		"Player_rigRN.placeHolderList[898]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleZ" 
		"Player_rigRN.placeHolderList[899]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.scaleZ" 
		"Player_rigRN.placeHolderList[900]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.message" 
		"Player_rigRN.placeHolderList[901]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[902]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[903]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[904]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[905]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[906]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK|Player_rig:CTRL_spine_IKShape.message" 
		"Player_rigRN.placeHolderList[907]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[908]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[909]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[910]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[911]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[912]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[913]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[914]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[915]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[916]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[917]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[918]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[919]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[920]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[921]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[922]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateZ" 
		"Player_rigRN.placeHolderList[923]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateZ" 
		"Player_rigRN.placeHolderList[924]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateZ" 
		"Player_rigRN.placeHolderList[925]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateZ" 
		"Player_rigRN.placeHolderList[926]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateZ" 
		"Player_rigRN.placeHolderList[927]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateX" 
		"Player_rigRN.placeHolderList[928]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateX" 
		"Player_rigRN.placeHolderList[929]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateX" 
		"Player_rigRN.placeHolderList[930]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateX" 
		"Player_rigRN.placeHolderList[931]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateX" 
		"Player_rigRN.placeHolderList[932]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateY" 
		"Player_rigRN.placeHolderList[933]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateY" 
		"Player_rigRN.placeHolderList[934]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateY" 
		"Player_rigRN.placeHolderList[935]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateY" 
		"Player_rigRN.placeHolderList[936]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateY" 
		"Player_rigRN.placeHolderList[937]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[938]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[939]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[940]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[941]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleX" 
		"Player_rigRN.placeHolderList[942]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleX" 
		"Player_rigRN.placeHolderList[943]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleX" 
		"Player_rigRN.placeHolderList[944]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleX" 
		"Player_rigRN.placeHolderList[945]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleX" 
		"Player_rigRN.placeHolderList[946]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleY" 
		"Player_rigRN.placeHolderList[947]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleY" 
		"Player_rigRN.placeHolderList[948]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleY" 
		"Player_rigRN.placeHolderList[949]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleY" 
		"Player_rigRN.placeHolderList[950]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleY" 
		"Player_rigRN.placeHolderList[951]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleZ" 
		"Player_rigRN.placeHolderList[952]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleZ" 
		"Player_rigRN.placeHolderList[953]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleZ" 
		"Player_rigRN.placeHolderList[954]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleZ" 
		"Player_rigRN.placeHolderList[955]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.scaleZ" 
		"Player_rigRN.placeHolderList[956]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.message" 
		"Player_rigRN.placeHolderList[957]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[958]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[959]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[960]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[961]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[962]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK|Player_rig:CTRL_chest_IKShape.message" 
		"Player_rigRN.placeHolderList[963]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK.message" 
		"Player_rigRN.placeHolderList[964]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_pelvis_FKShape.message" 
		"Player_rigRN.placeHolderList[965]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK.message" 
		"Player_rigRN.placeHolderList[966]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_spine_FKShape.message" 
		"Player_rigRN.placeHolderList[967]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK.message" 
		"Player_rigRN.placeHolderList[968]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK|Player_rig:CTRL_chest_FKShape.message" 
		"Player_rigRN.placeHolderList[969]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:ikHandle_spine.message" 
		"Player_rigRN.placeHolderList[970]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems.message" "Player_rigRN.placeHolderList[971]" 
		""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH.message" 
		"Player_rigRN.placeHolderList[972]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group.message" 
		"Player_rigRN.placeHolderList[973]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:chest_ctrljnt.message" 
		"Player_rigRN.placeHolderList[974]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:chest_ctrljnt|Player_rig:chest_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[975]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:mid_ctrljnt.message" 
		"Player_rigRN.placeHolderList[976]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:mid_ctrljnt|Player_rig:mid_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[977]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_ctrljnt.message" 
		"Player_rigRN.placeHolderList[978]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_ctrljnt|Player_rig:pelvis_ctrljnt1_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[979]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve.message" 
		"Player_rigRN.placeHolderList[980]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShape.message" 
		"Player_rigRN.placeHolderList[981]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShapeOrig.message" 
		"Player_rigRN.placeHolderList[982]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK.message" 
		"Player_rigRN.placeHolderList[983]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK.message" 
		"Player_rigRN.placeHolderList[984]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:chest_IK.message" 
		"Player_rigRN.placeHolderList[985]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:chest_IK|Player_rig:chest_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[986]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:effector3.message" 
		"Player_rigRN.placeHolderList[987]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:spine_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[988]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK.message" 
		"Player_rigRN.placeHolderList[989]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK.message" 
		"Player_rigRN.placeHolderList[990]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK.message" 
		"Player_rigRN.placeHolderList[991]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK|Player_rig:chest_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[992]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:spine_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[993]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:pelvis_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[994]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[995]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK.message" 
		"Player_rigRN.placeHolderList[996]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK.message" 
		"Player_rigRN.placeHolderList[997]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK.message" 
		"Player_rigRN.placeHolderList[998]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK|Player_rig:hand_l_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[999]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:effector8.message" 
		"Player_rigRN.placeHolderList[1000]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[1001]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[1002]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK.message" 
		"Player_rigRN.placeHolderList[1003]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK|Player_rig:hand_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1004]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:lowerarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1005]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:upperarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1006]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[1007]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK.message" 
		"Player_rigRN.placeHolderList[1008]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK.message" 
		"Player_rigRN.placeHolderList[1009]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK.message" 
		"Player_rigRN.placeHolderList[1010]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK|Player_rig:hand_r_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[1011]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:effector7.message" 
		"Player_rigRN.placeHolderList[1012]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[1013]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[1014]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK.message" 
		"Player_rigRN.placeHolderList[1015]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK|Player_rig:hand_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1016]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:lowerarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1017]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:upperarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1018]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[1019]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK.message" 
		"Player_rigRN.placeHolderList[1020]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK.message" 
		"Player_rigRN.placeHolderList[1021]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:foot_l_IK.message" 
		"Player_rigRN.placeHolderList[1022]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:effector9.message" 
		"Player_rigRN.placeHolderList[1023]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[1024]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK.message" 
		"Player_rigRN.placeHolderList[1025]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:foot_l_FK.message" 
		"Player_rigRN.placeHolderList[1026]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:calf_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1027]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:thigh_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1028]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[1029]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK.message" 
		"Player_rigRN.placeHolderList[1030]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK.message" 
		"Player_rigRN.placeHolderList[1031]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:foot_r_IK.message" 
		"Player_rigRN.placeHolderList[1032]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:effector6.message" 
		"Player_rigRN.placeHolderList[1033]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[1034]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK.message" 
		"Player_rigRN.placeHolderList[1035]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:foot_r_FK.message" 
		"Player_rigRN.placeHolderList[1036]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:calf_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1037]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:thigh_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[1038]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed.message" 
		"Player_rigRN.placeHolderList[1039]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.message" 
		"Player_rigRN.placeHolderList[1040]" ""
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager.message" "Player_rigRN.placeHolderList[1041]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager.message" "Player_rigRN.placeHolderList[1042]" 
		""
		5 3 "Player_rigRN" "Player_rig:layerManager.message" "Player_rigRN.placeHolderList[1043]" 
		""
		5 3 "Player_rigRN" "Player_rig:defaultLayer.message" "Player_rigRN.placeHolderList[1044]" 
		""
		5 3 "Player_rigRN" "Player_rig:uiConfigurationScriptNode.message" "Player_rigRN.placeHolderList[1045]" 
		""
		5 3 "Player_rigRN" "Player_rig:sceneConfigurationScriptNode.message" 
		"Player_rigRN.placeHolderList[1046]" ""
		5 3 "Player_rigRN" "Player_rig:geo.message" "Player_rigRN.placeHolderList[1047]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose3.message" "Player_rigRN.placeHolderList[1048]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse1.outputX" "Player_rigRN.placeHolderList[1049]" 
		"Player_rig:CTRL_foot_l_IK.v"
		5 3 "Player_rigRN" "Player_rig:reverse1.message" "Player_rigRN.placeHolderList[1050]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse2.outputX" "Player_rigRN.placeHolderList[1051]" 
		"Player_rig:CTRL_arm_l_ik.v"
		5 3 "Player_rigRN" "Player_rig:reverse2.outputX" "Player_rigRN.placeHolderList[1052]" 
		"Player_rig:CTRL_arm_l_ik.v"
		5 3 "Player_rigRN" "Player_rig:reverse2.message" "Player_rigRN.placeHolderList[1053]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse3.outputX" "Player_rigRN.placeHolderList[1054]" 
		"Player_rig:CTRL_pelvis_IK.v"
		5 3 "Player_rigRN" "Player_rig:reverse3.message" "Player_rigRN.placeHolderList[1055]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse4.outputX" "Player_rigRN.placeHolderList[1056]" 
		"Player_rig:CTRL_arm_r_ik.v"
		5 3 "Player_rigRN" "Player_rig:reverse4.outputX" "Player_rigRN.placeHolderList[1057]" 
		"Player_rig:CTRL_arm_r_ik.v"
		5 3 "Player_rigRN" "Player_rig:reverse4.message" "Player_rigRN.placeHolderList[1058]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse5.outputX" "Player_rigRN.placeHolderList[1059]" 
		"Player_rig:CTRL_foot_r_IK.v"
		5 3 "Player_rigRN" "Player_rig:reverse5.message" "Player_rigRN.placeHolderList[1060]" 
		""
		5 3 "Player_rigRN" "Player_rig:pasted__multiplyDivide1.message" "Player_rigRN.placeHolderList[1061]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose6.message" "Player_rigRN.placeHolderList[1062]" 
		""
		5 3 "Player_rigRN" "Player_rig:controls.message" "Player_rigRN.placeHolderList[1063]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster2.message" "Player_rigRN.placeHolderList[1064]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle1.message" "Player_rigRN.placeHolderList[1065]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry1.message" "Player_rigRN.placeHolderList[1066]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry4.message" "Player_rigRN.placeHolderList[1067]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle2.message" "Player_rigRN.placeHolderList[1068]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry2.message" "Player_rigRN.placeHolderList[1069]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry3.message" "Player_rigRN.placeHolderList[1070]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle4.message" "Player_rigRN.placeHolderList[1071]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry7.message" "Player_rigRN.placeHolderList[1072]" 
		""
		5 3 "Player_rigRN" "Player_rig:tweak1.message" "Player_rigRN.placeHolderList[1073]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind1.message" "Player_rigRN.placeHolderList[1074]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster5.message" "Player_rigRN.placeHolderList[1075]" 
		""
		5 3 "Player_rigRN" "Player_rig:bones.message" "Player_rigRN.placeHolderList[1076]" 
		""
		5 3 "Player_rigRN" "Player_rig:multMatrix1.message" "Player_rigRN.placeHolderList[1077]" 
		""
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager1.message" "Player_rigRN.placeHolderList[1078]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager1.message" "Player_rigRN.placeHolderList[1079]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material.message" "Player_rigRN.placeHolderList[1080]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG.message" "Player_rigRN.placeHolderList[1081]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material1.message" "Player_rigRN.placeHolderList[1082]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG1.message" "Player_rigRN.placeHolderList[1083]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material2.message" "Player_rigRN.placeHolderList[1084]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG2.message" "Player_rigRN.placeHolderList[1085]" 
		""
		5 3 "Player_rigRN" "Player_rig:MT_Saucer.message" "Player_rigRN.placeHolderList[1086]" 
		""
		5 3 "Player_rigRN" "Player_rig:SaucerSG.message" "Player_rigRN.placeHolderList[1087]" 
		""
		5 3 "Player_rigRN" "Player_rig:Player_modelRN.message" "Player_rigRN.placeHolderList[1088]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster6.message" "Player_rigRN.placeHolderList[1089]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose7.message" "Player_rigRN.placeHolderList[1090]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind2.message" "Player_rigRN.placeHolderList[1091]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster7.message" "Player_rigRN.placeHolderList[1092]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose8.message" "Player_rigRN.placeHolderList[1093]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind3.message" "Player_rigRN.placeHolderList[1094]" 
		""
		5 3 "Player_rigRN" "Player_rig:sharedReferenceNode.message" "Player_rigRN.placeHolderList[1095]" 
		""
		"Player_rig:Player_modelRN" 13
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager2.message" "Player_rigRN.placeHolderList[9]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager2.message" "Player_rigRN.placeHolderList[10]" 
		""
		5 3 "Player_rigRN" "Player_rig:layerManager1.message" "Player_rigRN.placeHolderList[11]" 
		""
		5 3 "Player_rigRN" "Player_rig:defaultLayer1.message" "Player_rigRN.placeHolderList[12]" 
		""
		5 3 "Player_rigRN" "Player_rig:uiConfigurationScriptNode1.message" "Player_rigRN.placeHolderList[13]" 
		""
		5 3 "Player_rigRN" "Player_rig:sceneConfigurationScriptNode1.message" 
		"Player_rigRN.placeHolderList[14]" ""
		5 3 "Player_rigRN" "Player_rig:Material3.message" "Player_rigRN.placeHolderList[15]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG3.message" "Player_rigRN.placeHolderList[16]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material4.message" "Player_rigRN.placeHolderList[17]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG4.message" "Player_rigRN.placeHolderList[18]" 
		""
		5 3 "Player_rigRN" "Player_rig:SK_OrionRN.message" "Player_rigRN.placeHolderList[19]" 
		""
		5 3 "Player_rigRN" "Player_rig:SK_SaucerRN.message" "Player_rigRN.placeHolderList[20]" 
		""
		5 3 "Player_rigRN" "Player_rig:sharedReferenceNode1.message" "Player_rigRN.placeHolderList[21]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "CTRL_ship_translateY";
	rename -uid "94CFC87F-4FD7-DF6B-DE34-C2B090177460";
	setAttr ".tan" 1;
	setAttr -s 19 -l on ".ktv[0:18]"  0 0 2 6.3538664526900916 5 9.438074361902169
		 11 0 13 4.7931565965168286 17 7.7324409022747389 22 0 24 7.6916177579814597 27 10.775825667193537
		 33 0 36 4.4215590117136694 39 7.3608433174715797 44 0 47 6.3538664526900916 50 9.438074361902169
		 56 0 58 4.8674761134774585 62 7.8067604192353688 67 0;
	setAttr -l on ".ktv";
	setAttr -s 19 ".kit[0:18]"  18 1 1 18 1 1 18 1 
		1 18 1 1 1 1 1 18 1 1 18;
	setAttr -s 19 ".kot[0:18]"  18 1 1 18 1 1 18 1 
		1 18 1 1 18 1 1 18 1 1 18;
	setAttr -s 19 ".ktl[2:18]" no yes yes no no yes no yes yes no no yes 
		no yes yes no no;
	setAttr -s 19 ".kix[1:18]"  0.026305321010480075 0.17892647918710408 
		0.19999999999999998 0.041704040954476621 0.24381627689838148 0.16666666666666663 
		0.026305321010480075 0.17892647918710408 0.20000000000000007 0.041704040954476621 
		0.24381627689838148 0.1726666586592058 0.026305321010480075 0.17892647918710408 0.19999999999999996 
		0.041704040954476621 0.24381627689838148 0.16666666666666652;
	setAttr -s 19 ".kiy[1:18]"  2.6190491203581088 0.0017665429969301676 
		0 3.1979433048946113 -0.28450518324836671 0 2.6190491203581088 0.0017665429969301676 
		0 3.1979433048946113 -0.28450518324836671 0 2.6190491203581088 0.0017665429969301676 
		0 3.1979433048946113 -0.28450518324836671 0;
	setAttr -s 19 ".kox[1:18]"  0.059976163816714591 0.23083830572742156 
		0.066666666666666707 0.081606096300303868 0.33033599656373885 0.066666666666666763 
		0.059976163816714591 0.23083830572742156 0.099999999999999867 0.081606096300303868 
		0.33033599656373885 0.10000000000000009 0.059976163816714591 0.23083830572742156 
		0.066666666666666652 0.081606096300303868 0.33033599656373885 0.16666666666666652;
	setAttr -s 19 ".koy[1:18]"  5.9714354434792041 0.0017664994344878222 
		0 6.2577071697244993 0.0017665375755785942 0 5.9714354434792041 0.0017664994344878222 
		0 6.2577071697244993 0.0017665375755785942 0 5.9714354434792041 0.0017664994344878222 
		0 6.2577071697244993 0.0017665375755785942 0;
createNode animCurveTU -n "CTRL_ship_visibility";
	rename -uid "A22894FF-4D24-FD0C-FBF6-7AAFFF7B6D66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 -l on ".ktv[0:5]"  0 1 5 1 14 1 30 1 47 1 60 1;
	setAttr -l on ".ktv";
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D6355463-4AB9-5126-CC54-13A93679D674";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2941\n            -height 1498\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n"
		+ "                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2941\\n    -height 1498\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2941\\n    -height 1498\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C2B0A4F9-43C0-B0E9-A4B1-44A560736B01";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 67 -ast 0 -aet 313 ";
	setAttr ".st" 6;
createNode animLayer -n "BaseAnimation";
	rename -uid "2A8AC922-402A-275A-3F72-9CAA5BA2D8A4";
	setAttr -s 4 ".cdly";
	setAttr -s 4 ".chsl";
	setAttr ".lo" yes;
	setAttr ".ovrd" yes;
createNode animLayer -n "Left";
	rename -uid "72EADD64-4771-19EA-0C78-AB8EE86F9C56";
	setAttr -s 152 ".dsm";
	setAttr -s 122 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Left";
	rename -uid "7EBEF113-4A31-69FF-63CD-1A8A34B9667F";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Left";
	rename -uid "68F1C146-482F-37B2-0BD3-7C957F226160";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Left";
	rename -uid "1D19C84F-4AC7-F9B2-0C4E-78BAFAA470BA";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Left";
	rename -uid "3AE7DC6F-4791-9D4B-58A1-86BF339E9216";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Left";
	rename -uid "95DCD303-4B60-60F7-CED5-9596999CC832";
	setAttr ".ia" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
	setAttr ".o" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Left";
	rename -uid "8175E8E8-4EB4-F1AE-D3F9-5C87E819C369";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Left";
	rename -uid "BC7FAD44-4ADC-84B8-DDAD-61B007F5C585";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Left";
	rename -uid "96BF210C-442B-94F0-24BA-308472AAF038";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animLayer -n "Right";
	rename -uid "3427718C-413E-E6BE-F215-52BD471CC346";
	setAttr -s 152 ".dsm";
	setAttr -s 122 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Right";
	rename -uid "0B061BB3-4AAD-37EA-8DD6-A98D8784FB69";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Right";
	rename -uid "B9B3A048-4EC1-70A3-8B52-1F95EABDE2DB";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Right";
	rename -uid "F1DE08F2-4F02-10B3-937D-3BB2C526C28C";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Right";
	rename -uid "00D3DE28-47DB-0811-309E-43A457F1D8DA";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Right";
	rename -uid "C775C5C2-4299-7A6E-E03A-019F0214B651";
	setAttr ".o" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Right";
	rename -uid "94B69752-434A-8A26-11B5-208D04996697";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Right";
	rename -uid "D8170611-40EF-4FF6-CAED-359B21F4EF72";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Right";
	rename -uid "0E668B3D-4932-83A1-EC81-0494BFA66B23";
	setAttr ".o" 1;
createNode animLayer -n "Forwards";
	rename -uid "A9648CF5-4F6B-0B9C-F9FE-3CA493B04687";
	setAttr -s 152 ".dsm";
	setAttr -s 122 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Forwards";
	rename -uid "5230C1BF-42E4-0AC4-9ECD-5090C7D6F96C";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Forwards";
	rename -uid "F6FE071D-4E67-3A7D-D517-A39774400A58";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Forwards";
	rename -uid "53C8BE61-4A5A-B526-24E6-4DB87D667491";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Forwards";
	rename -uid "5253E43C-4A6C-D914-45F1-3FA8C2D3DE58";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Forwards";
	rename -uid "E9B65C43-4329-29FE-165B-D5AE008C0451";
	setAttr ".o" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Forwards";
	rename -uid "905AAD52-4651-37F5-B170-F385275426D4";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Forwards";
	rename -uid "3D345451-45A5-3F60-3C08-3E9649E96540";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Forwards";
	rename -uid "3DAE47BA-4CE3-7AAE-28B9-448FDF00DB03";
	setAttr ".o" 1;
createNode animLayer -n "Backwards";
	rename -uid "4AAB9599-48F0-61CF-C3AC-D9AE49B7564C";
	setAttr -s 152 ".dsm";
	setAttr -s 122 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Backwards";
	rename -uid "E02DBE84-48E4-287C-8541-7C8057A76E40";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Backwards";
	rename -uid "42003366-40E7-F33A-1F84-77A5F81B862C";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Backwards";
	rename -uid "B663B45D-4CD9-01A4-4315-3381283A9812";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Backwards";
	rename -uid "6C06FA5B-42A0-6923-09F9-68B0EF318A6C";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Backwards";
	rename -uid "3F8F559B-4739-BEA3-2BC4-3B9A9FE26C11";
	setAttr ".o" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Backwards";
	rename -uid "474DD780-47F7-B897-B969-C78E94E0043D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Backwards";
	rename -uid "0FE09AA9-473F-4334-72CA-A4AB834F73C7";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Backwards";
	rename -uid "3C9526C3-463A-887E-E48F-038DB3D1CE99";
	setAttr ".o" 1;
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBX";
	rename -uid "F09B2C38-41BC-9B19-79C6-9389481F05FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0.058703861745769477;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBY";
	rename -uid "CB74C391-4078-DCEA-71E3-11BCCB44B31E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -0.21945541348255607;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBZ";
	rename -uid "D679D60F-4A3E-D85D-6C01-F3A317FC4DA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -29.999999999999996;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Left_inputB";
	rename -uid "D4D93843-476C-BF45-467A-4FAD2737C45F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_Left_inputB";
	rename -uid "F24A4928-4DCB-DF64-1A93-38834C792463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Left_inputB";
	rename -uid "EE835257-4A9C-BD6C-3B0D-069754AAEC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Left_inputB";
	rename -uid "AE36DBD3-4C5C-76CD-B76F-1DAD2CA8010D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Left_inputB";
	rename -uid "B9DF8C6E-45A8-2C78-8A2C-B4ADF83C5D19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Left_inputB";
	rename -uid "F699DCAF-4303-DFFD-A2CD-F7A35C98C705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Left_inputB";
	rename -uid "922FB6AF-439A-4C65-D118-B299F7CDA748";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBX";
	rename -uid "0444E9F1-4F19-04F3-9CF1-BC9AB8B98B15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBY";
	rename -uid "5DC1330F-4D08-20E6-DC34-199FDC855855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBZ";
	rename -uid "CA6110C9-43D0-9943-0AD3-C6A8AC3358AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 29.999999999999996;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Right_inputB";
	rename -uid "3CBFAC70-4324-4DF7-50E7-F882CC9A21DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_Right_inputB";
	rename -uid "46BE3A85-40AB-2F67-D4C0-FF8EC6C576AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Right_inputB";
	rename -uid "D737D11E-40E7-4B5B-8E19-5B901A966624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Right_inputB";
	rename -uid "E7312E1A-42E2-CD55-4092-44BA5A368F9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Right_inputB";
	rename -uid "CD70C1ED-4DA3-DBA8-AD00-EEB1C964DF48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Right_inputB";
	rename -uid "6FBF739E-43E4-6569-B258-D2946F7F087B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Right_inputB";
	rename -uid "7464E611-4ADB-A887-4254-FDAEA6FA2443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBY";
	rename -uid "512D6F3E-428A-9DAA-A2C3-0FB84ECD18F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBZ";
	rename -uid "9FAF7F24-471A-881A-71D1-5DA63E1F4D89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Forwards_inputB";
	rename -uid "2117A234-4024-542D-32B0-4FA35210B609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_Forwards_inputB";
	rename -uid "0D36DAB8-4A34-9A98-A63C-F1AA77F2325B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Forwards_inputB";
	rename -uid "A29A1E0D-4369-5B07-1AE8-0BA207FBDB6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Forwards_inputB";
	rename -uid "5F7B964C-4F38-7D03-EAF6-54BBA83E63F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Forwards_inputB";
	rename -uid "38755E62-4B60-EAD1-D75E-B79826DEB609";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Forwards_inputB";
	rename -uid "5156EC7B-4E4F-4B67-22EC-7F83E092F94E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Forwards_inputB";
	rename -uid "B10F84E9-4E17-9425-FD1C-1A872E41A796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBX";
	rename -uid "C8E98A3A-4A5C-0839-F17C-6D970E9BA764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 20;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBX";
	rename -uid "80082F10-4B41-3706-177B-6D82A1286F27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -14.999999999999998;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBY";
	rename -uid "1328E01C-4673-D523-60B5-D68F7EBAF436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBZ";
	rename -uid "177D66C0-4FE2-A87C-9A7B-E2BE1A8BEAD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Backwards_inputB";
	rename -uid "F0CB36EE-4CB9-350F-6CE9-28B6339FFC90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_ship_translateX_Backwards_inputB";
	rename -uid "76752156-4C0F-75EC-D412-5A94AE4587BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Backwards_inputB";
	rename -uid "FAC69D5E-4C51-6DAE-3574-F489AAD0E6C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Backwards_inputB";
	rename -uid "4E608602-4259-180B-3360-5E9F19E3D00D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Backwards_inputB";
	rename -uid "F0B5A4BD-4101-57EC-A3BA-3ABB83380FBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Backwards_inputB";
	rename -uid "175945F6-4477-B8A8-C82B-1D99C80BCFCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Backwards_inputB";
	rename -uid "C1B77879-4356-0B17-E4C8-EE983766C269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_cog_visibility_Left";
	rename -uid "DE171DB0-4330-6EDF-500C-F0958BD0D51D";
	setAttr ".ia" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateX_Left";
	rename -uid "B6021002-49B6-A4D6-85E9-3EA9E4B81F50";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateY_Left";
	rename -uid "57845E27-4183-3730-9A66-8EA46AE47FE6";
	setAttr ".ia" 17.120646586352922;
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateZ_Left";
	rename -uid "DBBCCAA6-4424-80AC-8D82-A5AB1EC0AE6C";
	setAttr ".ia" 42.732596728486634;
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_cog_rotate_Left";
	rename -uid "B50CF66B-4AE8-554C-4BEA-6381904710DE";
	setAttr ".ia" -type "double3" -31.182622079585563 0 0 ;
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleX_Left";
	rename -uid "6DB356AD-492E-7A4B-A2BA-BE8004F3C059";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleY_Left";
	rename -uid "04B6DF65-47BB-61A5-304B-399778B0BFE7";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleZ_Left";
	rename -uid "56E4E526-4093-CF2F-2E67-17819CB78DD8";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "Player_rig:CTRL_cog_IKFK_Switch_Left";
	rename -uid "E81FEF7A-42C5-F802-D977-56BB9889757D";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_pelvis_IK_visibility_Left";
	rename -uid "5F360DC6-473A-3935-38A6-CA96BBF142BF";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateX_Left";
	rename -uid "2A0BECE6-483C-8CF8-3DD3-1AAC7EF4DE22";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateY_Left";
	rename -uid "B5676A24-4D91-CEA5-7542-298E4D9869B3";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateZ_Left";
	rename -uid "0CAA5CCC-4E42-F05D-BF73-C08D63F5FBE8";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_pelvis_IK_rotate_Left";
	rename -uid "5C52EF67-4BA2-F263-8376-9D82E620BAA5";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleX_Left";
	rename -uid "5ECCFEE2-4226-32C4-B7E6-B68CBEDBF3C1";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleY_Left";
	rename -uid "5AA45F9E-43A3-CC68-971C-BCBE0DB7D5B2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleZ_Left";
	rename -uid "79ACA599-4587-72C6-F773-C5BA982BEA59";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_l_IK_visibility_Left";
	rename -uid "D3A244E0-4B83-8AF6-A347-FF90E85538A9";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateX_Left";
	rename -uid "22760DA4-4707-C2A1-F901-8A93CB6819CA";
	setAttr ".ia" 3.9234979515293724;
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateY_Left";
	rename -uid "C4E868B1-4038-0D57-B1AA-F4932C4073A5";
	setAttr ".ia" 19.480556366999902;
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateZ_Left";
	rename -uid "FB9D8317-415F-6157-4D40-DFA9783E747B";
	setAttr ".ia" 40.818313214920593;
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_l_IK_rotate_Left";
	rename -uid "0BC5F34C-4BA5-C9A9-61B9-788364E6EFE8";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleX_Left";
	rename -uid "708FEE44-4372-AC01-A297-CA8B850CE68B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleY_Left";
	rename -uid "65F7FB5B-4CA8-8BD6-2E4D-8AB51EA39439";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleZ_Left";
	rename -uid "D37A3305-4DF5-4F52-49DF-C5A1E24AD640";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_r_IK_visibility_Left";
	rename -uid "5F477298-468E-2110-3501-9A97795943D1";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateX_Left";
	rename -uid "6EFDB761-4CBD-EB6D-4732-C094EFFD83A8";
	setAttr ".ia" -4.7651503572206479;
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateY_Left";
	rename -uid "7708265E-47BC-D337-11DE-8E893F2126DD";
	setAttr ".ia" 19.601910670797466;
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateZ_Left";
	rename -uid "B9EA5BEC-4F20-E377-96CF-D7B7214C82B0";
	setAttr ".ia" 40.791937383280199;
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_r_IK_rotate_Left";
	rename -uid "88C90CF8-48D0-7D85-2B61-20A851D8EDD6";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleX_Left";
	rename -uid "AC042569-4011-142B-544C-8AB3B4BA5476";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleY_Left";
	rename -uid "BF4D7614-496A-812B-8406-B897177F5341";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleZ_Left";
	rename -uid "F11C4817-46EC-A5D9-9C61-42AAC45EA55B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_spine_IK_visibility_Left";
	rename -uid "09FBA484-418B-1142-D617-27B9E6F2E4D6";
	setAttr ".ia" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateX_Left";
	rename -uid "375058D6-49BC-4AE8-FBA8-97AD8612DA41";
	setAttr ".ia" -1.4823076576950256e-21;
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateY_Left";
	rename -uid "7A3BF2AC-4AE0-CD83-8D0A-7686EC0D22C1";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateZ_Left";
	rename -uid "5CD56748-4807-757F-06BC-DD8CBD10B558";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_spine_IK_rotate_Left";
	rename -uid "7C24238D-4D99-A858-FA85-8E871AF17EF6";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleX_Left";
	rename -uid "F5F341DF-457B-4AC6-0795-FE928F25D029";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleY_Left";
	rename -uid "4D0CDC67-4859-3FCA-4C0F-B7A8848BBD69";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleZ_Left";
	rename -uid "9B8F185F-413E-482C-5C17-0CB7E542DBA5";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_chest_IK_visibility_Left";
	rename -uid "6C88B12E-40A2-2012-1C9E-FCBB1FD1542E";
	setAttr ".ia" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateX_Left";
	rename -uid "227CD695-43E4-E5B6-09F8-5A92028A36E7";
	setAttr ".ia" -4.4408935808082839e-15;
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateY_Left";
	rename -uid "5912EB26-4954-B4CA-5052-4A9BA05660C8";
	setAttr ".ia" -4.9737991503207013e-14;
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateZ_Left";
	rename -uid "73C941C9-40B9-8036-8DF5-3193A942BD80";
	setAttr ".ia" -4.2632564145606011e-14;
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_chest_IK_rotate_Left";
	rename -uid "C470C1EE-4FC3-BA60-F980-628659B71E27";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleX_Left";
	rename -uid "9C255DD8-4E35-2B08-36BE-CA8A495A75FA";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleY_Left";
	rename -uid "45522FC3-4202-FEA6-BCEA-2B8CE4BF5E3C";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleZ_Left";
	rename -uid "A8B50EB9-45ED-7CD3-FCCE-7D8F72E8EA10";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_ik_visibility_Left";
	rename -uid "7B554E00-43C7-AE2A-74D3-5B8D7EA72F87";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateX_Left";
	rename -uid "775D8B36-44D5-6999-BBC4-D9888B2AD21E";
	setAttr ".ia" -15.603718582025152;
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateY_Left";
	rename -uid "910C7C85-43BA-2745-66E6-A4AC63681D0E";
	setAttr ".ia" 16.940860047964492;
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateZ_Left";
	rename -uid "CF749FE5-44F7-5B89-3341-DFAB8132632E";
	setAttr ".ia" 46.796849321356355;
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_ik_rotate_Left";
	rename -uid "24514E4A-40E7-E235-9D34-4DB12EF0306E";
	setAttr ".ia" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleX_Left";
	rename -uid "14F8E240-4B47-E397-3E81-91AC2DFAD583";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleY_Left";
	rename -uid "9387AAC3-45AE-E7E1-E619-45B3A50F99D5";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleZ_Left";
	rename -uid "F367B469-46B6-3CF7-091C-CAB002A41101";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_l_visibility_Left";
	rename -uid "5989087E-482E-A3C7-C188-7B96A3292612";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateX_Left";
	rename -uid "9698BC7B-4894-DA93-8C23-35AA42620984";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateY_Left";
	rename -uid "86CC0E93-438C-B49C-EDCB-8EAFCFAE7957";
	setAttr ".ia" 0.25681711619216685;
	setAttr ".o" 0.25681711619216685;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateZ_Left";
	rename -uid "F3BBD92A-4E06-F569-C16D-D1A37EADA7FC";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_l_rotate_Left";
	rename -uid "CA74F4A0-4F91-DC90-D615-EBB5B0C4DF9F";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleX_Left";
	rename -uid "0A6321ED-48FF-1144-3A41-8A81A1D6B070";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleY_Left";
	rename -uid "07F13B36-4498-E2F3-627C-3A931A54D031";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleZ_Left";
	rename -uid "84351006-4F60-6F5F-16DC-ABA03CA7AB63";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_r_visibility_Left";
	rename -uid "E68C710E-4F59-BECD-EB68-47AD3BFA6975";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateX_Left";
	rename -uid "3D96F5D1-4005-BE5D-30B6-80AAFA0D614D";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateY_Left";
	rename -uid "C5F2109A-4037-7DF7-D430-8CA8FA294D29";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateZ_Left";
	rename -uid "E82449A0-4745-A532-F5B6-1A80D81FDE4D";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_r_rotate_Left";
	rename -uid "81DA65F6-4A77-0BA4-80E1-358523F1B3AD";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleX_Left";
	rename -uid "9E2EA9BA-48E7-69D3-682D-C1A007F5ED2A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleY_Left";
	rename -uid "55A60BD2-4E56-A6C5-A72C-12B6F7BF9492";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleZ_Left";
	rename -uid "2F69C3D0-4484-DF57-B250-3DAEEFE2A82A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_ik_visibility_Left";
	rename -uid "DFBE700F-4E6B-ECEE-DBF8-8AA7FD3D3C78";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateX_Left";
	rename -uid "6DD5F5A6-4784-8D6E-91CB-6584EA865B3C";
	setAttr ".ia" 12.016799782099241;
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateY_Left";
	rename -uid "2EC4559E-4DC1-DA71-2B4A-5D81E4931C2C";
	setAttr ".ia" 16.84285013492012;
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateZ_Left";
	rename -uid "817FAA16-4250-0932-F8F0-86B937E6EB5A";
	setAttr ".ia" 49.012460383164104;
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_ik_rotate_Left";
	rename -uid "E3B78303-469E-8704-205B-B38C25C39459";
	setAttr ".ia" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleX_Left";
	rename -uid "60DFC136-4947-4159-4B1D-E5B4A3E5613B";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleY_Left";
	rename -uid "0F99621A-4375-3874-4298-029A484C6104";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleZ_Left";
	rename -uid "67BA0B37-4F11-F1AC-6354-C796DA9243C4";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_head_visibility_Left";
	rename -uid "D018F258-406E-3CBD-F0F6-CB9D07733D48";
	setAttr ".ia" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateX_Left";
	rename -uid "77D6D72D-4C5D-D744-8FDE-43814E6236A9";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateY_Left";
	rename -uid "989D66DE-47A1-D0BD-F78B-2A841E2B72F3";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateZ_Left";
	rename -uid "2DA64BF6-4DCC-69DB-50A1-A1B22BA6C1DB";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_head_rotate_Left";
	rename -uid "891F0117-48C2-5A2B-6EC6-AE85F07F8A89";
	setAttr ".ia" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleX_Left";
	rename -uid "3FCA1236-445D-A624-FD33-A4A7C9CC22F8";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleY_Left";
	rename -uid "169F21EF-4780-490E-56F9-FEBD93BBDAC9";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleZ_Left";
	rename -uid "5C6431D8-4339-A96E-56D8-DB98638014D3";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeEnum -n "Player_rig:CTRL_head_Orient_Left";
	rename -uid "35F1B176-40CF-D7AD-1D07-79AFA291876E";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_cog_visibility_Right";
	rename -uid "D9A9CAC7-42CC-E37F-E28B-2FB176A36FBE";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateX_Right";
	rename -uid "88D7C77E-4143-9455-88DA-D88C2B9DE5A5";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateY_Right";
	rename -uid "70CE1736-47C9-132C-60CC-058B708F0D50";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateZ_Right";
	rename -uid "A827706A-4BC8-C433-9EA7-D78FCE621FD0";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_cog_rotate_Right";
	rename -uid "A6038D39-4AE4-41CC-607E-3783B7539710";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleX_Right";
	rename -uid "4FF0C253-425E-CBE3-5DEF-94B46CCA10DD";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleY_Right";
	rename -uid "4BD6FAA5-40C8-252F-0678-1EAE9D2052DF";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleZ_Right";
	rename -uid "CC8DF0D9-4B3A-A39D-44BD-879F68042C56";
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "Player_rig:CTRL_cog_IKFK_Switch_Right";
	rename -uid "A32EFF5E-4FD7-6597-1F12-65AC3A8FD8B8";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_pelvis_IK_visibility_Right";
	rename -uid "3894E11D-4C01-CED1-FF00-7EBFFB64E38C";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateX_Right";
	rename -uid "1B59C2D3-4A62-7654-F9BE-ADA6F21398A7";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateY_Right";
	rename -uid "0159DDC9-4C48-6AD0-410C-19A0DE5EC8F3";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateZ_Right";
	rename -uid "4410B41D-4977-F0B0-B513-1D8DA2384E11";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_pelvis_IK_rotate_Right";
	rename -uid "42243C50-4B47-E35C-4D0E-A5AA1A88796C";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleX_Right";
	rename -uid "EA3D8EF0-4C4D-7DA2-8383-BCA18E2C2F11";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleY_Right";
	rename -uid "A5667864-4B16-CF7F-CC5F-D5AC7939EA71";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleZ_Right";
	rename -uid "91881354-4488-C20E-DCEA-5B9C5EB8FBF2";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_l_IK_visibility_Right";
	rename -uid "A50F267E-4427-6783-1D5F-DC8688D89401";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateX_Right";
	rename -uid "7F8906C3-45AB-F8BE-A247-BF8580DB5197";
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateY_Right";
	rename -uid "FF67D34C-4FE5-6478-DD7D-059825DAF49A";
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateZ_Right";
	rename -uid "A94BD6C5-41BB-6635-3208-88BDD7AB69C6";
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_l_IK_rotate_Right";
	rename -uid "89468ADE-480A-AB47-FA80-69B09C403BD9";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleX_Right";
	rename -uid "E90FAA1B-4F3E-9D9D-8714-FE862F412DEE";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleY_Right";
	rename -uid "3248A0DE-4D42-FFC6-4B3B-53BF6282F852";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleZ_Right";
	rename -uid "ACF7E156-400E-2B7D-8130-2E987ADAB67A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_r_IK_visibility_Right";
	rename -uid "AE347797-4E2A-8502-785C-69921DA60DD4";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateX_Right";
	rename -uid "FC9A0938-444D-A00A-3418-6FB9A7A0C28C";
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateY_Right";
	rename -uid "16AB3603-4910-7FF0-0EA9-00A9EB319267";
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateZ_Right";
	rename -uid "073F4DA3-446A-8D17-45D5-269DE4D5FB90";
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_r_IK_rotate_Right";
	rename -uid "3CC2DF5A-41A3-D3CB-29CC-829E112FBBF4";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleX_Right";
	rename -uid "10958B0F-454B-F96F-A50D-12AB5810EDCB";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleY_Right";
	rename -uid "4C368FEB-4307-A946-4975-B48234A12AD3";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleZ_Right";
	rename -uid "FB8C6DEA-4BE4-C984-9AE7-40ADCF1F7893";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_spine_IK_visibility_Right";
	rename -uid "D9006A7B-4CE1-6390-D1DE-6CA598CBFB09";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateX_Right";
	rename -uid "4D9FA28F-40CD-A7D6-0BE9-D09E2BECEF76";
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateY_Right";
	rename -uid "C63E5194-4AC5-10B2-8FD7-799CB01076E6";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateZ_Right";
	rename -uid "F3E85FD5-42CD-573A-A973-62B3C08E0B98";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_spine_IK_rotate_Right";
	rename -uid "1D9D406C-4A57-6E1C-D0AC-72B4D0744A81";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleX_Right";
	rename -uid "25ECEE8C-44CA-A199-9122-AA97ED113151";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleY_Right";
	rename -uid "EEB5891E-449B-C90E-EC00-DDB458778243";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleZ_Right";
	rename -uid "4D6F8248-426A-A381-6105-BE8A8FCD7C3D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_chest_IK_visibility_Right";
	rename -uid "0F9863B8-4EEE-7A07-7421-A9875E89C970";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateX_Right";
	rename -uid "EC55A812-4CF7-9C0F-BD9C-378EF6AD1362";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateY_Right";
	rename -uid "89F36BB8-46C2-3940-C409-4DB414D992EF";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateZ_Right";
	rename -uid "D490E174-4E57-D7B0-1DBD-2B8AB7E29506";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_chest_IK_rotate_Right";
	rename -uid "0309C262-46DB-496C-FBE4-5A96AF2E831F";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleX_Right";
	rename -uid "61B15155-4AE7-BF35-8557-2984CABA7DB4";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleY_Right";
	rename -uid "390735B4-4628-C72C-8D67-2D9C9991BC48";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleZ_Right";
	rename -uid "057115C1-44E2-CD24-1635-DAA3971D1CB9";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_ik_visibility_Right";
	rename -uid "5A218258-4BCA-2641-D0EA-E09402B26109";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateX_Right";
	rename -uid "8EB33F16-430D-2163-E796-8A8C5C76679D";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateY_Right";
	rename -uid "D045F351-4452-4F37-BF38-DEA20F06737C";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateZ_Right";
	rename -uid "24FA5897-4760-55E9-733B-96964A319E66";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_ik_rotate_Right";
	rename -uid "24A3F617-494A-C1CC-A702-BE80EBBECEAA";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleX_Right";
	rename -uid "358985F7-4992-D5F4-DFC3-3AA7A711101D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleY_Right";
	rename -uid "08067632-4903-6C93-FE83-AE9B5822A9A6";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleZ_Right";
	rename -uid "747E766A-46DD-14AF-32AC-4E882CAD9A24";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_l_visibility_Right";
	rename -uid "6E0D42F1-4313-4E75-9471-A3A1B21FCF57";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateX_Right";
	rename -uid "7452072A-4857-E7BD-E3BE-5E9614296557";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateY_Right";
	rename -uid "4AF3058A-4DFE-36B0-2A40-8EB2BE17E044";
	setAttr ".o" 0.25681711619216685;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateZ_Right";
	rename -uid "BECE7A51-4D2C-3994-3A25-CB9002E36231";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_l_rotate_Right";
	rename -uid "05307E73-4AF4-265B-682F-628E04F71771";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleX_Right";
	rename -uid "041F9C19-4F1B-0606-B3D4-5A80D5232923";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleY_Right";
	rename -uid "50BA13DC-4A92-43A6-A3E3-37AF8E089939";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleZ_Right";
	rename -uid "A17F6FAB-4BD1-566F-D556-2284FA45A53A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_r_visibility_Right";
	rename -uid "E75F068C-4D5B-3F76-93B4-CAB15D1BBDDC";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateX_Right";
	rename -uid "6B504A35-4069-CD94-A8A5-8A8B02C46BE8";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateY_Right";
	rename -uid "B9DA1A88-4E7B-6C02-0554-078A0DF94366";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateZ_Right";
	rename -uid "CA81F57A-46C5-9C19-C104-A2B55BE4ABAC";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_r_rotate_Right";
	rename -uid "D8184ED4-44F2-8BB7-398F-D9B280447FE2";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleX_Right";
	rename -uid "EE7A5C6A-4403-FA03-915E-A68E7941EB89";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleY_Right";
	rename -uid "CE4C09CC-4E0A-7493-BE50-59BCC91D6519";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleZ_Right";
	rename -uid "D4010486-4607-A727-E6EB-CE9474132A4C";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_ik_visibility_Right";
	rename -uid "90536EA8-4784-D723-2F08-25A6FB404FA6";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateX_Right";
	rename -uid "C9ECD670-4FCB-BADD-4281-EE9176F7F6D3";
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateY_Right";
	rename -uid "44339224-48C5-D1BC-BF93-42BF7F33AA1C";
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateZ_Right";
	rename -uid "6425DDF7-4826-2BD0-5DAE-5C83787121B1";
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_ik_rotate_Right";
	rename -uid "B10F1319-47D4-2ECE-8E56-26895A01AC43";
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleX_Right";
	rename -uid "3C17AFEA-400E-BDCD-008D-179F0199A89A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleY_Right";
	rename -uid "ACA5C619-4957-29EC-51AC-1598E83951D0";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleZ_Right";
	rename -uid "D48E793D-48EA-B6DC-5F33-7AB470B2E109";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_head_visibility_Right";
	rename -uid "BB996B57-47C7-720A-1C8C-CA9EA828CEF3";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateX_Right";
	rename -uid "3C1062D1-4512-D1B7-39BC-48969BAD9FF3";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateY_Right";
	rename -uid "F13B64D9-44B1-1DD7-D750-6998FAA05E2A";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateZ_Right";
	rename -uid "EF60390C-4153-E446-F366-54B5FAACF6C2";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_head_rotate_Right";
	rename -uid "0F79EA34-40BF-1772-8B45-099B02329B58";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleX_Right";
	rename -uid "98923DA3-4841-00D3-9CDD-41A36E47923F";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleY_Right";
	rename -uid "348F1EE1-43B2-04D8-B186-3588987CBFD2";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleZ_Right";
	rename -uid "ED844CCD-4276-42E1-7EE7-72A304051E1B";
	setAttr ".o" 1;
createNode animBlendNodeEnum -n "Player_rig:CTRL_head_Orient_Right";
	rename -uid "C7724C5B-478E-04A9-6BA6-E186A6213F46";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_cog_visibility_Forwards";
	rename -uid "4ED11CF5-4640-CA45-4414-428C38C02941";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateX_Forwards";
	rename -uid "7CFE9713-4D90-D83E-897C-F6BDE191AB90";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateY_Forwards";
	rename -uid "1CA51A62-4A61-4EA2-619B-4BB211A897BD";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateZ_Forwards";
	rename -uid "C4371CAA-48D0-8A58-57A3-F88B0F0D9483";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_cog_rotate_Forwards";
	rename -uid "120EF1B8-4C87-D58D-DBFC-E08FDC5A8A64";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleX_Forwards";
	rename -uid "0F97C43A-42D8-EC90-4329-7BA4D9B44148";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleY_Forwards";
	rename -uid "41EAEFEE-49CE-35DA-173C-1591BF9B5F9C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleZ_Forwards";
	rename -uid "28036F26-410E-0FF5-E012-4EAB845DD830";
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "Player_rig:CTRL_cog_IKFK_Switch_Forwards";
	rename -uid "70E191BD-4288-54B3-1ED7-11B95B89468B";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_pelvis_IK_visibility_Forwards";
	rename -uid "AEEF9DD3-4C85-9E2C-7935-619C6821B87D";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateX_Forwards";
	rename -uid "F443E358-45D3-9099-B681-32869408218E";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateY_Forwards";
	rename -uid "73540FA9-4B5A-4F07-971C-4286439485DB";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateZ_Forwards";
	rename -uid "AF4532C9-44A4-80FF-F8E7-DE9B66602ACB";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_pelvis_IK_rotate_Forwards";
	rename -uid "54D10BBF-4D60-6E63-37C0-C59B22E9EFEE";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleX_Forwards";
	rename -uid "B1D1C24A-4994-7D85-D4AC-B0A290FCFDE5";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleY_Forwards";
	rename -uid "2DF6810E-4869-9414-90E8-C9A08203ABBB";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards";
	rename -uid "9244888A-411D-911B-D03E-C3816F5AE48D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_l_IK_visibility_Forwards";
	rename -uid "93DE97B7-4D5D-3E91-9A77-16BD5ADDA77E";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateX_Forwards";
	rename -uid "D54ACD31-4D36-43E9-AECC-4EA9AD74A2E6";
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateY_Forwards";
	rename -uid "E4B4B0FD-4366-368C-24E1-CB814380CFB7";
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateZ_Forwards";
	rename -uid "6DD01C87-4985-D3DC-DACB-05BFE356E826";
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_l_IK_rotate_Forwards";
	rename -uid "80CC9FCB-4606-357F-88C8-89B0BD70A12F";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleX_Forwards";
	rename -uid "5A1C634C-4CC3-2C3B-13F7-3CA5A3FE0DD8";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleY_Forwards";
	rename -uid "D95245DF-4D11-A77F-D376-5788CBF16248";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards";
	rename -uid "AF5AC24B-4058-646D-4598-20B5FEA01B00";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_r_IK_visibility_Forwards";
	rename -uid "153E509A-4DD4-4D8F-4AAB-9EBB7ABFEE09";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateX_Forwards";
	rename -uid "16762C88-4ADA-B849-1A18-A5B0B4A4E675";
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateY_Forwards";
	rename -uid "880B4CFA-4623-D2C7-4004-ECA70AF77351";
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateZ_Forwards";
	rename -uid "30C8D671-40A7-6E84-7A7A-0B898EAEF9B6";
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_r_IK_rotate_Forwards";
	rename -uid "5EF2BB4D-47DD-08A4-482B-27ADDAC8A29C";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleX_Forwards";
	rename -uid "3CBFD3E0-4B29-99C6-F288-8D899A2937C1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleY_Forwards";
	rename -uid "CE37F614-4983-2BFE-13A4-C7B1AC9FDF1A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards";
	rename -uid "0DECA0E4-4240-AFC8-BB99-93AC002902A1";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_spine_IK_visibility_Forwards";
	rename -uid "3599433B-4CFA-6386-8942-D29BCB063AE6";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateX_Forwards";
	rename -uid "A8A228C6-458B-698B-CDA9-9FBE6EE3A987";
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateY_Forwards";
	rename -uid "9A23818C-42B6-155C-C208-79A185B04295";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateZ_Forwards";
	rename -uid "1A066861-4A58-00D7-53A4-BEB4ADB40C62";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_spine_IK_rotate_Forwards";
	rename -uid "C113649D-4804-22CE-EB8A-E79A41257A3A";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleX_Forwards";
	rename -uid "E7B8A82F-4719-7322-68E6-9F8DE4352C83";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleY_Forwards";
	rename -uid "1D5CD423-4520-97F7-573F-ED8D8068A928";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleZ_Forwards";
	rename -uid "A81D5CE1-4171-D0A4-4121-C88664CFE50A";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_chest_IK_visibility_Forwards";
	rename -uid "6AC6C5FA-41F1-1607-3526-B98A98E7180A";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateX_Forwards";
	rename -uid "66635C19-47D0-EB74-20CA-E8A20F5921F5";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateY_Forwards";
	rename -uid "CDFAB051-492D-F9B3-671D-A185A1C71EDD";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateZ_Forwards";
	rename -uid "06499661-4EB0-2A72-3B2A-56A98A1AAB08";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_chest_IK_rotate_Forwards";
	rename -uid "5398D3B0-4103-7FA9-0928-63AC4CD9CB8D";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleX_Forwards";
	rename -uid "D2FC3109-4713-3345-646E-2C893C7864A0";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleY_Forwards";
	rename -uid "872C25B9-4AAB-D762-AB7D-C886B20CE38B";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleZ_Forwards";
	rename -uid "FA220F53-4F6A-E325-DC84-2C92EF5CF15C";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_ik_visibility_Forwards";
	rename -uid "46A058E6-47EA-910A-7840-088D843783EF";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateX_Forwards";
	rename -uid "95D98993-4191-DC1B-102D-DC9BB9F3DEFD";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateY_Forwards";
	rename -uid "475CD5AA-4D73-3B90-5A69-4B906EC0AB12";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateZ_Forwards";
	rename -uid "C4A3F6D4-4B33-85FD-7129-C98B93B8A4FA";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_ik_rotate_Forwards";
	rename -uid "09B098AE-446D-56D8-7864-B3877BE8033E";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleX_Forwards";
	rename -uid "E06A078A-4D32-C288-9731-83B9265129CA";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleY_Forwards";
	rename -uid "8F1E2713-4A7D-9987-0559-D7AC51D36DF2";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards";
	rename -uid "4EEA2CE8-41EC-6837-BF0C-49981BA4C1A3";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_l_visibility_Forwards";
	rename -uid "6D7615FF-4111-6E82-5AFB-A3918772EB63";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateX_Forwards";
	rename -uid "986A108A-4079-9321-3145-09B1C82CA83E";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateY_Forwards";
	rename -uid "239B45D7-495A-CCD7-F4A7-EC93B44A81FE";
	setAttr ".o" 0.25681711619216685;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateZ_Forwards";
	rename -uid "8AB03AA3-4817-0220-3677-D5ABDCCF7CB0";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_l_rotate_Forwards";
	rename -uid "7EC6D51D-436A-7144-FDF7-9FBD516DAA2B";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleX_Forwards";
	rename -uid "CD125CCE-4B5A-8F4C-3728-E3B4049B218A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleY_Forwards";
	rename -uid "5CF58724-4445-2D5A-512D-4CBC74BCD0CD";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleZ_Forwards";
	rename -uid "AEFAA3BA-46DA-4AD5-3DF4-CB998E09EF55";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_r_visibility_Forwards";
	rename -uid "ED9C23C4-4524-CFC8-8119-D2861202898E";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateX_Forwards";
	rename -uid "BF6FBAD9-40FC-257C-F912-B7A105CEF5C0";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateY_Forwards";
	rename -uid "128722C7-498B-B519-8DAE-2EBAF717D50F";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateZ_Forwards";
	rename -uid "34BCA293-4B87-49D4-FE14-A687610C6211";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_r_rotate_Forwards";
	rename -uid "C2524511-43EE-5268-AF36-B398763854A0";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleX_Forwards";
	rename -uid "68243EB6-48D8-3AEB-7B4E-E68219CC2D19";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleY_Forwards";
	rename -uid "7FF1101E-486A-99BA-4BC9-FA936449C752";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleZ_Forwards";
	rename -uid "553BAF9F-4828-4022-6F8E-BCA5140F3C4C";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_ik_visibility_Forwards";
	rename -uid "25C7A523-4BA4-AFF4-A785-D5BEB1AA473C";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateX_Forwards";
	rename -uid "FC2F9EAF-42F1-6A85-5873-A5B2DC6F25CF";
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateY_Forwards";
	rename -uid "2D6E1240-4758-5C71-A3E7-CDB1C2D68F13";
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateZ_Forwards";
	rename -uid "1D606350-4238-1A00-6495-2E8D4A779B20";
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_ik_rotate_Forwards";
	rename -uid "E99E0D2C-4D9F-822F-B87D-E18098640DB4";
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleX_Forwards";
	rename -uid "A1344854-4664-CC2C-88C2-D693F5FA5585";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleY_Forwards";
	rename -uid "F695B5B1-4151-B911-336C-E0AE6C2B68F1";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards";
	rename -uid "F0EE7FBE-43B9-3708-C838-A5B2CF98F3BB";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_head_visibility_Forwards";
	rename -uid "C8F68784-499C-5E56-AC73-E7B2D799068E";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateX_Forwards";
	rename -uid "48777CDA-4C43-1F26-E227-A6A59DEBF763";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateY_Forwards";
	rename -uid "31B7C089-43C2-18CE-B264-F3BC128D262E";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateZ_Forwards";
	rename -uid "75425169-4EA4-4ED2-3810-6F8C04578FA0";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_head_rotate_Forwards";
	rename -uid "22F1F27E-4A06-6B07-C098-418BD64B08A0";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleX_Forwards";
	rename -uid "021B243E-4196-F0ED-CE60-9BB13FEF95E7";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleY_Forwards";
	rename -uid "B87B7E66-4E6F-D1F1-8A1C-BDA2EBAE418E";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleZ_Forwards";
	rename -uid "A718CB90-484E-D61B-4F79-5FB606D65712";
	setAttr ".o" 1;
createNode animBlendNodeEnum -n "Player_rig:CTRL_head_Orient_Forwards";
	rename -uid "41003DB5-49D6-2BBF-872C-BD8AAC1037C9";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_cog_visibility_Backwards";
	rename -uid "84BAB9B2-4F1D-CFB9-BBBF-388C3ABE4A65";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateX_Backwards";
	rename -uid "D788B713-429E-646D-C508-A6BCC6597EE6";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateY_Backwards";
	rename -uid "0DD5A09C-4A70-32D7-5125-169DF9FAABC9";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateZ_Backwards";
	rename -uid "25A714E9-49C5-8992-F658-A284D51DE3B0";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_cog_rotate_Backwards";
	rename -uid "941C51AA-4A63-29D3-4BE4-C9920E474579";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleX_Backwards";
	rename -uid "291CF39D-4D1B-4E47-6CFD-C6B05A26FD22";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleY_Backwards";
	rename -uid "812E3B12-4B5B-6ACE-D94C-DB83A16E1F38";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleZ_Backwards";
	rename -uid "51E02A03-444F-9474-7D5E-06853F143340";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "Player_rig:CTRL_cog_IKFK_Switch_Backwards";
	rename -uid "083E1383-463C-22CB-5D3F-38822F1ED603";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_pelvis_IK_visibility_Backwards";
	rename -uid "BBB5CCB7-4506-7CF1-F408-4F8C8C916BF0";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateX_Backwards";
	rename -uid "41EE1485-4FF2-88C0-9487-358CC664321F";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateY_Backwards";
	rename -uid "58726F5A-4DDD-29E0-3E64-08835F19B531";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateZ_Backwards";
	rename -uid "CB1D9BC5-4F33-B91F-FB6B-5AA4F94A7432";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_pelvis_IK_rotate_Backwards";
	rename -uid "BCCBC32B-4AE9-073C-B51D-BDB7E0DC9FB3";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleX_Backwards";
	rename -uid "C6A952DA-4FAA-F166-743B-52B78BEDD62E";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleY_Backwards";
	rename -uid "317E0728-42FA-9A15-CE7C-91AC68CE28CD";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards";
	rename -uid "0FAD6822-4D3C-A046-4303-47AA1337A234";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_l_IK_visibility_Backwards";
	rename -uid "56508E6D-4E98-4863-4D27-B0B58C804562";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateX_Backwards";
	rename -uid "92174885-44A4-5D38-0655-15913B051880";
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateY_Backwards";
	rename -uid "EECDE143-4225-B0F2-07DB-66A5386C9332";
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateZ_Backwards";
	rename -uid "6E634B48-41E4-CDD1-2F0A-219A976C3C16";
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_l_IK_rotate_Backwards";
	rename -uid "70AFC2AE-4E58-004C-5A7E-53BF84A8C8E1";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleX_Backwards";
	rename -uid "21277878-437C-D13C-DA17-B0B44D222138";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleY_Backwards";
	rename -uid "7F64F49A-4ADB-D5E6-A05B-90BB5142C5DA";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards";
	rename -uid "679881B4-4F3D-AC5F-DA82-F69312BE207D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_r_IK_visibility_Backwards";
	rename -uid "2520E5DD-4F5E-E3F7-9286-9581C9F8B7A3";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateX_Backwards";
	rename -uid "173CF044-41D6-53B5-BB8E-4E86121E3F8C";
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateY_Backwards";
	rename -uid "A7202B71-409C-6F80-567C-CEA2CD677E8D";
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateZ_Backwards";
	rename -uid "797797F1-432A-1479-D02F-80AF1821966F";
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_r_IK_rotate_Backwards";
	rename -uid "070A2B5C-4317-60F8-E340-FC9A39DC014A";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleX_Backwards";
	rename -uid "AC08F375-4169-8EDE-21D2-01974CEAC5D4";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleY_Backwards";
	rename -uid "55323DCC-422E-46C8-E5DB-F9807DE685E1";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards";
	rename -uid "F2062777-4397-F2E8-4047-2CB11CC5146D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_spine_IK_visibility_Backwards";
	rename -uid "DEE6997C-41D5-5777-6964-B18332A0147A";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateX_Backwards";
	rename -uid "E077E546-4709-C52C-B04C-85BAB1405705";
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateY_Backwards";
	rename -uid "FE1FDDE2-4263-C6BE-024C-4D8DA5537CF6";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateZ_Backwards";
	rename -uid "1678C342-4EBF-A134-6427-9796C11F868C";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_spine_IK_rotate_Backwards";
	rename -uid "7DCE0AF7-45C5-18A9-B9A0-0CA2B84077E0";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleX_Backwards";
	rename -uid "92F69E30-42F8-3B7D-D453-B68F37E2593F";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleY_Backwards";
	rename -uid "102C451F-4338-844D-F656-538F586433BF";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleZ_Backwards";
	rename -uid "4510C7D2-463A-0D64-90CC-EAACE133EA68";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_chest_IK_visibility_Backwards";
	rename -uid "211A8FD6-4C24-52E9-A559-558B2121E27C";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateX_Backwards";
	rename -uid "61033658-467B-7A23-2EBE-7887082A701D";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateY_Backwards";
	rename -uid "1CA78B96-47DA-B58D-06BE-58897B01907F";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateZ_Backwards";
	rename -uid "D631ABA8-4151-C0D7-1870-B2B8F0D84F02";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_chest_IK_rotate_Backwards";
	rename -uid "903883A5-4396-7202-E9AA-639691D30FDE";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleX_Backwards";
	rename -uid "5933EDE9-4479-AB36-5606-3B9247D85121";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleY_Backwards";
	rename -uid "3BE20A71-460D-3808-8C5D-1B8CED5C3567";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleZ_Backwards";
	rename -uid "418B011F-492D-5F6B-B108-32903E284D1E";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_ik_visibility_Backwards";
	rename -uid "683218A9-4439-C4F3-8579-BBA7804641BA";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateX_Backwards";
	rename -uid "7BEEC5AC-4C35-B02E-2048-95A486EA2D04";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateY_Backwards";
	rename -uid "2BEB58C4-44D8-8A63-5B76-D5970E7D07C1";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateZ_Backwards";
	rename -uid "06D1B7AE-4693-8420-DAD4-4AA0A7E3C426";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_ik_rotate_Backwards";
	rename -uid "EC2402D3-4A95-1F39-DD7D-72A6BC30FF10";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleX_Backwards";
	rename -uid "35E16935-42A5-FD47-0299-8E890E665C5B";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleY_Backwards";
	rename -uid "61A3CB01-41DE-EBE4-392F-1ABF19294DCB";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards";
	rename -uid "EBD424D7-4CB7-3922-15B5-B18F2CD78703";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_l_visibility_Backwards";
	rename -uid "FEBB63CD-4ADE-A090-671B-978AFC2D055B";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateX_Backwards";
	rename -uid "4EDD806C-46D1-A262-202C-888C938E9B85";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateY_Backwards";
	rename -uid "E9065916-479E-5D06-AEAC-C9873880EDD1";
	setAttr ".o" 0.25681711619216685;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateZ_Backwards";
	rename -uid "3A934C3E-4011-7EE3-0928-FD886D7FDEB5";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_l_rotate_Backwards";
	rename -uid "E4456116-495C-F3D7-32F4-C6927E7BC74F";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleX_Backwards";
	rename -uid "5283C345-4F01-E829-741F-E583FB93C124";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleY_Backwards";
	rename -uid "591B41AF-421A-0DD0-2FF7-B2A61F518E50";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleZ_Backwards";
	rename -uid "03E577B2-4DF5-1714-3C2D-DDA307A56A82";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_r_visibility_Backwards";
	rename -uid "3211FE23-4D30-407F-FDC4-1BA2B3060D99";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateX_Backwards";
	rename -uid "C06B49EE-4655-442D-F792-3E84F362FF2C";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateY_Backwards";
	rename -uid "78B1AE75-48B5-C8B6-314E-63938CE5B320";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateZ_Backwards";
	rename -uid "3638397F-4F8C-B0E4-9B86-7590834B0415";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_r_rotate_Backwards";
	rename -uid "8D23AC5B-464F-41EF-05E0-4DAE3A65982D";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleX_Backwards";
	rename -uid "BE28F09F-4B5C-982F-AA6A-F3A631D572BD";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleY_Backwards";
	rename -uid "DFAAFCD9-4758-3D3B-C1A1-CA8E8CC18681";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleZ_Backwards";
	rename -uid "E30A8EBA-4A44-88D0-DB31-8A9A525ECB3A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_ik_visibility_Backwards";
	rename -uid "63ED5A89-49FE-9063-10D9-3A97FA50C0AA";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateX_Backwards";
	rename -uid "291F522D-48C8-1AE1-6132-D0B10AC24A6D";
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateY_Backwards";
	rename -uid "4E9FC058-4413-8739-9856-039BD40882BC";
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateZ_Backwards";
	rename -uid "A5602753-42FA-74B4-2E6A-0797E31C9368";
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_ik_rotate_Backwards";
	rename -uid "390B2766-4416-DB8D-363F-33885605ACC5";
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleX_Backwards";
	rename -uid "789E0E3E-47DE-F6E5-2B90-879A9978746A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleY_Backwards";
	rename -uid "4C76DFE8-48C0-8518-BD34-E9B33E55F947";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards";
	rename -uid "90BC0057-495E-3B13-9F89-EDAA82D9B5F2";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_head_visibility_Backwards";
	rename -uid "9C4C255B-46C6-7126-C37F-18AD7F247390";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateX_Backwards";
	rename -uid "B20DAD34-4707-24DA-357C-EDB5E327698F";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateY_Backwards";
	rename -uid "4A1B6057-49F4-F037-B534-FD8EC364E61D";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateZ_Backwards";
	rename -uid "0AD8F2B9-4500-D675-D3C3-CE99427E8ABA";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_head_rotate_Backwards";
	rename -uid "748BB2E1-42E7-896B-FBF9-A1A30F7A3524";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleX_Backwards";
	rename -uid "211103B1-46D0-70EC-777D-67A7A11D3049";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleY_Backwards";
	rename -uid "78E8BF44-45CA-A046-C034-0987E4AD5ED6";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleZ_Backwards";
	rename -uid "A78BB731-41C0-0173-CBF9-4E92A49B3AB6";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeEnum -n "Player_rig:CTRL_head_Orient_Backwards";
	rename -uid "E35C1A4E-494C-59A6-F03D-099B20D5CE50";
createNode animCurveTU -n "CTRL_cog_visibility_Left_inputB";
	rename -uid "79268F77-4C78-D4A7-7BAC-8C9188F1E937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_cog_translateX_Left_inputB";
	rename -uid "F80033CE-4F70-4743-7B28-6FB3B4CB38D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.047661108282132471;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Left_inputB";
	rename -uid "7D27F347-454F-0534-4CC3-4586A61EBE1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.13140741279515211;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Left_inputB";
	rename -uid "1CA40D69-453D-D6F0-38D1-06B2D0BA6882";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.9775772434438323;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBX";
	rename -uid "B4B2A298-41BF-79DC-3FF0-9BB2A826F48E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 9.3760387568846451;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBY";
	rename -uid "C7C5C0CD-4D40-4F07-FA49-09B45F51F916";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 8.1118299939750251;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBZ";
	rename -uid "8E1E9E17-4F51-B28B-2772-7DBD580D238D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 13.62163116431347;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Left_inputB";
	rename -uid "82C961D0-4313-CF26-A416-1EBC6D67A4F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Left_inputB";
	rename -uid "C4691276-453D-208B-553C-A0A82CF61FA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Left_inputB";
	rename -uid "05625CE0-4463-4310-26DA-808428EE56A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Left_inputB";
	rename -uid "6CF5F6CF-44A9-761F-8BB6-A69C5EBBEB41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_visibility_Left_inputB";
	rename -uid "15CCEBB7-4135-1EC8-8CB4-1099EA0B155B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_spine_IK_translateX_Left_inputB";
	rename -uid "66C1228B-4DD1-0FCF-7B34-64A78DAF6F58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateY_Left_inputB";
	rename -uid "1D932EE0-4FEE-9CA7-C09D-719A34BAAD08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateZ_Left_inputB";
	rename -uid "3220EF98-414A-6F4E-6168-ECB6CE1BB078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBX";
	rename -uid "FC8B01D7-4F35-2034-53B9-C68493FC37F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.1341949238523155;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBY";
	rename -uid "82338516-4C58-DCD2-894F-2FB592F5369E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBZ";
	rename -uid "0FFE7F47-45B0-F8D2-D9CB-E68B0596D625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 15.814694007844428;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleX_Left_inputB";
	rename -uid "ED5EED72-41A0-E169-B337-CA900E8A431A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleY_Left_inputB";
	rename -uid "309102B7-405C-173B-CA26-BDAC085C9729";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleZ_Left_inputB";
	rename -uid "7A957FF3-48DD-702B-A3EC-68BF8C93224B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Left_inputB";
	rename -uid "BB1011DE-41A8-9285-9112-B78DE0A1E87A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_chest_IK_translateX_Left_inputB";
	rename -uid "B3924D66-4DD1-F396-1ACB-A99103BA448A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Left_inputB";
	rename -uid "C08ADEA4-44FB-1FAE-AD57-348843D83441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Left_inputB";
	rename -uid "014F0A4F-4FA9-6DC2-B786-178AB61A8B9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBX";
	rename -uid "884243F7-48D7-F0F6-AC6B-DD909832E140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.1341949238523155;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBY";
	rename -uid "9CF49E16-4891-6C8D-393F-3A959C51DB39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBZ";
	rename -uid "00B16B9A-4433-156E-0DC3-63B029A63ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 15.814694007844428;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Left_inputB";
	rename -uid "AEAFD573-4AA5-4F58-B46A-C3B6DF207412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Left_inputB";
	rename -uid "A51B500D-418D-C885-78FE-B597C72C36D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Left_inputB";
	rename -uid "F34794FC-40C0-973F-15FC-018FFC13402F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Left_inputB";
	rename -uid "D027E909-4191-B0B6-A14D-53B6DBA52854";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.0032588116256811;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Left_inputB";
	rename -uid "E3D5DAC9-4CE9-1A6F-6494-0AAEFE43D9FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.0903875834396359;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Left_inputB";
	rename -uid "AB74DA9A-4EF4-C514-D6B1-4EAD711A480D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.21045895056734309;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Left_inputB";
	rename -uid "8B9C177B-4451-304D-AC5A-39BC35691C59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBX";
	rename -uid "E6F45D07-47F6-4601-34C5-1C87CEFD90E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBY";
	rename -uid "FC48DB56-4610-81A7-46A4-AC9ED42118B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBZ";
	rename -uid "9886A047-4250-9870-B375-43B55BE930A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Left_inputB";
	rename -uid "354F65C6-4C85-D017-A4A2-4E803A5375BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Left_inputB";
	rename -uid "E34CBD78-4E5F-59FB-B776-5B9E665B55E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Left_inputB";
	rename -uid "9272A1C0-406A-60D8-A1B2-5594307C9BB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateX_Left_inputB";
	rename -uid "BDE41D1B-4CDA-AC35-D4D1-288E9D411B63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 4.9858648272983181;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateY_Left_inputB";
	rename -uid "4266E53F-49F9-E206-C4CC-179C683059B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -8.8340587455863968;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateZ_Left_inputB";
	rename -uid "E2C1FB43-45FC-D604-1B7A-E3ABBCC9F975";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.18547757587086977;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_visibility_Left_inputB";
	rename -uid "907C8391-4354-EC5E-1595-E39B7F052C7E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBX";
	rename -uid "E3EA298C-418A-1069-C142-B2BA10F52B9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 48.296623366951287;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBY";
	rename -uid "ADD5DD6B-4DD9-250C-CA67-058FE68247F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -26.646292178707434;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBZ";
	rename -uid "CE885553-4442-4101-E4A5-0989F2567CF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 75.379145238634095;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleX_Left_inputB";
	rename -uid "C72DD1F7-4557-8F0A-C812-AF9989437269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleY_Left_inputB";
	rename -uid "76AA7EE9-48BE-5038-5DDD-D6B4D2210BEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleZ_Left_inputB";
	rename -uid "57585752-44A3-9AFD-32D3-ABA3AF30476B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_pole_visibility_Left";
	rename -uid "788B7737-46A7-DD29-D4DA-4E9EA4884A97";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateX_Left";
	rename -uid "1E27B534-47DC-87AD-CD62-EDBCBD5E3AB0";
	setAttr ".ia" 0.094454297336254517;
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateY_Left";
	rename -uid "A61326FD-4960-92BB-976C-B0B8C693D1DB";
	setAttr ".ia" 8.3107816815941185;
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateZ_Left";
	rename -uid "424B1F24-4A28-207F-94E1-609ACA2BAB8B";
	setAttr ".ia" 7.12276893256238;
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_pole_rotate_Left";
	rename -uid "4B9C5D1A-46C3-9323-85E8-07B34253ABEE";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleX_Left";
	rename -uid "14D79EE1-4384-CB3E-B2AF-CE95FDE13C28";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleY_Left";
	rename -uid "572A17CA-4C1A-68E7-1C7C-C0B80A674A03";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleZ_Left";
	rename -uid "A5BB02CF-407F-7FCB-2010-049E9D311D80";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_pole_visibility_Right";
	rename -uid "1FABB7C8-48A0-6508-3D7A-AC9B7E32ECA7";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateX_Right";
	rename -uid "F9536EA9-4F7E-58BB-037F-7198BD8807B9";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateY_Right";
	rename -uid "2343C036-4003-5006-FF70-64AD1BAE197C";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateZ_Right";
	rename -uid "5DB10476-4ADF-AE11-B42F-8F85547E6E4D";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_pole_rotate_Right";
	rename -uid "99C9039A-4847-7155-A897-8CB04D694EFE";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleX_Right";
	rename -uid "F1EF0439-4AA4-ABCD-D4F1-AD87FF486BBC";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleY_Right";
	rename -uid "45006D47-4438-19AD-8751-C9BE5456FFF2";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleZ_Right";
	rename -uid "69712EC5-469C-1C14-E043-54A2C8F19AEE";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_pole_visibility_Forwards";
	rename -uid "66D7F648-4FBF-9EE5-0603-DDB71D083A29";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateX_Forwards";
	rename -uid "835C3DAE-4D60-02B9-8E80-AA8A91A2BD1A";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateY_Forwards";
	rename -uid "A3793A8A-416A-3D8C-2400-A3B21A3DF7D1";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateZ_Forwards";
	rename -uid "7FBBDDD0-4D48-4E46-59CD-15BAC8197CF3";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_pole_rotate_Forwards";
	rename -uid "E4062FFF-4376-A27D-B240-568C43757F07";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleX_Forwards";
	rename -uid "A7A1456A-46DA-4B85-B807-5F95D563FB28";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleY_Forwards";
	rename -uid "C162786A-4400-6E57-1CBF-339844B5BD9A";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards";
	rename -uid "D3792BDD-4CE6-2A3D-304A-209B9F291402";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_pole_visibility_Backwards";
	rename -uid "E50CF069-40AF-D007-5CA9-3FA0658A78CF";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateX_Backwards";
	rename -uid "A64BFED6-4061-7E1C-25D7-7F87B8717190";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateY_Backwards";
	rename -uid "7CF72DC2-4AC3-81E6-6421-5FA1236AD607";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateZ_Backwards";
	rename -uid "3EBF5AAE-4D48-105F-4F43-19B457FA967D";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_pole_rotate_Backwards";
	rename -uid "4D4FF48A-4FBD-3D19-E2A1-FCB7A60B5511";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleX_Backwards";
	rename -uid "25B3B596-411C-E366-A479-BC98DA320780";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleY_Backwards";
	rename -uid "DB35E4B7-446A-5ACE-1EF6-858374149C98";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards";
	rename -uid "DC5970CD-46AA-DAB2-714A-8898EA6C4D6D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animCurveTL -n "CTRL_arm_r_pole_translateX_Left_inputB";
	rename -uid "ADB15299-4918-943F-FE20-91985A5F3CCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -22.575230580490558;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_pole_translateY_Left_inputB";
	rename -uid "586C576D-4DC0-E9D9-5794-B1B75F21A59A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -11.701423057089864;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_pole_translateZ_Left_inputB";
	rename -uid "7718BA27-4446-A4C9-A004-E2A2BADE11E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 49.526145589262519;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_visibility_Left_inputB";
	rename -uid "1BA35A89-4CB1-4F2D-1C0B-5FB44D09C44C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBX";
	rename -uid "BEEC0303-4658-FEA7-DC1B-B4BED2D958A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBY";
	rename -uid "F36B7B9A-454A-8ACE-49F8-0FB77F31D93D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBZ";
	rename -uid "1562CDDF-4957-0283-949B-8C896F0CB3D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleX_Left_inputB";
	rename -uid "FBDA6296-40A4-B6D0-7D3F-3D91B16D9F00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleY_Left_inputB";
	rename -uid "ACD3E3A2-4A91-6B13-028B-41B1D377C278";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleZ_Left_inputB";
	rename -uid "FD104A01-4CA6-C0EA-2E35-F587125592DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_root_visibility_Left";
	rename -uid "C7E49EDF-43FF-8E40-A34B-3EA5CC66CF34";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateX_Left";
	rename -uid "3BD827E3-4C05-1CB3-C2C5-0089B4431966";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateY_Left";
	rename -uid "D927E07C-4265-BAB1-2D34-149FAC34D53B";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateZ_Left";
	rename -uid "37671366-4A29-8D80-4EA5-DC91361E81C7";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_root_rotate_Left";
	rename -uid "CE4433F2-47DE-1B20-1974-35B5BE0D7533";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleX_Left";
	rename -uid "3EC71F7F-4937-9EEE-AF5D-7FA1B6E6FF9B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleY_Left";
	rename -uid "8F4E2664-4BBF-A739-5580-E694D4B3C79F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleZ_Left";
	rename -uid "07A2A57A-4B71-8162-90D1-AEA67E827379";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_pole_visibility_Left";
	rename -uid "7AFB178C-4E3A-D04D-E6C6-469E8368824B";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateX_Left";
	rename -uid "F6FCC6E6-4837-6B86-E09E-F79360E5B4A8";
	setAttr ".ia" 0.094454297336254517;
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateY_Left";
	rename -uid "EE20BD63-4EC4-C922-DA41-CE9DF4B76A44";
	setAttr ".ia" 8.3107816815941185;
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateZ_Left";
	rename -uid "0B85596D-4062-67B8-62A7-549E5B50C4EF";
	setAttr ".ia" 7.12276893256238;
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_pole_rotate_Left";
	rename -uid "3B68D79A-4D33-C7F4-E6B5-D2854F7A37E4";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleX_Left";
	rename -uid "D6FB3F1B-4719-B945-D842-E796984DA329";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleY_Left";
	rename -uid "F7D456E9-4B9C-63FB-11BD-C6AD6E00D2E6";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleZ_Left";
	rename -uid "0A7DE6C8-4261-732F-ADE8-21B523F93D32";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_root_visibility_Right";
	rename -uid "212CF173-433A-E00B-16D3-A3A0DC715308";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateX_Right";
	rename -uid "44F3D444-4EF9-C77A-B0F9-B898403529C7";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateY_Right";
	rename -uid "06BFF6E3-4B4B-F08C-D3E8-2D85D632B83C";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateZ_Right";
	rename -uid "711A4EBB-4A9C-84BB-01B7-5DA6C2239EA8";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_root_rotate_Right";
	rename -uid "0B04A464-4ACF-FA33-2492-6EBFE791C3C2";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleX_Right";
	rename -uid "49B0611C-432D-9D01-6F79-D5BC22DE9D9F";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleY_Right";
	rename -uid "65B41555-460A-CFCD-62F2-73A511BB3F8D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleZ_Right";
	rename -uid "59D00824-41FD-76FC-8A52-C88FD1A01ADC";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_pole_visibility_Right";
	rename -uid "3F287A66-427F-FA69-402C-41822603E712";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateX_Right";
	rename -uid "CFA59AD4-45FD-6224-C4B5-70B8052928BF";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateY_Right";
	rename -uid "3E45FCF6-4852-44E5-D847-12ADA3317E49";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateZ_Right";
	rename -uid "43BD1920-4E2A-2980-4BED-D388163E8534";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_pole_rotate_Right";
	rename -uid "9963BC2E-45C8-505A-8DD0-60AFDAD0A547";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleX_Right";
	rename -uid "6EDBE322-4D61-FA81-0675-C782F79957CC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleY_Right";
	rename -uid "1C969F5E-4FED-017D-A374-889D2B0FC702";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleZ_Right";
	rename -uid "594E6269-480A-CB7A-58AA-8D9EFAA53C62";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_root_visibility_Forwards";
	rename -uid "1A35491B-4FF1-C7D8-1F23-5890722548CD";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateX_Forwards";
	rename -uid "60D04734-48B9-B1FB-67F6-088A2FACFFCC";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateY_Forwards";
	rename -uid "AC62FB51-4CF2-6793-963A-4C92509C581E";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateZ_Forwards";
	rename -uid "8058059F-44CC-7965-DA27-A18452B76B2D";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_root_rotate_Forwards";
	rename -uid "77C74EF3-42EC-A01B-F2DD-96AFE67A8E77";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleX_Forwards";
	rename -uid "0976D044-4316-FA87-6754-F79283F4F0B4";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleY_Forwards";
	rename -uid "A4B9EA59-4F24-08D9-4356-6B96A0EF5AA0";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleZ_Forwards";
	rename -uid "ACCDFEFF-4868-8717-D3B0-8896D8E4FAD1";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_pole_visibility_Forwards";
	rename -uid "EE89AF99-48A9-6B7B-D8B0-88A7E161CCA4";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateX_Forwards";
	rename -uid "02D4B528-4535-BDB5-8F12-FC8209CE8AA9";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateY_Forwards";
	rename -uid "4BFC633B-46F5-87D2-EA37-A2896241EFD7";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateZ_Forwards";
	rename -uid "D6EEAD21-4947-084E-8223-818DF0A3A697";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_pole_rotate_Forwards";
	rename -uid "0879E1B7-4209-5DB8-52C8-759232D72D46";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleX_Forwards";
	rename -uid "354789DB-4905-0E3D-1B71-328CE81055AB";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleY_Forwards";
	rename -uid "0BC4B6D7-4F25-8229-0938-9AA8CE50AEE8";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards";
	rename -uid "1E99BA88-47C8-DE32-1944-2FA3EEEB9E7D";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_root_visibility_Backwards";
	rename -uid "6E855A86-4EE6-4481-D4E5-B8AEB5A6EC81";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateX_Backwards";
	rename -uid "504B9CE2-4622-464D-C4C8-35A24B7C2305";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateY_Backwards";
	rename -uid "8E731AB5-4269-8687-B9B4-6B940A240A16";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateZ_Backwards";
	rename -uid "33B31854-4CD5-F6FD-9A8D-AAA4A503003F";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_root_rotate_Backwards";
	rename -uid "E74A4347-4B00-7FC4-B116-D6B1276AFF5A";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleX_Backwards";
	rename -uid "F9BC2D98-4CF1-E2AD-0236-0B8A8A92E654";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleY_Backwards";
	rename -uid "FA32A28E-42D7-D39D-43AB-DF86A28E8D7C";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleZ_Backwards";
	rename -uid "FEC382D7-47FC-EF74-FC71-B2A2FAB7CCC3";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_pole_visibility_Backwards";
	rename -uid "25506E81-4D35-3BFA-D906-64B783F4EA51";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateX_Backwards";
	rename -uid "09A4FD29-435C-C2F5-70B1-B39A343D871E";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateY_Backwards";
	rename -uid "9FBFE935-4D37-51C2-1F33-978213D0F341";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateZ_Backwards";
	rename -uid "6F5A9CC8-4CE1-02B8-8C9C-A793770DCDF0";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_pole_rotate_Backwards";
	rename -uid "513FE52A-4077-3930-6FE8-8F8144E5BEE6";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleX_Backwards";
	rename -uid "AA84C0D0-4257-0C14-5F99-79B1F860861C";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleY_Backwards";
	rename -uid "11AE0885-4367-8A65-B2A4-6793D385D00F";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards";
	rename -uid "F39F4438-47FA-3B48-32AC-4386696899C1";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBX";
	rename -uid "567792FE-4831-4A1F-0F5C-DF8B2521D510";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -14.691106020740987;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBY";
	rename -uid "FE0E22EF-4DF9-27DA-0D56-25B2A5D93AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -9.9392333795734899e-16;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBZ";
	rename -uid "C5298FAB-4D1B-C290-952B-4EACF5357AA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -7.1562480332929135e-15;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Left_inputB";
	rename -uid "18DFBFDE-4671-11C9-8CD0-55ACCE5E002E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_head_translateX_Left_inputB";
	rename -uid "777A2587-4CFE-EFB0-816A-E7BDDA9F91D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Left_inputB";
	rename -uid "A474C6C5-4394-6F5E-84DA-79B3DFECC228";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Left_inputB";
	rename -uid "906197BF-4D8D-7833-8F08-DCA6BC7D0769";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Left_inputB";
	rename -uid "CEDDFA7F-4AC7-5B26-E90D-DCB1E4F69B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Left_inputB";
	rename -uid "E5A77279-48D8-52D1-2236-719973AE2DD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Left_inputB";
	rename -uid "14F9AD1E-4504-47DC-2193-9F8401BCD394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_Orient_Left_inputB";
	rename -uid "12F09067-4F52-6E21-1590-5A94092B35FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_cog_translateX_Right_inputB";
	rename -uid "D96247C7-499E-60B2-5187-5FBCFF08FF50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.011554137008341153;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Right_inputB";
	rename -uid "4AA15071-45CE-95CA-5E7A-77A0A3BF7960";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.05104826557666442;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Right_inputB";
	rename -uid "9AE5B28C-47CB-BEB2-B94B-FB9D34286CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -2.0117850881620143;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateX_Right_inputB";
	rename -uid "DC9613AD-40DE-3105-9949-C4A95DDCEEA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.23783055369168077;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Right_inputB";
	rename -uid "B1F14D61-47B1-2493-E0B1-A7B66564F5E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.96927941768775239;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Right_inputB";
	rename -uid "8329E5F8-4F38-8135-8F2A-0A864027E4DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.7475562087180556;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_visibility_Right_inputB";
	rename -uid "4EC19CF9-46F1-6EC9-E900-70ADFC4F3910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBX";
	rename -uid "04A53D37-472B-146A-8B9C-98859A02B625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 19.896908487704806;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBY";
	rename -uid "862D8ABC-4F0B-E766-91DE-AFBBE3FF0879";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -9.4816257688056176;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBZ";
	rename -uid "A7D40BD6-4AEC-33ED-7A58-2DA8E8ED4094";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -10.617421546780298;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Right_inputB";
	rename -uid "9BF97EC6-477E-F168-4610-64890F1DD2D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Right_inputB";
	rename -uid "5D27343F-4148-91AD-4C62-818E6D3125C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Right_inputB";
	rename -uid "9DF4BBCD-4A66-8E9B-12B6-32BDF0CD0F96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Right_inputB";
	rename -uid "D8715FDB-4F07-0274-D555-1DAD7BD2E0A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Right_inputB";
	rename -uid "49373616-4944-96C6-FE65-749D719341CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBX";
	rename -uid "0201F0FA-44F4-7D22-0896-43B778E368F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.4099029223016657;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBY";
	rename -uid "177068DF-4762-845C-2234-9CBE4C508317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.7504630315711829;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBZ";
	rename -uid "B64C6123-4548-B2DF-E33C-5CAA48821D4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.550128088696933;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Right_inputB";
	rename -uid "5B92B49E-4068-AFC4-70F4-37939DAAF659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Right_inputB";
	rename -uid "24B497B3-40CE-4049-7277-4AA1E0385031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Right_inputB";
	rename -uid "828D51C2-40DA-7EEC-1946-4A983E795685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateX_Right_inputB";
	rename -uid "8E2A9B89-467C-AFCE-B5ED-AD8970907F70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 12.028041838883009;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateY_Right_inputB";
	rename -uid "E03DFBEC-45AC-E1A6-1F1F-DBA7D3F684C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -5.3085453103201505;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateZ_Right_inputB";
	rename -uid "E87C8246-46C5-EEA0-A3A3-B182C307998E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 62.479360330301219;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_visibility_Right_inputB";
	rename -uid "7AEAA75C-44A3-F534-11B1-C59D67487248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBX";
	rename -uid "0E258CAA-4368-77FB-CB6C-31878206A24A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBY";
	rename -uid "B04DC1CC-437B-F9C3-EEC4-C486B12CD3E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBZ";
	rename -uid "0F7DAC0E-4FD5-87E0-E6A5-68ACE5F80F6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleX_Right_inputB";
	rename -uid "A1AE9E55-4FBC-E000-F868-D9BDF3677F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleY_Right_inputB";
	rename -uid "AC8CF57D-4A27-88A8-BE71-BAB6D8DD489E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleZ_Right_inputB";
	rename -uid "F5E7097D-48CE-4C79-3F9F-0B82565180D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Right_inputB";
	rename -uid "87FB5165-45CC-BDDB-CB19-07B296E79D79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.2135145109225292;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Right_inputB";
	rename -uid "49901901-4290-4330-28A0-C6958A99DCD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -14.784145687200464;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Right_inputB";
	rename -uid "CBA54DF6-4805-DC5C-8C36-2BA7E76B7BDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.17140967703379317;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Right_inputB";
	rename -uid "79D4A5E5-4C42-E055-9B37-3888D34AAD7D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBX";
	rename -uid "9A51659B-4F4F-DA18-4521-388CD4079934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -51.535110886633362;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBY";
	rename -uid "27478E0A-41B6-3346-8AA1-EDA6F2BA80F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 26.232764323983147;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBZ";
	rename -uid "04E09BCF-4146-CEE1-E630-6EB2C66BFCB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 46.26615037996195;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Right_inputB";
	rename -uid "8B9B8614-4910-C7DE-EACC-88AFA631B1E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Right_inputB";
	rename -uid "D18387B4-4EB6-3D6C-1F2B-77941B340DF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Right_inputB";
	rename -uid "E558DAFC-49C3-5A73-B4D7-349756838244";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateX_Right_inputB";
	rename -uid "CA5F0681-4EC0-1525-0A6E-05A315B3326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.0893830625857461;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateY_Right_inputB";
	rename -uid "66A03000-4413-56FB-CC5A-CFA93DDDAAB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 12.040059218899856;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateZ_Right_inputB";
	rename -uid "F949C103-46A3-5439-1C8C-C4B0F1BD917F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 2.2121481834651746;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_visibility_Right_inputB";
	rename -uid "A7D7FBB3-4700-50D7-5C0B-8AA4D4C3A5FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBX";
	rename -uid "21B7AA2A-42CD-D7D0-A266-5FA275BDBC36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBY";
	rename -uid "0A8B89A8-4CBC-024F-7B16-CCBD36810837";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBZ";
	rename -uid "4154183A-40D5-0D1E-D0FD-ADBA094BE5D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleX_Right_inputB";
	rename -uid "A1670C58-4ADE-DAE9-8404-6E94CCF04474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleY_Right_inputB";
	rename -uid "B4395F6D-412C-C08F-4D87-83A49D1677B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleZ_Right_inputB";
	rename -uid "FC8F52F9-401A-21D3-96E1-3CA69377D8E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBX";
	rename -uid "11C43448-4B39-E456-0877-E4A400F4BF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -23.172369676177983;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBY";
	rename -uid "92596559-4C61-285B-36FF-8E869E3EEDCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 4.4172202463706629;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBZ";
	rename -uid "4EF2DF65-4E02-C060-E26E-E5B3C5C51920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 2.3918868967705356;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Right_inputB";
	rename -uid "65A2E728-4794-2590-F66C-E1808F622F42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_head_translateX_Right_inputB";
	rename -uid "97D9E4CF-4A59-3EB6-07B3-969DF0FFF811";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Right_inputB";
	rename -uid "A48B1C1A-4050-7696-E530-609FCEA05F6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Right_inputB";
	rename -uid "5E911960-491B-F0DF-2A3D-E79D0D5CAE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Right_inputB";
	rename -uid "72A2FE78-4880-C93C-C219-C1A4280EC4CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Right_inputB";
	rename -uid "E277FA9E-4DE8-6E8A-2DA8-039C83229BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Right_inputB";
	rename -uid "848A8B85-4965-927A-2EA7-1080B3412C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_Orient_Right_inputB";
	rename -uid "9C4BA24B-41BE-5DA9-2947-CBBEE0EA4529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_cog_translateX_Forwards_inputB";
	rename -uid "E7909E5B-4A3B-321F-F4D3-9285F3477AF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.9080914098430135;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Forwards_inputB";
	rename -uid "767A5709-4E53-5846-B50A-E28D2ECC64A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -3.5552089331588075;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Forwards_inputB";
	rename -uid "FFC7B2E2-4179-ADCF-2882-EBBFB80952D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -8.9940848751416524;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_visibility_Forwards_inputB";
	rename -uid "A6E4BA98-416A-5DB3-F537-AAA5DF67633A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBX";
	rename -uid "40536E7A-4C89-4588-2CC3-6F96A19395AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 29.218339129404331;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBY";
	rename -uid "4DC9CF36-4E7D-36BD-707A-FEA56EBDAB71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBZ";
	rename -uid "69ED8E10-446B-F18C-614F-3E9589B931A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Forwards_inputB";
	rename -uid "7E1AB145-488C-BD05-7442-D7A58345EFE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Forwards_inputB";
	rename -uid "50DFA2C8-454E-7CE5-649D-E392EC6D946F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Forwards_inputB";
	rename -uid "B1BBB1CB-419A-66F7-AB45-F6A862BA8B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Forwards_inputB";
	rename -uid "11E0D665-400A-BFE1-C167-E09B12EF362E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateX_Forwards_inputB";
	rename -uid "25BE4434-4A30-7963-7CBB-E49C36144416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.6419801778547605;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateY_Forwards_inputB";
	rename -uid "A5B42823-44E0-815E-43F1-398705A7042F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -6.694931359601501;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateZ_Forwards_inputB";
	rename -uid "65F952D5-4991-D21F-0560-C7904C4FAEDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -17.077919810627826;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_visibility_Forwards_inputB";
	rename -uid "DD36264C-4774-87C1-3A1E-10B6542C8F25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBX";
	rename -uid "48E5D9C9-4034-1178-B02E-EF86EC31E5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBY";
	rename -uid "2E29CFE1-42F5-E48D-1165-73B439AD5985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBZ";
	rename -uid "EE937B2B-4AC9-CAAA-AC76-7A86A1843976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleX_Forwards_inputB";
	rename -uid "B4601005-4BB7-936D-4F04-E6A276DAD749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleY_Forwards_inputB";
	rename -uid "B3437F24-448E-FA93-4E4D-6F9ED3774EBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleZ_Forwards_inputB";
	rename -uid "C7E83D66-4BB0-2C69-6B7D-CF807CF15A97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateX_Forwards_inputB";
	rename -uid "C279764E-40BB-B78C-89D3-859590E04686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 8.9777855568433118;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateY_Forwards_inputB";
	rename -uid "7850AD33-4A02-B480-4066-67AD67037B64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -6.7717063153487338;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateZ_Forwards_inputB";
	rename -uid "BB09E53D-4CA2-7106-34BD-D4B31AF0F9D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.987512702006402;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_visibility_Forwards_inputB";
	rename -uid "A7C3472C-419C-942B-EB60-28BDCA3C539D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBX";
	rename -uid "42B97BC2-44C1-A523-2611-DF9F2FCEE757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBY";
	rename -uid "A6501612-4510-81E0-2359-249A5968F3A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBZ";
	rename -uid "4353DF1E-4451-4C88-860D-FCA3B0744079";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleX_Forwards_inputB";
	rename -uid "26486340-4D25-2406-B8B2-E6B734C39F64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleY_Forwards_inputB";
	rename -uid "0D0F3073-446F-7AC2-83CD-82A73FA23A52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleZ_Forwards_inputB";
	rename -uid "6FCB47FD-4063-5017-E80D-3189C2BF640A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBX";
	rename -uid "62BBA043-48E8-3B75-A980-52BECE98FD47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -18.921183470569563;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBY";
	rename -uid "A87ACB07-4F70-325D-244C-B6A498442011";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBZ";
	rename -uid "72E3E118-4BDF-34D3-0477-3395DA18C2BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBX";
	rename -uid "B36FB2A0-4022-F4C5-BA33-39AB1C1D954A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -18.921183470569563;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBY";
	rename -uid "BDA0B99F-46A9-28C4-2CE9-4DA5B4B2C1DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBZ";
	rename -uid "B7CB40E4-4E7F-4289-766B-7C92F0D9E397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_visibility_Forwards_inputB";
	rename -uid "97D9CE58-459C-11FD-0104-21AC2A23C350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_spine_IK_translateX_Forwards_inputB";
	rename -uid "1A29F0DD-443E-DB34-6CED-83A48F443D9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateY_Forwards_inputB";
	rename -uid "97C74FD6-40B0-791E-AE9E-11A4722C24AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateZ_Forwards_inputB";
	rename -uid "347E69DB-444F-18D8-1A82-4596C43D64E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleX_Forwards_inputB";
	rename -uid "66E842DF-4F05-2480-9D99-2185EE937AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleY_Forwards_inputB";
	rename -uid "3A46581F-4180-B368-3B05-D296F638E614";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleZ_Forwards_inputB";
	rename -uid "C4423B03-4797-DB7B-1B11-4997E36127F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Forwards_inputB";
	rename -uid "21168C3B-4549-EF2C-7FE3-73BB13CA8C34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_chest_IK_translateX_Forwards_inputB";
	rename -uid "93F3AE24-4F50-5377-4E03-4B9EA216D2AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Forwards_inputB";
	rename -uid "F46E82F6-4A62-D4F7-0F85-95B5D0DD24B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Forwards_inputB";
	rename -uid "C111C357-42E9-026F-1FAC-429450332F83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Forwards_inputB";
	rename -uid "6D85104F-4E67-EB01-215C-048A08ED837A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Forwards_inputB";
	rename -uid "BF5FA899-4908-B642-E836-B894832E3598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Forwards_inputB";
	rename -uid "90BA8F38-481A-ABDC-FB23-F4971650BD6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBX";
	rename -uid "3D14FE28-4762-E5FA-40CE-E0AB102A65FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.662648780650859;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBY";
	rename -uid "5B27CA38-4065-610E-C3A7-2A8C93387539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.7890620083232284e-15;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBZ";
	rename -uid "B626E0FA-4A17-8AFC-5FB6-D5BDC5F117E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.0734372049939369e-14;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Forwards_inputB";
	rename -uid "DBC3740A-4A0B-F6D3-BEBB-2AAC38577A7F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_head_translateX_Forwards_inputB";
	rename -uid "C672547E-4125-068B-A7E3-1C875A6DD746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Forwards_inputB";
	rename -uid "7E2DF68C-4FDA-8818-3C78-0EBC508BB629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Forwards_inputB";
	rename -uid "80439392-4BBE-395E-A0D4-C79BD7DA8147";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Forwards_inputB";
	rename -uid "824D70EF-450C-5D1D-E88E-3C95135B4448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Forwards_inputB";
	rename -uid "C95D243B-46AB-6FF5-271F-0B91EA99B091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Forwards_inputB";
	rename -uid "00AE443F-493D-801C-528D-EABBDAB88756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_Orient_Forwards_inputB";
	rename -uid "984F591D-4F0F-BEEF-080D-7CB475F60689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Forwards_inputB";
	rename -uid "4E48BF80-4A34-16A6-B554-199076D8446B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.40751402541403081;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Forwards_inputB";
	rename -uid "AAD28250-4895-05DC-8569-27BE7C0167B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.5728631707367011;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Forwards_inputB";
	rename -uid "87BAB1EA-41E0-B18B-8269-8CA5628E8251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.7945033788161524;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Forwards_inputB";
	rename -uid "D2CC5B8F-48A8-FAA1-05E3-B4B7BCE53A6A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBX";
	rename -uid "08C63C20-4332-18B5-F160-4A9A5CF329EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBY";
	rename -uid "F5A15F5F-43E1-DBC8-14E4-CB87DA76AE48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBZ";
	rename -uid "63BB0A55-401E-3033-5D63-038DCE4FECD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Forwards_inputB";
	rename -uid "05E755DE-4DA6-00CD-BA13-74A94ADB9B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Forwards_inputB";
	rename -uid "D114EFF9-4C2B-6BD5-245F-36B040D9B5AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Forwards_inputB";
	rename -uid "13BBA4E3-49A4-53E4-E3B8-D5ACC57CABC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9EE6387F-453C-98FE-DBE3-978472D1BF2F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1152.3809065894493 -71.428568590255125 ;
	setAttr ".tgi[0].vh" -type "double2" 1152.3809065894493 71.428568590255125 ;
	setAttr -s 1012 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -5871.4287109375;
	setAttr ".tgi[0].ni[0].y" 18104.28515625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 5220;
	setAttr ".tgi[0].ni[1].y" 19325.71484375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 5605.71435546875;
	setAttr ".tgi[0].ni[2].y" 19712.857421875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 5605.71435546875;
	setAttr ".tgi[0].ni[3].y" 19507.142578125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4061.428466796875;
	setAttr ".tgi[0].ni[4].y" 4572.85693359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2147.142822265625;
	setAttr ".tgi[0].ni[5].y" -9674.2861328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2147.142822265625;
	setAttr ".tgi[0].ni[6].y" -9522.857421875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 4061.428466796875;
	setAttr ".tgi[0].ni[7].y" 7270;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2147.142822265625;
	setAttr ".tgi[0].ni[8].y" -9371.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 5605.71435546875;
	setAttr ".tgi[0].ni[9].y" 19358.572265625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2147.142822265625;
	setAttr ".tgi[0].ni[10].y" -9220;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 5220;
	setAttr ".tgi[0].ni[11].y" 19607.142578125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2147.142822265625;
	setAttr ".tgi[0].ni[12].y" -9068.5712890625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 3670;
	setAttr ".tgi[0].ni[13].y" 8407.142578125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2147.142822265625;
	setAttr ".tgi[0].ni[14].y" -8917.142578125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[15].y" -11488.5712890625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2147.142822265625;
	setAttr ".tgi[0].ni[16].y" -8765.7138671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[17].y" -13765.7138671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2147.142822265625;
	setAttr ".tgi[0].ni[18].y" -920;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 5220;
	setAttr ".tgi[0].ni[19].y" 15542.857421875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2147.142822265625;
	setAttr ".tgi[0].ni[20].y" -8614.2861328125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 5220;
	setAttr ".tgi[0].ni[21].y" 16017.142578125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[22].y" -3037.142822265625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[23].y" -4534.28564453125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[24].y" -4908.5712890625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[25].y" -15097.142578125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 4444.28564453125;
	setAttr ".tgi[0].ni[26].y" -3770;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[27].y" -4160;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[28].y" -3411.428466796875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[29].y" -3785.71435546875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 4444.28564453125;
	setAttr ".tgi[0].ni[30].y" -3567.142822265625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 4444.28564453125;
	setAttr ".tgi[0].ni[31].y" -3668.571533203125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -268.57144165039062;
	setAttr ".tgi[0].ni[32].y" 198.57142639160156;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 84.285713195800781;
	setAttr ".tgi[0].ni[33].y" 97.142860412597656;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 5220;
	setAttr ".tgi[0].ni[34].y" 14137.142578125;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 4061.428466796875;
	setAttr ".tgi[0].ni[35].y" 10031.4287109375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 5220;
	setAttr ".tgi[0].ni[36].y" 19088.572265625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 5605.71435546875;
	setAttr ".tgi[0].ni[37].y" 19235.71484375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2147.142822265625;
	setAttr ".tgi[0].ni[38].y" -8462.857421875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 5220;
	setAttr ".tgi[0].ni[39].y" 5980;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[40].y" 12587.142578125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 2147.142822265625;
	setAttr ".tgi[0].ni[41].y" -8311.4287109375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 2147.142822265625;
	setAttr ".tgi[0].ni[42].y" -8160;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 5220;
	setAttr ".tgi[0].ni[43].y" 18908.572265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 5605.71435546875;
	setAttr ".tgi[0].ni[44].y" 19112.857421875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[45].y" 7232.85693359375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2147.142822265625;
	setAttr ".tgi[0].ni[46].y" -8008.5712890625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2147.142822265625;
	setAttr ".tgi[0].ni[47].y" -7857.14306640625;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 2147.142822265625;
	setAttr ".tgi[0].ni[48].y" -7705.71435546875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2147.142822265625;
	setAttr ".tgi[0].ni[49].y" -7554.28564453125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 5605.71435546875;
	setAttr ".tgi[0].ni[50].y" 18987.142578125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[51].y" 6708.5712890625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 2147.142822265625;
	setAttr ".tgi[0].ni[52].y" -7402.85693359375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 5220;
	setAttr ".tgi[0].ni[53].y" 13957.142578125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2882.857177734375;
	setAttr ".tgi[0].ni[54].y" -10352.857421875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 3295.71435546875;
	setAttr ".tgi[0].ni[55].y" -9345.7138671875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 5605.71435546875;
	setAttr ".tgi[0].ni[56].y" 18757.142578125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[57].y" -16672.857421875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 5605.71435546875;
	setAttr ".tgi[0].ni[58].y" 18557.142578125;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 5605.71435546875;
	setAttr ".tgi[0].ni[59].y" 18271.427734375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 5605.71435546875;
	setAttr ".tgi[0].ni[60].y" 17985.71484375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 5605.71435546875;
	setAttr ".tgi[0].ni[61].y" 17720;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 4061.428466796875;
	setAttr ".tgi[0].ni[62].y" 1197.142822265625;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 4061.428466796875;
	setAttr ".tgi[0].ni[63].y" 15021.4287109375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 5605.71435546875;
	setAttr ".tgi[0].ni[64].y" 17520;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 3670;
	setAttr ".tgi[0].ni[65].y" -4267.14306640625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 2475.71435546875;
	setAttr ".tgi[0].ni[66].y" -17920;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 5605.71435546875;
	setAttr ".tgi[0].ni[67].y" 17348.572265625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 5220;
	setAttr ".tgi[0].ni[68].y" 5655.71435546875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 254.28572082519531;
	setAttr ".tgi[0].ni[69].y" 930;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 3670;
	setAttr ".tgi[0].ni[70].y" -1347.142822265625;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 3670;
	setAttr ".tgi[0].ni[71].y" 514.28570556640625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 3295.71435546875;
	setAttr ".tgi[0].ni[72].y" -7264.28564453125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 2882.857177734375;
	setAttr ".tgi[0].ni[73].y" -13638.5712890625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 5605.71435546875;
	setAttr ".tgi[0].ni[74].y" 17111.427734375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2882.857177734375;
	setAttr ".tgi[0].ni[75].y" -9612.857421875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 3295.71435546875;
	setAttr ".tgi[0].ni[76].y" -5624.28564453125;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 2067.142822265625;
	setAttr ".tgi[0].ni[77].y" -17371.427734375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 5605.71435546875;
	setAttr ".tgi[0].ni[78].y" 16825.71484375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 5605.71435546875;
	setAttr ".tgi[0].ni[79].y" 16701.427734375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 3295.71435546875;
	setAttr ".tgi[0].ni[80].y" -9108.5712890625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 3670;
	setAttr ".tgi[0].ni[81].y" 1725.7142333984375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 2882.857177734375;
	setAttr ".tgi[0].ni[82].y" -13458.5712890625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 3295.71435546875;
	setAttr ".tgi[0].ni[83].y" -7387.14306640625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 3670;
	setAttr ".tgi[0].ni[84].y" -6930;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 2147.142822265625;
	setAttr ".tgi[0].ni[85].y" -7251.4287109375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 4061.428466796875;
	setAttr ".tgi[0].ni[86].y" 2317.142822265625;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2147.142822265625;
	setAttr ".tgi[0].ni[87].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 254.28572082519531;
	setAttr ".tgi[0].ni[88].y" 10128.5712890625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[89].y" -477.14285278320312;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 4061.428466796875;
	setAttr ".tgi[0].ni[90].y" 11662.857421875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 5605.71435546875;
	setAttr ".tgi[0].ni[91].y" 16578.572265625;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 5605.71435546875;
	setAttr ".tgi[0].ni[92].y" 16455.71484375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3670;
	setAttr ".tgi[0].ni[93].y" 14697.142578125;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 5220;
	setAttr ".tgi[0].ni[94].y" 10078.5712890625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 4061.428466796875;
	setAttr ".tgi[0].ni[95].y" 2835.71435546875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 2475.71435546875;
	setAttr ".tgi[0].ni[96].y" 10461.4287109375;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 5605.71435546875;
	setAttr ".tgi[0].ni[97].y" 16332.857421875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2067.142822265625;
	setAttr ".tgi[0].ni[98].y" -13974.2861328125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 5605.71435546875;
	setAttr ".tgi[0].ni[99].y" 16210;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 4061.428466796875;
	setAttr ".tgi[0].ni[100].y" 14652.857421875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 4444.28564453125;
	setAttr ".tgi[0].ni[101].y" 9085.7138671875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 4825.71435546875;
	setAttr ".tgi[0].ni[102].y" 3432.857177734375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 2147.142822265625;
	setAttr ".tgi[0].ni[103].y" -7100;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 5605.71435546875;
	setAttr ".tgi[0].ni[104].y" 16087.142578125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 4825.71435546875;
	setAttr ".tgi[0].ni[105].y" 9640;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 5220;
	setAttr ".tgi[0].ni[106].y" 15240;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[107].y" 3150;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 5220;
	setAttr ".tgi[0].ni[108].y" 15780;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[109].y" 9378.5712890625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2147.142822265625;
	setAttr ".tgi[0].ni[110].y" -6948.5712890625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 4825.71435546875;
	setAttr ".tgi[0].ni[111].y" 19598.572265625;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 5605.71435546875;
	setAttr ".tgi[0].ni[112].y" 15964.2861328125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 5605.71435546875;
	setAttr ".tgi[0].ni[113].y" 15841.4287109375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 4061.428466796875;
	setAttr ".tgi[0].ni[114].y" 14775.7138671875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 5605.71435546875;
	setAttr ".tgi[0].ni[115].y" 15718.5712890625;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 5605.71435546875;
	setAttr ".tgi[0].ni[116].y" 15571.4287109375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[117].y" -12032.857421875;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 3295.71435546875;
	setAttr ".tgi[0].ni[118].y" 6872.85693359375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 4444.28564453125;
	setAttr ".tgi[0].ni[119].y" 14858.5712890625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[120].y" 12338.5712890625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 4061.428466796875;
	setAttr ".tgi[0].ni[121].y" 6632.85693359375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 2147.142822265625;
	setAttr ".tgi[0].ni[122].y" -6797.14306640625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 2147.142822265625;
	setAttr ".tgi[0].ni[123].y" -768.5714111328125;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 4061.428466796875;
	setAttr ".tgi[0].ni[124].y" 14898.5712890625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2147.142822265625;
	setAttr ".tgi[0].ni[125].y" -6645.71435546875;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2147.142822265625;
	setAttr ".tgi[0].ni[126].y" -6494.28564453125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[127].y" 461.42855834960938;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 2147.142822265625;
	setAttr ".tgi[0].ni[128].y" -6342.85693359375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 5605.71435546875;
	setAttr ".tgi[0].ni[129].y" 15240;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 3670;
	setAttr ".tgi[0].ni[130].y" 14820;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 5605.71435546875;
	setAttr ".tgi[0].ni[131].y" 14750;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 5220;
	setAttr ".tgi[0].ni[132].y" 15362.857421875;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 5605.71435546875;
	setAttr ".tgi[0].ni[133].y" 14627.142578125;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 5220;
	setAttr ".tgi[0].ni[134].y" 14545.7138671875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[135].y" -5410;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[136].y" -16967.142578125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[137].y" -15910;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 2147.142822265625;
	setAttr ".tgi[0].ni[138].y" -6191.4287109375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 5605.71435546875;
	setAttr ".tgi[0].ni[139].y" 14497.142578125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2067.142822265625;
	setAttr ".tgi[0].ni[140].y" -911.4285888671875;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 4444.28564453125;
	setAttr ".tgi[0].ni[141].y" 11575.7138671875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 2067.142822265625;
	setAttr ".tgi[0].ni[142].y" -12594.2861328125;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 2475.71435546875;
	setAttr ".tgi[0].ni[143].y" 288.57144165039062;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2882.857177734375;
	setAttr ".tgi[0].ni[144].y" -7230;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 5605.71435546875;
	setAttr ".tgi[0].ni[145].y" 14374.2861328125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 4825.71435546875;
	setAttr ".tgi[0].ni[146].y" 3727.142822265625;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2067.142822265625;
	setAttr ".tgi[0].ni[147].y" -9182.857421875;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 2882.857177734375;
	setAttr ".tgi[0].ni[148].y" -88.571426391601562;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[149].y" -8670;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 5605.71435546875;
	setAttr ".tgi[0].ni[150].y" 14251.4287109375;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3670;
	setAttr ".tgi[0].ni[151].y" 3958.571533203125;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 4061.428466796875;
	setAttr ".tgi[0].ni[152].y" 13601.4287109375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 5605.71435546875;
	setAttr ".tgi[0].ni[153].y" 14128.5712890625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 5220;
	setAttr ".tgi[0].ni[154].y" 4870;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 2067.142822265625;
	setAttr ".tgi[0].ni[155].y" 3417.142822265625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 1840;
	setAttr ".tgi[0].ni[156].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 1840;
	setAttr ".tgi[0].ni[157].y" -768.5714111328125;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 1840;
	setAttr ".tgi[0].ni[158].y" -2254.28564453125;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 5220;
	setAttr ".tgi[0].ni[159].y" 5532.85693359375;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 3295.71435546875;
	setAttr ".tgi[0].ni[160].y" 2967.142822265625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 2147.142822265625;
	setAttr ".tgi[0].ni[161].y" -2102.857177734375;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 4825.71435546875;
	setAttr ".tgi[0].ni[162].y" 4201.4287109375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 4444.28564453125;
	setAttr ".tgi[0].ni[163].y" 3238.571533203125;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 4061.428466796875;
	setAttr ".tgi[0].ni[164].y" -2020;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[165].y" 12101.4287109375;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[166].y" -3374.28564453125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 2067.142822265625;
	setAttr ".tgi[0].ni[167].y" 14045.7138671875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2882.857177734375;
	setAttr ".tgi[0].ni[168].y" 5818.5712890625;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 2147.142822265625;
	setAttr ".tgi[0].ni[169].y" -6040;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 4825.71435546875;
	setAttr ".tgi[0].ni[170].y" 18961.427734375;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[171].y" -768.5714111328125;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 4444.28564453125;
	setAttr ".tgi[0].ni[172].y" 18307.142578125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 5605.71435546875;
	setAttr ".tgi[0].ni[173].y" 13985.7138671875;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 5220;
	setAttr ".tgi[0].ni[174].y" 5778.5712890625;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 2147.142822265625;
	setAttr ".tgi[0].ni[175].y" -5888.5712890625;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[176].y" -11790;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 2067.142822265625;
	setAttr ".tgi[0].ni[177].y" 9912.857421875;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 4444.28564453125;
	setAttr ".tgi[0].ni[178].y" 12142.857421875;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 4444.28564453125;
	setAttr ".tgi[0].ni[179].y" 4684.28564453125;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 4825.71435546875;
	setAttr ".tgi[0].ni[180].y" 4935.71435546875;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 5220;
	setAttr ".tgi[0].ni[181].y" 17348.572265625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 4061.428466796875;
	setAttr ".tgi[0].ni[182].y" 2022.857177734375;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1532.857177734375;
	setAttr ".tgi[0].ni[183].y" -920;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 1532.857177734375;
	setAttr ".tgi[0].ni[184].y" -768.5714111328125;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 5605.71435546875;
	setAttr ".tgi[0].ni[185].y" 6651.4287109375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2067.142822265625;
	setAttr ".tgi[0].ni[186].y" 11615.7138671875;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 4825.71435546875;
	setAttr ".tgi[0].ni[187].y" 15448.5712890625;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2147.142822265625;
	setAttr ".tgi[0].ni[188].y" -5737.14306640625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 5220;
	setAttr ".tgi[0].ni[189].y" 16711.427734375;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 2127.142822265625;
	setAttr ".tgi[0].ni[190].y" -2557.142822265625;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 5220;
	setAttr ".tgi[0].ni[191].y" 5172.85693359375;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 4444.28564453125;
	setAttr ".tgi[0].ni[192].y" 15095.7138671875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 2147.142822265625;
	setAttr ".tgi[0].ni[193].y" -5585.71435546875;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 4825.71435546875;
	setAttr ".tgi[0].ni[194].y" 14925.7138671875;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 3670;
	setAttr ".tgi[0].ni[195].y" 14942.857421875;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[196].y" -920;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1532.857177734375;
	setAttr ".tgi[0].ni[197].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 5220;
	setAttr ".tgi[0].ni[198].y" 17871.427734375;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 5605.71435546875;
	setAttr ".tgi[0].ni[199].y" 6528.5712890625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2475.71435546875;
	setAttr ".tgi[0].ni[200].y" 4410;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 5605.71435546875;
	setAttr ".tgi[0].ni[201].y" 5838.5712890625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 2067.142822265625;
	setAttr ".tgi[0].ni[202].y" -14668.5712890625;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2475.71435546875;
	setAttr ".tgi[0].ni[203].y" -2497.142822265625;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 1840;
	setAttr ".tgi[0].ni[204].y" -920;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 4444.28564453125;
	setAttr ".tgi[0].ni[205].y" 4447.14306640625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 625.71429443359375;
	setAttr ".tgi[0].ni[206].y" 10304.2861328125;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2147.142822265625;
	setAttr ".tgi[0].ni[207].y" -5434.28564453125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 2147.142822265625;
	setAttr ".tgi[0].ni[208].y" -5282.85693359375;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 5605.71435546875;
	setAttr ".tgi[0].ni[209].y" 5714.28564453125;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 2147.142822265625;
	setAttr ".tgi[0].ni[210].y" -2254.28564453125;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 5605.71435546875;
	setAttr ".tgi[0].ni[211].y" 5518.5712890625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 1840;
	setAttr ".tgi[0].ni[212].y" -2102.857177734375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2147.142822265625;
	setAttr ".tgi[0].ni[213].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 4061.428466796875;
	setAttr ".tgi[0].ni[214].y" 274.28570556640625;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 4825.71435546875;
	setAttr ".tgi[0].ni[215].y" 4021.428466796875;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 4444.28564453125;
	setAttr ".tgi[0].ni[216].y" 1784.2857666015625;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2147.142822265625;
	setAttr ".tgi[0].ni[217].y" -5131.4287109375;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 5220;
	setAttr ".tgi[0].ni[218].y" 5050;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 4444.28564453125;
	setAttr ".tgi[0].ni[219].y" 3115.71435546875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 5220;
	setAttr ".tgi[0].ni[220].y" 5352.85693359375;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 5605.71435546875;
	setAttr ".tgi[0].ni[221].y" 5395.71435546875;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 5605.71435546875;
	setAttr ".tgi[0].ni[222].y" 5272.85693359375;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 1840;
	setAttr ".tgi[0].ni[223].y" -1800;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 2147.142822265625;
	setAttr ".tgi[0].ni[224].y" -4980;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 2147.142822265625;
	setAttr ".tgi[0].ni[225].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 2120;
	setAttr ".tgi[0].ni[226].y" -2405.71435546875;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 2147.142822265625;
	setAttr ".tgi[0].ni[227].y" -4828.5712890625;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 2145.71435546875;
	setAttr ".tgi[0].ni[228].y" -2708.571533203125;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 2147.142822265625;
	setAttr ".tgi[0].ni[229].y" -1800;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 2147.142822265625;
	setAttr ".tgi[0].ni[230].y" -1222.857177734375;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2147.142822265625;
	setAttr ".tgi[0].ni[231].y" -4677.14306640625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 2147.142822265625;
	setAttr ".tgi[0].ni[232].y" -1345.7142333984375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1840;
	setAttr ".tgi[0].ni[233].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 2147.142822265625;
	setAttr ".tgi[0].ni[234].y" -1497.142822265625;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 1840;
	setAttr ".tgi[0].ni[235].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1840;
	setAttr ".tgi[0].ni[236].y" -1284.2857666015625;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 1840;
	setAttr ".tgi[0].ni[237].y" -1497.142822265625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 4444.28564453125;
	setAttr ".tgi[0].ni[238].y" 2192.857177734375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[239].y" -1831.4285888671875;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[240].y" -1130;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2147.142822265625;
	setAttr ".tgi[0].ni[241].y" -4525.71435546875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2147.142822265625;
	setAttr ".tgi[0].ni[242].y" -4374.28564453125;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 4061.428466796875;
	setAttr ".tgi[0].ni[243].y" 2554.28564453125;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 2147.142822265625;
	setAttr ".tgi[0].ni[244].y" -4222.85693359375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" -1898.5714111328125;
	setAttr ".tgi[0].ni[245].y" 10295.7138671875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[246].y" -8157.14306640625;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 5220;
	setAttr ".tgi[0].ni[247].y" 4632.85693359375;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" -3572.857177734375;
	setAttr ".tgi[0].ni[248].y" 7721.4287109375;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" -4884.28564453125;
	setAttr ".tgi[0].ni[249].y" 11675.7138671875;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 2147.142822265625;
	setAttr ".tgi[0].ni[250].y" -4071.428466796875;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[251].y" -8637.142578125;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 5605.71435546875;
	setAttr ".tgi[0].ni[252].y" 5150;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 5220;
	setAttr ".tgi[0].ni[253].y" 4395.71435546875;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 2147.142822265625;
	setAttr ".tgi[0].ni[254].y" -3920;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 5605.71435546875;
	setAttr ".tgi[0].ni[255].y" 5027.14306640625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 2147.142822265625;
	setAttr ".tgi[0].ni[256].y" -3768.571533203125;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 2147.142822265625;
	setAttr ".tgi[0].ni[257].y" -3617.142822265625;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 2147.142822265625;
	setAttr ".tgi[0].ni[258].y" -3465.71435546875;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 5605.71435546875;
	setAttr ".tgi[0].ni[259].y" 4904.28564453125;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 2147.142822265625;
	setAttr ".tgi[0].ni[260].y" -3314.28564453125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 5605.71435546875;
	setAttr ".tgi[0].ni[261].y" 4781.4287109375;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 2147.142822265625;
	setAttr ".tgi[0].ni[262].y" -3162.857177734375;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 2147.142822265625;
	setAttr ".tgi[0].ni[263].y" -3011.428466796875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 5220;
	setAttr ".tgi[0].ni[264].y" 4272.85693359375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 2147.142822265625;
	setAttr ".tgi[0].ni[265].y" -2860;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1007.1428833007812;
	setAttr ".tgi[0].ni[266].y" 3522.857177734375;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[267].y" -11022.857421875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 2147.142822265625;
	setAttr ".tgi[0].ni[268].y" -9825.7138671875;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 3670;
	setAttr ".tgi[0].ni[269].y" -4741.4287109375;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[270].y" -12841.4287109375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 2475.71435546875;
	setAttr ".tgi[0].ni[271].y" -18328.572265625;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 2067.142822265625;
	setAttr ".tgi[0].ni[272].y" -17134.28515625;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 2882.857177734375;
	setAttr ".tgi[0].ni[273].y" -14351.4287109375;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 3295.71435546875;
	setAttr ".tgi[0].ni[274].y" -9582.857421875;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 3670;
	setAttr ".tgi[0].ni[275].y" -4561.4287109375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 5605.71435546875;
	setAttr ".tgi[0].ni[276].y" 4658.5712890625;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 2882.857177734375;
	setAttr ".tgi[0].ni[277].y" -14171.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 3670;
	setAttr ".tgi[0].ni[278].y" -5150;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 5605.71435546875;
	setAttr ".tgi[0].ni[279].y" 4535.71435546875;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 5605.71435546875;
	setAttr ".tgi[0].ni[280].y" 3635.71435546875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 2475.71435546875;
	setAttr ".tgi[0].ni[281].y" -18508.572265625;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 3295.71435546875;
	setAttr ".tgi[0].ni[282].y" -10048.5712890625;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" -874.28570556640625;
	setAttr ".tgi[0].ni[283].y" -1932.857177734375;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" -874.28570556640625;
	setAttr ".tgi[0].ni[284].y" -1127.142822265625;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" -874.28570556640625;
	setAttr ".tgi[0].ni[285].y" -1558.5714111328125;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" -874.28570556640625;
	setAttr ".tgi[0].ni[286].y" -2364.28564453125;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 4825.71435546875;
	setAttr ".tgi[0].ni[287].y" -2948.571533203125;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" -3265.71435546875;
	setAttr ".tgi[0].ni[288].y" 2424.28564453125;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 2475.71435546875;
	setAttr ".tgi[0].ni[289].y" -4850;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 2475.71435546875;
	setAttr ".tgi[0].ni[290].y" 9050;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 2475.71435546875;
	setAttr ".tgi[0].ni[291].y" 9587.142578125;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 2475.71435546875;
	setAttr ".tgi[0].ni[292].y" -6027.14306640625;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 2067.142822265625;
	setAttr ".tgi[0].ni[293].y" 7127.14306640625;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 2067.142822265625;
	setAttr ".tgi[0].ni[294].y" 4735.71435546875;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 4061.428466796875;
	setAttr ".tgi[0].ni[295].y" -8570;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 4061.428466796875;
	setAttr ".tgi[0].ni[296].y" -9452.857421875;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" -484.28570556640625;
	setAttr ".tgi[0].ni[297].y" 1351.4285888671875;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 4061.428466796875;
	setAttr ".tgi[0].ni[298].y" -9747.142578125;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 2475.71435546875;
	setAttr ".tgi[0].ni[299].y" -1367.142822265625;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 2475.71435546875;
	setAttr ".tgi[0].ni[300].y" -6321.4287109375;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 4061.428466796875;
	setAttr ".tgi[0].ni[301].y" -9158.5712890625;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 4444.28564453125;
	setAttr ".tgi[0].ni[302].y" 5682.85693359375;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 2067.142822265625;
	setAttr ".tgi[0].ni[303].y" 5931.4287109375;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 2067.142822265625;
	setAttr ".tgi[0].ni[304].y" 6331.4287109375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 4444.28564453125;
	setAttr ".tgi[0].ni[305].y" 6918.5712890625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 2475.71435546875;
	setAttr ".tgi[0].ni[306].y" -5732.85693359375;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 2067.142822265625;
	setAttr ".tgi[0].ni[307].y" 5131.4287109375;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" -484.28570556640625;
	setAttr ".tgi[0].ni[308].y" 2868.571533203125;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" -484.28570556640625;
	setAttr ".tgi[0].ni[309].y" 1948.5714111328125;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[310].y" -697.14288330078125;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 5220;
	setAttr ".tgi[0].ni[311].y" -8314.2861328125;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" -484.28570556640625;
	setAttr ".tgi[0].ni[312].y" 2257.142822265625;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 4061.428466796875;
	setAttr ".tgi[0].ni[313].y" -12472.857421875;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 2475.71435546875;
	setAttr ".tgi[0].ni[314].y" -5144.28564453125;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[315].y" -1327.142822265625;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[316].y" 1970;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 2067.142822265625;
	setAttr ".tgi[0].ni[317].y" 6727.14306640625;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 2067.142822265625;
	setAttr ".tgi[0].ni[318].y" 5528.5712890625;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" -484.28570556640625;
	setAttr ".tgi[0].ni[319].y" 2574.28564453125;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[320].y" 1070;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[321].y" -187.14285278320312;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 4444.28564453125;
	setAttr ".tgi[0].ni[322].y" 7441.4287109375;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" -484.28570556640625;
	setAttr ".tgi[0].ni[323].y" 1645.7142333984375;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 4444.28564453125;
	setAttr ".tgi[0].ni[324].y" 8620;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 4825.71435546875;
	setAttr ".tgi[0].ni[325].y" -5875.71435546875;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 4061.428466796875;
	setAttr ".tgi[0].ni[326].y" -10142.857421875;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 4061.428466796875;
	setAttr ".tgi[0].ni[327].y" -11330;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 4061.428466796875;
	setAttr ".tgi[0].ni[328].y" -10934.2861328125;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 4061.428466796875;
	setAttr ".tgi[0].ni[329].y" -11725.7138671875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 2475.71435546875;
	setAttr ".tgi[0].ni[330].y" 3121.428466796875;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 4061.428466796875;
	setAttr ".tgi[0].ni[331].y" -10538.5712890625;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[332].y" 350;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 2067.142822265625;
	setAttr ".tgi[0].ni[333].y" 4282.85693359375;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" -484.28570556640625;
	setAttr ".tgi[0].ni[334].y" 1057.142822265625;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 2475.71435546875;
	setAttr ".tgi[0].ni[335].y" -971.4285888671875;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 2475.71435546875;
	setAttr ".tgi[0].ni[336].y" -1762.857177734375;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 4444.28564453125;
	setAttr ".tgi[0].ni[337].y" 6452.85693359375;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 4061.428466796875;
	setAttr ".tgi[0].ni[338].y" -8864.2861328125;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 2475.71435546875;
	setAttr ".tgi[0].ni[339].y" -5438.5712890625;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[340].y" -1910;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 4061.428466796875;
	setAttr ".tgi[0].ni[341].y" -12020;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 4444.28564453125;
	setAttr ".tgi[0].ni[342].y" 8211.4287109375;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 2882.857177734375;
	setAttr ".tgi[0].ni[343].y" -1371.4285888671875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 2882.857177734375;
	setAttr ".tgi[0].ni[344].y" 11851.4287109375;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 2882.857177734375;
	setAttr ".tgi[0].ni[345].y" -975.71429443359375;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 4825.71435546875;
	setAttr ".tgi[0].ni[346].y" 9288.5712890625;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 2882.857177734375;
	setAttr ".tgi[0].ni[347].y" -2105.71435546875;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" -874.28570556640625;
	setAttr ".tgi[0].ni[348].y" 9411.4287109375;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 2067.142822265625;
	setAttr ".tgi[0].ni[349].y" 2365.71435546875;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" -874.28570556640625;
	setAttr ".tgi[0].ni[350].y" 8621.4287109375;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" -874.28570556640625;
	setAttr ".tgi[0].ni[351].y" 9814.2861328125;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 2067.142822265625;
	setAttr ".tgi[0].ni[352].y" 507.14285278320312;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 2067.142822265625;
	setAttr ".tgi[0].ni[353].y" 104.28571319580078;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 2067.142822265625;
	setAttr ".tgi[0].ni[354].y" -572.85711669921875;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 2882.857177734375;
	setAttr ".tgi[0].ni[355].y" 11060;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 2475.71435546875;
	setAttr ".tgi[0].ni[356].y" -2677.142822265625;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 4444.28564453125;
	setAttr ".tgi[0].ni[357].y" -6985.71435546875;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 4825.71435546875;
	setAttr ".tgi[0].ni[358].y" 11425.7138671875;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 2475.71435546875;
	setAttr ".tgi[0].ni[359].y" -2158.571533203125;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" -874.28570556640625;
	setAttr ".tgi[0].ni[360].y" 10222.857421875;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" -874.28570556640625;
	setAttr ".tgi[0].ni[361].y" 8991.4287109375;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 2882.857177734375;
	setAttr ".tgi[0].ni[362].y" -7920;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 2882.857177734375;
	setAttr ".tgi[0].ni[363].y" -8935.7138671875;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 4444.28564453125;
	setAttr ".tgi[0].ni[364].y" -6748.5712890625;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 2882.857177734375;
	setAttr ".tgi[0].ni[365].y" 11455.7138671875;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 4825.71435546875;
	setAttr ".tgi[0].ni[366].y" 12081.4287109375;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 2882.857177734375;
	setAttr ".tgi[0].ni[367].y" 10325.7138671875;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 2882.857177734375;
	setAttr ".tgi[0].ni[368].y" -1767.142822265625;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 2882.857177734375;
	setAttr ".tgi[0].ni[369].y" -9735.7138671875;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 2882.857177734375;
	setAttr ".tgi[0].ni[370].y" -2782.857177734375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 4444.28564453125;
	setAttr ".tgi[0].ni[371].y" -6274.28564453125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 4444.28564453125;
	setAttr ".tgi[0].ni[372].y" -7222.85693359375;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 2882.857177734375;
	setAttr ".tgi[0].ni[373].y" 12190;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 2882.857177734375;
	setAttr ".tgi[0].ni[374].y" -497.14285278320312;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 4444.28564453125;
	setAttr ".tgi[0].ni[375].y" -6037.14306640625;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 2067.142822265625;
	setAttr ".tgi[0].ni[376].y" -234.28572082519531;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 4825.71435546875;
	setAttr ".tgi[0].ni[377].y" 10418.5712890625;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 4444.28564453125;
	setAttr ".tgi[0].ni[378].y" -6511.4287109375;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 2882.857177734375;
	setAttr ".tgi[0].ni[379].y" -2444.28564453125;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 2475.71435546875;
	setAttr ".tgi[0].ni[380].y" -3468.571533203125;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" -874.28570556640625;
	setAttr ".tgi[0].ni[381].y" 10638.5712890625;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 2882.857177734375;
	setAttr ".tgi[0].ni[382].y" -8258.5712890625;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" -874.28570556640625;
	setAttr ".tgi[0].ni[383].y" 8282.857421875;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 4825.71435546875;
	setAttr ".tgi[0].ni[384].y" 12432.857421875;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 2475.71435546875;
	setAttr ".tgi[0].ni[385].y" -3072.857177734375;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 4444.28564453125;
	setAttr ".tgi[0].ni[386].y" -5800;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 2882.857177734375;
	setAttr ".tgi[0].ni[387].y" -7581.4287109375;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 4825.71435546875;
	setAttr ".tgi[0].ni[388].y" 13088.5712890625;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" -874.28570556640625;
	setAttr ".tgi[0].ni[389].y" 7944.28564453125;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 2882.857177734375;
	setAttr ".tgi[0].ni[390].y" -8597.142578125;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 2882.857177734375;
	setAttr ".tgi[0].ni[391].y" -9274.2861328125;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" 2882.857177734375;
	setAttr ".tgi[0].ni[392].y" 10721.4287109375;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 2882.857177734375;
	setAttr ".tgi[0].ni[393].y" 9930;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -484.28570556640625;
	setAttr ".tgi[0].ni[394].y" 10207.142578125;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 2475.71435546875;
	setAttr ".tgi[0].ni[395].y" 4287.14306640625;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" -484.28570556640625;
	setAttr ".tgi[0].ni[396].y" 9181.4287109375;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 4825.71435546875;
	setAttr ".tgi[0].ni[397].y" -7057.14306640625;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 4825.71435546875;
	setAttr ".tgi[0].ni[398].y" -6517.14306640625;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 5220;
	setAttr ".tgi[0].ni[399].y" 12490;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 2475.71435546875;
	setAttr ".tgi[0].ni[400].y" 5764.28564453125;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" -94.285713195800781;
	setAttr ".tgi[0].ni[401].y" 2827.142822265625;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 2475.71435546875;
	setAttr ".tgi[0].ni[402].y" 6102.85693359375;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" -94.285713195800781;
	setAttr ".tgi[0].ni[403].y" 1612.857177734375;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" -94.285713195800781;
	setAttr ".tgi[0].ni[404].y" 2090;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" -2958.571533203125;
	setAttr ".tgi[0].ni[405].y" 10324.2861328125;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 4444.28564453125;
	setAttr ".tgi[0].ni[406].y" -7460;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 4444.28564453125;
	setAttr ".tgi[0].ni[407].y" -9594.2861328125;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 4825.71435546875;
	setAttr ".tgi[0].ni[408].y" 8632.857421875;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 4444.28564453125;
	setAttr ".tgi[0].ni[409].y" -9357.142578125;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 2882.857177734375;
	setAttr ".tgi[0].ni[410].y" 5304.28564453125;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 2882.857177734375;
	setAttr ".tgi[0].ni[411].y" 3728.571533203125;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" 4444.28564453125;
	setAttr ".tgi[0].ni[412].y" -10068.5712890625;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 2475.71435546875;
	setAttr ".tgi[0].ni[413].y" 5087.14306640625;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" 2882.857177734375;
	setAttr ".tgi[0].ni[414].y" 3332.857177734375;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" -94.285713195800781;
	setAttr ".tgi[0].ni[415].y" 2572.857177734375;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" -94.285713195800781;
	setAttr ".tgi[0].ni[416].y" 2330;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 2067.142822265625;
	setAttr ".tgi[0].ni[417].y" -1372.857177734375;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 2882.857177734375;
	setAttr ".tgi[0].ni[418].y" 1637.142822265625;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 2882.857177734375;
	setAttr ".tgi[0].ni[419].y" 1274.2857666015625;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 4444.28564453125;
	setAttr ".tgi[0].ni[420].y" -8408.5712890625;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 4444.28564453125;
	setAttr ".tgi[0].ni[421].y" -8171.4287109375;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 4444.28564453125;
	setAttr ".tgi[0].ni[422].y" -9831.4287109375;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" -484.28570556640625;
	setAttr ".tgi[0].ni[423].y" 10750;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" -484.28570556640625;
	setAttr ".tgi[0].ni[424].y" 10481.4287109375;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" -484.28570556640625;
	setAttr ".tgi[0].ni[425].y" 9942.857421875;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 2475.71435546875;
	setAttr ".tgi[0].ni[426].y" 6441.4287109375;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 4825.71435546875;
	setAttr ".tgi[0].ni[427].y" 9762.857421875;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 5220;
	setAttr ".tgi[0].ni[428].y" -8437.142578125;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 4444.28564453125;
	setAttr ".tgi[0].ni[429].y" -9120;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 4444.28564453125;
	setAttr ".tgi[0].ni[430].y" -7697.14306640625;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" -94.285713195800781;
	setAttr ".tgi[0].ni[431].y" 3070;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 4444.28564453125;
	setAttr ".tgi[0].ni[432].y" -8645.7138671875;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 2067.142822265625;
	setAttr ".tgi[0].ni[433].y" -1034.2857666015625;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 4444.28564453125;
	setAttr ".tgi[0].ni[434].y" -7934.28564453125;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 2475.71435546875;
	setAttr ".tgi[0].ni[435].y" 4748.5712890625;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 2475.71435546875;
	setAttr ".tgi[0].ni[436].y" 5425.71435546875;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 2475.71435546875;
	setAttr ".tgi[0].ni[437].y" 3891.428466796875;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 4444.28564453125;
	setAttr ".tgi[0].ni[438].y" -8882.857421875;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 2882.857177734375;
	setAttr ".tgi[0].ni[439].y" 2937.142822265625;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 2882.857177734375;
	setAttr ".tgi[0].ni[440].y" 935.71429443359375;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" -94.285713195800781;
	setAttr ".tgi[0].ni[441].y" 1850;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 5220;
	setAttr ".tgi[0].ni[442].y" 12955.7138671875;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" 4825.71435546875;
	setAttr ".tgi[0].ni[443].y" 10712.857421875;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 4825.71435546875;
	setAttr ".tgi[0].ni[444].y" 8281.4287109375;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 2882.857177734375;
	setAttr ".tgi[0].ni[445].y" 2485.71435546875;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" -484.28570556640625;
	setAttr ".tgi[0].ni[446].y" 9657.142578125;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" -484.28570556640625;
	setAttr ".tgi[0].ni[447].y" 9462.857421875;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" -484.28570556640625;
	setAttr ".tgi[0].ni[448].y" 8952.857421875;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 4825.71435546875;
	setAttr ".tgi[0].ni[449].y" -6337.14306640625;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 4825.71435546875;
	setAttr ".tgi[0].ni[450].y" -6157.14306640625;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 4825.71435546875;
	setAttr ".tgi[0].ni[451].y" -6697.14306640625;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" 4825.71435546875;
	setAttr ".tgi[0].ni[452].y" -6877.14306640625;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 4825.71435546875;
	setAttr ".tgi[0].ni[453].y" -7237.14306640625;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 3295.71435546875;
	setAttr ".tgi[0].ni[454].y" -4008.571533203125;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" 3295.71435546875;
	setAttr ".tgi[0].ni[455].y" -4470;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" 3295.71435546875;
	setAttr ".tgi[0].ni[456].y" -4707.14306640625;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 3295.71435546875;
	setAttr ".tgi[0].ni[457].y" -4205.71435546875;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 5220;
	setAttr ".tgi[0].ni[458].y" 11327.142578125;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 2475.71435546875;
	setAttr ".tgi[0].ni[459].y" -251.42857360839844;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" 2882.857177734375;
	setAttr ".tgi[0].ni[460].y" 6465.71435546875;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" 254.28572082519531;
	setAttr ".tgi[0].ni[461].y" 3262.857177734375;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 3295.71435546875;
	setAttr ".tgi[0].ni[462].y" 1277.142822265625;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 254.28572082519531;
	setAttr ".tgi[0].ni[463].y" 3080;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 2475.71435546875;
	setAttr ".tgi[0].ni[464].y" -431.42855834960938;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 2882.857177734375;
	setAttr ".tgi[0].ni[465].y" 7595.71435546875;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 3295.71435546875;
	setAttr ".tgi[0].ni[466].y" 10215.7138671875;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" 3295.71435546875;
	setAttr ".tgi[0].ni[467].y" -5150;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" 3295.71435546875;
	setAttr ".tgi[0].ni[468].y" 11254.2861328125;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" 3295.71435546875;
	setAttr ".tgi[0].ni[469].y" 10980;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 3295.71435546875;
	setAttr ".tgi[0].ni[470].y" 3147.142822265625;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" 3295.71435546875;
	setAttr ".tgi[0].ni[471].y" 830;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 5220;
	setAttr ".tgi[0].ni[472].y" 11982.857421875;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" 3295.71435546875;
	setAttr ".tgi[0].ni[473].y" 11490;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" 3295.71435546875;
	setAttr ".tgi[0].ni[474].y" -5330;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 3295.71435546875;
	setAttr ".tgi[0].ni[475].y" 10575.7138671875;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" 3295.71435546875;
	setAttr ".tgi[0].ni[476].y" 10395.7138671875;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 3295.71435546875;
	setAttr ".tgi[0].ni[477].y" 1505.7142333984375;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 2475.71435546875;
	setAttr ".tgi[0].ni[478].y" -71.428573608398438;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 5220;
	setAttr ".tgi[0].ni[479].y" 10255.7138671875;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 2475.71435546875;
	setAttr ".tgi[0].ni[480].y" -791.4285888671875;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" 2475.71435546875;
	setAttr ".tgi[0].ni[481].y" 2725.71435546875;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 2882.857177734375;
	setAttr ".tgi[0].ni[482].y" 8204.2861328125;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 2882.857177734375;
	setAttr ".tgi[0].ni[483].y" 7415.71435546875;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" 3295.71435546875;
	setAttr ".tgi[0].ni[484].y" -4897.14306640625;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 5220;
	setAttr ".tgi[0].ni[485].y" 9190;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 3295.71435546875;
	setAttr ".tgi[0].ni[486].y" 1052.857177734375;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 3295.71435546875;
	setAttr ".tgi[0].ni[487].y" 10755.7138671875;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 2475.71435546875;
	setAttr ".tgi[0].ni[488].y" -611.4285888671875;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" 3295.71435546875;
	setAttr ".tgi[0].ni[489].y" 2030;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" 3295.71435546875;
	setAttr ".tgi[0].ni[490].y" 1741.4285888671875;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 2475.71435546875;
	setAttr ".tgi[0].ni[491].y" 108.57142639160156;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 2882.857177734375;
	setAttr ".tgi[0].ni[492].y" 7235.71435546875;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 2882.857177734375;
	setAttr ".tgi[0].ni[493].y" 6285.71435546875;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 2882.857177734375;
	setAttr ".tgi[0].ni[494].y" 6882.85693359375;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 2882.857177734375;
	setAttr ".tgi[0].ni[495].y" 6702.85693359375;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" -94.285713195800781;
	setAttr ".tgi[0].ni[496].y" 10820;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" 3670;
	setAttr ".tgi[0].ni[497].y" -741.4285888671875;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" 4825.71435546875;
	setAttr ".tgi[0].ni[498].y" -8677.142578125;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 5220;
	setAttr ".tgi[0].ni[499].y" -8560;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 3670;
	setAttr ".tgi[0].ni[500].y" -1110;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 3295.71435546875;
	setAttr ".tgi[0].ni[501].y" 5115.71435546875;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" -94.285713195800781;
	setAttr ".tgi[0].ni[502].y" 10942.857421875;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 3295.71435546875;
	setAttr ".tgi[0].ni[503].y" 4698.5712890625;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 254.28572082519531;
	setAttr ".tgi[0].ni[504].y" 2165.71435546875;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 4825.71435546875;
	setAttr ".tgi[0].ni[505].y" -8317.142578125;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" 4825.71435546875;
	setAttr ".tgi[0].ni[506].y" -8497.142578125;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" 3295.71435546875;
	setAttr ".tgi[0].ni[507].y" 4935.71435546875;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" -94.285713195800781;
	setAttr ".tgi[0].ni[508].y" 10451.4287109375;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 5220;
	setAttr ".tgi[0].ni[509].y" 9787.142578125;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 4825.71435546875;
	setAttr ".tgi[0].ni[510].y" -7597.14306640625;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" 4825.71435546875;
	setAttr ".tgi[0].ni[511].y" -9037.142578125;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" -94.285713195800781;
	setAttr ".tgi[0].ni[512].y" 10205.7138671875;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 4825.71435546875;
	setAttr ".tgi[0].ni[513].y" -7777.14306640625;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 3295.71435546875;
	setAttr ".tgi[0].ni[514].y" 6112.85693359375;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 254.28572082519531;
	setAttr ".tgi[0].ni[515].y" 2528.571533203125;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" -2625.71435546875;
	setAttr ".tgi[0].ni[516].y" 9374.2861328125;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" -94.285713195800781;
	setAttr ".tgi[0].ni[517].y" 10328.5712890625;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 3295.71435546875;
	setAttr ".tgi[0].ni[518].y" 5932.85693359375;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 5220;
	setAttr ".tgi[0].ni[519].y" 10808.5712890625;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 4825.71435546875;
	setAttr ".tgi[0].ni[520].y" -9397.142578125;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" -94.285713195800781;
	setAttr ".tgi[0].ni[521].y" 10697.142578125;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 5220;
	setAttr ".tgi[0].ni[522].y" -8682.857421875;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" 4825.71435546875;
	setAttr ".tgi[0].ni[523].y" -7417.14306640625;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" -4270;
	setAttr ".tgi[0].ni[524].y" 10338.5712890625;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 3295.71435546875;
	setAttr ".tgi[0].ni[525].y" 7052.85693359375;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" 254.28572082519531;
	setAttr ".tgi[0].ni[526].y" 2711.428466796875;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" 3295.71435546875;
	setAttr ".tgi[0].ni[527].y" 6588.5712890625;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 5220;
	setAttr ".tgi[0].ni[528].y" 8182.85693359375;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 5605.71435546875;
	setAttr ".tgi[0].ni[529].y" 12975.7138671875;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" 5220;
	setAttr ".tgi[0].ni[530].y" -8805.7138671875;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" 3295.71435546875;
	setAttr ".tgi[0].ni[531].y" 5567.14306640625;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" -94.285713195800781;
	setAttr ".tgi[0].ni[532].y" 10574.2861328125;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 5605.71435546875;
	setAttr ".tgi[0].ni[533].y" 12468.5712890625;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 5220;
	setAttr ".tgi[0].ni[534].y" -8928.5712890625;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 5220;
	setAttr ".tgi[0].ni[535].y" -9051.4287109375;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" 4825.71435546875;
	setAttr ".tgi[0].ni[536].y" -8137.14306640625;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 254.28572082519531;
	setAttr ".tgi[0].ni[537].y" 2892.857177734375;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 5220;
	setAttr ".tgi[0].ni[538].y" -9174.2861328125;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 254.28572082519531;
	setAttr ".tgi[0].ni[539].y" 2347.142822265625;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 5220;
	setAttr ".tgi[0].ni[540].y" -9297.142578125;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" 3670;
	setAttr ".tgi[0].ni[541].y" -372.85714721679688;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 3670;
	setAttr ".tgi[0].ni[542].y" -495.71429443359375;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 4825.71435546875;
	setAttr ".tgi[0].ni[543].y" -8857.142578125;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 4825.71435546875;
	setAttr ".tgi[0].ni[544].y" -7957.14306640625;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" 4825.71435546875;
	setAttr ".tgi[0].ni[545].y" -9217.142578125;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 5220;
	setAttr ".tgi[0].ni[546].y" 8690;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" -94.285713195800781;
	setAttr ".tgi[0].ni[547].y" 10082.857421875;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" 3670;
	setAttr ".tgi[0].ni[548].y" -618.5714111328125;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 5605.71435546875;
	setAttr ".tgi[0].ni[549].y" 11968.5712890625;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 3670;
	setAttr ".tgi[0].ni[550].y" -864.28570556640625;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 3670;
	setAttr ".tgi[0].ni[551].y" -987.14288330078125;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 3670;
	setAttr ".tgi[0].ni[552].y" 10801.4287109375;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 3670;
	setAttr ".tgi[0].ni[553].y" 10678.5712890625;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" 3670;
	setAttr ".tgi[0].ni[554].y" 10555.7138671875;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 3670;
	setAttr ".tgi[0].ni[555].y" 10432.857421875;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 5605.71435546875;
	setAttr ".tgi[0].ni[556].y" 11312.857421875;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 3670;
	setAttr ".tgi[0].ni[557].y" 10310;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" 3670;
	setAttr ".tgi[0].ni[558].y" 10187.142578125;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" 3670;
	setAttr ".tgi[0].ni[559].y" 10064.2861328125;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 625.71429443359375;
	setAttr ".tgi[0].ni[560].y" 3455.71435546875;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 3295.71435546875;
	setAttr ".tgi[0].ni[561].y" 8932.857421875;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" 625.71429443359375;
	setAttr ".tgi[0].ni[562].y" 2841.428466796875;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 3670;
	setAttr ".tgi[0].ni[563].y" 4850;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 3670;
	setAttr ".tgi[0].ni[564].y" 4604.28564453125;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 2882.857177734375;
	setAttr ".tgi[0].ni[565].y" 4645.71435546875;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" 625.71429443359375;
	setAttr ".tgi[0].ni[566].y" 2718.571533203125;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" -2267.142822265625;
	setAttr ".tgi[0].ni[567].y" 9834.2861328125;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 5220;
	setAttr ".tgi[0].ni[568].y" -9420;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 625.71429443359375;
	setAttr ".tgi[0].ni[569].y" 3210;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 5220;
	setAttr ".tgi[0].ni[570].y" -9542.857421875;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" 625.71429443359375;
	setAttr ".tgi[0].ni[571].y" 3332.857177734375;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 5605.71435546875;
	setAttr ".tgi[0].ni[572].y" 10865.7138671875;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" 3670;
	setAttr ".tgi[0].ni[573].y" 4727.14306640625;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 5220;
	setAttr ".tgi[0].ni[574].y" -9665.7138671875;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 5220;
	setAttr ".tgi[0].ni[575].y" -9788.5712890625;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" 3670;
	setAttr ".tgi[0].ni[576].y" 4481.4287109375;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" 2882.857177734375;
	setAttr ".tgi[0].ni[577].y" 4400;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" 2882.857177734375;
	setAttr ".tgi[0].ni[578].y" 4277.14306640625;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" 2882.857177734375;
	setAttr ".tgi[0].ni[579].y" 4522.85693359375;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" 3670;
	setAttr ".tgi[0].ni[580].y" 5095.71435546875;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 5605.71435546875;
	setAttr ".tgi[0].ni[581].y" 10212.857421875;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 2882.857177734375;
	setAttr ".tgi[0].ni[582].y" 3908.571533203125;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" 3295.71435546875;
	setAttr ".tgi[0].ni[583].y" 8318.5712890625;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 5605.71435546875;
	setAttr ".tgi[0].ni[584].y" 9757.142578125;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 625.71429443359375;
	setAttr ".tgi[0].ni[585].y" 2964.28564453125;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 3670;
	setAttr ".tgi[0].ni[586].y" 5218.5712890625;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 2882.857177734375;
	setAttr ".tgi[0].ni[587].y" 4154.28564453125;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" 2882.857177734375;
	setAttr ".tgi[0].ni[588].y" 4031.428466796875;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 3295.71435546875;
	setAttr ".tgi[0].ni[589].y" 9178.5712890625;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 5605.71435546875;
	setAttr ".tgi[0].ni[590].y" 9175.7138671875;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 3295.71435546875;
	setAttr ".tgi[0].ni[591].y" 9055.7138671875;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 3670;
	setAttr ".tgi[0].ni[592].y" 4972.85693359375;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 3295.71435546875;
	setAttr ".tgi[0].ni[593].y" 8441.4287109375;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 625.71429443359375;
	setAttr ".tgi[0].ni[594].y" 3087.142822265625;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 3295.71435546875;
	setAttr ".tgi[0].ni[595].y" 8687.142578125;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" 3295.71435546875;
	setAttr ".tgi[0].ni[596].y" 8564.2861328125;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 3295.71435546875;
	setAttr ".tgi[0].ni[597].y" 8810;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 5220;
	setAttr ".tgi[0].ni[598].y" -9911.4287109375;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 3670;
	setAttr ".tgi[0].ni[599].y" 6875.71435546875;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 3670;
	setAttr ".tgi[0].ni[600].y" 6061.4287109375;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" 5220;
	setAttr ".tgi[0].ni[601].y" -10034.2861328125;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" 3670;
	setAttr ".tgi[0].ni[602].y" 6670;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" 3670;
	setAttr ".tgi[0].ni[603].y" 6547.14306640625;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 3670;
	setAttr ".tgi[0].ni[604].y" 5938.5712890625;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" 5220;
	setAttr ".tgi[0].ni[605].y" -10157.142578125;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" 5220;
	setAttr ".tgi[0].ni[606].y" -10280;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" 5220;
	setAttr ".tgi[0].ni[607].y" -10402.857421875;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" 3670;
	setAttr ".tgi[0].ni[608].y" 6184.28564453125;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" 5605.71435546875;
	setAttr ".tgi[0].ni[609].y" 8668.5712890625;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" -3925.71435546875;
	setAttr ".tgi[0].ni[610].y" 9595.7138671875;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 5220;
	setAttr ".tgi[0].ni[611].y" -10525.7138671875;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 5605.71435546875;
	setAttr ".tgi[0].ni[612].y" 8168.5712890625;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" 3670;
	setAttr ".tgi[0].ni[613].y" 7117.14306640625;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 3670;
	setAttr ".tgi[0].ni[614].y" 6380;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" 5220;
	setAttr ".tgi[0].ni[615].y" -10648.5712890625;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" 5220;
	setAttr ".tgi[0].ni[616].y" -10771.4287109375;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" 2475.71435546875;
	setAttr ".tgi[0].ni[617].y" -4555.71435546875;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" -94.285713195800781;
	setAttr ".tgi[0].ni[618].y" -304.28570556640625;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" -94.285713195800781;
	setAttr ".tgi[0].ni[619].y" -175.71427917480469;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" -94.285713195800781;
	setAttr ".tgi[0].ni[620].y" -3698.571533203125;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" 4061.428466796875;
	setAttr ".tgi[0].ni[621].y" -15218.5712890625;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" 4061.428466796875;
	setAttr ".tgi[0].ni[622].y" -4704.28564453125;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" 3670;
	setAttr ".tgi[0].ni[623].y" -19205.71484375;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" 3670;
	setAttr ".tgi[0].ni[624].y" -19650;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" 3670;
	setAttr ".tgi[0].ni[625].y" -17257.142578125;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" 4061.428466796875;
	setAttr ".tgi[0].ni[626].y" -5351.4287109375;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[627].y" -1231.4285888671875;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[628].y" -1558.5714111328125;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[629].y" -1932.857177734375;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" 4061.428466796875;
	setAttr ".tgi[0].ni[630].y" -5452.85693359375;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" 4061.428466796875;
	setAttr ".tgi[0].ni[631].y" -5554.28564453125;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[632].y" -2265.71435546875;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" 5220;
	setAttr ".tgi[0].ni[633].y" 7337.14306640625;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" 5220;
	setAttr ".tgi[0].ni[634].y" 7235.71435546875;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" -484.28570556640625;
	setAttr ".tgi[0].ni[635].y" -1610;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" -484.28570556640625;
	setAttr ".tgi[0].ni[636].y" -1350;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" -484.28570556640625;
	setAttr ".tgi[0].ni[637].y" -1090;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" -484.28570556640625;
	setAttr ".tgi[0].ni[638].y" -570;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" -484.28570556640625;
	setAttr ".tgi[0].ni[639].y" -5090;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" 5220;
	setAttr ".tgi[0].ni[640].y" 7438.5712890625;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" -484.28570556640625;
	setAttr ".tgi[0].ni[641].y" -830;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" -484.28570556640625;
	setAttr ".tgi[0].ni[642].y" -310;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" 4061.428466796875;
	setAttr ".tgi[0].ni[643].y" -4805.71435546875;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" 3670;
	setAttr ".tgi[0].ni[644].y" -17701.427734375;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 3670;
	setAttr ".tgi[0].ni[645].y" -18704.28515625;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 3670;
	setAttr ".tgi[0].ni[646].y" -18260;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 4061.428466796875;
	setAttr ".tgi[0].ni[647].y" -4907.14306640625;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 2475.71435546875;
	setAttr ".tgi[0].ni[648].y" -14414.2861328125;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 2475.71435546875;
	setAttr ".tgi[0].ni[649].y" -14880;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 2475.71435546875;
	setAttr ".tgi[0].ni[650].y" 12295.7138671875;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 2475.71435546875;
	setAttr ".tgi[0].ni[651].y" -14005.7138671875;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 2475.71435546875;
	setAttr ".tgi[0].ni[652].y" -12780;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 2475.71435546875;
	setAttr ".tgi[0].ni[653].y" -12428.5712890625;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 2475.71435546875;
	setAttr ".tgi[0].ni[654].y" -13597.142578125;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 4444.28564453125;
	setAttr ".tgi[0].ni[655].y" 9731.4287109375;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" 2475.71435546875;
	setAttr ".tgi[0].ni[656].y" -13245.7138671875;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[657].y" 5082.85693359375;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[658].y" 7215.71435546875;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[659].y" 4152.85693359375;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[660].y" 4744.28564453125;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[661].y" 4254.28564453125;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[662].y" 5812.85693359375;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[663].y" 5434.28564453125;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[664].y" 6220;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[665].y" 4355.71435546875;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[666].y" 6874.28564453125;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" 5220;
	setAttr ".tgi[0].ni[667].y" -10894.2861328125;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 5220;
	setAttr ".tgi[0].ni[668].y" -11017.142578125;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 4825.71435546875;
	setAttr ".tgi[0].ni[669].y" -10117.142578125;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 5220;
	setAttr ".tgi[0].ni[670].y" -11140;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 5220;
	setAttr ".tgi[0].ni[671].y" -11262.857421875;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 4825.71435546875;
	setAttr ".tgi[0].ni[672].y" -9757.142578125;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 4825.71435546875;
	setAttr ".tgi[0].ni[673].y" -9937.142578125;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" 5605.71435546875;
	setAttr ".tgi[0].ni[674].y" -2677.142822265625;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" -5257.14306640625;
	setAttr ".tgi[0].ni[675].y" 13852.857421875;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" 5220;
	setAttr ".tgi[0].ni[676].y" -11385.7138671875;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 5220;
	setAttr ".tgi[0].ni[677].y" -11508.5712890625;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 4444.28564453125;
	setAttr ".tgi[0].ni[678].y" -11728.5712890625;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 4061.428466796875;
	setAttr ".tgi[0].ni[679].y" -14752.857421875;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 4444.28564453125;
	setAttr ".tgi[0].ni[680].y" -3057.142822265625;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 4061.428466796875;
	setAttr ".tgi[0].ni[681].y" -13992.857421875;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 4825.71435546875;
	setAttr ".tgi[0].ni[682].y" -2711.428466796875;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 4444.28564453125;
	setAttr ".tgi[0].ni[683].y" -10542.857421875;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" 5220;
	setAttr ".tgi[0].ni[684].y" -11631.4287109375;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 4825.71435546875;
	setAttr ".tgi[0].ni[685].y" -9577.142578125;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" 4444.28564453125;
	setAttr ".tgi[0].ni[686].y" -11017.142578125;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" 5220;
	setAttr ".tgi[0].ni[687].y" -2654.28564453125;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 4444.28564453125;
	setAttr ".tgi[0].ni[688].y" -10780;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 4061.428466796875;
	setAttr ".tgi[0].ni[689].y" -12824.2861328125;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 4825.71435546875;
	setAttr ".tgi[0].ni[690].y" -10477.142578125;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 4061.428466796875;
	setAttr ".tgi[0].ni[691].y" -14344.2861328125;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" 4061.428466796875;
	setAttr ".tgi[0].ni[692].y" -13584.2861328125;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 4061.428466796875;
	setAttr ".tgi[0].ni[693].y" -13175.7138671875;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" 4444.28564453125;
	setAttr ".tgi[0].ni[694].y" -11254.2861328125;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" 4825.71435546875;
	setAttr ".tgi[0].ni[695].y" -10297.142578125;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" 4444.28564453125;
	setAttr ".tgi[0].ni[696].y" -10305.7138671875;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" 4825.71435546875;
	setAttr ".tgi[0].ni[697].y" -10657.142578125;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" 4444.28564453125;
	setAttr ".tgi[0].ni[698].y" -11491.4287109375;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" 3670;
	setAttr ".tgi[0].ni[699].y" 1480;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" 5605.71435546875;
	setAttr ".tgi[0].ni[700].y" 288.57144165039062;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" 3670;
	setAttr ".tgi[0].ni[701].y" -1867.142822265625;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" 3670;
	setAttr ".tgi[0].ni[702].y" -1744.2857666015625;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" 3670;
	setAttr ".tgi[0].ni[703].y" -2358.571533203125;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" 3670;
	setAttr ".tgi[0].ni[704].y" 1602.857177734375;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" 3670;
	setAttr ".tgi[0].ni[705].y" -1990;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" 3670;
	setAttr ".tgi[0].ni[706].y" -2112.857177734375;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" 3670;
	setAttr ".tgi[0].ni[707].y" -2235.71435546875;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 5605.71435546875;
	setAttr ".tgi[0].ni[708].y" -1455.7142333984375;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 3670;
	setAttr ".tgi[0].ni[709].y" 865.71429443359375;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 3670;
	setAttr ".tgi[0].ni[710].y" 1234.2857666015625;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 3670;
	setAttr ".tgi[0].ni[711].y" 1357.142822265625;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 3670;
	setAttr ".tgi[0].ni[712].y" 988.5714111328125;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" 3670;
	setAttr ".tgi[0].ni[713].y" 1111.4285888671875;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 3295.71435546875;
	setAttr ".tgi[0].ni[714].y" -6495.71435546875;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 3295.71435546875;
	setAttr ".tgi[0].ni[715].y" -2255.71435546875;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 3295.71435546875;
	setAttr ".tgi[0].ni[716].y" -6315.71435546875;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 3295.71435546875;
	setAttr ".tgi[0].ni[717].y" -2057.142822265625;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" 2475.71435546875;
	setAttr ".tgi[0].ni[718].y" -11404.2861328125;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 2882.857177734375;
	setAttr ".tgi[0].ni[719].y" -10760;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" 2475.71435546875;
	setAttr ".tgi[0].ni[720].y" -9988.5712890625;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 2882.857177734375;
	setAttr ".tgi[0].ni[721].y" -5872.85693359375;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 4444.28564453125;
	setAttr ".tgi[0].ni[722].y" -11965.7138671875;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" 2882.857177734375;
	setAttr ".tgi[0].ni[723].y" -5184.28564453125;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 3295.71435546875;
	setAttr ".tgi[0].ni[724].y" -5775.71435546875;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 2882.857177734375;
	setAttr ".tgi[0].ni[725].y" -5581.4287109375;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 3295.71435546875;
	setAttr ".tgi[0].ni[726].y" -5955.71435546875;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" 3295.71435546875;
	setAttr ".tgi[0].ni[727].y" -6855.71435546875;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 3295.71435546875;
	setAttr ".tgi[0].ni[728].y" -2615.71435546875;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 3295.71435546875;
	setAttr ".tgi[0].ni[729].y" -2975.71435546875;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" 2882.857177734375;
	setAttr ".tgi[0].ni[730].y" -6110;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" 2882.857177734375;
	setAttr ".tgi[0].ni[731].y" -12018.5712890625;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" 2882.857177734375;
	setAttr ".tgi[0].ni[732].y" -10997.142578125;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" 2882.857177734375;
	setAttr ".tgi[0].ni[733].y" -10522.857421875;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" 2882.857177734375;
	setAttr ".tgi[0].ni[734].y" -11234.2861328125;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" 3295.71435546875;
	setAttr ".tgi[0].ni[735].y" -6675.71435546875;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" 3295.71435546875;
	setAttr ".tgi[0].ni[736].y" -2435.71435546875;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" 3295.71435546875;
	setAttr ".tgi[0].ni[737].y" -1801.4285888671875;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" 5220;
	setAttr ".tgi[0].ni[738].y" -1497.142822265625;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" 3295.71435546875;
	setAttr ".tgi[0].ni[739].y" -2795.71435546875;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" 3670;
	setAttr ".tgi[0].ni[740].y" -1621.4285888671875;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" 4825.71435546875;
	setAttr ".tgi[0].ni[741].y" -2360;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" 2882.857177734375;
	setAttr ".tgi[0].ni[742].y" -11781.4287109375;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" 4825.71435546875;
	setAttr ".tgi[0].ni[743].y" 261.42855834960938;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" 2475.71435546875;
	setAttr ".tgi[0].ni[744].y" -10894.2861328125;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" 2882.857177734375;
	setAttr ".tgi[0].ni[745].y" -6347.14306640625;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" 2882.857177734375;
	setAttr ".tgi[0].ni[746].y" -6584.28564453125;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" 2882.857177734375;
	setAttr ".tgi[0].ni[747].y" -11544.2861328125;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" 2882.857177734375;
	setAttr ".tgi[0].ni[748].y" -6821.4287109375;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" 2475.71435546875;
	setAttr ".tgi[0].ni[749].y" -10441.4287109375;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" 3295.71435546875;
	setAttr ".tgi[0].ni[750].y" -6135.71435546875;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" 5220;
	setAttr ".tgi[0].ni[751].y" 310;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" 3670;
	setAttr ".tgi[0].ni[752].y" -13284.2861328125;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" 4061.428466796875;
	setAttr ".tgi[0].ni[753].y" 5035.71435546875;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" 4061.428466796875;
	setAttr ".tgi[0].ni[754].y" 4934.28564453125;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" 3670;
	setAttr ".tgi[0].ni[755].y" -14594.2861328125;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" 3670;
	setAttr ".tgi[0].ni[756].y" -16412.857421875;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" 4061.428466796875;
	setAttr ".tgi[0].ni[757].y" 5137.14306640625;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" 4444.28564453125;
	setAttr ".tgi[0].ni[758].y" -5641.4287109375;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" 3670;
	setAttr ".tgi[0].ni[759].y" -13864.2861328125;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" 3670;
	setAttr ".tgi[0].ni[760].y" -15038.5712890625;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" 3670;
	setAttr ".tgi[0].ni[761].y" -12954.2861328125;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" 2475.71435546875;
	setAttr ".tgi[0].ni[762].y" -15640;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" 2475.71435546875;
	setAttr ".tgi[0].ni[763].y" -16228.5712890625;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" 2475.71435546875;
	setAttr ".tgi[0].ni[764].y" -16817.142578125;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" 2475.71435546875;
	setAttr ".tgi[0].ni[765].y" -15345.7138671875;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" 2475.71435546875;
	setAttr ".tgi[0].ni[766].y" -15934.2861328125;
	setAttr ".tgi[0].ni[766].nvs" 18304;
	setAttr ".tgi[0].ni[767].x" 4444.28564453125;
	setAttr ".tgi[0].ni[767].y" 175.71427917480469;
	setAttr ".tgi[0].ni[767].nvs" 18304;
	setAttr ".tgi[0].ni[768].x" 2475.71435546875;
	setAttr ".tgi[0].ni[768].y" -16522.857421875;
	setAttr ".tgi[0].ni[768].nvs" 18304;
	setAttr ".tgi[0].ni[769].x" 2475.71435546875;
	setAttr ".tgi[0].ni[769].y" -17111.427734375;
	setAttr ".tgi[0].ni[769].nvs" 18304;
	setAttr ".tgi[0].ni[770].x" 2475.71435546875;
	setAttr ".tgi[0].ni[770].y" -8515.7138671875;
	setAttr ".tgi[0].ni[770].nvs" 18304;
	setAttr ".tgi[0].ni[771].x" 2475.71435546875;
	setAttr ".tgi[0].ni[771].y" -9025.7138671875;
	setAttr ".tgi[0].ni[771].nvs" 18304;
	setAttr ".tgi[0].ni[772].x" 2475.71435546875;
	setAttr ".tgi[0].ni[772].y" -9478.5712890625;
	setAttr ".tgi[0].ni[772].nvs" 18304;
	setAttr ".tgi[0].ni[773].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[773].y" -2605.71435546875;
	setAttr ".tgi[0].ni[773].nvs" 18304;
	setAttr ".tgi[0].ni[774].x" -4577.14306640625;
	setAttr ".tgi[0].ni[774].y" 10860;
	setAttr ".tgi[0].ni[774].nvs" 18304;
	setAttr ".tgi[0].ni[775].x" -484.28570556640625;
	setAttr ".tgi[0].ni[775].y" -151.42857360839844;
	setAttr ".tgi[0].ni[775].nvs" 18304;
	setAttr ".tgi[0].ni[776].x" -484.28570556640625;
	setAttr ".tgi[0].ni[776].y" -411.42855834960938;
	setAttr ".tgi[0].ni[776].nvs" 18304;
	setAttr ".tgi[0].ni[777].x" -484.28570556640625;
	setAttr ".tgi[0].ni[777].y" -671.4285888671875;
	setAttr ".tgi[0].ni[777].nvs" 18304;
	setAttr ".tgi[0].ni[778].x" -484.28570556640625;
	setAttr ".tgi[0].ni[778].y" -4988.5712890625;
	setAttr ".tgi[0].ni[778].nvs" 18304;
	setAttr ".tgi[0].ni[779].x" -874.28570556640625;
	setAttr ".tgi[0].ni[779].y" -2148.571533203125;
	setAttr ".tgi[0].ni[779].nvs" 18304;
	setAttr ".tgi[0].ni[780].x" -874.28570556640625;
	setAttr ".tgi[0].ni[780].y" -2897.142822265625;
	setAttr ".tgi[0].ni[780].nvs" 18304;
	setAttr ".tgi[0].ni[781].x" -874.28570556640625;
	setAttr ".tgi[0].ni[781].y" -3328.571533203125;
	setAttr ".tgi[0].ni[781].nvs" 18304;
	setAttr ".tgi[0].ni[782].x" -874.28570556640625;
	setAttr ".tgi[0].ni[782].y" -6287.14306640625;
	setAttr ".tgi[0].ni[782].nvs" 18304;
	setAttr ".tgi[0].ni[783].x" -874.28570556640625;
	setAttr ".tgi[0].ni[783].y" -1342.857177734375;
	setAttr ".tgi[0].ni[783].nvs" 18304;
	setAttr ".tgi[0].ni[784].x" 4825.71435546875;
	setAttr ".tgi[0].ni[784].y" -3151.428466796875;
	setAttr ".tgi[0].ni[784].nvs" 18304;
	setAttr ".tgi[0].ni[785].x" -874.28570556640625;
	setAttr ".tgi[0].ni[785].y" -2522.857177734375;
	setAttr ".tgi[0].ni[785].nvs" 18304;
	setAttr ".tgi[0].ni[786].x" 4825.71435546875;
	setAttr ".tgi[0].ni[786].y" -3050;
	setAttr ".tgi[0].ni[786].nvs" 18304;
	setAttr ".tgi[0].ni[787].x" -874.28570556640625;
	setAttr ".tgi[0].ni[787].y" -1717.142822265625;
	setAttr ".tgi[0].ni[787].nvs" 18304;
	setAttr ".tgi[0].ni[788].x" 2067.142822265625;
	setAttr ".tgi[0].ni[788].y" -9807.142578125;
	setAttr ".tgi[0].ni[788].nvs" 18304;
	setAttr ".tgi[0].ni[789].x" 2067.142822265625;
	setAttr ".tgi[0].ni[789].y" -9477.142578125;
	setAttr ".tgi[0].ni[789].nvs" 18304;
	setAttr ".tgi[0].ni[790].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[790].y" -318.57144165039062;
	setAttr ".tgi[0].ni[790].nvs" 18304;
	setAttr ".tgi[0].ni[791].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[791].y" -1591.4285888671875;
	setAttr ".tgi[0].ni[791].nvs" 18304;
	setAttr ".tgi[0].ni[792].x" 4061.428466796875;
	setAttr ".tgi[0].ni[792].y" 7951.4287109375;
	setAttr ".tgi[0].ni[792].nvs" 18304;
	setAttr ".tgi[0].ni[793].x" 4061.428466796875;
	setAttr ".tgi[0].ni[793].y" 6135.71435546875;
	setAttr ".tgi[0].ni[793].nvs" 18304;
	setAttr ".tgi[0].ni[794].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[794].y" 1517.142822265625;
	setAttr ".tgi[0].ni[794].nvs" 18304;
	setAttr ".tgi[0].ni[795].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[795].y" 2147.142822265625;
	setAttr ".tgi[0].ni[795].nvs" 18304;
	setAttr ".tgi[0].ni[796].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[796].y" 228.57142639160156;
	setAttr ".tgi[0].ni[796].nvs" 18304;
	setAttr ".tgi[0].ni[797].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[797].y" 901.4285888671875;
	setAttr ".tgi[0].ni[797].nvs" 18304;
	setAttr ".tgi[0].ni[798].x" 4061.428466796875;
	setAttr ".tgi[0].ni[798].y" 8052.85693359375;
	setAttr ".tgi[0].ni[798].nvs" 18304;
	setAttr ".tgi[0].ni[799].x" 4061.428466796875;
	setAttr ".tgi[0].ni[799].y" 7850;
	setAttr ".tgi[0].ni[799].nvs" 18304;
	setAttr ".tgi[0].ni[800].x" 4061.428466796875;
	setAttr ".tgi[0].ni[800].y" 6237.14306640625;
	setAttr ".tgi[0].ni[800].nvs" 18304;
	setAttr ".tgi[0].ni[801].x" 2067.142822265625;
	setAttr ".tgi[0].ni[801].y" -9024.2861328125;
	setAttr ".tgi[0].ni[801].nvs" 18304;
	setAttr ".tgi[0].ni[802].x" 1314.2857666015625;
	setAttr ".tgi[0].ni[802].y" -1148.5714111328125;
	setAttr ".tgi[0].ni[802].nvs" 18304;
	setAttr ".tgi[0].ni[803].x" -94.285713195800781;
	setAttr ".tgi[0].ni[803].y" -41.428569793701172;
	setAttr ".tgi[0].ni[803].nvs" 18304;
	setAttr ".tgi[0].ni[804].x" -94.285713195800781;
	setAttr ".tgi[0].ni[804].y" 88.571426391601562;
	setAttr ".tgi[0].ni[804].nvs" 18304;
	setAttr ".tgi[0].ni[805].x" 5605.71435546875;
	setAttr ".tgi[0].ni[805].y" 6752.85693359375;
	setAttr ".tgi[0].ni[805].nvs" 18304;
	setAttr ".tgi[0].ni[806].x" -5564.28564453125;
	setAttr ".tgi[0].ni[806].y" 16398.572265625;
	setAttr ".tgi[0].ni[806].nvs" 18304;
	setAttr ".tgi[0].ni[807].x" -94.285713195800781;
	setAttr ".tgi[0].ni[807].y" 337.14285278320312;
	setAttr ".tgi[0].ni[807].nvs" 18304;
	setAttr ".tgi[0].ni[808].x" -94.285713195800781;
	setAttr ".tgi[0].ni[808].y" 221.42857360839844;
	setAttr ".tgi[0].ni[808].nvs" 18304;
	setAttr ".tgi[0].ni[809].x" 5220;
	setAttr ".tgi[0].ni[809].y" -2951.428466796875;
	setAttr ".tgi[0].ni[809].nvs" 18304;
	setAttr ".tgi[0].ni[810].x" -484.28570556640625;
	setAttr ".tgi[0].ni[810].y" -1191.4285888671875;
	setAttr ".tgi[0].ni[810].nvs" 18304;
	setAttr ".tgi[0].ni[811].x" -484.28570556640625;
	setAttr ".tgi[0].ni[811].y" -1451.4285888671875;
	setAttr ".tgi[0].ni[811].nvs" 18304;
	setAttr ".tgi[0].ni[812].x" -484.28570556640625;
	setAttr ".tgi[0].ni[812].y" -931.4285888671875;
	setAttr ".tgi[0].ni[812].nvs" 18304;
	setAttr ".tgi[0].ni[813].x" 4825.71435546875;
	setAttr ".tgi[0].ni[813].y" -3252.857177734375;
	setAttr ".tgi[0].ni[813].nvs" 18304;
	setAttr ".tgi[0].ni[814].x" -874.28570556640625;
	setAttr ".tgi[0].ni[814].y" -13987.142578125;
	setAttr ".tgi[0].ni[814].nvs" 18304;
	setAttr ".tgi[0].ni[815].x" -874.28570556640625;
	setAttr ".tgi[0].ni[815].y" -2738.571533203125;
	setAttr ".tgi[0].ni[815].nvs" 18304;
	setAttr ".tgi[0].ni[816].x" -874.28570556640625;
	setAttr ".tgi[0].ni[816].y" -3170;
	setAttr ".tgi[0].ni[816].nvs" 18304;
	setAttr ".tgi[0].ni[817].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[817].y" 8674.2861328125;
	setAttr ".tgi[0].ni[817].nvs" 18304;
	setAttr ".tgi[0].ni[818].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[818].y" 8348.5712890625;
	setAttr ".tgi[0].ni[818].nvs" 18304;
	setAttr ".tgi[0].ni[819].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[819].y" 8054.28564453125;
	setAttr ".tgi[0].ni[819].nvs" 18304;
	setAttr ".tgi[0].ni[820].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[820].y" 11552.857421875;
	setAttr ".tgi[0].ni[820].nvs" 18304;
	setAttr ".tgi[0].ni[821].x" 2067.142822265625;
	setAttr ".tgi[0].ni[821].y" -7190;
	setAttr ".tgi[0].ni[821].nvs" 18304;
	setAttr ".tgi[0].ni[822].x" 2067.142822265625;
	setAttr ".tgi[0].ni[822].y" -7634.28564453125;
	setAttr ".tgi[0].ni[822].nvs" 18304;
	setAttr ".tgi[0].ni[823].x" 2067.142822265625;
	setAttr ".tgi[0].ni[823].y" -8135.71435546875;
	setAttr ".tgi[0].ni[823].nvs" 18304;
	setAttr ".tgi[0].ni[824].x" 2067.142822265625;
	setAttr ".tgi[0].ni[824].y" -8580;
	setAttr ".tgi[0].ni[824].nvs" 18304;
	setAttr ".tgi[0].ni[825].x" 4061.428466796875;
	setAttr ".tgi[0].ni[825].y" 6338.5712890625;
	setAttr ".tgi[0].ni[825].nvs" 18304;
	setAttr ".tgi[0].ni[826].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[826].y" 10461.4287109375;
	setAttr ".tgi[0].ni[826].nvs" 18304;
	setAttr ".tgi[0].ni[827].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[827].y" 11280;
	setAttr ".tgi[0].ni[827].nvs" 18304;
	setAttr ".tgi[0].ni[828].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[828].y" 11007.142578125;
	setAttr ".tgi[0].ni[828].nvs" 18304;
	setAttr ".tgi[0].ni[829].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[829].y" 10734.2861328125;
	setAttr ".tgi[0].ni[829].nvs" 18304;
	setAttr ".tgi[0].ni[830].x" 4061.428466796875;
	setAttr ".tgi[0].ni[830].y" 12792.857421875;
	setAttr ".tgi[0].ni[830].nvs" 18304;
	setAttr ".tgi[0].ni[831].x" 4061.428466796875;
	setAttr ".tgi[0].ni[831].y" 12691.4287109375;
	setAttr ".tgi[0].ni[831].nvs" 18304;
	setAttr ".tgi[0].ni[832].x" 4061.428466796875;
	setAttr ".tgi[0].ni[832].y" 12590;
	setAttr ".tgi[0].ni[832].nvs" 18304;
	setAttr ".tgi[0].ni[833].x" 2475.71435546875;
	setAttr ".tgi[0].ni[833].y" 11165.7138671875;
	setAttr ".tgi[0].ni[833].nvs" 18304;
	setAttr ".tgi[0].ni[834].x" 4444.28564453125;
	setAttr ".tgi[0].ni[834].y" 9265.7138671875;
	setAttr ".tgi[0].ni[834].nvs" 18304;
	setAttr ".tgi[0].ni[835].x" 2475.71435546875;
	setAttr ".tgi[0].ni[835].y" 10338.5712890625;
	setAttr ".tgi[0].ni[835].nvs" 18304;
	setAttr ".tgi[0].ni[836].x" 2475.71435546875;
	setAttr ".tgi[0].ni[836].y" 11887.142578125;
	setAttr ".tgi[0].ni[836].nvs" 18304;
	setAttr ".tgi[0].ni[837].x" 2475.71435546875;
	setAttr ".tgi[0].ni[837].y" 11478.5712890625;
	setAttr ".tgi[0].ni[837].nvs" 18304;
	setAttr ".tgi[0].ni[838].x" 5605.71435546875;
	setAttr ".tgi[0].ni[838].y" 14917.142578125;
	setAttr ".tgi[0].ni[838].nvs" 18304;
	setAttr ".tgi[0].ni[839].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[839].y" 10424.2861328125;
	setAttr ".tgi[0].ni[839].nvs" 18304;
	setAttr ".tgi[0].ni[840].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[840].y" -4375.71435546875;
	setAttr ".tgi[0].ni[840].nvs" 18304;
	setAttr ".tgi[0].ni[841].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[841].y" 9814.2861328125;
	setAttr ".tgi[0].ni[841].nvs" 18304;
	setAttr ".tgi[0].ni[842].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[842].y" -3252.857177734375;
	setAttr ".tgi[0].ni[842].nvs" 18304;
	setAttr ".tgi[0].ni[843].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[843].y" 8594.2861328125;
	setAttr ".tgi[0].ni[843].nvs" 18304;
	setAttr ".tgi[0].ni[844].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[844].y" -14995.7138671875;
	setAttr ".tgi[0].ni[844].nvs" 18304;
	setAttr ".tgi[0].ni[845].x" 4061.428466796875;
	setAttr ".tgi[0].ni[845].y" -6804.28564453125;
	setAttr ".tgi[0].ni[845].nvs" 18304;
	setAttr ".tgi[0].ni[846].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[846].y" -2878.571533203125;
	setAttr ".tgi[0].ni[846].nvs" 18304;
	setAttr ".tgi[0].ni[847].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[847].y" -4001.428466796875;
	setAttr ".tgi[0].ni[847].nvs" 18304;
	setAttr ".tgi[0].ni[848].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[848].y" 9204.2861328125;
	setAttr ".tgi[0].ni[848].nvs" 18304;
	setAttr ".tgi[0].ni[849].x" 4061.428466796875;
	setAttr ".tgi[0].ni[849].y" -7981.4287109375;
	setAttr ".tgi[0].ni[849].nvs" 18304;
	setAttr ".tgi[0].ni[850].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[850].y" -4750;
	setAttr ".tgi[0].ni[850].nvs" 18304;
	setAttr ".tgi[0].ni[851].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[851].y" -3627.142822265625;
	setAttr ".tgi[0].ni[851].nvs" 18304;
	setAttr ".tgi[0].ni[852].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[852].y" 7374.28564453125;
	setAttr ".tgi[0].ni[852].nvs" 18304;
	setAttr ".tgi[0].ni[853].x" 4444.28564453125;
	setAttr ".tgi[0].ni[853].y" -3408.571533203125;
	setAttr ".tgi[0].ni[853].nvs" 18304;
	setAttr ".tgi[0].ni[854].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[854].y" 6508.5712890625;
	setAttr ".tgi[0].ni[854].nvs" 18304;
	setAttr ".tgi[0].ni[855].x" 4061.428466796875;
	setAttr ".tgi[0].ni[855].y" -6510;
	setAttr ".tgi[0].ni[855].nvs" 18304;
	setAttr ".tgi[0].ni[856].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[856].y" -5772.85693359375;
	setAttr ".tgi[0].ni[856].nvs" 18304;
	setAttr ".tgi[0].ni[857].x" 4061.428466796875;
	setAttr ".tgi[0].ni[857].y" -7098.5712890625;
	setAttr ".tgi[0].ni[857].nvs" 18304;
	setAttr ".tgi[0].ni[858].x" 4444.28564453125;
	setAttr ".tgi[0].ni[858].y" 11338.5712890625;
	setAttr ".tgi[0].ni[858].nvs" 18304;
	setAttr ".tgi[0].ni[859].x" 4444.28564453125;
	setAttr ".tgi[0].ni[859].y" 12627.142578125;
	setAttr ".tgi[0].ni[859].nvs" 18304;
	setAttr ".tgi[0].ni[860].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[860].y" 7984.28564453125;
	setAttr ".tgi[0].ni[860].nvs" 18304;
	setAttr ".tgi[0].ni[861].x" 4061.428466796875;
	setAttr ".tgi[0].ni[861].y" -7392.85693359375;
	setAttr ".tgi[0].ni[861].nvs" 18304;
	setAttr ".tgi[0].ni[862].x" 4061.428466796875;
	setAttr ".tgi[0].ni[862].y" -7687.14306640625;
	setAttr ".tgi[0].ni[862].nvs" 18304;
	setAttr ".tgi[0].ni[863].x" 4061.428466796875;
	setAttr ".tgi[0].ni[863].y" -8275.7138671875;
	setAttr ".tgi[0].ni[863].nvs" 18304;
	setAttr ".tgi[0].ni[864].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[864].y" 6904.28564453125;
	setAttr ".tgi[0].ni[864].nvs" 18304;
	setAttr ".tgi[0].ni[865].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[865].y" -3645.71435546875;
	setAttr ".tgi[0].ni[865].nvs" 18304;
	setAttr ".tgi[0].ni[866].x" -1591.4285888671875;
	setAttr ".tgi[0].ni[866].y" -12401.4287109375;
	setAttr ".tgi[0].ni[866].nvs" 18304;
	setAttr ".tgi[0].ni[867].x" 4061.428466796875;
	setAttr ".tgi[0].ni[867].y" 4278.5712890625;
	setAttr ".tgi[0].ni[867].nvs" 18304;
	setAttr ".tgi[0].ni[868].x" 4061.428466796875;
	setAttr ".tgi[0].ni[868].y" 4177.14306640625;
	setAttr ".tgi[0].ni[868].nvs" 18304;
	setAttr ".tgi[0].ni[869].x" 4061.428466796875;
	setAttr ".tgi[0].ni[869].y" 4075.71435546875;
	setAttr ".tgi[0].ni[869].nvs" 18304;
	setAttr ".tgi[0].ni[870].x" 2067.142822265625;
	setAttr ".tgi[0].ni[870].y" 2875.71435546875;
	setAttr ".tgi[0].ni[870].nvs" 18304;
	setAttr ".tgi[0].ni[871].x" 2067.142822265625;
	setAttr ".tgi[0].ni[871].y" -1768.5714111328125;
	setAttr ".tgi[0].ni[871].nvs" 18304;
	setAttr ".tgi[0].ni[872].x" 2067.142822265625;
	setAttr ".tgi[0].ni[872].y" -2098.571533203125;
	setAttr ".tgi[0].ni[872].nvs" 18304;
	setAttr ".tgi[0].ni[873].x" 2067.142822265625;
	setAttr ".tgi[0].ni[873].y" -2432.857177734375;
	setAttr ".tgi[0].ni[873].nvs" 18304;
	setAttr ".tgi[0].ni[874].x" 2067.142822265625;
	setAttr ".tgi[0].ni[874].y" -2934.28564453125;
	setAttr ".tgi[0].ni[874].nvs" 18304;
	setAttr ".tgi[0].ni[875].x" 2067.142822265625;
	setAttr ".tgi[0].ni[875].y" -3492.857177734375;
	setAttr ".tgi[0].ni[875].nvs" 18304;
	setAttr ".tgi[0].ni[876].x" 2067.142822265625;
	setAttr ".tgi[0].ni[876].y" -4095.71435546875;
	setAttr ".tgi[0].ni[876].nvs" 18304;
	setAttr ".tgi[0].ni[877].x" 2067.142822265625;
	setAttr ".tgi[0].ni[877].y" -4540;
	setAttr ".tgi[0].ni[877].nvs" 18304;
	setAttr ".tgi[0].ni[878].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[878].y" 9634.2861328125;
	setAttr ".tgi[0].ni[878].nvs" 18304;
	setAttr ".tgi[0].ni[879].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[879].y" 9024.2861328125;
	setAttr ".tgi[0].ni[879].nvs" 18304;
	setAttr ".tgi[0].ni[880].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[880].y" 8414.2861328125;
	setAttr ".tgi[0].ni[880].nvs" 18304;
	setAttr ".tgi[0].ni[881].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[881].y" 778.5714111328125;
	setAttr ".tgi[0].ni[881].nvs" 18304;
	setAttr ".tgi[0].ni[882].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[882].y" 112.85713958740234;
	setAttr ".tgi[0].ni[882].nvs" 18304;
	setAttr ".tgi[0].ni[883].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[883].y" -424.28570556640625;
	setAttr ".tgi[0].ni[883].nvs" 18304;
	setAttr ".tgi[0].ni[884].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[884].y" 10244.2861328125;
	setAttr ".tgi[0].ni[884].nvs" 18304;
	setAttr ".tgi[0].ni[885].x" 4444.28564453125;
	setAttr ".tgi[0].ni[885].y" 12447.142578125;
	setAttr ".tgi[0].ni[885].nvs" 18304;
	setAttr ".tgi[0].ni[886].x" 4444.28564453125;
	setAttr ".tgi[0].ni[886].y" 12345.7138671875;
	setAttr ".tgi[0].ni[886].nvs" 18304;
	setAttr ".tgi[0].ni[887].x" 4444.28564453125;
	setAttr ".tgi[0].ni[887].y" 12244.2861328125;
	setAttr ".tgi[0].ni[887].nvs" 18304;
	setAttr ".tgi[0].ni[888].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[888].y" 7804.28564453125;
	setAttr ".tgi[0].ni[888].nvs" 18304;
	setAttr ".tgi[0].ni[889].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[889].y" 7194.28564453125;
	setAttr ".tgi[0].ni[889].nvs" 18304;
	setAttr ".tgi[0].ni[890].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[890].y" 6724.28564453125;
	setAttr ".tgi[0].ni[890].nvs" 18304;
	setAttr ".tgi[0].ni[891].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[891].y" 6328.5712890625;
	setAttr ".tgi[0].ni[891].nvs" 18304;
	setAttr ".tgi[0].ni[892].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[892].y" 1604.2857666015625;
	setAttr ".tgi[0].ni[892].nvs" 18304;
	setAttr ".tgi[0].ni[893].x" 4444.28564453125;
	setAttr ".tgi[0].ni[893].y" 8031.4287109375;
	setAttr ".tgi[0].ni[893].nvs" 18304;
	setAttr ".tgi[0].ni[894].x" 4444.28564453125;
	setAttr ".tgi[0].ni[894].y" 7930;
	setAttr ".tgi[0].ni[894].nvs" 18304;
	setAttr ".tgi[0].ni[895].x" 4444.28564453125;
	setAttr ".tgi[0].ni[895].y" 7828.5712890625;
	setAttr ".tgi[0].ni[895].nvs" 18304;
	setAttr ".tgi[0].ni[896].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[896].y" -877.14288330078125;
	setAttr ".tgi[0].ni[896].nvs" 18304;
	setAttr ".tgi[0].ni[897].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[897].y" -1564.2857666015625;
	setAttr ".tgi[0].ni[897].nvs" 18304;
	setAttr ".tgi[0].ni[898].x" 1685.7142333984375;
	setAttr ".tgi[0].ni[898].y" -2090;
	setAttr ".tgi[0].ni[898].nvs" 18304;
	setAttr ".tgi[0].ni[899].x" 2475.71435546875;
	setAttr ".tgi[0].ni[899].y" -9205.7138671875;
	setAttr ".tgi[0].ni[899].nvs" 18304;
	setAttr ".tgi[0].ni[900].x" 2475.71435546875;
	setAttr ".tgi[0].ni[900].y" -9658.5712890625;
	setAttr ".tgi[0].ni[900].nvs" 18304;
	setAttr ".tgi[0].ni[901].x" 2475.71435546875;
	setAttr ".tgi[0].ni[901].y" -10168.5712890625;
	setAttr ".tgi[0].ni[901].nvs" 18304;
	setAttr ".tgi[0].ni[902].x" 2475.71435546875;
	setAttr ".tgi[0].ni[902].y" -8695.7138671875;
	setAttr ".tgi[0].ni[902].nvs" 18304;
	setAttr ".tgi[0].ni[903].x" 4444.28564453125;
	setAttr ".tgi[0].ni[903].y" -2467.142822265625;
	setAttr ".tgi[0].ni[903].nvs" 18304;
	setAttr ".tgi[0].ni[904].x" 4444.28564453125;
	setAttr ".tgi[0].ni[904].y" -2568.571533203125;
	setAttr ".tgi[0].ni[904].nvs" 18304;
	setAttr ".tgi[0].ni[905].x" 4444.28564453125;
	setAttr ".tgi[0].ni[905].y" -2670;
	setAttr ".tgi[0].ni[905].nvs" 18304;
	setAttr ".tgi[0].ni[906].x" 2475.71435546875;
	setAttr ".tgi[0].ni[906].y" -10621.4287109375;
	setAttr ".tgi[0].ni[906].nvs" 18304;
	setAttr ".tgi[0].ni[907].x" 2475.71435546875;
	setAttr ".tgi[0].ni[907].y" -11074.2861328125;
	setAttr ".tgi[0].ni[907].nvs" 18304;
	setAttr ".tgi[0].ni[908].x" 2475.71435546875;
	setAttr ".tgi[0].ni[908].y" -11584.2861328125;
	setAttr ".tgi[0].ni[908].nvs" 18304;
	setAttr ".tgi[0].ni[909].x" 2067.142822265625;
	setAttr ".tgi[0].ni[909].y" 6547.14306640625;
	setAttr ".tgi[0].ni[909].nvs" 18304;
	setAttr ".tgi[0].ni[910].x" 2067.142822265625;
	setAttr ".tgi[0].ni[910].y" 6151.4287109375;
	setAttr ".tgi[0].ni[910].nvs" 18304;
	setAttr ".tgi[0].ni[911].x" 2067.142822265625;
	setAttr ".tgi[0].ni[911].y" 5751.4287109375;
	setAttr ".tgi[0].ni[911].nvs" 18304;
	setAttr ".tgi[0].ni[912].x" 2067.142822265625;
	setAttr ".tgi[0].ni[912].y" 6942.85693359375;
	setAttr ".tgi[0].ni[912].nvs" 18304;
	setAttr ".tgi[0].ni[913].x" 2067.142822265625;
	setAttr ".tgi[0].ni[913].y" 3961.428466796875;
	setAttr ".tgi[0].ni[913].nvs" 18304;
	setAttr ".tgi[0].ni[914].x" 2067.142822265625;
	setAttr ".tgi[0].ni[914].y" 3860;
	setAttr ".tgi[0].ni[914].nvs" 18304;
	setAttr ".tgi[0].ni[915].x" 2067.142822265625;
	setAttr ".tgi[0].ni[915].y" 3758.571533203125;
	setAttr ".tgi[0].ni[915].nvs" 18304;
	setAttr ".tgi[0].ni[916].x" 2067.142822265625;
	setAttr ".tgi[0].ni[916].y" 5348.5712890625;
	setAttr ".tgi[0].ni[916].nvs" 18304;
	setAttr ".tgi[0].ni[917].x" 2067.142822265625;
	setAttr ".tgi[0].ni[917].y" 4951.4287109375;
	setAttr ".tgi[0].ni[917].nvs" 18304;
	setAttr ".tgi[0].ni[918].x" 2067.142822265625;
	setAttr ".tgi[0].ni[918].y" 4555.71435546875;
	setAttr ".tgi[0].ni[918].nvs" 18304;
	setAttr ".tgi[0].ni[919].x" 4061.428466796875;
	setAttr ".tgi[0].ni[919].y" -10322.857421875;
	setAttr ".tgi[0].ni[919].nvs" 18304;
	setAttr ".tgi[0].ni[920].x" 4061.428466796875;
	setAttr ".tgi[0].ni[920].y" -10718.5712890625;
	setAttr ".tgi[0].ni[920].nvs" 18304;
	setAttr ".tgi[0].ni[921].x" 4061.428466796875;
	setAttr ".tgi[0].ni[921].y" -12200;
	setAttr ".tgi[0].ni[921].nvs" 18304;
	setAttr ".tgi[0].ni[922].x" 4825.71435546875;
	setAttr ".tgi[0].ni[922].y" -6055.71435546875;
	setAttr ".tgi[0].ni[922].nvs" 18304;
	setAttr ".tgi[0].ni[923].x" 4444.28564453125;
	setAttr ".tgi[0].ni[923].y" 6272.85693359375;
	setAttr ".tgi[0].ni[923].nvs" 18304;
	setAttr ".tgi[0].ni[924].x" 4444.28564453125;
	setAttr ".tgi[0].ni[924].y" 6171.4287109375;
	setAttr ".tgi[0].ni[924].nvs" 18304;
	setAttr ".tgi[0].ni[925].x" 4444.28564453125;
	setAttr ".tgi[0].ni[925].y" 6070;
	setAttr ".tgi[0].ni[925].nvs" 18304;
	setAttr ".tgi[0].ni[926].x" 4061.428466796875;
	setAttr ".tgi[0].ni[926].y" -11510;
	setAttr ".tgi[0].ni[926].nvs" 18304;
	setAttr ".tgi[0].ni[927].x" 4061.428466796875;
	setAttr ".tgi[0].ni[927].y" -9927.142578125;
	setAttr ".tgi[0].ni[927].nvs" 18304;
	setAttr ".tgi[0].ni[928].x" 4061.428466796875;
	setAttr ".tgi[0].ni[928].y" -11114.2861328125;
	setAttr ".tgi[0].ni[928].nvs" 18304;
	setAttr ".tgi[0].ni[929].x" 4444.28564453125;
	setAttr ".tgi[0].ni[929].y" 5502.85693359375;
	setAttr ".tgi[0].ni[929].nvs" 18304;
	setAttr ".tgi[0].ni[930].x" 4444.28564453125;
	setAttr ".tgi[0].ni[930].y" 5401.4287109375;
	setAttr ".tgi[0].ni[930].nvs" 18304;
	setAttr ".tgi[0].ni[931].x" 4444.28564453125;
	setAttr ".tgi[0].ni[931].y" 5300;
	setAttr ".tgi[0].ni[931].nvs" 18304;
	setAttr ".tgi[0].ni[932].x" 2475.71435546875;
	setAttr ".tgi[0].ni[932].y" 2941.428466796875;
	setAttr ".tgi[0].ni[932].nvs" 18304;
	setAttr ".tgi[0].ni[933].x" 2475.71435546875;
	setAttr ".tgi[0].ni[933].y" -1151.4285888671875;
	setAttr ".tgi[0].ni[933].nvs" 18304;
	setAttr ".tgi[0].ni[934].x" 2475.71435546875;
	setAttr ".tgi[0].ni[934].y" -1547.142822265625;
	setAttr ".tgi[0].ni[934].nvs" 18304;
	setAttr ".tgi[0].ni[935].x" 2475.71435546875;
	setAttr ".tgi[0].ni[935].y" -1942.857177734375;
	setAttr ".tgi[0].ni[935].nvs" 18304;
	setAttr ".tgi[0].ni[936].x" 2475.71435546875;
	setAttr ".tgi[0].ni[936].y" -2338.571533203125;
	setAttr ".tgi[0].ni[936].nvs" 18304;
	setAttr ".tgi[0].ni[937].x" 2475.71435546875;
	setAttr ".tgi[0].ni[937].y" -2857.142822265625;
	setAttr ".tgi[0].ni[937].nvs" 18304;
	setAttr ".tgi[0].ni[938].x" 2475.71435546875;
	setAttr ".tgi[0].ni[938].y" -3252.857177734375;
	setAttr ".tgi[0].ni[938].nvs" 18304;
	setAttr ".tgi[0].ni[939].x" 2475.71435546875;
	setAttr ".tgi[0].ni[939].y" -3648.571533203125;
	setAttr ".tgi[0].ni[939].nvs" 18304;
	setAttr ".tgi[0].ni[940].x" -874.28570556640625;
	setAttr ".tgi[0].ni[940].y" 10042.857421875;
	setAttr ".tgi[0].ni[940].nvs" 18304;
	setAttr ".tgi[0].ni[941].x" -874.28570556640625;
	setAttr ".tgi[0].ni[941].y" 9634.2861328125;
	setAttr ".tgi[0].ni[941].nvs" 18304;
	setAttr ".tgi[0].ni[942].x" -874.28570556640625;
	setAttr ".tgi[0].ni[942].y" 9231.4287109375;
	setAttr ".tgi[0].ni[942].nvs" 18304;
	setAttr ".tgi[0].ni[943].x" -874.28570556640625;
	setAttr ".tgi[0].ni[943].y" 10458.5712890625;
	setAttr ".tgi[0].ni[943].nvs" 18304;
	setAttr ".tgi[0].ni[944].x" 4825.71435546875;
	setAttr ".tgi[0].ni[944].y" 12965.7138671875;
	setAttr ".tgi[0].ni[944].nvs" 18304;
	setAttr ".tgi[0].ni[945].x" 4825.71435546875;
	setAttr ".tgi[0].ni[945].y" 12864.2861328125;
	setAttr ".tgi[0].ni[945].nvs" 18304;
	setAttr ".tgi[0].ni[946].x" 4825.71435546875;
	setAttr ".tgi[0].ni[946].y" 12762.857421875;
	setAttr ".tgi[0].ni[946].nvs" 18304;
	setAttr ".tgi[0].ni[947].x" -874.28570556640625;
	setAttr ".tgi[0].ni[947].y" 8811.4287109375;
	setAttr ".tgi[0].ni[947].nvs" 18304;
	setAttr ".tgi[0].ni[948].x" -874.28570556640625;
	setAttr ".tgi[0].ni[948].y" 8441.4287109375;
	setAttr ".tgi[0].ni[948].nvs" 18304;
	setAttr ".tgi[0].ni[949].x" -874.28570556640625;
	setAttr ".tgi[0].ni[949].y" 8102.85693359375;
	setAttr ".tgi[0].ni[949].nvs" 18304;
	setAttr ".tgi[0].ni[950].x" -874.28570556640625;
	setAttr ".tgi[0].ni[950].y" 7764.28564453125;
	setAttr ".tgi[0].ni[950].nvs" 18304;
	setAttr ".tgi[0].ni[951].x" 2882.857177734375;
	setAttr ".tgi[0].ni[951].y" -8100;
	setAttr ".tgi[0].ni[951].nvs" 18304;
	setAttr ".tgi[0].ni[952].x" 2882.857177734375;
	setAttr ".tgi[0].ni[952].y" -8438.5712890625;
	setAttr ".tgi[0].ni[952].nvs" 18304;
	setAttr ".tgi[0].ni[953].x" 2882.857177734375;
	setAttr ".tgi[0].ni[953].y" -8777.142578125;
	setAttr ".tgi[0].ni[953].nvs" 18304;
	setAttr ".tgi[0].ni[954].x" 2882.857177734375;
	setAttr ".tgi[0].ni[954].y" -7761.4287109375;
	setAttr ".tgi[0].ni[954].nvs" 18304;
	setAttr ".tgi[0].ni[955].x" 4825.71435546875;
	setAttr ".tgi[0].ni[955].y" 11958.5712890625;
	setAttr ".tgi[0].ni[955].nvs" 18304;
	setAttr ".tgi[0].ni[956].x" 4825.71435546875;
	setAttr ".tgi[0].ni[956].y" 11857.142578125;
	setAttr ".tgi[0].ni[956].nvs" 18304;
	setAttr ".tgi[0].ni[957].x" 4825.71435546875;
	setAttr ".tgi[0].ni[957].y" 11755.7138671875;
	setAttr ".tgi[0].ni[957].nvs" 18304;
	setAttr ".tgi[0].ni[958].x" 2882.857177734375;
	setAttr ".tgi[0].ni[958].y" -9115.7138671875;
	setAttr ".tgi[0].ni[958].nvs" 18304;
	setAttr ".tgi[0].ni[959].x" 2882.857177734375;
	setAttr ".tgi[0].ni[959].y" -9454.2861328125;
	setAttr ".tgi[0].ni[959].nvs" 18304;
	setAttr ".tgi[0].ni[960].x" 2882.857177734375;
	setAttr ".tgi[0].ni[960].y" -9915.7138671875;
	setAttr ".tgi[0].ni[960].nvs" 18304;
	setAttr ".tgi[0].ni[961].x" 2882.857177734375;
	setAttr ".tgi[0].ni[961].y" 11614.2861328125;
	setAttr ".tgi[0].ni[961].nvs" 18304;
	setAttr ".tgi[0].ni[962].x" 2882.857177734375;
	setAttr ".tgi[0].ni[962].y" 11275.7138671875;
	setAttr ".tgi[0].ni[962].nvs" 18304;
	setAttr ".tgi[0].ni[963].x" 2882.857177734375;
	setAttr ".tgi[0].ni[963].y" 10880;
	setAttr ".tgi[0].ni[963].nvs" 18304;
	setAttr ".tgi[0].ni[964].x" 2882.857177734375;
	setAttr ".tgi[0].ni[964].y" 12010;
	setAttr ".tgi[0].ni[964].nvs" 18304;
	setAttr ".tgi[0].ni[965].x" 4825.71435546875;
	setAttr ".tgi[0].ni[965].y" 11302.857421875;
	setAttr ".tgi[0].ni[965].nvs" 18304;
	setAttr ".tgi[0].ni[966].x" 4825.71435546875;
	setAttr ".tgi[0].ni[966].y" 11201.4287109375;
	setAttr ".tgi[0].ni[966].nvs" 18304;
	setAttr ".tgi[0].ni[967].x" 4825.71435546875;
	setAttr ".tgi[0].ni[967].y" 11100;
	setAttr ".tgi[0].ni[967].nvs" 18304;
	setAttr ".tgi[0].ni[968].x" 2882.857177734375;
	setAttr ".tgi[0].ni[968].y" 10484.2861328125;
	setAttr ".tgi[0].ni[968].nvs" 18304;
	setAttr ".tgi[0].ni[969].x" 2882.857177734375;
	setAttr ".tgi[0].ni[969].y" 10145.7138671875;
	setAttr ".tgi[0].ni[969].nvs" 18304;
	setAttr ".tgi[0].ni[970].x" 2882.857177734375;
	setAttr ".tgi[0].ni[970].y" 9750;
	setAttr ".tgi[0].ni[970].nvs" 18304;
	setAttr ".tgi[0].ni[971].x" 4825.71435546875;
	setAttr ".tgi[0].ni[971].y" 10295.7138671875;
	setAttr ".tgi[0].ni[971].nvs" 18304;
	setAttr ".tgi[0].ni[972].x" 4825.71435546875;
	setAttr ".tgi[0].ni[972].y" 10194.2861328125;
	setAttr ".tgi[0].ni[972].nvs" 18304;
	setAttr ".tgi[0].ni[973].x" 4825.71435546875;
	setAttr ".tgi[0].ni[973].y" 10092.857421875;
	setAttr ".tgi[0].ni[973].nvs" 18304;
	setAttr ".tgi[0].ni[974].x" 4825.71435546875;
	setAttr ".tgi[0].ni[974].y" 9165.7138671875;
	setAttr ".tgi[0].ni[974].nvs" 18304;
	setAttr ".tgi[0].ni[975].x" 4825.71435546875;
	setAttr ".tgi[0].ni[975].y" 9064.2861328125;
	setAttr ".tgi[0].ni[975].nvs" 18304;
	setAttr ".tgi[0].ni[976].x" 4825.71435546875;
	setAttr ".tgi[0].ni[976].y" 8962.857421875;
	setAttr ".tgi[0].ni[976].nvs" 18304;
	setAttr ".tgi[0].ni[977].x" 2882.857177734375;
	setAttr ".tgi[0].ni[977].y" -677.14288330078125;
	setAttr ".tgi[0].ni[977].nvs" 18304;
	setAttr ".tgi[0].ni[978].x" 2882.857177734375;
	setAttr ".tgi[0].ni[978].y" -1155.7142333984375;
	setAttr ".tgi[0].ni[978].nvs" 18304;
	setAttr ".tgi[0].ni[979].x" 2882.857177734375;
	setAttr ".tgi[0].ni[979].y" -1608.5714111328125;
	setAttr ".tgi[0].ni[979].nvs" 18304;
	setAttr ".tgi[0].ni[980].x" 2882.857177734375;
	setAttr ".tgi[0].ni[980].y" -1947.142822265625;
	setAttr ".tgi[0].ni[980].nvs" 18304;
	setAttr ".tgi[0].ni[981].x" 2882.857177734375;
	setAttr ".tgi[0].ni[981].y" -2285.71435546875;
	setAttr ".tgi[0].ni[981].nvs" 18304;
	setAttr ".tgi[0].ni[982].x" 2882.857177734375;
	setAttr ".tgi[0].ni[982].y" -2624.28564453125;
	setAttr ".tgi[0].ni[982].nvs" 18304;
	setAttr ".tgi[0].ni[983].x" 2882.857177734375;
	setAttr ".tgi[0].ni[983].y" -2962.857177734375;
	setAttr ".tgi[0].ni[983].nvs" 18304;
	setAttr ".tgi[0].ni[984].x" 2067.142822265625;
	setAttr ".tgi[0].ni[984].y" 2185.71435546875;
	setAttr ".tgi[0].ni[984].nvs" 18304;
	setAttr ".tgi[0].ni[985].x" 2067.142822265625;
	setAttr ".tgi[0].ni[985].y" 262.85714721679688;
	setAttr ".tgi[0].ni[985].nvs" 18304;
	setAttr ".tgi[0].ni[986].x" 2067.142822265625;
	setAttr ".tgi[0].ni[986].y" -75.714286804199219;
	setAttr ".tgi[0].ni[986].nvs" 18304;
	setAttr ".tgi[0].ni[987].x" 2067.142822265625;
	setAttr ".tgi[0].ni[987].y" -414.28570556640625;
	setAttr ".tgi[0].ni[987].nvs" 18304;
	setAttr ".tgi[0].ni[988].x" 2067.142822265625;
	setAttr ".tgi[0].ni[988].y" -752.85711669921875;
	setAttr ".tgi[0].ni[988].nvs" 18304;
	setAttr ".tgi[0].ni[989].x" 2067.142822265625;
	setAttr ".tgi[0].ni[989].y" -1214.2857666015625;
	setAttr ".tgi[0].ni[989].nvs" 18304;
	setAttr ".tgi[0].ni[990].x" 2067.142822265625;
	setAttr ".tgi[0].ni[990].y" -1552.857177734375;
	setAttr ".tgi[0].ni[990].nvs" 18304;
	setAttr ".tgi[0].ni[991].x" 4825.71435546875;
	setAttr ".tgi[0].ni[991].y" 8158.5712890625;
	setAttr ".tgi[0].ni[991].nvs" 18304;
	setAttr ".tgi[0].ni[992].x" 4825.71435546875;
	setAttr ".tgi[0].ni[992].y" 8057.14306640625;
	setAttr ".tgi[0].ni[992].nvs" 18304;
	setAttr ".tgi[0].ni[993].x" 4825.71435546875;
	setAttr ".tgi[0].ni[993].y" 7955.71435546875;
	setAttr ".tgi[0].ni[993].nvs" 18304;
	setAttr ".tgi[0].ni[994].x" 2882.857177734375;
	setAttr ".tgi[0].ni[994].y" 5124.28564453125;
	setAttr ".tgi[0].ni[994].nvs" 18304;
	setAttr ".tgi[0].ni[995].x" 2882.857177734375;
	setAttr ".tgi[0].ni[995].y" 3548.571533203125;
	setAttr ".tgi[0].ni[995].nvs" 18304;
	setAttr ".tgi[0].ni[996].x" 2882.857177734375;
	setAttr ".tgi[0].ni[996].y" 3152.857177734375;
	setAttr ".tgi[0].ni[996].nvs" 18304;
	setAttr ".tgi[0].ni[997].x" 2882.857177734375;
	setAttr ".tgi[0].ni[997].y" 2757.142822265625;
	setAttr ".tgi[0].ni[997].nvs" 18304;
	setAttr ".tgi[0].ni[998].x" 2882.857177734375;
	setAttr ".tgi[0].ni[998].y" 2305.71435546875;
	setAttr ".tgi[0].ni[998].nvs" 18304;
	setAttr ".tgi[0].ni[999].x" 2882.857177734375;
	setAttr ".tgi[0].ni[999].y" 1457.142822265625;
	setAttr ".tgi[0].ni[999].nvs" 18304;
	setAttr ".tgi[0].ni[1000].x" 2882.857177734375;
	setAttr ".tgi[0].ni[1000].y" 1094.2857666015625;
	setAttr ".tgi[0].ni[1000].nvs" 18304;
	setAttr ".tgi[0].ni[1001].x" 2882.857177734375;
	setAttr ".tgi[0].ni[1001].y" 755.71429443359375;
	setAttr ".tgi[0].ni[1001].nvs" 18304;
	setAttr ".tgi[0].ni[1002].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1002].y" 5922.85693359375;
	setAttr ".tgi[0].ni[1002].nvs" 18304;
	setAttr ".tgi[0].ni[1003].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1003].y" 5584.28564453125;
	setAttr ".tgi[0].ni[1003].nvs" 18304;
	setAttr ".tgi[0].ni[1004].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1004].y" 5245.71435546875;
	setAttr ".tgi[0].ni[1004].nvs" 18304;
	setAttr ".tgi[0].ni[1005].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1005].y" 6261.4287109375;
	setAttr ".tgi[0].ni[1005].nvs" 18304;
	setAttr ".tgi[0].ni[1006].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1006].y" 3768.571533203125;
	setAttr ".tgi[0].ni[1006].nvs" 18304;
	setAttr ".tgi[0].ni[1007].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1007].y" 3667.142822265625;
	setAttr ".tgi[0].ni[1007].nvs" 18304;
	setAttr ".tgi[0].ni[1008].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1008].y" 3565.71435546875;
	setAttr ".tgi[0].ni[1008].nvs" 18304;
	setAttr ".tgi[0].ni[1009].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1009].y" 4907.14306640625;
	setAttr ".tgi[0].ni[1009].nvs" 18304;
	setAttr ".tgi[0].ni[1010].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1010].y" 4568.5712890625;
	setAttr ".tgi[0].ni[1010].nvs" 18304;
	setAttr ".tgi[0].ni[1011].x" 2475.71435546875;
	setAttr ".tgi[0].ni[1011].y" 4107.14306640625;
	setAttr ".tgi[0].ni[1011].nvs" 18304;
select -ne :time1;
	setAttr ".o" 44;
	setAttr ".unw" 44;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :initialShadingGroup;
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
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "Player_rigRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Player_rigRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Player_rigRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Player_rigRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Player_rigRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Player_rigRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Player_rigRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Player_rigRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Player_rigRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Player_rigRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "Player_rigRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Player_rigRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Player_rigRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Player_rigRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Player_rigRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Player_rigRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Player_rigRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Player_rigRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Player_rigRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Player_rigRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Player_rigRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Player_rigRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Player_rigRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Player_rigRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Player_rigRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Player_rigRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Player_rigRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Player_rigRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Player_rigRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Player_rigRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Player_rigRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Player_rigRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Player_rigRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Player_rigRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Player_rigRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Player_rigRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Player_rigRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Player_rigRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Player_rigRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Player_rigRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Player_rigRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Player_rigRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Player_rigRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Player_rigRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Player_rigRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Player_rigRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Player_rigRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Player_rigRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Player_rigRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Player_rigRN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Player_rigRN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Player_rigRN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Player_rigRN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Player_rigRN.phl[67]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[68]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[69]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[70]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_translateX_Backwards.o" "Player_rigRN.phl[71]";
connectAttr "Player_rigRN.phl[72]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[73]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[74]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[75]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_translateY_Backwards.o" "Player_rigRN.phl[76]";
connectAttr "Player_rigRN.phl[77]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[78]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[79]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[80]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_translateZ_Backwards.o" "Player_rigRN.phl[81]";
connectAttr "Player_rigRN.phl[82]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[83]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[84]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[85]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_rotate_Backwards.ox" "Player_rigRN.phl[86]";
connectAttr "Player_rigRN.phl[87]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[88]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[89]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[90]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_rotate_Backwards.oy" "Player_rigRN.phl[91]";
connectAttr "Player_rigRN.phl[92]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[93]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[94]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[95]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_rotate_Backwards.oz" "Player_rigRN.phl[96]";
connectAttr "Player_rigRN.phl[97]" "CTRL_ship_rotate_Left.ro";
connectAttr "Player_rigRN.phl[98]" "CTRL_ship_rotate_Right.ro";
connectAttr "Player_rigRN.phl[99]" "CTRL_ship_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[100]" "CTRL_ship_rotate_Backwards.ro";
connectAttr "Player_rigRN.phl[101]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[102]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[103]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[104]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_scaleX_Backwards.o" "Player_rigRN.phl[105]";
connectAttr "Player_rigRN.phl[106]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[107]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[108]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[109]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_scaleY_Backwards.o" "Player_rigRN.phl[110]";
connectAttr "Player_rigRN.phl[111]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[112]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[113]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[114]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_scaleZ_Backwards.o" "Player_rigRN.phl[115]";
connectAttr "Player_rigRN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Player_rigRN.phl[117]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[118]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[119]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[120]" "Backwards.dsm" -na;
connectAttr "CTRL_ship_visibility_Backwards.o" "Player_rigRN.phl[121]";
connectAttr "Player_rigRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Player_rigRN.phl[123]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[124]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[125]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[126]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_translateX_Backwards.o" "Player_rigRN.phl[127]"
		;
connectAttr "Player_rigRN.phl[128]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[129]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[130]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[131]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_translateY_Backwards.o" "Player_rigRN.phl[132]"
		;
connectAttr "Player_rigRN.phl[133]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[134]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[135]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[136]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_translateZ_Backwards.o" "Player_rigRN.phl[137]"
		;
connectAttr "Player_rigRN.phl[138]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[139]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[140]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[141]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_rotate_Backwards.ox" "Player_rigRN.phl[142]";
connectAttr "Player_rigRN.phl[143]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[144]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[145]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[146]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_rotate_Backwards.oy" "Player_rigRN.phl[147]";
connectAttr "Player_rigRN.phl[148]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[149]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[150]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[151]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_rotate_Backwards.oz" "Player_rigRN.phl[152]";
connectAttr "Player_rigRN.phl[153]" "Player_rig:CTRL_root_rotate_Left.ro";
connectAttr "Player_rigRN.phl[154]" "Player_rig:CTRL_root_rotate_Right.ro";
connectAttr "Player_rigRN.phl[155]" "Player_rig:CTRL_root_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[156]" "Player_rig:CTRL_root_rotate_Backwards.ro";
connectAttr "Player_rigRN.phl[157]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[158]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[159]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[160]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_scaleX_Backwards.o" "Player_rigRN.phl[161]";
connectAttr "Player_rigRN.phl[162]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[163]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[164]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[165]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_scaleY_Backwards.o" "Player_rigRN.phl[166]";
connectAttr "Player_rigRN.phl[167]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[168]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[169]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[170]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_scaleZ_Backwards.o" "Player_rigRN.phl[171]";
connectAttr "Player_rigRN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Player_rigRN.phl[173]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[174]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[175]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[176]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_root_visibility_Backwards.o" "Player_rigRN.phl[177]"
		;
connectAttr "Player_rigRN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Player_rigRN.phl[179]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[180]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[181]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[182]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Backwards.o" "Player_rigRN.phl[183]"
		;
connectAttr "Player_rigRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Player_rigRN.phl[185]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[186]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[187]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[188]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_translateY_Backwards.o" "Player_rigRN.phl[189]"
		;
connectAttr "Player_rigRN.phl[190]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[191]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[192]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[193]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_translateZ_Backwards.o" "Player_rigRN.phl[194]"
		;
connectAttr "Player_rigRN.phl[195]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[196]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[197]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[198]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_translateX_Backwards.o" "Player_rigRN.phl[199]"
		;
connectAttr "Player_rigRN.phl[200]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[201]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[202]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[203]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_rotate_Backwards.ox" "Player_rigRN.phl[204]";
connectAttr "Player_rigRN.phl[205]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[206]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[207]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[208]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_rotate_Backwards.oy" "Player_rigRN.phl[209]";
connectAttr "Player_rigRN.phl[210]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[211]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[212]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[213]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_rotate_Backwards.oz" "Player_rigRN.phl[214]";
connectAttr "Player_rigRN.phl[215]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[216]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[217]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[218]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_visibility_Backwards.o" "Player_rigRN.phl[219]"
		;
connectAttr "Player_rigRN.phl[220]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[221]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[222]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[223]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_scaleX_Backwards.o" "Player_rigRN.phl[224]";
connectAttr "Player_rigRN.phl[225]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[226]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[227]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[228]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_scaleY_Backwards.o" "Player_rigRN.phl[229]";
connectAttr "Player_rigRN.phl[230]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[231]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[232]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[233]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_cog_scaleZ_Backwards.o" "Player_rigRN.phl[234]";
connectAttr "Player_rigRN.phl[235]" "Player_rig:CTRL_cog_rotate_Right.ro";
connectAttr "Player_rigRN.phl[236]" "Player_rig:CTRL_cog_rotate_Left.ro";
connectAttr "Player_rigRN.phl[237]" "Player_rig:CTRL_cog_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[238]" "Player_rig:CTRL_cog_rotate_Backwards.ro";
connectAttr "Player_rigRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Player_rigRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Player_rigRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Player_rigRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Player_rigRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Player_rigRN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Player_rigRN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Player_rigRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Player_rigRN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Player_rigRN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Player_rigRN.phl[249]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[250]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[251]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[252]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Backwards.o" "Player_rigRN.phl[253]"
		;
connectAttr "Player_rigRN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Player_rigRN.phl[255]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[256]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[257]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[258]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Backwards.o" "Player_rigRN.phl[259]"
		;
connectAttr "Player_rigRN.phl[260]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[261]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[262]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[263]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Backwards.o" "Player_rigRN.phl[264]"
		;
connectAttr "Player_rigRN.phl[265]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[266]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[267]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[268]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.o" "Player_rigRN.phl[269]"
		;
connectAttr "Player_rigRN.phl[270]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[271]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[272]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[273]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Backwards.ox" "Player_rigRN.phl[274]"
		;
connectAttr "Player_rigRN.phl[275]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[276]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[277]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[278]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Backwards.oy" "Player_rigRN.phl[279]"
		;
connectAttr "Player_rigRN.phl[280]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[281]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[282]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[283]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Backwards.oz" "Player_rigRN.phl[284]"
		;
connectAttr "Player_rigRN.phl[285]" "Player_rig:CTRL_foot_r_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[286]" "Player_rig:CTRL_foot_r_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[287]" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[288]" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[289]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[290]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[291]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[292]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.o" "Player_rigRN.phl[293]"
		;
connectAttr "Player_rigRN.phl[294]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[295]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[296]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[297]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.o" "Player_rigRN.phl[298]"
		;
connectAttr "Player_rigRN.phl[299]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[300]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[301]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[302]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.o" "Player_rigRN.phl[303]"
		;
connectAttr "Player_rigRN.phl[304]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Player_rigRN.phl[305]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Player_rigRN.phl[306]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Player_rigRN.phl[307]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Player_rigRN.phl[308]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Player_rigRN.phl[309]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Player_rigRN.phl[310]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Player_rigRN.phl[311]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Player_rigRN.phl[312]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Player_rigRN.phl[313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Player_rigRN.phl[314]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[315]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[316]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[317]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Backwards.o" "Player_rigRN.phl[318]"
		;
connectAttr "Player_rigRN.phl[319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Player_rigRN.phl[320]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[321]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[322]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[323]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Backwards.o" "Player_rigRN.phl[324]"
		;
connectAttr "Player_rigRN.phl[325]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[326]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[327]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[328]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Backwards.o" "Player_rigRN.phl[329]"
		;
connectAttr "Player_rigRN.phl[330]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[331]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[332]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[333]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.o" "Player_rigRN.phl[334]"
		;
connectAttr "Player_rigRN.phl[335]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[336]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[337]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[338]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Backwards.ox" "Player_rigRN.phl[339]"
		;
connectAttr "Player_rigRN.phl[340]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[341]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[342]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[343]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Backwards.oy" "Player_rigRN.phl[344]"
		;
connectAttr "Player_rigRN.phl[345]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[346]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[347]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[348]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Backwards.oz" "Player_rigRN.phl[349]"
		;
connectAttr "Player_rigRN.phl[350]" "Player_rig:CTRL_foot_l_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[351]" "Player_rig:CTRL_foot_l_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[352]" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[353]" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[354]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[355]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[356]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[357]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.o" "Player_rigRN.phl[358]"
		;
connectAttr "Player_rigRN.phl[359]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[360]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[361]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[362]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.o" "Player_rigRN.phl[363]"
		;
connectAttr "Player_rigRN.phl[364]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[365]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[366]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[367]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.o" "Player_rigRN.phl[368]"
		;
connectAttr "Player_rigRN.phl[369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Player_rigRN.phl[370]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Player_rigRN.phl[371]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Player_rigRN.phl[372]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Player_rigRN.phl[373]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Player_rigRN.phl[374]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Player_rigRN.phl[375]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Player_rigRN.phl[376]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[377]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[378]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[379]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Backwards.o" "Player_rigRN.phl[380]"
		;
connectAttr "Player_rigRN.phl[381]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[382]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[383]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[384]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Backwards.o" "Player_rigRN.phl[385]"
		;
connectAttr "Player_rigRN.phl[386]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[387]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[388]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[389]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Backwards.o" "Player_rigRN.phl[390]"
		;
connectAttr "Player_rigRN.phl[391]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[392]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[393]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[394]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Backwards.o" "Player_rigRN.phl[395]"
		;
connectAttr "Player_rigRN.phl[396]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[397]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[398]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[399]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Backwards.ox" "Player_rigRN.phl[400]"
		;
connectAttr "Player_rigRN.phl[401]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[402]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[403]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[404]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Backwards.oy" "Player_rigRN.phl[405]"
		;
connectAttr "Player_rigRN.phl[406]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[407]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[408]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[409]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Backwards.oz" "Player_rigRN.phl[410]"
		;
connectAttr "Player_rigRN.phl[411]" "Player_rig:CTRL_shoulder_r_rotate_Right.ro"
		;
connectAttr "Player_rigRN.phl[412]" "Player_rig:CTRL_shoulder_r_rotate_Left.ro";
connectAttr "Player_rigRN.phl[413]" "Player_rig:CTRL_shoulder_r_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[414]" "Player_rig:CTRL_shoulder_r_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[415]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[416]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[417]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[418]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Backwards.o" "Player_rigRN.phl[419]"
		;
connectAttr "Player_rigRN.phl[420]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[421]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[422]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[423]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Backwards.o" "Player_rigRN.phl[424]"
		;
connectAttr "Player_rigRN.phl[425]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[426]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[427]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[428]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.o" "Player_rigRN.phl[429]"
		;
connectAttr "Player_rigRN.phl[430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Player_rigRN.phl[431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Player_rigRN.phl[432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Player_rigRN.phl[433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Player_rigRN.phl[434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Player_rigRN.phl[435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Player_rigRN.phl[436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Player_rigRN.phl[437]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[438]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[439]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[440]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Backwards.o" "Player_rigRN.phl[441]"
		;
connectAttr "Player_rigRN.phl[442]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[443]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[444]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[445]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Backwards.ox" "Player_rigRN.phl[446]"
		;
connectAttr "Player_rigRN.phl[447]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[448]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[449]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[450]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Backwards.oy" "Player_rigRN.phl[451]"
		;
connectAttr "Player_rigRN.phl[452]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[453]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[454]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[455]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Backwards.oz" "Player_rigRN.phl[456]"
		;
connectAttr "Player_rigRN.phl[457]" "Player_rig:CTRL_arm_r_ik_rotate_Left.ro";
connectAttr "Player_rigRN.phl[458]" "Player_rig:CTRL_arm_r_ik_rotate_Right.ro";
connectAttr "Player_rigRN.phl[459]" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[460]" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[461]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[462]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[463]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[464]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Backwards.o" "Player_rigRN.phl[465]"
		;
connectAttr "Player_rigRN.phl[466]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[467]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[468]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[469]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Backwards.o" "Player_rigRN.phl[470]"
		;
connectAttr "Player_rigRN.phl[471]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[472]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[473]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[474]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.o" "Player_rigRN.phl[475]"
		;
connectAttr "Player_rigRN.phl[476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Player_rigRN.phl[477]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[478]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[479]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[480]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.o" "Player_rigRN.phl[481]"
		;
connectAttr "Player_rigRN.phl[482]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[483]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[484]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[485]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.o" "Player_rigRN.phl[486]"
		;
connectAttr "Player_rigRN.phl[487]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[488]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[489]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[490]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.o" "Player_rigRN.phl[491]"
		;
connectAttr "Player_rigRN.phl[492]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Player_rigRN.phl[493]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Player_rigRN.phl[494]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Player_rigRN.phl[495]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[496]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[497]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[498]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Backwards.o" "Player_rigRN.phl[499]"
		;
connectAttr "Player_rigRN.phl[500]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[501]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[502]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[503]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Backwards.o" "Player_rigRN.phl[504]"
		;
connectAttr "Player_rigRN.phl[505]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[506]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[507]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[508]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.o" "Player_rigRN.phl[509]"
		;
connectAttr "Player_rigRN.phl[510]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[511]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[512]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[513]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Backwards.o" "Player_rigRN.phl[514]"
		;
connectAttr "Player_rigRN.phl[515]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Player_rigRN.phl[516]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[517]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[518]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[519]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Backwards.ox" "Player_rigRN.phl[520]"
		;
connectAttr "Player_rigRN.phl[521]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[522]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[523]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[524]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Backwards.oy" "Player_rigRN.phl[525]"
		;
connectAttr "Player_rigRN.phl[526]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[527]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[528]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[529]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Backwards.oz" "Player_rigRN.phl[530]"
		;
connectAttr "Player_rigRN.phl[531]" "Player_rig:CTRL_arm_r_pole_rotate_Right.ro"
		;
connectAttr "Player_rigRN.phl[532]" "Player_rig:CTRL_arm_r_pole_rotate_Left.ro";
connectAttr "Player_rigRN.phl[533]" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[534]" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[535]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[536]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[537]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[538]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.o" "Player_rigRN.phl[539]"
		;
connectAttr "Player_rigRN.phl[540]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[541]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[542]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[543]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.o" "Player_rigRN.phl[544]"
		;
connectAttr "Player_rigRN.phl[545]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[546]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[547]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[548]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.o" "Player_rigRN.phl[549]"
		;
connectAttr "Player_rigRN.phl[550]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Player_rigRN.phl[551]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Player_rigRN.phl[552]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Player_rigRN.phl[553]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Player_rigRN.phl[554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Player_rigRN.phl[555]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[556]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[557]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[558]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Backwards.ox" "Player_rigRN.phl[559]"
		;
connectAttr "Player_rigRN.phl[560]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[561]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[562]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[563]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Backwards.oy" "Player_rigRN.phl[564]"
		;
connectAttr "Player_rigRN.phl[565]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[566]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[567]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[568]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Backwards.oz" "Player_rigRN.phl[569]"
		;
connectAttr "Player_rigRN.phl[570]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[571]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[572]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[573]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Backwards.o" "Player_rigRN.phl[574]"
		;
connectAttr "Player_rigRN.phl[575]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[576]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[577]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[578]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Backwards.o" "Player_rigRN.phl[579]"
		;
connectAttr "Player_rigRN.phl[580]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[581]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[582]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[583]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Backwards.o" "Player_rigRN.phl[584]"
		;
connectAttr "Player_rigRN.phl[585]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[586]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[587]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[588]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Backwards.o" "Player_rigRN.phl[589]"
		;
connectAttr "Player_rigRN.phl[590]" "Player_rig:CTRL_shoulder_l_rotate_Right.ro"
		;
connectAttr "Player_rigRN.phl[591]" "Player_rig:CTRL_shoulder_l_rotate_Left.ro";
connectAttr "Player_rigRN.phl[592]" "Player_rig:CTRL_shoulder_l_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[593]" "Player_rig:CTRL_shoulder_l_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[594]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[595]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[596]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[597]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Backwards.o" "Player_rigRN.phl[598]"
		;
connectAttr "Player_rigRN.phl[599]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[600]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[601]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[602]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Backwards.o" "Player_rigRN.phl[603]"
		;
connectAttr "Player_rigRN.phl[604]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[605]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[606]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[607]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.o" "Player_rigRN.phl[608]"
		;
connectAttr "Player_rigRN.phl[609]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Player_rigRN.phl[610]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Player_rigRN.phl[611]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Player_rigRN.phl[612]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Player_rigRN.phl[613]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Player_rigRN.phl[614]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Player_rigRN.phl[615]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Player_rigRN.phl[616]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Player_rigRN.phl[617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Player_rigRN.phl[618]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[619]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[620]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[621]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Backwards.o" "Player_rigRN.phl[622]"
		;
connectAttr "Player_rigRN.phl[623]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[624]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[625]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[626]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Backwards.oy" "Player_rigRN.phl[627]"
		;
connectAttr "Player_rigRN.phl[628]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[629]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[630]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[631]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Backwards.ox" "Player_rigRN.phl[632]"
		;
connectAttr "Player_rigRN.phl[633]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[634]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[635]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[636]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Backwards.oz" "Player_rigRN.phl[637]"
		;
connectAttr "Player_rigRN.phl[638]" "Player_rig:CTRL_arm_l_ik_rotate_Left.ro";
connectAttr "Player_rigRN.phl[639]" "Player_rig:CTRL_arm_l_ik_rotate_Right.ro";
connectAttr "Player_rigRN.phl[640]" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[641]" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[642]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[643]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[644]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[645]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Backwards.o" "Player_rigRN.phl[646]"
		;
connectAttr "Player_rigRN.phl[647]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[648]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[649]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[650]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Backwards.o" "Player_rigRN.phl[651]"
		;
connectAttr "Player_rigRN.phl[652]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[653]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[654]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[655]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.o" "Player_rigRN.phl[656]"
		;
connectAttr "Player_rigRN.phl[657]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Player_rigRN.phl[658]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[659]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[660]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[661]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.o" "Player_rigRN.phl[662]"
		;
connectAttr "Player_rigRN.phl[663]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[664]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[665]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[666]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.o" "Player_rigRN.phl[667]"
		;
connectAttr "Player_rigRN.phl[668]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[669]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[670]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[671]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.o" "Player_rigRN.phl[672]"
		;
connectAttr "Player_rigRN.phl[673]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Player_rigRN.phl[674]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Player_rigRN.phl[675]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Player_rigRN.phl[676]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[677]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[678]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[679]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Backwards.o" "Player_rigRN.phl[680]"
		;
connectAttr "Player_rigRN.phl[681]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[682]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[683]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[684]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Backwards.o" "Player_rigRN.phl[685]"
		;
connectAttr "Player_rigRN.phl[686]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[687]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[688]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[689]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.o" "Player_rigRN.phl[690]"
		;
connectAttr "Player_rigRN.phl[691]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[692]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[693]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[694]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Backwards.o" "Player_rigRN.phl[695]"
		;
connectAttr "Player_rigRN.phl[696]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Player_rigRN.phl[697]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[698]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[699]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[700]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Backwards.ox" "Player_rigRN.phl[701]"
		;
connectAttr "Player_rigRN.phl[702]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[703]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[704]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[705]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Backwards.oy" "Player_rigRN.phl[706]"
		;
connectAttr "Player_rigRN.phl[707]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[708]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[709]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[710]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Backwards.oz" "Player_rigRN.phl[711]"
		;
connectAttr "Player_rigRN.phl[712]" "Player_rig:CTRL_arm_l_pole_rotate_Right.ro"
		;
connectAttr "Player_rigRN.phl[713]" "Player_rig:CTRL_arm_l_pole_rotate_Left.ro";
connectAttr "Player_rigRN.phl[714]" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[715]" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[716]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[717]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[718]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[719]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.o" "Player_rigRN.phl[720]"
		;
connectAttr "Player_rigRN.phl[721]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[722]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[723]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[724]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.o" "Player_rigRN.phl[725]"
		;
connectAttr "Player_rigRN.phl[726]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[727]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[728]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[729]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.o" "Player_rigRN.phl[730]"
		;
connectAttr "Player_rigRN.phl[731]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Player_rigRN.phl[732]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Player_rigRN.phl[733]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[734]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[735]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[736]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_Orient_Backwards.o" "Player_rigRN.phl[737]";
connectAttr "Player_rigRN.phl[738]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[739]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[740]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[741]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_translateX_Backwards.o" "Player_rigRN.phl[742]"
		;
connectAttr "Player_rigRN.phl[743]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[744]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[745]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[746]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_translateY_Backwards.o" "Player_rigRN.phl[747]"
		;
connectAttr "Player_rigRN.phl[748]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[749]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[750]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[751]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_translateZ_Backwards.o" "Player_rigRN.phl[752]"
		;
connectAttr "Player_rigRN.phl[753]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[754]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[755]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[756]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_rotate_Backwards.ox" "Player_rigRN.phl[757]";
connectAttr "Player_rigRN.phl[758]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[759]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[760]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[761]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_rotate_Backwards.oy" "Player_rigRN.phl[762]";
connectAttr "Player_rigRN.phl[763]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[764]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[765]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[766]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_rotate_Backwards.oz" "Player_rigRN.phl[767]";
connectAttr "Player_rigRN.phl[768]" "Player_rig:CTRL_head_rotate_Left.ro";
connectAttr "Player_rigRN.phl[769]" "Player_rig:CTRL_head_rotate_Right.ro";
connectAttr "Player_rigRN.phl[770]" "Player_rig:CTRL_head_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[771]" "Player_rig:CTRL_head_rotate_Backwards.ro";
connectAttr "Player_rigRN.phl[772]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[773]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[774]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[775]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_scaleX_Backwards.o" "Player_rigRN.phl[776]";
connectAttr "Player_rigRN.phl[777]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[778]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[779]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[780]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_scaleY_Backwards.o" "Player_rigRN.phl[781]";
connectAttr "Player_rigRN.phl[782]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[783]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[784]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[785]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_scaleZ_Backwards.o" "Player_rigRN.phl[786]";
connectAttr "Player_rigRN.phl[787]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Player_rigRN.phl[788]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[789]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[790]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[791]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_head_visibility_Backwards.o" "Player_rigRN.phl[792]"
		;
connectAttr "Player_rigRN.phl[793]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Player_rigRN.phl[794]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Player_rigRN.phl[795]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Player_rigRN.phl[796]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[797]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[798]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[799]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Backwards.o" "Player_rigRN.phl[800]"
		;
connectAttr "Player_rigRN.phl[801]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[802]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[803]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[804]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Backwards.o" "Player_rigRN.phl[805]"
		;
connectAttr "Player_rigRN.phl[806]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[807]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[808]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[809]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Backwards.o" "Player_rigRN.phl[810]"
		;
connectAttr "Player_rigRN.phl[811]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[812]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[813]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[814]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.o" "Player_rigRN.phl[815]"
		;
connectAttr "Player_rigRN.phl[816]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[817]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[818]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[819]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Backwards.ox" "Player_rigRN.phl[820]"
		;
connectAttr "Player_rigRN.phl[821]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[822]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[823]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[824]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Backwards.oy" "Player_rigRN.phl[825]"
		;
connectAttr "Player_rigRN.phl[826]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[827]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[828]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[829]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Backwards.oz" "Player_rigRN.phl[830]"
		;
connectAttr "Player_rigRN.phl[831]" "Player_rig:CTRL_pelvis_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[832]" "Player_rig:CTRL_pelvis_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[833]" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[834]" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[835]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[836]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[837]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[838]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.o" "Player_rigRN.phl[839]"
		;
connectAttr "Player_rigRN.phl[840]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[841]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[842]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[843]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.o" "Player_rigRN.phl[844]"
		;
connectAttr "Player_rigRN.phl[845]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[846]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[847]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[848]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.o" "Player_rigRN.phl[849]"
		;
connectAttr "Player_rigRN.phl[850]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Player_rigRN.phl[851]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Player_rigRN.phl[852]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[853]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[854]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[855]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Backwards.o" "Player_rigRN.phl[856]"
		;
connectAttr "Player_rigRN.phl[857]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[858]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[859]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[860]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Backwards.o" "Player_rigRN.phl[861]"
		;
connectAttr "Player_rigRN.phl[862]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[863]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[864]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[865]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Backwards.o" "Player_rigRN.phl[866]"
		;
connectAttr "Player_rigRN.phl[867]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[868]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[869]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[870]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Backwards.oz" "Player_rigRN.phl[871]"
		;
connectAttr "Player_rigRN.phl[872]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[873]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[874]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[875]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Backwards.ox" "Player_rigRN.phl[876]"
		;
connectAttr "Player_rigRN.phl[877]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[878]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[879]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[880]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Backwards.oy" "Player_rigRN.phl[881]"
		;
connectAttr "Player_rigRN.phl[882]" "Player_rig:CTRL_spine_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[883]" "Player_rig:CTRL_spine_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[884]" "Player_rig:CTRL_spine_IK_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[885]" "Player_rig:CTRL_spine_IK_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[886]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[887]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[888]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[889]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Backwards.o" "Player_rigRN.phl[890]"
		;
connectAttr "Player_rigRN.phl[891]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[892]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[893]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[894]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Backwards.o" "Player_rigRN.phl[895]"
		;
connectAttr "Player_rigRN.phl[896]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[897]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[898]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[899]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Backwards.o" "Player_rigRN.phl[900]"
		;
connectAttr "Player_rigRN.phl[901]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Player_rigRN.phl[902]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[903]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[904]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[905]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Backwards.o" "Player_rigRN.phl[906]"
		;
connectAttr "Player_rigRN.phl[907]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Player_rigRN.phl[908]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[909]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[910]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[911]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Backwards.o" "Player_rigRN.phl[912]"
		;
connectAttr "Player_rigRN.phl[913]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[914]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[915]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[916]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Backwards.o" "Player_rigRN.phl[917]"
		;
connectAttr "Player_rigRN.phl[918]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[919]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[920]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[921]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Backwards.o" "Player_rigRN.phl[922]"
		;
connectAttr "Player_rigRN.phl[923]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[924]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[925]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[926]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Backwards.oz" "Player_rigRN.phl[927]"
		;
connectAttr "Player_rigRN.phl[928]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[929]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[930]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[931]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Backwards.ox" "Player_rigRN.phl[932]"
		;
connectAttr "Player_rigRN.phl[933]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[934]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[935]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[936]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Backwards.oy" "Player_rigRN.phl[937]"
		;
connectAttr "Player_rigRN.phl[938]" "Player_rig:CTRL_chest_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[939]" "Player_rig:CTRL_chest_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[940]" "Player_rig:CTRL_chest_IK_rotate_Forwards.ro"
		;
connectAttr "Player_rigRN.phl[941]" "Player_rig:CTRL_chest_IK_rotate_Backwards.ro"
		;
connectAttr "Player_rigRN.phl[942]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[943]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[944]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[945]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Backwards.o" "Player_rigRN.phl[946]"
		;
connectAttr "Player_rigRN.phl[947]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[948]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[949]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[950]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Backwards.o" "Player_rigRN.phl[951]"
		;
connectAttr "Player_rigRN.phl[952]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[953]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[954]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[955]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Backwards.o" "Player_rigRN.phl[956]"
		;
connectAttr "Player_rigRN.phl[957]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Player_rigRN.phl[958]" "Left.dsm" -na;
connectAttr "Player_rigRN.phl[959]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[960]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[961]" "Backwards.dsm" -na;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Backwards.o" "Player_rigRN.phl[962]"
		;
connectAttr "Player_rigRN.phl[963]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Player_rigRN.phl[964]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Player_rigRN.phl[965]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Player_rigRN.phl[966]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Player_rigRN.phl[967]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Player_rigRN.phl[968]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Player_rigRN.phl[969]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Player_rigRN.phl[970]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Player_rigRN.phl[971]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Player_rigRN.phl[972]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Player_rigRN.phl[973]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Player_rigRN.phl[974]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Player_rigRN.phl[975]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Player_rigRN.phl[976]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Player_rigRN.phl[977]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Player_rigRN.phl[978]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Player_rigRN.phl[979]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Player_rigRN.phl[980]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Player_rigRN.phl[981]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Player_rigRN.phl[982]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Player_rigRN.phl[983]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Player_rigRN.phl[984]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Player_rigRN.phl[985]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Player_rigRN.phl[986]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Player_rigRN.phl[987]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Player_rigRN.phl[988]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Player_rigRN.phl[989]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Player_rigRN.phl[990]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Player_rigRN.phl[991]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Player_rigRN.phl[992]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Player_rigRN.phl[993]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Player_rigRN.phl[994]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Player_rigRN.phl[995]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Player_rigRN.phl[996]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Player_rigRN.phl[997]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Player_rigRN.phl[998]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Player_rigRN.phl[999]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Player_rigRN.phl[1000]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Player_rigRN.phl[1001]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Player_rigRN.phl[1002]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Player_rigRN.phl[1003]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Player_rigRN.phl[1004]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Player_rigRN.phl[1005]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Player_rigRN.phl[1006]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Player_rigRN.phl[1007]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Player_rigRN.phl[1008]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Player_rigRN.phl[1009]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Player_rigRN.phl[1010]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Player_rigRN.phl[1011]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Player_rigRN.phl[1012]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Player_rigRN.phl[1013]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Player_rigRN.phl[1014]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Player_rigRN.phl[1015]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Player_rigRN.phl[1016]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Player_rigRN.phl[1017]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Player_rigRN.phl[1018]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Player_rigRN.phl[1019]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Player_rigRN.phl[1020]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Player_rigRN.phl[1021]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Player_rigRN.phl[1022]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Player_rigRN.phl[1023]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Player_rigRN.phl[1024]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Player_rigRN.phl[1025]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Player_rigRN.phl[1026]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Player_rigRN.phl[1027]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Player_rigRN.phl[1028]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Player_rigRN.phl[1029]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Player_rigRN.phl[1030]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Player_rigRN.phl[1031]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Player_rigRN.phl[1032]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Player_rigRN.phl[1033]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Player_rigRN.phl[1034]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Player_rigRN.phl[1035]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Player_rigRN.phl[1036]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Player_rigRN.phl[1037]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Player_rigRN.phl[1038]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Player_rigRN.phl[1039]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Player_rigRN.phl[1040]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Player_rigRN.phl[1041]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Player_rigRN.phl[1042]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Player_rigRN.phl[1043]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Player_rigRN.phl[1044]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Player_rigRN.phl[1045]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Player_rigRN.phl[1046]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Player_rigRN.phl[1047]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Player_rigRN.phl[1048]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Player_rigRN.phl[1049]" "Player_rig:CTRL_foot_l_IK_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1050]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Player_rigRN.phl[1051]" "Player_rig:CTRL_arm_l_ik_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1052]" "Player_rig:CTRL_arm_l_pole_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1053]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Player_rigRN.phl[1054]" "Player_rig:CTRL_pelvis_IK_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1055]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Player_rigRN.phl[1056]" "Player_rig:CTRL_arm_r_ik_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1057]" "Player_rig:CTRL_arm_r_pole_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1058]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Player_rigRN.phl[1059]" "Player_rig:CTRL_foot_r_IK_visibility_Left.ia"
		;
connectAttr "Player_rigRN.phl[1060]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Player_rigRN.phl[1061]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Player_rigRN.phl[1062]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Player_rigRN.phl[1063]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Player_rigRN.phl[1064]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Player_rigRN.phl[1065]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Player_rigRN.phl[1066]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Player_rigRN.phl[1067]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Player_rigRN.phl[1068]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Player_rigRN.phl[1069]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Player_rigRN.phl[1070]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Player_rigRN.phl[1071]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Player_rigRN.phl[1072]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Player_rigRN.phl[1073]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Player_rigRN.phl[1074]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Player_rigRN.phl[1075]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Player_rigRN.phl[1076]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Player_rigRN.phl[1077]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Player_rigRN.phl[1078]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Player_rigRN.phl[1079]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Player_rigRN.phl[1080]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Player_rigRN.phl[1081]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Player_rigRN.phl[1082]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Player_rigRN.phl[1083]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Player_rigRN.phl[1084]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Player_rigRN.phl[1085]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Player_rigRN.phl[1086]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Player_rigRN.phl[1087]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Player_rigRN.phl[1088]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Player_rigRN.phl[1089]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Player_rigRN.phl[1090]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Player_rigRN.phl[1091]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Player_rigRN.phl[1092]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Player_rigRN.phl[1093]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Player_rigRN.phl[1094]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Player_rigRN.phl[1095]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Player_rigRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Player_rigRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Player_rigRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Player_rigRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Player_rigRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Player_rigRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Player_rigRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Player_rigRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Player_rigRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Player_rigRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Player_rigRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Player_rigRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Player_rigRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
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
connectAttr "Left.sl" "BaseAnimation.chsl[0]";
connectAttr "Right.sl" "BaseAnimation.chsl[1]";
connectAttr "Forwards.sl" "BaseAnimation.chsl[2]";
connectAttr "Backwards.sl" "BaseAnimation.chsl[3]";
connectAttr "Left.play" "BaseAnimation.cdly[0]";
connectAttr "Right.play" "BaseAnimation.cdly[1]";
connectAttr "Forwards.play" "BaseAnimation.cdly[2]";
connectAttr "Backwards.play" "BaseAnimation.cdly[3]";
connectAttr "BaseAnimation.csol" "Left.sslo";
connectAttr "BaseAnimation.fgwt" "Left.pwth";
connectAttr "BaseAnimation.omte" "Left.pmte";
connectAttr "CTRL_ship_visibility_Left.msg" "Left.bnds[0]";
connectAttr "CTRL_ship_translateX_Left.msg" "Left.bnds[1]";
connectAttr "CTRL_ship_translateY_Left.msg" "Left.bnds[2]";
connectAttr "CTRL_ship_translateZ_Left.msg" "Left.bnds[3]";
connectAttr "CTRL_ship_rotate_Left.msg" "Left.bnds[7]";
connectAttr "CTRL_ship_scaleX_Left.msg" "Left.bnds[8]";
connectAttr "CTRL_ship_scaleY_Left.msg" "Left.bnds[9]";
connectAttr "CTRL_ship_scaleZ_Left.msg" "Left.bnds[10]";
connectAttr "Player_rig:CTRL_cog_visibility_Left.msg" "Left.bnds[11]";
connectAttr "Player_rig:CTRL_cog_translateX_Left.msg" "Left.bnds[12]";
connectAttr "Player_rig:CTRL_cog_translateY_Left.msg" "Left.bnds[13]";
connectAttr "Player_rig:CTRL_cog_translateZ_Left.msg" "Left.bnds[14]";
connectAttr "Player_rig:CTRL_cog_rotate_Left.msg" "Left.bnds[18]";
connectAttr "Player_rig:CTRL_cog_scaleX_Left.msg" "Left.bnds[19]";
connectAttr "Player_rig:CTRL_cog_scaleY_Left.msg" "Left.bnds[20]";
connectAttr "Player_rig:CTRL_cog_scaleZ_Left.msg" "Left.bnds[21]";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Left.msg" "Left.bnds[22]";
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Left.msg" "Left.bnds[23]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Left.msg" "Left.bnds[24]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Left.msg" "Left.bnds[25]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Left.msg" "Left.bnds[26]";
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Left.msg" "Left.bnds[30]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Left.msg" "Left.bnds[31]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Left.msg" "Left.bnds[32]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Left.msg" "Left.bnds[33]";
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Left.msg" "Left.bnds[34]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Left.msg" "Left.bnds[35]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Left.msg" "Left.bnds[36]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Left.msg" "Left.bnds[37]";
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Left.msg" "Left.bnds[41]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Left.msg" "Left.bnds[42]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Left.msg" "Left.bnds[43]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Left.msg" "Left.bnds[44]";
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Left.msg" "Left.bnds[45]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Left.msg" "Left.bnds[46]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Left.msg" "Left.bnds[47]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Left.msg" "Left.bnds[48]";
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Left.msg" "Left.bnds[52]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Left.msg" "Left.bnds[53]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Left.msg" "Left.bnds[54]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Left.msg" "Left.bnds[55]";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Left.msg" "Left.bnds[56]";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Left.msg" "Left.bnds[57]";
connectAttr "Player_rig:CTRL_spine_IK_translateY_Left.msg" "Left.bnds[58]";
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Left.msg" "Left.bnds[59]";
connectAttr "Player_rig:CTRL_spine_IK_rotate_Left.msg" "Left.bnds[63]";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Left.msg" "Left.bnds[64]";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Left.msg" "Left.bnds[65]";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Left.msg" "Left.bnds[66]";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Left.msg" "Left.bnds[67]";
connectAttr "Player_rig:CTRL_chest_IK_translateX_Left.msg" "Left.bnds[68]";
connectAttr "Player_rig:CTRL_chest_IK_translateY_Left.msg" "Left.bnds[69]";
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Left.msg" "Left.bnds[70]";
connectAttr "Player_rig:CTRL_chest_IK_rotate_Left.msg" "Left.bnds[74]";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Left.msg" "Left.bnds[75]";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Left.msg" "Left.bnds[76]";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Left.msg" "Left.bnds[77]";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Left.msg" "Left.bnds[78]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Left.msg" "Left.bnds[79]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Left.msg" "Left.bnds[80]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Left.msg" "Left.bnds[81]";
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Left.msg" "Left.bnds[85]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Left.msg" "Left.bnds[86]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Left.msg" "Left.bnds[87]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Left.msg" "Left.bnds[88]";
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Left.msg" "Left.bnds[89]";
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Left.msg" "Left.bnds[90]";
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Left.msg" "Left.bnds[91]";
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Left.msg" "Left.bnds[92]";
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Left.msg" "Left.bnds[96]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Left.msg" "Left.bnds[97]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Left.msg" "Left.bnds[98]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Left.msg" "Left.bnds[99]";
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Left.msg" "Left.bnds[100]";
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Left.msg" "Left.bnds[101]";
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Left.msg" "Left.bnds[102]";
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Left.msg" "Left.bnds[103]";
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Left.msg" "Left.bnds[107]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Left.msg" "Left.bnds[108]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Left.msg" "Left.bnds[109]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Left.msg" "Left.bnds[110]";
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Left.msg" "Left.bnds[111]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Left.msg" "Left.bnds[112]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Left.msg" "Left.bnds[113]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Left.msg" "Left.bnds[114]";
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Left.msg" "Left.bnds[118]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Left.msg" "Left.bnds[119]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Left.msg" "Left.bnds[120]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Left.msg" "Left.bnds[121]";
connectAttr "Player_rig:CTRL_head_visibility_Left.msg" "Left.bnds[122]";
connectAttr "Player_rig:CTRL_head_translateX_Left.msg" "Left.bnds[123]";
connectAttr "Player_rig:CTRL_head_translateY_Left.msg" "Left.bnds[124]";
connectAttr "Player_rig:CTRL_head_translateZ_Left.msg" "Left.bnds[125]";
connectAttr "Player_rig:CTRL_head_rotate_Left.msg" "Left.bnds[129]";
connectAttr "Player_rig:CTRL_head_scaleX_Left.msg" "Left.bnds[130]";
connectAttr "Player_rig:CTRL_head_scaleY_Left.msg" "Left.bnds[131]";
connectAttr "Player_rig:CTRL_head_scaleZ_Left.msg" "Left.bnds[132]";
connectAttr "Player_rig:CTRL_head_Orient_Left.msg" "Left.bnds[133]";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Left.msg" "Left.bnds[134]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Left.msg" "Left.bnds[135]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Left.msg" "Left.bnds[136]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Left.msg" "Left.bnds[137]";
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Left.msg" "Left.bnds[141]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Left.msg" "Left.bnds[142]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Left.msg" "Left.bnds[143]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Left.msg" "Left.bnds[144]";
connectAttr "Player_rig:CTRL_root_visibility_Left.msg" "Left.bnds[145]";
connectAttr "Player_rig:CTRL_root_translateX_Left.msg" "Left.bnds[146]";
connectAttr "Player_rig:CTRL_root_translateY_Left.msg" "Left.bnds[147]";
connectAttr "Player_rig:CTRL_root_translateZ_Left.msg" "Left.bnds[148]";
connectAttr "Player_rig:CTRL_root_rotate_Left.msg" "Left.bnds[152]";
connectAttr "Player_rig:CTRL_root_scaleX_Left.msg" "Left.bnds[153]";
connectAttr "Player_rig:CTRL_root_scaleY_Left.msg" "Left.bnds[154]";
connectAttr "Player_rig:CTRL_root_scaleZ_Left.msg" "Left.bnds[155]";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Left.msg" "Left.bnds[156]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Left.msg" "Left.bnds[157]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Left.msg" "Left.bnds[158]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Left.msg" "Left.bnds[159]";
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Left.msg" "Left.bnds[163]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Left.msg" "Left.bnds[164]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Left.msg" "Left.bnds[165]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Left.msg" "Left.bnds[166]";
connectAttr "Left.bgwt" "CTRL_ship_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_visibility_Left.wb";
connectAttr "CTRL_ship_visibility.o" "CTRL_ship_visibility_Left.ia";
connectAttr "CTRL_ship_visibility_Left_inputB.o" "CTRL_ship_visibility_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateX_Left.wb";
connectAttr "CTRL_ship_translateX_Left_inputB.o" "CTRL_ship_translateX_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateY_Left.wb";
connectAttr "CTRL_ship_translateY.o" "CTRL_ship_translateY_Left.ia";
connectAttr "CTRL_ship_translateY_Left_inputB.o" "CTRL_ship_translateY_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateZ_Left.wb";
connectAttr "CTRL_ship_translateZ_Left_inputB.o" "CTRL_ship_translateZ_Left.ib";
connectAttr "Left.oram" "CTRL_ship_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_rotate_Left.wb";
connectAttr "CTRL_ship_rotate_Left_inputBX.o" "CTRL_ship_rotate_Left.ibx";
connectAttr "CTRL_ship_rotate_Left_inputBY.o" "CTRL_ship_rotate_Left.iby";
connectAttr "CTRL_ship_rotate_Left_inputBZ.o" "CTRL_ship_rotate_Left.ibz";
connectAttr "Left.sam" "CTRL_ship_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleX_Left.wb";
connectAttr "CTRL_ship_scaleX_Left_inputB.o" "CTRL_ship_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_ship_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleY_Left.wb";
connectAttr "CTRL_ship_scaleY_Left_inputB.o" "CTRL_ship_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_ship_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleZ_Left.wb";
connectAttr "CTRL_ship_scaleZ_Left_inputB.o" "CTRL_ship_scaleZ_Left.ib";
connectAttr "BaseAnimation.csol" "Right.sslo";
connectAttr "BaseAnimation.fgwt" "Right.pwth";
connectAttr "BaseAnimation.omte" "Right.pmte";
connectAttr "CTRL_ship_visibility_Right.msg" "Right.bnds[0]";
connectAttr "CTRL_ship_translateX_Right.msg" "Right.bnds[1]";
connectAttr "CTRL_ship_translateY_Right.msg" "Right.bnds[2]";
connectAttr "CTRL_ship_translateZ_Right.msg" "Right.bnds[3]";
connectAttr "CTRL_ship_rotate_Right.msg" "Right.bnds[7]";
connectAttr "CTRL_ship_scaleX_Right.msg" "Right.bnds[8]";
connectAttr "CTRL_ship_scaleY_Right.msg" "Right.bnds[9]";
connectAttr "CTRL_ship_scaleZ_Right.msg" "Right.bnds[10]";
connectAttr "Player_rig:CTRL_cog_visibility_Right.msg" "Right.bnds[11]";
connectAttr "Player_rig:CTRL_cog_translateX_Right.msg" "Right.bnds[12]";
connectAttr "Player_rig:CTRL_cog_translateY_Right.msg" "Right.bnds[13]";
connectAttr "Player_rig:CTRL_cog_translateZ_Right.msg" "Right.bnds[14]";
connectAttr "Player_rig:CTRL_cog_rotate_Right.msg" "Right.bnds[18]";
connectAttr "Player_rig:CTRL_cog_scaleX_Right.msg" "Right.bnds[19]";
connectAttr "Player_rig:CTRL_cog_scaleY_Right.msg" "Right.bnds[20]";
connectAttr "Player_rig:CTRL_cog_scaleZ_Right.msg" "Right.bnds[21]";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Right.msg" "Right.bnds[22]";
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Right.msg" "Right.bnds[23]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Right.msg" "Right.bnds[24]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Right.msg" "Right.bnds[25]";
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Right.msg" "Right.bnds[26]";
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Right.msg" "Right.bnds[30]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Right.msg" "Right.bnds[31]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Right.msg" "Right.bnds[32]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Right.msg" "Right.bnds[33]";
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Right.msg" "Right.bnds[34]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Right.msg" "Right.bnds[35]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Right.msg" "Right.bnds[36]";
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Right.msg" "Right.bnds[37]";
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Right.msg" "Right.bnds[41]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Right.msg" "Right.bnds[42]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Right.msg" "Right.bnds[43]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Right.msg" "Right.bnds[44]";
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Right.msg" "Right.bnds[45]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Right.msg" "Right.bnds[46]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Right.msg" "Right.bnds[47]";
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Right.msg" "Right.bnds[48]";
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Right.msg" "Right.bnds[52]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Right.msg" "Right.bnds[53]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Right.msg" "Right.bnds[54]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Right.msg" "Right.bnds[55]";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Right.msg" "Right.bnds[56]";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Right.msg" "Right.bnds[57]";
connectAttr "Player_rig:CTRL_spine_IK_translateY_Right.msg" "Right.bnds[58]";
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Right.msg" "Right.bnds[59]";
connectAttr "Player_rig:CTRL_spine_IK_rotate_Right.msg" "Right.bnds[63]";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Right.msg" "Right.bnds[64]";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Right.msg" "Right.bnds[65]";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Right.msg" "Right.bnds[66]";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Right.msg" "Right.bnds[67]";
connectAttr "Player_rig:CTRL_chest_IK_translateX_Right.msg" "Right.bnds[68]";
connectAttr "Player_rig:CTRL_chest_IK_translateY_Right.msg" "Right.bnds[69]";
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Right.msg" "Right.bnds[70]";
connectAttr "Player_rig:CTRL_chest_IK_rotate_Right.msg" "Right.bnds[74]";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Right.msg" "Right.bnds[75]";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Right.msg" "Right.bnds[76]";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Right.msg" "Right.bnds[77]";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Right.msg" "Right.bnds[78]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Right.msg" "Right.bnds[79]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Right.msg" "Right.bnds[80]";
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Right.msg" "Right.bnds[81]";
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Right.msg" "Right.bnds[85]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Right.msg" "Right.bnds[86]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Right.msg" "Right.bnds[87]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Right.msg" "Right.bnds[88]";
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Right.msg" "Right.bnds[89]";
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Right.msg" "Right.bnds[90]";
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Right.msg" "Right.bnds[91]";
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Right.msg" "Right.bnds[92]";
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Right.msg" "Right.bnds[96]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Right.msg" "Right.bnds[97]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Right.msg" "Right.bnds[98]";
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Right.msg" "Right.bnds[99]";
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Right.msg" "Right.bnds[100]";
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Right.msg" "Right.bnds[101]";
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Right.msg" "Right.bnds[102]";
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Right.msg" "Right.bnds[103]";
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Right.msg" "Right.bnds[107]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Right.msg" "Right.bnds[108]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Right.msg" "Right.bnds[109]";
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Right.msg" "Right.bnds[110]";
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Right.msg" "Right.bnds[111]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Right.msg" "Right.bnds[112]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Right.msg" "Right.bnds[113]";
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Right.msg" "Right.bnds[114]";
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Right.msg" "Right.bnds[118]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Right.msg" "Right.bnds[119]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Right.msg" "Right.bnds[120]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Right.msg" "Right.bnds[121]";
connectAttr "Player_rig:CTRL_head_visibility_Right.msg" "Right.bnds[122]";
connectAttr "Player_rig:CTRL_head_translateX_Right.msg" "Right.bnds[123]";
connectAttr "Player_rig:CTRL_head_translateY_Right.msg" "Right.bnds[124]";
connectAttr "Player_rig:CTRL_head_translateZ_Right.msg" "Right.bnds[125]";
connectAttr "Player_rig:CTRL_head_rotate_Right.msg" "Right.bnds[129]";
connectAttr "Player_rig:CTRL_head_scaleX_Right.msg" "Right.bnds[130]";
connectAttr "Player_rig:CTRL_head_scaleY_Right.msg" "Right.bnds[131]";
connectAttr "Player_rig:CTRL_head_scaleZ_Right.msg" "Right.bnds[132]";
connectAttr "Player_rig:CTRL_head_Orient_Right.msg" "Right.bnds[133]";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Right.msg" "Right.bnds[134]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Right.msg" "Right.bnds[135]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Right.msg" "Right.bnds[136]";
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Right.msg" "Right.bnds[137]";
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Right.msg" "Right.bnds[141]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Right.msg" "Right.bnds[142]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Right.msg" "Right.bnds[143]";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Right.msg" "Right.bnds[144]";
connectAttr "Player_rig:CTRL_root_visibility_Right.msg" "Right.bnds[145]";
connectAttr "Player_rig:CTRL_root_translateX_Right.msg" "Right.bnds[146]";
connectAttr "Player_rig:CTRL_root_translateY_Right.msg" "Right.bnds[147]";
connectAttr "Player_rig:CTRL_root_translateZ_Right.msg" "Right.bnds[148]";
connectAttr "Player_rig:CTRL_root_rotate_Right.msg" "Right.bnds[152]";
connectAttr "Player_rig:CTRL_root_scaleX_Right.msg" "Right.bnds[153]";
connectAttr "Player_rig:CTRL_root_scaleY_Right.msg" "Right.bnds[154]";
connectAttr "Player_rig:CTRL_root_scaleZ_Right.msg" "Right.bnds[155]";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Right.msg" "Right.bnds[156]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Right.msg" "Right.bnds[157]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Right.msg" "Right.bnds[158]";
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Right.msg" "Right.bnds[159]";
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Right.msg" "Right.bnds[163]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Right.msg" "Right.bnds[164]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Right.msg" "Right.bnds[165]";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Right.msg" "Right.bnds[166]";
connectAttr "Right.bgwt" "CTRL_ship_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_visibility_Right.wb";
connectAttr "CTRL_ship_visibility_Left.o" "CTRL_ship_visibility_Right.ia";
connectAttr "CTRL_ship_visibility_Right_inputB.o" "CTRL_ship_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateX_Right.wb";
connectAttr "CTRL_ship_translateX_Left.o" "CTRL_ship_translateX_Right.ia";
connectAttr "CTRL_ship_translateX_Right_inputB.o" "CTRL_ship_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateY_Right.wb";
connectAttr "CTRL_ship_translateY_Left.o" "CTRL_ship_translateY_Right.ia";
connectAttr "CTRL_ship_translateY_Right_inputB.o" "CTRL_ship_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateZ_Right.wb";
connectAttr "CTRL_ship_translateZ_Left.o" "CTRL_ship_translateZ_Right.ia";
connectAttr "CTRL_ship_translateZ_Right_inputB.o" "CTRL_ship_translateZ_Right.ib"
		;
connectAttr "CTRL_ship_rotate_Left.ox" "CTRL_ship_rotate_Right.iax";
connectAttr "CTRL_ship_rotate_Left.oy" "CTRL_ship_rotate_Right.iay";
connectAttr "CTRL_ship_rotate_Left.oz" "CTRL_ship_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_ship_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_rotate_Right.wb";
connectAttr "CTRL_ship_rotate_Right_inputBX.o" "CTRL_ship_rotate_Right.ibx";
connectAttr "CTRL_ship_rotate_Right_inputBY.o" "CTRL_ship_rotate_Right.iby";
connectAttr "CTRL_ship_rotate_Right_inputBZ.o" "CTRL_ship_rotate_Right.ibz";
connectAttr "Right.sam" "CTRL_ship_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleX_Right.wb";
connectAttr "CTRL_ship_scaleX_Left.o" "CTRL_ship_scaleX_Right.ia";
connectAttr "CTRL_ship_scaleX_Right_inputB.o" "CTRL_ship_scaleX_Right.ib";
connectAttr "Right.sam" "CTRL_ship_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleY_Right.wb";
connectAttr "CTRL_ship_scaleY_Left.o" "CTRL_ship_scaleY_Right.ia";
connectAttr "CTRL_ship_scaleY_Right_inputB.o" "CTRL_ship_scaleY_Right.ib";
connectAttr "Right.sam" "CTRL_ship_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleZ_Right.wb";
connectAttr "CTRL_ship_scaleZ_Left.o" "CTRL_ship_scaleZ_Right.ia";
connectAttr "CTRL_ship_scaleZ_Right_inputB.o" "CTRL_ship_scaleZ_Right.ib";
connectAttr "BaseAnimation.csol" "Forwards.sslo";
connectAttr "BaseAnimation.fgwt" "Forwards.pwth";
connectAttr "BaseAnimation.omte" "Forwards.pmte";
connectAttr "CTRL_ship_visibility_Forwards.msg" "Forwards.bnds[0]";
connectAttr "CTRL_ship_translateX_Forwards.msg" "Forwards.bnds[1]";
connectAttr "CTRL_ship_translateY_Forwards.msg" "Forwards.bnds[2]";
connectAttr "CTRL_ship_translateZ_Forwards.msg" "Forwards.bnds[3]";
connectAttr "CTRL_ship_rotate_Forwards.msg" "Forwards.bnds[7]";
connectAttr "CTRL_ship_scaleX_Forwards.msg" "Forwards.bnds[8]";
connectAttr "CTRL_ship_scaleY_Forwards.msg" "Forwards.bnds[9]";
connectAttr "CTRL_ship_scaleZ_Forwards.msg" "Forwards.bnds[10]";
connectAttr "Player_rig:CTRL_cog_visibility_Forwards.msg" "Forwards.bnds[11]";
connectAttr "Player_rig:CTRL_cog_translateX_Forwards.msg" "Forwards.bnds[12]";
connectAttr "Player_rig:CTRL_cog_translateY_Forwards.msg" "Forwards.bnds[13]";
connectAttr "Player_rig:CTRL_cog_translateZ_Forwards.msg" "Forwards.bnds[14]";
connectAttr "Player_rig:CTRL_cog_rotate_Forwards.msg" "Forwards.bnds[18]";
connectAttr "Player_rig:CTRL_cog_scaleX_Forwards.msg" "Forwards.bnds[19]";
connectAttr "Player_rig:CTRL_cog_scaleY_Forwards.msg" "Forwards.bnds[20]";
connectAttr "Player_rig:CTRL_cog_scaleZ_Forwards.msg" "Forwards.bnds[21]";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Forwards.msg" "Forwards.bnds[22]";
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Forwards.msg" "Forwards.bnds[23]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Forwards.msg" "Forwards.bnds[24]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Forwards.msg" "Forwards.bnds[25]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.msg" "Forwards.bnds[26]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Forwards.msg" "Forwards.bnds[30]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.msg" "Forwards.bnds[31]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.msg" "Forwards.bnds[32]";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.msg" "Forwards.bnds[33]";
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Forwards.msg" "Forwards.bnds[34]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Forwards.msg" "Forwards.bnds[35]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Forwards.msg" "Forwards.bnds[36]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.msg" "Forwards.bnds[37]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Forwards.msg" "Forwards.bnds[41]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.msg" "Forwards.bnds[42]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.msg" "Forwards.bnds[43]";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.msg" "Forwards.bnds[44]";
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Forwards.msg" "Forwards.bnds[45]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Forwards.msg" "Forwards.bnds[46]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Forwards.msg" "Forwards.bnds[47]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.msg" "Forwards.bnds[48]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Forwards.msg" "Forwards.bnds[52]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.msg" "Forwards.bnds[53]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.msg" "Forwards.bnds[54]";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.msg" "Forwards.bnds[55]";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Forwards.msg" "Forwards.bnds[56]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Forwards.msg" "Forwards.bnds[57]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Forwards.msg" "Forwards.bnds[58]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Forwards.msg" "Forwards.bnds[59]"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Forwards.msg" "Forwards.bnds[63]";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Forwards.msg" "Forwards.bnds[64]";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Forwards.msg" "Forwards.bnds[65]";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Forwards.msg" "Forwards.bnds[66]";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Forwards.msg" "Forwards.bnds[67]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Forwards.msg" "Forwards.bnds[68]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Forwards.msg" "Forwards.bnds[69]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Forwards.msg" "Forwards.bnds[70]"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Forwards.msg" "Forwards.bnds[74]";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Forwards.msg" "Forwards.bnds[75]";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Forwards.msg" "Forwards.bnds[76]";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Forwards.msg" "Forwards.bnds[77]";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Forwards.msg" "Forwards.bnds[78]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Forwards.msg" "Forwards.bnds[79]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Forwards.msg" "Forwards.bnds[80]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.msg" "Forwards.bnds[81]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Forwards.msg" "Forwards.bnds[85]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.msg" "Forwards.bnds[86]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.msg" "Forwards.bnds[87]";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.msg" "Forwards.bnds[88]";
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Forwards.msg" "Forwards.bnds[89]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Forwards.msg" "Forwards.bnds[90]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Forwards.msg" "Forwards.bnds[91]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Forwards.msg" "Forwards.bnds[92]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Forwards.msg" "Forwards.bnds[96]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Forwards.msg" "Forwards.bnds[97]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Forwards.msg" "Forwards.bnds[98]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.msg" "Forwards.bnds[99]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Forwards.msg" "Forwards.bnds[100]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Forwards.msg" "Forwards.bnds[101]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Forwards.msg" "Forwards.bnds[102]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Forwards.msg" "Forwards.bnds[103]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Forwards.msg" "Forwards.bnds[107]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Forwards.msg" "Forwards.bnds[108]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Forwards.msg" "Forwards.bnds[109]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.msg" "Forwards.bnds[110]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Forwards.msg" "Forwards.bnds[111]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Forwards.msg" "Forwards.bnds[112]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Forwards.msg" "Forwards.bnds[113]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.msg" "Forwards.bnds[114]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Forwards.msg" "Forwards.bnds[118]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.msg" "Forwards.bnds[119]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.msg" "Forwards.bnds[120]";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.msg" "Forwards.bnds[121]";
connectAttr "Player_rig:CTRL_head_visibility_Forwards.msg" "Forwards.bnds[122]";
connectAttr "Player_rig:CTRL_head_translateX_Forwards.msg" "Forwards.bnds[123]";
connectAttr "Player_rig:CTRL_head_translateY_Forwards.msg" "Forwards.bnds[124]";
connectAttr "Player_rig:CTRL_head_translateZ_Forwards.msg" "Forwards.bnds[125]";
connectAttr "Player_rig:CTRL_head_rotate_Forwards.msg" "Forwards.bnds[129]";
connectAttr "Player_rig:CTRL_head_scaleX_Forwards.msg" "Forwards.bnds[130]";
connectAttr "Player_rig:CTRL_head_scaleY_Forwards.msg" "Forwards.bnds[131]";
connectAttr "Player_rig:CTRL_head_scaleZ_Forwards.msg" "Forwards.bnds[132]";
connectAttr "Player_rig:CTRL_head_Orient_Forwards.msg" "Forwards.bnds[133]";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Forwards.msg" "Forwards.bnds[134]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Forwards.msg" "Forwards.bnds[135]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Forwards.msg" "Forwards.bnds[136]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.msg" "Forwards.bnds[137]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Forwards.msg" "Forwards.bnds[141]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.msg" "Forwards.bnds[142]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.msg" "Forwards.bnds[143]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.msg" "Forwards.bnds[144]"
		;
connectAttr "Player_rig:CTRL_root_visibility_Forwards.msg" "Forwards.bnds[145]";
connectAttr "Player_rig:CTRL_root_translateX_Forwards.msg" "Forwards.bnds[146]";
connectAttr "Player_rig:CTRL_root_translateY_Forwards.msg" "Forwards.bnds[147]";
connectAttr "Player_rig:CTRL_root_translateZ_Forwards.msg" "Forwards.bnds[148]";
connectAttr "Player_rig:CTRL_root_rotate_Forwards.msg" "Forwards.bnds[152]";
connectAttr "Player_rig:CTRL_root_scaleX_Forwards.msg" "Forwards.bnds[153]";
connectAttr "Player_rig:CTRL_root_scaleY_Forwards.msg" "Forwards.bnds[154]";
connectAttr "Player_rig:CTRL_root_scaleZ_Forwards.msg" "Forwards.bnds[155]";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Forwards.msg" "Forwards.bnds[156]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Forwards.msg" "Forwards.bnds[157]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Forwards.msg" "Forwards.bnds[158]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.msg" "Forwards.bnds[159]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Forwards.msg" "Forwards.bnds[163]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.msg" "Forwards.bnds[164]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.msg" "Forwards.bnds[165]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.msg" "Forwards.bnds[166]"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_visibility_Forwards.wb";
connectAttr "CTRL_ship_visibility_Right.o" "CTRL_ship_visibility_Forwards.ia";
connectAttr "CTRL_ship_visibility_Forwards_inputB.o" "CTRL_ship_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateX_Forwards.wb";
connectAttr "CTRL_ship_translateX_Right.o" "CTRL_ship_translateX_Forwards.ia";
connectAttr "CTRL_ship_translateX_Forwards_inputB.o" "CTRL_ship_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateY_Forwards.wb";
connectAttr "CTRL_ship_translateY_Right.o" "CTRL_ship_translateY_Forwards.ia";
connectAttr "CTRL_ship_translateY_Forwards_inputB.o" "CTRL_ship_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateZ_Forwards.wb";
connectAttr "CTRL_ship_translateZ_Right.o" "CTRL_ship_translateZ_Forwards.ia";
connectAttr "CTRL_ship_translateZ_Forwards_inputB.o" "CTRL_ship_translateZ_Forwards.ib"
		;
connectAttr "CTRL_ship_rotate_Right.ox" "CTRL_ship_rotate_Forwards.iax";
connectAttr "CTRL_ship_rotate_Right.oy" "CTRL_ship_rotate_Forwards.iay";
connectAttr "CTRL_ship_rotate_Right.oz" "CTRL_ship_rotate_Forwards.iaz";
connectAttr "Forwards.oram" "CTRL_ship_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_rotate_Forwards.wb";
connectAttr "CTRL_ship_rotate_Forwards_inputBX.o" "CTRL_ship_rotate_Forwards.ibx"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBY.o" "CTRL_ship_rotate_Forwards.iby"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBZ.o" "CTRL_ship_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "CTRL_ship_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_scaleX_Forwards.wb";
connectAttr "CTRL_ship_scaleX_Right.o" "CTRL_ship_scaleX_Forwards.ia";
connectAttr "CTRL_ship_scaleX_Forwards_inputB.o" "CTRL_ship_scaleX_Forwards.ib";
connectAttr "Forwards.sam" "CTRL_ship_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_scaleY_Forwards.wb";
connectAttr "CTRL_ship_scaleY_Right.o" "CTRL_ship_scaleY_Forwards.ia";
connectAttr "CTRL_ship_scaleY_Forwards_inputB.o" "CTRL_ship_scaleY_Forwards.ib";
connectAttr "Forwards.sam" "CTRL_ship_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_scaleZ_Forwards.wb";
connectAttr "CTRL_ship_scaleZ_Right.o" "CTRL_ship_scaleZ_Forwards.ia";
connectAttr "CTRL_ship_scaleZ_Forwards_inputB.o" "CTRL_ship_scaleZ_Forwards.ib";
connectAttr "BaseAnimation.csol" "Backwards.sslo";
connectAttr "BaseAnimation.fgwt" "Backwards.pwth";
connectAttr "BaseAnimation.omte" "Backwards.pmte";
connectAttr "CTRL_ship_visibility_Backwards.msg" "Backwards.bnds[0]";
connectAttr "CTRL_ship_translateX_Backwards.msg" "Backwards.bnds[1]";
connectAttr "CTRL_ship_translateY_Backwards.msg" "Backwards.bnds[2]";
connectAttr "CTRL_ship_translateZ_Backwards.msg" "Backwards.bnds[3]";
connectAttr "CTRL_ship_rotate_Backwards.msg" "Backwards.bnds[7]";
connectAttr "CTRL_ship_scaleX_Backwards.msg" "Backwards.bnds[8]";
connectAttr "CTRL_ship_scaleY_Backwards.msg" "Backwards.bnds[9]";
connectAttr "CTRL_ship_scaleZ_Backwards.msg" "Backwards.bnds[10]";
connectAttr "Player_rig:CTRL_cog_visibility_Backwards.msg" "Backwards.bnds[11]";
connectAttr "Player_rig:CTRL_cog_translateX_Backwards.msg" "Backwards.bnds[12]";
connectAttr "Player_rig:CTRL_cog_translateY_Backwards.msg" "Backwards.bnds[13]";
connectAttr "Player_rig:CTRL_cog_translateZ_Backwards.msg" "Backwards.bnds[14]";
connectAttr "Player_rig:CTRL_cog_rotate_Backwards.msg" "Backwards.bnds[18]";
connectAttr "Player_rig:CTRL_cog_scaleX_Backwards.msg" "Backwards.bnds[19]";
connectAttr "Player_rig:CTRL_cog_scaleY_Backwards.msg" "Backwards.bnds[20]";
connectAttr "Player_rig:CTRL_cog_scaleZ_Backwards.msg" "Backwards.bnds[21]";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Backwards.msg" "Backwards.bnds[22]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Backwards.msg" "Backwards.bnds[23]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Backwards.msg" "Backwards.bnds[24]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Backwards.msg" "Backwards.bnds[25]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.msg" "Backwards.bnds[26]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Backwards.msg" "Backwards.bnds[30]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.msg" "Backwards.bnds[31]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.msg" "Backwards.bnds[32]"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.msg" "Backwards.bnds[33]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Backwards.msg" "Backwards.bnds[34]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Backwards.msg" "Backwards.bnds[35]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Backwards.msg" "Backwards.bnds[36]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.msg" "Backwards.bnds[37]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Backwards.msg" "Backwards.bnds[41]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.msg" "Backwards.bnds[42]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.msg" "Backwards.bnds[43]"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.msg" "Backwards.bnds[44]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Backwards.msg" "Backwards.bnds[45]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Backwards.msg" "Backwards.bnds[46]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Backwards.msg" "Backwards.bnds[47]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.msg" "Backwards.bnds[48]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Backwards.msg" "Backwards.bnds[52]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.msg" "Backwards.bnds[53]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.msg" "Backwards.bnds[54]"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.msg" "Backwards.bnds[55]"
		;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Backwards.msg" "Backwards.bnds[56]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Backwards.msg" "Backwards.bnds[57]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Backwards.msg" "Backwards.bnds[58]"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Backwards.msg" "Backwards.bnds[59]"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Backwards.msg" "Backwards.bnds[63]"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Backwards.msg" "Backwards.bnds[64]"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Backwards.msg" "Backwards.bnds[65]"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Backwards.msg" "Backwards.bnds[66]"
		;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Backwards.msg" "Backwards.bnds[67]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Backwards.msg" "Backwards.bnds[68]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Backwards.msg" "Backwards.bnds[69]"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Backwards.msg" "Backwards.bnds[70]"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Backwards.msg" "Backwards.bnds[74]"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Backwards.msg" "Backwards.bnds[75]"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Backwards.msg" "Backwards.bnds[76]"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Backwards.msg" "Backwards.bnds[77]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Backwards.msg" "Backwards.bnds[78]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Backwards.msg" "Backwards.bnds[79]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Backwards.msg" "Backwards.bnds[80]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.msg" "Backwards.bnds[81]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Backwards.msg" "Backwards.bnds[85]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.msg" "Backwards.bnds[86]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.msg" "Backwards.bnds[87]"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.msg" "Backwards.bnds[88]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Backwards.msg" "Backwards.bnds[89]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Backwards.msg" "Backwards.bnds[90]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Backwards.msg" "Backwards.bnds[91]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Backwards.msg" "Backwards.bnds[92]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Backwards.msg" "Backwards.bnds[96]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Backwards.msg" "Backwards.bnds[97]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Backwards.msg" "Backwards.bnds[98]"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.msg" "Backwards.bnds[99]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Backwards.msg" "Backwards.bnds[100]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Backwards.msg" "Backwards.bnds[101]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Backwards.msg" "Backwards.bnds[102]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Backwards.msg" "Backwards.bnds[103]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Backwards.msg" "Backwards.bnds[107]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Backwards.msg" "Backwards.bnds[108]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Backwards.msg" "Backwards.bnds[109]"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.msg" "Backwards.bnds[110]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Backwards.msg" "Backwards.bnds[111]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Backwards.msg" "Backwards.bnds[112]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Backwards.msg" "Backwards.bnds[113]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.msg" "Backwards.bnds[114]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Backwards.msg" "Backwards.bnds[118]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.msg" "Backwards.bnds[119]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.msg" "Backwards.bnds[120]"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.msg" "Backwards.bnds[121]"
		;
connectAttr "Player_rig:CTRL_head_visibility_Backwards.msg" "Backwards.bnds[122]"
		;
connectAttr "Player_rig:CTRL_head_translateX_Backwards.msg" "Backwards.bnds[123]"
		;
connectAttr "Player_rig:CTRL_head_translateY_Backwards.msg" "Backwards.bnds[124]"
		;
connectAttr "Player_rig:CTRL_head_translateZ_Backwards.msg" "Backwards.bnds[125]"
		;
connectAttr "Player_rig:CTRL_head_rotate_Backwards.msg" "Backwards.bnds[129]";
connectAttr "Player_rig:CTRL_head_scaleX_Backwards.msg" "Backwards.bnds[130]";
connectAttr "Player_rig:CTRL_head_scaleY_Backwards.msg" "Backwards.bnds[131]";
connectAttr "Player_rig:CTRL_head_scaleZ_Backwards.msg" "Backwards.bnds[132]";
connectAttr "Player_rig:CTRL_head_Orient_Backwards.msg" "Backwards.bnds[133]";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Backwards.msg" "Backwards.bnds[134]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Backwards.msg" "Backwards.bnds[135]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Backwards.msg" "Backwards.bnds[136]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.msg" "Backwards.bnds[137]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Backwards.msg" "Backwards.bnds[141]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.msg" "Backwards.bnds[142]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.msg" "Backwards.bnds[143]"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.msg" "Backwards.bnds[144]"
		;
connectAttr "Player_rig:CTRL_root_visibility_Backwards.msg" "Backwards.bnds[145]"
		;
connectAttr "Player_rig:CTRL_root_translateX_Backwards.msg" "Backwards.bnds[146]"
		;
connectAttr "Player_rig:CTRL_root_translateY_Backwards.msg" "Backwards.bnds[147]"
		;
connectAttr "Player_rig:CTRL_root_translateZ_Backwards.msg" "Backwards.bnds[148]"
		;
connectAttr "Player_rig:CTRL_root_rotate_Backwards.msg" "Backwards.bnds[152]";
connectAttr "Player_rig:CTRL_root_scaleX_Backwards.msg" "Backwards.bnds[153]";
connectAttr "Player_rig:CTRL_root_scaleY_Backwards.msg" "Backwards.bnds[154]";
connectAttr "Player_rig:CTRL_root_scaleZ_Backwards.msg" "Backwards.bnds[155]";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Backwards.msg" "Backwards.bnds[156]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Backwards.msg" "Backwards.bnds[157]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Backwards.msg" "Backwards.bnds[158]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.msg" "Backwards.bnds[159]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Backwards.msg" "Backwards.bnds[163]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.msg" "Backwards.bnds[164]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.msg" "Backwards.bnds[165]"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.msg" "Backwards.bnds[166]"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_visibility_Backwards.wb";
connectAttr "CTRL_ship_visibility_Forwards.o" "CTRL_ship_visibility_Backwards.ia"
		;
connectAttr "CTRL_ship_visibility_Backwards_inputB.o" "CTRL_ship_visibility_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateX_Backwards.wb";
connectAttr "CTRL_ship_translateX_Forwards.o" "CTRL_ship_translateX_Backwards.ia"
		;
connectAttr "CTRL_ship_translateX_Backwards_inputB.o" "CTRL_ship_translateX_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateY_Backwards.wb";
connectAttr "CTRL_ship_translateY_Forwards.o" "CTRL_ship_translateY_Backwards.ia"
		;
connectAttr "CTRL_ship_translateY_Backwards_inputB.o" "CTRL_ship_translateY_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateZ_Backwards.wb";
connectAttr "CTRL_ship_translateZ_Forwards.o" "CTRL_ship_translateZ_Backwards.ia"
		;
connectAttr "CTRL_ship_translateZ_Backwards_inputB.o" "CTRL_ship_translateZ_Backwards.ib"
		;
connectAttr "CTRL_ship_rotate_Forwards.ox" "CTRL_ship_rotate_Backwards.iax";
connectAttr "CTRL_ship_rotate_Forwards.oy" "CTRL_ship_rotate_Backwards.iay";
connectAttr "CTRL_ship_rotate_Forwards.oz" "CTRL_ship_rotate_Backwards.iaz";
connectAttr "Backwards.oram" "CTRL_ship_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_rotate_Backwards.wb";
connectAttr "CTRL_ship_rotate_Backwards_inputBX.o" "CTRL_ship_rotate_Backwards.ibx"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBY.o" "CTRL_ship_rotate_Backwards.iby"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBZ.o" "CTRL_ship_rotate_Backwards.ibz"
		;
connectAttr "Backwards.sam" "CTRL_ship_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_scaleX_Backwards.wb";
connectAttr "CTRL_ship_scaleX_Forwards.o" "CTRL_ship_scaleX_Backwards.ia";
connectAttr "CTRL_ship_scaleX_Backwards_inputB.o" "CTRL_ship_scaleX_Backwards.ib"
		;
connectAttr "Backwards.sam" "CTRL_ship_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_scaleY_Backwards.wb";
connectAttr "CTRL_ship_scaleY_Forwards.o" "CTRL_ship_scaleY_Backwards.ia";
connectAttr "CTRL_ship_scaleY_Backwards_inputB.o" "CTRL_ship_scaleY_Backwards.ib"
		;
connectAttr "Backwards.sam" "CTRL_ship_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_scaleZ_Backwards.wb";
connectAttr "CTRL_ship_scaleZ_Forwards.o" "CTRL_ship_scaleZ_Backwards.ia";
connectAttr "CTRL_ship_scaleZ_Backwards_inputB.o" "CTRL_ship_scaleZ_Backwards.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_visibility_Left.wb";
connectAttr "CTRL_cog_visibility_Left_inputB.o" "Player_rig:CTRL_cog_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_translateX_Left.wb";
connectAttr "CTRL_cog_translateX_Left_inputB.o" "Player_rig:CTRL_cog_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_translateY_Left.wb";
connectAttr "CTRL_cog_translateY_Left_inputB.o" "Player_rig:CTRL_cog_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_translateZ_Left.wb";
connectAttr "CTRL_cog_translateZ_Left_inputB.o" "Player_rig:CTRL_cog_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_cog_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_rotate_Left.wb";
connectAttr "CTRL_cog_rotate_Left_inputBX.o" "Player_rig:CTRL_cog_rotate_Left.ibx"
		;
connectAttr "CTRL_cog_rotate_Left_inputBY.o" "Player_rig:CTRL_cog_rotate_Left.iby"
		;
connectAttr "CTRL_cog_rotate_Left_inputBZ.o" "Player_rig:CTRL_cog_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_cog_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_scaleX_Left.wb";
connectAttr "CTRL_cog_scaleX_Left_inputB.o" "Player_rig:CTRL_cog_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_cog_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_scaleY_Left.wb";
connectAttr "CTRL_cog_scaleY_Left_inputB.o" "Player_rig:CTRL_cog_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_cog_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_scaleZ_Left.wb";
connectAttr "CTRL_cog_scaleZ_Left_inputB.o" "Player_rig:CTRL_cog_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_cog_IKFK_Switch_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_cog_IKFK_Switch_Left.wb";
connectAttr "CTRL_cog_IKFK_Switch_Left_inputB.o" "Player_rig:CTRL_cog_IKFK_Switch_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_pelvis_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_pelvis_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_pelvis_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_pelvis_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_foot_l_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_l_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_l_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_l_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_foot_r_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_r_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_r_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_foot_r_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_visibility_Left.wb";
connectAttr "CTRL_spine_IK_visibility_Left_inputB.o" "Player_rig:CTRL_spine_IK_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_translateX_Left.wb";
connectAttr "CTRL_spine_IK_translateX_Left_inputB.o" "Player_rig:CTRL_spine_IK_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_translateY_Left.wb";
connectAttr "CTRL_spine_IK_translateY_Left_inputB.o" "Player_rig:CTRL_spine_IK_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_translateZ_Left.wb";
connectAttr "CTRL_spine_IK_translateZ_Left_inputB.o" "Player_rig:CTRL_spine_IK_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_spine_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_rotate_Left.wb";
connectAttr "CTRL_spine_IK_rotate_Left_inputBX.o" "Player_rig:CTRL_spine_IK_rotate_Left.ibx"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBY.o" "Player_rig:CTRL_spine_IK_rotate_Left.iby"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBZ.o" "Player_rig:CTRL_spine_IK_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_spine_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_scaleX_Left.wb";
connectAttr "CTRL_spine_IK_scaleX_Left_inputB.o" "Player_rig:CTRL_spine_IK_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_spine_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_scaleY_Left.wb";
connectAttr "CTRL_spine_IK_scaleY_Left_inputB.o" "Player_rig:CTRL_spine_IK_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_spine_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_spine_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_spine_IK_scaleZ_Left.wb";
connectAttr "CTRL_spine_IK_scaleZ_Left_inputB.o" "Player_rig:CTRL_spine_IK_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_visibility_Left.wb";
connectAttr "CTRL_chest_IK_visibility_Left_inputB.o" "Player_rig:CTRL_chest_IK_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_translateX_Left.wb";
connectAttr "CTRL_chest_IK_translateX_Left_inputB.o" "Player_rig:CTRL_chest_IK_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_translateY_Left.wb";
connectAttr "CTRL_chest_IK_translateY_Left_inputB.o" "Player_rig:CTRL_chest_IK_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_translateZ_Left.wb";
connectAttr "CTRL_chest_IK_translateZ_Left_inputB.o" "Player_rig:CTRL_chest_IK_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_chest_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_rotate_Left.wb";
connectAttr "CTRL_chest_IK_rotate_Left_inputBX.o" "Player_rig:CTRL_chest_IK_rotate_Left.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBY.o" "Player_rig:CTRL_chest_IK_rotate_Left.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBZ.o" "Player_rig:CTRL_chest_IK_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_chest_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_scaleX_Left.wb";
connectAttr "CTRL_chest_IK_scaleX_Left_inputB.o" "Player_rig:CTRL_chest_IK_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_chest_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_scaleY_Left.wb";
connectAttr "CTRL_chest_IK_scaleY_Left_inputB.o" "Player_rig:CTRL_chest_IK_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_chest_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_chest_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_chest_IK_scaleZ_Left.wb";
connectAttr "CTRL_chest_IK_scaleZ_Left_inputB.o" "Player_rig:CTRL_chest_IK_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_visibility_Left.wb";
connectAttr "CTRL_arm_l_ik_visibility_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_translateX_Left.wb";
connectAttr "CTRL_arm_l_ik_translateX_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_translateY_Left.wb";
connectAttr "CTRL_arm_l_ik_translateY_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Left.wb";
connectAttr "CTRL_arm_l_ik_translateZ_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_arm_l_ik_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_rotate_Left.wb";
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBX.o" "Player_rig:CTRL_arm_l_ik_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBY.o" "Player_rig:CTRL_arm_l_ik_rotate_Left.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBZ.o" "Player_rig:CTRL_arm_l_ik_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_ik_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleX_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_ik_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleY_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_ik_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleZ_Left_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_shoulder_l_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_l_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_l_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_l_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_shoulder_r_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_r_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_r_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_shoulder_r_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_visibility_Left.wb";
connectAttr "CTRL_arm_r_ik_visibility_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_translateX_Left.wb";
connectAttr "CTRL_arm_r_ik_translateX_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_translateY_Left.wb";
connectAttr "CTRL_arm_r_ik_translateY_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Left.wb";
connectAttr "CTRL_arm_r_ik_translateZ_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_arm_r_ik_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_rotate_Left.wb";
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBX.o" "Player_rig:CTRL_arm_r_ik_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBY.o" "Player_rig:CTRL_arm_r_ik_rotate_Left.iby"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBZ.o" "Player_rig:CTRL_arm_r_ik_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_ik_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleX_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_ik_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleY_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_ik_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleZ_Left_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_head_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_visibility_Left.wb";
connectAttr "CTRL_head_visibility_Left_inputB.o" "Player_rig:CTRL_head_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_head_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_translateX_Left.wb";
connectAttr "CTRL_head_translateX_Left_inputB.o" "Player_rig:CTRL_head_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_head_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_translateY_Left.wb";
connectAttr "CTRL_head_translateY_Left_inputB.o" "Player_rig:CTRL_head_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_head_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_translateZ_Left.wb";
connectAttr "CTRL_head_translateZ_Left_inputB.o" "Player_rig:CTRL_head_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_head_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_head_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_rotate_Left.wb";
connectAttr "CTRL_head_rotate_Left_inputBX.o" "Player_rig:CTRL_head_rotate_Left.ibx"
		;
connectAttr "CTRL_head_rotate_Left_inputBY.o" "Player_rig:CTRL_head_rotate_Left.iby"
		;
connectAttr "CTRL_head_rotate_Left_inputBZ.o" "Player_rig:CTRL_head_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_head_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_head_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_scaleX_Left.wb";
connectAttr "CTRL_head_scaleX_Left_inputB.o" "Player_rig:CTRL_head_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_head_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_head_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_scaleY_Left.wb";
connectAttr "CTRL_head_scaleY_Left_inputB.o" "Player_rig:CTRL_head_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_head_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_head_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_scaleZ_Left.wb";
connectAttr "CTRL_head_scaleZ_Left_inputB.o" "Player_rig:CTRL_head_scaleZ_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_head_Orient_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_head_Orient_Left.wb";
connectAttr "CTRL_head_Orient_Left_inputB.o" "Player_rig:CTRL_head_Orient_Left.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_visibility_Right.wb";
connectAttr "Player_rig:CTRL_cog_visibility_Left.o" "Player_rig:CTRL_cog_visibility_Right.ia"
		;
connectAttr "CTRL_cog_visibility_Right_inputB.o" "Player_rig:CTRL_cog_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_translateX_Right.wb";
connectAttr "Player_rig:CTRL_cog_translateX_Left.o" "Player_rig:CTRL_cog_translateX_Right.ia"
		;
connectAttr "CTRL_cog_translateX_Right_inputB.o" "Player_rig:CTRL_cog_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_translateY_Right.wb";
connectAttr "Player_rig:CTRL_cog_translateY_Left.o" "Player_rig:CTRL_cog_translateY_Right.ia"
		;
connectAttr "CTRL_cog_translateY_Right_inputB.o" "Player_rig:CTRL_cog_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_cog_translateZ_Left.o" "Player_rig:CTRL_cog_translateZ_Right.ia"
		;
connectAttr "CTRL_cog_translateZ_Right_inputB.o" "Player_rig:CTRL_cog_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Left.ox" "Player_rig:CTRL_cog_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Left.oy" "Player_rig:CTRL_cog_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Left.oz" "Player_rig:CTRL_cog_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_cog_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_rotate_Right.wb";
connectAttr "CTRL_cog_rotate_Right_inputBX.o" "Player_rig:CTRL_cog_rotate_Right.ibx"
		;
connectAttr "CTRL_cog_rotate_Right_inputBY.o" "Player_rig:CTRL_cog_rotate_Right.iby"
		;
connectAttr "CTRL_cog_rotate_Right_inputBZ.o" "Player_rig:CTRL_cog_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_cog_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_cog_scaleX_Left.o" "Player_rig:CTRL_cog_scaleX_Right.ia"
		;
connectAttr "CTRL_cog_scaleX_Right_inputB.o" "Player_rig:CTRL_cog_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_cog_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_cog_scaleY_Left.o" "Player_rig:CTRL_cog_scaleY_Right.ia"
		;
connectAttr "CTRL_cog_scaleY_Right_inputB.o" "Player_rig:CTRL_cog_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_cog_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_cog_scaleZ_Left.o" "Player_rig:CTRL_cog_scaleZ_Right.ia"
		;
connectAttr "CTRL_cog_scaleZ_Right_inputB.o" "Player_rig:CTRL_cog_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_cog_IKFK_Switch_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_cog_IKFK_Switch_Right.wb";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Left.o" "Player_rig:CTRL_cog_IKFK_Switch_Right.ia"
		;
connectAttr "CTRL_cog_IKFK_Switch_Right_inputB.o" "Player_rig:CTRL_cog_IKFK_Switch_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_visibility_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Left.o" "Player_rig:CTRL_pelvis_IK_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_translateX_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Left.o" "Player_rig:CTRL_pelvis_IK_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_translateY_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Left.o" "Player_rig:CTRL_pelvis_IK_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Left.o" "Player_rig:CTRL_pelvis_IK_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Left.ox" "Player_rig:CTRL_pelvis_IK_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Left.oy" "Player_rig:CTRL_pelvis_IK_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Left.oz" "Player_rig:CTRL_pelvis_IK_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_pelvis_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_pelvis_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Left.o" "Player_rig:CTRL_pelvis_IK_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_pelvis_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Left.o" "Player_rig:CTRL_pelvis_IK_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_pelvis_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Left.o" "Player_rig:CTRL_pelvis_IK_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_visibility_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Left.o" "Player_rig:CTRL_foot_l_IK_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_translateX_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Left.o" "Player_rig:CTRL_foot_l_IK_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_translateY_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Left.o" "Player_rig:CTRL_foot_l_IK_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Left.o" "Player_rig:CTRL_foot_l_IK_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Left.ox" "Player_rig:CTRL_foot_l_IK_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Left.oy" "Player_rig:CTRL_foot_l_IK_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Left.oz" "Player_rig:CTRL_foot_l_IK_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_foot_l_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_foot_l_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Left.o" "Player_rig:CTRL_foot_l_IK_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_foot_l_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Left.o" "Player_rig:CTRL_foot_l_IK_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_foot_l_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Left.o" "Player_rig:CTRL_foot_l_IK_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_visibility_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Left.o" "Player_rig:CTRL_foot_r_IK_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_translateX_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Left.o" "Player_rig:CTRL_foot_r_IK_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_translateY_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Left.o" "Player_rig:CTRL_foot_r_IK_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Left.o" "Player_rig:CTRL_foot_r_IK_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Left.ox" "Player_rig:CTRL_foot_r_IK_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Left.oy" "Player_rig:CTRL_foot_r_IK_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Left.oz" "Player_rig:CTRL_foot_r_IK_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_foot_r_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_foot_r_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Left.o" "Player_rig:CTRL_foot_r_IK_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_foot_r_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Left.o" "Player_rig:CTRL_foot_r_IK_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_foot_r_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Left.o" "Player_rig:CTRL_foot_r_IK_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_visibility_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Left.o" "Player_rig:CTRL_spine_IK_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_translateX_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Left.o" "Player_rig:CTRL_spine_IK_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_translateY_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateY_Left.o" "Player_rig:CTRL_spine_IK_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Left.o" "Player_rig:CTRL_spine_IK_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Left.ox" "Player_rig:CTRL_spine_IK_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Left.oy" "Player_rig:CTRL_spine_IK_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Left.oz" "Player_rig:CTRL_spine_IK_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_spine_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_spine_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Left.o" "Player_rig:CTRL_spine_IK_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_spine_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Left.o" "Player_rig:CTRL_spine_IK_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_spine_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_spine_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_spine_IK_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Left.o" "Player_rig:CTRL_spine_IK_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_visibility_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Left.o" "Player_rig:CTRL_chest_IK_visibility_Right.ia"
		;
connectAttr "CTRL_chest_IK_visibility_Right_inputB.o" "Player_rig:CTRL_chest_IK_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_translateX_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateX_Left.o" "Player_rig:CTRL_chest_IK_translateX_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateX_Right_inputB.o" "Player_rig:CTRL_chest_IK_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_translateY_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateY_Left.o" "Player_rig:CTRL_chest_IK_translateY_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateY_Right_inputB.o" "Player_rig:CTRL_chest_IK_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Left.o" "Player_rig:CTRL_chest_IK_translateZ_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateZ_Right_inputB.o" "Player_rig:CTRL_chest_IK_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Left.ox" "Player_rig:CTRL_chest_IK_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Left.oy" "Player_rig:CTRL_chest_IK_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Left.oz" "Player_rig:CTRL_chest_IK_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_chest_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_rotate_Right.wb";
connectAttr "CTRL_chest_IK_rotate_Right_inputBX.o" "Player_rig:CTRL_chest_IK_rotate_Right.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBY.o" "Player_rig:CTRL_chest_IK_rotate_Right.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBZ.o" "Player_rig:CTRL_chest_IK_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_chest_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Left.o" "Player_rig:CTRL_chest_IK_scaleX_Right.ia"
		;
connectAttr "CTRL_chest_IK_scaleX_Right_inputB.o" "Player_rig:CTRL_chest_IK_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_chest_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Left.o" "Player_rig:CTRL_chest_IK_scaleY_Right.ia"
		;
connectAttr "CTRL_chest_IK_scaleY_Right_inputB.o" "Player_rig:CTRL_chest_IK_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_chest_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_chest_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_chest_IK_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Left.o" "Player_rig:CTRL_chest_IK_scaleZ_Right.ia"
		;
connectAttr "CTRL_chest_IK_scaleZ_Right_inputB.o" "Player_rig:CTRL_chest_IK_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_visibility_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Left.o" "Player_rig:CTRL_arm_l_ik_visibility_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_visibility_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_translateX_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Left.o" "Player_rig:CTRL_arm_l_ik_translateX_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateX_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_translateY_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Left.o" "Player_rig:CTRL_arm_l_ik_translateY_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateY_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Left.o" "Player_rig:CTRL_arm_l_ik_translateZ_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Left.ox" "Player_rig:CTRL_arm_l_ik_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Left.oy" "Player_rig:CTRL_arm_l_ik_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Left.oz" "Player_rig:CTRL_arm_l_ik_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_arm_l_ik_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_rotate_Right.wb";
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBX.o" "Player_rig:CTRL_arm_l_ik_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBY.o" "Player_rig:CTRL_arm_l_ik_rotate_Right.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBZ.o" "Player_rig:CTRL_arm_l_ik_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_ik_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Left.o" "Player_rig:CTRL_arm_l_ik_scaleX_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_ik_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Left.o" "Player_rig:CTRL_arm_l_ik_scaleY_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_ik_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Left.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Right_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_visibility_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Left.o" "Player_rig:CTRL_shoulder_l_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_translateX_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Left.o" "Player_rig:CTRL_shoulder_l_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_translateY_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Left.o" "Player_rig:CTRL_shoulder_l_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Left.o" "Player_rig:CTRL_shoulder_l_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Left.ox" "Player_rig:CTRL_shoulder_l_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Left.oy" "Player_rig:CTRL_shoulder_l_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Left.oz" "Player_rig:CTRL_shoulder_l_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_shoulder_l_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_l_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Left.o" "Player_rig:CTRL_shoulder_l_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_l_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Left.o" "Player_rig:CTRL_shoulder_l_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_l_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Left.o" "Player_rig:CTRL_shoulder_l_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_visibility_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Left.o" "Player_rig:CTRL_shoulder_r_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_translateX_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Left.o" "Player_rig:CTRL_shoulder_r_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_translateY_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Left.o" "Player_rig:CTRL_shoulder_r_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Left.o" "Player_rig:CTRL_shoulder_r_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Left.ox" "Player_rig:CTRL_shoulder_r_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Left.oy" "Player_rig:CTRL_shoulder_r_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Left.oz" "Player_rig:CTRL_shoulder_r_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_shoulder_r_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_r_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Left.o" "Player_rig:CTRL_shoulder_r_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_r_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Left.o" "Player_rig:CTRL_shoulder_r_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_shoulder_r_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Left.o" "Player_rig:CTRL_shoulder_r_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_visibility_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Left.o" "Player_rig:CTRL_arm_r_ik_visibility_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_visibility_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_translateX_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Left.o" "Player_rig:CTRL_arm_r_ik_translateX_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_translateY_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Left.o" "Player_rig:CTRL_arm_r_ik_translateY_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Left.o" "Player_rig:CTRL_arm_r_ik_translateZ_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Left.ox" "Player_rig:CTRL_arm_r_ik_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Left.oy" "Player_rig:CTRL_arm_r_ik_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Left.oz" "Player_rig:CTRL_arm_r_ik_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_arm_r_ik_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_rotate_Right.wb";
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBX.o" "Player_rig:CTRL_arm_r_ik_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBY.o" "Player_rig:CTRL_arm_r_ik_rotate_Right.iby"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBZ.o" "Player_rig:CTRL_arm_r_ik_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_ik_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Left.o" "Player_rig:CTRL_arm_r_ik_scaleX_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_ik_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Left.o" "Player_rig:CTRL_arm_r_ik_scaleY_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_ik_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Left.o" "Player_rig:CTRL_arm_r_ik_scaleZ_Right.ia"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputB.o" "Player_rig:CTRL_arm_r_ik_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_head_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_visibility_Right.wb";
connectAttr "Player_rig:CTRL_head_visibility_Left.o" "Player_rig:CTRL_head_visibility_Right.ia"
		;
connectAttr "CTRL_head_visibility_Right_inputB.o" "Player_rig:CTRL_head_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_head_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_translateX_Right.wb";
connectAttr "Player_rig:CTRL_head_translateX_Left.o" "Player_rig:CTRL_head_translateX_Right.ia"
		;
connectAttr "CTRL_head_translateX_Right_inputB.o" "Player_rig:CTRL_head_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_head_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_translateY_Right.wb";
connectAttr "Player_rig:CTRL_head_translateY_Left.o" "Player_rig:CTRL_head_translateY_Right.ia"
		;
connectAttr "CTRL_head_translateY_Right_inputB.o" "Player_rig:CTRL_head_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_head_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_head_translateZ_Left.o" "Player_rig:CTRL_head_translateZ_Right.ia"
		;
connectAttr "CTRL_head_translateZ_Right_inputB.o" "Player_rig:CTRL_head_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_head_rotate_Left.ox" "Player_rig:CTRL_head_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_head_rotate_Left.oy" "Player_rig:CTRL_head_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_head_rotate_Left.oz" "Player_rig:CTRL_head_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_head_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_head_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_rotate_Right.wb";
connectAttr "CTRL_head_rotate_Right_inputBX.o" "Player_rig:CTRL_head_rotate_Right.ibx"
		;
connectAttr "CTRL_head_rotate_Right_inputBY.o" "Player_rig:CTRL_head_rotate_Right.iby"
		;
connectAttr "CTRL_head_rotate_Right_inputBZ.o" "Player_rig:CTRL_head_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_head_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_head_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_head_scaleX_Left.o" "Player_rig:CTRL_head_scaleX_Right.ia"
		;
connectAttr "CTRL_head_scaleX_Right_inputB.o" "Player_rig:CTRL_head_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_head_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_head_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_head_scaleY_Left.o" "Player_rig:CTRL_head_scaleY_Right.ia"
		;
connectAttr "CTRL_head_scaleY_Right_inputB.o" "Player_rig:CTRL_head_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_head_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_head_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_head_scaleZ_Left.o" "Player_rig:CTRL_head_scaleZ_Right.ia"
		;
connectAttr "CTRL_head_scaleZ_Right_inputB.o" "Player_rig:CTRL_head_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_head_Orient_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_head_Orient_Right.wb";
connectAttr "Player_rig:CTRL_head_Orient_Left.o" "Player_rig:CTRL_head_Orient_Right.ia"
		;
connectAttr "CTRL_head_Orient_Right_inputB.o" "Player_rig:CTRL_head_Orient_Right.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_visibility_Right.o" "Player_rig:CTRL_cog_visibility_Forwards.ia"
		;
connectAttr "CTRL_cog_visibility_Forwards_inputB.o" "Player_rig:CTRL_cog_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_translateX_Right.o" "Player_rig:CTRL_cog_translateX_Forwards.ia"
		;
connectAttr "CTRL_cog_translateX_Forwards_inputB.o" "Player_rig:CTRL_cog_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_translateY_Right.o" "Player_rig:CTRL_cog_translateY_Forwards.ia"
		;
connectAttr "CTRL_cog_translateY_Forwards_inputB.o" "Player_rig:CTRL_cog_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_translateZ_Right.o" "Player_rig:CTRL_cog_translateZ_Forwards.ia"
		;
connectAttr "CTRL_cog_translateZ_Forwards_inputB.o" "Player_rig:CTRL_cog_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Right.ox" "Player_rig:CTRL_cog_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Right.oy" "Player_rig:CTRL_cog_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Right.oz" "Player_rig:CTRL_cog_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_cog_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_rotate_Forwards.wb";
connectAttr "CTRL_cog_rotate_Forwards_inputBX.o" "Player_rig:CTRL_cog_rotate_Forwards.ibx"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBY.o" "Player_rig:CTRL_cog_rotate_Forwards.iby"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_cog_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_cog_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleX_Right.o" "Player_rig:CTRL_cog_scaleX_Forwards.ia"
		;
connectAttr "CTRL_cog_scaleX_Forwards_inputB.o" "Player_rig:CTRL_cog_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_cog_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleY_Right.o" "Player_rig:CTRL_cog_scaleY_Forwards.ia"
		;
connectAttr "CTRL_cog_scaleY_Forwards_inputB.o" "Player_rig:CTRL_cog_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_cog_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleZ_Right.o" "Player_rig:CTRL_cog_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_cog_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_cog_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_cog_IKFK_Switch_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_cog_IKFK_Switch_Forwards.wb";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Right.o" "Player_rig:CTRL_cog_IKFK_Switch_Forwards.ia"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputB.o" "Player_rig:CTRL_cog_IKFK_Switch_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Right.o" "Player_rig:CTRL_pelvis_IK_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Right.o" "Player_rig:CTRL_pelvis_IK_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Right.o" "Player_rig:CTRL_pelvis_IK_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Right.o" "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Right.ox" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Right.oy" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Right.oz" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Right.o" "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Right.o" "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Right.o" "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Right.o" "Player_rig:CTRL_foot_l_IK_visibility_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_visibility_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Right.o" "Player_rig:CTRL_foot_l_IK_translateX_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Right.o" "Player_rig:CTRL_foot_l_IK_translateY_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Right.o" "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Right.ox" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Right.oy" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Right.oz" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.wb";
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBX.o" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBY.o" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_foot_l_IK_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Right.o" "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Right.o" "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Right.o" "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Right.o" "Player_rig:CTRL_foot_r_IK_visibility_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_visibility_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Right.o" "Player_rig:CTRL_foot_r_IK_translateX_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Right.o" "Player_rig:CTRL_foot_r_IK_translateY_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Right.o" "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Right.ox" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Right.oy" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Right.oz" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.wb";
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBX.o" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBY.o" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_foot_r_IK_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Right.o" "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Right.o" "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Right.o" "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Right.o" "Player_rig:CTRL_spine_IK_visibility_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Right.o" "Player_rig:CTRL_spine_IK_translateX_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateY_Right.o" "Player_rig:CTRL_spine_IK_translateY_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Right.o" "Player_rig:CTRL_spine_IK_translateZ_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Right.ox" "Player_rig:CTRL_spine_IK_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Right.oy" "Player_rig:CTRL_spine_IK_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Right.oz" "Player_rig:CTRL_spine_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_spine_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_rotate_Forwards.wb";
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBX.o" "Player_rig:CTRL_spine_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBY.o" "Player_rig:CTRL_spine_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_spine_IK_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_spine_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Right.o" "Player_rig:CTRL_spine_IK_scaleX_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_spine_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Right.o" "Player_rig:CTRL_spine_IK_scaleY_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_spine_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_spine_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_spine_IK_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Right.o" "Player_rig:CTRL_spine_IK_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_spine_IK_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Right.o" "Player_rig:CTRL_chest_IK_visibility_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateX_Right.o" "Player_rig:CTRL_chest_IK_translateX_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateY_Right.o" "Player_rig:CTRL_chest_IK_translateY_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Right.o" "Player_rig:CTRL_chest_IK_translateZ_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Right.ox" "Player_rig:CTRL_chest_IK_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Right.oy" "Player_rig:CTRL_chest_IK_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Right.oz" "Player_rig:CTRL_chest_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_chest_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_rotate_Forwards.wb";
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBX.o" "Player_rig:CTRL_chest_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBY.o" "Player_rig:CTRL_chest_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_chest_IK_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_chest_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Right.o" "Player_rig:CTRL_chest_IK_scaleX_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_chest_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Right.o" "Player_rig:CTRL_chest_IK_scaleY_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_chest_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_chest_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_chest_IK_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Right.o" "Player_rig:CTRL_chest_IK_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_chest_IK_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Right.o" "Player_rig:CTRL_arm_l_ik_visibility_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_visibility_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Right.o" "Player_rig:CTRL_arm_l_ik_translateX_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Right.o" "Player_rig:CTRL_arm_l_ik_translateY_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Right.o" "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Right.ox" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Right.oy" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Right.oz" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.wb";
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBX.o" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBY.o" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_arm_l_ik_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Right.o" "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Right.o" "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Right.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Right.o" "Player_rig:CTRL_shoulder_l_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Right.o" "Player_rig:CTRL_shoulder_l_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Right.o" "Player_rig:CTRL_shoulder_l_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Right.o" "Player_rig:CTRL_shoulder_l_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Right.ox" "Player_rig:CTRL_shoulder_l_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Right.oy" "Player_rig:CTRL_shoulder_l_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Right.oz" "Player_rig:CTRL_shoulder_l_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_shoulder_l_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_l_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Right.o" "Player_rig:CTRL_shoulder_l_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_l_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Right.o" "Player_rig:CTRL_shoulder_l_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Right.o" "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Right.o" "Player_rig:CTRL_shoulder_r_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Right.o" "Player_rig:CTRL_shoulder_r_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Right.o" "Player_rig:CTRL_shoulder_r_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Right.o" "Player_rig:CTRL_shoulder_r_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Right.ox" "Player_rig:CTRL_shoulder_r_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Right.oy" "Player_rig:CTRL_shoulder_r_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Right.oz" "Player_rig:CTRL_shoulder_r_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_shoulder_r_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_r_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Right.o" "Player_rig:CTRL_shoulder_r_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_r_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Right.o" "Player_rig:CTRL_shoulder_r_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Right.o" "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Right.o" "Player_rig:CTRL_arm_r_ik_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Right.o" "Player_rig:CTRL_arm_r_ik_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Right.o" "Player_rig:CTRL_arm_r_ik_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Right.o" "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Right.ox" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Right.oy" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Right.oz" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Right.o" "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Right.o" "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Right.o" "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_head_visibility_Right.o" "Player_rig:CTRL_head_visibility_Forwards.ia"
		;
connectAttr "CTRL_head_visibility_Forwards_inputB.o" "Player_rig:CTRL_head_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_head_translateX_Right.o" "Player_rig:CTRL_head_translateX_Forwards.ia"
		;
connectAttr "CTRL_head_translateX_Forwards_inputB.o" "Player_rig:CTRL_head_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_head_translateY_Right.o" "Player_rig:CTRL_head_translateY_Forwards.ia"
		;
connectAttr "CTRL_head_translateY_Forwards_inputB.o" "Player_rig:CTRL_head_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_head_translateZ_Right.o" "Player_rig:CTRL_head_translateZ_Forwards.ia"
		;
connectAttr "CTRL_head_translateZ_Forwards_inputB.o" "Player_rig:CTRL_head_translateZ_Forwards.ib"
		;
connectAttr "Player_rig:CTRL_head_rotate_Right.ox" "Player_rig:CTRL_head_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_head_rotate_Right.oy" "Player_rig:CTRL_head_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_head_rotate_Right.oz" "Player_rig:CTRL_head_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_head_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_rotate_Forwards.wb";
connectAttr "CTRL_head_rotate_Forwards_inputBX.o" "Player_rig:CTRL_head_rotate_Forwards.ibx"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBY.o" "Player_rig:CTRL_head_rotate_Forwards.iby"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBZ.o" "Player_rig:CTRL_head_rotate_Forwards.ibz"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_head_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_head_scaleX_Right.o" "Player_rig:CTRL_head_scaleX_Forwards.ia"
		;
connectAttr "CTRL_head_scaleX_Forwards_inputB.o" "Player_rig:CTRL_head_scaleX_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_head_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_head_scaleY_Right.o" "Player_rig:CTRL_head_scaleY_Forwards.ia"
		;
connectAttr "CTRL_head_scaleY_Forwards_inputB.o" "Player_rig:CTRL_head_scaleY_Forwards.ib"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_head_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_head_scaleZ_Right.o" "Player_rig:CTRL_head_scaleZ_Forwards.ia"
		;
connectAttr "CTRL_head_scaleZ_Forwards_inputB.o" "Player_rig:CTRL_head_scaleZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_head_Orient_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_head_Orient_Forwards.wb";
connectAttr "Player_rig:CTRL_head_Orient_Right.o" "Player_rig:CTRL_head_Orient_Forwards.ia"
		;
connectAttr "CTRL_head_Orient_Forwards_inputB.o" "Player_rig:CTRL_head_Orient_Forwards.ib"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_visibility_Forwards.o" "Player_rig:CTRL_cog_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_translateX_Forwards.o" "Player_rig:CTRL_cog_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_translateY_Forwards.o" "Player_rig:CTRL_cog_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_translateZ_Forwards.o" "Player_rig:CTRL_cog_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Forwards.ox" "Player_rig:CTRL_cog_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Forwards.oy" "Player_rig:CTRL_cog_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Forwards.oz" "Player_rig:CTRL_cog_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_cog_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleX_Forwards.o" "Player_rig:CTRL_cog_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleY_Forwards.o" "Player_rig:CTRL_cog_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_scaleZ_Forwards.o" "Player_rig:CTRL_cog_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_IKFK_Switch_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_IKFK_Switch_Backwards.wb";
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Forwards.o" "Player_rig:CTRL_cog_IKFK_Switch_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Forwards.o" "Player_rig:CTRL_pelvis_IK_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Forwards.o" "Player_rig:CTRL_pelvis_IK_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Forwards.o" "Player_rig:CTRL_pelvis_IK_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.o" "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Forwards.ox" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Forwards.oy" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Forwards.oz" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.o" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.o" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.o" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Forwards.o" "Player_rig:CTRL_foot_l_IK_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Forwards.o" "Player_rig:CTRL_foot_l_IK_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Forwards.o" "Player_rig:CTRL_foot_l_IK_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.o" "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Forwards.ox" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Forwards.oy" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Forwards.oz" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.o" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.o" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.o" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Forwards.o" "Player_rig:CTRL_foot_r_IK_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Forwards.o" "Player_rig:CTRL_foot_r_IK_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Forwards.o" "Player_rig:CTRL_foot_r_IK_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.o" "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Forwards.ox" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Forwards.oy" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Forwards.oz" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.o" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.o" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.o" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_visibility_Forwards.o" "Player_rig:CTRL_spine_IK_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Forwards.o" "Player_rig:CTRL_spine_IK_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateY_Forwards.o" "Player_rig:CTRL_spine_IK_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Forwards.o" "Player_rig:CTRL_spine_IK_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Forwards.ox" "Player_rig:CTRL_spine_IK_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Forwards.oy" "Player_rig:CTRL_spine_IK_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Forwards.oz" "Player_rig:CTRL_spine_IK_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_spine_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Forwards.o" "Player_rig:CTRL_spine_IK_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Forwards.o" "Player_rig:CTRL_spine_IK_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Forwards.o" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_visibility_Forwards.o" "Player_rig:CTRL_chest_IK_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateX_Forwards.o" "Player_rig:CTRL_chest_IK_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateY_Forwards.o" "Player_rig:CTRL_chest_IK_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Forwards.o" "Player_rig:CTRL_chest_IK_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Forwards.ox" "Player_rig:CTRL_chest_IK_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Forwards.oy" "Player_rig:CTRL_chest_IK_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Forwards.oz" "Player_rig:CTRL_chest_IK_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_chest_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Forwards.o" "Player_rig:CTRL_chest_IK_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Forwards.o" "Player_rig:CTRL_chest_IK_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Forwards.o" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Forwards.o" "Player_rig:CTRL_arm_l_ik_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Forwards.o" "Player_rig:CTRL_arm_l_ik_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Forwards.o" "Player_rig:CTRL_arm_l_ik_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.o" "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Forwards.ox" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Forwards.oy" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Forwards.oz" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.o" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.o" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.o" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Forwards.o" "Player_rig:CTRL_shoulder_l_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Forwards.o" "Player_rig:CTRL_shoulder_l_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Forwards.o" "Player_rig:CTRL_shoulder_l_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Forwards.o" "Player_rig:CTRL_shoulder_l_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Forwards.ox" "Player_rig:CTRL_shoulder_l_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Forwards.oy" "Player_rig:CTRL_shoulder_l_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Forwards.oz" "Player_rig:CTRL_shoulder_l_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_shoulder_l_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Forwards.o" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Forwards.o" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.o" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Forwards.o" "Player_rig:CTRL_shoulder_r_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Forwards.o" "Player_rig:CTRL_shoulder_r_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Forwards.o" "Player_rig:CTRL_shoulder_r_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Forwards.o" "Player_rig:CTRL_shoulder_r_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Forwards.ox" "Player_rig:CTRL_shoulder_r_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Forwards.oy" "Player_rig:CTRL_shoulder_r_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Forwards.oz" "Player_rig:CTRL_shoulder_r_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_shoulder_r_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Forwards.o" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Forwards.o" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.o" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Forwards.o" "Player_rig:CTRL_arm_r_ik_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Forwards.o" "Player_rig:CTRL_arm_r_ik_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Forwards.o" "Player_rig:CTRL_arm_r_ik_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.o" "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Forwards.ox" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Forwards.oy" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Forwards.oz" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.o" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.o" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.o" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_head_visibility_Forwards.o" "Player_rig:CTRL_head_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_head_translateX_Forwards.o" "Player_rig:CTRL_head_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_head_translateY_Forwards.o" "Player_rig:CTRL_head_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_head_translateZ_Forwards.o" "Player_rig:CTRL_head_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_head_rotate_Forwards.ox" "Player_rig:CTRL_head_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_head_rotate_Forwards.oy" "Player_rig:CTRL_head_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_head_rotate_Forwards.oz" "Player_rig:CTRL_head_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_head_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_head_scaleX_Forwards.o" "Player_rig:CTRL_head_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_head_scaleY_Forwards.o" "Player_rig:CTRL_head_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_head_scaleZ_Forwards.o" "Player_rig:CTRL_head_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_Orient_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_Orient_Backwards.wb";
connectAttr "Player_rig:CTRL_head_Orient_Forwards.o" "Player_rig:CTRL_head_Orient_Backwards.ia"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_visibility_Left.wb";
connectAttr "CTRL_arm_r_pole_visibility_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_visibility_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_translateX_Left.wb";
connectAttr "CTRL_arm_r_pole_translateX_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_translateY_Left.wb";
connectAttr "CTRL_arm_r_pole_translateY_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Left.wb";
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_translateZ_Left.ib"
		;
connectAttr "Left.oram" "Player_rig:CTRL_arm_r_pole_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_rotate_Left.wb";
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBX.o" "Player_rig:CTRL_arm_r_pole_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBY.o" "Player_rig:CTRL_arm_r_pole_rotate_Left.iby"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBZ.o" "Player_rig:CTRL_arm_r_pole_rotate_Left.ibz"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_pole_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_scaleX_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_pole_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_scaleY_Left.ib"
		;
connectAttr "Left.sam" "Player_rig:CTRL_arm_r_pole_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputB.o" "Player_rig:CTRL_arm_r_pole_scaleZ_Left.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_visibility_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Left.o" "Player_rig:CTRL_arm_r_pole_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_translateX_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Left.o" "Player_rig:CTRL_arm_r_pole_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_translateY_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Left.o" "Player_rig:CTRL_arm_r_pole_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Left.o" "Player_rig:CTRL_arm_r_pole_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Left.ox" "Player_rig:CTRL_arm_r_pole_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Left.oy" "Player_rig:CTRL_arm_r_pole_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Left.oz" "Player_rig:CTRL_arm_r_pole_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_arm_r_pole_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_pole_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Left.o" "Player_rig:CTRL_arm_r_pole_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_pole_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Left.o" "Player_rig:CTRL_arm_r_pole_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_r_pole_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Left.o" "Player_rig:CTRL_arm_r_pole_scaleZ_Right.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Right.o" "Player_rig:CTRL_arm_r_pole_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Right.o" "Player_rig:CTRL_arm_r_pole_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Right.o" "Player_rig:CTRL_arm_r_pole_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Right.o" "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Right.ox" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Right.oy" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Right.oz" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Right.o" "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Right.o" "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Right.o" "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Forwards.o" "Player_rig:CTRL_arm_r_pole_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Forwards.o" "Player_rig:CTRL_arm_r_pole_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Forwards.o" "Player_rig:CTRL_arm_r_pole_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.o" "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Forwards.ox" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Forwards.oy" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Forwards.oz" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.o" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.o" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.o" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.ia"
		;
connectAttr "Left.bgwt" "Player_rig:CTRL_root_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_root_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_root_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_root_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_root_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_root_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_root_scaleZ_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_visibility_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_visibility_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_translateX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_translateX_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_translateY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_translateY_Left.wb";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Left.wb";
connectAttr "Left.oram" "Player_rig:CTRL_arm_l_pole_rotate_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_rotate_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_rotate_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_pole_scaleX_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_pole_scaleY_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Left.wb";
connectAttr "Left.sam" "Player_rig:CTRL_arm_l_pole_scaleZ_Left.acm";
connectAttr "Left.bgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Left.wa";
connectAttr "Left.fgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Left.wb";
connectAttr "Right.bgwt" "Player_rig:CTRL_root_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_visibility_Right.wb";
connectAttr "Player_rig:CTRL_root_visibility_Left.o" "Player_rig:CTRL_root_visibility_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_root_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_translateX_Right.wb";
connectAttr "Player_rig:CTRL_root_translateX_Left.o" "Player_rig:CTRL_root_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_root_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_translateY_Right.wb";
connectAttr "Player_rig:CTRL_root_translateY_Left.o" "Player_rig:CTRL_root_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_root_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_root_translateZ_Left.o" "Player_rig:CTRL_root_translateZ_Right.ia"
		;
connectAttr "Player_rig:CTRL_root_rotate_Left.ox" "Player_rig:CTRL_root_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_root_rotate_Left.oy" "Player_rig:CTRL_root_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_root_rotate_Left.oz" "Player_rig:CTRL_root_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_root_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_root_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_rotate_Right.wb";
connectAttr "Right.sam" "Player_rig:CTRL_root_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_root_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_root_scaleX_Left.o" "Player_rig:CTRL_root_scaleX_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_root_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_root_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_root_scaleY_Left.o" "Player_rig:CTRL_root_scaleY_Right.ia"
		;
connectAttr "Right.sam" "Player_rig:CTRL_root_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_root_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_root_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_root_scaleZ_Left.o" "Player_rig:CTRL_root_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_visibility_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_visibility_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Left.o" "Player_rig:CTRL_arm_l_pole_visibility_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_visibility_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_translateX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_translateX_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Left.o" "Player_rig:CTRL_arm_l_pole_translateX_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_translateY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_translateY_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Left.o" "Player_rig:CTRL_arm_l_pole_translateY_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_translateY_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Left.o" "Player_rig:CTRL_arm_l_pole_translateZ_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_translateZ_Right.ib"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Left.ox" "Player_rig:CTRL_arm_l_pole_rotate_Right.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Left.oy" "Player_rig:CTRL_arm_l_pole_rotate_Right.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Left.oz" "Player_rig:CTRL_arm_l_pole_rotate_Right.iaz"
		;
connectAttr "Right.oram" "Player_rig:CTRL_arm_l_pole_rotate_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_rotate_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_rotate_Right.wb";
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBX.o" "Player_rig:CTRL_arm_l_pole_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBY.o" "Player_rig:CTRL_arm_l_pole_rotate_Right.iby"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBZ.o" "Player_rig:CTRL_arm_l_pole_rotate_Right.ibz"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_pole_scaleX_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Left.o" "Player_rig:CTRL_arm_l_pole_scaleX_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_scaleX_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_pole_scaleY_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Left.o" "Player_rig:CTRL_arm_l_pole_scaleY_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_scaleY_Right.ib"
		;
connectAttr "Right.sam" "Player_rig:CTRL_arm_l_pole_scaleZ_Right.acm";
connectAttr "Right.bgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Right.wa";
connectAttr "Right.fgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Right.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Left.o" "Player_rig:CTRL_arm_l_pole_scaleZ_Right.ia"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputB.o" "Player_rig:CTRL_arm_l_pole_scaleZ_Right.ib"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_root_visibility_Right.o" "Player_rig:CTRL_root_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_root_translateX_Right.o" "Player_rig:CTRL_root_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_root_translateY_Right.o" "Player_rig:CTRL_root_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_root_translateZ_Right.o" "Player_rig:CTRL_root_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_root_rotate_Right.ox" "Player_rig:CTRL_root_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_root_rotate_Right.oy" "Player_rig:CTRL_root_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_root_rotate_Right.oz" "Player_rig:CTRL_root_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_root_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_root_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_root_scaleX_Right.o" "Player_rig:CTRL_root_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_root_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_root_scaleY_Right.o" "Player_rig:CTRL_root_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_root_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_root_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_root_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_root_scaleZ_Right.o" "Player_rig:CTRL_root_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_visibility_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Right.o" "Player_rig:CTRL_arm_l_pole_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Right.o" "Player_rig:CTRL_arm_l_pole_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Right.o" "Player_rig:CTRL_arm_l_pole_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Right.o" "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Right.ox" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Right.oy" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Right.oz" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.iaz"
		;
connectAttr "Forwards.oram" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_rotate_Forwards.wb";
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Right.o" "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Right.o" "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Right.o" "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_visibility_Backwards.wb";
connectAttr "Player_rig:CTRL_root_visibility_Forwards.o" "Player_rig:CTRL_root_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateX_Backwards.wb";
connectAttr "Player_rig:CTRL_root_translateX_Forwards.o" "Player_rig:CTRL_root_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateY_Backwards.wb";
connectAttr "Player_rig:CTRL_root_translateY_Forwards.o" "Player_rig:CTRL_root_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateZ_Backwards.wb";
connectAttr "Player_rig:CTRL_root_translateZ_Forwards.o" "Player_rig:CTRL_root_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_root_rotate_Forwards.ox" "Player_rig:CTRL_root_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_root_rotate_Forwards.oy" "Player_rig:CTRL_root_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_root_rotate_Forwards.oz" "Player_rig:CTRL_root_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_root_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_root_scaleX_Forwards.o" "Player_rig:CTRL_root_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_root_scaleY_Forwards.o" "Player_rig:CTRL_root_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_root_scaleZ_Forwards.o" "Player_rig:CTRL_root_scaleZ_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_visibility_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Forwards.o" "Player_rig:CTRL_arm_l_pole_visibility_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateX_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Forwards.o" "Player_rig:CTRL_arm_l_pole_translateX_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateY_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Forwards.o" "Player_rig:CTRL_arm_l_pole_translateY_Backwards.ia"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.wb"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.o" "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.ia"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Forwards.ox" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.iax"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Forwards.oy" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.iay"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Forwards.oz" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.iaz"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.o" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.o" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.ia"
		;
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.wb";
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.o" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.ia"
		;
connectAttr "CTRL_ship_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "CTRL_ship_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "CTRL_ship_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "CTRL_ship_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "CTRL_ship_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "CTRL_ship_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "CTRL_ship_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "animBot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "CTRL_ship_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "CTRL_ship_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Player_rigRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn";
connectAttr "CTRL_ship_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "CTRL_ship_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "CTRL_ship_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "CTRL_ship_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "CTRL_ship_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn";
connectAttr "Player_rig:CTRL_spine_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Player_rig:CTRL_head_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Player_rig:CTRL_head_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "Player_rig:CTRL_head_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "Player_rig:CTRL_head_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "Player_rig:CTRL_head_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "Player_rig:CTRL_head_Orient_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "Player_rig:CTRL_cog_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "Player_rig:CTRL_head_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "Player_rig:CTRL_head_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "Player_rig:CTRL_head_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "Player_rig:CTRL_cog_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "Player_rig:CTRL_head_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "Player_rig:CTRL_head_Orient_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "Player_rig:CTRL_head_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "Player_rig:CTRL_cog_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "Player_rig:CTRL_head_Orient_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "Player_rig:CTRL_head_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "Player_rig:CTRL_head_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "Player_rig:CTRL_head_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "Player_rig:CTRL_head_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "Player_rig:CTRL_head_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "Player_rig:CTRL_chest_IK_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_l_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "Player_rig:CTRL_head_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "Player_rig:CTRL_head_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "Player_rig:CTRL_head_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "Player_rig:CTRL_head_Orient_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "Player_rig:CTRL_head_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "Player_rig:CTRL_head_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "Player_rig:CTRL_head_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn"
		;
connectAttr "Player_rig:CTRL_spine_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn"
		;
connectAttr "CTRL_ship_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn"
		;
connectAttr "CTRL_ship_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "CTRL_ship_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "CTRL_arm_r_pole_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn"
		;
connectAttr "CTRL_arm_r_pole_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "CTRL_arm_r_pole_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "CTRL_ship_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "CTRL_ship_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "CTRL_ship_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "CTRL_ship_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "CTRL_ship_scaleY_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "CTRL_ship_scaleX_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "CTRL_ship_translateZ_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "CTRL_ship_translateX_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "CTRL_ship_scaleZ_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn"
		;
connectAttr "CTRL_ship_translateY_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "CTRL_ship_visibility_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "Player_rig:CTRL_foot_l_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn"
		;
connectAttr "Player_rig:CTRL_arm_r_pole_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn"
		;
connectAttr "Player_rig:CTRL_root_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn"
		;
connectAttr "Player_rig:CTRL_root_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn"
		;
connectAttr "Player_rig:CTRL_root_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "Player_rig:CTRL_root_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "Player_rig:CTRL_root_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "Player_rig:CTRL_root_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn"
		;
connectAttr "Player_rig:CTRL_root_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn"
		;
connectAttr "Player_rig:CTRL_root_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "Player_rig:CTRL_root_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "Player_rig:CTRL_root_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "Player_rig:CTRL_root_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn"
		;
connectAttr "Player_rig:CTRL_root_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "Player_rig:CTRL_root_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "Player_rig:CTRL_root_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "Player_rig:CTRL_root_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "Player_rig:CTRL_root_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr "Player_rig:CTRL_root_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr "Player_rig:CTRL_root_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr "Player_rig:CTRL_root_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "Player_rig:CTRL_root_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn"
		;
connectAttr "Player_rig:CTRL_root_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn"
		;
connectAttr "Player_rig:CTRL_arm_l_pole_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn"
		;
connectAttr "CTRL_ship_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn"
		;
connectAttr "Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn";
connectAttr "CTRL_ship_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn"
		;
connectAttr "CTRL_ship_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn"
		;
connectAttr "CTRL_ship_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn"
		;
connectAttr "CTRL_ship_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn"
		;
connectAttr "CTRL_ship_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn"
		;
connectAttr "CTRL_ship_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn"
		;
connectAttr "CTRL_ship_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn"
		;
connectAttr "CTRL_ship_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn"
		;
connectAttr "CTRL_ship_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn"
		;
connectAttr "CTRL_ship_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn"
		;
connectAttr "CTRL_ship_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn"
		;
connectAttr "CTRL_ship_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn"
		;
connectAttr "CTRL_ship_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn"
		;
connectAttr "Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn";
connectAttr "CTRL_ship_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn"
		;
connectAttr "CTRL_ship_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn"
		;
connectAttr "CTRL_ship_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn"
		;
connectAttr "CTRL_ship_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn"
		;
connectAttr "CTRL_ship_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn"
		;
connectAttr "CTRL_ship_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn"
		;
connectAttr "CTRL_ship_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn"
		;
connectAttr "CTRL_ship_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn"
		;
connectAttr "CTRL_cog_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn"
		;
connectAttr "CTRL_cog_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn"
		;
connectAttr "CTRL_cog_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn"
		;
connectAttr "CTRL_cog_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn"
		;
connectAttr "CTRL_cog_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn"
		;
connectAttr "CTRL_cog_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn"
		;
connectAttr "CTRL_cog_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn"
		;
connectAttr "Player_rig:CTRL_foot_r_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn";
connectAttr "Player_rig:CTRL_cog_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn"
		;
connectAttr "CTRL_ship_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn"
		;
connectAttr "CTRL_ship_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn"
		;
connectAttr "CTRL_ship_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn"
		;
connectAttr "CTRL_ship_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn"
		;
connectAttr "CTRL_ship_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn"
		;
connectAttr "Player_rig:CTRL_cog_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn"
		;
connectAttr "CTRL_ship_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn"
		;
connectAttr "CTRL_ship_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn"
		;
connectAttr "CTRL_ship_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn"
		;
connectAttr "Player_rig:CTRL_cog_IKFK_Switch_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn"
		;
connectAttr "Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn";
connectAttr "Player_rig:CTRL_pelvis_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn"
		;
connectAttr "Player_rig:CTRL_cog_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn"
		;
connectAttr "Player_rig:CTRL_pelvis_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn"
		;
connectAttr "Player_rig:CTRL_cog_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn"
		;
connectAttr "CTRL_ship_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn"
		;
connectAttr "CTRL_ship_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn"
		;
connectAttr "CTRL_head_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn"
		;
connectAttr "CTRL_head_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn"
		;
connectAttr "CTRL_head_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn"
		;
connectAttr "CTRL_head_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn"
		;
connectAttr "CTRL_head_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[874].dn"
		;
connectAttr "CTRL_head_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[875].dn"
		;
connectAttr "CTRL_head_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[876].dn"
		;
connectAttr "CTRL_head_Orient_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[877].dn"
		;
connectAttr "CTRL_cog_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[878].dn"
		;
connectAttr "CTRL_cog_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[879].dn"
		;
connectAttr "CTRL_cog_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[880].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[881].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[882].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[883].dn"
		;
connectAttr "CTRL_cog_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[884].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[885].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[886].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[887].dn"
		;
connectAttr "CTRL_cog_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[888].dn"
		;
connectAttr "CTRL_cog_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[889].dn"
		;
connectAttr "CTRL_cog_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[890].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[891].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[892].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[893].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[894].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[895].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[896].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[897].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[898].dn"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[899].dn"
		;
connectAttr "CTRL_arm_l_pole_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[900].dn"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[901].dn"
		;
connectAttr "CTRL_arm_l_pole_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[902].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[903].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[904].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[905].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[906].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[907].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[908].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[909].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[910].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[911].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[912].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[913].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[914].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[915].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[916].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[917].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[918].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[919].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[920].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[921].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[922].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[923].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[924].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[925].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[926].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[927].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[928].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[929].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[930].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[931].dn"
		;
connectAttr "CTRL_head_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[932].dn"
		;
connectAttr "CTRL_head_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[933].dn"
		;
connectAttr "CTRL_head_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[934].dn"
		;
connectAttr "CTRL_head_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[935].dn"
		;
connectAttr "CTRL_head_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[936].dn"
		;
connectAttr "CTRL_head_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[937].dn"
		;
connectAttr "CTRL_head_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[938].dn"
		;
connectAttr "CTRL_head_Orient_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[939].dn"
		;
connectAttr "CTRL_cog_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[940].dn"
		;
connectAttr "CTRL_cog_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[941].dn"
		;
connectAttr "CTRL_cog_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[942].dn"
		;
connectAttr "CTRL_cog_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[943].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[944].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[945].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[946].dn"
		;
connectAttr "CTRL_cog_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[947].dn"
		;
connectAttr "CTRL_cog_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[948].dn"
		;
connectAttr "CTRL_cog_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[949].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[950].dn"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[951].dn"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[952].dn"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[953].dn"
		;
connectAttr "CTRL_foot_l_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[954].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[955].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[956].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[957].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[958].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[959].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[960].dn"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[961].dn"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[962].dn"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[963].dn"
		;
connectAttr "CTRL_foot_r_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[964].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[965].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[966].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[967].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[968].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[969].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[970].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[971].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[972].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[973].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[974].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[975].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[976].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[977].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[978].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[979].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[980].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[981].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[982].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[983].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[984].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[985].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[986].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[987].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[988].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[989].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[990].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[991].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[992].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[993].dn"
		;
connectAttr "CTRL_head_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[994].dn"
		;
connectAttr "CTRL_head_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[995].dn"
		;
connectAttr "CTRL_head_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[996].dn"
		;
connectAttr "CTRL_head_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[997].dn"
		;
connectAttr "CTRL_head_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[998].dn"
		;
connectAttr "CTRL_head_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[999].dn"
		;
connectAttr "CTRL_head_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1000].dn"
		;
connectAttr "CTRL_head_Orient_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1001].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1002].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1003].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1004].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1005].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1006].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1007].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1008].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1009].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1010].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1011].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Player_OmniWalk.ma

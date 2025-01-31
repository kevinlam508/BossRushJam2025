//Maya ASCII 2023 scene
//Name: Player_IdleAnimation.ma
//Last modified: Sat, Feb 01, 2025 04:04:10 PM
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
fileInfo "UUID" "7000D26E-480B-5D36-2E9A-D28465B3BB95";
createNode transform -s -n "persp";
	rename -uid "4979B525-4118-F212-F43B-048F99A79897";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 636.79846035250341 592.02782748507389 378.30095579844544 ;
	setAttr ".r" -type "double3" -35.138352672205336 -2464.200000000922 2.829255237489801e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "36BC0C55-49BC-0965-CF0F-03A68351BBB2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1172.4982809330149;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0050395080430973849 36.116180494891879 0 ;
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
createNode reference -n "Player_rigRN";
	rename -uid "107DD9BD-4535-8B94-36BA-B0B105547D3D";
	setAttr -s 278 ".phl";
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
		"Player_rigRN" 296
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "translate" 
		" -type \"double3\" 0 17.12064658635292247 42.73259672848663371"
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "rotate" 
		" -type \"double3\" -31.18262207958556331 0 0"
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "rotatePivot" 
		" -type \"double3\" 0 18.57046318054199219 0"
		2 "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog" "scalePivot" 
		" -type \"double3\" 0 18.57046318054199219 0"
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
		"translate" " -type \"double3\" -4.76515035722064795 19.60191067079746574 40.79193738328019947"
		
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
		"translate" " -type \"double3\" 3.92349795152937242 19.48055636699990245 40.81831321492059317"
		
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
		"translate" " -type \"double3\" 12.01679978209924116 16.84285013492011984 49.01246038316410392"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik" 
		"rotate" " -type \"double3\" 137.59174808663092904 74.80589885242869741 130.5423520312558594"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik" 
		"rotatePivot" " -type \"double3\" -37.04238510131745699 41.037933349609375 -5.3644179374146006e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik" 
		"scalePivot" " -type \"double3\" -37.04238510131745699 41.037933349609375 -5.3644179374146006e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole" 
		"translate" " -type \"double3\" 0.094454297336254517 8.31078168159411845 7.12276893256237997"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole" 
		"rotatePivot" " -type \"double3\" -29.08889961242675781 41.0428009033203125 -30.37459999322891235"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole" 
		"scalePivot" " -type \"double3\" -29.08889961242675781 41.0428009033203125 -30.37459999322891235"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"translate" " -type \"double3\" -15.60371858202515227 16.94086004796449174 46.79684932135635478"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"rotate" " -type \"double3\" 282.83927719201835771 -70.89655711315882058 -281.79314300218811695"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"rotatePivot" " -type \"double3\" 37.04238510131685302 41.037933349609375 -5.3644178947820365e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik" 
		"scalePivot" " -type \"double3\" 37.04238510131685302 41.037933349609375 -5.3644178947820365e-06"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole" 
		"translate" " -type \"double3\" 0.094454297336254517 8.31078168159411845 7.12276893256237997"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole" 
		"rotatePivot" " -type \"double3\" 29.08891487121582031 41.04275894165039062 -30.37459972500801086"
		
		2 "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole" 
		"scalePivot" " -type \"double3\" 29.08891487121582031 41.04275894165039062 -30.37459972500801086"
		
		2 "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head" "rotate" 
		" -type \"double3\" 26.44215971605073179 -1.13578529120397431 -2.01484252565813815"
		
		2 "Player_rig:geo" "visibility" " 0"
		2 "Player_rig:geo" "hideOnPlayback" " 0"
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
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateX" 
		"Player_rigRN.placeHolderList[67]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateY" 
		"Player_rigRN.placeHolderList[68]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.translateZ" 
		"Player_rigRN.placeHolderList[69]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateX" 
		"Player_rigRN.placeHolderList[70]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateY" 
		"Player_rigRN.placeHolderList[71]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.rotateZ" 
		"Player_rigRN.placeHolderList[72]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleX" 
		"Player_rigRN.placeHolderList[73]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleY" 
		"Player_rigRN.placeHolderList[74]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.scaleZ" 
		"Player_rigRN.placeHolderList[75]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.message" 
		"Player_rigRN.placeHolderList[76]" ""
		5 4 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship.visibility" 
		"Player_rigRN.placeHolderList[77]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_ship|Player_rig:CTRL_shipShape.message" 
		"Player_rigRN.placeHolderList[78]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root.message" 
		"Player_rigRN.placeHolderList[79]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_rootShape.message" 
		"Player_rigRN.placeHolderList[80]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog.message" 
		"Player_rigRN.placeHolderList[81]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:CTRL_root|Player_rig:CTRL_cog|Player_rig:CTRL_cogShape.message" 
		"Player_rigRN.placeHolderList[82]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[83]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK.message" 
		"Player_rigRN.placeHolderList[84]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_IKFK|Player_rig:CTRL_leg_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[85]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[86]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_thigh_r_FKShape.message" 
		"Player_rigRN.placeHolderList[87]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK.message" 
		"Player_rigRN.placeHolderList[88]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_thigh_r_FK|Player_rig:CTRL_calf_r_FK|Player_rig:CTRL_calf_r_FKShape.message" 
		"Player_rigRN.placeHolderList[89]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole.message" 
		"Player_rigRN.placeHolderList[90]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_leg_r_pole|Player_rig:CTRL_leg_r_poleShape.message" 
		"Player_rigRN.placeHolderList[91]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK.message" 
		"Player_rigRN.placeHolderList[92]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:CTRL_foot_r_IKShape.message" 
		"Player_rigRN.placeHolderList[93]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r.message" 
		"Player_rigRN.placeHolderList[94]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_r_grp|Player_rig:CTRL_foot_r_IK|Player_rig:ikHandle2_leg_r|Player_rig:ikHandle2_leg_r_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[95]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[96]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK.message" 
		"Player_rigRN.placeHolderList[97]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_IKFK|Player_rig:CTRL_leg_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[98]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[99]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_thigh_l_FKShape.message" 
		"Player_rigRN.placeHolderList[100]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK.message" 
		"Player_rigRN.placeHolderList[101]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_thigh_l_FK|Player_rig:CTRL_calf_l_FK|Player_rig:CTRL_calf_l_FKShape.message" 
		"Player_rigRN.placeHolderList[102]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK.message" 
		"Player_rigRN.placeHolderList[103]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:CTRL_foot_l_IKShape.message" 
		"Player_rigRN.placeHolderList[104]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle5_leg_l.message" 
		"Player_rigRN.placeHolderList[105]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_foot_l_IK|Player_rig:ikHandle5_leg_l|Player_rig:ikHandle5_leg_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[106]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole.message" 
		"Player_rigRN.placeHolderList[107]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:leg_l_grp|Player_rig:CTRL_leg_l_pole|Player_rig:CTRL_leg_l_poleShape.message" 
		"Player_rigRN.placeHolderList[108]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[109]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r.message" 
		"Player_rigRN.placeHolderList[110]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_shoulder_r|Player_rig:CTRL_shoulder_rShape.message" 
		"Player_rigRN.placeHolderList[111]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[112]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_upperarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[113]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[114]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_lowerarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[115]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK.message" 
		"Player_rigRN.placeHolderList[116]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_upperarm_r_FK|Player_rig:CTRL_lowerarm_r_FK|Player_rig:CTRL_hand_r_FK|Player_rig:CTRL_hand_r_FKShape.message" 
		"Player_rigRN.placeHolderList[117]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik.message" 
		"Player_rigRN.placeHolderList[118]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:CTRL_arm_r_ikShape.message" 
		"Player_rigRN.placeHolderList[119]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r.message" 
		"Player_rigRN.placeHolderList[120]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_ik|Player_rig:ikHandle3_arm_r|Player_rig:ikHandle3_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[121]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole.message" 
		"Player_rigRN.placeHolderList[122]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_pole|Player_rig:CTRL_arm_r_poleShape.message" 
		"Player_rigRN.placeHolderList[123]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK.message" 
		"Player_rigRN.placeHolderList[124]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_r_grp|Player_rig:CTRL_arm_r_IKFK|Player_rig:CTRL_arm_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[125]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[126]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l.message" 
		"Player_rigRN.placeHolderList[127]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_shoulder_l|Player_rig:CTRL_shoulder_lShape.message" 
		"Player_rigRN.placeHolderList[128]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK.message" 
		"Player_rigRN.placeHolderList[129]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_IKFK|Player_rig:CTRL_arm_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[130]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[131]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_upperarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[132]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[133]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_lowerarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[134]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK.message" 
		"Player_rigRN.placeHolderList[135]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_upperarm_l_FK|Player_rig:CTRL_lowerarm_l_FK|Player_rig:CTRL_hand_l_FK|Player_rig:CTRL_hand_l_FKShape.message" 
		"Player_rigRN.placeHolderList[136]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik.message" 
		"Player_rigRN.placeHolderList[137]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:CTRL_arm_l_ikShape.message" 
		"Player_rigRN.placeHolderList[138]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle4_arm_l.message" 
		"Player_rigRN.placeHolderList[139]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_ik|Player_rig:ikHandle4_arm_l|Player_rig:ikHandle4_arm_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[140]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole.message" 
		"Player_rigRN.placeHolderList[141]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:arm_l_grp|Player_rig:CTRL_arm_l_pole|Player_rig:CTRL_arm_l_poleShape.message" 
		"Player_rigRN.placeHolderList[142]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp.message" 
		"Player_rigRN.placeHolderList[143]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head.message" 
		"Player_rigRN.placeHolderList[144]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:CTRL_head|Player_rig:CTRL_headShape.message" 
		"Player_rigRN.placeHolderList[145]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:head_grp|Player_rig:head_grp_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[146]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp.message" 
		"Player_rigRN.placeHolderList[147]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK.message" 
		"Player_rigRN.placeHolderList[148]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_IK|Player_rig:CTRL_pelvis_IKShape.message" 
		"Player_rigRN.placeHolderList[149]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK.message" 
		"Player_rigRN.placeHolderList[150]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_spine_IK|Player_rig:CTRL_spine_IKShape.message" 
		"Player_rigRN.placeHolderList[151]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK.message" 
		"Player_rigRN.placeHolderList[152]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_chest_IK|Player_rig:CTRL_chest_IKShape.message" 
		"Player_rigRN.placeHolderList[153]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK.message" 
		"Player_rigRN.placeHolderList[154]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_pelvis_FKShape.message" 
		"Player_rigRN.placeHolderList[155]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK.message" 
		"Player_rigRN.placeHolderList[156]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_spine_FKShape.message" 
		"Player_rigRN.placeHolderList[157]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK.message" 
		"Player_rigRN.placeHolderList[158]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:CTRL_pelvis_FK|Player_rig:CTRL_spine_FK|Player_rig:CTRL_chest_FK|Player_rig:CTRL_chest_FKShape.message" 
		"Player_rigRN.placeHolderList[159]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_controls|Player_rig:torso_grp|Player_rig:ikHandle_spine.message" 
		"Player_rigRN.placeHolderList[160]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems.message" "Player_rigRN.placeHolderList[161]" 
		""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH.message" 
		"Player_rigRN.placeHolderList[162]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group.message" 
		"Player_rigRN.placeHolderList[163]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:chest_ctrljnt.message" 
		"Player_rigRN.placeHolderList[164]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:chest_ctrljnt|Player_rig:chest_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[165]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:mid_ctrljnt.message" 
		"Player_rigRN.placeHolderList[166]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:mid_ctrljnt|Player_rig:mid_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[167]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_ctrljnt.message" 
		"Player_rigRN.placeHolderList[168]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_ctrljnt|Player_rig:pelvis_ctrljnt1_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[169]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve.message" 
		"Player_rigRN.placeHolderList[170]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShape.message" 
		"Player_rigRN.placeHolderList[171]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:spine_ik_curve|Player_rig:spine_ik_curveShapeOrig.message" 
		"Player_rigRN.placeHolderList[172]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK.message" 
		"Player_rigRN.placeHolderList[173]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK.message" 
		"Player_rigRN.placeHolderList[174]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:chest_IK.message" 
		"Player_rigRN.placeHolderList[175]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:chest_IK|Player_rig:chest_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[176]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:effector3.message" 
		"Player_rigRN.placeHolderList[177]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_IK|Player_rig:spine_IK|Player_rig:spine_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[178]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK.message" 
		"Player_rigRN.placeHolderList[179]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK.message" 
		"Player_rigRN.placeHolderList[180]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK.message" 
		"Player_rigRN.placeHolderList[181]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:chest_FK|Player_rig:chest_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[182]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:spine_FK|Player_rig:spine_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[183]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:spine_group|Player_rig:pelvis_FK|Player_rig:pelvis_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[184]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp.message" 
		"Player_rigRN.placeHolderList[185]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK.message" 
		"Player_rigRN.placeHolderList[186]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK.message" 
		"Player_rigRN.placeHolderList[187]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK.message" 
		"Player_rigRN.placeHolderList[188]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:hand_l_IK|Player_rig:hand_l_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[189]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_IK|Player_rig:lowerarm_l_IK|Player_rig:effector8.message" 
		"Player_rigRN.placeHolderList[190]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[191]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[192]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK.message" 
		"Player_rigRN.placeHolderList[193]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:hand_l_FK|Player_rig:hand_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[194]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:lowerarm_l_FK|Player_rig:lowerarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[195]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_l_grp|Player_rig:upperarm_l_FK|Player_rig:upperarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[196]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp.message" 
		"Player_rigRN.placeHolderList[197]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK.message" 
		"Player_rigRN.placeHolderList[198]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK.message" 
		"Player_rigRN.placeHolderList[199]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK.message" 
		"Player_rigRN.placeHolderList[200]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:hand_r_IK|Player_rig:hand_r_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[201]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_IK|Player_rig:lowerarm_r_IK|Player_rig:effector7.message" 
		"Player_rigRN.placeHolderList[202]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[203]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[204]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK.message" 
		"Player_rigRN.placeHolderList[205]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:hand_r_FK|Player_rig:hand_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[206]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:lowerarm_r_FK|Player_rig:lowerarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[207]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:arm_r_grp|Player_rig:upperarm_r_FK|Player_rig:upperarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[208]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp.message" 
		"Player_rigRN.placeHolderList[209]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK.message" 
		"Player_rigRN.placeHolderList[210]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK.message" 
		"Player_rigRN.placeHolderList[211]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:foot_l_IK.message" 
		"Player_rigRN.placeHolderList[212]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_IK|Player_rig:calf_l_IK|Player_rig:effector9.message" 
		"Player_rigRN.placeHolderList[213]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[214]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK.message" 
		"Player_rigRN.placeHolderList[215]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:foot_l_FK.message" 
		"Player_rigRN.placeHolderList[216]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:calf_l_FK|Player_rig:calf_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[217]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_l_grp|Player_rig:thigh_l_FK|Player_rig:thigh_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[218]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp.message" 
		"Player_rigRN.placeHolderList[219]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK.message" 
		"Player_rigRN.placeHolderList[220]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK.message" 
		"Player_rigRN.placeHolderList[221]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:foot_r_IK.message" 
		"Player_rigRN.placeHolderList[222]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_IK|Player_rig:calf_r_IK|Player_rig:effector6.message" 
		"Player_rigRN.placeHolderList[223]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[224]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK.message" 
		"Player_rigRN.placeHolderList[225]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:foot_r_FK.message" 
		"Player_rigRN.placeHolderList[226]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:calf_r_FK|Player_rig:calf_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[227]" ""
		5 3 "Player_rigRN" "|Player_rig:rig_systems|Player_rig:DO_NOT_TOUCH|Player_rig:leg_r_grp|Player_rig:thigh_r_FK|Player_rig:thigh_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[228]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:OrionShapeDeformed.message" 
		"Player_rigRN.placeHolderList[229]" ""
		5 3 "Player_rigRN" "|Player_rig:Player_modelRNfosterParent1|Player_rig:SaucerShapeDeformed.message" 
		"Player_rigRN.placeHolderList[230]" ""
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager.message" "Player_rigRN.placeHolderList[231]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager.message" "Player_rigRN.placeHolderList[232]" 
		""
		5 3 "Player_rigRN" "Player_rig:layerManager.message" "Player_rigRN.placeHolderList[233]" 
		""
		5 3 "Player_rigRN" "Player_rig:defaultLayer.message" "Player_rigRN.placeHolderList[234]" 
		""
		5 3 "Player_rigRN" "Player_rig:uiConfigurationScriptNode.message" "Player_rigRN.placeHolderList[235]" 
		""
		5 3 "Player_rigRN" "Player_rig:sceneConfigurationScriptNode.message" 
		"Player_rigRN.placeHolderList[236]" ""
		5 3 "Player_rigRN" "Player_rig:geo.message" "Player_rigRN.placeHolderList[237]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose3.message" "Player_rigRN.placeHolderList[238]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse1.message" "Player_rigRN.placeHolderList[239]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse2.message" "Player_rigRN.placeHolderList[240]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse3.message" "Player_rigRN.placeHolderList[241]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse4.message" "Player_rigRN.placeHolderList[242]" 
		""
		5 3 "Player_rigRN" "Player_rig:reverse5.message" "Player_rigRN.placeHolderList[243]" 
		""
		5 3 "Player_rigRN" "Player_rig:pasted__multiplyDivide1.message" "Player_rigRN.placeHolderList[244]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose6.message" "Player_rigRN.placeHolderList[245]" 
		""
		5 3 "Player_rigRN" "Player_rig:controls.message" "Player_rigRN.placeHolderList[246]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster2.message" "Player_rigRN.placeHolderList[247]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle1.message" "Player_rigRN.placeHolderList[248]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry1.message" "Player_rigRN.placeHolderList[249]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry4.message" "Player_rigRN.placeHolderList[250]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle2.message" "Player_rigRN.placeHolderList[251]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry2.message" "Player_rigRN.placeHolderList[252]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry3.message" "Player_rigRN.placeHolderList[253]" 
		""
		5 3 "Player_rigRN" "Player_rig:makeNurbCircle4.message" "Player_rigRN.placeHolderList[254]" 
		""
		5 3 "Player_rigRN" "Player_rig:transformGeometry7.message" "Player_rigRN.placeHolderList[255]" 
		""
		5 3 "Player_rigRN" "Player_rig:tweak1.message" "Player_rigRN.placeHolderList[256]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind1.message" "Player_rigRN.placeHolderList[257]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster5.message" "Player_rigRN.placeHolderList[258]" 
		""
		5 3 "Player_rigRN" "Player_rig:bones.message" "Player_rigRN.placeHolderList[259]" 
		""
		5 3 "Player_rigRN" "Player_rig:multMatrix1.message" "Player_rigRN.placeHolderList[260]" 
		""
		5 3 "Player_rigRN" "Player_rig:shapeEditorManager1.message" "Player_rigRN.placeHolderList[261]" 
		""
		5 3 "Player_rigRN" "Player_rig:poseInterpolatorManager1.message" "Player_rigRN.placeHolderList[262]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material.message" "Player_rigRN.placeHolderList[263]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG.message" "Player_rigRN.placeHolderList[264]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material1.message" "Player_rigRN.placeHolderList[265]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG1.message" "Player_rigRN.placeHolderList[266]" 
		""
		5 3 "Player_rigRN" "Player_rig:Material2.message" "Player_rigRN.placeHolderList[267]" 
		""
		5 3 "Player_rigRN" "Player_rig:OrionSG2.message" "Player_rigRN.placeHolderList[268]" 
		""
		5 3 "Player_rigRN" "Player_rig:MT_Saucer.message" "Player_rigRN.placeHolderList[269]" 
		""
		5 3 "Player_rigRN" "Player_rig:SaucerSG.message" "Player_rigRN.placeHolderList[270]" 
		""
		5 3 "Player_rigRN" "Player_rig:Player_modelRN.message" "Player_rigRN.placeHolderList[271]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster6.message" "Player_rigRN.placeHolderList[272]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose7.message" "Player_rigRN.placeHolderList[273]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind2.message" "Player_rigRN.placeHolderList[274]" 
		""
		5 3 "Player_rigRN" "Player_rig:skinCluster7.message" "Player_rigRN.placeHolderList[275]" 
		""
		5 3 "Player_rigRN" "Player_rig:bindPose8.message" "Player_rigRN.placeHolderList[276]" 
		""
		5 3 "Player_rigRN" "Player_rig:geomBind3.message" "Player_rigRN.placeHolderList[277]" 
		""
		5 3 "Player_rigRN" "Player_rig:sharedReferenceNode.message" "Player_rigRN.placeHolderList[278]" 
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
createNode animCurveTL -n "CTRL_ship_translateX";
	rename -uid "8BE18412-4E1A-F1C4-7595-0B9245B46BD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 14 0 30 0 47 0 60 0;
createNode animCurveTL -n "CTRL_ship_translateY";
	rename -uid "94CFC87F-4FD7-DF6B-DE34-C2B090177460";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 25.613123733118869 14 40.216378990496089
		 30 0 35 25.613123733118869 47 39.530187775001544 60 0;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 18;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes no no;
	setAttr -s 7 ".kix[1:6]"  0.070531211370181437 0.4797470944467932 
		0.53333333333333333 0.11181906985202801 0.65373303578235209 0.43333333333333335;
	setAttr -s 7 ".kiy[1:6]"  12.400799155582716 0.0083643123507499695 
		0 15.141775053656149 -1.3470887616276741 0;
	setAttr -s 7 ".kox[1:6]"  0.16081124749034648 0.61893581633574579 
		0.16666666666666674 0.21880656103603546 0.88571426243132489 0.43333333333333335;
	setAttr -s 7 ".koy[1:6]"  28.27383840551586 0.0083641060892125137 
		0 29.629291479494285 0.0083642866814750156 0;
createNode animCurveTL -n "CTRL_ship_translateZ";
	rename -uid "9158C011-40D9-328E-B5DC-058AE323AEE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 14 0 30 0 47 0 60 0;
createNode animCurveTU -n "CTRL_ship_visibility";
	rename -uid "A22894FF-4D24-FD0C-FBF6-7AAFFF7B6D66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 14 1 30 1 47 1 60 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "CTRL_ship_rotateY";
	rename -uid "2B6E2DA4-4D4D-55C2-1108-BE8CCDCEF012";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -0.42747404844290637 19 0.21145328719724144
		 38 -0.35377162629757752 55 0.29480968858131523 60 0;
createNode animCurveTA -n "CTRL_ship_rotateZ";
	rename -uid "80C76CE0-4990-F0D9-211C-C695D6424627";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.0066995869377837573 3 -0.16395219063062202
		 13 -0.70310395007965687 30 -0.0066995869377837573 49 0.86942201498003113 60 -0.0066995869377837573;
createNode animCurveTU -n "CTRL_ship_scaleX";
	rename -uid "C357990B-4055-4A49-2969-6990D26E126B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 14 1 30 1 47 1 60 1;
createNode animCurveTU -n "CTRL_ship_scaleY";
	rename -uid "5583F613-4A84-2D48-AF67-3295925C91DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 14 1 30 1 47 1 60 1;
createNode animCurveTU -n "CTRL_ship_scaleZ";
	rename -uid "E5008F2D-43C1-F208-7617-50A46BEBBDA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 14 1 30 1 47 1 60 1;
createNode animCurveTA -n "CTRL_ship_rotateX";
	rename -uid "E4EB9871-4D5A-E4AB-DEC4-78A1408E87F5";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  3 -0.047450626512827158 8 -2.3421548883247874
		 17 -3.9548219589268228 33 3.6528593513771397 38 2.3260224286780979 52 -2.1949881053870799
		 63 -0.047450626512827158;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 18;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes no no;
	setAttr -s 7 ".kix[1:6]"  0.16666666666666666 0.3 0.53333333333333344 
		0.16666666666666652 1.0387271995345753 0.3666666666666667;
	setAttr -s 7 ".kiy[1:6]"  -0.036255996014172676 -1.0081184271050545e-05 
		0 -0.027963376522251879 -0.013406546467765406 0;
	setAttr -s 7 ".kox[1:6]"  0.3 0.53333333333333344 0.16666666666666652 
		0.46666666666666679 0.3666666666666667 0.3666666666666667;
	setAttr -s 7 ".koy[1:6]"  -0.065260784655428297 -1.389136922590878e-05 
		0 -0.078297450488087533 -6.6738910275640226e-06 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
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
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 313 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "71FFBCAD-4730-3AF3-1D9A-EBA850048A9A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1152.3809065894493 -71.428568590255125 ;
	setAttr ".tgi[0].vh" -type "double2" 1152.3809065894493 71.428568590255125 ;
	setAttr -s 281 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 340;
	setAttr ".tgi[0].ni[0].y" 844.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[1].y" 4895.71435546875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2218.571533203125;
	setAttr ".tgi[0].ni[2].y" 5295.71435546875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2218.571533203125;
	setAttr ".tgi[0].ni[3].y" 5097.14306640625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[4].y" 5018.5712890625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2147.142822265625;
	setAttr ".tgi[0].ni[5].y" -9674.2861328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2147.142822265625;
	setAttr ".tgi[0].ni[6].y" -9522.857421875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[7].y" -3731.428466796875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2147.142822265625;
	setAttr ".tgi[0].ni[8].y" -9371.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2218.571533203125;
	setAttr ".tgi[0].ni[9].y" 4935.71435546875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2147.142822265625;
	setAttr ".tgi[0].ni[10].y" -9220;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[11].y" 5198.5712890625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2147.142822265625;
	setAttr ".tgi[0].ni[12].y" -9068.5712890625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[13].y" 1612.857177734375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2147.142822265625;
	setAttr ".tgi[0].ni[14].y" -8917.142578125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[15].y" 492.85714721679688;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2147.142822265625;
	setAttr ".tgi[0].ni[16].y" -8765.7138671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -948.5714111328125;
	setAttr ".tgi[0].ni[17].y" 2127.142822265625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2147.142822265625;
	setAttr ".tgi[0].ni[18].y" -920;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[19].y" 672.85711669921875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2147.142822265625;
	setAttr ".tgi[0].ni[20].y" -8614.2861328125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[21].y" 1147.142822265625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -268.57144165039062;
	setAttr ".tgi[0].ni[22].y" 31.428571701049805;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 84.285713195800781;
	setAttr ".tgi[0].ni[23].y" 31.428571701049805;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[24].y" -758.5714111328125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 2218.571533203125;
	setAttr ".tgi[0].ni[25].y" 4812.85693359375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[26].y" 4544.28564453125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 2218.571533203125;
	setAttr ".tgi[0].ni[27].y" 4690;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 2147.142822265625;
	setAttr ".tgi[0].ni[28].y" -8462.857421875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[29].y" -1298.5714111328125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[30].y" 4107.14306640625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 2147.142822265625;
	setAttr ".tgi[0].ni[31].y" -8311.4287109375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 2147.142822265625;
	setAttr ".tgi[0].ni[32].y" -8160;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[33].y" 4364.28564453125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2218.571533203125;
	setAttr ".tgi[0].ni[34].y" 4567.14306640625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -1562.857177734375;
	setAttr ".tgi[0].ni[35].y" 4650;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2147.142822265625;
	setAttr ".tgi[0].ni[36].y" -8008.5712890625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2147.142822265625;
	setAttr ".tgi[0].ni[37].y" -7857.14306640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2147.142822265625;
	setAttr ".tgi[0].ni[38].y" -7705.71435546875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2147.142822265625;
	setAttr ".tgi[0].ni[39].y" -7554.28564453125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 2218.571533203125;
	setAttr ".tgi[0].ni[40].y" 4444.28564453125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[41].y" 1132.857177734375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 2147.142822265625;
	setAttr ".tgi[0].ni[42].y" -7402.85693359375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[43].y" -938.5714111328125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 32.857143402099609;
	setAttr ".tgi[0].ni[44].y" -205.71427917480469;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 340;
	setAttr ".tgi[0].ni[45].y" -1640;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2218.571533203125;
	setAttr ".tgi[0].ni[46].y" 4212.85693359375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -948.5714111328125;
	setAttr ".tgi[0].ni[47].y" 2004.2857666015625;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 2218.571533203125;
	setAttr ".tgi[0].ni[48].y" 4007.142822265625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2218.571533203125;
	setAttr ".tgi[0].ni[49].y" 3710;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 2218.571533203125;
	setAttr ".tgi[0].ni[50].y" 3384.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2218.571533203125;
	setAttr ".tgi[0].ni[51].y" 3095.71435546875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 987.14288330078125;
	setAttr ".tgi[0].ni[52].y" -1904.2857666015625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 987.14288330078125;
	setAttr ".tgi[0].ni[53].y" 610;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2218.571533203125;
	setAttr ".tgi[0].ni[54].y" 2830;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 647.14288330078125;
	setAttr ".tgi[0].ni[55].y" -2775.71435546875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -292.85714721679688;
	setAttr ".tgi[0].ni[56].y" 421.42855834960938;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 2218.571533203125;
	setAttr ".tgi[0].ni[57].y" 2658.571533203125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[58].y" -1601.4285888671875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -2177.142822265625;
	setAttr ".tgi[0].ni[59].y" 4088.571533203125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[60].y" 2915.71435546875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 647.14288330078125;
	setAttr ".tgi[0].ni[61].y" -2130;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 340;
	setAttr ".tgi[0].ni[62].y" -1460;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 32.857143402099609;
	setAttr ".tgi[0].ni[63].y" -628.5714111328125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 2218.571533203125;
	setAttr ".tgi[0].ni[64].y" 2421.428466796875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 32.857143402099609;
	setAttr ".tgi[0].ni[65].y" -25.714284896850586;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 340;
	setAttr ".tgi[0].ni[66].y" -1182.857177734375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -600;
	setAttr ".tgi[0].ni[67].y" 644.28570556640625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 2218.571533203125;
	setAttr ".tgi[0].ni[68].y" 2135.71435546875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 2218.571533203125;
	setAttr ".tgi[0].ni[69].y" 1954.2857666015625;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 340;
	setAttr ".tgi[0].ni[70].y" -1892.857177734375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 647.14288330078125;
	setAttr ".tgi[0].ni[71].y" -1435.7142333984375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 32.857143402099609;
	setAttr ".tgi[0].ni[72].y" -751.4285888671875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 340;
	setAttr ".tgi[0].ni[73].y" -2368.571533203125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 647.14288330078125;
	setAttr ".tgi[0].ni[74].y" -5210;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2147.142822265625;
	setAttr ".tgi[0].ni[75].y" -7251.4287109375;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[76].y" 3067.142822265625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 2147.142822265625;
	setAttr ".tgi[0].ni[77].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -2177.142822265625;
	setAttr ".tgi[0].ni[78].y" 4211.4287109375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[79].y" 3452.857177734375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2218.571533203125;
	setAttr ".tgi[0].ni[80].y" 1831.4285888671875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 2218.571533203125;
	setAttr ".tgi[0].ni[81].y" 1708.5714111328125;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 2218.571533203125;
	setAttr ".tgi[0].ni[82].y" 1585.7142333984375;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 647.14288330078125;
	setAttr ".tgi[0].ni[83].y" 662.85711669921875;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[84].y" -1118.5714111328125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 987.14288330078125;
	setAttr ".tgi[0].ni[85].y" -2427.142822265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -292.85714721679688;
	setAttr ".tgi[0].ni[86].y" 2694.28564453125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2218.571533203125;
	setAttr ".tgi[0].ni[87].y" 1462.857177734375;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -600;
	setAttr ".tgi[0].ni[88].y" 767.14288330078125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 2218.571533203125;
	setAttr ".tgi[0].ni[89].y" 1340;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 987.14288330078125;
	setAttr ".tgi[0].ni[90].y" 148.57142639160156;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[91].y" -387.14285278320312;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[92].y" -3778.571533203125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 2147.142822265625;
	setAttr ".tgi[0].ni[93].y" -7100;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 2218.571533203125;
	setAttr ".tgi[0].ni[94].y" 1217.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[95].y" -1351.4285888671875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[96].y" 190;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -948.5714111328125;
	setAttr ".tgi[0].ni[97].y" 2927.142822265625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[98].y" 910;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" -1562.857177734375;
	setAttr ".tgi[0].ni[99].y" 3987.142822265625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 2147.142822265625;
	setAttr ".tgi[0].ni[100].y" -6948.5712890625;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[101].y" 5181.4287109375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2218.571533203125;
	setAttr ".tgi[0].ni[102].y" 1094.2857666015625;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 2218.571533203125;
	setAttr ".tgi[0].ni[103].y" 971.4285888671875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 987.14288330078125;
	setAttr ".tgi[0].ni[104].y" 360;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 2218.571533203125;
	setAttr ".tgi[0].ni[105].y" 848.5714111328125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 2218.571533203125;
	setAttr ".tgi[0].ni[106].y" 701.4285888671875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 2218.571533203125;
	setAttr ".tgi[0].ni[107].y" 521.4285888671875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 340;
	setAttr ".tgi[0].ni[108].y" 2471.428466796875;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[109].y" 21.428571701049805;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -1562.857177734375;
	setAttr ".tgi[0].ni[110].y" 4412.85693359375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[111].y" -104.28571319580078;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 2147.142822265625;
	setAttr ".tgi[0].ni[112].y" -6797.14306640625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 2147.142822265625;
	setAttr ".tgi[0].ni[113].y" -768.5714111328125;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 987.14288330078125;
	setAttr ".tgi[0].ni[114].y" 485.71429443359375;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 2147.142822265625;
	setAttr ".tgi[0].ni[115].y" -6645.71435546875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2147.142822265625;
	setAttr ".tgi[0].ni[116].y" -6494.28564453125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -1562.857177734375;
	setAttr ".tgi[0].ni[117].y" 4290;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 2147.142822265625;
	setAttr ".tgi[0].ni[118].y" -6342.85693359375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 2218.571533203125;
	setAttr ".tgi[0].ni[119].y" 190;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 647.14288330078125;
	setAttr ".tgi[0].ni[120].y" 910;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2218.571533203125;
	setAttr ".tgi[0].ni[121].y" -58.571430206298828;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[122].y" 312.85714721679688;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 2218.571533203125;
	setAttr ".tgi[0].ni[123].y" -181.42857360839844;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[124].y" -284.28570556640625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[125].y" 3150;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -948.5714111328125;
	setAttr ".tgi[0].ni[126].y" 1767.142822265625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[127].y" 2741.428466796875;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 2147.142822265625;
	setAttr ".tgi[0].ni[128].y" -6191.4287109375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 2218.571533203125;
	setAttr ".tgi[0].ni[129].y" -345.71429443359375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -600;
	setAttr ".tgi[0].ni[130].y" 3058.571533203125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[131].y" 1312.857177734375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" -600;
	setAttr ".tgi[0].ni[132].y" 2141.428466796875;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -292.85714721679688;
	setAttr ".tgi[0].ni[133].y" 1427.142822265625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 32.857143402099609;
	setAttr ".tgi[0].ni[134].y" -874.28570556640625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 2218.571533203125;
	setAttr ".tgi[0].ni[135].y" -510;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[136].y" -3484.28564453125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -600;
	setAttr ".tgi[0].ni[137].y" 2264.28564453125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 32.857143402099609;
	setAttr ".tgi[0].ni[138].y" 767.14288330078125;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" -948.5714111328125;
	setAttr ".tgi[0].ni[139].y" 2804.28564453125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2218.571533203125;
	setAttr ".tgi[0].ni[140].y" -632.85711669921875;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 647.14288330078125;
	setAttr ".tgi[0].ni[141].y" -2481.428466796875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 987.14288330078125;
	setAttr ".tgi[0].ni[142].y" 1190;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 2218.571533203125;
	setAttr ".tgi[0].ni[143].y" -755.71429443359375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[144].y" -2387.142822265625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[145].y" 544.28570556640625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 1840;
	setAttr ".tgi[0].ni[146].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1840;
	setAttr ".tgi[0].ni[147].y" -768.5714111328125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1840;
	setAttr ".tgi[0].ni[148].y" -2254.28564453125;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[149].y" -1724.2857666015625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 340;
	setAttr ".tgi[0].ni[150].y" -361.42855834960938;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 2147.142822265625;
	setAttr ".tgi[0].ni[151].y" -2102.857177734375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[152].y" -2802.857177734375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[153].y" -2641.428466796875;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 987.14288330078125;
	setAttr ".tgi[0].ni[154].y" -4344.28564453125;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -948.5714111328125;
	setAttr ".tgi[0].ni[155].y" 3677.142822265625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[156].y" 3870;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" -600;
	setAttr ".tgi[0].ni[157].y" 4084.28564453125;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 32.857143402099609;
	setAttr ".tgi[0].ni[158].y" 1657.142822265625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 2147.142822265625;
	setAttr ".tgi[0].ni[159].y" -6040;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[160].y" 4478.5712890625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[161].y" -768.5714111328125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[162].y" 3898.571533203125;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 2218.571533203125;
	setAttr ".tgi[0].ni[163].y" -910;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[164].y" -1478.5714111328125;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 2147.142822265625;
	setAttr ".tgi[0].ni[165].y" -5888.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -600;
	setAttr ".tgi[0].ni[166].y" 1961.4285888671875;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -292.85714721679688;
	setAttr ".tgi[0].ni[167].y" 3551.428466796875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[168].y" 667.14288330078125;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[169].y" -1195.7142333984375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[170].y" -1630;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[171].y" 2658.571533203125;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 987.14288330078125;
	setAttr ".tgi[0].ni[172].y" -1404.2857666015625;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1532.857177734375;
	setAttr ".tgi[0].ni[173].y" -920;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 1532.857177734375;
	setAttr ".tgi[0].ni[174].y" -768.5714111328125;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 2218.571533203125;
	setAttr ".tgi[0].ni[175].y" -1061.4285888671875;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -600;
	setAttr ".tgi[0].ni[176].y" 3315.71435546875;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[177].y" 1132.857177734375;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 2147.142822265625;
	setAttr ".tgi[0].ni[178].y" -5737.14306640625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[179].y" 2021.4285888671875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2127.142822265625;
	setAttr ".tgi[0].ni[180].y" -2557.142822265625;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[181].y" -2084.28564453125;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[182].y" 258.57144165039062;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 2147.142822265625;
	setAttr ".tgi[0].ni[183].y" -5585.71435546875;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[184].y" 110;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 647.14288330078125;
	setAttr ".tgi[0].ni[185].y" 1032.857177734375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 1225.7142333984375;
	setAttr ".tgi[0].ni[186].y" -920;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1532.857177734375;
	setAttr ".tgi[0].ni[187].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[188].y" 3247.142822265625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 2218.571533203125;
	setAttr ".tgi[0].ni[189].y" -1270;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -292.85714721679688;
	setAttr ".tgi[0].ni[190].y" 2047.142822265625;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 2218.571533203125;
	setAttr ".tgi[0].ni[191].y" -1418.5714111328125;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" -600;
	setAttr ".tgi[0].ni[192].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" -292.85714721679688;
	setAttr ".tgi[0].ni[193].y" 2457.142822265625;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1840;
	setAttr ".tgi[0].ni[194].y" -920;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[195].y" -1432.857177734375;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -1870;
	setAttr ".tgi[0].ni[196].y" 4272.85693359375;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 2147.142822265625;
	setAttr ".tgi[0].ni[197].y" -5434.28564453125;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2147.142822265625;
	setAttr ".tgi[0].ni[198].y" -5282.85693359375;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2218.571533203125;
	setAttr ".tgi[0].ni[199].y" -1541.4285888671875;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2147.142822265625;
	setAttr ".tgi[0].ni[200].y" -2254.28564453125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 2218.571533203125;
	setAttr ".tgi[0].ni[201].y" -1785.7142333984375;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1840;
	setAttr ".tgi[0].ni[202].y" -2102.857177734375;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2147.142822265625;
	setAttr ".tgi[0].ni[203].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 987.14288330078125;
	setAttr ".tgi[0].ni[204].y" -2950;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[205].y" -3190;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[206].y" -4095.71435546875;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2147.142822265625;
	setAttr ".tgi[0].ni[207].y" -5131.4287109375;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[208].y" -2207.142822265625;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[209].y" -2764.28564453125;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[210].y" -1904.2857666015625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 2218.571533203125;
	setAttr ".tgi[0].ni[211].y" -2004.2857666015625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 2218.571533203125;
	setAttr ".tgi[0].ni[212].y" -2307.142822265625;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 1840;
	setAttr ".tgi[0].ni[213].y" -1800;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 2147.142822265625;
	setAttr ".tgi[0].ni[214].y" -4980;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 2147.142822265625;
	setAttr ".tgi[0].ni[215].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 2120;
	setAttr ".tgi[0].ni[216].y" -2405.71435546875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2147.142822265625;
	setAttr ".tgi[0].ni[217].y" -4828.5712890625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 2145.71435546875;
	setAttr ".tgi[0].ni[218].y" -2708.571533203125;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 2147.142822265625;
	setAttr ".tgi[0].ni[219].y" -1800;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2147.142822265625;
	setAttr ".tgi[0].ni[220].y" -1222.857177734375;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 2147.142822265625;
	setAttr ".tgi[0].ni[221].y" -4677.14306640625;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 2147.142822265625;
	setAttr ".tgi[0].ni[222].y" -1345.7142333984375;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 1840;
	setAttr ".tgi[0].ni[223].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 2147.142822265625;
	setAttr ".tgi[0].ni[224].y" -1497.142822265625;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 1840;
	setAttr ".tgi[0].ni[225].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1840;
	setAttr ".tgi[0].ni[226].y" -1284.2857666015625;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 1840;
	setAttr ".tgi[0].ni[227].y" -1497.142822265625;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1294.2857666015625;
	setAttr ".tgi[0].ni[228].y" -3687.142822265625;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -2484.28564453125;
	setAttr ".tgi[0].ni[229].y" 3834.28564453125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" -2484.28564453125;
	setAttr ".tgi[0].ni[230].y" 4544.28564453125;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -2484.28564453125;
	setAttr ".tgi[0].ni[231].y" 4442.85693359375;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -2484.28564453125;
	setAttr ".tgi[0].ni[232].y" 4341.4287109375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" -2484.28564453125;
	setAttr ".tgi[0].ni[233].y" 4240;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -2484.28564453125;
	setAttr ".tgi[0].ni[234].y" 4037.142822265625;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" -2484.28564453125;
	setAttr ".tgi[0].ni[235].y" 3935.71435546875;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" -2484.28564453125;
	setAttr ".tgi[0].ni[236].y" 3732.857177734375;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -2484.28564453125;
	setAttr ".tgi[0].ni[237].y" 3631.428466796875;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 2147.142822265625;
	setAttr ".tgi[0].ni[238].y" -4525.71435546875;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 2147.142822265625;
	setAttr ".tgi[0].ni[239].y" -4374.28564453125;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 2218.571533203125;
	setAttr ".tgi[0].ni[240].y" -2492.857177734375;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2147.142822265625;
	setAttr ".tgi[0].ni[241].y" -4222.85693359375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" -1562.857177734375;
	setAttr ".tgi[0].ni[242].y" 4110;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[243].y" 3575.71435546875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[244].y" -2762.857177734375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[245].y" -464.28570556640625;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[246].y" -2885.71435546875;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 2147.142822265625;
	setAttr ".tgi[0].ni[247].y" -4071.428466796875;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" -1562.857177734375;
	setAttr ".tgi[0].ni[248].y" 3437.142822265625;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 2218.571533203125;
	setAttr ".tgi[0].ni[249].y" -2615.71435546875;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[250].y" -3065.71435546875;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 2147.142822265625;
	setAttr ".tgi[0].ni[251].y" -3920;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 2218.571533203125;
	setAttr ".tgi[0].ni[252].y" -2738.571533203125;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 2147.142822265625;
	setAttr ".tgi[0].ni[253].y" -3768.571533203125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 2147.142822265625;
	setAttr ".tgi[0].ni[254].y" -3617.142822265625;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 2147.142822265625;
	setAttr ".tgi[0].ni[255].y" -3465.71435546875;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 2218.571533203125;
	setAttr ".tgi[0].ni[256].y" -2885.71435546875;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 2147.142822265625;
	setAttr ".tgi[0].ni[257].y" -3314.28564453125;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 2218.571533203125;
	setAttr ".tgi[0].ni[258].y" -3310;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 2147.142822265625;
	setAttr ".tgi[0].ni[259].y" -3162.857177734375;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 2147.142822265625;
	setAttr ".tgi[0].ni[260].y" -3011.428466796875;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 1908.5714111328125;
	setAttr ".tgi[0].ni[261].y" -3188.571533203125;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 2147.142822265625;
	setAttr ".tgi[0].ni[262].y" -2860;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 1601.4285888671875;
	setAttr ".tgi[0].ni[263].y" 724.28570556640625;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" -1255.7142333984375;
	setAttr ".tgi[0].ni[264].y" 3272.857177734375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 2147.142822265625;
	setAttr ".tgi[0].ni[265].y" -9825.7138671875;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 647.14288330078125;
	setAttr ".tgi[0].ni[266].y" -3250;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" -948.5714111328125;
	setAttr ".tgi[0].ni[267].y" 2421.428466796875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" -292.85714721679688;
	setAttr ".tgi[0].ni[268].y" -127.14286041259766;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -600;
	setAttr ".tgi[0].ni[269].y" 1264.2857666015625;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 32.857143402099609;
	setAttr ".tgi[0].ni[270].y" -1485.7142333984375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 340;
	setAttr ".tgi[0].ni[271].y" -2074.28564453125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 647.14288330078125;
	setAttr ".tgi[0].ni[272].y" -3070;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 2218.571533203125;
	setAttr ".tgi[0].ni[273].y" -3581.428466796875;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 32.857143402099609;
	setAttr ".tgi[0].ni[274].y" -1154.2857666015625;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 647.14288330078125;
	setAttr ".tgi[0].ni[275].y" -3430;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 2218.571533203125;
	setAttr ".tgi[0].ni[276].y" -3704.28564453125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 2218.571533203125;
	setAttr ".tgi[0].ni[277].y" -4310;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" -292.85714721679688;
	setAttr ".tgi[0].ni[278].y" 184.28572082519531;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 340;
	setAttr ".tgi[0].ni[279].y" -2548.571533203125;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" -2484.28564453125;
	setAttr ".tgi[0].ni[280].y" 4138.5712890625;
	setAttr ".tgi[0].ni[280].nvs" 18304;
select -ne :time1;
	setAttr ".o" 51;
	setAttr ".unw" 51;
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
connectAttr "Player_rigRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Player_rigRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Player_rigRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Player_rigRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Player_rigRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Player_rigRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Player_rigRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Player_rigRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Player_rigRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Player_rigRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Player_rigRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "Player_rigRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Player_rigRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Player_rigRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Player_rigRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Player_rigRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Player_rigRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Player_rigRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Player_rigRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Player_rigRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Player_rigRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Player_rigRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Player_rigRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Player_rigRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Player_rigRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Player_rigRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Player_rigRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Player_rigRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Player_rigRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Player_rigRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Player_rigRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Player_rigRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Player_rigRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Player_rigRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Player_rigRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Player_rigRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Player_rigRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Player_rigRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Player_rigRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Player_rigRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Player_rigRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Player_rigRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Player_rigRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Player_rigRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Player_rigRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Player_rigRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Player_rigRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Player_rigRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Player_rigRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Player_rigRN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Player_rigRN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Player_rigRN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Player_rigRN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "CTRL_ship_translateX.o" "Player_rigRN.phl[67]";
connectAttr "CTRL_ship_translateY.o" "Player_rigRN.phl[68]";
connectAttr "CTRL_ship_translateZ.o" "Player_rigRN.phl[69]";
connectAttr "CTRL_ship_rotateX.o" "Player_rigRN.phl[70]";
connectAttr "CTRL_ship_rotateY.o" "Player_rigRN.phl[71]";
connectAttr "CTRL_ship_rotateZ.o" "Player_rigRN.phl[72]";
connectAttr "CTRL_ship_scaleX.o" "Player_rigRN.phl[73]";
connectAttr "CTRL_ship_scaleY.o" "Player_rigRN.phl[74]";
connectAttr "CTRL_ship_scaleZ.o" "Player_rigRN.phl[75]";
connectAttr "Player_rigRN.phl[76]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "CTRL_ship_visibility.o" "Player_rigRN.phl[77]";
connectAttr "Player_rigRN.phl[78]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Player_rigRN.phl[79]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Player_rigRN.phl[80]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Player_rigRN.phl[81]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Player_rigRN.phl[82]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Player_rigRN.phl[83]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Player_rigRN.phl[84]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Player_rigRN.phl[85]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Player_rigRN.phl[86]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Player_rigRN.phl[87]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Player_rigRN.phl[88]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Player_rigRN.phl[89]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Player_rigRN.phl[90]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Player_rigRN.phl[91]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Player_rigRN.phl[92]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Player_rigRN.phl[93]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Player_rigRN.phl[94]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Player_rigRN.phl[95]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Player_rigRN.phl[96]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Player_rigRN.phl[97]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Player_rigRN.phl[98]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Player_rigRN.phl[99]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Player_rigRN.phl[100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Player_rigRN.phl[101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Player_rigRN.phl[102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Player_rigRN.phl[103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Player_rigRN.phl[104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Player_rigRN.phl[105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Player_rigRN.phl[106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Player_rigRN.phl[107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Player_rigRN.phl[108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Player_rigRN.phl[109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Player_rigRN.phl[110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Player_rigRN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Player_rigRN.phl[112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Player_rigRN.phl[113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Player_rigRN.phl[114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Player_rigRN.phl[115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Player_rigRN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Player_rigRN.phl[117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Player_rigRN.phl[118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Player_rigRN.phl[119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Player_rigRN.phl[120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Player_rigRN.phl[121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Player_rigRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Player_rigRN.phl[123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Player_rigRN.phl[124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Player_rigRN.phl[125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Player_rigRN.phl[126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Player_rigRN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Player_rigRN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Player_rigRN.phl[129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Player_rigRN.phl[130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Player_rigRN.phl[131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Player_rigRN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Player_rigRN.phl[133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Player_rigRN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Player_rigRN.phl[135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Player_rigRN.phl[136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Player_rigRN.phl[137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Player_rigRN.phl[138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Player_rigRN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Player_rigRN.phl[140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Player_rigRN.phl[141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Player_rigRN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Player_rigRN.phl[143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Player_rigRN.phl[144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Player_rigRN.phl[145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Player_rigRN.phl[146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Player_rigRN.phl[147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Player_rigRN.phl[148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Player_rigRN.phl[149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Player_rigRN.phl[150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Player_rigRN.phl[151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Player_rigRN.phl[152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Player_rigRN.phl[153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Player_rigRN.phl[154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Player_rigRN.phl[155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Player_rigRN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Player_rigRN.phl[157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Player_rigRN.phl[158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Player_rigRN.phl[159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Player_rigRN.phl[160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Player_rigRN.phl[161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Player_rigRN.phl[162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Player_rigRN.phl[163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Player_rigRN.phl[164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Player_rigRN.phl[165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Player_rigRN.phl[166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Player_rigRN.phl[167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Player_rigRN.phl[168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Player_rigRN.phl[169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Player_rigRN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Player_rigRN.phl[171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Player_rigRN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Player_rigRN.phl[173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Player_rigRN.phl[174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Player_rigRN.phl[175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Player_rigRN.phl[176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Player_rigRN.phl[177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Player_rigRN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Player_rigRN.phl[179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Player_rigRN.phl[180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Player_rigRN.phl[181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Player_rigRN.phl[182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Player_rigRN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Player_rigRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Player_rigRN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Player_rigRN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Player_rigRN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Player_rigRN.phl[188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Player_rigRN.phl[189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Player_rigRN.phl[190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Player_rigRN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Player_rigRN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Player_rigRN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Player_rigRN.phl[194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Player_rigRN.phl[195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Player_rigRN.phl[196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Player_rigRN.phl[197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Player_rigRN.phl[198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Player_rigRN.phl[199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Player_rigRN.phl[200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Player_rigRN.phl[201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Player_rigRN.phl[202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Player_rigRN.phl[203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Player_rigRN.phl[204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Player_rigRN.phl[205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Player_rigRN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Player_rigRN.phl[207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Player_rigRN.phl[208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Player_rigRN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Player_rigRN.phl[210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Player_rigRN.phl[211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Player_rigRN.phl[212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Player_rigRN.phl[213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Player_rigRN.phl[214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Player_rigRN.phl[215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Player_rigRN.phl[216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Player_rigRN.phl[217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Player_rigRN.phl[218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Player_rigRN.phl[219]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Player_rigRN.phl[220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Player_rigRN.phl[221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Player_rigRN.phl[222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Player_rigRN.phl[223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Player_rigRN.phl[224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Player_rigRN.phl[225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Player_rigRN.phl[226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Player_rigRN.phl[227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Player_rigRN.phl[228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Player_rigRN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Player_rigRN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Player_rigRN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Player_rigRN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Player_rigRN.phl[233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Player_rigRN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Player_rigRN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Player_rigRN.phl[236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Player_rigRN.phl[237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Player_rigRN.phl[238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Player_rigRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Player_rigRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Player_rigRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Player_rigRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Player_rigRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Player_rigRN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Player_rigRN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Player_rigRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Player_rigRN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Player_rigRN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Player_rigRN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Player_rigRN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Player_rigRN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Player_rigRN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Player_rigRN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Player_rigRN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Player_rigRN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Player_rigRN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Player_rigRN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Player_rigRN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Player_rigRN.phl[259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Player_rigRN.phl[260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Player_rigRN.phl[261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Player_rigRN.phl[262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Player_rigRN.phl[263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Player_rigRN.phl[264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Player_rigRN.phl[265]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Player_rigRN.phl[266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Player_rigRN.phl[267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Player_rigRN.phl[268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Player_rigRN.phl[269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Player_rigRN.phl[270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Player_rigRN.phl[271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Player_rigRN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Player_rigRN.phl[273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Player_rigRN.phl[274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Player_rigRN.phl[275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Player_rigRN.phl[276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Player_rigRN.phl[277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Player_rigRN.phl[278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Player_rigRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Player_rigRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Player_rigRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Player_rigRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Player_rigRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Player_rigRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Player_rigRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Player_rigRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Player_rigRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Player_rigRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Player_rigRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Player_rigRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Player_rigRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
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
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "animBot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "CTRL_ship_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "CTRL_ship_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "CTRL_ship_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "CTRL_ship_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "CTRL_ship_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "CTRL_ship_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "CTRL_ship_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "CTRL_ship_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "CTRL_ship_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Player_rigRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "CTRL_ship_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Player_IdleAnimation.ma

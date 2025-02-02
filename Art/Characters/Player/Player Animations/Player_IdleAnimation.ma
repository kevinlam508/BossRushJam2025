//Maya ASCII 2023 scene
//Name: Player_IdleAnimation.ma
//Last modified: Sat, Feb 01, 2025 07:15:35 PM
//Codeset: 1252
file -rdi 1 -ns "Player_rig" -rfn "Player_rigRN" -op "v=0;" -typ "mayaAscii"
		 "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.ma";
file -rdi 2 -ns ":" -rfn "Player_modelRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:05 PM|ICON|undef|INFO|undef|OBJN|26|INCL|/Characters/Player/SK_Orion.fbx(/Characters/Player/SK_Saucer.fbx(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaAscii" "/Characters/Player/Player_model.ma";
file -rdi 3 -ns ":" -rfn "SK_OrionRN" -op "fbx" -typ "FBX export" "/Characters/Player/SK_Orion.fbx";
file -rdi 3 -ns ":" -rfn "SK_SaucerRN" -op "fbx" -typ "FBX export" "/Characters/Player/SK_Saucer.fbx";
file -r -ns "Player_rig" -dr 1 -rfn "Player_rigRN" -op "v=0;" -typ "mayaAscii" "C:/EMG_GameProjects/BossRushJam2025/Art/Characters/Player/Player_rig.ma";
requires maya "2023";
requires "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "7DED9E3D-4419-759A-175C-269F502243E8";
createNode transform -s -n "persp";
	rename -uid "C3C39CAC-46F4-B028-9CAE-838964A2CE99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1175.0914974379059 1012.1468865276296 -622.28584738977827 ;
	setAttr ".r" -type "double3" -36.938352729591905 -242.60000000000878 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "300697F1-4CBB-B64F-946D-14AA2452A453";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1738.4867990428284;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0050395080431115957 1.3679506818497158 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "65B92404-4EE5-C3E1-A79A-18AD8A7ADA2F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7C1E9F63-4BCA-835F-5E91-5080AFDA1C41";
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
	rename -uid "ED45A4D5-4108-DA0E-6217-0F82330FE465";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5A49435F-4774-447B-E446-9E934999DB31";
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
	rename -uid "082EDC97-4089-BBBA-7D82-A88F4786BA9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1F52C234-4B04-8F20-C18E-8B9D1DDC4A12";
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
	rename -uid "F39AFDA4-4591-5A4C-CA96-41A1AF2F5179";
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
	rename -uid "F00996A9-47E1-881E-AABB-BB9F3A3B44BD";
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
	setAttr ".sceneID" -type "string" "1738447730.105003";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5876D115-45BD-9824-2002-749634E66DDA";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "71BA716A-4127-DAAF-B2EC-B78D10917F16";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "54DB9FA1-425D-0BED-D5F7-C39678C645B5";
createNode displayLayerManager -n "layerManager";
	rename -uid "8E02D072-4F48-7D72-4FC9-1EA5EED433B4";
createNode displayLayer -n "defaultLayer";
	rename -uid "86C5263B-47D4-3428-A875-7CA84936EE5C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "08A37032-4D97-5C75-54B6-6FAEB5483AE3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AF832055-4922-2C82-4C3A-8DBD2E555636";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "8EA8B448-4499-C63B-9239-628CD78858B1";
	setAttr ".ihi" 0;
createNode reference -n "Player_rigRN";
	rename -uid "31B59907-4253-6045-9653-CA92A05A824F";
	setAttr -s 739 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Player_rigRN"
		"Player_rig:SK_OrionRN" 0
		"Player_rig:SK_SaucerRN" 0
		"Player_rigRN" 0
		"Player_rig:Player_modelRN" 0
		"SK_SaucerRN" 5
		2 "|model|Saucer" "visibility" " 1"
		5 3 "Player_rigRN" "|model|Saucer.message" "Player_rigRN.placeHolderList[5]" 
		""
		5 3 "Player_rigRN" "|model|Saucer|SaucerShape.message" "Player_rigRN.placeHolderList[6]" 
		""
		5 3 "Player_rigRN" "MT_Saucer1.message" "Player_rigRN.placeHolderList[7]" 
		""
		5 3 "Player_rigRN" "SaucerSG1.message" "Player_rigRN.placeHolderList[8]" 
		""
		"Player_rigRN" 763
		2 "|rig_controls|CTRL_ship" "rotateOrder" " 0"
		2 "|rig_controls|CTRL_root" "rotateOrder" " 0"
		2 "|rig_controls|CTRL_root|CTRL_cog" "rotateOrder" " 0"
		2 "|rig_controls|CTRL_root|CTRL_cog" "IKFK_Switch" " -k 1"
		2 "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK" "rotateOrder" " 0"
		2 "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK" "IKFK_Switch" " -k 1"
		2 "|rig_controls|leg_r_grp|CTRL_leg_r_pole" "rotateOrder" " 0"
		2 "|rig_controls|leg_r_grp|CTRL_foot_r_IK" "rotateOrder" " 0"
		2 "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK" "rotateOrder" " 0"
		2 "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK" "IKFK_Switch" " -k 1"
		2 "|rig_controls|leg_l_grp|CTRL_foot_l_IK" "rotateOrder" " 0"
		2 "|rig_controls|leg_l_grp|CTRL_leg_l_pole" "rotateOrder" " 0"
		2 "|rig_controls|arm_r_grp|CTRL_shoulder_r" "rotateOrder" " 0"
		2 "|rig_controls|arm_r_grp|CTRL_arm_r_ik" "rotateOrder" " 0"
		2 "|rig_controls|arm_r_grp|CTRL_arm_r_pole" "rotateOrder" " 0"
		2 "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK" "rotateOrder" " 0"
		2 "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK" "IKFK_Switch" " -k 1"
		2 "|rig_controls|arm_l_grp|CTRL_shoulder_l" "rotateOrder" " 0"
		2 "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK" "rotateOrder" " 0"
		2 "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK" "IKFK_Switch" " -k 1"
		2 "|rig_controls|arm_l_grp|CTRL_arm_l_ik" "rotateOrder" " 0"
		2 "|rig_controls|arm_l_grp|CTRL_arm_l_pole" "rotateOrder" " 0"
		2 "|rig_controls|head_grp|CTRL_head" "rotateOrder" " 0"
		2 "|rig_controls|head_grp|CTRL_head" "Orient" " -k 1"
		2 "|rig_controls|torso_grp|CTRL_pelvis_IK" "rotateOrder" " 0"
		2 "|rig_controls|torso_grp|CTRL_spine_IK" "rotateOrder" " 0"
		2 "|rig_controls|torso_grp|CTRL_chest_IK" "rotateOrder" " 0"
		2 "|rig_controls|torso_grp|ikHandle_spine" "rotate" " -type \"double3\" -0.00023975770717507154 -0.53729906304303976 89.99999459158118498"
		
		2 "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK" "translate" " -type \"double3\" 18.48858783137302808 7.4355470599832002e-06 42.73260056488189917"
		
		2 "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK" "rotate" " -type \"double3\" -1.6001881106067459e-05 31.18262207958505883 -6.1478853730101663e-06"
		
		2 "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK" "rotate" " -type \"double3\" 40.13630257272163959 -54.25976515788929788 -22.9070017612795489"
		
		2 "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK|lowerarm_l_IK" "rotate" 
		" -type \"double3\" 6.4330423728479156e-06 -55.73112742501982098 -0.71807552816185749"
		
		2 "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK" "rotate" " -type \"double3\" 60.00036729649563227 -62.1643413335408539 -50.51909472322216033"
		
		2 "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK|lowerarm_r_IK" "rotate" 
		" -type \"double3\" 0.0015300046320495303 5.20465500996172548 0.035595318262913817"
		
		2 "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK" "rotate" " -type \"double3\" 17.44219544424842638 -5.22761770716384166 13.90571204828221674"
		
		2 "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK|calf_l_IK" "rotate" " -type \"double3\" 44.91915101063590754 2.616732180768198e-06 -7.3577929869338095e-05"
		
		2 "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK" "rotate" " -type \"double3\" 17.97409443879218216 7.10893727570435541 -16.22370156096870986"
		
		2 "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK|calf_r_IK" "rotate" " -type \"double3\" 43.08080458980211347 0 0"
		
		2 "geo" "visibility" " 0"
		3 "reverse4.outputX" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.visibility" 
		""
		3 "reverse1.outputX" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.visibility" 
		""
		3 "reverse2.outputX" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.visibility" ""
		
		3 "reverse4.outputX" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.visibility" ""
		
		3 "reverse2.outputX" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.visibility" 
		""
		3 "reverse5.outputX" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.visibility" 
		""
		5 3 "Player_rigRN" "|skeleton.message" "Player_rigRN.placeHolderList[22]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player.message" "Player_rigRN.placeHolderList[23]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis.message" "Player_rigRN.placeHolderList[24]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine.message" "Player_rigRN.placeHolderList[25]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest.message" 
		"Player_rigRN.placeHolderList[26]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|head.message" 
		"Player_rigRN.placeHolderList[27]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|head|nose.message" 
		"Player_rigRN.placeHolderList[28]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|head|nose|nose_tip.message" 
		"Player_rigRN.placeHolderList[29]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|head|head_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[30]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l.message" 
		"Player_rigRN.placeHolderList[31]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l|lowerarm_l.message" 
		"Player_rigRN.placeHolderList[32]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l|lowerarm_l|hand_l.message" 
		"Player_rigRN.placeHolderList[33]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l|lowerarm_l|hand_l|hand_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[34]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l|lowerarm_l|lowerarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[35]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_l|upperarm_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[36]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r.message" 
		"Player_rigRN.placeHolderList[37]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r|lowerarm_r.message" 
		"Player_rigRN.placeHolderList[38]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r|lowerarm_r|hand_r.message" 
		"Player_rigRN.placeHolderList[39]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r|lowerarm_r|hand_r|hand_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[40]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r|lowerarm_r|lowerarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[41]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|upperarm_r|upperarm_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[42]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|chest|chest_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[43]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|spine|spine_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[44]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l.message" "Player_rigRN.placeHolderList[45]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l|calf_l.message" 
		"Player_rigRN.placeHolderList[46]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l|calf_l|foot_l.message" 
		"Player_rigRN.placeHolderList[47]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l|calf_l|foot_l|foot_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[48]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l|calf_l|calf_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[49]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_l|thigh_l_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[50]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r.message" "Player_rigRN.placeHolderList[51]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r|calf_r.message" 
		"Player_rigRN.placeHolderList[52]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r|calf_r|foot_r.message" 
		"Player_rigRN.placeHolderList[53]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r|calf_r|foot_r|foot_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[54]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r|calf_r|calf_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[55]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|thigh_r|thigh_r_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[56]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|pelvis|pelvis_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[57]" ""
		5 3 "Player_rigRN" "|skeleton|root_player|root_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[58]" ""
		5 3 "Player_rigRN" "|skeleton|root_ship.message" "Player_rigRN.placeHolderList[59]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_ship|ship.message" "Player_rigRN.placeHolderList[60]" 
		""
		5 3 "Player_rigRN" "|skeleton|root_ship|root_parentConstraint2.message" 
		"Player_rigRN.placeHolderList[61]" ""
		5 3 "Player_rigRN" "|model.message" "Player_rigRN.placeHolderList[62]" 
		""
		5 3 "Player_rigRN" "|model|Orion_test.message" "Player_rigRN.placeHolderList[63]" 
		""
		5 3 "Player_rigRN" "|model|Orion_test|Orion_testShape.message" "Player_rigRN.placeHolderList[64]" 
		""
		5 3 "Player_rigRN" "|model|Orion_test|Orion_testShapeDeformed.message" 
		"Player_rigRN.placeHolderList[65]" ""
		5 3 "Player_rigRN" "|rig_controls.message" "Player_rigRN.placeHolderList[66]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateY" "Player_rigRN.placeHolderList[67]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateY" "Player_rigRN.placeHolderList[68]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateY" "Player_rigRN.placeHolderList[69]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateY" "Player_rigRN.placeHolderList[70]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.translateY" "Player_rigRN.placeHolderList[71]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateX" "Player_rigRN.placeHolderList[72]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateX" "Player_rigRN.placeHolderList[73]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateX" "Player_rigRN.placeHolderList[74]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateX" "Player_rigRN.placeHolderList[75]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.translateX" "Player_rigRN.placeHolderList[76]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateZ" "Player_rigRN.placeHolderList[77]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateZ" "Player_rigRN.placeHolderList[78]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateZ" "Player_rigRN.placeHolderList[79]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.translateZ" "Player_rigRN.placeHolderList[80]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.translateZ" "Player_rigRN.placeHolderList[81]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateX" "Player_rigRN.placeHolderList[82]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateX" "Player_rigRN.placeHolderList[83]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateX" "Player_rigRN.placeHolderList[84]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateX" "Player_rigRN.placeHolderList[85]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.rotateX" "Player_rigRN.placeHolderList[86]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateY" "Player_rigRN.placeHolderList[87]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateY" "Player_rigRN.placeHolderList[88]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateY" "Player_rigRN.placeHolderList[89]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateY" "Player_rigRN.placeHolderList[90]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.rotateY" "Player_rigRN.placeHolderList[91]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateZ" "Player_rigRN.placeHolderList[92]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateZ" "Player_rigRN.placeHolderList[93]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateZ" "Player_rigRN.placeHolderList[94]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateZ" "Player_rigRN.placeHolderList[95]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.rotateZ" "Player_rigRN.placeHolderList[96]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateOrder" "Player_rigRN.placeHolderList[97]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateOrder" "Player_rigRN.placeHolderList[98]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateOrder" "Player_rigRN.placeHolderList[99]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.rotateOrder" "Player_rigRN.placeHolderList[100]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleX" "Player_rigRN.placeHolderList[101]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleX" "Player_rigRN.placeHolderList[102]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleX" "Player_rigRN.placeHolderList[103]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleX" "Player_rigRN.placeHolderList[104]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.scaleX" "Player_rigRN.placeHolderList[105]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleY" "Player_rigRN.placeHolderList[106]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleY" "Player_rigRN.placeHolderList[107]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleY" "Player_rigRN.placeHolderList[108]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleY" "Player_rigRN.placeHolderList[109]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.scaleY" "Player_rigRN.placeHolderList[110]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleZ" "Player_rigRN.placeHolderList[111]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleZ" "Player_rigRN.placeHolderList[112]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleZ" "Player_rigRN.placeHolderList[113]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.scaleZ" "Player_rigRN.placeHolderList[114]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.scaleZ" "Player_rigRN.placeHolderList[115]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.message" "Player_rigRN.placeHolderList[116]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.visibility" "Player_rigRN.placeHolderList[117]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.visibility" "Player_rigRN.placeHolderList[118]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.visibility" "Player_rigRN.placeHolderList[119]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship.visibility" "Player_rigRN.placeHolderList[120]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_ship.visibility" "Player_rigRN.placeHolderList[121]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_ship|CTRL_shipShape.message" 
		"Player_rigRN.placeHolderList[122]" ""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.translateX" "Player_rigRN.placeHolderList[123]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.translateY" "Player_rigRN.placeHolderList[124]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.translateZ" "Player_rigRN.placeHolderList[125]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.rotateX" "Player_rigRN.placeHolderList[126]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.rotateY" "Player_rigRN.placeHolderList[127]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.rotateZ" "Player_rigRN.placeHolderList[128]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.scaleX" "Player_rigRN.placeHolderList[129]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.scaleY" "Player_rigRN.placeHolderList[130]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.scaleZ" "Player_rigRN.placeHolderList[131]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root.message" "Player_rigRN.placeHolderList[132]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root.visibility" "Player_rigRN.placeHolderList[133]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_rootShape.message" 
		"Player_rigRN.placeHolderList[134]" ""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.IKFK_Switch" "Player_rigRN.placeHolderList[135]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.IKFK_Switch" "Player_rigRN.placeHolderList[136]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.IKFK_Switch" "Player_rigRN.placeHolderList[137]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.IKFK_Switch" "Player_rigRN.placeHolderList[138]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.message" "Player_rigRN.placeHolderList[139]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateX" "Player_rigRN.placeHolderList[140]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateX" "Player_rigRN.placeHolderList[141]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateX" "Player_rigRN.placeHolderList[142]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateX" "Player_rigRN.placeHolderList[143]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateY" "Player_rigRN.placeHolderList[144]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateY" "Player_rigRN.placeHolderList[145]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateY" "Player_rigRN.placeHolderList[146]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateY" "Player_rigRN.placeHolderList[147]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateZ" "Player_rigRN.placeHolderList[148]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateZ" "Player_rigRN.placeHolderList[149]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateZ" "Player_rigRN.placeHolderList[150]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateZ" "Player_rigRN.placeHolderList[151]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateOrder" "Player_rigRN.placeHolderList[152]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateOrder" "Player_rigRN.placeHolderList[153]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.rotateOrder" "Player_rigRN.placeHolderList[154]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleX" "Player_rigRN.placeHolderList[155]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleX" "Player_rigRN.placeHolderList[156]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleX" "Player_rigRN.placeHolderList[157]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleX" "Player_rigRN.placeHolderList[158]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleY" "Player_rigRN.placeHolderList[159]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleY" "Player_rigRN.placeHolderList[160]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleY" "Player_rigRN.placeHolderList[161]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleY" "Player_rigRN.placeHolderList[162]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleZ" "Player_rigRN.placeHolderList[163]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleZ" "Player_rigRN.placeHolderList[164]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleZ" "Player_rigRN.placeHolderList[165]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.scaleZ" "Player_rigRN.placeHolderList[166]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateX" "Player_rigRN.placeHolderList[167]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateX" "Player_rigRN.placeHolderList[168]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateX" "Player_rigRN.placeHolderList[169]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateX" "Player_rigRN.placeHolderList[170]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateY" "Player_rigRN.placeHolderList[171]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateY" "Player_rigRN.placeHolderList[172]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateY" "Player_rigRN.placeHolderList[173]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateY" "Player_rigRN.placeHolderList[174]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateZ" "Player_rigRN.placeHolderList[175]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateZ" "Player_rigRN.placeHolderList[176]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateZ" "Player_rigRN.placeHolderList[177]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.translateZ" "Player_rigRN.placeHolderList[178]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.visibility" "Player_rigRN.placeHolderList[179]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.visibility" "Player_rigRN.placeHolderList[180]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.visibility" "Player_rigRN.placeHolderList[181]" 
		""
		5 4 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog.visibility" "Player_rigRN.placeHolderList[182]" 
		""
		5 3 "Player_rigRN" "|rig_controls|CTRL_root|CTRL_cog|CTRL_cogShape.message" 
		"Player_rigRN.placeHolderList[183]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp.message" "Player_rigRN.placeHolderList[184]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.IKFK_Switch" 
		"Player_rigRN.placeHolderList[185]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.message" 
		"Player_rigRN.placeHolderList[186]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.translateX" 
		"Player_rigRN.placeHolderList[187]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.translateY" 
		"Player_rigRN.placeHolderList[188]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.translateZ" 
		"Player_rigRN.placeHolderList[189]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK.visibility" 
		"Player_rigRN.placeHolderList[190]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_IKFK|CTRL_leg_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[191]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[192]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_thigh_r_FK|CTRL_thigh_r_FKShape.message" 
		"Player_rigRN.placeHolderList[193]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_thigh_r_FK|CTRL_calf_r_FK.message" 
		"Player_rigRN.placeHolderList[194]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_thigh_r_FK|CTRL_calf_r_FK|CTRL_calf_r_FKShape.message" 
		"Player_rigRN.placeHolderList[195]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.translateX" 
		"Player_rigRN.placeHolderList[196]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.translateY" 
		"Player_rigRN.placeHolderList[197]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[198]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.message" 
		"Player_rigRN.placeHolderList[199]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[200]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[201]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[202]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[203]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[204]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[205]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_leg_r_pole|CTRL_leg_r_poleShape.message" 
		"Player_rigRN.placeHolderList[206]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[207]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.visibility" 
		"Player_rigRN.placeHolderList[208]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.message" 
		"Player_rigRN.placeHolderList[209]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[210]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateX" 
		"Player_rigRN.placeHolderList[211]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[212]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateY" 
		"Player_rigRN.placeHolderList[213]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[214]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateZ" 
		"Player_rigRN.placeHolderList[215]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[216]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleX" "Player_rigRN.placeHolderList[217]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleX" "Player_rigRN.placeHolderList[218]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleY" "Player_rigRN.placeHolderList[219]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleY" "Player_rigRN.placeHolderList[220]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleZ" "Player_rigRN.placeHolderList[221]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.scaleZ" "Player_rigRN.placeHolderList[222]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[223]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateX" 
		"Player_rigRN.placeHolderList[224]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[225]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateY" 
		"Player_rigRN.placeHolderList[226]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[227]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK.translateZ" 
		"Player_rigRN.placeHolderList[228]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK|CTRL_foot_r_IKShape.message" 
		"Player_rigRN.placeHolderList[229]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK|ikHandle2_leg_r.message" 
		"Player_rigRN.placeHolderList[230]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_r_grp|CTRL_foot_r_IK|ikHandle2_leg_r|ikHandle2_leg_r_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[231]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp.message" "Player_rigRN.placeHolderList[232]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.IKFK_Switch" 
		"Player_rigRN.placeHolderList[233]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.message" 
		"Player_rigRN.placeHolderList[234]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.translateX" 
		"Player_rigRN.placeHolderList[235]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.translateY" 
		"Player_rigRN.placeHolderList[236]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.translateZ" 
		"Player_rigRN.placeHolderList[237]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK.visibility" 
		"Player_rigRN.placeHolderList[238]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_IKFK|CTRL_leg_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[239]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[240]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_thigh_l_FK|CTRL_thigh_l_FKShape.message" 
		"Player_rigRN.placeHolderList[241]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_thigh_l_FK|CTRL_calf_l_FK.message" 
		"Player_rigRN.placeHolderList[242]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_thigh_l_FK|CTRL_calf_l_FK|CTRL_calf_l_FKShape.message" 
		"Player_rigRN.placeHolderList[243]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[244]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.visibility" 
		"Player_rigRN.placeHolderList[245]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.message" 
		"Player_rigRN.placeHolderList[246]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[247]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateX" 
		"Player_rigRN.placeHolderList[248]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[249]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateY" 
		"Player_rigRN.placeHolderList[250]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[251]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateZ" 
		"Player_rigRN.placeHolderList[252]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[253]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleX" "Player_rigRN.placeHolderList[254]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleX" "Player_rigRN.placeHolderList[255]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleY" "Player_rigRN.placeHolderList[256]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleY" "Player_rigRN.placeHolderList[257]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleZ" "Player_rigRN.placeHolderList[258]" 
		""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.scaleZ" "Player_rigRN.placeHolderList[259]" 
		""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[260]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateX" 
		"Player_rigRN.placeHolderList[261]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[262]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateY" 
		"Player_rigRN.placeHolderList[263]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[264]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK.translateZ" 
		"Player_rigRN.placeHolderList[265]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK|CTRL_foot_l_IKShape.message" 
		"Player_rigRN.placeHolderList[266]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK|ikHandle5_leg_l.message" 
		"Player_rigRN.placeHolderList[267]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_foot_l_IK|ikHandle5_leg_l|ikHandle5_leg_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[268]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.translateX" 
		"Player_rigRN.placeHolderList[269]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.translateY" 
		"Player_rigRN.placeHolderList[270]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[271]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.message" 
		"Player_rigRN.placeHolderList[272]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[273]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[274]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[275]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[276]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[277]" ""
		5 4 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[278]" ""
		5 3 "Player_rigRN" "|rig_controls|leg_l_grp|CTRL_leg_l_pole|CTRL_leg_l_poleShape.message" 
		"Player_rigRN.placeHolderList[279]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp.message" "Player_rigRN.placeHolderList[280]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.message" 
		"Player_rigRN.placeHolderList[281]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.rotateX" 
		"Player_rigRN.placeHolderList[282]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.rotateY" 
		"Player_rigRN.placeHolderList[283]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.rotateZ" 
		"Player_rigRN.placeHolderList[284]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.scaleX" 
		"Player_rigRN.placeHolderList[285]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.scaleY" 
		"Player_rigRN.placeHolderList[286]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.scaleZ" 
		"Player_rigRN.placeHolderList[287]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.translateX" 
		"Player_rigRN.placeHolderList[288]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.translateY" 
		"Player_rigRN.placeHolderList[289]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.translateZ" 
		"Player_rigRN.placeHolderList[290]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r.visibility" 
		"Player_rigRN.placeHolderList[291]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_shoulder_r|CTRL_shoulder_rShape.message" 
		"Player_rigRN.placeHolderList[292]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[293]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK|CTRL_upperarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[294]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK|CTRL_lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[295]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK|CTRL_lowerarm_r_FK|CTRL_lowerarm_r_FKShape.message" 
		"Player_rigRN.placeHolderList[296]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK|CTRL_lowerarm_r_FK|CTRL_hand_r_FK.message" 
		"Player_rigRN.placeHolderList[297]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_upperarm_r_FK|CTRL_lowerarm_r_FK|CTRL_hand_r_FK|CTRL_hand_r_FKShape.message" 
		"Player_rigRN.placeHolderList[298]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[299]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[300]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.visibility" 
		"Player_rigRN.placeHolderList[301]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateX" "Player_rigRN.placeHolderList[302]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateX" "Player_rigRN.placeHolderList[303]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateX" "Player_rigRN.placeHolderList[304]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateY" "Player_rigRN.placeHolderList[305]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateY" "Player_rigRN.placeHolderList[306]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateY" "Player_rigRN.placeHolderList[307]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateZ" "Player_rigRN.placeHolderList[308]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateZ" "Player_rigRN.placeHolderList[309]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateZ" "Player_rigRN.placeHolderList[310]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[311]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[312]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.message" "Player_rigRN.placeHolderList[313]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleX" "Player_rigRN.placeHolderList[314]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleX" "Player_rigRN.placeHolderList[315]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleX" "Player_rigRN.placeHolderList[316]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleY" "Player_rigRN.placeHolderList[317]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleY" "Player_rigRN.placeHolderList[318]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleY" "Player_rigRN.placeHolderList[319]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleZ" "Player_rigRN.placeHolderList[320]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleZ" "Player_rigRN.placeHolderList[321]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.scaleZ" "Player_rigRN.placeHolderList[322]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[323]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[324]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateX" 
		"Player_rigRN.placeHolderList[325]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[326]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[327]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateY" 
		"Player_rigRN.placeHolderList[328]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[329]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[330]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik.translateZ" 
		"Player_rigRN.placeHolderList[331]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik|CTRL_arm_r_ikShape.message" 
		"Player_rigRN.placeHolderList[332]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik|ikHandle3_arm_r.message" 
		"Player_rigRN.placeHolderList[333]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_ik|ikHandle3_arm_r|ikHandle3_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[334]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[335]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateX" 
		"Player_rigRN.placeHolderList[336]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[337]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateY" 
		"Player_rigRN.placeHolderList[338]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[339]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.translateZ" 
		"Player_rigRN.placeHolderList[340]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[341]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.visibility" 
		"Player_rigRN.placeHolderList[342]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.message" 
		"Player_rigRN.placeHolderList[343]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[344]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateX" 
		"Player_rigRN.placeHolderList[345]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[346]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateY" 
		"Player_rigRN.placeHolderList[347]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[348]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateZ" 
		"Player_rigRN.placeHolderList[349]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[350]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[351]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleX" 
		"Player_rigRN.placeHolderList[352]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[353]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleY" 
		"Player_rigRN.placeHolderList[354]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[355]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole.scaleZ" 
		"Player_rigRN.placeHolderList[356]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_pole|CTRL_arm_r_poleShape.message" 
		"Player_rigRN.placeHolderList[357]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.IKFK_Switch" 
		"Player_rigRN.placeHolderList[358]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.message" 
		"Player_rigRN.placeHolderList[359]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.scaleX" 
		"Player_rigRN.placeHolderList[360]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.scaleY" 
		"Player_rigRN.placeHolderList[361]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.scaleZ" 
		"Player_rigRN.placeHolderList[362]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.translateX" 
		"Player_rigRN.placeHolderList[363]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.translateY" 
		"Player_rigRN.placeHolderList[364]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.translateZ" 
		"Player_rigRN.placeHolderList[365]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK.visibility" 
		"Player_rigRN.placeHolderList[366]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_r_grp|CTRL_arm_r_IKFK|CTRL_arm_r_IKFKShape.message" 
		"Player_rigRN.placeHolderList[367]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp.message" "Player_rigRN.placeHolderList[368]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.message" 
		"Player_rigRN.placeHolderList[369]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.rotateX" 
		"Player_rigRN.placeHolderList[370]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.rotateY" 
		"Player_rigRN.placeHolderList[371]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.rotateZ" 
		"Player_rigRN.placeHolderList[372]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.scaleX" 
		"Player_rigRN.placeHolderList[373]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.scaleY" 
		"Player_rigRN.placeHolderList[374]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.scaleZ" 
		"Player_rigRN.placeHolderList[375]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.translateX" 
		"Player_rigRN.placeHolderList[376]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.translateY" 
		"Player_rigRN.placeHolderList[377]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.translateZ" 
		"Player_rigRN.placeHolderList[378]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l.visibility" 
		"Player_rigRN.placeHolderList[379]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_shoulder_l|CTRL_shoulder_lShape.message" 
		"Player_rigRN.placeHolderList[380]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.IKFK_Switch" 
		"Player_rigRN.placeHolderList[381]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.message" 
		"Player_rigRN.placeHolderList[382]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.scaleX" 
		"Player_rigRN.placeHolderList[383]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.scaleY" 
		"Player_rigRN.placeHolderList[384]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.scaleZ" 
		"Player_rigRN.placeHolderList[385]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.translateX" 
		"Player_rigRN.placeHolderList[386]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.translateY" 
		"Player_rigRN.placeHolderList[387]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.translateZ" 
		"Player_rigRN.placeHolderList[388]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK.visibility" 
		"Player_rigRN.placeHolderList[389]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_IKFK|CTRL_arm_l_IKFKShape.message" 
		"Player_rigRN.placeHolderList[390]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[391]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK|CTRL_upperarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[392]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK|CTRL_lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[393]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK|CTRL_lowerarm_l_FK|CTRL_lowerarm_l_FKShape.message" 
		"Player_rigRN.placeHolderList[394]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK|CTRL_lowerarm_l_FK|CTRL_hand_l_FK.message" 
		"Player_rigRN.placeHolderList[395]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_upperarm_l_FK|CTRL_lowerarm_l_FK|CTRL_hand_l_FK|CTRL_hand_l_FKShape.message" 
		"Player_rigRN.placeHolderList[396]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[397]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[398]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[399]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.visibility" 
		"Player_rigRN.placeHolderList[400]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateX" "Player_rigRN.placeHolderList[401]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateX" "Player_rigRN.placeHolderList[402]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateX" "Player_rigRN.placeHolderList[403]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateX" "Player_rigRN.placeHolderList[404]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateY" "Player_rigRN.placeHolderList[405]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateY" "Player_rigRN.placeHolderList[406]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateY" "Player_rigRN.placeHolderList[407]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateY" "Player_rigRN.placeHolderList[408]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateZ" "Player_rigRN.placeHolderList[409]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateZ" "Player_rigRN.placeHolderList[410]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateZ" "Player_rigRN.placeHolderList[411]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateZ" "Player_rigRN.placeHolderList[412]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[413]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[414]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.rotateOrder" 
		"Player_rigRN.placeHolderList[415]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.message" "Player_rigRN.placeHolderList[416]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleX" "Player_rigRN.placeHolderList[417]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleX" "Player_rigRN.placeHolderList[418]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleX" "Player_rigRN.placeHolderList[419]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleX" "Player_rigRN.placeHolderList[420]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleY" "Player_rigRN.placeHolderList[421]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleY" "Player_rigRN.placeHolderList[422]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleY" "Player_rigRN.placeHolderList[423]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleY" "Player_rigRN.placeHolderList[424]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleZ" "Player_rigRN.placeHolderList[425]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleZ" "Player_rigRN.placeHolderList[426]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleZ" "Player_rigRN.placeHolderList[427]" 
		""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.scaleZ" "Player_rigRN.placeHolderList[428]" 
		""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[429]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[430]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[431]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateX" 
		"Player_rigRN.placeHolderList[432]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[433]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[434]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[435]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateY" 
		"Player_rigRN.placeHolderList[436]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[437]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[438]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[439]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik.translateZ" 
		"Player_rigRN.placeHolderList[440]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik|CTRL_arm_l_ikShape.message" 
		"Player_rigRN.placeHolderList[441]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik|ikHandle4_arm_l.message" 
		"Player_rigRN.placeHolderList[442]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_ik|ikHandle4_arm_l|ikHandle4_arm_l_poleVectorConstraint1.message" 
		"Player_rigRN.placeHolderList[443]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[444]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateX" 
		"Player_rigRN.placeHolderList[445]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[446]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateY" 
		"Player_rigRN.placeHolderList[447]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[448]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.translateZ" 
		"Player_rigRN.placeHolderList[449]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[450]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.visibility" 
		"Player_rigRN.placeHolderList[451]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.message" 
		"Player_rigRN.placeHolderList[452]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[453]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateX" 
		"Player_rigRN.placeHolderList[454]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[455]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateY" 
		"Player_rigRN.placeHolderList[456]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[457]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateZ" 
		"Player_rigRN.placeHolderList[458]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.rotateOrder" 
		"Player_rigRN.placeHolderList[459]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[460]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleX" 
		"Player_rigRN.placeHolderList[461]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[462]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleY" 
		"Player_rigRN.placeHolderList[463]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[464]" ""
		5 4 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole.scaleZ" 
		"Player_rigRN.placeHolderList[465]" ""
		5 3 "Player_rigRN" "|rig_controls|arm_l_grp|CTRL_arm_l_pole|CTRL_arm_l_poleShape.message" 
		"Player_rigRN.placeHolderList[466]" ""
		5 3 "Player_rigRN" "|rig_controls|head_grp.message" "Player_rigRN.placeHolderList[467]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.Orient" "Player_rigRN.placeHolderList[468]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.Orient" "Player_rigRN.placeHolderList[469]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.Orient" "Player_rigRN.placeHolderList[470]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.Orient" "Player_rigRN.placeHolderList[471]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateX" "Player_rigRN.placeHolderList[472]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateX" "Player_rigRN.placeHolderList[473]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateX" "Player_rigRN.placeHolderList[474]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateX" "Player_rigRN.placeHolderList[475]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateY" "Player_rigRN.placeHolderList[476]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateY" "Player_rigRN.placeHolderList[477]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateY" "Player_rigRN.placeHolderList[478]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateY" "Player_rigRN.placeHolderList[479]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateZ" "Player_rigRN.placeHolderList[480]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateZ" "Player_rigRN.placeHolderList[481]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateZ" "Player_rigRN.placeHolderList[482]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.translateZ" "Player_rigRN.placeHolderList[483]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateX" "Player_rigRN.placeHolderList[484]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateX" "Player_rigRN.placeHolderList[485]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateX" "Player_rigRN.placeHolderList[486]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateX" "Player_rigRN.placeHolderList[487]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateY" "Player_rigRN.placeHolderList[488]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateY" "Player_rigRN.placeHolderList[489]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateY" "Player_rigRN.placeHolderList[490]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateY" "Player_rigRN.placeHolderList[491]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateZ" "Player_rigRN.placeHolderList[492]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateZ" "Player_rigRN.placeHolderList[493]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateZ" "Player_rigRN.placeHolderList[494]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateZ" "Player_rigRN.placeHolderList[495]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateOrder" "Player_rigRN.placeHolderList[496]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateOrder" "Player_rigRN.placeHolderList[497]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.rotateOrder" "Player_rigRN.placeHolderList[498]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleX" "Player_rigRN.placeHolderList[499]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleX" "Player_rigRN.placeHolderList[500]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleX" "Player_rigRN.placeHolderList[501]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleX" "Player_rigRN.placeHolderList[502]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleY" "Player_rigRN.placeHolderList[503]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleY" "Player_rigRN.placeHolderList[504]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleY" "Player_rigRN.placeHolderList[505]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleY" "Player_rigRN.placeHolderList[506]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleZ" "Player_rigRN.placeHolderList[507]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleZ" "Player_rigRN.placeHolderList[508]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleZ" "Player_rigRN.placeHolderList[509]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.scaleZ" "Player_rigRN.placeHolderList[510]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.message" "Player_rigRN.placeHolderList[511]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.visibility" "Player_rigRN.placeHolderList[512]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.visibility" "Player_rigRN.placeHolderList[513]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.visibility" "Player_rigRN.placeHolderList[514]" 
		""
		5 4 "Player_rigRN" "|rig_controls|head_grp|CTRL_head.visibility" "Player_rigRN.placeHolderList[515]" 
		""
		5 3 "Player_rigRN" "|rig_controls|head_grp|CTRL_head|CTRL_headShape.message" 
		"Player_rigRN.placeHolderList[516]" ""
		5 3 "Player_rigRN" "|rig_controls|head_grp|head_grp_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[517]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp.message" "Player_rigRN.placeHolderList[518]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.translateX" 
		"Player_rigRN.placeHolderList[519]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.translateY" 
		"Player_rigRN.placeHolderList[520]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.translateZ" 
		"Player_rigRN.placeHolderList[521]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.rotateX" 
		"Player_rigRN.placeHolderList[522]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.rotateY" 
		"Player_rigRN.placeHolderList[523]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.rotateZ" 
		"Player_rigRN.placeHolderList[524]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.scaleX" "Player_rigRN.placeHolderList[525]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.scaleY" "Player_rigRN.placeHolderList[526]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.scaleZ" "Player_rigRN.placeHolderList[527]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK.message" 
		"Player_rigRN.placeHolderList[528]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_IK|CTRL_pelvis_IKShape.message" 
		"Player_rigRN.placeHolderList[529]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[530]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[531]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateX" 
		"Player_rigRN.placeHolderList[532]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[533]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[534]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateY" 
		"Player_rigRN.placeHolderList[535]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[536]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[537]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.translateZ" 
		"Player_rigRN.placeHolderList[538]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateX" "Player_rigRN.placeHolderList[539]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateX" "Player_rigRN.placeHolderList[540]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateX" "Player_rigRN.placeHolderList[541]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateY" "Player_rigRN.placeHolderList[542]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateY" "Player_rigRN.placeHolderList[543]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateY" "Player_rigRN.placeHolderList[544]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateZ" "Player_rigRN.placeHolderList[545]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateZ" "Player_rigRN.placeHolderList[546]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateZ" "Player_rigRN.placeHolderList[547]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[548]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[549]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleX" "Player_rigRN.placeHolderList[550]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleX" "Player_rigRN.placeHolderList[551]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleX" "Player_rigRN.placeHolderList[552]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleY" "Player_rigRN.placeHolderList[553]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleY" "Player_rigRN.placeHolderList[554]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleY" "Player_rigRN.placeHolderList[555]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleZ" "Player_rigRN.placeHolderList[556]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleZ" "Player_rigRN.placeHolderList[557]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.scaleZ" "Player_rigRN.placeHolderList[558]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.message" "Player_rigRN.placeHolderList[559]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[560]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[561]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK.visibility" 
		"Player_rigRN.placeHolderList[562]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_spine_IK|CTRL_spine_IKShape.message" 
		"Player_rigRN.placeHolderList[563]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[564]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[565]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[566]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateX" 
		"Player_rigRN.placeHolderList[567]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[568]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[569]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[570]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateY" 
		"Player_rigRN.placeHolderList[571]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[572]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[573]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[574]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.translateZ" 
		"Player_rigRN.placeHolderList[575]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateX" "Player_rigRN.placeHolderList[576]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateX" "Player_rigRN.placeHolderList[577]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateX" "Player_rigRN.placeHolderList[578]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateX" "Player_rigRN.placeHolderList[579]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateY" "Player_rigRN.placeHolderList[580]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateY" "Player_rigRN.placeHolderList[581]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateY" "Player_rigRN.placeHolderList[582]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateY" "Player_rigRN.placeHolderList[583]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateZ" "Player_rigRN.placeHolderList[584]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateZ" "Player_rigRN.placeHolderList[585]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateZ" "Player_rigRN.placeHolderList[586]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateZ" "Player_rigRN.placeHolderList[587]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[588]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[589]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.rotateOrder" 
		"Player_rigRN.placeHolderList[590]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleX" "Player_rigRN.placeHolderList[591]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleX" "Player_rigRN.placeHolderList[592]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleX" "Player_rigRN.placeHolderList[593]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleX" "Player_rigRN.placeHolderList[594]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleY" "Player_rigRN.placeHolderList[595]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleY" "Player_rigRN.placeHolderList[596]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleY" "Player_rigRN.placeHolderList[597]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleY" "Player_rigRN.placeHolderList[598]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleZ" "Player_rigRN.placeHolderList[599]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleZ" "Player_rigRN.placeHolderList[600]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleZ" "Player_rigRN.placeHolderList[601]" 
		""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.scaleZ" "Player_rigRN.placeHolderList[602]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.message" "Player_rigRN.placeHolderList[603]" 
		""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[604]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[605]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[606]" ""
		5 4 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK.visibility" 
		"Player_rigRN.placeHolderList[607]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_chest_IK|CTRL_chest_IKShape.message" 
		"Player_rigRN.placeHolderList[608]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK.message" 
		"Player_rigRN.placeHolderList[609]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK|CTRL_pelvis_FKShape.message" 
		"Player_rigRN.placeHolderList[610]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK|CTRL_spine_FK.message" 
		"Player_rigRN.placeHolderList[611]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK|CTRL_spine_FK|CTRL_spine_FKShape.message" 
		"Player_rigRN.placeHolderList[612]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK|CTRL_spine_FK|CTRL_chest_FK.message" 
		"Player_rigRN.placeHolderList[613]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|CTRL_pelvis_FK|CTRL_spine_FK|CTRL_chest_FK|CTRL_chest_FKShape.message" 
		"Player_rigRN.placeHolderList[614]" ""
		5 3 "Player_rigRN" "|rig_controls|torso_grp|ikHandle_spine.message" 
		"Player_rigRN.placeHolderList[615]" ""
		5 3 "Player_rigRN" "|rig_systems.message" "Player_rigRN.placeHolderList[616]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH.message" "Player_rigRN.placeHolderList[617]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group.message" "Player_rigRN.placeHolderList[618]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|chest_ctrljnt.message" 
		"Player_rigRN.placeHolderList[619]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|chest_ctrljnt|chest_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[620]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|mid_ctrljnt.message" 
		"Player_rigRN.placeHolderList[621]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|mid_ctrljnt|mid_ctrljnt_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[622]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_ctrljnt.message" 
		"Player_rigRN.placeHolderList[623]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_ctrljnt|pelvis_ctrljnt1_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[624]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|spine_ik_curve.message" 
		"Player_rigRN.placeHolderList[625]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|spine_ik_curve|spine_ik_curveShape.message" 
		"Player_rigRN.placeHolderList[626]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|spine_ik_curve|spine_ik_curveShapeOrig.message" 
		"Player_rigRN.placeHolderList[627]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK.message" 
		"Player_rigRN.placeHolderList[628]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK|spine_IK.message" 
		"Player_rigRN.placeHolderList[629]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK|spine_IK|chest_IK.message" 
		"Player_rigRN.placeHolderList[630]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK|spine_IK|chest_IK|chest_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[631]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK|spine_IK|effector3.message" 
		"Player_rigRN.placeHolderList[632]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_IK|spine_IK|spine_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[633]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK.message" 
		"Player_rigRN.placeHolderList[634]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK|spine_FK.message" 
		"Player_rigRN.placeHolderList[635]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK|spine_FK|chest_FK.message" 
		"Player_rigRN.placeHolderList[636]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK|spine_FK|chest_FK|chest_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[637]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK|spine_FK|spine_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[638]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|spine_group|pelvis_FK|pelvis_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[639]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp.message" "Player_rigRN.placeHolderList[640]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK.message" 
		"Player_rigRN.placeHolderList[641]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK|lowerarm_l_IK.message" 
		"Player_rigRN.placeHolderList[642]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK|lowerarm_l_IK|hand_l_IK.message" 
		"Player_rigRN.placeHolderList[643]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK|lowerarm_l_IK|hand_l_IK|hand_l_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[644]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_IK|lowerarm_l_IK|effector8.message" 
		"Player_rigRN.placeHolderList[645]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK.message" 
		"Player_rigRN.placeHolderList[646]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK|lowerarm_l_FK.message" 
		"Player_rigRN.placeHolderList[647]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK|lowerarm_l_FK|hand_l_FK.message" 
		"Player_rigRN.placeHolderList[648]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK|lowerarm_l_FK|hand_l_FK|hand_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[649]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK|lowerarm_l_FK|lowerarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[650]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_l_grp|upperarm_l_FK|upperarm_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[651]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp.message" "Player_rigRN.placeHolderList[652]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK.message" 
		"Player_rigRN.placeHolderList[653]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK|lowerarm_r_IK.message" 
		"Player_rigRN.placeHolderList[654]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK|lowerarm_r_IK|hand_r_IK.message" 
		"Player_rigRN.placeHolderList[655]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK|lowerarm_r_IK|hand_r_IK|hand_r_IK_orientConstraint1.message" 
		"Player_rigRN.placeHolderList[656]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_IK|lowerarm_r_IK|effector7.message" 
		"Player_rigRN.placeHolderList[657]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK.message" 
		"Player_rigRN.placeHolderList[658]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK|lowerarm_r_FK.message" 
		"Player_rigRN.placeHolderList[659]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK|lowerarm_r_FK|hand_r_FK.message" 
		"Player_rigRN.placeHolderList[660]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK|lowerarm_r_FK|hand_r_FK|hand_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[661]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK|lowerarm_r_FK|lowerarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[662]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|arm_r_grp|upperarm_r_FK|upperarm_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[663]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp.message" "Player_rigRN.placeHolderList[664]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK.message" 
		"Player_rigRN.placeHolderList[665]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK|calf_l_IK.message" 
		"Player_rigRN.placeHolderList[666]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK|calf_l_IK|foot_l_IK.message" 
		"Player_rigRN.placeHolderList[667]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_IK|calf_l_IK|effector9.message" 
		"Player_rigRN.placeHolderList[668]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_FK.message" 
		"Player_rigRN.placeHolderList[669]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_FK|calf_l_FK.message" 
		"Player_rigRN.placeHolderList[670]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_FK|calf_l_FK|foot_l_FK.message" 
		"Player_rigRN.placeHolderList[671]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_FK|calf_l_FK|calf_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[672]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_l_grp|thigh_l_FK|thigh_l_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[673]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp.message" "Player_rigRN.placeHolderList[674]" 
		""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK.message" 
		"Player_rigRN.placeHolderList[675]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK|calf_r_IK.message" 
		"Player_rigRN.placeHolderList[676]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK|calf_r_IK|foot_r_IK.message" 
		"Player_rigRN.placeHolderList[677]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_IK|calf_r_IK|effector6.message" 
		"Player_rigRN.placeHolderList[678]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_FK.message" 
		"Player_rigRN.placeHolderList[679]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_FK|calf_r_FK.message" 
		"Player_rigRN.placeHolderList[680]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_FK|calf_r_FK|foot_r_FK.message" 
		"Player_rigRN.placeHolderList[681]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_FK|calf_r_FK|calf_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[682]" ""
		5 3 "Player_rigRN" "|rig_systems|DO_NOT_TOUCH|leg_r_grp|thigh_r_FK|thigh_r_FK_parentConstraint1.message" 
		"Player_rigRN.placeHolderList[683]" ""
		5 3 "Player_rigRN" "|Player_modelRNfosterParent1|OrionShapeDeformed.message" 
		"Player_rigRN.placeHolderList[684]" ""
		5 3 "Player_rigRN" "|Player_modelRNfosterParent1|SaucerShapeDeformed.message" 
		"Player_rigRN.placeHolderList[685]" ""
		5 3 "Player_rigRN" "shapeEditorManager1.message" "Player_rigRN.placeHolderList[686]" 
		""
		5 3 "Player_rigRN" "poseInterpolatorManager1.message" "Player_rigRN.placeHolderList[687]" 
		""
		5 3 "Player_rigRN" "layerManager1.message" "Player_rigRN.placeHolderList[688]" 
		""
		5 3 "Player_rigRN" "defaultLayer1.message" "Player_rigRN.placeHolderList[689]" 
		""
		5 3 "Player_rigRN" "uiConfigurationScriptNode1.message" "Player_rigRN.placeHolderList[690]" 
		""
		5 3 "Player_rigRN" "sceneConfigurationScriptNode1.message" "Player_rigRN.placeHolderList[691]" 
		""
		5 3 "Player_rigRN" "geo.message" "Player_rigRN.placeHolderList[692]" 
		""
		5 3 "Player_rigRN" "bindPose3.message" "Player_rigRN.placeHolderList[693]" 
		""
		5 3 "Player_rigRN" "reverse1.outputX" "Player_rigRN.placeHolderList[694]" 
		"CTRL_foot_l_IK.v"
		5 3 "Player_rigRN" "reverse1.message" "Player_rigRN.placeHolderList[695]" 
		""
		5 3 "Player_rigRN" "reverse2.outputX" "Player_rigRN.placeHolderList[696]" 
		"CTRL_arm_l_ik.v"
		5 3 "Player_rigRN" "reverse2.outputX" "Player_rigRN.placeHolderList[697]" 
		"CTRL_arm_l_ik.v"
		5 3 "Player_rigRN" "reverse2.message" "Player_rigRN.placeHolderList[698]" 
		""
		5 3 "Player_rigRN" "reverse3.message" "Player_rigRN.placeHolderList[699]" 
		""
		5 3 "Player_rigRN" "reverse4.outputX" "Player_rigRN.placeHolderList[700]" 
		"CTRL_arm_r_ik.v"
		5 3 "Player_rigRN" "reverse4.outputX" "Player_rigRN.placeHolderList[701]" 
		"CTRL_arm_r_ik.v"
		5 3 "Player_rigRN" "reverse4.message" "Player_rigRN.placeHolderList[702]" 
		""
		5 3 "Player_rigRN" "reverse5.outputX" "Player_rigRN.placeHolderList[703]" 
		"CTRL_foot_r_IK.v"
		5 3 "Player_rigRN" "reverse5.message" "Player_rigRN.placeHolderList[704]" 
		""
		5 3 "Player_rigRN" "pasted__multiplyDivide1.message" "Player_rigRN.placeHolderList[705]" 
		""
		5 3 "Player_rigRN" "bindPose6.message" "Player_rigRN.placeHolderList[706]" 
		""
		5 3 "Player_rigRN" "controls.message" "Player_rigRN.placeHolderList[707]" 
		""
		5 3 "Player_rigRN" "skinCluster2.message" "Player_rigRN.placeHolderList[708]" 
		""
		5 3 "Player_rigRN" "makeNurbCircle1.message" "Player_rigRN.placeHolderList[709]" 
		""
		5 3 "Player_rigRN" "transformGeometry1.message" "Player_rigRN.placeHolderList[710]" 
		""
		5 3 "Player_rigRN" "transformGeometry4.message" "Player_rigRN.placeHolderList[711]" 
		""
		5 3 "Player_rigRN" "makeNurbCircle2.message" "Player_rigRN.placeHolderList[712]" 
		""
		5 3 "Player_rigRN" "transformGeometry2.message" "Player_rigRN.placeHolderList[713]" 
		""
		5 3 "Player_rigRN" "transformGeometry3.message" "Player_rigRN.placeHolderList[714]" 
		""
		5 3 "Player_rigRN" "makeNurbCircle4.message" "Player_rigRN.placeHolderList[715]" 
		""
		5 3 "Player_rigRN" "transformGeometry7.message" "Player_rigRN.placeHolderList[716]" 
		""
		5 3 "Player_rigRN" "tweak1.message" "Player_rigRN.placeHolderList[717]" 
		""
		5 3 "Player_rigRN" "geomBind1.message" "Player_rigRN.placeHolderList[718]" 
		""
		5 3 "Player_rigRN" "skinCluster5.message" "Player_rigRN.placeHolderList[719]" 
		""
		5 3 "Player_rigRN" "bones.message" "Player_rigRN.placeHolderList[720]" 
		""
		5 3 "Player_rigRN" "multMatrix1.message" "Player_rigRN.placeHolderList[721]" 
		""
		5 3 "Player_rigRN" "shapeEditorManager2.message" "Player_rigRN.placeHolderList[722]" 
		""
		5 3 "Player_rigRN" "poseInterpolatorManager2.message" "Player_rigRN.placeHolderList[723]" 
		""
		5 3 "Player_rigRN" "Material.message" "Player_rigRN.placeHolderList[724]" 
		""
		5 3 "Player_rigRN" "OrionSG.message" "Player_rigRN.placeHolderList[725]" 
		""
		5 3 "Player_rigRN" "Material1.message" "Player_rigRN.placeHolderList[726]" 
		""
		5 3 "Player_rigRN" "OrionSG1.message" "Player_rigRN.placeHolderList[727]" 
		""
		5 3 "Player_rigRN" "Material2.message" "Player_rigRN.placeHolderList[728]" 
		""
		5 3 "Player_rigRN" "OrionSG2.message" "Player_rigRN.placeHolderList[729]" 
		""
		5 3 "Player_rigRN" "MT_Saucer.message" "Player_rigRN.placeHolderList[730]" 
		""
		5 3 "Player_rigRN" "SaucerSG.message" "Player_rigRN.placeHolderList[731]" 
		""
		5 3 "Player_rigRN" "Player_modelRN.message" "Player_rigRN.placeHolderList[732]" 
		""
		5 3 "Player_rigRN" "skinCluster6.message" "Player_rigRN.placeHolderList[733]" 
		""
		5 3 "Player_rigRN" "bindPose7.message" "Player_rigRN.placeHolderList[734]" 
		""
		5 3 "Player_rigRN" "geomBind2.message" "Player_rigRN.placeHolderList[735]" 
		""
		5 3 "Player_rigRN" "skinCluster7.message" "Player_rigRN.placeHolderList[736]" 
		""
		5 3 "Player_rigRN" "bindPose8.message" "Player_rigRN.placeHolderList[737]" 
		""
		5 3 "Player_rigRN" "geomBind3.message" "Player_rigRN.placeHolderList[738]" 
		""
		5 3 "Player_rigRN" "sharedReferenceNode.message" "Player_rigRN.placeHolderList[739]" 
		""
		"Player_rig:Player_modelRN" 0
		"Player_modelRN" 13
		5 3 "Player_rigRN" "shapeEditorManager3.message" "Player_rigRN.placeHolderList[9]" 
		""
		5 3 "Player_rigRN" "poseInterpolatorManager3.message" "Player_rigRN.placeHolderList[10]" 
		""
		5 3 "Player_rigRN" "layerManager2.message" "Player_rigRN.placeHolderList[11]" 
		""
		5 3 "Player_rigRN" "defaultLayer2.message" "Player_rigRN.placeHolderList[12]" 
		""
		5 3 "Player_rigRN" "uiConfigurationScriptNode2.message" "Player_rigRN.placeHolderList[13]" 
		""
		5 3 "Player_rigRN" "sceneConfigurationScriptNode2.message" "Player_rigRN.placeHolderList[14]" 
		""
		5 3 "Player_rigRN" "Material3.message" "Player_rigRN.placeHolderList[15]" 
		""
		5 3 "Player_rigRN" "OrionSG3.message" "Player_rigRN.placeHolderList[16]" 
		""
		5 3 "Player_rigRN" "Material4.message" "Player_rigRN.placeHolderList[17]" 
		""
		5 3 "Player_rigRN" "OrionSG4.message" "Player_rigRN.placeHolderList[18]" 
		""
		5 3 "Player_rigRN" "SK_OrionRN.message" "Player_rigRN.placeHolderList[19]" 
		""
		5 3 "Player_rigRN" "SK_SaucerRN.message" "Player_rigRN.placeHolderList[20]" 
		""
		5 3 "Player_rigRN" "sharedReferenceNode1.message" "Player_rigRN.placeHolderList[21]" 
		""
		"Player_rig:SK_OrionRN" 0
		"SK_OrionRN" 4
		5 3 "Player_rigRN" "|model|Orion.message" "Player_rigRN.placeHolderList[1]" 
		""
		5 3 "Player_rigRN" "|model|Orion|OrionShape.message" "Player_rigRN.placeHolderList[2]" 
		""
		5 3 "Player_rigRN" "Material5.message" "Player_rigRN.placeHolderList[3]" 
		""
		5 3 "Player_rigRN" "OrionSG5.message" "Player_rigRN.placeHolderList[4]" 
		""
		"Player_rig:SK_SaucerRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BDA46AC1-45D1-26E0-6E77-1D822F054339";
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
	rename -uid "012CE4E5-47C6-CB48-C515-3BA76535398F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 65 -ast 0 -aet 67 ";
	setAttr ".st" 6;
createNode animCurveTL -n "CTRL_ship_translateY";
	rename -uid "68D8469F-4082-891F-86FE-AA9A40DDA9DF";
	setAttr ".tan" 1;
	setAttr -s 19 ".ktv[0:18]"  0 0 3.920000425170068 6.3538664526900916
		 9.7999993622448986 9.438074361902169 21.559999149659863 0 25.479998724489796 4.7931565965168286
		 33.319997661564628 7.7324409022747389 43.119997023809525 0 47.039998937074827 7.6916177579814597
		 52.919997236394558 10.775825667193537 64.679996598639462 0 70.559995960884351 4.4215590117136694
		 76.439995748299324 7.3608433174715797 86.239995748299322 0 92.119994260204081 6.3538664526900916
		 97.999994897959184 9.438074361902169 109.75999340986395 0 113.67999298469388 4.8674761134774585
		 121.51999192176871 7.8067604192353688 131.3199925595238 0;
	setAttr -s 19 ".kit[0:18]"  18 1 1 18 1 1 18 1 
		1 18 1 1 1 1 1 18 1 1 18;
	setAttr -s 19 ".kot[0:18]"  18 1 1 18 1 1 18 1 
		1 18 1 1 18 1 1 18 1 1 18;
	setAttr -s 19 ".ktl[2:18]" no yes yes no no yes no yes yes no no yes 
		no yes yes no no;
	setAttr -s 19 ".kix[1:18]"  0.051558426104848253 0.35069589956279734 
		0.39199999291383225 0.081739912517066846 0.47787990260448726 0.32666664540816326 
		0.051558426104848253 0.35069589956279734 0.3919999787414965 0.081739912517066846 
		0.47787990260448726 0.33842663535242162 0.051558426104848253 0.35069589956279734 
		0.39199995039682545 0.081739912517066846 0.47787990260448726 0.32666668792516962;
	setAttr -s 19 ".kiy[1:18]"  2.6190491196643895 0.0017665431036381451 
		0 3.1979431914679188 -0.28450520007576313 0 2.6190491196643895 0.0017665431036381451 
		0 3.1979431914679188 -0.28450520007576313 0 2.6190491196643895 0.0017665431036381451 
		0 3.1979431914679188 -0.28450520007576313 0;
	setAttr -s 19 ".kox[1:18]"  0.1175532689909803 0.45244308635977454 
		0.13066665249433107 0.15994793302958213 0.64745850838994279 0.13066673044217669 0.1175532689909803 
		0.45244308635977454 0.19599997874149677 0.15994793302958213 0.64745850838994279 0.19599995039682572 
		0.1175532689909803 0.45244308635977454 0.13066665249433118 0.15994793302958213 0.64745850838994279 
		0.32666668792516962;
	setAttr -s 19 ".koy[1:18]"  5.9714351839876025 0.0017664995672533792 
		0 6.2577069263862066 0.0017665375580548962 0 5.9714351839876025 0.0017664995672533792 
		0 6.2577069263862066 0.0017665375580548962 0 5.9714351839876025 0.0017664995672533792 
		0 6.2577069263862066 0.0017665375580548962 0;
createNode animCurveTU -n "CTRL_ship_visibility";
	rename -uid "BA6F24F8-4C3D-C367-5E5B-5F9791773C48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 9.7999980867346945 1 27.439999787414965 1
		 58.799995323129252 1 92.119994047619045 1 117.59999362244898 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animLayer -n "BaseAnimation";
	rename -uid "A5BB8265-49AC-F491-0D34-838306482036";
	setAttr -s 4 ".cdly";
	setAttr -s 4 ".chsl";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
	setAttr ".ovrd" yes;
createNode animLayer -n "Backwards";
	rename -uid "3FEEB861-46D8-1442-C9F2-02B6C0C41A19";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Backwards";
	rename -uid "CE444439-403E-DA3F-507D-D88931D89E15";
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Backwards";
	rename -uid "B38CDDE3-43CB-81C6-F77A-8A9F20DF22B7";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Backwards";
	rename -uid "51055674-4228-39EF-24F3-FA887C1F0409";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Backwards";
	rename -uid "5A572EC2-4AAD-FBCD-7BE5-92B1CB310B59";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Backwards";
	rename -uid "E6AA023F-4B73-978F-CDF9-B997B2DE54E3";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Backwards";
	rename -uid "C2E8917A-4054-69AD-157C-FC9693736D8A";
	setAttr ".o" 1.3679506818497158;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Backwards";
	rename -uid "96D948A3-40FF-5CE3-FF7A-34BA92498AD2";
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Backwards";
	rename -uid "731380E8-4A93-E118-C3B2-C4A890EA6969";
	setAttr ".o" yes;
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBX";
	rename -uid "69446B9B-4C0C-1DA8-9BCE-F886E3095AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -14.999999999999998;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBY";
	rename -uid "CCCF83E0-4F3E-A674-C4A0-1B836C38ADAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Backwards_inputBZ";
	rename -uid "2BC6115D-48AC-7555-4EB7-878D33979826";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Backwards_inputB";
	rename -uid "A349E13A-4E76-F8E5-A4CB-B7AD6D36B76A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Backwards_inputB";
	rename -uid "7303F6BC-4738-3F0A-080D-7197B17CBC57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Backwards_inputB";
	rename -uid "B104361E-4E30-78BD-4517-0D880D7DFAEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateX_Backwards_inputB";
	rename -uid "2E62DCDF-4ED9-0890-A571-D5B8AF20FAEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Backwards_inputB";
	rename -uid "F7F016F4-4F32-474F-C9CE-9696F09EA1D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Backwards_inputB";
	rename -uid "2383E518-4B0E-AACB-6F86-EB91F2C0A0AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Backwards_inputB";
	rename -uid "CECDB9F7-42EA-059D-16DE-7D9759C1F85E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animLayer -n "Forwards";
	rename -uid "1A87831E-4BD1-7B99-50D5-3CBDE7EEE902";
	setAttr -s 82 ".dsm";
	setAttr -s 66 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_foot_l_IK_rotate_Forwards";
	rename -uid "A87C991B-411C-A8DC-990D-49A033E05BEB";
createNode animBlendNodeAdditiveScale -n "CTRL_foot_l_IK_scaleX_Forwards";
	rename -uid "F11535C5-45EA-5E84-8736-E1BE41D70B93";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_foot_l_IK_scaleY_Forwards";
	rename -uid "5C9D64D0-44DD-AA87-0EB1-DA9215EB2FEA";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_foot_l_IK_scaleZ_Forwards";
	rename -uid "359EF04C-471D-3DEA-04E5-BF84047FF2C1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_l_IK_translateX_Forwards";
	rename -uid "0904DE44-4B2F-0ECF-2DB4-5397A6B3BD19";
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_l_IK_translateY_Forwards";
	rename -uid "49F72934-4CC9-4A4E-ED09-A9A02CD6FBEC";
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_l_IK_translateZ_Forwards";
	rename -uid "665B69EF-47FB-DAF7-887A-A890CFF82133";
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeBoolean -n "CTRL_foot_l_IK_visibility_Forwards";
	rename -uid "C4F67E2B-49DE-C083-7DF2-9D8FFFEFC290";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Forwards";
	rename -uid "7223D192-4D81-99FD-DA14-EE9B18574189";
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Forwards";
	rename -uid "58DB75D2-43CE-4D21-47AA-3EA14F854BCF";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Forwards";
	rename -uid "5BA999D9-41F4-57B5-7828-449F5DFD04F3";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Forwards";
	rename -uid "E04E900C-4C2F-F79D-3D34-C5BE35564F73";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Forwards";
	rename -uid "2A2B2F2F-4722-4EFB-8C74-788DB682BD6F";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Forwards";
	rename -uid "00F5CCC5-4761-575F-6FAD-BD9C45DDB54F";
	setAttr ".o" 1.3679506818497158;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Forwards";
	rename -uid "89A27A2E-41A8-109C-4BC6-08974DEAD371";
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Forwards";
	rename -uid "736C8001-49BF-DDE8-A2DB-F996A3497BC1";
	setAttr ".o" yes;
createNode animBlendNodeAdditive -n "CTRL_cog_IKFK_Switch_Forwards";
	rename -uid "088E97D2-4751-DB67-EF16-BE8C467D7F0C";
createNode animBlendNodeAdditiveRotation -n "CTRL_cog_rotate_Forwards";
	rename -uid "EAEBF7F0-4D86-0497-3E44-8E98E9B255D3";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleX_Forwards";
	rename -uid "7CD682A7-4CC5-A293-D940-94AA3BB86976";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleY_Forwards";
	rename -uid "B59A439A-4A65-CE04-A8FF-3DAC59BF36B2";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleZ_Forwards";
	rename -uid "416D9F46-4AF6-0A81-CDB3-F087134A0035";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateX_Forwards";
	rename -uid "59D1AE26-44D1-5850-7F08-8F815C84482D";
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateY_Forwards";
	rename -uid "8BCFD29A-4822-C39E-0A4D-9B81EB01B794";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateZ_Forwards";
	rename -uid "95F367E5-4C4F-57BD-77EA-16AD5E472D28";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeBoolean -n "CTRL_cog_visibility_Forwards";
	rename -uid "F7623168-4F36-7FE4-1AC2-C4AD499D48B6";
	setAttr ".o" yes;
createNode animBlendNodeEnum -n "CTRL_head_Orient_Forwards";
	rename -uid "26792D11-4402-22B2-D085-968C6DCB81DD";
createNode animBlendNodeAdditiveRotation -n "CTRL_head_rotate_Forwards";
	rename -uid "285D1FA5-4F73-00E2-5CF0-97A762E01648";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleX_Forwards";
	rename -uid "D1485578-48AA-BE60-98DA-23981F8DFE80";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleY_Forwards";
	rename -uid "B1846D63-48D3-5941-2758-22B149E27B54";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleZ_Forwards";
	rename -uid "5976031B-4995-FD7E-2F96-808364533C9D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateX_Forwards";
	rename -uid "9476466A-4F26-12BC-6CB1-8AADB89B35A4";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateY_Forwards";
	rename -uid "0B0BAE1A-431D-F4ED-797A-C99E1E2943B3";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateZ_Forwards";
	rename -uid "6EA5372D-4C03-2273-5094-35AA4950FFE0";
createNode animBlendNodeBoolean -n "CTRL_head_visibility_Forwards";
	rename -uid "6CE4C4DE-483C-8749-2724-D4910D1C0C2B";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_l_ik_rotate_Forwards";
	rename -uid "C739BF01-4AB3-9193-C0CE-5AA1108FBC1D";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleX_Forwards";
	rename -uid "6547ABE2-4B5E-77A9-51C7-BE9299451BCC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleY_Forwards";
	rename -uid "8053054C-4AAC-F42B-B263-5A85E43CA126";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleZ_Forwards";
	rename -uid "28D39DA0-4BBA-931A-64EC-72B79F4EA178";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateX_Forwards";
	rename -uid "96DF3A7C-4BAA-515E-644A-4FAA9EEB48BE";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateY_Forwards";
	rename -uid "ECBD862D-4BB6-6250-C536-CC9FB648444E";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateZ_Forwards";
	rename -uid "AF715E92-4B87-A929-E454-DBA27F58BEEA";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeBoolean -n "CTRL_arm_l_ik_visibility_Forwards";
	rename -uid "09EDCBE1-4B21-C6BE-51D0-AD8F6D35EB3F";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_chest_IK_rotate_Forwards";
	rename -uid "D5975A7F-4F2F-044C-DADA-BEB1579A8898";
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleX_Forwards";
	rename -uid "B1D6B94B-4F07-EB1F-2784-95ABE4B8DFF4";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleY_Forwards";
	rename -uid "EA8B8C04-461F-3AF6-EC24-34A1D3DCD94D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleZ_Forwards";
	rename -uid "0E25857C-4D97-C557-27FE-54850306C61E";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateX_Forwards";
	rename -uid "57C4F201-4989-120B-7549-2DB8B7F59603";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateY_Forwards";
	rename -uid "7C5CD2C2-4FDD-F7EC-9A91-DA942334C138";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateZ_Forwards";
	rename -uid "0C89E37F-41F8-5B9C-71A7-6E920902462A";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeBoolean -n "CTRL_chest_IK_visibility_Forwards";
	rename -uid "AFC9D1B0-4C8C-C395-4848-57A7500FF194";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_spine_IK_rotate_Forwards";
	rename -uid "EE832262-470E-4E0B-39F3-7598F1549BCC";
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleX_Forwards";
	rename -uid "AA1FA6C8-4485-2F8F-159C-96A7DE4F21BF";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleY_Forwards";
	rename -uid "EB05460B-4461-D5B8-D37F-46B6F29AF39C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleZ_Forwards";
	rename -uid "8865E393-4D07-96CC-9EBA-94B79D15F8A4";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateX_Forwards";
	rename -uid "86911412-4393-38BC-1C8E-F09F9FCD9C3D";
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateY_Forwards";
	rename -uid "40760195-4F3D-6107-EACC-E4BF0863D230";
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateZ_Forwards";
	rename -uid "9528B55C-44D9-B47D-38B5-01B9C7A149C6";
createNode animBlendNodeBoolean -n "CTRL_spine_IK_visibility_Forwards";
	rename -uid "F88F301A-4FEB-88A0-CA6A-F688D3FDD7EF";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_foot_r_IK_rotate_Forwards";
	rename -uid "241685B3-4923-8EC4-FE82-5B877B6DC0FE";
createNode animBlendNodeAdditiveScale -n "CTRL_foot_r_IK_scaleX_Forwards";
	rename -uid "56C0F8F1-4125-6B7B-A52F-14B1565B34B1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_foot_r_IK_scaleY_Forwards";
	rename -uid "78FEDAE5-469F-0EBD-F8EF-A196A570FFF5";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_foot_r_IK_scaleZ_Forwards";
	rename -uid "4B76B2BD-4893-0DD7-E665-E29F9900371D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_r_IK_translateX_Forwards";
	rename -uid "3B0C6C0F-4139-193A-7615-DC8AD3CA6BF0";
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_r_IK_translateY_Forwards";
	rename -uid "3A378656-4E0B-A7B6-C942-DBBAA73275A4";
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "CTRL_foot_r_IK_translateZ_Forwards";
	rename -uid "A63E2383-416A-1A8D-0DCA-11A2BF6008C0";
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeBoolean -n "CTRL_foot_r_IK_visibility_Forwards";
	rename -uid "19D0F18A-4E1F-FC6F-2FA8-55B0E5A8982A";
	setAttr ".o" yes;
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBX";
	rename -uid "25B476EF-431B-D46E-DC6C-C1BAC79A02B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBY";
	rename -uid "72D74F95-476C-269E-5D6A-CFAF90B07651";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputBZ";
	rename -uid "8F68D451-4B44-C84B-CE25-1BA8AC23D2AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleX_Forwards_inputB";
	rename -uid "62771DFF-4FC3-6DEC-F0DD-69ACF3FF6857";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleY_Forwards_inputB";
	rename -uid "08AD7A9E-4C75-1FEB-EE8C-5A8683DFD1FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_scaleZ_Forwards_inputB";
	rename -uid "B98BABC6-43E0-9E54-187A-9E8D81BFE517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateX_Forwards_inputB";
	rename -uid "CE160A95-4425-CC17-C82F-CCA48ABA3556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.6419801778547605;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateY_Forwards_inputB";
	rename -uid "84F67F4B-4380-2C94-C6EF-1EBAF2759AA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -6.694931359601501;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_l_IK_translateZ_Forwards_inputB";
	rename -uid "181D2ADD-41FD-802E-106C-078F34E5832E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -17.077919810627826;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_l_IK_visibility_Forwards_inputB";
	rename -uid "A49E7E88-4DFF-D2F6-3BCB-488DC55AA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBX";
	rename -uid "17C3406D-4912-3E72-E78B-B0A3E343B582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 20;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBY";
	rename -uid "BDDCFDB4-4714-060F-A8FF-2A99BEDC7A5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Forwards_inputBZ";
	rename -uid "84D5BE23-469F-4091-6897-159F3E64919F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Forwards_inputB";
	rename -uid "BB68BBC9-406B-DF15-96E8-6491F46A6A81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Forwards_inputB";
	rename -uid "84496C29-4DB1-4918-E743-A0A39204EB34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Forwards_inputB";
	rename -uid "A4D551DB-4856-A53C-9FA1-4AB7D7FB37A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateX_Forwards_inputB";
	rename -uid "EE5B22F4-451B-DDCA-05AE-47AD940C4EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Forwards_inputB";
	rename -uid "BF11C18F-4B43-A608-9A4E-4DB307973C7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Forwards_inputB";
	rename -uid "DA553AEB-495E-15B2-A051-CEBADC41BA8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Forwards_inputB";
	rename -uid "E2E3EBB0-4564-0F3F-11A9-40BBEE65330D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Forwards_inputB";
	rename -uid "3A57E3F3-4ECE-90BE-3D13-2A91CCEFE6B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBX";
	rename -uid "F33A4A78-4C09-7893-F028-E582E46A2B9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 29.218339129404331;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBY";
	rename -uid "EFE8B1C4-4657-E87D-581A-46AF2A12CC03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputBZ";
	rename -uid "E5A367AB-4482-DAE5-BB76-FF9BBF2AEC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Forwards_inputB";
	rename -uid "B0F9CFA5-4BDB-0966-8CEA-6B89F2CBF8BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Forwards_inputB";
	rename -uid "87E6FDB1-4257-046A-F121-E3A34142E96C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Forwards_inputB";
	rename -uid "0DD5252E-4B07-15C9-9446-83AD3FF5976A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateX_Forwards_inputB";
	rename -uid "0E2236E7-4EA6-2124-CDB4-04A9502B94D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.9080914098430135;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Forwards_inputB";
	rename -uid "C7F07218-46C1-9CD2-9417-6A8725A7AFF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -3.5552089331588075;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Forwards_inputB";
	rename -uid "5D6C5E37-42C5-FF9C-7FE7-4BBB8F727D35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -8.9940848751416524;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_visibility_Forwards_inputB";
	rename -uid "DA29976A-439C-F3E8-D96A-4BAEEAE41AE6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_head_Orient_Forwards_inputB";
	rename -uid "DA26FA1C-4CB0-1E07-54D6-BE9E7A38C624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBX";
	rename -uid "BACE11A3-49FC-BB5D-F7A8-0B8D6AE91DE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.662648780650859;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBY";
	rename -uid "94C1B4D9-4A01-F366-26F6-49AA4D6A3C75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.7890620083232284e-15;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputBZ";
	rename -uid "43B93369-42F8-FC38-825B-7AA164A4F587";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.0734372049939369e-14;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Forwards_inputB";
	rename -uid "4C800376-4D24-5439-0989-89A4CE71CED7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Forwards_inputB";
	rename -uid "219DE90B-4291-EC04-DECB-2C8023A8E3D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Forwards_inputB";
	rename -uid "12A49511-4C85-257D-9991-0DAFE5D4266F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateX_Forwards_inputB";
	rename -uid "84D10D83-4E64-C881-4AD1-54B4F4D61951";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Forwards_inputB";
	rename -uid "AF17C769-449B-A2BA-6B02-1DB5FECAEF38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Forwards_inputB";
	rename -uid "46C4350F-4F28-52C9-74D0-17AEC1E98097";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Forwards_inputB";
	rename -uid "ABB1A744-492D-5B10-9B98-8E9B2CA2FF16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBX";
	rename -uid "FD3E4F42-4D95-3619-6A68-B491AEC0C9B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBY";
	rename -uid "4B94DA59-4BF4-7E9F-BCD5-E18930376B97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputBZ";
	rename -uid "628D688D-4EB7-3F7A-C636-31A589E50AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Forwards_inputB";
	rename -uid "00DF8937-4A0F-0C8B-1DCC-F5B383FBD9D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Forwards_inputB";
	rename -uid "75A8FC39-4015-51D0-C175-C28A9B615D3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Forwards_inputB";
	rename -uid "F64430EC-482F-EEA2-85C8-DC8F3CF0ACB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Forwards_inputB";
	rename -uid "F266BF55-4120-5ECE-45CF-FB93FD2C0C54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.40751402541403081;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Forwards_inputB";
	rename -uid "6579246C-4DF7-46A6-D5E6-8FA52BA919DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.5728631707367011;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Forwards_inputB";
	rename -uid "1DDB47B5-426A-980D-B134-3ABAAF768A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.7945033788161524;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Forwards_inputB";
	rename -uid "35FE7011-48EE-BEB0-D8D9-498EE1A84FB0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBX";
	rename -uid "25FDD126-4400-3B1D-A264-748477887514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -18.921183470569563;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBY";
	rename -uid "8A3CEDB7-4D54-4D7D-6ADD-84B1B40DBEDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputBZ";
	rename -uid "303F4F6C-45A1-D2A1-FF76-CFAF01D2680C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Forwards_inputB";
	rename -uid "36F1A1E9-4D54-5421-EDEE-94B7B2C1C364";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Forwards_inputB";
	rename -uid "3263FAE9-4FC9-D589-7893-4B879ADF069E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Forwards_inputB";
	rename -uid "47AC5A51-4BA5-6EE5-B96F-C9B5AA3FE0A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateX_Forwards_inputB";
	rename -uid "A6A55714-4336-59A1-99A1-A6B47D06C1D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Forwards_inputB";
	rename -uid "0D95B5A9-4B45-0D05-C441-B686D41B3092";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Forwards_inputB";
	rename -uid "7E1B7AD0-42E4-8BCB-9E76-D994BE16DA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Forwards_inputB";
	rename -uid "5E7579F6-471C-2215-A91F-378E6C3DB18D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBX";
	rename -uid "6952AD44-4754-BFE2-FC7A-81877A7281F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -18.921183470569563;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBY";
	rename -uid "C9A4E69E-418E-BDD4-E631-D8B7FCDE1CD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputBZ";
	rename -uid "D422DDA2-40CE-F71A-7883-BA9C495E260C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleX_Forwards_inputB";
	rename -uid "D1B144DA-4AAF-B13E-64B8-6886ECF3395A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleY_Forwards_inputB";
	rename -uid "1C780667-4446-F456-4CB9-83AF6016313E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleZ_Forwards_inputB";
	rename -uid "726030E9-471E-1D10-ACBE-8C8B1C9AA2E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateX_Forwards_inputB";
	rename -uid "9523C3B0-46FF-2C21-9CDB-968248B74411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateY_Forwards_inputB";
	rename -uid "921E4168-463C-1E67-53E0-929DE20325F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateZ_Forwards_inputB";
	rename -uid "431649E0-4D92-A5F9-C85B-79B7A706D811";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_visibility_Forwards_inputB";
	rename -uid "8FD71195-4568-9E7A-C989-F39EFA91D83D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBX";
	rename -uid "0BA05B43-4116-1B1D-5CF9-B3A7F9729946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBY";
	rename -uid "34390297-4436-291C-01E9-FCB0BDB04C97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputBZ";
	rename -uid "3F272810-47CE-F2B2-2D21-1CA4C3FDB27F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleX_Forwards_inputB";
	rename -uid "92BF0D78-4A4A-6EFE-54D7-A4BBCDF198FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleY_Forwards_inputB";
	rename -uid "F0CC8111-48D3-F169-1446-3E89DB4C431C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_scaleZ_Forwards_inputB";
	rename -uid "F4EA9E02-4DE2-8262-8169-B7AE1B5442AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateX_Forwards_inputB";
	rename -uid "B3976377-45ED-8968-21E7-4A9ECF6E3BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 8.9777855568433118;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateY_Forwards_inputB";
	rename -uid "E29C7D52-4A5F-C3D5-0F4C-3BA7EE9B99F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -6.7717063153487338;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_foot_r_IK_translateZ_Forwards_inputB";
	rename -uid "E3F8C257-44BA-86CB-7EB2-30B8AE61172B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.987512702006402;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_foot_r_IK_visibility_Forwards_inputB";
	rename -uid "0B44BDD3-403C-5A7C-2BEB-56ACA982CDFD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animLayer -n "Right";
	rename -uid "C8C7B38E-4692-6604-78D3-3FBD47E27E42";
	setAttr -s 72 ".dsm";
	setAttr -s 58 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Right";
	rename -uid "7A8A380F-40A1-5180-ED5D-AAB4817A1BCF";
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Right";
	rename -uid "E96094FF-4DC1-15D3-3185-23A2A0FD46BC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Right";
	rename -uid "87144B80-4669-3DE9-6BD4-5DBC9247A683";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Right";
	rename -uid "499B7DEE-46A9-ACCF-B5B7-92A9729342B9";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Right";
	rename -uid "8D23BE7D-4E21-6872-3A2A-3F84EC9B639A";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Right";
	rename -uid "B6D072AF-4E43-2787-0F40-71B1DF26B3D3";
	setAttr ".o" 1.3679506818497158;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Right";
	rename -uid "CC7694AE-479E-BD64-2788-8CA0E09CC488";
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Right";
	rename -uid "7D0395F9-43C3-417F-3686-A8998153CF10";
	setAttr ".o" yes;
createNode animBlendNodeAdditive -n "CTRL_cog_IKFK_Switch_Right";
	rename -uid "8BB32986-42AD-6B6C-803C-8BB3DEAE95F8";
createNode animBlendNodeAdditiveRotation -n "CTRL_cog_rotate_Right";
	rename -uid "65D45083-45FE-132E-FDF7-80A97F36533D";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleX_Right";
	rename -uid "A3033E73-4D27-1728-969F-EA82A5A18986";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleY_Right";
	rename -uid "F54FB29B-46F6-078A-1108-AFB338534CD5";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleZ_Right";
	rename -uid "24629998-4D75-B212-E45E-EB8F107F3946";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateX_Right";
	rename -uid "3345EA4E-4320-7F20-E71C-00A7773EA011";
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateY_Right";
	rename -uid "942DC672-4C51-A7B1-3EEF-B69BB118A9B1";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateZ_Right";
	rename -uid "ACC2FA90-4A0B-9283-F63B-468DA8685461";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeBoolean -n "CTRL_cog_visibility_Right";
	rename -uid "117993FF-4ECF-FC7C-2689-8E8306370045";
	setAttr ".o" yes;
createNode animBlendNodeEnum -n "CTRL_head_Orient_Right";
	rename -uid "E1061D96-405A-09B9-0045-4FACF35E1C75";
createNode animBlendNodeAdditiveRotation -n "CTRL_head_rotate_Right";
	rename -uid "C5D5B994-4444-5EB9-6C24-47A80F801DD4";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleX_Right";
	rename -uid "53D2F170-468A-1692-8E0F-A885A0B1D38D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleY_Right";
	rename -uid "41DEB964-4996-321E-AB80-94BC0776691F";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleZ_Right";
	rename -uid "F86267D0-4872-28C6-8DD4-0EBBCD5CA352";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateX_Right";
	rename -uid "E2B142B8-4040-350C-5EEB-D0B614C96952";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateY_Right";
	rename -uid "8CD95775-437E-C526-3E8F-3DB34ED1EFE5";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateZ_Right";
	rename -uid "12FBF678-47AB-7425-C472-01A5418AF739";
createNode animBlendNodeBoolean -n "CTRL_head_visibility_Right";
	rename -uid "6EDC559F-44D6-FE4B-7624-14BAE75C55EE";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_l_pole_rotate_Right";
	rename -uid "3C407A24-4D5F-4829-2231-0C99D508E34A";
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_pole_scaleX_Right";
	rename -uid "7F77AE7D-45DF-119E-006E-36B29CC05BCC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_pole_scaleY_Right";
	rename -uid "7C818191-43FA-E23C-E1BB-F894EA75196F";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_pole_scaleZ_Right";
	rename -uid "DFDFF335-4CB4-6560-F27A-9682978B7C9E";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_pole_translateX_Right";
	rename -uid "F9ECAF2B-409F-30DA-4E1D-DDAE86D5D9FB";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_pole_translateY_Right";
	rename -uid "30D21413-4F48-8403-1621-83B4D7211753";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_pole_translateZ_Right";
	rename -uid "68275B68-493E-A173-DC8D-3A94C3E0FA89";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeBoolean -n "CTRL_arm_l_pole_visibility_Right";
	rename -uid "13F19A0C-40F9-26DF-A777-98B033CFA1E2";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_l_ik_rotate_Right";
	rename -uid "BCDB20AA-4EB4-C333-F20B-D4B8C51D8502";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleX_Right";
	rename -uid "561CDFB8-4C0A-237D-EEE4-E9918066E642";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleY_Right";
	rename -uid "BB002372-4396-78CE-6201-EA84C2474283";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleZ_Right";
	rename -uid "7688FD99-421C-71A0-E4A1-CCBA26EA8A1C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateX_Right";
	rename -uid "D548C370-411B-1F5E-0290-3D93A6ABFF2C";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateY_Right";
	rename -uid "36203B39-4165-3CE6-4783-538DA95E9C61";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateZ_Right";
	rename -uid "F5316D70-4B1B-1316-4DA8-D396AEC00E97";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeBoolean -n "CTRL_arm_l_ik_visibility_Right";
	rename -uid "52A3002C-4346-F504-6E7C-99A02642BC69";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_chest_IK_rotate_Right";
	rename -uid "8698181B-48EE-191B-0DE7-D3BEE4079CFC";
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleX_Right";
	rename -uid "1EA0C361-4BCD-6604-A421-F9ACEBF8310D";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleY_Right";
	rename -uid "73FFCC03-4E85-DD73-541E-E688F9087B79";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleZ_Right";
	rename -uid "9BA7A0C1-41A2-6025-BA87-9EB50C652AF4";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateX_Right";
	rename -uid "C06ACD8A-4D23-37F5-5F58-5A81361A2760";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateY_Right";
	rename -uid "72626E70-456B-FBF8-AF22-A0B0E890E528";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateZ_Right";
	rename -uid "32ADDDA2-45EC-ACE9-6EDD-1696B2E48BD7";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeBoolean -n "CTRL_chest_IK_visibility_Right";
	rename -uid "E5EDAEF8-4E2F-7362-83CB-2B82326E3388";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_r_ik_rotate_Right";
	rename -uid "26634A03-4357-AB52-4766-D795F1A3CCE7";
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleX_Right";
	rename -uid "82385240-499E-338D-1F4E-FA9654DE588C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleY_Right";
	rename -uid "80654201-4CFA-F14E-695D-2AB37BD41DFA";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleZ_Right";
	rename -uid "731F2564-4BF4-733C-8F64-C38E12477F12";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateX_Right";
	rename -uid "4E91A10C-443A-E1D2-B4FB-779FE8CF9560";
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateY_Right";
	rename -uid "274C2B0E-49FA-60BA-7DAC-96B2EE25C573";
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateZ_Right";
	rename -uid "788A96A3-4B64-F0ED-031D-888AA7F60D77";
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeBoolean -n "CTRL_arm_r_ik_visibility_Right";
	rename -uid "31E938C5-4FFB-2886-FD75-08A238E89BA7";
	setAttr ".o" yes;
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBX";
	rename -uid "47A99B34-445B-6B83-006C-049421D4DA39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBY";
	rename -uid "2086848B-4B4F-5F2F-19B3-0AA103A25EB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Right_inputBZ";
	rename -uid "66309724-4D9D-94DD-7709-B9A07BB39503";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 29.999999999999996;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Right_inputB";
	rename -uid "0EF60DA7-4F2A-B66D-39B9-E49DC7B22AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Right_inputB";
	rename -uid "CB532832-4897-C929-2500-DDBE7E206A55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Right_inputB";
	rename -uid "25CB378C-4349-4F34-1E85-318EA921EABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateX_Right_inputB";
	rename -uid "27B35B3E-4BC1-158B-ECDB-58BA963548B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Right_inputB";
	rename -uid "10E20F22-40D9-24B7-E47F-E7AB2A5AEC58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Right_inputB";
	rename -uid "BFB3D80F-43C7-DE81-8E04-ECAA3F19C778";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Right_inputB";
	rename -uid "B6498A7E-4A32-54F9-E09C-1FBB821CCBE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Right_inputB";
	rename -uid "D79DA335-404B-C8C6-E4A1-018021023103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBX";
	rename -uid "3CC205C7-48D4-C770-8849-8EBEB997013F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 19.896908487704806;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBY";
	rename -uid "65C99725-4AE3-E4C6-1AA4-FA80B8A3E1B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -9.4816257688056176;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Right_inputBZ";
	rename -uid "D77232FD-409B-4AD3-F52F-AA80EDAF9631";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -10.617421546780298;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Right_inputB";
	rename -uid "4CCE4013-40F2-A072-E7B2-F786EF2A8DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Right_inputB";
	rename -uid "1AF05E45-488A-70DB-146C-879B4B2259C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Right_inputB";
	rename -uid "F6DA152B-4AF7-7FF9-5862-57A371B35F26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateX_Right_inputB";
	rename -uid "284B9D34-4E3B-0865-B41D-B7BD40FDCDC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.011554137008341153;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Right_inputB";
	rename -uid "941A8D30-4168-F33A-641B-48A8F2B9A972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.05104826557666442;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Right_inputB";
	rename -uid "9EB6A309-42F7-7390-1810-5BAB3474DFA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -2.0117850881620143;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_visibility_Right_inputB";
	rename -uid "41127928-4A89-35FE-F69A-B3B5ECBB0A77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_head_Orient_Right_inputB";
	rename -uid "60AF26E2-42C7-BB88-2406-9F88F6D9EDA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBX";
	rename -uid "434C6872-49D5-A051-5318-638397E1B80C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -23.172369676177983;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBY";
	rename -uid "483A0E83-4068-8DD4-64AB-C296496F13CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 4.4172202463706629;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Right_inputBZ";
	rename -uid "1EB25D12-4676-C3E6-8172-A897013F5412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 2.3918868967705356;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Right_inputB";
	rename -uid "8C5D7911-4672-8F09-05D0-5299EF5234B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Right_inputB";
	rename -uid "B0C1D89C-45CC-BDC5-53C7-2D8F570AC669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Right_inputB";
	rename -uid "24EECF18-4479-D68C-D09F-17A022C6E93A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateX_Right_inputB";
	rename -uid "00A59408-44D9-5E43-8761-388F4649E241";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Right_inputB";
	rename -uid "3EAC5DA3-4DE6-719A-22B5-50AB87264C03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Right_inputB";
	rename -uid "2EB6C378-4124-F837-623C-A7B8F1C203C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Right_inputB";
	rename -uid "BFB0BAF3-4A04-44A3-1817-C999D1B6B07C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBX";
	rename -uid "8CB59BA9-4A62-8D93-3FCF-47BC3D7A48C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBY";
	rename -uid "C68E00D4-432A-FAC0-8AA3-C2BD6D0818D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputBZ";
	rename -uid "F66F4491-4DDB-3E2B-8209-00AFD672A64F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleX_Right_inputB";
	rename -uid "3AB05F33-4B3D-2B0D-7611-479CDE3FD336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleY_Right_inputB";
	rename -uid "65FDA171-4F8E-DBDB-F3DA-33826701D6AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_scaleZ_Right_inputB";
	rename -uid "9DEB20F5-4ECE-C230-C399-968E9318170C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateX_Right_inputB";
	rename -uid "EB09E03E-4391-323C-009F-C88D6D88CA7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 12.028041838883009;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateY_Right_inputB";
	rename -uid "E2B249CF-4E2B-A9CB-57DA-9D8714611597";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -5.3085453103201505;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_pole_translateZ_Right_inputB";
	rename -uid "6F253E51-4738-E3E1-5D96-96AC1933E960";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 62.479360330301219;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_pole_visibility_Right_inputB";
	rename -uid "5FCDFC35-487D-8F3A-30AC-6F90F6926C02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBX";
	rename -uid "4CED263D-40F3-345A-EDD0-AA8ABEB75DE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -51.535110886633362;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBY";
	rename -uid "64821C42-44FC-4F7E-6EB6-FDB5DA8A0CE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 26.232764323983147;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Right_inputBZ";
	rename -uid "A5F6F900-47B5-6C2A-CD7A-A7A4485998D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 46.26615037996195;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Right_inputB";
	rename -uid "163880E1-4805-1009-32BD-3C9FB8283A0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Right_inputB";
	rename -uid "068F4DB3-45FD-B70C-82EB-ACB884683825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Right_inputB";
	rename -uid "466423F0-4F0E-90D7-650D-D4A4103176A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Right_inputB";
	rename -uid "F41DCD64-4291-4857-7ABC-F9AB59426920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.2135145109225292;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Right_inputB";
	rename -uid "2634492B-4001-EB0F-3F7A-B386E8B67CE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -14.784145687200464;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Right_inputB";
	rename -uid "31C6DC13-450D-80BF-DF02-E4B45D0C3B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.17140967703379317;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Right_inputB";
	rename -uid "C9760917-4928-1A07-86B3-5F9D0F0976D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBX";
	rename -uid "B1082C23-416E-4BEE-50C8-309985B07C19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1.4099029223016659;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBY";
	rename -uid "5963083D-4384-0937-98BC-49A897949771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.7504630315711829;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Right_inputBZ";
	rename -uid "01258AB4-461D-8E23-F0B4-A386142324A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -16.550128088696933;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Right_inputB";
	rename -uid "E4A4EA43-45D4-CADD-BE1E-B49C24C26303";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Right_inputB";
	rename -uid "1E9CAB6C-4EA2-968F-CF48-77B809A6AB99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Right_inputB";
	rename -uid "7DB079CB-4DD4-26CD-60C6-DF91E55C2843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateX_Right_inputB";
	rename -uid "CA1E9A37-424F-F870-C8AE-C3BB6FB459C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.23783055369168077;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Right_inputB";
	rename -uid "6E038811-4201-0FE5-9127-54B84909B8A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.96927941768775239;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Right_inputB";
	rename -uid "26A75877-419B-1397-DB83-738FB67C2143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -1.7475562087180556;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Right_inputB";
	rename -uid "AADC86A8-4E47-13F6-28E7-34B80606AC62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBX";
	rename -uid "C35429CB-478E-54ED-61E6-2CA99A655758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBY";
	rename -uid "348FF173-4CFC-F7D8-18DE-3ABEC3574664";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputBZ";
	rename -uid "2E8C4272-4E0A-0744-8C02-8B8F9202E784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleX_Right_inputB";
	rename -uid "D9809D37-411D-8AB5-A1AC-309A13DCE250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleY_Right_inputB";
	rename -uid "D4767963-47D1-8844-5D79-BAAE68994C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleZ_Right_inputB";
	rename -uid "E9361B01-4912-7CE8-C96B-C8B09D587F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateX_Right_inputB";
	rename -uid "3AF14BCA-4039-4658-59C2-D2AD1B1A6E29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.0893830625857461;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateY_Right_inputB";
	rename -uid "50B88430-4863-67EE-E132-A2B140DDC3F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 12.040059218899856;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateZ_Right_inputB";
	rename -uid "12BA5733-45DC-1B39-DCF5-83983B887949";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 2.2121481834651746;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_visibility_Right_inputB";
	rename -uid "83B1C2C3-45CB-132E-4CBD-EA93926821F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animLayer -n "Left";
	rename -uid "0AE6E53B-4BE9-CD2B-F02C-26B443951BFD";
	setAttr -s 82 ".dsm";
	setAttr -s 66 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Left";
	rename -uid "5C8464AC-410D-D68F-2060-F4ABA04319E1";
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Left";
	rename -uid "962E5CD9-4316-78CD-F2C7-59B6B0C37301";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Left";
	rename -uid "CE11B8FD-4DD6-F422-8BD9-1693A2D09892";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Left";
	rename -uid "013BBFC4-467C-251A-34F3-9F9B03897E8C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Left";
	rename -uid "695FCD1B-4D68-F3C0-4CFA-B0AB2B243BA3";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Left";
	rename -uid "F473BFC6-4664-040D-2CE9-2FB96FBBB945";
	setAttr ".o" 1.3679506818497158;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Left";
	rename -uid "5B852B1E-4FE9-834D-9C5C-FD9217DACAB2";
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Left";
	rename -uid "914856EE-4E80-5985-9AE6-65B5B693EFF9";
	setAttr ".o" yes;
createNode animBlendNodeAdditive -n "CTRL_cog_IKFK_Switch_Left";
	rename -uid "510E1C27-40CE-FD7A-7BA4-E5A9CFD4D6B1";
createNode animBlendNodeAdditiveRotation -n "CTRL_cog_rotate_Left";
	rename -uid "EF57F566-4198-16B4-CB68-D5AC7718C7E3";
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleX_Left";
	rename -uid "6E9DFCAC-471F-F6EC-1632-41B88B4595F3";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleY_Left";
	rename -uid "27E174FD-47F9-8027-AEAE-7295401B54D1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_cog_scaleZ_Left";
	rename -uid "BFA0D7A3-44CC-810D-FBD9-A9BD89F77CD3";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateX_Left";
	rename -uid "81FC4BFA-4E85-EA0C-4260-038A0EB1CE2E";
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateY_Left";
	rename -uid "6E8BB8CE-4C22-4D24-EB59-0EB1C8D857A7";
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "CTRL_cog_translateZ_Left";
	rename -uid "74C685D1-4D7A-424A-413C-7E8CB066D5DF";
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeBoolean -n "CTRL_cog_visibility_Left";
	rename -uid "58B43637-419E-D498-6136-C1A3BC8DD965";
	setAttr ".o" yes;
createNode animBlendNodeEnum -n "CTRL_head_Orient_Left";
	rename -uid "6FE7A169-4F12-B4AA-5026-E79ED22E2CB0";
createNode animBlendNodeAdditiveRotation -n "CTRL_head_rotate_Left";
	rename -uid "8DDAE76E-4076-2432-69ED-D78802330AF6";
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleX_Left";
	rename -uid "97AAEBE9-4C41-0F30-9006-77913643631C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleY_Left";
	rename -uid "63DCF48C-468D-D4C7-60E9-818CF4997C95";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_head_scaleZ_Left";
	rename -uid "C7E41A18-4E05-D052-2FF1-24A2D31FA67A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateX_Left";
	rename -uid "533434B3-40D8-B879-9641-0EA9033A95AE";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateY_Left";
	rename -uid "CCDE9E6D-4604-57BE-ADA7-7F8F9DF75E7A";
createNode animBlendNodeAdditiveDL -n "CTRL_head_translateZ_Left";
	rename -uid "2ED94892-4027-CC78-9749-AA93E6FF5A0E";
createNode animBlendNodeBoolean -n "CTRL_head_visibility_Left";
	rename -uid "5061F82D-475B-A1E2-DAC4-6BA864BAF629";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_l_ik_rotate_Left";
	rename -uid "C53EB493-49AE-7B38-8014-76813B199A1C";
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleX_Left";
	rename -uid "B4419032-47E8-9CCB-38C7-FFB5B14BB3CF";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleY_Left";
	rename -uid "BF62444B-4616-CD26-C580-3E9806DD666B";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_l_ik_scaleZ_Left";
	rename -uid "A121BA76-4B88-5294-1927-12A93BB45A8E";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateX_Left";
	rename -uid "232DB60F-431D-69DD-74A6-CDA1BC88AE03";
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateY_Left";
	rename -uid "7512A966-4595-5ED8-0D35-F3BC04ACA1C2";
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_l_ik_translateZ_Left";
	rename -uid "9685DA72-4D8D-145E-C174-2B862A300EE6";
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeBoolean -n "CTRL_arm_l_ik_visibility_Left";
	rename -uid "C3FFEBB5-4579-E872-8D81-CFB75F264B51";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_chest_IK_rotate_Left";
	rename -uid "0879C2A9-40EC-1C0F-761F-F287A33E6291";
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleX_Left";
	rename -uid "8B181C08-4387-75F8-B027-E5BFA7066606";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleY_Left";
	rename -uid "197A89A4-4E0D-7D0D-271E-A093FBF8A5A7";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_chest_IK_scaleZ_Left";
	rename -uid "6C53573C-4B3E-88E5-EA2E-9D8DB007AFD6";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateX_Left";
	rename -uid "AFF16E80-41E7-C634-0C41-498937D45C3F";
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateY_Left";
	rename -uid "A08108E0-447F-1BCC-4FF9-C8B2B3BC819F";
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "CTRL_chest_IK_translateZ_Left";
	rename -uid "682305AE-4DBC-6F2F-8B9E-918D7A25FEF9";
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeBoolean -n "CTRL_chest_IK_visibility_Left";
	rename -uid "34A80FB1-453D-11CC-07D7-8FB0971B5168";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_r_ik_rotate_Left";
	rename -uid "DED96990-4A8D-4BAB-D519-EBB60BA61D1C";
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleX_Left";
	rename -uid "5D285FAE-40E5-68F6-76F3-3F84F48E63E5";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleY_Left";
	rename -uid "C10D6B1A-4601-B5F0-1A84-75B17A38C299";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_ik_scaleZ_Left";
	rename -uid "8743A9AB-4959-4237-478B-159501CB6757";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateX_Left";
	rename -uid "83CFBFB6-453F-E4A0-77E1-BF81D225AC7A";
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateY_Left";
	rename -uid "71BE9914-4239-4CFB-64BB-F790B16A03BC";
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_ik_translateZ_Left";
	rename -uid "9FEC8DE8-4B9B-7AAC-8AAD-3F8F8A0071B1";
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeBoolean -n "CTRL_arm_r_ik_visibility_Left";
	rename -uid "F3B994E4-465D-6DB0-696F-30A97558E03F";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_arm_r_pole_rotate_Left";
	rename -uid "5ECD07BA-472D-E540-98F7-13B1E7F55F81";
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_pole_scaleX_Left";
	rename -uid "134E8EBB-4ACE-B959-88F4-10BB5DAE2FF1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_pole_scaleY_Left";
	rename -uid "335AAE36-4B12-BCB0-7945-D6A167ED85DD";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_arm_r_pole_scaleZ_Left";
	rename -uid "CF3ACB8B-4A98-5E91-3AED-BA8AB99D61AC";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_pole_translateX_Left";
	rename -uid "536469ED-43E6-885C-E30C-AE855C0013B9";
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_pole_translateY_Left";
	rename -uid "6341D9B6-457B-A536-5B9E-4AAFDF46D4B3";
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "CTRL_arm_r_pole_translateZ_Left";
	rename -uid "3FFFB101-4CAA-F3E8-A7C5-A8B7ADF03E4B";
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeBoolean -n "CTRL_arm_r_pole_visibility_Left";
	rename -uid "B69E1B6D-477A-FC18-D2E9-B7B38C85B54B";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveRotation -n "CTRL_spine_IK_rotate_Left";
	rename -uid "F8919DE2-4FD4-B22F-2DFA-3998D15C867C";
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleX_Left";
	rename -uid "3BD4B4A4-4454-A793-629B-8D89F2391D1A";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleY_Left";
	rename -uid "21FF70D8-4D0F-5DAE-7EA8-43A616D30A20";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_spine_IK_scaleZ_Left";
	rename -uid "D4D63C9F-405B-1B17-D971-F1ADF06DA36C";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateX_Left";
	rename -uid "F3B3AC6B-4BA7-D43A-3717-2DB418E4664F";
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateY_Left";
	rename -uid "0B83243D-4041-00B1-1B1E-3A9122DC0E0F";
createNode animBlendNodeAdditiveDL -n "CTRL_spine_IK_translateZ_Left";
	rename -uid "89BA4054-4743-6444-ECBC-FE8144601720";
createNode animBlendNodeBoolean -n "CTRL_spine_IK_visibility_Left";
	rename -uid "F26DB9C6-43C3-BDBA-F87A-7C8FD3B6912B";
	setAttr ".o" yes;
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBX";
	rename -uid "549A97F1-480C-D24D-FCE5-319E9299A52C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0.058703861745769477;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBY";
	rename -uid "464747B5-4086-E491-002A-A4A91B7062A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -0.21945541348255607;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_ship_rotate_Left_inputBZ";
	rename -uid "491EAFE8-4794-3C06-568F-2EB135E264F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 -29.999999999999996;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleX_Left_inputB";
	rename -uid "887E7DAA-4B4E-F420-9F9E-AAB6458407C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleY_Left_inputB";
	rename -uid "14957203-406D-E661-C77C-569719FF6B5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_scaleZ_Left_inputB";
	rename -uid "ADB2E30A-41A5-A62A-C8DE-9A9DC078C5C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateX_Left_inputB";
	rename -uid "8112252B-4327-13A4-6BDB-D489706AD3E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateY_Left_inputB";
	rename -uid "6462B659-4CA3-EA8C-D7A8-85A967410D88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_ship_translateZ_Left_inputB";
	rename -uid "ADE68D70-4A98-5351-F2D0-20A5B73FBB47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_ship_visibility_Left_inputB";
	rename -uid "4BD26FAB-4E55-A75A-3A6B-ABABCD4B0739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  0 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Left_inputB";
	rename -uid "BD23479B-4048-C7B2-C165-1CAFA49F0434";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBX";
	rename -uid "C4C0D6F1-401C-F7DC-A311-D8AA3146E561";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 9.3760387568846451;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBY";
	rename -uid "EBFECD3F-43A3-B24B-4AC3-8FA9AA8A9727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 8.1118299939750251;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_cog_rotate_Left_inputBZ";
	rename -uid "97C8FCD7-42B9-7FF1-9BEA-578F9708D9AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 13.62163116431347;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleX_Left_inputB";
	rename -uid "08D8E745-4EBA-D36F-3A98-FDA29884BD87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleY_Left_inputB";
	rename -uid "FE91A45E-45B2-4C21-4E4A-ADABAB69F915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_scaleZ_Left_inputB";
	rename -uid "5A823125-45E8-74FA-5335-BBA1F8038859";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateX_Left_inputB";
	rename -uid "B9B25C1E-409C-5CEC-0702-C69D28028702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.047661108282132471;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateY_Left_inputB";
	rename -uid "EF0ACEBA-4AFC-5B9E-A2D4-29920D2DA557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.13140741279515211;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_cog_translateZ_Left_inputB";
	rename -uid "A6D5BED9-4125-12B6-0274-17910EAA175F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.9775772434438323;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_cog_visibility_Left_inputB";
	rename -uid "67A74A0E-4D4B-9E35-4764-4199B4E9447D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_head_Orient_Left_inputB";
	rename -uid "296771EE-44E7-A59F-BFDB-8AB5BCAFB55B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBX";
	rename -uid "0F52C960-4421-E630-DF13-BBB74C01C78F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -14.691106020740987;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBY";
	rename -uid "9A4CFD71-46A9-AA39-BB09-F788EFD33AF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -9.9392333795734899e-16;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_head_rotate_Left_inputBZ";
	rename -uid "1A32628F-4CE3-8178-A563-3D9463886D0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -7.1562480332929135e-15;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleX_Left_inputB";
	rename -uid "84B181B5-42E8-9CED-8033-A2B2996DB4D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleY_Left_inputB";
	rename -uid "F2B65F11-40BB-D67E-24D3-E7A1B47C299B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_scaleZ_Left_inputB";
	rename -uid "56E75531-487E-2E68-D005-AAB0E46BB725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateX_Left_inputB";
	rename -uid "41F8FC7D-429D-466A-63B5-149790D5FB62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateY_Left_inputB";
	rename -uid "22598C6E-4C54-FA08-5AEB-ACAF00B00E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_head_translateZ_Left_inputB";
	rename -uid "5705CE90-4B21-F6EC-4CF1-86ADB31A0622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_head_visibility_Left_inputB";
	rename -uid "DAA3EDA2-4E2F-A86E-3717-53BD7161827C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBX";
	rename -uid "B6A6EAAD-4840-6A3A-6ED9-999BA3B4F9F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBY";
	rename -uid "B7633EE4-4EF6-0C34-E7BD-C59BC5FD21BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Left_inputBZ";
	rename -uid "D5CDD8C6-4017-4583-2AB0-B68CA6199341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Left_inputB";
	rename -uid "1B81FC7E-4F07-FEDD-A494-E0BAA5C15DCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Left_inputB";
	rename -uid "C4D48614-47B4-DDD7-0941-AB858B82D331";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Left_inputB";
	rename -uid "37EAFA82-40DD-75FE-7CEE-09ADD17674B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Left_inputB";
	rename -uid "5AFE5C27-4567-BEBF-1187-10AB6E2B7A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -4.0032588116256811;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Left_inputB";
	rename -uid "8E513EF2-491E-87B6-9219-DFAF7AACD939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.0903875834396359;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Left_inputB";
	rename -uid "55DA45B0-4736-7114-486E-39AC10CD11D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -0.21045895056734309;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_l_ik_visibility_Left_inputB";
	rename -uid "C8CAD2C3-4E63-4296-7DFD-8892B5EDDCC1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBX";
	rename -uid "749B77CC-4196-D8CF-BBAF-BC955AF2667D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.1341949238523155;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBY";
	rename -uid "C73F3C96-4158-8831-BC8C-CA907CCE4308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_chest_IK_rotate_Left_inputBZ";
	rename -uid "3B1B8475-4C7A-936F-06B3-0D9D09A5EC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 15.814694007844428;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Left_inputB";
	rename -uid "4F51867F-40FE-D6AE-99E6-D1949E2CA360";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Left_inputB";
	rename -uid "8CD6396E-4FBD-589E-2196-D8B0845065B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Left_inputB";
	rename -uid "A5B108ED-4CB0-74AA-CE1F-EAAB25E41720";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateX_Left_inputB";
	rename -uid "4F7B4A4E-4988-2DE0-ED1F-92899B9323F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateY_Left_inputB";
	rename -uid "9A9115F1-4603-64CD-8B5E-2ABAFDCF6C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Left_inputB";
	rename -uid "5EF3864F-4632-5888-F6D2-0ABC3C5046AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_chest_IK_visibility_Left_inputB";
	rename -uid "CD6B0546-41DA-156A-F097-5A97A27D35DB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBX";
	rename -uid "B8FFB54C-4156-A87F-52CB-4AA85CADA58D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 48.296623366951287;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBY";
	rename -uid "7B20298E-410C-E090-2D29-9AA8F3129103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -26.646292178707437;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Left_inputBZ";
	rename -uid "9D6B8E98-4770-937D-6043-2E818C6F4A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 75.379145238634095;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleX_Left_inputB";
	rename -uid "75B72A71-4955-71A8-0B74-2085778520FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleY_Left_inputB";
	rename -uid "33C3BD75-4BC8-F28B-14F8-CAB619B3DFD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_scaleZ_Left_inputB";
	rename -uid "DF1F12F8-4B64-F3EC-E9F3-F3B724B0DC77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateX_Left_inputB";
	rename -uid "38714816-4132-064C-58EE-EDA076AB5FDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 4.9858648272983181;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateY_Left_inputB";
	rename -uid "28D3CE14-4501-2CAE-FB21-DA85944936B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -8.8340587455863968;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_ik_translateZ_Left_inputB";
	rename -uid "7CCC8987-4023-33C6-F59F-F9A2A41D4097";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0.18547757587086977;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_ik_visibility_Left_inputB";
	rename -uid "4B6F519D-4B8C-B852-8B9C-E79BEA63ACFE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBX";
	rename -uid "4E36857D-4D7A-42B3-0329-E3AF5B354AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBY";
	rename -uid "0057D80A-4C89-C7AD-73EB-97A7AAC5D9AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputBZ";
	rename -uid "DAAA37F1-4731-4109-0E8F-C49C2B50C526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleX_Left_inputB";
	rename -uid "43946122-4DFC-3F31-CF72-6B9DDBC6DCA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleY_Left_inputB";
	rename -uid "A96B30D7-4A89-F2A5-75BB-A4BAC3CCF180";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_scaleZ_Left_inputB";
	rename -uid "9EC9F78F-4F0F-33BF-98A5-63A2EF1AA65D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_pole_translateX_Left_inputB";
	rename -uid "3B97595D-4F98-2D4E-1FF8-1085E93BD073";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -22.575230580490558;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_pole_translateY_Left_inputB";
	rename -uid "4EDAE1FB-4870-210E-9B86-6F97B43EB2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 -11.701423057089864;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_arm_r_pole_translateZ_Left_inputB";
	rename -uid "EA301D06-42DE-140F-FA54-C9ABACF6035E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 49.526145589262519;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_arm_r_pole_visibility_Left_inputB";
	rename -uid "B3EB442F-4773-36CF-EE80-D8B12329298B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBX";
	rename -uid "33777E90-4F20-B3A8-7AC5-0082D4E63807";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 7.1341949238523155;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBY";
	rename -uid "075071D0-4722-3B03-FB2C-958AE1A3D371";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "CTRL_spine_IK_rotate_Left_inputBZ";
	rename -uid "BDD0395A-4FF3-2808-CE35-4F8B1CC48F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 15.814694007844428;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleX_Left_inputB";
	rename -uid "29D89694-45D3-3A67-C97E-CCB612C38502";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleY_Left_inputB";
	rename -uid "6EEBB7F9-40FA-9D32-C99D-D084CBA764A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_scaleZ_Left_inputB";
	rename -uid "BE1C22D6-4656-679E-22DE-42859D39EEF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateX_Left_inputB";
	rename -uid "879797B2-4994-4FA1-B743-60B89EAB2493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateY_Left_inputB";
	rename -uid "60B5C1E3-4ED3-872F-7DE4-B9AA87A938B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTL -n "CTRL_spine_IK_translateZ_Left_inputB";
	rename -uid "8230F52A-44E8-EAEB-094D-E9BD8647A0D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "CTRL_spine_IK_visibility_Left_inputB";
	rename -uid "3FABFFAB-429E-2B43-3E43-9A9EB6CBCDB8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  2 1;
	setAttr -l on ".ktv";
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputAX";
	rename -uid "C4AE9451-4976-8F05-0F77-0D9CBF023F91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputAY";
	rename -uid "D5418DC7-409D-473F-D691-C49B6551957F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_foot_l_IK_rotate_Forwards_inputAZ";
	rename -uid "20A0FCA5-4052-A7D5-DD37-EBAC281D790F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_foot_l_IK_scaleX_Forwards_inputA";
	rename -uid "BDCAA26F-4ACD-A66B-F6CD-7A964D322DB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_foot_l_IK_scaleY_Forwards_inputA";
	rename -uid "5A0AB9EA-482B-FE65-719C-6B9414D8B2F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_foot_l_IK_scaleZ_Forwards_inputA";
	rename -uid "BAA70AA4-4541-C0B4-E31D-CEAEFBCBA3E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_foot_l_IK_translateX_Forwards_inputA";
	rename -uid "16B3971B-433D-60E2-139F-13A55750E454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 3.9234979515293724;
createNode animCurveTL -n "CTRL_foot_l_IK_translateY_Forwards_inputA";
	rename -uid "51ECA10E-4676-B206-AFFF-7A85C7D7F8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 19.480556366999902;
createNode animCurveTL -n "CTRL_foot_l_IK_translateZ_Forwards_inputA";
	rename -uid "9D326C83-4801-2543-8453-298B42D18F88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 40.818313214920593;
createNode animCurveTU -n "CTRL_cog_IKFK_Switch_Forwards_inputA";
	rename -uid "13720C74-4900-0F9E-B21B-80B6DC70A9E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputAX";
	rename -uid "2369330C-4CE2-DEEA-A3AC-A8B52B46515E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -31.182622079585563;
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputAY";
	rename -uid "2638A4C8-48BD-C78C-7788-CA87E781A94D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_cog_rotate_Forwards_inputAZ";
	rename -uid "13E26F0B-4E4C-D953-E273-E495702BAC0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_cog_scaleX_Forwards_inputA";
	rename -uid "A597B27D-4287-0EE3-E713-2081E201489E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_cog_scaleY_Forwards_inputA";
	rename -uid "6044746B-4AF2-5177-A6E0-15B91B8345FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_cog_scaleZ_Forwards_inputA";
	rename -uid "F0459243-47C2-51D0-FDA0-EFB4E0401E41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_cog_translateX_Forwards_inputA";
	rename -uid "57C5AFEB-4231-7819-1790-60A6461B9D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_cog_translateY_Forwards_inputA";
	rename -uid "62E7F04A-4D22-79C0-2C94-5D90E419965D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 17.120646586352922;
createNode animCurveTL -n "CTRL_cog_translateZ_Forwards_inputA";
	rename -uid "EDA66345-46BF-19CF-A081-D2BE7E83CC60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 42.732596728486634;
createNode animCurveTU -n "CTRL_cog_visibility_Forwards_inputA";
	rename -uid "6E3378FF-410C-2617-2A2B-FA9801C8EB4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_head_Orient_Forwards_inputA";
	rename -uid "4DBAB1EB-481B-B6D9-6649-F2BB1940FF79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputAX";
	rename -uid "1F43EB11-4B4B-C667-C31A-9198B4DF19AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 26.442159716050732;
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputAY";
	rename -uid "244F5758-45EE-8784-2AAA-2189875731DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -1.1357852912039743;
createNode animCurveTA -n "CTRL_head_rotate_Forwards_inputAZ";
	rename -uid "9D2ED1DB-4535-6579-84D0-A7B1808F4F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -2.0148425256581382;
createNode animCurveTU -n "CTRL_head_scaleX_Forwards_inputA";
	rename -uid "41A189DA-4E3F-344F-A5A2-77AD4BA6A47F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_head_scaleY_Forwards_inputA";
	rename -uid "E02493CB-4DD1-8604-8205-77B238EEBB78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_head_scaleZ_Forwards_inputA";
	rename -uid "906756E9-4A06-1C33-588D-8AAF40A64103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_head_translateX_Forwards_inputA";
	rename -uid "E133CF6E-4ADF-1D95-3A34-68827352A2C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_head_translateY_Forwards_inputA";
	rename -uid "4E87A81D-4EB1-E97D-B842-FC87DB4F9E54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_head_translateZ_Forwards_inputA";
	rename -uid "09EC555B-49F6-87F3-0EA0-EE894C930130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_head_visibility_Forwards_inputA";
	rename -uid "0197AC39-467D-D62A-573D-FF8BF56EE305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_leg_r_IKFK_IKFK_Switch";
	rename -uid "2029FDEE-4FE0-D7A4-7DAE-98AC019D670D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_leg_r_IKFK_translateX";
	rename -uid "F5BA8559-4ADC-28FF-DE17-E1AC0665706B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.46157761800440472;
createNode animCurveTL -n "CTRL_leg_r_IKFK_translateY";
	rename -uid "7AAD8641-491D-49E6-E389-CAA5EAD59E49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 33.321406352951783;
createNode animCurveTL -n "CTRL_leg_r_IKFK_translateZ";
	rename -uid "35F15AA3-497C-1F54-F05C-30B8B03D24E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1.2591253970925365;
createNode animCurveTU -n "CTRL_leg_r_IKFK_visibility";
	rename -uid "38D127B9-42E7-98AC-4738-42A3C99EAAC8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputAX";
	rename -uid "1FDD68F9-474E-3605-678C-97AF38A4C542";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputAY";
	rename -uid "7365C179-40AD-CA90-27BD-FBB6B74A5185";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_arm_l_pole_rotate_Right_inputAZ";
	rename -uid "2D80508C-4102-30CA-2470-C084A228B940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_l_pole_scaleX_Right_inputA";
	rename -uid "3F159B20-4974-C689-42A6-A4ACB2B74004";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_pole_scaleY_Right_inputA";
	rename -uid "9D9EEC1A-4082-121B-5C96-42B425C1DEBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_pole_scaleZ_Right_inputA";
	rename -uid "24C17844-4665-360D-F4EB-69967C1209A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_l_pole_translateX_Right_inputA";
	rename -uid "7D75D3D5-4608-6FC7-FAD7-31927D4476CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.094454297336254517;
createNode animCurveTL -n "CTRL_arm_l_pole_translateY_Right_inputA";
	rename -uid "B6CDDAFE-4244-E28D-8131-BEB022541C50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 8.3107816815941185;
createNode animCurveTL -n "CTRL_arm_l_pole_translateZ_Right_inputA";
	rename -uid "3682E1CB-4605-EC88-CE30-999C89523C67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 7.12276893256238;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputAX";
	rename -uid "306E9152-4E9D-C8D0-6E82-53AC5AEA3E52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 282.83927719201836;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputAY";
	rename -uid "D2DDA5E2-4C23-EAB6-EAEF-83AEE7F7BDB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -70.896557113158821;
createNode animCurveTA -n "CTRL_arm_l_ik_rotate_Forwards_inputAZ";
	rename -uid "210A3E24-47EF-483B-09B7-46961F7192F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -281.79314300218812;
createNode animCurveTU -n "CTRL_arm_l_ik_scaleX_Forwards_inputA";
	rename -uid "01740D2D-41BA-0F0C-9A66-E3B88FD802C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_ik_scaleY_Forwards_inputA";
	rename -uid "2EB3E36F-419C-4FE6-6C64-C1A97C7D3059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_ik_scaleZ_Forwards_inputA";
	rename -uid "9AA8F3F8-47F1-80EF-B97D-23B50D040A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_l_ik_translateX_Forwards_inputA";
	rename -uid "0C1840B0-4B9C-567B-9534-0087A2BF2B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -15.603718582025152;
createNode animCurveTL -n "CTRL_arm_l_ik_translateY_Forwards_inputA";
	rename -uid "965E6D0C-4197-47B8-FD42-E2B7287144D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 16.940860047964492;
createNode animCurveTL -n "CTRL_arm_l_ik_translateZ_Forwards_inputA";
	rename -uid "FB3E1874-4B27-2685-5BEF-72B37C53CA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 46.796849321356355;
createNode animCurveTA -n "CTRL_root_rotateX";
	rename -uid "6F919FA6-47CD-9A38-87EC-4588C464746A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_root_rotateY";
	rename -uid "F8F812B6-4431-FF26-A721-98A7144C6315";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_root_rotateZ";
	rename -uid "0D29E4DE-4DAA-855F-BB70-F9AF949CE461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_root_scaleX";
	rename -uid "3FF1F3E3-4DB3-7211-E3BD-8AA70B00FAF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_root_scaleY";
	rename -uid "CFA24406-407D-42AA-E776-3D83E1C3FBE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_root_scaleZ";
	rename -uid "EB8F83A2-4145-C3A4-D4CB-B78A36DDD815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_root_translateX";
	rename -uid "F473C508-4571-F0E9-8617-038F5B04B2ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_root_translateY";
	rename -uid "1581F6D5-48DE-0C11-8CF8-4199C0D262F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_root_translateZ";
	rename -uid "40371C24-4EC0-31E0-DF34-4FBE259063B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_root_visibility";
	rename -uid "249E6A82-434B-F6E1-8EA2-35A5683AA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputAX";
	rename -uid "34FA6796-48BA-5DDA-C48C-EB8D69D4F1DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputAY";
	rename -uid "888E8FED-44E2-025B-75A0-1AA151D93B9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_chest_IK_rotate_Forwards_inputAZ";
	rename -uid "B3AFF34E-4BD8-7584-0F42-278E74453357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_chest_IK_scaleX_Forwards_inputA";
	rename -uid "0B79A95B-425A-BB52-A1E3-2CAF4A8B0CBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_chest_IK_scaleY_Forwards_inputA";
	rename -uid "06EC992E-4212-AF9C-C165-3880668D3713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_chest_IK_scaleZ_Forwards_inputA";
	rename -uid "2143F4EB-4424-7DB9-6161-45AA28E4A1A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_chest_IK_translateX_Forwards_inputA";
	rename -uid "E8E1AFEF-45F1-49B9-4E84-CD8BB885EA84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -4.4408935808082839e-15;
createNode animCurveTL -n "CTRL_chest_IK_translateY_Forwards_inputA";
	rename -uid "BE985937-4B51-9413-B5C7-EBBCA1C831DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -4.9737991503207013e-14;
createNode animCurveTL -n "CTRL_chest_IK_translateZ_Forwards_inputA";
	rename -uid "65B6BC69-48CF-5467-6EDE-BBBC17C131B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -4.2632564145606011e-14;
createNode animCurveTU -n "CTRL_chest_IK_visibility_Forwards_inputA";
	rename -uid "B17B8A12-466A-6E4D-BE72-459554668BD8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputAX";
	rename -uid "F658B6CD-481D-4BD9-C277-C085D1F5B377";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 137.59174808663093;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputAY";
	rename -uid "B904024C-426B-E5B1-6969-DC983824D1A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 74.805898852428697;
createNode animCurveTA -n "CTRL_arm_r_ik_rotate_Right_inputAZ";
	rename -uid "92032B3C-4B76-49F5-EEBA-4CBC3F0BB5D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 130.54235203125586;
createNode animCurveTU -n "CTRL_arm_r_ik_scaleX_Right_inputA";
	rename -uid "6B6CA02B-4A60-5BF5-AA56-5D8C8AF8BB30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_ik_scaleY_Right_inputA";
	rename -uid "192AEEF1-4163-5F6A-B0FC-998838F2CE4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_ik_scaleZ_Right_inputA";
	rename -uid "1978B372-4449-6460-F9CE-D39ED365C3BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_r_ik_translateX_Right_inputA";
	rename -uid "08BF629D-4540-E089-AEC3-F8AC4AB1E17D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 12.016799782099241;
createNode animCurveTL -n "CTRL_arm_r_ik_translateY_Right_inputA";
	rename -uid "22C81C52-4129-6721-C5F2-E6AD9D4B8F00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 16.84285013492012;
createNode animCurveTL -n "CTRL_arm_r_ik_translateZ_Right_inputA";
	rename -uid "DB505F89-4EA1-AB03-5010-1681391A96D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 49.012460383164104;
createNode animCurveTA -n "CTRL_leg_r_pole_rotateX";
	rename -uid "BAAB6039-4B37-FF9C-FA2D-64A8EDE69290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_leg_r_pole_rotateY";
	rename -uid "C19D18DC-4290-95B0-C9A5-B08FF99D02F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_leg_r_pole_rotateZ";
	rename -uid "737B79F0-420A-14CE-22F4-23AAEF057207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_leg_r_pole_scaleX";
	rename -uid "45F9EA96-4574-9CC0-479C-05B44D79338B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_leg_r_pole_scaleY";
	rename -uid "FE1B8B63-48B2-4338-5F83-AEB9535A2D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_leg_r_pole_scaleZ";
	rename -uid "B14D9960-4FF2-1018-23C3-3E81AAAC0E83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_leg_r_pole_translateX";
	rename -uid "CC60BF70-4E48-77E8-3556-7AABCD16701B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.29689094320532916;
createNode animCurveTL -n "CTRL_leg_r_pole_translateY";
	rename -uid "C869AA2B-41F4-0239-A8A3-159823E02827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 31.953168647166979;
createNode animCurveTL -n "CTRL_leg_r_pole_translateZ";
	rename -uid "7640C868-40D6-B0B2-3837-32BFED93E8D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 49.214506728628891;
createNode animCurveTA -n "CTRL_shoulder_l_rotateX";
	rename -uid "EDEF2DB5-4119-FB72-ABB8-388605EE4BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_shoulder_l_rotateY";
	rename -uid "501F6151-4E58-1880-72E6-0A9F834FBF31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_shoulder_l_rotateZ";
	rename -uid "C6C6A3C5-4F49-F2AE-7F1D-2C8356588E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_shoulder_l_scaleX";
	rename -uid "7B79B1B1-4552-E72D-F7DA-108E44878A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_shoulder_l_scaleY";
	rename -uid "DDEF18F2-4F39-94A9-44BA-158B1523EAB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_shoulder_l_scaleZ";
	rename -uid "2CFA0D84-405B-2D58-4835-A0ACA020B704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_shoulder_l_translateX";
	rename -uid "C9384258-46EA-D170-BF38-7082B7F20E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_shoulder_l_translateY";
	rename -uid "A36A83DF-429F-2B0E-7382-448A99E99635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.25681711619216685;
createNode animCurveTL -n "CTRL_shoulder_l_translateZ";
	rename -uid "A38E65D9-4FE1-3DB8-AAE3-2B9E86AD96D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_shoulder_l_visibility";
	rename -uid "BD73EA3E-4E56-CF37-A2FA-A5A1799A2AD5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_arm_l_IKFK_IKFK_Switch";
	rename -uid "B12BD0A0-48A9-3E84-7A5C-40B902A8AA04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_l_IKFK_scaleX";
	rename -uid "9BB542B2-494C-C3A3-1B9B-4A8883EA7A06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_IKFK_scaleY";
	rename -uid "82D06A9F-462F-6E4C-AFE7-58BDA58FD6BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_l_IKFK_scaleZ";
	rename -uid "5AE29B24-4363-95B1-E909-69A82A23312B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_l_IKFK_translateX";
	rename -uid "98AA4333-4B2A-ABD3-7749-708863A916A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_arm_l_IKFK_translateY";
	rename -uid "3FA19FCD-4956-30B0-974B-A39519A9D42A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_arm_l_IKFK_translateZ";
	rename -uid "B7CFFFC8-4289-1038-77FF-C0AED17AA23E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_l_IKFK_visibility";
	rename -uid "C2E83D75-4A49-A3AA-EC6D-BE93E9A39325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_pelvis_IK_rotateX";
	rename -uid "A87537F4-41EF-CE3D-BF99-588BF70811C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_pelvis_IK_rotateY";
	rename -uid "8D84751F-46D7-CFE7-8E6B-9C882A542207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_pelvis_IK_rotateZ";
	rename -uid "AF186071-4813-E7C9-181E-749784EC79D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_pelvis_IK_scaleX";
	rename -uid "4811F384-4AF6-5553-6872-53B6ADB6BE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_pelvis_IK_scaleY";
	rename -uid "569B6E1B-4042-AF0E-3E33-12B38B0602BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_pelvis_IK_scaleZ";
	rename -uid "4792D6EB-4792-6B52-A7B0-ADA507AC0ACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_pelvis_IK_translateX";
	rename -uid "13695F82-483F-9E92-1367-EEBD3B9D6F5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_pelvis_IK_translateY";
	rename -uid "BC383058-4684-6387-281C-AC9A240AD902";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_pelvis_IK_translateZ";
	rename -uid "F8F84BE6-4F73-92CB-08F8-FA83B1DD5FCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_shoulder_r_rotateX";
	rename -uid "CB80EC12-43AF-755D-BBB6-58AB6CC9C5E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_shoulder_r_rotateY";
	rename -uid "937BB5BC-4321-C831-4ED7-AF9F49A80805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_shoulder_r_rotateZ";
	rename -uid "B362BFE5-4914-2AE0-589D-B1AFFA3A5BFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_shoulder_r_scaleX";
	rename -uid "879DC8F0-4453-67FF-9ECA-09ABD7E7DB20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_shoulder_r_scaleY";
	rename -uid "87AED64B-4BC7-F47B-98F1-7B8ACDDE9C3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_shoulder_r_scaleZ";
	rename -uid "60A80010-45AF-C2FD-1849-35A85DAD8974";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_shoulder_r_translateX";
	rename -uid "4C2CF91A-4103-BB78-329D-D8B2B9EB76DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_shoulder_r_translateY";
	rename -uid "520206DE-4529-E2B6-2921-33BC0B6307B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_shoulder_r_translateZ";
	rename -uid "69685CFB-4476-302F-AB1F-3F9D837E1936";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_shoulder_r_visibility";
	rename -uid "9C5E7D67-4B5D-F4F7-375C-7E9038B80659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_leg_l_pole_rotateX";
	rename -uid "668B1379-42B2-FD25-0C66-2E904B366258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_leg_l_pole_rotateY";
	rename -uid "AFC2C640-45B8-EC2D-BD3D-76B35F8DBD27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_leg_l_pole_rotateZ";
	rename -uid "9EF923AA-4024-03CA-64CC-769104E361FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_leg_l_pole_scaleX";
	rename -uid "643CEB4F-4DC3-92B7-F5D1-78A75CF467F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_leg_l_pole_scaleY";
	rename -uid "22968EEB-4350-7670-DE01-14A7D05E7F86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_leg_l_pole_scaleZ";
	rename -uid "98FD6A02-4416-3FCF-F699-D781ACBFE14D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_leg_l_pole_translateX";
	rename -uid "92D8C179-4D89-0F37-2862-57AB9805786E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.29689094320532916;
createNode animCurveTL -n "CTRL_leg_l_pole_translateY";
	rename -uid "D3EB872D-4BCC-53A7-A266-A3A7DC9E56D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 31.953168647166979;
createNode animCurveTL -n "CTRL_leg_l_pole_translateZ";
	rename -uid "98BA067F-44BD-AD1E-5C23-E28FB2059947";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 49.214506728628891;
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputAX";
	rename -uid "6EB88FC4-426A-041F-1B29-B1A714DF01BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputAY";
	rename -uid "C8F96E88-46B6-1C0D-1FC5-38B72AD846F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_arm_r_pole_rotate_Left_inputAZ";
	rename -uid "CCB1F8A8-457D-BD17-073A-328AA34F3945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_r_pole_scaleX_Left_inputA";
	rename -uid "444C482E-423B-BCF5-0B12-2C9522997BB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_pole_scaleY_Left_inputA";
	rename -uid "06D030B0-44E4-D58F-B0D0-66BEAC3DE3D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_pole_scaleZ_Left_inputA";
	rename -uid "25A46FDF-46EF-5162-7A55-9484453A65F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_r_pole_translateX_Left_inputA";
	rename -uid "D1B7DA6A-445A-4A5D-435E-90BBFF7D782E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.094454297336254517;
createNode animCurveTL -n "CTRL_arm_r_pole_translateY_Left_inputA";
	rename -uid "C4D662F4-40C3-9A32-94F7-4AAA066A0D85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 8.3107816815941185;
createNode animCurveTL -n "CTRL_arm_r_pole_translateZ_Left_inputA";
	rename -uid "B54A35D9-429E-BDC6-0E61-A7BB0E5A2424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 7.12276893256238;
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputAX";
	rename -uid "F9D19759-41EC-26C7-89D2-0FA47BA9D00C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputAY";
	rename -uid "D7618844-4A59-256E-E780-B88EFFB81D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_spine_IK_rotate_Forwards_inputAZ";
	rename -uid "FE82846B-4649-2EEC-F792-638451A97542";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_spine_IK_scaleX_Forwards_inputA";
	rename -uid "D6B7179E-44FF-23F5-4517-8AB85FD7A5D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_spine_IK_scaleY_Forwards_inputA";
	rename -uid "016BEDEF-4C3F-E140-B85E-9E8DB9D453F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_spine_IK_scaleZ_Forwards_inputA";
	rename -uid "88148E58-40FF-7ECB-3663-8C859957A358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_spine_IK_translateX_Forwards_inputA";
	rename -uid "08C1062F-475E-91A3-37C6-FE90A8F5589C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -1.4823076576950256e-21;
createNode animCurveTL -n "CTRL_spine_IK_translateY_Forwards_inputA";
	rename -uid "9A0B8970-4D86-9E8F-4921-D1B8430E3470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_spine_IK_translateZ_Forwards_inputA";
	rename -uid "F341B869-47F0-480C-BA1C-A0B7713B11E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_spine_IK_visibility_Forwards_inputA";
	rename -uid "DDCD4C5F-4F47-AE3B-3264-8AB4C7CC9F5B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_leg_l_IKFK_IKFK_Switch";
	rename -uid "BE93A884-4F76-0BE2-6A90-46A9C4EF88C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_leg_l_IKFK_translateX";
	rename -uid "C2C56C5E-4A0A-C368-2F68-20A2A9576E92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0.46157761800440472;
createNode animCurveTL -n "CTRL_leg_l_IKFK_translateY";
	rename -uid "EF34845D-4B3A-4650-6FD9-48B934DFC806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 33.321406352951783;
createNode animCurveTL -n "CTRL_leg_l_IKFK_translateZ";
	rename -uid "FC13FC28-42E7-8750-3D23-DCBAB9F464DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1.2591253970925365;
createNode animCurveTU -n "CTRL_leg_l_IKFK_visibility";
	rename -uid "9B0DCB50-41AE-080B-E462-56A13D8DE5FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CTRL_arm_r_IKFK_IKFK_Switch";
	rename -uid "FB3369A7-4725-B011-98B2-83AB759EBE6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_r_IKFK_scaleX";
	rename -uid "D3457833-4ABC-1677-A146-1BB5B675F665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_IKFK_scaleY";
	rename -uid "1F175EE8-4485-5398-F3EE-8692C7D8D3FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_arm_r_IKFK_scaleZ";
	rename -uid "88BC8E6D-4F99-4413-5CF4-CE9A75195008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_arm_r_IKFK_translateX";
	rename -uid "AE4E2C82-4111-DFE0-05C4-B995C4E6D344";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_arm_r_IKFK_translateY";
	rename -uid "70C9B90E-4578-C79D-AB26-E0A34E987437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "CTRL_arm_r_IKFK_translateZ";
	rename -uid "C9602620-4442-42F1-5591-32B281827BCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_arm_r_IKFK_visibility";
	rename -uid "4F98B6C4-42B3-44DF-9911-828973858A37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputAX";
	rename -uid "08EEB75A-434B-CA08-A8F5-6A88E366D269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputAY";
	rename -uid "3D8E570E-4BEB-FA66-0F68-1AABB8752E12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTA -n "CTRL_foot_r_IK_rotate_Forwards_inputAZ";
	rename -uid "08245C02-467C-B5AB-911D-CB91BB17F2F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "CTRL_foot_r_IK_scaleX_Forwards_inputA";
	rename -uid "4F5555C8-40BB-B05A-1388-30B4DB086928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_foot_r_IK_scaleY_Forwards_inputA";
	rename -uid "90758E81-476D-B59E-4E17-83840653E21B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTU -n "CTRL_foot_r_IK_scaleZ_Forwards_inputA";
	rename -uid "ED106523-4D76-9601-AAA6-289C8F3D394A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 1;
createNode animCurveTL -n "CTRL_foot_r_IK_translateX_Forwards_inputA";
	rename -uid "434FBB61-4379-78D5-B2C8-B88AE52A905D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 -4.7651503572206479;
createNode animCurveTL -n "CTRL_foot_r_IK_translateY_Forwards_inputA";
	rename -uid "FE3B1F93-49A1-8198-5C72-9BB8113A29DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 19.601910670797466;
createNode animCurveTL -n "CTRL_foot_r_IK_translateZ_Forwards_inputA";
	rename -uid "4BBAA08B-4B91-88CE-0230-27B4C9286287";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 40.791937383280199;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "65DCF098-43CB-6527-E531-21A703AFAC7D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -480.15871107893719 -83.333330021964301 ;
	setAttr ".tgi[0].vh" -type "double2" 1824.6031020999615 59.523807158545942 ;
	setAttr -s 901 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -4222.85693359375;
	setAttr ".tgi[0].ni[0].y" 18665.71484375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 4880;
	setAttr ".tgi[0].ni[1].y" -15381.4287109375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 4880;
	setAttr ".tgi[0].ni[2].y" -14818.5712890625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 4880;
	setAttr ".tgi[0].ni[3].y" -15100;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4880;
	setAttr ".tgi[0].ni[4].y" -9822.857421875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 4880;
	setAttr ".tgi[0].ni[5].y" 7252.85693359375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 4467.14306640625;
	setAttr ".tgi[0].ni[6].y" -13922.857421875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 4880;
	setAttr ".tgi[0].ni[7].y" -13974.2861328125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 4880;
	setAttr ".tgi[0].ni[8].y" -9260;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 4880;
	setAttr ".tgi[0].ni[9].y" -14537.142578125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 4880;
	setAttr ".tgi[0].ni[10].y" -14255.7138671875;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 4880;
	setAttr ".tgi[0].ni[11].y" -15662.857421875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 5288.5712890625;
	setAttr ".tgi[0].ni[12].y" 4998.5712890625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 5288.5712890625;
	setAttr ".tgi[0].ni[13].y" 3974.28564453125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 4880;
	setAttr ".tgi[0].ni[14].y" -13411.4287109375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 4880;
	setAttr ".tgi[0].ni[15].y" -9541.4287109375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 4880;
	setAttr ".tgi[0].ni[16].y" 7455.71435546875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 4880;
	setAttr ".tgi[0].ni[17].y" 7354.28564453125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 4467.14306640625;
	setAttr ".tgi[0].ni[18].y" -11944.2861328125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 4467.14306640625;
	setAttr ".tgi[0].ni[19].y" -12397.142578125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 4467.14306640625;
	setAttr ".tgi[0].ni[20].y" -12792.857421875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -427.14285278320312;
	setAttr ".tgi[0].ni[21].y" 15982.857421875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 84.285713195800781;
	setAttr ".tgi[0].ni[22].y" 31.428571701049805;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -268.57144165039062;
	setAttr ".tgi[0].ni[23].y" 31.428571701049805;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 4880;
	setAttr ".tgi[0].ni[24].y" 890;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 4880;
	setAttr ".tgi[0].ni[25].y" -9080;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 4880;
	setAttr ".tgi[0].ni[26].y" -7707.14306640625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 4880;
	setAttr ".tgi[0].ni[27].y" -7425.71435546875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 4880;
	setAttr ".tgi[0].ni[28].y" -8270;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 4880;
	setAttr ".tgi[0].ni[29].y" -5174.28564453125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 4880;
	setAttr ".tgi[0].ni[30].y" -8494.2861328125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 5682.85693359375;
	setAttr ".tgi[0].ni[31].y" 9267.142578125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 4880;
	setAttr ".tgi[0].ni[32].y" 767.14288330078125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 4880;
	setAttr ".tgi[0].ni[33].y" 521.4285888671875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2977.142822265625;
	setAttr ".tgi[0].ni[34].y" 7587.14306640625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2977.142822265625;
	setAttr ".tgi[0].ni[35].y" 7024.28564453125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2977.142822265625;
	setAttr ".tgi[0].ni[36].y" 6180;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2977.142822265625;
	setAttr ".tgi[0].ni[37].y" 5898.5712890625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2977.142822265625;
	setAttr ".tgi[0].ni[38].y" 7305.71435546875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 4880;
	setAttr ".tgi[0].ni[39].y" -7144.28564453125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4880;
	setAttr ".tgi[0].ni[40].y" 398.57144165039062;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 5288.5712890625;
	setAttr ".tgi[0].ni[41].y" 5540;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 4880;
	setAttr ".tgi[0].ni[42].y" -13692.857421875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -2410;
	setAttr ".tgi[0].ni[43].y" 17391.427734375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 5288.5712890625;
	setAttr ".tgi[0].ni[44].y" 8202.857421875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 4880;
	setAttr ".tgi[0].ni[45].y" -7988.5712890625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 4880;
	setAttr ".tgi[0].ni[46].y" 1135.7142333984375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 4880;
	setAttr ".tgi[0].ni[47].y" 1012.8571166992188;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 4880;
	setAttr ".tgi[0].ni[48].y" 644.28570556640625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2977.142822265625;
	setAttr ".tgi[0].ni[49].y" 6742.85693359375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 2977.142822265625;
	setAttr ".tgi[0].ni[50].y" 6461.4287109375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 4467.14306640625;
	setAttr ".tgi[0].ni[51].y" -15615.7138671875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 5288.5712890625;
	setAttr ".tgi[0].ni[52].y" 10070;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 4467.14306640625;
	setAttr ".tgi[0].ni[53].y" -15277.142578125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 4467.14306640625;
	setAttr ".tgi[0].ni[54].y" -14600;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 4467.14306640625;
	setAttr ".tgi[0].ni[55].y" -15897.142578125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 4467.14306640625;
	setAttr ".tgi[0].ni[56].y" -14938.5712890625;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 5288.5712890625;
	setAttr ".tgi[0].ni[57].y" 10272.857421875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 5288.5712890625;
	setAttr ".tgi[0].ni[58].y" 10171.4287109375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 4467.14306640625;
	setAttr ".tgi[0].ni[59].y" -2571.428466796875;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 4467.14306640625;
	setAttr ".tgi[0].ni[60].y" -2831.428466796875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 4467.14306640625;
	setAttr ".tgi[0].ni[61].y" -3091.428466796875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 4467.14306640625;
	setAttr ".tgi[0].ni[62].y" -3351.428466796875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 4467.14306640625;
	setAttr ".tgi[0].ni[63].y" -14261.4287109375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 4467.14306640625;
	setAttr ".tgi[0].ni[64].y" -11548.5712890625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 5682.85693359375;
	setAttr ".tgi[0].ni[65].y" 15655.7138671875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 597.14288330078125;
	setAttr ".tgi[0].ni[66].y" 16801.427734375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2141.428466796875;
	setAttr ".tgi[0].ni[67].y" -9252.857421875;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[68].y" -2287.142822265625;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 2141.428466796875;
	setAttr ".tgi[0].ni[69].y" -9555.7138671875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2185.71435546875;
	setAttr ".tgi[0].ni[70].y" 18681.427734375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 5288.5712890625;
	setAttr ".tgi[0].ni[71].y" 13045.7138671875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 5682.85693359375;
	setAttr ".tgi[0].ni[72].y" 12804.2861328125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1530;
	setAttr ".tgi[0].ni[73].y" 17142.857421875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 3350;
	setAttr ".tgi[0].ni[74].y" 12660;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2595.71435546875;
	setAttr ".tgi[0].ni[75].y" 16674.28515625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 4880;
	setAttr ".tgi[0].ni[76].y" 12425.7138671875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 4467.14306640625;
	setAttr ".tgi[0].ni[77].y" 11307.142578125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 5288.5712890625;
	setAttr ".tgi[0].ni[78].y" 11565.7138671875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1837.142822265625;
	setAttr ".tgi[0].ni[79].y" 15337.142578125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2185.71435546875;
	setAttr ".tgi[0].ni[80].y" 12868.5712890625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 2595.71435546875;
	setAttr ".tgi[0].ni[81].y" 19132.857421875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 5682.85693359375;
	setAttr ".tgi[0].ni[82].y" 13918.5712890625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 5288.5712890625;
	setAttr ".tgi[0].ni[83].y" 11385.7138671875;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 5682.85693359375;
	setAttr ".tgi[0].ni[84].y" 12984.2861328125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1837.142822265625;
	setAttr ".tgi[0].ni[85].y" 17948.572265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 2141.428466796875;
	setAttr ".tgi[0].ni[86].y" -8344.2861328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 3350;
	setAttr ".tgi[0].ni[87].y" 15665.7138671875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 4058.571533203125;
	setAttr ".tgi[0].ni[88].y" 10721.4287109375;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 2141.428466796875;
	setAttr ".tgi[0].ni[89].y" -5770;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[90].y" -2135.71435546875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 5682.85693359375;
	setAttr ".tgi[0].ni[91].y" 19615.71484375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 2141.428466796875;
	setAttr ".tgi[0].ni[92].y" -6527.14306640625;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 5682.85693359375;
	setAttr ".tgi[0].ni[93].y" 15410;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 2141.428466796875;
	setAttr ".tgi[0].ni[94].y" -3801.428466796875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 4058.571533203125;
	setAttr ".tgi[0].ni[95].y" 13288.5712890625;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 5682.85693359375;
	setAttr ".tgi[0].ni[96].y" 16242.857421875;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 3668.571533203125;
	setAttr ".tgi[0].ni[97].y" 14574.2861328125;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 5682.85693359375;
	setAttr ".tgi[0].ni[98].y" 16488.572265625;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 5288.5712890625;
	setAttr ".tgi[0].ni[99].y" 19144.28515625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 4058.571533203125;
	setAttr ".tgi[0].ni[100].y" 10598.5712890625;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 5288.5712890625;
	setAttr ".tgi[0].ni[101].y" 12742.857421875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 3668.571533203125;
	setAttr ".tgi[0].ni[102].y" 14451.4287109375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 5288.5712890625;
	setAttr ".tgi[0].ni[103].y" 17508.572265625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 2141.428466796875;
	setAttr ".tgi[0].ni[104].y" -3195.71435546875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 5288.5712890625;
	setAttr ".tgi[0].ni[105].y" 13928.5712890625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 4467.14306640625;
	setAttr ".tgi[0].ni[106].y" 10090;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 5288.5712890625;
	setAttr ".tgi[0].ni[107].y" 20425.71484375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 5682.85693359375;
	setAttr ".tgi[0].ni[108].y" 17044.28515625;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 2141.428466796875;
	setAttr ".tgi[0].ni[109].y" -2135.71435546875;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 4058.571533203125;
	setAttr ".tgi[0].ni[110].y" 10844.2861328125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1530;
	setAttr ".tgi[0].ni[111].y" 17851.427734375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 5682.85693359375;
	setAttr ".tgi[0].ni[112].y" 17350;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 3668.571533203125;
	setAttr ".tgi[0].ni[113].y" 11252.857421875;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -4222.85693359375;
	setAttr ".tgi[0].ni[114].y" 18977.142578125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 4880;
	setAttr ".tgi[0].ni[115].y" 14088.5712890625;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2141.428466796875;
	setAttr ".tgi[0].ni[116].y" -5012.85693359375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[117].y" -801.4285888671875;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1837.142822265625;
	setAttr ".tgi[0].ni[118].y" 17351.427734375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 5682.85693359375;
	setAttr ".tgi[0].ni[119].y" 13235.7138671875;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 5682.85693359375;
	setAttr ".tgi[0].ni[120].y" 15532.857421875;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2141.428466796875;
	setAttr ".tgi[0].ni[121].y" -4861.4287109375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 4467.14306640625;
	setAttr ".tgi[0].ni[122].y" 12410;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 5288.5712890625;
	setAttr ".tgi[0].ni[123].y" 12620;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 4058.571533203125;
	setAttr ".tgi[0].ni[124].y" 13468.5712890625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2141.428466796875;
	setAttr ".tgi[0].ni[125].y" -1255.7142333984375;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 3668.571533203125;
	setAttr ".tgi[0].ni[126].y" 14811.4287109375;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 2141.428466796875;
	setAttr ".tgi[0].ni[127].y" -6072.85693359375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 5682.85693359375;
	setAttr ".tgi[0].ni[128].y" 13672.857421875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 1527.142822265625;
	setAttr ".tgi[0].ni[129].y" -1104.2857666015625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 5682.85693359375;
	setAttr ".tgi[0].ni[130].y" 15825.7138671875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 4880;
	setAttr ".tgi[0].ni[131].y" 16521.427734375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 5288.5712890625;
	setAttr ".tgi[0].ni[132].y" 13634.2861328125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 2141.428466796875;
	setAttr ".tgi[0].ni[133].y" -6224.28564453125;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 5288.5712890625;
	setAttr ".tgi[0].ni[134].y" 15171.4287109375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 2141.428466796875;
	setAttr ".tgi[0].ni[135].y" -4407.14306640625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 2185.71435546875;
	setAttr ".tgi[0].ni[136].y" 11228.5712890625;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 5682.85693359375;
	setAttr ".tgi[0].ni[137].y" 13795.7138671875;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[138].y" -1984.2857666015625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 904.28570556640625;
	setAttr ".tgi[0].ni[139].y" 15240;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 5288.5712890625;
	setAttr ".tgi[0].ni[140].y" 16242.857421875;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 5682.85693359375;
	setAttr ".tgi[0].ni[141].y" 17167.142578125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 5682.85693359375;
	setAttr ".tgi[0].ni[142].y" 12532.857421875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 5682.85693359375;
	setAttr ".tgi[0].ni[143].y" 14381.4287109375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2141.428466796875;
	setAttr ".tgi[0].ni[144].y" -2892.857177734375;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1837.142822265625;
	setAttr ".tgi[0].ni[145].y" 16100;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2595.71435546875;
	setAttr ".tgi[0].ni[146].y" 17525.71484375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2141.428466796875;
	setAttr ".tgi[0].ni[147].y" -3952.857177734375;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 5682.85693359375;
	setAttr ".tgi[0].ni[148].y" 14164.2861328125;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 5682.85693359375;
	setAttr ".tgi[0].ni[149].y" 11918.5712890625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 5288.5712890625;
	setAttr ".tgi[0].ni[150].y" 17020;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[151].y" -952.85711669921875;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[152].y" -1104.2857666015625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 5288.5712890625;
	setAttr ".tgi[0].ni[153].y" 13397.142578125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 5288.5712890625;
	setAttr ".tgi[0].ni[154].y" 16365.7138671875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 2141.428466796875;
	setAttr ".tgi[0].ni[155].y" -3498.571533203125;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 4880;
	setAttr ".tgi[0].ni[156].y" 11780;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 5288.5712890625;
	setAttr ".tgi[0].ni[157].y" 12211.4287109375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 4880;
	setAttr ".tgi[0].ni[158].y" 18181.427734375;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 5288.5712890625;
	setAttr ".tgi[0].ni[159].y" 337.14285278320312;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1222.857177734375;
	setAttr ".tgi[0].ni[160].y" 17631.427734375;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 3668.571533203125;
	setAttr ".tgi[0].ni[161].y" 12088.5712890625;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 3350;
	setAttr ".tgi[0].ni[162].y" 12537.142578125;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 2141.428466796875;
	setAttr ".tgi[0].ni[163].y" -7284.28564453125;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 1220;
	setAttr ".tgi[0].ni[164].y" -801.4285888671875;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 5682.85693359375;
	setAttr ".tgi[0].ni[165].y" 12287.142578125;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 5682.85693359375;
	setAttr ".tgi[0].ni[166].y" 14934.2861328125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 5682.85693359375;
	setAttr ".tgi[0].ni[167].y" 16120;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2141.428466796875;
	setAttr ".tgi[0].ni[168].y" -5315.71435546875;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 2141.428466796875;
	setAttr ".tgi[0].ni[169].y" -3044.28564453125;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 4058.571533203125;
	setAttr ".tgi[0].ni[170].y" 19314.28515625;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 5682.85693359375;
	setAttr ".tgi[0].ni[171].y" 15232.857421875;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 2977.142822265625;
	setAttr ".tgi[0].ni[172].y" 16328.5712890625;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[173].y" -1317.142822265625;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 4058.571533203125;
	setAttr ".tgi[0].ni[174].y" 10475.7138671875;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 5682.85693359375;
	setAttr ".tgi[0].ni[175].y" 12410;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -3452.857177734375;
	setAttr ".tgi[0].ni[176].y" 18495.71484375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 2141.428466796875;
	setAttr ".tgi[0].ni[177].y" -9858.5712890625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1220;
	setAttr ".tgi[0].ni[178].y" -952.85711669921875;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 5682.85693359375;
	setAttr ".tgi[0].ni[179].y" 20425.71484375;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2141.428466796875;
	setAttr ".tgi[0].ni[180].y" -8041.4287109375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 2595.71435546875;
	setAttr ".tgi[0].ni[181].y" 16854.28515625;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 4880;
	setAttr ".tgi[0].ni[182].y" 16815.71484375;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 2977.142822265625;
	setAttr ".tgi[0].ni[183].y" 17651.427734375;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 2141.428466796875;
	setAttr ".tgi[0].ni[184].y" -5618.5712890625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2141.428466796875;
	setAttr ".tgi[0].ni[185].y" -1530;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 4058.571533203125;
	setAttr ".tgi[0].ni[186].y" 16868.572265625;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 2141.428466796875;
	setAttr ".tgi[0].ni[187].y" -2287.142822265625;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 5682.85693359375;
	setAttr ".tgi[0].ni[188].y" 18698.572265625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 4467.14306640625;
	setAttr ".tgi[0].ni[189].y" -3611.428466796875;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 2977.142822265625;
	setAttr ".tgi[0].ni[190].y" 12805.7138671875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 4467.14306640625;
	setAttr ".tgi[0].ni[191].y" 11012.857421875;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 4467.14306640625;
	setAttr ".tgi[0].ni[192].y" 12230;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 5288.5712890625;
	setAttr ".tgi[0].ni[193].y" 11917.142578125;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 2121.428466796875;
	setAttr ".tgi[0].ni[194].y" -2590;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 5288.5712890625;
	setAttr ".tgi[0].ni[195].y" 16488.572265625;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1530;
	setAttr ".tgi[0].ni[196].y" 18382.857421875;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 2141.428466796875;
	setAttr ".tgi[0].ni[197].y" -6981.4287109375;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 5682.85693359375;
	setAttr ".tgi[0].ni[198].y" 13454.2861328125;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 4880;
	setAttr ".tgi[0].ni[199].y" 13500;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2141.428466796875;
	setAttr ".tgi[0].ni[200].y" -952.85711669921875;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 5288.5712890625;
	setAttr ".tgi[0].ni[201].y" 18080;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 5288.5712890625;
	setAttr ".tgi[0].ni[202].y" 16120;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2977.142822265625;
	setAttr ".tgi[0].ni[203].y" 16631.427734375;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 2141.428466796875;
	setAttr ".tgi[0].ni[204].y" -4558.5712890625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 4058.571533203125;
	setAttr ".tgi[0].ni[205].y" 15377.142578125;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 3668.571533203125;
	setAttr ".tgi[0].ni[206].y" 17114.28515625;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 4058.571533203125;
	setAttr ".tgi[0].ni[207].y" 16551.427734375;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 5682.85693359375;
	setAttr ".tgi[0].ni[208].y" 16611.427734375;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 3350;
	setAttr ".tgi[0].ni[209].y" 15428.5712890625;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 2141.428466796875;
	setAttr ".tgi[0].ni[210].y" -7587.14306640625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 5682.85693359375;
	setAttr ".tgi[0].ni[211].y" 14041.4287109375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 2141.428466796875;
	setAttr ".tgi[0].ni[212].y" -7132.85693359375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 5288.5712890625;
	setAttr ".tgi[0].ni[213].y" 4220;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 4467.14306640625;
	setAttr ".tgi[0].ni[214].y" 13798.5712890625;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 3350;
	setAttr ".tgi[0].ni[215].y" 15902.857421875;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 5682.85693359375;
	setAttr ".tgi[0].ni[216].y" 12655.7138671875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2141.428466796875;
	setAttr ".tgi[0].ni[217].y" -6678.5712890625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 5288.5712890625;
	setAttr ".tgi[0].ni[218].y" 15654.2861328125;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 5682.85693359375;
	setAttr ".tgi[0].ni[219].y" 18365.71484375;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2141.428466796875;
	setAttr ".tgi[0].ni[220].y" -5164.28564453125;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 2141.428466796875;
	setAttr ".tgi[0].ni[221].y" -7890;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 2595.71435546875;
	setAttr ".tgi[0].ni[222].y" 16285.7138671875;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 4880;
	setAttr ".tgi[0].ni[223].y" 16227.142578125;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 5288.5712890625;
	setAttr ".tgi[0].ni[224].y" 4097.14306640625;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 4880;
	setAttr ".tgi[0].ni[225].y" 16104.2861328125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 4880;
	setAttr ".tgi[0].ni[226].y" 13098.5712890625;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 597.14288330078125;
	setAttr ".tgi[0].ni[227].y" 18204.28515625;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1222.857177734375;
	setAttr ".tgi[0].ni[228].y" 17232.857421875;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 3668.571533203125;
	setAttr ".tgi[0].ni[229].y" 13181.4287109375;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 4880;
	setAttr ".tgi[0].ni[230].y" 13680;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2977.142822265625;
	setAttr ".tgi[0].ni[231].y" 14038.5712890625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -1778.5714111328125;
	setAttr ".tgi[0].ni[232].y" 16732.857421875;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 5682.85693359375;
	setAttr ".tgi[0].ni[233].y" 14662.857421875;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 4467.14306640625;
	setAttr ".tgi[0].ni[234].y" 15252.857421875;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 5682.85693359375;
	setAttr ".tgi[0].ni[235].y" 12164.2861328125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 5288.5712890625;
	setAttr ".tgi[0].ni[236].y" 14280;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 2185.71435546875;
	setAttr ".tgi[0].ni[237].y" 16777.142578125;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 5682.85693359375;
	setAttr ".tgi[0].ni[238].y" 11795.7138671875;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 4467.14306640625;
	setAttr ".tgi[0].ni[239].y" 16897.142578125;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 2141.428466796875;
	setAttr ".tgi[0].ni[240].y" -8647.142578125;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 5288.5712890625;
	setAttr ".tgi[0].ni[241].y" 12865.7138671875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2141.428466796875;
	setAttr ".tgi[0].ni[242].y" -8798.5712890625;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" -427.14285278320312;
	setAttr ".tgi[0].ni[243].y" 18544.28515625;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" -427.14285278320312;
	setAttr ".tgi[0].ni[244].y" 16990;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" -427.14285278320312;
	setAttr ".tgi[0].ni[245].y" 16312.857421875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -427.14285278320312;
	setAttr ".tgi[0].ni[246].y" 16651.427734375;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 4880;
	setAttr ".tgi[0].ni[247].y" 5997.14306640625;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 4880;
	setAttr ".tgi[0].ni[248].y" 5895.71435546875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" -427.14285278320312;
	setAttr ".tgi[0].ni[249].y" 17585.71484375;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" -427.14285278320312;
	setAttr ".tgi[0].ni[250].y" 18205.71484375;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" -427.14285278320312;
	setAttr ".tgi[0].ni[251].y" 17867.142578125;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 4880;
	setAttr ".tgi[0].ni[252].y" 8111.4287109375;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 4880;
	setAttr ".tgi[0].ni[253].y" 8010;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" -2744.28564453125;
	setAttr ".tgi[0].ni[254].y" 17711.427734375;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 4880;
	setAttr ".tgi[0].ni[255].y" 7908.5712890625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 1222.857177734375;
	setAttr ".tgi[0].ni[256].y" 18091.427734375;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 2141.428466796875;
	setAttr ".tgi[0].ni[257].y" -1378.5714111328125;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 5682.85693359375;
	setAttr ".tgi[0].ni[258].y" 13112.857421875;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 1837.142822265625;
	setAttr ".tgi[0].ni[259].y" 17588.572265625;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1222.857177734375;
	setAttr ".tgi[0].ni[260].y" 16415.71484375;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 2141.428466796875;
	setAttr ".tgi[0].ni[261].y" -6830;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 2141.428466796875;
	setAttr ".tgi[0].ni[262].y" -1832.857177734375;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 5288.5712890625;
	setAttr ".tgi[0].ni[263].y" 14582.857421875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 3668.571533203125;
	setAttr ".tgi[0].ni[264].y" 11498.5712890625;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 4880;
	setAttr ".tgi[0].ni[265].y" 12662.857421875;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 4467.14306640625;
	setAttr ".tgi[0].ni[266].y" 12590;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 4880;
	setAttr ".tgi[0].ni[267].y" 15924.2861328125;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 4467.14306640625;
	setAttr ".tgi[0].ni[268].y" 14150;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 1222.857177734375;
	setAttr ".tgi[0].ni[269].y" 15811.4287109375;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 1530;
	setAttr ".tgi[0].ni[270].y" 18677.142578125;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 2141.428466796875;
	setAttr ".tgi[0].ni[271].y" -7738.5712890625;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 1527.142822265625;
	setAttr ".tgi[0].ni[272].y" -952.85711669921875;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 4467.14306640625;
	setAttr ".tgi[0].ni[273].y" 15690;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[274].y" -1530;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 5288.5712890625;
	setAttr ".tgi[0].ni[275].y" 16725.71484375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 2114.28564453125;
	setAttr ".tgi[0].ni[276].y" -2438.571533203125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 5682.85693359375;
	setAttr ".tgi[0].ni[277].y" 18108.572265625;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 5682.85693359375;
	setAttr ".tgi[0].ni[278].y" 12041.4287109375;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 2141.428466796875;
	setAttr ".tgi[0].ni[279].y" -5467.14306640625;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 2141.428466796875;
	setAttr ".tgi[0].ni[280].y" -3347.142822265625;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 2141.428466796875;
	setAttr ".tgi[0].ni[281].y" -9101.4287109375;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 5682.85693359375;
	setAttr ".tgi[0].ni[282].y" 4277.14306640625;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 3668.571533203125;
	setAttr ".tgi[0].ni[283].y" 15505.7138671875;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 4058.571533203125;
	setAttr ".tgi[0].ni[284].y" 11874.2861328125;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 2185.71435546875;
	setAttr ".tgi[0].ni[285].y" 17274.28515625;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 3350;
	setAttr ".tgi[0].ni[286].y" 15191.4287109375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 5288.5712890625;
	setAttr ".tgi[0].ni[287].y" 14762.857421875;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 2141.428466796875;
	setAttr ".tgi[0].ni[288].y" -3650;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 2141.428466796875;
	setAttr ".tgi[0].ni[289].y" -8950;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1530;
	setAttr ".tgi[0].ni[290].y" 16905.71484375;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 2141.428466796875;
	setAttr ".tgi[0].ni[291].y" -4104.28564453125;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 2977.142822265625;
	setAttr ".tgi[0].ni[292].y" 16754.28515625;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" -3851.428466796875;
	setAttr ".tgi[0].ni[293].y" 19002.857421875;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 2141.428466796875;
	setAttr ".tgi[0].ni[294].y" -801.4285888671875;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 2141.428466796875;
	setAttr ".tgi[0].ni[295].y" -8495.7138671875;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 2141.428466796875;
	setAttr ".tgi[0].ni[296].y" -1984.2857666015625;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 2141.428466796875;
	setAttr ".tgi[0].ni[297].y" -5921.4287109375;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 5682.85693359375;
	setAttr ".tgi[0].ni[298].y" 19118.572265625;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 2185.71435546875;
	setAttr ".tgi[0].ni[299].y" 17147.142578125;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 3668.571533203125;
	setAttr ".tgi[0].ni[300].y" 11375.7138671875;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 5288.5712890625;
	setAttr ".tgi[0].ni[301].y" 15294.2861328125;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 2977.142822265625;
	setAttr ".tgi[0].ni[302].y" 16451.427734375;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 5682.85693359375;
	setAttr ".tgi[0].ni[303].y" 18845.71484375;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 3668.571533203125;
	setAttr ".tgi[0].ni[304].y" 14271.4287109375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 5682.85693359375;
	setAttr ".tgi[0].ni[305].y" 16734.28515625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 2977.142822265625;
	setAttr ".tgi[0].ni[306].y" 16034.2861328125;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 1527.142822265625;
	setAttr ".tgi[0].ni[307].y" -801.4285888671875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 2141.428466796875;
	setAttr ".tgi[0].ni[308].y" -4255.71435546875;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 4467.14306640625;
	setAttr ".tgi[0].ni[309].y" -13188.5712890625;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 4058.571533203125;
	setAttr ".tgi[0].ni[310].y" 15500;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 5288.5712890625;
	setAttr ".tgi[0].ni[311].y" 18907.142578125;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[312].y" -1832.857177734375;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 5288.5712890625;
	setAttr ".tgi[0].ni[313].y" 460;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 1222.857177734375;
	setAttr ".tgi[0].ni[314].y" 16538.572265625;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 2595.71435546875;
	setAttr ".tgi[0].ni[315].y" 16105.7138671875;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 2141.428466796875;
	setAttr ".tgi[0].ni[316].y" -9404.2861328125;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 3668.571533203125;
	setAttr ".tgi[0].ni[317].y" 5740;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 5288.5712890625;
	setAttr ".tgi[0].ni[318].y" 14402.857421875;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 4467.14306640625;
	setAttr ".tgi[0].ni[319].y" 14615.7138671875;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1837.142822265625;
	setAttr ".tgi[0].ni[320].y" 17825.71484375;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" -818.5714111328125;
	setAttr ".tgi[0].ni[321].y" 14954.2861328125;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 2141.428466796875;
	setAttr ".tgi[0].ni[322].y" -4710;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 3350;
	setAttr ".tgi[0].ni[323].y" 16140;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 4467.14306640625;
	setAttr ".tgi[0].ni[324].y" -13584.2861328125;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 3350;
	setAttr ".tgi[0].ni[325].y" 13068.5712890625;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 4467.14306640625;
	setAttr ".tgi[0].ni[326].y" 18417.142578125;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 2140;
	setAttr ".tgi[0].ni[327].y" -2741.428466796875;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 2141.428466796875;
	setAttr ".tgi[0].ni[328].y" -8192.857421875;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 2977.142822265625;
	setAttr ".tgi[0].ni[329].y" 14161.4287109375;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 2141.428466796875;
	setAttr ".tgi[0].ni[330].y" -7435.71435546875;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 3350;
	setAttr ".tgi[0].ni[331].y" 16262.857421875;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1222.857177734375;
	setAttr ".tgi[0].ni[332].y" 16661.427734375;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 4467.14306640625;
	setAttr ".tgi[0].ni[333].y" 9910;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 5682.85693359375;
	setAttr ".tgi[0].ni[334].y" 11672.857421875;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 5682.85693359375;
	setAttr ".tgi[0].ni[335].y" 19902.857421875;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 2185.71435546875;
	setAttr ".tgi[0].ni[336].y" 18975.71484375;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 1530;
	setAttr ".tgi[0].ni[337].y" 18145.71484375;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 2185.71435546875;
	setAttr ".tgi[0].ni[338].y" 17024.28515625;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 5682.85693359375;
	setAttr ".tgi[0].ni[339].y" 11324.2861328125;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 5682.85693359375;
	setAttr ".tgi[0].ni[340].y" 16365.7138671875;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 2141.428466796875;
	setAttr ".tgi[0].ni[341].y" -9707.142578125;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 2141.428466796875;
	setAttr ".tgi[0].ni[342].y" -1104.2857666015625;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 2141.428466796875;
	setAttr ".tgi[0].ni[343].y" -6375.71435546875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 4058.571533203125;
	setAttr ".tgi[0].ni[344].y" 17641.427734375;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 1834.2857666015625;
	setAttr ".tgi[0].ni[345].y" -1681.4285888671875;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 5288.5712890625;
	setAttr ".tgi[0].ni[346].y" 15474.2861328125;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 2141.428466796875;
	setAttr ".tgi[0].ni[347].y" -1681.4285888671875;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 5682.85693359375;
	setAttr ".tgi[0].ni[348].y" 20188.572265625;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" -427.14285278320312;
	setAttr ".tgi[0].ni[349].y" 19007.142578125;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 4880;
	setAttr ".tgi[0].ni[350].y" 6098.5712890625;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 4880;
	setAttr ".tgi[0].ni[351].y" 12074.2861328125;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" -62.857143402099609;
	setAttr ".tgi[0].ni[352].y" 17960;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" -62.857143402099609;
	setAttr ".tgi[0].ni[353].y" 17642.857421875;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" -62.857143402099609;
	setAttr ".tgi[0].ni[354].y" 18241.427734375;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" -62.857143402099609;
	setAttr ".tgi[0].ni[355].y" 17022.857421875;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" -62.857143402099609;
	setAttr ".tgi[0].ni[356].y" 17361.427734375;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 4467.14306640625;
	setAttr ".tgi[0].ni[357].y" -10417.142578125;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 4467.14306640625;
	setAttr ".tgi[0].ni[358].y" -10518.5712890625;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" -3851.428466796875;
	setAttr ".tgi[0].ni[359].y" 17720;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 4467.14306640625;
	setAttr ".tgi[0].ni[360].y" -9364.2861328125;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 4880;
	setAttr ".tgi[0].ni[361].y" -6862.85693359375;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 4467.14306640625;
	setAttr ".tgi[0].ni[362].y" -8787.142578125;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 4880;
	setAttr ".tgi[0].ni[363].y" -6018.5712890625;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 4467.14306640625;
	setAttr ".tgi[0].ni[364].y" -9047.142578125;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 4467.14306640625;
	setAttr ".tgi[0].ni[365].y" -9624.2861328125;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 4880;
	setAttr ".tgi[0].ni[366].y" -5455.71435546875;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 4467.14306640625;
	setAttr ".tgi[0].ni[367].y" -9941.4287109375;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" -427.14285278320312;
	setAttr ".tgi[0].ni[368].y" 10984.2861328125;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 4467.14306640625;
	setAttr ".tgi[0].ni[369].y" -8470;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 5288.5712890625;
	setAttr ".tgi[0].ni[370].y" 7571.4287109375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 4880;
	setAttr ".tgi[0].ni[371].y" -5737.14306640625;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" -62.857143402099609;
	setAttr ".tgi[0].ni[372].y" 16455.71484375;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 4880;
	setAttr ".tgi[0].ni[373].y" -6300;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 4880;
	setAttr ".tgi[0].ni[374].y" -6581.4287109375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 5288.5712890625;
	setAttr ".tgi[0].ni[375].y" 6690;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" -62.857143402099609;
	setAttr ".tgi[0].ni[376].y" 19142.857421875;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" -62.857143402099609;
	setAttr ".tgi[0].ni[377].y" 18804.28515625;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" -62.857143402099609;
	setAttr ".tgi[0].ni[378].y" 18522.857421875;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" -3452.857177734375;
	setAttr ".tgi[0].ni[379].y" 17720;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 5288.5712890625;
	setAttr ".tgi[0].ni[380].y" 9607.142578125;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 5288.5712890625;
	setAttr ".tgi[0].ni[381].y" 9505.7138671875;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 4880;
	setAttr ".tgi[0].ni[382].y" -3838.571533203125;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 4880;
	setAttr ".tgi[0].ni[383].y" -4084.28564453125;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 2595.71435546875;
	setAttr ".tgi[0].ni[384].y" 13332.857421875;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 4880;
	setAttr ".tgi[0].ni[385].y" -4510;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 4880;
	setAttr ".tgi[0].ni[386].y" -4207.14306640625;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 2595.71435546875;
	setAttr ".tgi[0].ni[387].y" 13614.2861328125;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 4880;
	setAttr ".tgi[0].ni[388].y" -3715.71435546875;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 2595.71435546875;
	setAttr ".tgi[0].ni[389].y" 13952.857421875;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 4880;
	setAttr ".tgi[0].ni[390].y" -3961.428466796875;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 4880;
	setAttr ".tgi[0].ni[391].y" -4330;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" -3105.71435546875;
	setAttr ".tgi[0].ni[392].y" 18077.142578125;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 4467.14306640625;
	setAttr ".tgi[0].ni[393].y" -7474.28564453125;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -818.5714111328125;
	setAttr ".tgi[0].ni[394].y" 18892.857421875;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 4058.571533203125;
	setAttr ".tgi[0].ni[395].y" -8128.5712890625;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" 4058.571533203125;
	setAttr ".tgi[0].ni[396].y" -8877.142578125;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 4058.571533203125;
	setAttr ".tgi[0].ni[397].y" -9568.5712890625;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 4880;
	setAttr ".tgi[0].ni[398].y" -4755.71435546875;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 5288.5712890625;
	setAttr ".tgi[0].ni[399].y" 9404.2861328125;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 4467.14306640625;
	setAttr ".tgi[0].ni[400].y" 5112.85693359375;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" -818.5714111328125;
	setAttr ".tgi[0].ni[401].y" 17308.572265625;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" -818.5714111328125;
	setAttr ".tgi[0].ni[402].y" 16674.28515625;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" -818.5714111328125;
	setAttr ".tgi[0].ni[403].y" 16357.142578125;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 4058.571533203125;
	setAttr ".tgi[0].ni[404].y" -5005.71435546875;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" 4467.14306640625;
	setAttr ".tgi[0].ni[405].y" -6897.14306640625;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 4467.14306640625;
	setAttr ".tgi[0].ni[406].y" -7994.28564453125;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 4467.14306640625;
	setAttr ".tgi[0].ni[407].y" 4910;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 4058.571533203125;
	setAttr ".tgi[0].ni[408].y" -6294.28564453125;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 4467.14306640625;
	setAttr ".tgi[0].ni[409].y" 4262.85693359375;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 4058.571533203125;
	setAttr ".tgi[0].ni[410].y" -7085.71435546875;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 4467.14306640625;
	setAttr ".tgi[0].ni[411].y" 4364.28564453125;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" -818.5714111328125;
	setAttr ".tgi[0].ni[412].y" 18158.572265625;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 4467.14306640625;
	setAttr ".tgi[0].ni[413].y" -7157.14306640625;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" 4467.14306640625;
	setAttr ".tgi[0].ni[414].y" -7734.28564453125;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 4058.571533203125;
	setAttr ".tgi[0].ni[415].y" -5502.85693359375;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 4058.571533203125;
	setAttr ".tgi[0].ni[416].y" -5898.5712890625;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" -818.5714111328125;
	setAttr ".tgi[0].ni[417].y" 17625.71484375;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 4467.14306640625;
	setAttr ".tgi[0].ni[418].y" 6064.28564453125;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 4467.14306640625;
	setAttr ".tgi[0].ni[419].y" -6580;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 4058.571533203125;
	setAttr ".tgi[0].ni[420].y" -7481.4287109375;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 4467.14306640625;
	setAttr ".tgi[0].ni[421].y" -8311.4287109375;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 4058.571533203125;
	setAttr ".tgi[0].ni[422].y" -6690;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" -818.5714111328125;
	setAttr ".tgi[0].ni[423].y" 19288.572265625;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 4467.14306640625;
	setAttr ".tgi[0].ni[424].y" 5011.4287109375;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 4467.14306640625;
	setAttr ".tgi[0].ni[425].y" 4465.71435546875;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" -818.5714111328125;
	setAttr ".tgi[0].ni[426].y" 16991.427734375;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 4467.14306640625;
	setAttr ".tgi[0].ni[427].y" 5962.85693359375;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 4467.14306640625;
	setAttr ".tgi[0].ni[428].y" 5861.4287109375;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 4058.571533203125;
	setAttr ".tgi[0].ni[429].y" -7754.28564453125;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 4058.571533203125;
	setAttr ".tgi[0].ni[430].y" -8502.857421875;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 4058.571533203125;
	setAttr ".tgi[0].ni[431].y" -9251.4287109375;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 4058.571533203125;
	setAttr ".tgi[0].ni[432].y" -13017.142578125;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 4058.571533203125;
	setAttr ".tgi[0].ni[433].y" -13220;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 2185.71435546875;
	setAttr ".tgi[0].ni[434].y" 9024.2861328125;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 2185.71435546875;
	setAttr ".tgi[0].ni[435].y" 8650;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 4058.571533203125;
	setAttr ".tgi[0].ni[436].y" -13118.5712890625;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 2185.71435546875;
	setAttr ".tgi[0].ni[437].y" 8251.4287109375;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 4467.14306640625;
	setAttr ".tgi[0].ni[438].y" 3254.28564453125;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 4058.571533203125;
	setAttr ".tgi[0].ni[439].y" -14707.142578125;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 4880;
	setAttr ".tgi[0].ni[440].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" 2185.71435546875;
	setAttr ".tgi[0].ni[441].y" 15730;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 2185.71435546875;
	setAttr ".tgi[0].ni[442].y" 15082.857421875;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" 2185.71435546875;
	setAttr ".tgi[0].ni[443].y" 14765.7138671875;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 2185.71435546875;
	setAttr ".tgi[0].ni[444].y" 14448.5712890625;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 2185.71435546875;
	setAttr ".tgi[0].ni[445].y" 6431.4287109375;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" 2185.71435546875;
	setAttr ".tgi[0].ni[446].y" 7877.14306640625;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" 2185.71435546875;
	setAttr ".tgi[0].ni[447].y" 13814.2861328125;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 4467.14306640625;
	setAttr ".tgi[0].ni[448].y" 3355.71435546875;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 4880;
	setAttr ".tgi[0].ni[449].y" 2241.428466796875;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 2185.71435546875;
	setAttr ".tgi[0].ni[450].y" 15412.857421875;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 2185.71435546875;
	setAttr ".tgi[0].ni[451].y" 14131.4287109375;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" 4467.14306640625;
	setAttr ".tgi[0].ni[452].y" 3457.142822265625;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 4467.14306640625;
	setAttr ".tgi[0].ni[453].y" -10258.5712890625;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 4058.571533203125;
	setAttr ".tgi[0].ni[454].y" -15081.4287109375;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" 4058.571533203125;
	setAttr ".tgi[0].ni[455].y" -17064.28515625;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" 4058.571533203125;
	setAttr ".tgi[0].ni[456].y" -17812.857421875;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 4058.571533203125;
	setAttr ".tgi[0].ni[457].y" -17438.572265625;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 2185.71435546875;
	setAttr ".tgi[0].ni[458].y" 5942.85693359375;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 4880;
	setAttr ".tgi[0].ni[459].y" -4914.28564453125;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" 4880;
	setAttr ".tgi[0].ni[460].y" 2140;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" 2185.71435546875;
	setAttr ".tgi[0].ni[461].y" 7224.28564453125;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 4058.571533203125;
	setAttr ".tgi[0].ni[462].y" -16690;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 4058.571533203125;
	setAttr ".tgi[0].ni[463].y" -6962.85693359375;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 3668.571533203125;
	setAttr ".tgi[0].ni[464].y" -3567.142822265625;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 3668.571533203125;
	setAttr ".tgi[0].ni[465].y" -2145.71435546875;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 4058.571533203125;
	setAttr ".tgi[0].ni[466].y" -6171.4287109375;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" 4058.571533203125;
	setAttr ".tgi[0].ni[467].y" -7358.5712890625;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" -427.14285278320312;
	setAttr ".tgi[0].ni[468].y" 17990;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" -3105.71435546875;
	setAttr ".tgi[0].ni[469].y" 17458.572265625;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 3668.571533203125;
	setAttr ".tgi[0].ni[470].y" -3065.71435546875;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" 4880;
	setAttr ".tgi[0].ni[471].y" -2460;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 4058.571533203125;
	setAttr ".tgi[0].ni[472].y" -5380;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" 2977.142822265625;
	setAttr ".tgi[0].ni[473].y" 3274.28564453125;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" 3668.571533203125;
	setAttr ".tgi[0].ni[474].y" -5125.71435546875;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 4058.571533203125;
	setAttr ".tgi[0].ni[475].y" -5775.71435546875;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" 4467.14306640625;
	setAttr ".tgi[0].ni[476].y" -10981.4287109375;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 3668.571533203125;
	setAttr ".tgi[0].ni[477].y" -4715.71435546875;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 5682.85693359375;
	setAttr ".tgi[0].ni[478].y" 8712.857421875;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 4880;
	setAttr ".tgi[0].ni[479].y" -3074.28564453125;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 4467.14306640625;
	setAttr ".tgi[0].ni[480].y" -11821.4287109375;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" 4058.571533203125;
	setAttr ".tgi[0].ni[481].y" -6567.14306640625;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 5288.5712890625;
	setAttr ".tgi[0].ni[482].y" -10327.142578125;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 4467.14306640625;
	setAttr ".tgi[0].ni[483].y" -12670;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" 3668.571533203125;
	setAttr ".tgi[0].ni[484].y" -4614.28564453125;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 3668.571533203125;
	setAttr ".tgi[0].ni[485].y" -2621.428466796875;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 3350;
	setAttr ".tgi[0].ni[486].y" 2327.142822265625;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 5682.85693359375;
	setAttr ".tgi[0].ni[487].y" 8590;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 4880;
	setAttr ".tgi[0].ni[488].y" -4632.85693359375;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" 4880;
	setAttr ".tgi[0].ni[489].y" -2705.71435546875;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" 4880;
	setAttr ".tgi[0].ni[490].y" 7094.28564453125;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 4880;
	setAttr ".tgi[0].ni[491].y" -2582.857177734375;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 4880;
	setAttr ".tgi[0].ni[492].y" -2828.571533203125;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 4467.14306640625;
	setAttr ".tgi[0].ni[493].y" -12217.142578125;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 4467.14306640625;
	setAttr ".tgi[0].ni[494].y" -13065.7138671875;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 4467.14306640625;
	setAttr ".tgi[0].ni[495].y" -13461.4287109375;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" -427.14285278320312;
	setAttr ".tgi[0].ni[496].y" 18667.142578125;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" 4880;
	setAttr ".tgi[0].ni[497].y" -2337.142822265625;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" -427.14285278320312;
	setAttr ".tgi[0].ni[498].y" 18328.572265625;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 2977.142822265625;
	setAttr ".tgi[0].ni[499].y" 3375.71435546875;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 2977.142822265625;
	setAttr ".tgi[0].ni[500].y" 3172.857177734375;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 4467.14306640625;
	setAttr ".tgi[0].ni[501].y" -13800;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 4880;
	setAttr ".tgi[0].ni[502].y" 5422.85693359375;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 3668.571533203125;
	setAttr ".tgi[0].ni[503].y" -3725.71435546875;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 3668.571533203125;
	setAttr ".tgi[0].ni[504].y" -4170;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 4880;
	setAttr ".tgi[0].ni[505].y" -2951.428466796875;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" -427.14285278320312;
	setAttr ".tgi[0].ni[506].y" 19130;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" -427.14285278320312;
	setAttr ".tgi[0].ni[507].y" 17271.427734375;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" -427.14285278320312;
	setAttr ".tgi[0].ni[508].y" 16831.427734375;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" -427.14285278320312;
	setAttr ".tgi[0].ni[509].y" 17708.572265625;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" -427.14285278320312;
	setAttr ".tgi[0].ni[510].y" 16435.71484375;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" -2744.28564453125;
	setAttr ".tgi[0].ni[511].y" 17834.28515625;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 2595.71435546875;
	setAttr ".tgi[0].ni[512].y" 15078.5712890625;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 2595.71435546875;
	setAttr ".tgi[0].ni[513].y" 8334.2861328125;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 4467.14306640625;
	setAttr ".tgi[0].ni[514].y" -11425.7138671875;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 2595.71435546875;
	setAttr ".tgi[0].ni[515].y" 6754.28564453125;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 4467.14306640625;
	setAttr ".tgi[0].ni[516].y" -19924.28515625;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 4467.14306640625;
	setAttr ".tgi[0].ni[517].y" -19247.142578125;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 5288.5712890625;
	setAttr ".tgi[0].ni[518].y" 4704.28564453125;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 2595.71435546875;
	setAttr ".tgi[0].ni[519].y" 14515.7138671875;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 2595.71435546875;
	setAttr ".tgi[0].ni[520].y" 14797.142578125;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" 2595.71435546875;
	setAttr ".tgi[0].ni[521].y" 5982.85693359375;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 4467.14306640625;
	setAttr ".tgi[0].ni[522].y" -14138.5712890625;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" 4467.14306640625;
	setAttr ".tgi[0].ni[523].y" -19585.71484375;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" 5288.5712890625;
	setAttr ".tgi[0].ni[524].y" -10512.857421875;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 2595.71435546875;
	setAttr ".tgi[0].ni[525].y" 14234.2861328125;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" 4880;
	setAttr ".tgi[0].ni[526].y" 7750;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" 4467.14306640625;
	setAttr ".tgi[0].ni[527].y" -15154.2861328125;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 4467.14306640625;
	setAttr ".tgi[0].ni[528].y" -14815.7138671875;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 4467.14306640625;
	setAttr ".tgi[0].ni[529].y" -15492.857421875;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" 4467.14306640625;
	setAttr ".tgi[0].ni[530].y" -15774.2861328125;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" 4467.14306640625;
	setAttr ".tgi[0].ni[531].y" -16474.28515625;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" 2595.71435546875;
	setAttr ".tgi[0].ni[532].y" 7995.71435546875;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 2595.71435546875;
	setAttr ".tgi[0].ni[533].y" 7318.5712890625;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 2595.71435546875;
	setAttr ".tgi[0].ni[534].y" 6321.4287109375;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 2595.71435546875;
	setAttr ".tgi[0].ni[535].y" 7657.14306640625;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" 4880;
	setAttr ".tgi[0].ni[536].y" 4545.71435546875;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 4467.14306640625;
	setAttr ".tgi[0].ni[537].y" -17935.71484375;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 4467.14306640625;
	setAttr ".tgi[0].ni[538].y" -18274.28515625;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 4467.14306640625;
	setAttr ".tgi[0].ni[539].y" -20262.857421875;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 4467.14306640625;
	setAttr ".tgi[0].ni[540].y" -14477.142578125;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" 4467.14306640625;
	setAttr ".tgi[0].ni[541].y" -16711.427734375;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 5682.85693359375;
	setAttr ".tgi[0].ni[542].y" 8488.5712890625;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 5288.5712890625;
	setAttr ".tgi[0].ni[543].y" -10674.2861328125;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 2595.71435546875;
	setAttr ".tgi[0].ni[544].y" 7872.85693359375;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" -4604.28564453125;
	setAttr ".tgi[0].ni[545].y" 18665.71484375;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 4467.14306640625;
	setAttr ".tgi[0].ni[546].y" -20385.71484375;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" 4880;
	setAttr ".tgi[0].ni[547].y" 4150;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" 2595.71435546875;
	setAttr ".tgi[0].ni[548].y" 6575.71435546875;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 4467.14306640625;
	setAttr ".tgi[0].ni[549].y" -17028.572265625;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 4880;
	setAttr ".tgi[0].ni[550].y" 4048.571533203125;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 4467.14306640625;
	setAttr ".tgi[0].ni[551].y" -18058.572265625;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 4880;
	setAttr ".tgi[0].ni[552].y" 5071.4287109375;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 4467.14306640625;
	setAttr ".tgi[0].ni[553].y" -18397.142578125;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" 4467.14306640625;
	setAttr ".tgi[0].ni[554].y" -18930;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 290;
	setAttr ".tgi[0].ni[555].y" 18081.427734375;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 4467.14306640625;
	setAttr ".tgi[0].ni[556].y" -20047.142578125;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 4467.14306640625;
	setAttr ".tgi[0].ni[557].y" -18612.857421875;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" 5288.5712890625;
	setAttr ".tgi[0].ni[558].y" -10805.7138671875;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" 290;
	setAttr ".tgi[0].ni[559].y" 17958.572265625;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 290;
	setAttr ".tgi[0].ni[560].y" 18204.28515625;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 5288.5712890625;
	setAttr ".tgi[0].ni[561].y" -11004.2861328125;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" -1471.4285888671875;
	setAttr ".tgi[0].ni[562].y" 14278.5712890625;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 4467.14306640625;
	setAttr ".tgi[0].ni[563].y" -16372.857421875;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 290;
	setAttr ".tgi[0].ni[564].y" 18450;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 4467.14306640625;
	setAttr ".tgi[0].ni[565].y" -3871.428466796875;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" 4880;
	setAttr ".tgi[0].ni[566].y" 4970;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" 2595.71435546875;
	setAttr ".tgi[0].ni[567].y" 6198.5712890625;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 4880;
	setAttr ".tgi[0].ni[568].y" 4868.5712890625;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 4880;
	setAttr ".tgi[0].ni[569].y" -584.28570556640625;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 2595.71435546875;
	setAttr ".tgi[0].ni[570].y" 5860;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" -2085.71435546875;
	setAttr ".tgi[0].ni[571].y" 17648.572265625;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 290;
	setAttr ".tgi[0].ni[572].y" 17418.572265625;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" 4467.14306640625;
	setAttr ".tgi[0].ni[573].y" -16170;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 4467.14306640625;
	setAttr ".tgi[0].ni[574].y" -16271.4287109375;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 2595.71435546875;
	setAttr ".tgi[0].ni[575].y" 8211.4287109375;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" 2595.71435546875;
	setAttr ".tgi[0].ni[576].y" 7195.71435546875;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" 4467.14306640625;
	setAttr ".tgi[0].ni[577].y" -19370;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" 4467.14306640625;
	setAttr ".tgi[0].ni[578].y" -19708.572265625;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" 4880;
	setAttr ".tgi[0].ni[579].y" 4251.4287109375;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" 4467.14306640625;
	setAttr ".tgi[0].ni[580].y" -17618.572265625;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 4467.14306640625;
	setAttr ".tgi[0].ni[581].y" -17402.857421875;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 5682.85693359375;
	setAttr ".tgi[0].ni[582].y" 7840;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" 5288.5712890625;
	setAttr ".tgi[0].ni[583].y" -11220;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 4467.14306640625;
	setAttr ".tgi[0].ni[584].y" -4188.5712890625;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 5288.5712890625;
	setAttr ".tgi[0].ni[585].y" -11360;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 5288.5712890625;
	setAttr ".tgi[0].ni[586].y" -11482.857421875;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 290;
	setAttr ".tgi[0].ni[587].y" 18597.142578125;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" 2595.71435546875;
	setAttr ".tgi[0].ni[588].y" 7534.28564453125;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 5288.5712890625;
	setAttr ".tgi[0].ni[589].y" -11681.4287109375;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 5682.85693359375;
	setAttr ".tgi[0].ni[590].y" 6900;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 290;
	setAttr ".tgi[0].ni[591].y" 18327.142578125;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 290;
	setAttr ".tgi[0].ni[592].y" 17835.71484375;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 290;
	setAttr ".tgi[0].ni[593].y" 17712.857421875;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 5288.5712890625;
	setAttr ".tgi[0].ni[594].y" -11897.142578125;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 5288.5712890625;
	setAttr ".tgi[0].ni[595].y" -12037.142578125;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" 5288.5712890625;
	setAttr ".tgi[0].ni[596].y" -12160;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 5288.5712890625;
	setAttr ".tgi[0].ni[597].y" -12358.5712890625;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 5288.5712890625;
	setAttr ".tgi[0].ni[598].y" -12548.5712890625;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 5288.5712890625;
	setAttr ".tgi[0].ni[599].y" -12714.2861328125;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 5288.5712890625;
	setAttr ".tgi[0].ni[600].y" -12911.4287109375;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" 3350;
	setAttr ".tgi[0].ni[601].y" 6480;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" 3350;
	setAttr ".tgi[0].ni[602].y" 6324.28564453125;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" 3350;
	setAttr ".tgi[0].ni[603].y" 6608.5712890625;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 3350;
	setAttr ".tgi[0].ni[604].y" 6191.4287109375;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" -62.857143402099609;
	setAttr ".tgi[0].ni[605].y" 18681.427734375;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" -62.857143402099609;
	setAttr ".tgi[0].ni[606].y" 17837.142578125;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" 5288.5712890625;
	setAttr ".tgi[0].ni[607].y" 7051.4287109375;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" 5682.85693359375;
	setAttr ".tgi[0].ni[608].y" 6025.71435546875;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" -1125.7142333984375;
	setAttr ".tgi[0].ni[609].y" 14791.4287109375;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" 4880;
	setAttr ".tgi[0].ni[610].y" 275.71429443359375;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 5682.85693359375;
	setAttr ".tgi[0].ni[611].y" 5681.4287109375;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 5288.5712890625;
	setAttr ".tgi[0].ni[612].y" -13145.7138671875;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" 5682.85693359375;
	setAttr ".tgi[0].ni[613].y" 5140;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 5288.5712890625;
	setAttr ".tgi[0].ni[614].y" -13268.5712890625;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" 4880;
	setAttr ".tgi[0].ni[615].y" 152.85714721679688;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" 4880;
	setAttr ".tgi[0].ni[616].y" -92.857139587402344;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" 4880;
	setAttr ".tgi[0].ni[617].y" -338.57144165039062;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" 5288.5712890625;
	setAttr ".tgi[0].ni[618].y" -14621.4287109375;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" 2977.142822265625;
	setAttr ".tgi[0].ni[619].y" 13217.142578125;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" 4880;
	setAttr ".tgi[0].ni[620].y" 30;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" 2977.142822265625;
	setAttr ".tgi[0].ni[621].y" 13078.5712890625;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" 4880;
	setAttr ".tgi[0].ni[622].y" -6141.4287109375;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" 5288.5712890625;
	setAttr ".tgi[0].ni[623].y" -15311.4287109375;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" 5288.5712890625;
	setAttr ".tgi[0].ni[624].y" 7902.85693359375;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" 5288.5712890625;
	setAttr ".tgi[0].ni[625].y" 7801.4287109375;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" 3350;
	setAttr ".tgi[0].ni[626].y" 6068.5712890625;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" 5288.5712890625;
	setAttr ".tgi[0].ni[627].y" -15434.2861328125;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" 5682.85693359375;
	setAttr ".tgi[0].ni[628].y" 4621.4287109375;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" 2977.142822265625;
	setAttr ".tgi[0].ni[629].y" 13801.4287109375;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" 2977.142822265625;
	setAttr ".tgi[0].ni[630].y" 13390;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" -62.857143402099609;
	setAttr ".tgi[0].ni[631].y" 16332.857421875;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" 2977.142822265625;
	setAttr ".tgi[0].ni[632].y" 13677.142578125;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" 5288.5712890625;
	setAttr ".tgi[0].ni[633].y" -15640;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" -62.857143402099609;
	setAttr ".tgi[0].ni[634].y" 18118.572265625;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" -3851.428466796875;
	setAttr ".tgi[0].ni[635].y" 18681.427734375;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" 5288.5712890625;
	setAttr ".tgi[0].ni[636].y" -15855.7138671875;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" 4880;
	setAttr ".tgi[0].ni[637].y" -6422.85693359375;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" 4880;
	setAttr ".tgi[0].ni[638].y" -5860;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" 5288.5712890625;
	setAttr ".tgi[0].ni[639].y" -15988.5712890625;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" 3350;
	setAttr ".tgi[0].ni[640].y" 5945.71435546875;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" 5288.5712890625;
	setAttr ".tgi[0].ni[641].y" -16111.4287109375;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" 5288.5712890625;
	setAttr ".tgi[0].ni[642].y" 8004.28564453125;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" 2977.142822265625;
	setAttr ".tgi[0].ni[643].y" 13548.5712890625;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" 4880;
	setAttr ".tgi[0].ni[644].y" -461.42855834960938;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 4880;
	setAttr ".tgi[0].ni[645].y" -6704.28564453125;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 5288.5712890625;
	setAttr ".tgi[0].ni[646].y" 6950;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 5288.5712890625;
	setAttr ".tgi[0].ni[647].y" 6848.5712890625;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 4880;
	setAttr ".tgi[0].ni[648].y" -6985.71435546875;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 4880;
	setAttr ".tgi[0].ni[649].y" -5578.5712890625;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 2977.142822265625;
	setAttr ".tgi[0].ni[650].y" 12928.5712890625;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 5288.5712890625;
	setAttr ".tgi[0].ni[651].y" -16317.142578125;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 5288.5712890625;
	setAttr ".tgi[0].ni[652].y" -16532.857421875;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 5288.5712890625;
	setAttr ".tgi[0].ni[653].y" -16665.71484375;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 3350;
	setAttr ".tgi[0].ni[654].y" 5822.85693359375;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 4880;
	setAttr ".tgi[0].ni[655].y" -215.71427917480469;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" -62.857143402099609;
	setAttr ".tgi[0].ni[656].y" 18962.857421875;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" -62.857143402099609;
	setAttr ".tgi[0].ni[657].y" 18400;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" -62.857143402099609;
	setAttr ".tgi[0].ni[658].y" 17520;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" -62.857143402099609;
	setAttr ".tgi[0].ni[659].y" 17238.572265625;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" -62.857143402099609;
	setAttr ".tgi[0].ni[660].y" 16900;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" -2410;
	setAttr ".tgi[0].ni[661].y" 17268.572265625;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 5288.5712890625;
	setAttr ".tgi[0].ni[662].y" 8655.7138671875;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 5288.5712890625;
	setAttr ".tgi[0].ni[663].y" 8554.2861328125;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 5288.5712890625;
	setAttr ".tgi[0].ni[664].y" 8452.857421875;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 4880;
	setAttr ".tgi[0].ni[665].y" -7267.14306640625;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 4880;
	setAttr ".tgi[0].ni[666].y" -5297.14306640625;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" 4880;
	setAttr ".tgi[0].ni[667].y" -7548.5712890625;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 4880;
	setAttr ".tgi[0].ni[668].y" -7830;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 2977.142822265625;
	setAttr ".tgi[0].ni[669].y" 7182.85693359375;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 5288.5712890625;
	setAttr ".tgi[0].ni[670].y" 5201.4287109375;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 4880;
	setAttr ".tgi[0].ni[671].y" -8775.7138671875;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 5288.5712890625;
	setAttr ".tgi[0].ni[672].y" 5844.28564453125;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 4880;
	setAttr ".tgi[0].ni[673].y" -15504.2861328125;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" 4880;
	setAttr ".tgi[0].ni[674].y" -13815.7138671875;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" 5288.5712890625;
	setAttr ".tgi[0].ni[675].y" 5100;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" 4880;
	setAttr ".tgi[0].ni[676].y" -8877.142578125;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 4880;
	setAttr ".tgi[0].ni[677].y" -14378.5712890625;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 5288.5712890625;
	setAttr ".tgi[0].ni[678].y" 5742.85693359375;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 2977.142822265625;
	setAttr ".tgi[0].ni[679].y" 6057.14306640625;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 4880;
	setAttr ".tgi[0].ni[680].y" -14941.4287109375;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 2977.142822265625;
	setAttr ".tgi[0].ni[681].y" 7464.28564453125;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 4880;
	setAttr ".tgi[0].ni[682].y" -15222.857421875;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 4880;
	setAttr ".tgi[0].ni[683].y" -15785.7138671875;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" 2977.142822265625;
	setAttr ".tgi[0].ni[684].y" 6620;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 4880;
	setAttr ".tgi[0].ni[685].y" -8111.4287109375;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" -4222.85693359375;
	setAttr ".tgi[0].ni[686].y" 18767.142578125;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" 4880;
	setAttr ".tgi[0].ni[687].y" -14097.142578125;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 5288.5712890625;
	setAttr ".tgi[0].ni[688].y" 5302.85693359375;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 4880;
	setAttr ".tgi[0].ni[689].y" -8617.142578125;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 2977.142822265625;
	setAttr ".tgi[0].ni[690].y" 6901.4287109375;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 4880;
	setAttr ".tgi[0].ni[691].y" -9664.2861328125;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" 5288.5712890625;
	setAttr ".tgi[0].ni[692].y" 5641.4287109375;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 4880;
	setAttr ".tgi[0].ni[693].y" -8978.5712890625;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" 4880;
	setAttr ".tgi[0].ni[694].y" -14660;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" 2977.142822265625;
	setAttr ".tgi[0].ni[695].y" 5775.71435546875;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" 4880;
	setAttr ".tgi[0].ni[696].y" -8392.857421875;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" -1471.4285888671875;
	setAttr ".tgi[0].ni[697].y" 15865.7138671875;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" 4880;
	setAttr ".tgi[0].ni[698].y" -13534.2861328125;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" 2977.142822265625;
	setAttr ".tgi[0].ni[699].y" 6338.5712890625;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" 4880;
	setAttr ".tgi[0].ni[700].y" -9382.857421875;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" 4880;
	setAttr ".tgi[0].ni[701].y" -13252.857421875;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" 5288.5712890625;
	setAttr ".tgi[0].ni[702].y" 6510;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" 5288.5712890625;
	setAttr ".tgi[0].ni[703].y" 6408.5712890625;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" 5288.5712890625;
	setAttr ".tgi[0].ni[704].y" 6307.14306640625;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" 4467.14306640625;
	setAttr ".tgi[0].ni[705].y" -4461.4287109375;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" 4467.14306640625;
	setAttr ".tgi[0].ni[706].y" -4778.5712890625;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" 4467.14306640625;
	setAttr ".tgi[0].ni[707].y" -5095.71435546875;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 4467.14306640625;
	setAttr ".tgi[0].ni[708].y" -5412.85693359375;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 4467.14306640625;
	setAttr ".tgi[0].ni[709].y" -5730;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 4467.14306640625;
	setAttr ".tgi[0].ni[710].y" -5990;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 4467.14306640625;
	setAttr ".tgi[0].ni[711].y" -6364.28564453125;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 5288.5712890625;
	setAttr ".tgi[0].ni[712].y" 4581.4287109375;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" 5288.5712890625;
	setAttr ".tgi[0].ni[713].y" 4480;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 5288.5712890625;
	setAttr ".tgi[0].ni[714].y" 4378.5712890625;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 2595.71435546875;
	setAttr ".tgi[0].ni[715].y" 14898.5712890625;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 2595.71435546875;
	setAttr ".tgi[0].ni[716].y" 14617.142578125;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 2595.71435546875;
	setAttr ".tgi[0].ni[717].y" 14335.7138671875;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" 2595.71435546875;
	setAttr ".tgi[0].ni[718].y" 14054.2861328125;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 2595.71435546875;
	setAttr ".tgi[0].ni[719].y" 13715.7138671875;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" 2595.71435546875;
	setAttr ".tgi[0].ni[720].y" 13434.2861328125;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 2595.71435546875;
	setAttr ".tgi[0].ni[721].y" 13095.7138671875;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 5288.5712890625;
	setAttr ".tgi[0].ni[722].y" 9245.7138671875;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" 5288.5712890625;
	setAttr ".tgi[0].ni[723].y" 9144.2861328125;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 5288.5712890625;
	setAttr ".tgi[0].ni[724].y" 9042.857421875;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 4467.14306640625;
	setAttr ".tgi[0].ni[725].y" -6795.71435546875;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 4467.14306640625;
	setAttr ".tgi[0].ni[726].y" -7055.71435546875;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" 4467.14306640625;
	setAttr ".tgi[0].ni[727].y" -7372.85693359375;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 4467.14306640625;
	setAttr ".tgi[0].ni[728].y" -7632.85693359375;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 4467.14306640625;
	setAttr ".tgi[0].ni[729].y" -7892.85693359375;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" 4467.14306640625;
	setAttr ".tgi[0].ni[730].y" -8210;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" -818.5714111328125;
	setAttr ".tgi[0].ni[731].y" 19130;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" 4467.14306640625;
	setAttr ".tgi[0].ni[732].y" 4104.28564453125;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" 4467.14306640625;
	setAttr ".tgi[0].ni[733].y" 4002.857177734375;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" 4467.14306640625;
	setAttr ".tgi[0].ni[734].y" 3901.428466796875;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" -818.5714111328125;
	setAttr ".tgi[0].ni[735].y" 18667.142578125;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" -818.5714111328125;
	setAttr ".tgi[0].ni[736].y" 17942.857421875;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" -818.5714111328125;
	setAttr ".tgi[0].ni[737].y" 17467.142578125;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" -818.5714111328125;
	setAttr ".tgi[0].ni[738].y" 17150;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" -818.5714111328125;
	setAttr ".tgi[0].ni[739].y" 16832.857421875;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" -818.5714111328125;
	setAttr ".tgi[0].ni[740].y" 16515.71484375;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" -818.5714111328125;
	setAttr ".tgi[0].ni[741].y" 16198.5712890625;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" -3105.71435546875;
	setAttr ".tgi[0].ni[742].y" 17975.71484375;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" 4467.14306640625;
	setAttr ".tgi[0].ni[743].y" 5702.85693359375;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" 4467.14306640625;
	setAttr ".tgi[0].ni[744].y" 5601.4287109375;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" 4467.14306640625;
	setAttr ".tgi[0].ni[745].y" 5500;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" 4058.571533203125;
	setAttr ".tgi[0].ni[746].y" -7912.85693359375;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" 4058.571533203125;
	setAttr ".tgi[0].ni[747].y" -5164.28564453125;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" 4058.571533203125;
	setAttr ".tgi[0].ni[748].y" -8287.142578125;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" 4058.571533203125;
	setAttr ".tgi[0].ni[749].y" -8661.4287109375;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" 4058.571533203125;
	setAttr ".tgi[0].ni[750].y" -9035.7138671875;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" 4058.571533203125;
	setAttr ".tgi[0].ni[751].y" -9410;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" 4058.571533203125;
	setAttr ".tgi[0].ni[752].y" -9727.142578125;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" -4604.28564453125;
	setAttr ".tgi[0].ni[753].y" 19180;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" -4604.28564453125;
	setAttr ".tgi[0].ni[754].y" 19078.572265625;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" -4604.28564453125;
	setAttr ".tgi[0].ni[755].y" 18977.142578125;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" -4604.28564453125;
	setAttr ".tgi[0].ni[756].y" 18875.71484375;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" -4604.28564453125;
	setAttr ".tgi[0].ni[757].y" 18774.28515625;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" 5288.5712890625;
	setAttr ".tgi[0].ni[758].y" 9911.4287109375;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" 5288.5712890625;
	setAttr ".tgi[0].ni[759].y" 9810;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" 5288.5712890625;
	setAttr ".tgi[0].ni[760].y" 9708.5712890625;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" 4467.14306640625;
	setAttr ".tgi[0].ni[761].y" -2730;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" 4467.14306640625;
	setAttr ".tgi[0].ni[762].y" -2990;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" 4467.14306640625;
	setAttr ".tgi[0].ni[763].y" -3250;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" 4467.14306640625;
	setAttr ".tgi[0].ni[764].y" -3510;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" 4467.14306640625;
	setAttr ".tgi[0].ni[765].y" -3770;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" 4467.14306640625;
	setAttr ".tgi[0].ni[766].y" -4030;
	setAttr ".tgi[0].ni[766].nvs" 18304;
	setAttr ".tgi[0].ni[767].x" 4058.571533203125;
	setAttr ".tgi[0].ni[767].y" -13378.5712890625;
	setAttr ".tgi[0].ni[767].nvs" 18304;
	setAttr ".tgi[0].ni[768].x" 4058.571533203125;
	setAttr ".tgi[0].ni[768].y" -13480;
	setAttr ".tgi[0].ni[768].nvs" 18304;
	setAttr ".tgi[0].ni[769].x" 4058.571533203125;
	setAttr ".tgi[0].ni[769].y" -13581.4287109375;
	setAttr ".tgi[0].ni[769].nvs" 18304;
	setAttr ".tgi[0].ni[770].x" 2185.71435546875;
	setAttr ".tgi[0].ni[770].y" 8865.7138671875;
	setAttr ".tgi[0].ni[770].nvs" 18304;
	setAttr ".tgi[0].ni[771].x" 2185.71435546875;
	setAttr ".tgi[0].ni[771].y" 8491.4287109375;
	setAttr ".tgi[0].ni[771].nvs" 18304;
	setAttr ".tgi[0].ni[772].x" 2185.71435546875;
	setAttr ".tgi[0].ni[772].y" 8092.85693359375;
	setAttr ".tgi[0].ni[772].nvs" 18304;
	setAttr ".tgi[0].ni[773].x" 2185.71435546875;
	setAttr ".tgi[0].ni[773].y" 7718.5712890625;
	setAttr ".tgi[0].ni[773].nvs" 18304;
	setAttr ".tgi[0].ni[774].x" 2185.71435546875;
	setAttr ".tgi[0].ni[774].y" 6761.4287109375;
	setAttr ".tgi[0].ni[774].nvs" 18304;
	setAttr ".tgi[0].ni[775].x" 2185.71435546875;
	setAttr ".tgi[0].ni[775].y" 6272.85693359375;
	setAttr ".tgi[0].ni[775].nvs" 18304;
	setAttr ".tgi[0].ni[776].x" 4880;
	setAttr ".tgi[0].ni[776].y" 18058.572265625;
	setAttr ".tgi[0].ni[776].nvs" 18304;
	setAttr ".tgi[0].ni[777].x" 4880;
	setAttr ".tgi[0].ni[777].y" 17957.142578125;
	setAttr ".tgi[0].ni[777].nvs" 18304;
	setAttr ".tgi[0].ni[778].x" 4880;
	setAttr ".tgi[0].ni[778].y" 17855.71484375;
	setAttr ".tgi[0].ni[778].nvs" 18304;
	setAttr ".tgi[0].ni[779].x" 4880;
	setAttr ".tgi[0].ni[779].y" 17754.28515625;
	setAttr ".tgi[0].ni[779].nvs" 18304;
	setAttr ".tgi[0].ni[780].x" 4880;
	setAttr ".tgi[0].ni[780].y" 17652.857421875;
	setAttr ".tgi[0].ni[780].nvs" 18304;
	setAttr ".tgi[0].ni[781].x" 4880;
	setAttr ".tgi[0].ni[781].y" 17551.427734375;
	setAttr ".tgi[0].ni[781].nvs" 18304;
	setAttr ".tgi[0].ni[782].x" 4880;
	setAttr ".tgi[0].ni[782].y" 17450;
	setAttr ".tgi[0].ni[782].nvs" 18304;
	setAttr ".tgi[0].ni[783].x" 4880;
	setAttr ".tgi[0].ni[783].y" 17348.572265625;
	setAttr ".tgi[0].ni[783].nvs" 18304;
	setAttr ".tgi[0].ni[784].x" 4880;
	setAttr ".tgi[0].ni[784].y" 17247.142578125;
	setAttr ".tgi[0].ni[784].nvs" 18304;
	setAttr ".tgi[0].ni[785].x" 4880;
	setAttr ".tgi[0].ni[785].y" 17145.71484375;
	setAttr ".tgi[0].ni[785].nvs" 18304;
	setAttr ".tgi[0].ni[786].x" 4467.14306640625;
	setAttr ".tgi[0].ni[786].y" 3095.71435546875;
	setAttr ".tgi[0].ni[786].nvs" 18304;
	setAttr ".tgi[0].ni[787].x" 4467.14306640625;
	setAttr ".tgi[0].ni[787].y" 2994.28564453125;
	setAttr ".tgi[0].ni[787].nvs" 18304;
	setAttr ".tgi[0].ni[788].x" 4467.14306640625;
	setAttr ".tgi[0].ni[788].y" 2892.857177734375;
	setAttr ".tgi[0].ni[788].nvs" 18304;
	setAttr ".tgi[0].ni[789].x" 4058.571533203125;
	setAttr ".tgi[0].ni[789].y" -14865.7138671875;
	setAttr ".tgi[0].ni[789].nvs" 18304;
	setAttr ".tgi[0].ni[790].x" 4058.571533203125;
	setAttr ".tgi[0].ni[790].y" -16848.572265625;
	setAttr ".tgi[0].ni[790].nvs" 18304;
	setAttr ".tgi[0].ni[791].x" 4058.571533203125;
	setAttr ".tgi[0].ni[791].y" -17222.857421875;
	setAttr ".tgi[0].ni[791].nvs" 18304;
	setAttr ".tgi[0].ni[792].x" 4880;
	setAttr ".tgi[0].ni[792].y" -5072.85693359375;
	setAttr ".tgi[0].ni[792].nvs" 18304;
	setAttr ".tgi[0].ni[793].x" 4058.571533203125;
	setAttr ".tgi[0].ni[793].y" -17597.142578125;
	setAttr ".tgi[0].ni[793].nvs" 18304;
	setAttr ".tgi[0].ni[794].x" 4058.571533203125;
	setAttr ".tgi[0].ni[794].y" -15240;
	setAttr ".tgi[0].ni[794].nvs" 18304;
	setAttr ".tgi[0].ni[795].x" 4058.571533203125;
	setAttr ".tgi[0].ni[795].y" -17971.427734375;
	setAttr ".tgi[0].ni[795].nvs" 18304;
	setAttr ".tgi[0].ni[796].x" 4880;
	setAttr ".tgi[0].ni[796].y" 3890;
	setAttr ".tgi[0].ni[796].nvs" 18304;
	setAttr ".tgi[0].ni[797].x" 4880;
	setAttr ".tgi[0].ni[797].y" 3788.571533203125;
	setAttr ".tgi[0].ni[797].nvs" 18304;
	setAttr ".tgi[0].ni[798].x" 4880;
	setAttr ".tgi[0].ni[798].y" 3687.142822265625;
	setAttr ".tgi[0].ni[798].nvs" 18304;
	setAttr ".tgi[0].ni[799].x" 4880;
	setAttr ".tgi[0].ni[799].y" -742.85711669921875;
	setAttr ".tgi[0].ni[799].nvs" 18304;
	setAttr ".tgi[0].ni[800].x" 4467.14306640625;
	setAttr ".tgi[0].ni[800].y" -16870;
	setAttr ".tgi[0].ni[800].nvs" 18304;
	setAttr ".tgi[0].ni[801].x" 4467.14306640625;
	setAttr ".tgi[0].ni[801].y" -17187.142578125;
	setAttr ".tgi[0].ni[801].nvs" 18304;
	setAttr ".tgi[0].ni[802].x" 4467.14306640625;
	setAttr ".tgi[0].ni[802].y" -17777.142578125;
	setAttr ".tgi[0].ni[802].nvs" 18304;
	setAttr ".tgi[0].ni[803].x" 4467.14306640625;
	setAttr ".tgi[0].ni[803].y" -19088.572265625;
	setAttr ".tgi[0].ni[803].nvs" 18304;
	setAttr ".tgi[0].ni[804].x" 4467.14306640625;
	setAttr ".tgi[0].ni[804].y" -18771.427734375;
	setAttr ".tgi[0].ni[804].nvs" 18304;
	setAttr ".tgi[0].ni[805].x" 4467.14306640625;
	setAttr ".tgi[0].ni[805].y" 16717.142578125;
	setAttr ".tgi[0].ni[805].nvs" 18304;
	setAttr ".tgi[0].ni[806].x" 4467.14306640625;
	setAttr ".tgi[0].ni[806].y" 16615.71484375;
	setAttr ".tgi[0].ni[806].nvs" 18304;
	setAttr ".tgi[0].ni[807].x" 4467.14306640625;
	setAttr ".tgi[0].ni[807].y" 16514.28515625;
	setAttr ".tgi[0].ni[807].nvs" 18304;
	setAttr ".tgi[0].ni[808].x" 4467.14306640625;
	setAttr ".tgi[0].ni[808].y" 16412.857421875;
	setAttr ".tgi[0].ni[808].nvs" 18304;
	setAttr ".tgi[0].ni[809].x" 4467.14306640625;
	setAttr ".tgi[0].ni[809].y" 16311.4287109375;
	setAttr ".tgi[0].ni[809].nvs" 18304;
	setAttr ".tgi[0].ni[810].x" 4467.14306640625;
	setAttr ".tgi[0].ni[810].y" 16210;
	setAttr ".tgi[0].ni[810].nvs" 18304;
	setAttr ".tgi[0].ni[811].x" 4467.14306640625;
	setAttr ".tgi[0].ni[811].y" 16108.5712890625;
	setAttr ".tgi[0].ni[811].nvs" 18304;
	setAttr ".tgi[0].ni[812].x" 4467.14306640625;
	setAttr ".tgi[0].ni[812].y" 16007.142578125;
	setAttr ".tgi[0].ni[812].nvs" 18304;
	setAttr ".tgi[0].ni[813].x" 4467.14306640625;
	setAttr ".tgi[0].ni[813].y" 15905.7138671875;
	setAttr ".tgi[0].ni[813].nvs" 18304;
	setAttr ".tgi[0].ni[814].x" 904.28570556640625;
	setAttr ".tgi[0].ni[814].y" 16425.71484375;
	setAttr ".tgi[0].ni[814].nvs" 18304;
	setAttr ".tgi[0].ni[815].x" 904.28570556640625;
	setAttr ".tgi[0].ni[815].y" 16324.2861328125;
	setAttr ".tgi[0].ni[815].nvs" 18304;
	setAttr ".tgi[0].ni[816].x" 904.28570556640625;
	setAttr ".tgi[0].ni[816].y" 16222.857421875;
	setAttr ".tgi[0].ni[816].nvs" 18304;
	setAttr ".tgi[0].ni[817].x" 904.28570556640625;
	setAttr ".tgi[0].ni[817].y" 16121.4287109375;
	setAttr ".tgi[0].ni[817].nvs" 18304;
	setAttr ".tgi[0].ni[818].x" 904.28570556640625;
	setAttr ".tgi[0].ni[818].y" 16020;
	setAttr ".tgi[0].ni[818].nvs" 18304;
	setAttr ".tgi[0].ni[819].x" 904.28570556640625;
	setAttr ".tgi[0].ni[819].y" 15918.5712890625;
	setAttr ".tgi[0].ni[819].nvs" 18304;
	setAttr ".tgi[0].ni[820].x" 904.28570556640625;
	setAttr ".tgi[0].ni[820].y" 15817.142578125;
	setAttr ".tgi[0].ni[820].nvs" 18304;
	setAttr ".tgi[0].ni[821].x" 904.28570556640625;
	setAttr ".tgi[0].ni[821].y" 15715.7138671875;
	setAttr ".tgi[0].ni[821].nvs" 18304;
	setAttr ".tgi[0].ni[822].x" 904.28570556640625;
	setAttr ".tgi[0].ni[822].y" 15614.2861328125;
	setAttr ".tgi[0].ni[822].nvs" 18304;
	setAttr ".tgi[0].ni[823].x" 904.28570556640625;
	setAttr ".tgi[0].ni[823].y" 15512.857421875;
	setAttr ".tgi[0].ni[823].nvs" 18304;
	setAttr ".tgi[0].ni[824].x" 904.28570556640625;
	setAttr ".tgi[0].ni[824].y" 17408.572265625;
	setAttr ".tgi[0].ni[824].nvs" 18304;
	setAttr ".tgi[0].ni[825].x" 904.28570556640625;
	setAttr ".tgi[0].ni[825].y" 17307.142578125;
	setAttr ".tgi[0].ni[825].nvs" 18304;
	setAttr ".tgi[0].ni[826].x" 904.28570556640625;
	setAttr ".tgi[0].ni[826].y" 17205.71484375;
	setAttr ".tgi[0].ni[826].nvs" 18304;
	setAttr ".tgi[0].ni[827].x" 904.28570556640625;
	setAttr ".tgi[0].ni[827].y" 17104.28515625;
	setAttr ".tgi[0].ni[827].nvs" 18304;
	setAttr ".tgi[0].ni[828].x" 904.28570556640625;
	setAttr ".tgi[0].ni[828].y" 17002.857421875;
	setAttr ".tgi[0].ni[828].nvs" 18304;
	setAttr ".tgi[0].ni[829].x" 904.28570556640625;
	setAttr ".tgi[0].ni[829].y" 16901.427734375;
	setAttr ".tgi[0].ni[829].nvs" 18304;
	setAttr ".tgi[0].ni[830].x" 904.28570556640625;
	setAttr ".tgi[0].ni[830].y" 16800;
	setAttr ".tgi[0].ni[830].nvs" 18304;
	setAttr ".tgi[0].ni[831].x" 904.28570556640625;
	setAttr ".tgi[0].ni[831].y" 16698.572265625;
	setAttr ".tgi[0].ni[831].nvs" 18304;
	setAttr ".tgi[0].ni[832].x" 4880;
	setAttr ".tgi[0].ni[832].y" 11257.142578125;
	setAttr ".tgi[0].ni[832].nvs" 18304;
	setAttr ".tgi[0].ni[833].x" 4880;
	setAttr ".tgi[0].ni[833].y" 11155.7138671875;
	setAttr ".tgi[0].ni[833].nvs" 18304;
	setAttr ".tgi[0].ni[834].x" 4880;
	setAttr ".tgi[0].ni[834].y" 11054.2861328125;
	setAttr ".tgi[0].ni[834].nvs" 18304;
	setAttr ".tgi[0].ni[835].x" 4880;
	setAttr ".tgi[0].ni[835].y" 10952.857421875;
	setAttr ".tgi[0].ni[835].nvs" 18304;
	setAttr ".tgi[0].ni[836].x" 4880;
	setAttr ".tgi[0].ni[836].y" 10851.4287109375;
	setAttr ".tgi[0].ni[836].nvs" 18304;
	setAttr ".tgi[0].ni[837].x" 4880;
	setAttr ".tgi[0].ni[837].y" 10750;
	setAttr ".tgi[0].ni[837].nvs" 18304;
	setAttr ".tgi[0].ni[838].x" 4880;
	setAttr ".tgi[0].ni[838].y" 10648.5712890625;
	setAttr ".tgi[0].ni[838].nvs" 18304;
	setAttr ".tgi[0].ni[839].x" 4880;
	setAttr ".tgi[0].ni[839].y" 10547.142578125;
	setAttr ".tgi[0].ni[839].nvs" 18304;
	setAttr ".tgi[0].ni[840].x" 4880;
	setAttr ".tgi[0].ni[840].y" 10445.7138671875;
	setAttr ".tgi[0].ni[840].nvs" 18304;
	setAttr ".tgi[0].ni[841].x" 904.28570556640625;
	setAttr ".tgi[0].ni[841].y" 14831.4287109375;
	setAttr ".tgi[0].ni[841].nvs" 18304;
	setAttr ".tgi[0].ni[842].x" 904.28570556640625;
	setAttr ".tgi[0].ni[842].y" 14730;
	setAttr ".tgi[0].ni[842].nvs" 18304;
	setAttr ".tgi[0].ni[843].x" 904.28570556640625;
	setAttr ".tgi[0].ni[843].y" 14628.5712890625;
	setAttr ".tgi[0].ni[843].nvs" 18304;
	setAttr ".tgi[0].ni[844].x" 904.28570556640625;
	setAttr ".tgi[0].ni[844].y" 14527.142578125;
	setAttr ".tgi[0].ni[844].nvs" 18304;
	setAttr ".tgi[0].ni[845].x" 904.28570556640625;
	setAttr ".tgi[0].ni[845].y" 14425.7138671875;
	setAttr ".tgi[0].ni[845].nvs" 18304;
	setAttr ".tgi[0].ni[846].x" 904.28570556640625;
	setAttr ".tgi[0].ni[846].y" 14324.2861328125;
	setAttr ".tgi[0].ni[846].nvs" 18304;
	setAttr ".tgi[0].ni[847].x" 904.28570556640625;
	setAttr ".tgi[0].ni[847].y" 14222.857421875;
	setAttr ".tgi[0].ni[847].nvs" 18304;
	setAttr ".tgi[0].ni[848].x" 904.28570556640625;
	setAttr ".tgi[0].ni[848].y" 14121.4287109375;
	setAttr ".tgi[0].ni[848].nvs" 18304;
	setAttr ".tgi[0].ni[849].x" 904.28570556640625;
	setAttr ".tgi[0].ni[849].y" 14020;
	setAttr ".tgi[0].ni[849].nvs" 18304;
	setAttr ".tgi[0].ni[850].x" 904.28570556640625;
	setAttr ".tgi[0].ni[850].y" 13918.5712890625;
	setAttr ".tgi[0].ni[850].nvs" 18304;
	setAttr ".tgi[0].ni[851].x" 4880;
	setAttr ".tgi[0].ni[851].y" 15687.142578125;
	setAttr ".tgi[0].ni[851].nvs" 18304;
	setAttr ".tgi[0].ni[852].x" 4880;
	setAttr ".tgi[0].ni[852].y" 15585.7138671875;
	setAttr ".tgi[0].ni[852].nvs" 18304;
	setAttr ".tgi[0].ni[853].x" 4880;
	setAttr ".tgi[0].ni[853].y" 15484.2861328125;
	setAttr ".tgi[0].ni[853].nvs" 18304;
	setAttr ".tgi[0].ni[854].x" 4880;
	setAttr ".tgi[0].ni[854].y" 15382.857421875;
	setAttr ".tgi[0].ni[854].nvs" 18304;
	setAttr ".tgi[0].ni[855].x" 4880;
	setAttr ".tgi[0].ni[855].y" 15281.4287109375;
	setAttr ".tgi[0].ni[855].nvs" 18304;
	setAttr ".tgi[0].ni[856].x" 4880;
	setAttr ".tgi[0].ni[856].y" 15180;
	setAttr ".tgi[0].ni[856].nvs" 18304;
	setAttr ".tgi[0].ni[857].x" 4880;
	setAttr ".tgi[0].ni[857].y" 15078.5712890625;
	setAttr ".tgi[0].ni[857].nvs" 18304;
	setAttr ".tgi[0].ni[858].x" 4880;
	setAttr ".tgi[0].ni[858].y" 14977.142578125;
	setAttr ".tgi[0].ni[858].nvs" 18304;
	setAttr ".tgi[0].ni[859].x" 4880;
	setAttr ".tgi[0].ni[859].y" 14875.7138671875;
	setAttr ".tgi[0].ni[859].nvs" 18304;
	setAttr ".tgi[0].ni[860].x" 5288.5712890625;
	setAttr ".tgi[0].ni[860].y" 6205.71435546875;
	setAttr ".tgi[0].ni[860].nvs" 18304;
	setAttr ".tgi[0].ni[861].x" 5288.5712890625;
	setAttr ".tgi[0].ni[861].y" 6104.28564453125;
	setAttr ".tgi[0].ni[861].nvs" 18304;
	setAttr ".tgi[0].ni[862].x" 5288.5712890625;
	setAttr ".tgi[0].ni[862].y" 6002.85693359375;
	setAttr ".tgi[0].ni[862].nvs" 18304;
	setAttr ".tgi[0].ni[863].x" 4467.14306640625;
	setAttr ".tgi[0].ni[863].y" -4562.85693359375;
	setAttr ".tgi[0].ni[863].nvs" 18304;
	setAttr ".tgi[0].ni[864].x" 4467.14306640625;
	setAttr ".tgi[0].ni[864].y" -4880;
	setAttr ".tgi[0].ni[864].nvs" 18304;
	setAttr ".tgi[0].ni[865].x" 4467.14306640625;
	setAttr ".tgi[0].ni[865].y" -5197.14306640625;
	setAttr ".tgi[0].ni[865].nvs" 18304;
	setAttr ".tgi[0].ni[866].x" 4467.14306640625;
	setAttr ".tgi[0].ni[866].y" -5514.28564453125;
	setAttr ".tgi[0].ni[866].nvs" 18304;
	setAttr ".tgi[0].ni[867].x" 4467.14306640625;
	setAttr ".tgi[0].ni[867].y" -5831.4287109375;
	setAttr ".tgi[0].ni[867].nvs" 18304;
	setAttr ".tgi[0].ni[868].x" 4467.14306640625;
	setAttr ".tgi[0].ni[868].y" -6091.4287109375;
	setAttr ".tgi[0].ni[868].nvs" 18304;
	setAttr ".tgi[0].ni[869].x" 4880;
	setAttr ".tgi[0].ni[869].y" 1880;
	setAttr ".tgi[0].ni[869].nvs" 18304;
	setAttr ".tgi[0].ni[870].x" 4880;
	setAttr ".tgi[0].ni[870].y" 1778.5714111328125;
	setAttr ".tgi[0].ni[870].nvs" 18304;
	setAttr ".tgi[0].ni[871].x" 4880;
	setAttr ".tgi[0].ni[871].y" 1677.142822265625;
	setAttr ".tgi[0].ni[871].nvs" 18304;
	setAttr ".tgi[0].ni[872].x" 2185.71435546875;
	setAttr ".tgi[0].ni[872].y" 15571.4287109375;
	setAttr ".tgi[0].ni[872].nvs" 18304;
	setAttr ".tgi[0].ni[873].x" 2185.71435546875;
	setAttr ".tgi[0].ni[873].y" 15254.2861328125;
	setAttr ".tgi[0].ni[873].nvs" 18304;
	setAttr ".tgi[0].ni[874].x" 2185.71435546875;
	setAttr ".tgi[0].ni[874].y" 14924.2861328125;
	setAttr ".tgi[0].ni[874].nvs" 18304;
	setAttr ".tgi[0].ni[875].x" 2185.71435546875;
	setAttr ".tgi[0].ni[875].y" 14607.142578125;
	setAttr ".tgi[0].ni[875].nvs" 18304;
	setAttr ".tgi[0].ni[876].x" 2185.71435546875;
	setAttr ".tgi[0].ni[876].y" 14290;
	setAttr ".tgi[0].ni[876].nvs" 18304;
	setAttr ".tgi[0].ni[877].x" 2185.71435546875;
	setAttr ".tgi[0].ni[877].y" 13972.857421875;
	setAttr ".tgi[0].ni[877].nvs" 18304;
	setAttr ".tgi[0].ni[878].x" 2185.71435546875;
	setAttr ".tgi[0].ni[878].y" 13655.7138671875;
	setAttr ".tgi[0].ni[878].nvs" 18304;
	setAttr ".tgi[0].ni[879].x" 3668.571533203125;
	setAttr ".tgi[0].ni[879].y" 18367.142578125;
	setAttr ".tgi[0].ni[879].nvs" 18304;
	setAttr ".tgi[0].ni[880].x" 3668.571533203125;
	setAttr ".tgi[0].ni[880].y" 18265.71484375;
	setAttr ".tgi[0].ni[880].nvs" 18304;
	setAttr ".tgi[0].ni[881].x" 3668.571533203125;
	setAttr ".tgi[0].ni[881].y" 18164.28515625;
	setAttr ".tgi[0].ni[881].nvs" 18304;
	setAttr ".tgi[0].ni[882].x" 3668.571533203125;
	setAttr ".tgi[0].ni[882].y" 18062.857421875;
	setAttr ".tgi[0].ni[882].nvs" 18304;
	setAttr ".tgi[0].ni[883].x" 3668.571533203125;
	setAttr ".tgi[0].ni[883].y" 17961.427734375;
	setAttr ".tgi[0].ni[883].nvs" 18304;
	setAttr ".tgi[0].ni[884].x" 904.28570556640625;
	setAttr ".tgi[0].ni[884].y" 18277.142578125;
	setAttr ".tgi[0].ni[884].nvs" 18304;
	setAttr ".tgi[0].ni[885].x" 904.28570556640625;
	setAttr ".tgi[0].ni[885].y" 18175.71484375;
	setAttr ".tgi[0].ni[885].nvs" 18304;
	setAttr ".tgi[0].ni[886].x" 904.28570556640625;
	setAttr ".tgi[0].ni[886].y" 18074.28515625;
	setAttr ".tgi[0].ni[886].nvs" 18304;
	setAttr ".tgi[0].ni[887].x" 904.28570556640625;
	setAttr ".tgi[0].ni[887].y" 17972.857421875;
	setAttr ".tgi[0].ni[887].nvs" 18304;
	setAttr ".tgi[0].ni[888].x" 904.28570556640625;
	setAttr ".tgi[0].ni[888].y" 17871.427734375;
	setAttr ".tgi[0].ni[888].nvs" 18304;
	setAttr ".tgi[0].ni[889].x" 904.28570556640625;
	setAttr ".tgi[0].ni[889].y" 17770;
	setAttr ".tgi[0].ni[889].nvs" 18304;
	setAttr ".tgi[0].ni[890].x" 904.28570556640625;
	setAttr ".tgi[0].ni[890].y" 17668.572265625;
	setAttr ".tgi[0].ni[890].nvs" 18304;
	setAttr ".tgi[0].ni[891].x" 904.28570556640625;
	setAttr ".tgi[0].ni[891].y" 17567.142578125;
	setAttr ".tgi[0].ni[891].nvs" 18304;
	setAttr ".tgi[0].ni[892].x" 4467.14306640625;
	setAttr ".tgi[0].ni[892].y" -10677.142578125;
	setAttr ".tgi[0].ni[892].nvs" 18304;
	setAttr ".tgi[0].ni[893].x" 4467.14306640625;
	setAttr ".tgi[0].ni[893].y" -10778.5712890625;
	setAttr ".tgi[0].ni[893].nvs" 18304;
	setAttr ".tgi[0].ni[894].x" 4467.14306640625;
	setAttr ".tgi[0].ni[894].y" -10880;
	setAttr ".tgi[0].ni[894].nvs" 18304;
	setAttr ".tgi[0].ni[895].x" 4467.14306640625;
	setAttr ".tgi[0].ni[895].y" -8685.7138671875;
	setAttr ".tgi[0].ni[895].nvs" 18304;
	setAttr ".tgi[0].ni[896].x" 4467.14306640625;
	setAttr ".tgi[0].ni[896].y" -8945.7138671875;
	setAttr ".tgi[0].ni[896].nvs" 18304;
	setAttr ".tgi[0].ni[897].x" 4467.14306640625;
	setAttr ".tgi[0].ni[897].y" -9262.857421875;
	setAttr ".tgi[0].ni[897].nvs" 18304;
	setAttr ".tgi[0].ni[898].x" 4467.14306640625;
	setAttr ".tgi[0].ni[898].y" -9522.857421875;
	setAttr ".tgi[0].ni[898].nvs" 18304;
	setAttr ".tgi[0].ni[899].x" 4467.14306640625;
	setAttr ".tgi[0].ni[899].y" -9840;
	setAttr ".tgi[0].ni[899].nvs" 18304;
	setAttr ".tgi[0].ni[900].x" 4467.14306640625;
	setAttr ".tgi[0].ni[900].y" -10100;
	setAttr ".tgi[0].ni[900].nvs" 18304;
select -ne :time1;
	setAttr ".o" 41;
	setAttr ".unw" 41;
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
	setAttr -s 4 ".sol";
connectAttr "Player_rigRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Player_rigRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Player_rigRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Player_rigRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Player_rigRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Player_rigRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Player_rigRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "Player_rigRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Player_rigRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Player_rigRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Player_rigRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Player_rigRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Player_rigRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Player_rigRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Player_rigRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "Player_rigRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Player_rigRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Player_rigRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "Player_rigRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Player_rigRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Player_rigRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Player_rigRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Player_rigRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Player_rigRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Player_rigRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Player_rigRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "Player_rigRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Player_rigRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Player_rigRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "Player_rigRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Player_rigRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Player_rigRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "Player_rigRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Player_rigRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Player_rigRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Player_rigRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Player_rigRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Player_rigRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Player_rigRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Player_rigRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Player_rigRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Player_rigRN.phl[59]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Player_rigRN.phl[60]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Player_rigRN.phl[61]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Player_rigRN.phl[62]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Player_rigRN.phl[63]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Player_rigRN.phl[64]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Player_rigRN.phl[65]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Player_rigRN.phl[66]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Player_rigRN.phl[67]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[68]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[69]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[70]" "Left.dsm" -na;
connectAttr "CTRL_ship_translateY_Left.o" "Player_rigRN.phl[71]";
connectAttr "Player_rigRN.phl[72]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[73]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[74]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[75]" "Left.dsm" -na;
connectAttr "CTRL_ship_translateX_Left.o" "Player_rigRN.phl[76]";
connectAttr "Player_rigRN.phl[77]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[78]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[79]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[80]" "Left.dsm" -na;
connectAttr "CTRL_ship_translateZ_Left.o" "Player_rigRN.phl[81]";
connectAttr "Player_rigRN.phl[82]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[83]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[84]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[85]" "Left.dsm" -na;
connectAttr "CTRL_ship_rotate_Left.ox" "Player_rigRN.phl[86]";
connectAttr "Player_rigRN.phl[87]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[88]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[89]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[90]" "Left.dsm" -na;
connectAttr "CTRL_ship_rotate_Left.oy" "Player_rigRN.phl[91]";
connectAttr "Player_rigRN.phl[92]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[93]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[94]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[95]" "Left.dsm" -na;
connectAttr "CTRL_ship_rotate_Left.oz" "Player_rigRN.phl[96]";
connectAttr "Player_rigRN.phl[97]" "CTRL_ship_rotate_Backwards.ro";
connectAttr "Player_rigRN.phl[98]" "CTRL_ship_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[99]" "CTRL_ship_rotate_Right.ro";
connectAttr "Player_rigRN.phl[100]" "CTRL_ship_rotate_Left.ro";
connectAttr "Player_rigRN.phl[101]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[102]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[103]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[104]" "Left.dsm" -na;
connectAttr "CTRL_ship_scaleX_Left.o" "Player_rigRN.phl[105]";
connectAttr "Player_rigRN.phl[106]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[107]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[108]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[109]" "Left.dsm" -na;
connectAttr "CTRL_ship_scaleY_Left.o" "Player_rigRN.phl[110]";
connectAttr "Player_rigRN.phl[111]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[112]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[113]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[114]" "Left.dsm" -na;
connectAttr "CTRL_ship_scaleZ_Left.o" "Player_rigRN.phl[115]";
connectAttr "Player_rigRN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Player_rigRN.phl[117]" "Backwards.dsm" -na;
connectAttr "Player_rigRN.phl[118]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[119]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[120]" "Left.dsm" -na;
connectAttr "CTRL_ship_visibility_Left.o" "Player_rigRN.phl[121]";
connectAttr "Player_rigRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "CTRL_root_translateX.o" "Player_rigRN.phl[123]";
connectAttr "CTRL_root_translateY.o" "Player_rigRN.phl[124]";
connectAttr "CTRL_root_translateZ.o" "Player_rigRN.phl[125]";
connectAttr "CTRL_root_rotateX.o" "Player_rigRN.phl[126]";
connectAttr "CTRL_root_rotateY.o" "Player_rigRN.phl[127]";
connectAttr "CTRL_root_rotateZ.o" "Player_rigRN.phl[128]";
connectAttr "CTRL_root_scaleX.o" "Player_rigRN.phl[129]";
connectAttr "CTRL_root_scaleY.o" "Player_rigRN.phl[130]";
connectAttr "CTRL_root_scaleZ.o" "Player_rigRN.phl[131]";
connectAttr "Player_rigRN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "CTRL_root_visibility.o" "Player_rigRN.phl[133]";
connectAttr "Player_rigRN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "Player_rigRN.phl[135]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[136]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[137]" "Left.dsm" -na;
connectAttr "CTRL_cog_IKFK_Switch_Left.o" "Player_rigRN.phl[138]";
connectAttr "Player_rigRN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Player_rigRN.phl[140]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[141]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[142]" "Left.dsm" -na;
connectAttr "CTRL_cog_rotate_Left.ox" "Player_rigRN.phl[143]";
connectAttr "Player_rigRN.phl[144]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[145]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[146]" "Left.dsm" -na;
connectAttr "CTRL_cog_rotate_Left.oy" "Player_rigRN.phl[147]";
connectAttr "Player_rigRN.phl[148]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[149]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[150]" "Left.dsm" -na;
connectAttr "CTRL_cog_rotate_Left.oz" "Player_rigRN.phl[151]";
connectAttr "Player_rigRN.phl[152]" "CTRL_cog_rotate_Right.ro";
connectAttr "Player_rigRN.phl[153]" "CTRL_cog_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[154]" "CTRL_cog_rotate_Left.ro";
connectAttr "Player_rigRN.phl[155]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[156]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[157]" "Left.dsm" -na;
connectAttr "CTRL_cog_scaleX_Left.o" "Player_rigRN.phl[158]";
connectAttr "Player_rigRN.phl[159]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[160]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[161]" "Left.dsm" -na;
connectAttr "CTRL_cog_scaleY_Left.o" "Player_rigRN.phl[162]";
connectAttr "Player_rigRN.phl[163]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[164]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[165]" "Left.dsm" -na;
connectAttr "CTRL_cog_scaleZ_Left.o" "Player_rigRN.phl[166]";
connectAttr "Player_rigRN.phl[167]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[168]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[169]" "Left.dsm" -na;
connectAttr "CTRL_cog_translateX_Left.o" "Player_rigRN.phl[170]";
connectAttr "Player_rigRN.phl[171]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[172]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[173]" "Left.dsm" -na;
connectAttr "CTRL_cog_translateY_Left.o" "Player_rigRN.phl[174]";
connectAttr "Player_rigRN.phl[175]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[176]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[177]" "Left.dsm" -na;
connectAttr "CTRL_cog_translateZ_Left.o" "Player_rigRN.phl[178]";
connectAttr "Player_rigRN.phl[179]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[180]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[181]" "Left.dsm" -na;
connectAttr "CTRL_cog_visibility_Left.o" "Player_rigRN.phl[182]";
connectAttr "Player_rigRN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "Player_rigRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "CTRL_leg_r_IKFK_IKFK_Switch.o" "Player_rigRN.phl[185]";
connectAttr "Player_rigRN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "CTRL_leg_r_IKFK_translateX.o" "Player_rigRN.phl[187]";
connectAttr "CTRL_leg_r_IKFK_translateY.o" "Player_rigRN.phl[188]";
connectAttr "CTRL_leg_r_IKFK_translateZ.o" "Player_rigRN.phl[189]";
connectAttr "CTRL_leg_r_IKFK_visibility.o" "Player_rigRN.phl[190]";
connectAttr "Player_rigRN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Player_rigRN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Player_rigRN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "Player_rigRN.phl[194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Player_rigRN.phl[195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "CTRL_leg_r_pole_translateX.o" "Player_rigRN.phl[196]";
connectAttr "CTRL_leg_r_pole_translateY.o" "Player_rigRN.phl[197]";
connectAttr "CTRL_leg_r_pole_translateZ.o" "Player_rigRN.phl[198]";
connectAttr "Player_rigRN.phl[199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "CTRL_leg_r_pole_rotateX.o" "Player_rigRN.phl[200]";
connectAttr "CTRL_leg_r_pole_rotateY.o" "Player_rigRN.phl[201]";
connectAttr "CTRL_leg_r_pole_rotateZ.o" "Player_rigRN.phl[202]";
connectAttr "CTRL_leg_r_pole_scaleX.o" "Player_rigRN.phl[203]";
connectAttr "CTRL_leg_r_pole_scaleY.o" "Player_rigRN.phl[204]";
connectAttr "CTRL_leg_r_pole_scaleZ.o" "Player_rigRN.phl[205]";
connectAttr "Player_rigRN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Player_rigRN.phl[207]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_visibility_Forwards.o" "Player_rigRN.phl[208]";
connectAttr "Player_rigRN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Player_rigRN.phl[210]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_rotate_Forwards.ox" "Player_rigRN.phl[211]";
connectAttr "Player_rigRN.phl[212]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_rotate_Forwards.oy" "Player_rigRN.phl[213]";
connectAttr "Player_rigRN.phl[214]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_rotate_Forwards.oz" "Player_rigRN.phl[215]";
connectAttr "Player_rigRN.phl[216]" "CTRL_foot_r_IK_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[217]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards.o" "Player_rigRN.phl[218]";
connectAttr "Player_rigRN.phl[219]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards.o" "Player_rigRN.phl[220]";
connectAttr "Player_rigRN.phl[221]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards.o" "Player_rigRN.phl[222]";
connectAttr "Player_rigRN.phl[223]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_translateX_Forwards.o" "Player_rigRN.phl[224]";
connectAttr "Player_rigRN.phl[225]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_translateY_Forwards.o" "Player_rigRN.phl[226]";
connectAttr "Player_rigRN.phl[227]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards.o" "Player_rigRN.phl[228]";
connectAttr "Player_rigRN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Player_rigRN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Player_rigRN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Player_rigRN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "CTRL_leg_l_IKFK_IKFK_Switch.o" "Player_rigRN.phl[233]";
connectAttr "Player_rigRN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "CTRL_leg_l_IKFK_translateX.o" "Player_rigRN.phl[235]";
connectAttr "CTRL_leg_l_IKFK_translateY.o" "Player_rigRN.phl[236]";
connectAttr "CTRL_leg_l_IKFK_translateZ.o" "Player_rigRN.phl[237]";
connectAttr "CTRL_leg_l_IKFK_visibility.o" "Player_rigRN.phl[238]";
connectAttr "Player_rigRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Player_rigRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "Player_rigRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Player_rigRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Player_rigRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Player_rigRN.phl[244]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_visibility_Forwards.o" "Player_rigRN.phl[245]";
connectAttr "Player_rigRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Player_rigRN.phl[247]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_rotate_Forwards.ox" "Player_rigRN.phl[248]";
connectAttr "Player_rigRN.phl[249]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_rotate_Forwards.oy" "Player_rigRN.phl[250]";
connectAttr "Player_rigRN.phl[251]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_rotate_Forwards.oz" "Player_rigRN.phl[252]";
connectAttr "Player_rigRN.phl[253]" "CTRL_foot_l_IK_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[254]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards.o" "Player_rigRN.phl[255]";
connectAttr "Player_rigRN.phl[256]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards.o" "Player_rigRN.phl[257]";
connectAttr "Player_rigRN.phl[258]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards.o" "Player_rigRN.phl[259]";
connectAttr "Player_rigRN.phl[260]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_translateX_Forwards.o" "Player_rigRN.phl[261]";
connectAttr "Player_rigRN.phl[262]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_translateY_Forwards.o" "Player_rigRN.phl[263]";
connectAttr "Player_rigRN.phl[264]" "Forwards.dsm" -na;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards.o" "Player_rigRN.phl[265]";
connectAttr "Player_rigRN.phl[266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Player_rigRN.phl[267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Player_rigRN.phl[268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "CTRL_leg_l_pole_translateX.o" "Player_rigRN.phl[269]";
connectAttr "CTRL_leg_l_pole_translateY.o" "Player_rigRN.phl[270]";
connectAttr "CTRL_leg_l_pole_translateZ.o" "Player_rigRN.phl[271]";
connectAttr "Player_rigRN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "CTRL_leg_l_pole_rotateX.o" "Player_rigRN.phl[273]";
connectAttr "CTRL_leg_l_pole_rotateY.o" "Player_rigRN.phl[274]";
connectAttr "CTRL_leg_l_pole_rotateZ.o" "Player_rigRN.phl[275]";
connectAttr "CTRL_leg_l_pole_scaleX.o" "Player_rigRN.phl[276]";
connectAttr "CTRL_leg_l_pole_scaleY.o" "Player_rigRN.phl[277]";
connectAttr "CTRL_leg_l_pole_scaleZ.o" "Player_rigRN.phl[278]";
connectAttr "Player_rigRN.phl[279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Player_rigRN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Player_rigRN.phl[281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "CTRL_shoulder_r_rotateX.o" "Player_rigRN.phl[282]";
connectAttr "CTRL_shoulder_r_rotateY.o" "Player_rigRN.phl[283]";
connectAttr "CTRL_shoulder_r_rotateZ.o" "Player_rigRN.phl[284]";
connectAttr "CTRL_shoulder_r_scaleX.o" "Player_rigRN.phl[285]";
connectAttr "CTRL_shoulder_r_scaleY.o" "Player_rigRN.phl[286]";
connectAttr "CTRL_shoulder_r_scaleZ.o" "Player_rigRN.phl[287]";
connectAttr "CTRL_shoulder_r_translateX.o" "Player_rigRN.phl[288]";
connectAttr "CTRL_shoulder_r_translateY.o" "Player_rigRN.phl[289]";
connectAttr "CTRL_shoulder_r_translateZ.o" "Player_rigRN.phl[290]";
connectAttr "CTRL_shoulder_r_visibility.o" "Player_rigRN.phl[291]";
connectAttr "Player_rigRN.phl[292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "Player_rigRN.phl[293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Player_rigRN.phl[294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Player_rigRN.phl[295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "Player_rigRN.phl[296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "Player_rigRN.phl[297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Player_rigRN.phl[298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Player_rigRN.phl[299]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[300]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_visibility_Left.o" "Player_rigRN.phl[301]";
connectAttr "Player_rigRN.phl[302]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[303]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_rotate_Left.ox" "Player_rigRN.phl[304]";
connectAttr "Player_rigRN.phl[305]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[306]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_rotate_Left.oy" "Player_rigRN.phl[307]";
connectAttr "Player_rigRN.phl[308]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[309]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_rotate_Left.oz" "Player_rigRN.phl[310]";
connectAttr "Player_rigRN.phl[311]" "CTRL_arm_r_ik_rotate_Right.ro";
connectAttr "Player_rigRN.phl[312]" "CTRL_arm_r_ik_rotate_Left.ro";
connectAttr "Player_rigRN.phl[313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "Player_rigRN.phl[314]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[315]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_scaleX_Left.o" "Player_rigRN.phl[316]";
connectAttr "Player_rigRN.phl[317]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[318]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_scaleY_Left.o" "Player_rigRN.phl[319]";
connectAttr "Player_rigRN.phl[320]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[321]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_scaleZ_Left.o" "Player_rigRN.phl[322]";
connectAttr "Player_rigRN.phl[323]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[324]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_translateX_Left.o" "Player_rigRN.phl[325]";
connectAttr "Player_rigRN.phl[326]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[327]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_translateY_Left.o" "Player_rigRN.phl[328]";
connectAttr "Player_rigRN.phl[329]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[330]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_ik_translateZ_Left.o" "Player_rigRN.phl[331]";
connectAttr "Player_rigRN.phl[332]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Player_rigRN.phl[333]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Player_rigRN.phl[334]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Player_rigRN.phl[335]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_translateX_Left.o" "Player_rigRN.phl[336]";
connectAttr "Player_rigRN.phl[337]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_translateY_Left.o" "Player_rigRN.phl[338]";
connectAttr "Player_rigRN.phl[339]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_translateZ_Left.o" "Player_rigRN.phl[340]";
connectAttr "Player_rigRN.phl[341]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_visibility_Left.o" "Player_rigRN.phl[342]";
connectAttr "Player_rigRN.phl[343]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Player_rigRN.phl[344]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_rotate_Left.ox" "Player_rigRN.phl[345]";
connectAttr "Player_rigRN.phl[346]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_rotate_Left.oy" "Player_rigRN.phl[347]";
connectAttr "Player_rigRN.phl[348]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_rotate_Left.oz" "Player_rigRN.phl[349]";
connectAttr "Player_rigRN.phl[350]" "CTRL_arm_r_pole_rotate_Left.ro";
connectAttr "Player_rigRN.phl[351]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_scaleX_Left.o" "Player_rigRN.phl[352]";
connectAttr "Player_rigRN.phl[353]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_scaleY_Left.o" "Player_rigRN.phl[354]";
connectAttr "Player_rigRN.phl[355]" "Left.dsm" -na;
connectAttr "CTRL_arm_r_pole_scaleZ_Left.o" "Player_rigRN.phl[356]";
connectAttr "Player_rigRN.phl[357]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "CTRL_arm_r_IKFK_IKFK_Switch.o" "Player_rigRN.phl[358]";
connectAttr "Player_rigRN.phl[359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "CTRL_arm_r_IKFK_scaleX.o" "Player_rigRN.phl[360]";
connectAttr "CTRL_arm_r_IKFK_scaleY.o" "Player_rigRN.phl[361]";
connectAttr "CTRL_arm_r_IKFK_scaleZ.o" "Player_rigRN.phl[362]";
connectAttr "CTRL_arm_r_IKFK_translateX.o" "Player_rigRN.phl[363]";
connectAttr "CTRL_arm_r_IKFK_translateY.o" "Player_rigRN.phl[364]";
connectAttr "CTRL_arm_r_IKFK_translateZ.o" "Player_rigRN.phl[365]";
connectAttr "CTRL_arm_r_IKFK_visibility.o" "Player_rigRN.phl[366]";
connectAttr "Player_rigRN.phl[367]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Player_rigRN.phl[368]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Player_rigRN.phl[369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "CTRL_shoulder_l_rotateX.o" "Player_rigRN.phl[370]";
connectAttr "CTRL_shoulder_l_rotateY.o" "Player_rigRN.phl[371]";
connectAttr "CTRL_shoulder_l_rotateZ.o" "Player_rigRN.phl[372]";
connectAttr "CTRL_shoulder_l_scaleX.o" "Player_rigRN.phl[373]";
connectAttr "CTRL_shoulder_l_scaleY.o" "Player_rigRN.phl[374]";
connectAttr "CTRL_shoulder_l_scaleZ.o" "Player_rigRN.phl[375]";
connectAttr "CTRL_shoulder_l_translateX.o" "Player_rigRN.phl[376]";
connectAttr "CTRL_shoulder_l_translateY.o" "Player_rigRN.phl[377]";
connectAttr "CTRL_shoulder_l_translateZ.o" "Player_rigRN.phl[378]";
connectAttr "CTRL_shoulder_l_visibility.o" "Player_rigRN.phl[379]";
connectAttr "Player_rigRN.phl[380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "CTRL_arm_l_IKFK_IKFK_Switch.o" "Player_rigRN.phl[381]";
connectAttr "Player_rigRN.phl[382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "CTRL_arm_l_IKFK_scaleX.o" "Player_rigRN.phl[383]";
connectAttr "CTRL_arm_l_IKFK_scaleY.o" "Player_rigRN.phl[384]";
connectAttr "CTRL_arm_l_IKFK_scaleZ.o" "Player_rigRN.phl[385]";
connectAttr "CTRL_arm_l_IKFK_translateX.o" "Player_rigRN.phl[386]";
connectAttr "CTRL_arm_l_IKFK_translateY.o" "Player_rigRN.phl[387]";
connectAttr "CTRL_arm_l_IKFK_translateZ.o" "Player_rigRN.phl[388]";
connectAttr "CTRL_arm_l_IKFK_visibility.o" "Player_rigRN.phl[389]";
connectAttr "Player_rigRN.phl[390]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Player_rigRN.phl[391]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "Player_rigRN.phl[392]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Player_rigRN.phl[393]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Player_rigRN.phl[394]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Player_rigRN.phl[395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Player_rigRN.phl[396]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Player_rigRN.phl[397]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[398]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[399]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_visibility_Left.o" "Player_rigRN.phl[400]";
connectAttr "Player_rigRN.phl[401]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[402]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[403]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_rotate_Left.ox" "Player_rigRN.phl[404]";
connectAttr "Player_rigRN.phl[405]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[406]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[407]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_rotate_Left.oy" "Player_rigRN.phl[408]";
connectAttr "Player_rigRN.phl[409]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[410]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[411]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_rotate_Left.oz" "Player_rigRN.phl[412]";
connectAttr "Player_rigRN.phl[413]" "CTRL_arm_l_ik_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[414]" "CTRL_arm_l_ik_rotate_Right.ro";
connectAttr "Player_rigRN.phl[415]" "CTRL_arm_l_ik_rotate_Left.ro";
connectAttr "Player_rigRN.phl[416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "Player_rigRN.phl[417]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[418]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[419]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_scaleX_Left.o" "Player_rigRN.phl[420]";
connectAttr "Player_rigRN.phl[421]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[422]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[423]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_scaleY_Left.o" "Player_rigRN.phl[424]";
connectAttr "Player_rigRN.phl[425]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[426]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[427]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_scaleZ_Left.o" "Player_rigRN.phl[428]";
connectAttr "Player_rigRN.phl[429]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[430]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[431]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_translateX_Left.o" "Player_rigRN.phl[432]";
connectAttr "Player_rigRN.phl[433]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[434]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[435]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_translateY_Left.o" "Player_rigRN.phl[436]";
connectAttr "Player_rigRN.phl[437]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[438]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[439]" "Left.dsm" -na;
connectAttr "CTRL_arm_l_ik_translateZ_Left.o" "Player_rigRN.phl[440]";
connectAttr "Player_rigRN.phl[441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Player_rigRN.phl[442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Player_rigRN.phl[443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "Player_rigRN.phl[444]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_translateX_Right.o" "Player_rigRN.phl[445]";
connectAttr "Player_rigRN.phl[446]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_translateY_Right.o" "Player_rigRN.phl[447]";
connectAttr "Player_rigRN.phl[448]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_translateZ_Right.o" "Player_rigRN.phl[449]";
connectAttr "Player_rigRN.phl[450]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_visibility_Right.o" "Player_rigRN.phl[451]";
connectAttr "Player_rigRN.phl[452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Player_rigRN.phl[453]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_rotate_Right.ox" "Player_rigRN.phl[454]";
connectAttr "Player_rigRN.phl[455]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_rotate_Right.oy" "Player_rigRN.phl[456]";
connectAttr "Player_rigRN.phl[457]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_rotate_Right.oz" "Player_rigRN.phl[458]";
connectAttr "Player_rigRN.phl[459]" "CTRL_arm_l_pole_rotate_Right.ro";
connectAttr "Player_rigRN.phl[460]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_scaleX_Right.o" "Player_rigRN.phl[461]";
connectAttr "Player_rigRN.phl[462]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_scaleY_Right.o" "Player_rigRN.phl[463]";
connectAttr "Player_rigRN.phl[464]" "Right.dsm" -na;
connectAttr "CTRL_arm_l_pole_scaleZ_Right.o" "Player_rigRN.phl[465]";
connectAttr "Player_rigRN.phl[466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Player_rigRN.phl[467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Player_rigRN.phl[468]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[469]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[470]" "Left.dsm" -na;
connectAttr "CTRL_head_Orient_Left.o" "Player_rigRN.phl[471]";
connectAttr "Player_rigRN.phl[472]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[473]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[474]" "Left.dsm" -na;
connectAttr "CTRL_head_translateX_Left.o" "Player_rigRN.phl[475]";
connectAttr "Player_rigRN.phl[476]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[477]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[478]" "Left.dsm" -na;
connectAttr "CTRL_head_translateY_Left.o" "Player_rigRN.phl[479]";
connectAttr "Player_rigRN.phl[480]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[481]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[482]" "Left.dsm" -na;
connectAttr "CTRL_head_translateZ_Left.o" "Player_rigRN.phl[483]";
connectAttr "Player_rigRN.phl[484]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[485]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[486]" "Left.dsm" -na;
connectAttr "CTRL_head_rotate_Left.ox" "Player_rigRN.phl[487]";
connectAttr "Player_rigRN.phl[488]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[489]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[490]" "Left.dsm" -na;
connectAttr "CTRL_head_rotate_Left.oy" "Player_rigRN.phl[491]";
connectAttr "Player_rigRN.phl[492]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[493]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[494]" "Left.dsm" -na;
connectAttr "CTRL_head_rotate_Left.oz" "Player_rigRN.phl[495]";
connectAttr "Player_rigRN.phl[496]" "CTRL_head_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[497]" "CTRL_head_rotate_Right.ro";
connectAttr "Player_rigRN.phl[498]" "CTRL_head_rotate_Left.ro";
connectAttr "Player_rigRN.phl[499]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[500]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[501]" "Left.dsm" -na;
connectAttr "CTRL_head_scaleX_Left.o" "Player_rigRN.phl[502]";
connectAttr "Player_rigRN.phl[503]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[504]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[505]" "Left.dsm" -na;
connectAttr "CTRL_head_scaleY_Left.o" "Player_rigRN.phl[506]";
connectAttr "Player_rigRN.phl[507]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[508]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[509]" "Left.dsm" -na;
connectAttr "CTRL_head_scaleZ_Left.o" "Player_rigRN.phl[510]";
connectAttr "Player_rigRN.phl[511]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Player_rigRN.phl[512]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[513]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[514]" "Left.dsm" -na;
connectAttr "CTRL_head_visibility_Left.o" "Player_rigRN.phl[515]";
connectAttr "Player_rigRN.phl[516]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Player_rigRN.phl[517]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Player_rigRN.phl[518]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "CTRL_pelvis_IK_translateX.o" "Player_rigRN.phl[519]";
connectAttr "CTRL_pelvis_IK_translateY.o" "Player_rigRN.phl[520]";
connectAttr "CTRL_pelvis_IK_translateZ.o" "Player_rigRN.phl[521]";
connectAttr "CTRL_pelvis_IK_rotateX.o" "Player_rigRN.phl[522]";
connectAttr "CTRL_pelvis_IK_rotateY.o" "Player_rigRN.phl[523]";
connectAttr "CTRL_pelvis_IK_rotateZ.o" "Player_rigRN.phl[524]";
connectAttr "CTRL_pelvis_IK_scaleX.o" "Player_rigRN.phl[525]";
connectAttr "CTRL_pelvis_IK_scaleY.o" "Player_rigRN.phl[526]";
connectAttr "CTRL_pelvis_IK_scaleZ.o" "Player_rigRN.phl[527]";
connectAttr "Player_rigRN.phl[528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Player_rigRN.phl[529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Player_rigRN.phl[530]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[531]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_translateX_Left.o" "Player_rigRN.phl[532]";
connectAttr "Player_rigRN.phl[533]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[534]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_translateY_Left.o" "Player_rigRN.phl[535]";
connectAttr "Player_rigRN.phl[536]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[537]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_translateZ_Left.o" "Player_rigRN.phl[538]";
connectAttr "Player_rigRN.phl[539]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[540]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_rotate_Left.ox" "Player_rigRN.phl[541]";
connectAttr "Player_rigRN.phl[542]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[543]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_rotate_Left.oy" "Player_rigRN.phl[544]";
connectAttr "Player_rigRN.phl[545]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[546]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_rotate_Left.oz" "Player_rigRN.phl[547]";
connectAttr "Player_rigRN.phl[548]" "CTRL_spine_IK_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[549]" "CTRL_spine_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[550]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[551]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_scaleX_Left.o" "Player_rigRN.phl[552]";
connectAttr "Player_rigRN.phl[553]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[554]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_scaleY_Left.o" "Player_rigRN.phl[555]";
connectAttr "Player_rigRN.phl[556]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[557]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_scaleZ_Left.o" "Player_rigRN.phl[558]";
connectAttr "Player_rigRN.phl[559]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Player_rigRN.phl[560]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[561]" "Left.dsm" -na;
connectAttr "CTRL_spine_IK_visibility_Left.o" "Player_rigRN.phl[562]";
connectAttr "Player_rigRN.phl[563]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Player_rigRN.phl[564]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[565]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[566]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_translateX_Left.o" "Player_rigRN.phl[567]";
connectAttr "Player_rigRN.phl[568]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[569]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[570]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_translateY_Left.o" "Player_rigRN.phl[571]";
connectAttr "Player_rigRN.phl[572]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[573]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[574]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_translateZ_Left.o" "Player_rigRN.phl[575]";
connectAttr "Player_rigRN.phl[576]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[577]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[578]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_rotate_Left.ox" "Player_rigRN.phl[579]";
connectAttr "Player_rigRN.phl[580]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[581]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[582]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_rotate_Left.oy" "Player_rigRN.phl[583]";
connectAttr "Player_rigRN.phl[584]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[585]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[586]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_rotate_Left.oz" "Player_rigRN.phl[587]";
connectAttr "Player_rigRN.phl[588]" "CTRL_chest_IK_rotate_Forwards.ro";
connectAttr "Player_rigRN.phl[589]" "CTRL_chest_IK_rotate_Right.ro";
connectAttr "Player_rigRN.phl[590]" "CTRL_chest_IK_rotate_Left.ro";
connectAttr "Player_rigRN.phl[591]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[592]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[593]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_scaleX_Left.o" "Player_rigRN.phl[594]";
connectAttr "Player_rigRN.phl[595]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[596]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[597]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_scaleY_Left.o" "Player_rigRN.phl[598]";
connectAttr "Player_rigRN.phl[599]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[600]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[601]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_scaleZ_Left.o" "Player_rigRN.phl[602]";
connectAttr "Player_rigRN.phl[603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Player_rigRN.phl[604]" "Forwards.dsm" -na;
connectAttr "Player_rigRN.phl[605]" "Right.dsm" -na;
connectAttr "Player_rigRN.phl[606]" "Left.dsm" -na;
connectAttr "CTRL_chest_IK_visibility_Left.o" "Player_rigRN.phl[607]";
connectAttr "Player_rigRN.phl[608]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Player_rigRN.phl[609]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Player_rigRN.phl[610]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Player_rigRN.phl[611]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Player_rigRN.phl[612]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Player_rigRN.phl[613]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Player_rigRN.phl[614]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Player_rigRN.phl[615]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Player_rigRN.phl[616]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Player_rigRN.phl[617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Player_rigRN.phl[618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Player_rigRN.phl[619]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Player_rigRN.phl[620]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Player_rigRN.phl[621]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Player_rigRN.phl[622]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Player_rigRN.phl[623]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Player_rigRN.phl[624]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Player_rigRN.phl[625]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Player_rigRN.phl[626]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Player_rigRN.phl[627]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "Player_rigRN.phl[628]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Player_rigRN.phl[629]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Player_rigRN.phl[630]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Player_rigRN.phl[631]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Player_rigRN.phl[632]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Player_rigRN.phl[633]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Player_rigRN.phl[634]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Player_rigRN.phl[635]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Player_rigRN.phl[636]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Player_rigRN.phl[637]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Player_rigRN.phl[638]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Player_rigRN.phl[639]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Player_rigRN.phl[640]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Player_rigRN.phl[641]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Player_rigRN.phl[642]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Player_rigRN.phl[643]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Player_rigRN.phl[644]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Player_rigRN.phl[645]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Player_rigRN.phl[646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "Player_rigRN.phl[647]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Player_rigRN.phl[648]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Player_rigRN.phl[649]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Player_rigRN.phl[650]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Player_rigRN.phl[651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Player_rigRN.phl[652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Player_rigRN.phl[653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "Player_rigRN.phl[654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Player_rigRN.phl[655]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Player_rigRN.phl[656]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Player_rigRN.phl[657]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Player_rigRN.phl[658]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Player_rigRN.phl[659]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Player_rigRN.phl[660]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Player_rigRN.phl[661]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Player_rigRN.phl[662]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Player_rigRN.phl[663]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Player_rigRN.phl[664]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Player_rigRN.phl[665]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Player_rigRN.phl[666]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Player_rigRN.phl[667]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "Player_rigRN.phl[668]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "Player_rigRN.phl[669]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Player_rigRN.phl[670]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Player_rigRN.phl[671]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Player_rigRN.phl[672]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "Player_rigRN.phl[673]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Player_rigRN.phl[674]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "Player_rigRN.phl[675]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Player_rigRN.phl[676]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Player_rigRN.phl[677]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Player_rigRN.phl[678]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Player_rigRN.phl[679]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Player_rigRN.phl[680]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "Player_rigRN.phl[681]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Player_rigRN.phl[682]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Player_rigRN.phl[683]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Player_rigRN.phl[684]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Player_rigRN.phl[685]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Player_rigRN.phl[686]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Player_rigRN.phl[687]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Player_rigRN.phl[688]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "Player_rigRN.phl[689]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Player_rigRN.phl[690]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Player_rigRN.phl[691]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Player_rigRN.phl[692]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Player_rigRN.phl[693]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Player_rigRN.phl[694]" "CTRL_foot_l_IK_visibility_Forwards.ia";
connectAttr "Player_rigRN.phl[695]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "Player_rigRN.phl[696]" "CTRL_arm_l_ik_visibility_Forwards.ia";
connectAttr "Player_rigRN.phl[697]" "CTRL_arm_l_pole_visibility_Right.ia";
connectAttr "Player_rigRN.phl[698]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Player_rigRN.phl[699]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Player_rigRN.phl[700]" "CTRL_arm_r_ik_visibility_Right.ia";
connectAttr "Player_rigRN.phl[701]" "CTRL_arm_r_pole_visibility_Left.ia";
connectAttr "Player_rigRN.phl[702]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Player_rigRN.phl[703]" "CTRL_foot_r_IK_visibility_Forwards.ia";
connectAttr "Player_rigRN.phl[704]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Player_rigRN.phl[705]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Player_rigRN.phl[706]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Player_rigRN.phl[707]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Player_rigRN.phl[708]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Player_rigRN.phl[709]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Player_rigRN.phl[710]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Player_rigRN.phl[711]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Player_rigRN.phl[712]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Player_rigRN.phl[713]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Player_rigRN.phl[714]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Player_rigRN.phl[715]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Player_rigRN.phl[716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Player_rigRN.phl[717]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Player_rigRN.phl[718]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Player_rigRN.phl[719]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Player_rigRN.phl[720]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "Player_rigRN.phl[721]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Player_rigRN.phl[722]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Player_rigRN.phl[723]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Player_rigRN.phl[724]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Player_rigRN.phl[725]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Player_rigRN.phl[726]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Player_rigRN.phl[727]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Player_rigRN.phl[728]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "Player_rigRN.phl[729]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Player_rigRN.phl[730]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Player_rigRN.phl[731]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Player_rigRN.phl[732]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Player_rigRN.phl[733]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Player_rigRN.phl[734]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Player_rigRN.phl[735]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Player_rigRN.phl[736]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Player_rigRN.phl[737]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Player_rigRN.phl[738]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Player_rigRN.phl[739]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Player_rigRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Player_rigRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Player_rigRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Player_rigRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Player_rigRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "Player_rigRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Player_rigRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Player_rigRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Player_rigRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "Player_rigRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "Player_rigRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Player_rigRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Player_rigRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Player_rigRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Player_rigRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Player_rigRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Player_rigRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
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
connectAttr "Backwards.sl" "BaseAnimation.chsl[0]";
connectAttr "Forwards.sl" "BaseAnimation.chsl[1]";
connectAttr "Right.sl" "BaseAnimation.chsl[2]";
connectAttr "Left.sl" "BaseAnimation.chsl[3]";
connectAttr "Backwards.play" "BaseAnimation.cdly[0]";
connectAttr "Forwards.play" "BaseAnimation.cdly[1]";
connectAttr "Right.play" "BaseAnimation.cdly[2]";
connectAttr "Left.play" "BaseAnimation.cdly[3]";
connectAttr "BaseAnimation.csol" "Backwards.sslo";
connectAttr "BaseAnimation.fgwt" "Backwards.pwth";
connectAttr "BaseAnimation.omte" "Backwards.pmte";
connectAttr "CTRL_ship_rotate_Backwards.msg" "Backwards.bnds[3]";
connectAttr "CTRL_ship_scaleX_Backwards.msg" "Backwards.bnds[4]";
connectAttr "CTRL_ship_scaleY_Backwards.msg" "Backwards.bnds[5]";
connectAttr "CTRL_ship_scaleZ_Backwards.msg" "Backwards.bnds[6]";
connectAttr "CTRL_ship_translateX_Backwards.msg" "Backwards.bnds[7]";
connectAttr "CTRL_ship_translateY_Backwards.msg" "Backwards.bnds[8]";
connectAttr "CTRL_ship_translateZ_Backwards.msg" "Backwards.bnds[9]";
connectAttr "CTRL_ship_visibility_Backwards.msg" "Backwards.bnds[10]";
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
connectAttr "CTRL_ship_scaleX_Backwards_inputB.o" "CTRL_ship_scaleX_Backwards.ib"
		;
connectAttr "Backwards.sam" "CTRL_ship_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_scaleY_Backwards.wb";
connectAttr "CTRL_ship_scaleY_Backwards_inputB.o" "CTRL_ship_scaleY_Backwards.ib"
		;
connectAttr "Backwards.sam" "CTRL_ship_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "CTRL_ship_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_scaleZ_Backwards.wb";
connectAttr "CTRL_ship_scaleZ_Backwards_inputB.o" "CTRL_ship_scaleZ_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateX_Backwards.wb";
connectAttr "CTRL_ship_translateX_Backwards_inputB.o" "CTRL_ship_translateX_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateY_Backwards.wb";
connectAttr "CTRL_ship_translateY.o" "CTRL_ship_translateY_Backwards.ia";
connectAttr "CTRL_ship_translateY_Backwards_inputB.o" "CTRL_ship_translateY_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateZ_Backwards.wb";
connectAttr "CTRL_ship_translateZ_Backwards_inputB.o" "CTRL_ship_translateZ_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_visibility_Backwards.wb";
connectAttr "CTRL_ship_visibility.o" "CTRL_ship_visibility_Backwards.ia";
connectAttr "CTRL_ship_visibility_Backwards_inputB.o" "CTRL_ship_visibility_Backwards.ib"
		;
connectAttr "BaseAnimation.csol" "Forwards.sslo";
connectAttr "BaseAnimation.fgwt" "Forwards.pwth";
connectAttr "BaseAnimation.omte" "Forwards.pmte";
connectAttr "CTRL_foot_l_IK_rotate_Forwards.msg" "Forwards.bnds[3]";
connectAttr "CTRL_foot_l_IK_scaleX_Forwards.msg" "Forwards.bnds[4]";
connectAttr "CTRL_foot_l_IK_scaleY_Forwards.msg" "Forwards.bnds[5]";
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards.msg" "Forwards.bnds[6]";
connectAttr "CTRL_foot_l_IK_translateX_Forwards.msg" "Forwards.bnds[7]";
connectAttr "CTRL_foot_l_IK_translateY_Forwards.msg" "Forwards.bnds[8]";
connectAttr "CTRL_foot_l_IK_translateZ_Forwards.msg" "Forwards.bnds[9]";
connectAttr "CTRL_foot_l_IK_visibility_Forwards.msg" "Forwards.bnds[10]";
connectAttr "CTRL_ship_rotate_Forwards.msg" "Forwards.bnds[14]";
connectAttr "CTRL_ship_scaleX_Forwards.msg" "Forwards.bnds[15]";
connectAttr "CTRL_ship_scaleY_Forwards.msg" "Forwards.bnds[16]";
connectAttr "CTRL_ship_scaleZ_Forwards.msg" "Forwards.bnds[17]";
connectAttr "CTRL_ship_translateX_Forwards.msg" "Forwards.bnds[18]";
connectAttr "CTRL_ship_translateY_Forwards.msg" "Forwards.bnds[19]";
connectAttr "CTRL_ship_translateZ_Forwards.msg" "Forwards.bnds[20]";
connectAttr "CTRL_ship_visibility_Forwards.msg" "Forwards.bnds[21]";
connectAttr "CTRL_cog_IKFK_Switch_Forwards.msg" "Forwards.bnds[22]";
connectAttr "CTRL_cog_rotate_Forwards.msg" "Forwards.bnds[26]";
connectAttr "CTRL_cog_scaleX_Forwards.msg" "Forwards.bnds[27]";
connectAttr "CTRL_cog_scaleY_Forwards.msg" "Forwards.bnds[28]";
connectAttr "CTRL_cog_scaleZ_Forwards.msg" "Forwards.bnds[29]";
connectAttr "CTRL_cog_translateX_Forwards.msg" "Forwards.bnds[30]";
connectAttr "CTRL_cog_translateY_Forwards.msg" "Forwards.bnds[31]";
connectAttr "CTRL_cog_translateZ_Forwards.msg" "Forwards.bnds[32]";
connectAttr "CTRL_cog_visibility_Forwards.msg" "Forwards.bnds[33]";
connectAttr "CTRL_head_Orient_Forwards.msg" "Forwards.bnds[34]";
connectAttr "CTRL_head_rotate_Forwards.msg" "Forwards.bnds[38]";
connectAttr "CTRL_head_scaleX_Forwards.msg" "Forwards.bnds[39]";
connectAttr "CTRL_head_scaleY_Forwards.msg" "Forwards.bnds[40]";
connectAttr "CTRL_head_scaleZ_Forwards.msg" "Forwards.bnds[41]";
connectAttr "CTRL_head_translateX_Forwards.msg" "Forwards.bnds[42]";
connectAttr "CTRL_head_translateY_Forwards.msg" "Forwards.bnds[43]";
connectAttr "CTRL_head_translateZ_Forwards.msg" "Forwards.bnds[44]";
connectAttr "CTRL_head_visibility_Forwards.msg" "Forwards.bnds[45]";
connectAttr "CTRL_arm_l_ik_rotate_Forwards.msg" "Forwards.bnds[49]";
connectAttr "CTRL_arm_l_ik_scaleX_Forwards.msg" "Forwards.bnds[50]";
connectAttr "CTRL_arm_l_ik_scaleY_Forwards.msg" "Forwards.bnds[51]";
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards.msg" "Forwards.bnds[52]";
connectAttr "CTRL_arm_l_ik_translateX_Forwards.msg" "Forwards.bnds[53]";
connectAttr "CTRL_arm_l_ik_translateY_Forwards.msg" "Forwards.bnds[54]";
connectAttr "CTRL_arm_l_ik_translateZ_Forwards.msg" "Forwards.bnds[55]";
connectAttr "CTRL_arm_l_ik_visibility_Forwards.msg" "Forwards.bnds[56]";
connectAttr "CTRL_chest_IK_rotate_Forwards.msg" "Forwards.bnds[60]";
connectAttr "CTRL_chest_IK_scaleX_Forwards.msg" "Forwards.bnds[61]";
connectAttr "CTRL_chest_IK_scaleY_Forwards.msg" "Forwards.bnds[62]";
connectAttr "CTRL_chest_IK_scaleZ_Forwards.msg" "Forwards.bnds[63]";
connectAttr "CTRL_chest_IK_translateX_Forwards.msg" "Forwards.bnds[64]";
connectAttr "CTRL_chest_IK_translateY_Forwards.msg" "Forwards.bnds[65]";
connectAttr "CTRL_chest_IK_translateZ_Forwards.msg" "Forwards.bnds[66]";
connectAttr "CTRL_chest_IK_visibility_Forwards.msg" "Forwards.bnds[67]";
connectAttr "CTRL_spine_IK_rotate_Forwards.msg" "Forwards.bnds[71]";
connectAttr "CTRL_spine_IK_scaleX_Forwards.msg" "Forwards.bnds[72]";
connectAttr "CTRL_spine_IK_scaleY_Forwards.msg" "Forwards.bnds[73]";
connectAttr "CTRL_spine_IK_scaleZ_Forwards.msg" "Forwards.bnds[74]";
connectAttr "CTRL_spine_IK_translateX_Forwards.msg" "Forwards.bnds[75]";
connectAttr "CTRL_spine_IK_translateY_Forwards.msg" "Forwards.bnds[76]";
connectAttr "CTRL_spine_IK_translateZ_Forwards.msg" "Forwards.bnds[77]";
connectAttr "CTRL_spine_IK_visibility_Forwards.msg" "Forwards.bnds[78]";
connectAttr "CTRL_foot_r_IK_rotate_Forwards.msg" "Forwards.bnds[82]";
connectAttr "CTRL_foot_r_IK_scaleX_Forwards.msg" "Forwards.bnds[83]";
connectAttr "CTRL_foot_r_IK_scaleY_Forwards.msg" "Forwards.bnds[84]";
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards.msg" "Forwards.bnds[85]";
connectAttr "CTRL_foot_r_IK_translateX_Forwards.msg" "Forwards.bnds[86]";
connectAttr "CTRL_foot_r_IK_translateY_Forwards.msg" "Forwards.bnds[87]";
connectAttr "CTRL_foot_r_IK_translateZ_Forwards.msg" "Forwards.bnds[88]";
connectAttr "CTRL_foot_r_IK_visibility_Forwards.msg" "Forwards.bnds[89]";
connectAttr "Forwards.oram" "CTRL_foot_l_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_rotate_Forwards.wb";
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBX.o" "CTRL_foot_l_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBY.o" "CTRL_foot_l_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBZ.o" "CTRL_foot_l_IK_rotate_Forwards.ibz"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAX.o" "CTRL_foot_l_IK_rotate_Forwards.iax"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAY.o" "CTRL_foot_l_IK_rotate_Forwards.iay"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAZ.o" "CTRL_foot_l_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_foot_l_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_scaleX_Forwards.wb";
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputB.o" "CTRL_foot_l_IK_scaleX_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputA.o" "CTRL_foot_l_IK_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_foot_l_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_scaleY_Forwards.wb";
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputB.o" "CTRL_foot_l_IK_scaleY_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputA.o" "CTRL_foot_l_IK_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_foot_l_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_scaleZ_Forwards.wb";
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputB.o" "CTRL_foot_l_IK_scaleZ_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputA.o" "CTRL_foot_l_IK_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_translateX_Forwards.wb";
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputB.o" "CTRL_foot_l_IK_translateX_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputA.o" "CTRL_foot_l_IK_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_translateY_Forwards.wb";
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputB.o" "CTRL_foot_l_IK_translateY_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputA.o" "CTRL_foot_l_IK_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_translateZ_Forwards.wb";
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputB.o" "CTRL_foot_l_IK_translateZ_Forwards.ib"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputA.o" "CTRL_foot_l_IK_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_l_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_l_IK_visibility_Forwards.wb";
connectAttr "CTRL_foot_l_IK_visibility_Forwards_inputB.o" "CTRL_foot_l_IK_visibility_Forwards.ib"
		;
connectAttr "CTRL_ship_rotate_Backwards.ox" "CTRL_ship_rotate_Forwards.iax";
connectAttr "CTRL_ship_rotate_Backwards.oy" "CTRL_ship_rotate_Forwards.iay";
connectAttr "CTRL_ship_rotate_Backwards.oz" "CTRL_ship_rotate_Forwards.iaz";
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
connectAttr "CTRL_ship_scaleX_Backwards.o" "CTRL_ship_scaleX_Forwards.ia";
connectAttr "CTRL_ship_scaleX_Forwards_inputB.o" "CTRL_ship_scaleX_Forwards.ib";
connectAttr "Forwards.sam" "CTRL_ship_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_scaleY_Forwards.wb";
connectAttr "CTRL_ship_scaleY_Backwards.o" "CTRL_ship_scaleY_Forwards.ia";
connectAttr "CTRL_ship_scaleY_Forwards_inputB.o" "CTRL_ship_scaleY_Forwards.ib";
connectAttr "Forwards.sam" "CTRL_ship_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_ship_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_scaleZ_Forwards.wb";
connectAttr "CTRL_ship_scaleZ_Backwards.o" "CTRL_ship_scaleZ_Forwards.ia";
connectAttr "CTRL_ship_scaleZ_Forwards_inputB.o" "CTRL_ship_scaleZ_Forwards.ib";
connectAttr "Forwards.bgwt" "CTRL_ship_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateX_Forwards.wb";
connectAttr "CTRL_ship_translateX_Backwards.o" "CTRL_ship_translateX_Forwards.ia"
		;
connectAttr "CTRL_ship_translateX_Forwards_inputB.o" "CTRL_ship_translateX_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateY_Forwards.wb";
connectAttr "CTRL_ship_translateY_Backwards.o" "CTRL_ship_translateY_Forwards.ia"
		;
connectAttr "CTRL_ship_translateY_Forwards_inputB.o" "CTRL_ship_translateY_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_translateZ_Forwards.wb";
connectAttr "CTRL_ship_translateZ_Backwards.o" "CTRL_ship_translateZ_Forwards.ia"
		;
connectAttr "CTRL_ship_translateZ_Forwards_inputB.o" "CTRL_ship_translateZ_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_ship_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_ship_visibility_Forwards.wb";
connectAttr "CTRL_ship_visibility_Backwards.o" "CTRL_ship_visibility_Forwards.ia"
		;
connectAttr "CTRL_ship_visibility_Forwards_inputB.o" "CTRL_ship_visibility_Forwards.ib"
		;
connectAttr "Forwards.bgwt" "CTRL_cog_IKFK_Switch_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_IKFK_Switch_Forwards.wb";
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputB.o" "CTRL_cog_IKFK_Switch_Forwards.ib"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputA.o" "CTRL_cog_IKFK_Switch_Forwards.ia"
		;
connectAttr "Forwards.oram" "CTRL_cog_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_cog_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_rotate_Forwards.wb";
connectAttr "CTRL_cog_rotate_Forwards_inputBX.o" "CTRL_cog_rotate_Forwards.ibx";
connectAttr "CTRL_cog_rotate_Forwards_inputBY.o" "CTRL_cog_rotate_Forwards.iby";
connectAttr "CTRL_cog_rotate_Forwards_inputBZ.o" "CTRL_cog_rotate_Forwards.ibz";
connectAttr "CTRL_cog_rotate_Forwards_inputAX.o" "CTRL_cog_rotate_Forwards.iax";
connectAttr "CTRL_cog_rotate_Forwards_inputAY.o" "CTRL_cog_rotate_Forwards.iay";
connectAttr "CTRL_cog_rotate_Forwards_inputAZ.o" "CTRL_cog_rotate_Forwards.iaz";
connectAttr "Forwards.sam" "CTRL_cog_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_cog_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_scaleX_Forwards.wb";
connectAttr "CTRL_cog_scaleX_Forwards_inputB.o" "CTRL_cog_scaleX_Forwards.ib";
connectAttr "CTRL_cog_scaleX_Forwards_inputA.o" "CTRL_cog_scaleX_Forwards.ia";
connectAttr "Forwards.sam" "CTRL_cog_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_cog_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_scaleY_Forwards.wb";
connectAttr "CTRL_cog_scaleY_Forwards_inputB.o" "CTRL_cog_scaleY_Forwards.ib";
connectAttr "CTRL_cog_scaleY_Forwards_inputA.o" "CTRL_cog_scaleY_Forwards.ia";
connectAttr "Forwards.sam" "CTRL_cog_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_cog_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_scaleZ_Forwards.wb";
connectAttr "CTRL_cog_scaleZ_Forwards_inputB.o" "CTRL_cog_scaleZ_Forwards.ib";
connectAttr "CTRL_cog_scaleZ_Forwards_inputA.o" "CTRL_cog_scaleZ_Forwards.ia";
connectAttr "Forwards.bgwt" "CTRL_cog_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_translateX_Forwards.wb";
connectAttr "CTRL_cog_translateX_Forwards_inputB.o" "CTRL_cog_translateX_Forwards.ib"
		;
connectAttr "CTRL_cog_translateX_Forwards_inputA.o" "CTRL_cog_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_cog_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_translateY_Forwards.wb";
connectAttr "CTRL_cog_translateY_Forwards_inputB.o" "CTRL_cog_translateY_Forwards.ib"
		;
connectAttr "CTRL_cog_translateY_Forwards_inputA.o" "CTRL_cog_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_cog_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_translateZ_Forwards.wb";
connectAttr "CTRL_cog_translateZ_Forwards_inputB.o" "CTRL_cog_translateZ_Forwards.ib"
		;
connectAttr "CTRL_cog_translateZ_Forwards_inputA.o" "CTRL_cog_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_cog_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_cog_visibility_Forwards.wb";
connectAttr "CTRL_cog_visibility_Forwards_inputB.o" "CTRL_cog_visibility_Forwards.ib"
		;
connectAttr "CTRL_cog_visibility_Forwards_inputA.o" "CTRL_cog_visibility_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_head_Orient_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_Orient_Forwards.wb";
connectAttr "CTRL_head_Orient_Forwards_inputB.o" "CTRL_head_Orient_Forwards.ib";
connectAttr "CTRL_head_Orient_Forwards_inputA.o" "CTRL_head_Orient_Forwards.ia";
connectAttr "Forwards.oram" "CTRL_head_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_head_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_rotate_Forwards.wb";
connectAttr "CTRL_head_rotate_Forwards_inputBX.o" "CTRL_head_rotate_Forwards.ibx"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBY.o" "CTRL_head_rotate_Forwards.iby"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBZ.o" "CTRL_head_rotate_Forwards.ibz"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAX.o" "CTRL_head_rotate_Forwards.iax"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAY.o" "CTRL_head_rotate_Forwards.iay"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAZ.o" "CTRL_head_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_head_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_head_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_scaleX_Forwards.wb";
connectAttr "CTRL_head_scaleX_Forwards_inputB.o" "CTRL_head_scaleX_Forwards.ib";
connectAttr "CTRL_head_scaleX_Forwards_inputA.o" "CTRL_head_scaleX_Forwards.ia";
connectAttr "Forwards.sam" "CTRL_head_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_head_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_scaleY_Forwards.wb";
connectAttr "CTRL_head_scaleY_Forwards_inputB.o" "CTRL_head_scaleY_Forwards.ib";
connectAttr "CTRL_head_scaleY_Forwards_inputA.o" "CTRL_head_scaleY_Forwards.ia";
connectAttr "Forwards.sam" "CTRL_head_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_head_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_scaleZ_Forwards.wb";
connectAttr "CTRL_head_scaleZ_Forwards_inputB.o" "CTRL_head_scaleZ_Forwards.ib";
connectAttr "CTRL_head_scaleZ_Forwards_inputA.o" "CTRL_head_scaleZ_Forwards.ia";
connectAttr "Forwards.bgwt" "CTRL_head_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_translateX_Forwards.wb";
connectAttr "CTRL_head_translateX_Forwards_inputB.o" "CTRL_head_translateX_Forwards.ib"
		;
connectAttr "CTRL_head_translateX_Forwards_inputA.o" "CTRL_head_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_head_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_translateY_Forwards.wb";
connectAttr "CTRL_head_translateY_Forwards_inputB.o" "CTRL_head_translateY_Forwards.ib"
		;
connectAttr "CTRL_head_translateY_Forwards_inputA.o" "CTRL_head_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_head_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_translateZ_Forwards.wb";
connectAttr "CTRL_head_translateZ_Forwards_inputB.o" "CTRL_head_translateZ_Forwards.ib"
		;
connectAttr "CTRL_head_translateZ_Forwards_inputA.o" "CTRL_head_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_head_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_head_visibility_Forwards.wb";
connectAttr "CTRL_head_visibility_Forwards_inputB.o" "CTRL_head_visibility_Forwards.ib"
		;
connectAttr "CTRL_head_visibility_Forwards_inputA.o" "CTRL_head_visibility_Forwards.ia"
		;
connectAttr "Forwards.oram" "CTRL_arm_l_ik_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_rotate_Forwards.wb";
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBX.o" "CTRL_arm_l_ik_rotate_Forwards.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBY.o" "CTRL_arm_l_ik_rotate_Forwards.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBZ.o" "CTRL_arm_l_ik_rotate_Forwards.ibz"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAX.o" "CTRL_arm_l_ik_rotate_Forwards.iax"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAY.o" "CTRL_arm_l_ik_rotate_Forwards.iay"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAZ.o" "CTRL_arm_l_ik_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_arm_l_ik_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_scaleX_Forwards.wb";
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputB.o" "CTRL_arm_l_ik_scaleX_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputA.o" "CTRL_arm_l_ik_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_arm_l_ik_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_scaleY_Forwards.wb";
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputB.o" "CTRL_arm_l_ik_scaleY_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputA.o" "CTRL_arm_l_ik_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_arm_l_ik_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_scaleZ_Forwards.wb";
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputB.o" "CTRL_arm_l_ik_scaleZ_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputA.o" "CTRL_arm_l_ik_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_translateX_Forwards.wb";
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputB.o" "CTRL_arm_l_ik_translateX_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputA.o" "CTRL_arm_l_ik_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_translateY_Forwards.wb";
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputB.o" "CTRL_arm_l_ik_translateY_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputA.o" "CTRL_arm_l_ik_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_translateZ_Forwards.wb";
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputB.o" "CTRL_arm_l_ik_translateZ_Forwards.ib"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputA.o" "CTRL_arm_l_ik_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_arm_l_ik_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_arm_l_ik_visibility_Forwards.wb";
connectAttr "CTRL_arm_l_ik_visibility_Forwards_inputB.o" "CTRL_arm_l_ik_visibility_Forwards.ib"
		;
connectAttr "Forwards.oram" "CTRL_chest_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_chest_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_rotate_Forwards.wb";
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBX.o" "CTRL_chest_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBY.o" "CTRL_chest_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBZ.o" "CTRL_chest_IK_rotate_Forwards.ibz"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAX.o" "CTRL_chest_IK_rotate_Forwards.iax"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAY.o" "CTRL_chest_IK_rotate_Forwards.iay"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAZ.o" "CTRL_chest_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_chest_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_chest_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_scaleX_Forwards.wb";
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputB.o" "CTRL_chest_IK_scaleX_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputA.o" "CTRL_chest_IK_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_chest_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_chest_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_scaleY_Forwards.wb";
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputB.o" "CTRL_chest_IK_scaleY_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputA.o" "CTRL_chest_IK_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_chest_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_chest_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_scaleZ_Forwards.wb";
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputB.o" "CTRL_chest_IK_scaleZ_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputA.o" "CTRL_chest_IK_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_chest_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_translateX_Forwards.wb";
connectAttr "CTRL_chest_IK_translateX_Forwards_inputB.o" "CTRL_chest_IK_translateX_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards_inputA.o" "CTRL_chest_IK_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_chest_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_translateY_Forwards.wb";
connectAttr "CTRL_chest_IK_translateY_Forwards_inputB.o" "CTRL_chest_IK_translateY_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards_inputA.o" "CTRL_chest_IK_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_chest_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_translateZ_Forwards.wb";
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputB.o" "CTRL_chest_IK_translateZ_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputA.o" "CTRL_chest_IK_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_chest_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_chest_IK_visibility_Forwards.wb";
connectAttr "CTRL_chest_IK_visibility_Forwards_inputB.o" "CTRL_chest_IK_visibility_Forwards.ib"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards_inputA.o" "CTRL_chest_IK_visibility_Forwards.ia"
		;
connectAttr "Forwards.oram" "CTRL_spine_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_spine_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_rotate_Forwards.wb";
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBX.o" "CTRL_spine_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBY.o" "CTRL_spine_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBZ.o" "CTRL_spine_IK_rotate_Forwards.ibz"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAX.o" "CTRL_spine_IK_rotate_Forwards.iax"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAY.o" "CTRL_spine_IK_rotate_Forwards.iay"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAZ.o" "CTRL_spine_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_spine_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_spine_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_scaleX_Forwards.wb";
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputB.o" "CTRL_spine_IK_scaleX_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputA.o" "CTRL_spine_IK_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_spine_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_spine_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_scaleY_Forwards.wb";
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputB.o" "CTRL_spine_IK_scaleY_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputA.o" "CTRL_spine_IK_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_spine_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_spine_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_scaleZ_Forwards.wb";
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputB.o" "CTRL_spine_IK_scaleZ_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputA.o" "CTRL_spine_IK_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_spine_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_translateX_Forwards.wb";
connectAttr "CTRL_spine_IK_translateX_Forwards_inputB.o" "CTRL_spine_IK_translateX_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards_inputA.o" "CTRL_spine_IK_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_spine_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_translateY_Forwards.wb";
connectAttr "CTRL_spine_IK_translateY_Forwards_inputB.o" "CTRL_spine_IK_translateY_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards_inputA.o" "CTRL_spine_IK_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_spine_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_translateZ_Forwards.wb";
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputB.o" "CTRL_spine_IK_translateZ_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputA.o" "CTRL_spine_IK_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_spine_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_spine_IK_visibility_Forwards.wb";
connectAttr "CTRL_spine_IK_visibility_Forwards_inputB.o" "CTRL_spine_IK_visibility_Forwards.ib"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards_inputA.o" "CTRL_spine_IK_visibility_Forwards.ia"
		;
connectAttr "Forwards.oram" "CTRL_foot_r_IK_rotate_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_rotate_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_rotate_Forwards.wb";
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBX.o" "CTRL_foot_r_IK_rotate_Forwards.ibx"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBY.o" "CTRL_foot_r_IK_rotate_Forwards.iby"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBZ.o" "CTRL_foot_r_IK_rotate_Forwards.ibz"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAX.o" "CTRL_foot_r_IK_rotate_Forwards.iax"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAY.o" "CTRL_foot_r_IK_rotate_Forwards.iay"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAZ.o" "CTRL_foot_r_IK_rotate_Forwards.iaz"
		;
connectAttr "Forwards.sam" "CTRL_foot_r_IK_scaleX_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_scaleX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_scaleX_Forwards.wb";
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputB.o" "CTRL_foot_r_IK_scaleX_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputA.o" "CTRL_foot_r_IK_scaleX_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_foot_r_IK_scaleY_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_scaleY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_scaleY_Forwards.wb";
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputB.o" "CTRL_foot_r_IK_scaleY_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputA.o" "CTRL_foot_r_IK_scaleY_Forwards.ia"
		;
connectAttr "Forwards.sam" "CTRL_foot_r_IK_scaleZ_Forwards.acm";
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_scaleZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_scaleZ_Forwards.wb";
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputB.o" "CTRL_foot_r_IK_scaleZ_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputA.o" "CTRL_foot_r_IK_scaleZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_translateX_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_translateX_Forwards.wb";
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputB.o" "CTRL_foot_r_IK_translateX_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputA.o" "CTRL_foot_r_IK_translateX_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_translateY_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_translateY_Forwards.wb";
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputB.o" "CTRL_foot_r_IK_translateY_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputA.o" "CTRL_foot_r_IK_translateY_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_translateZ_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_translateZ_Forwards.wb";
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputB.o" "CTRL_foot_r_IK_translateZ_Forwards.ib"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputA.o" "CTRL_foot_r_IK_translateZ_Forwards.ia"
		;
connectAttr "Forwards.bgwt" "CTRL_foot_r_IK_visibility_Forwards.wa";
connectAttr "Forwards.fgwt" "CTRL_foot_r_IK_visibility_Forwards.wb";
connectAttr "CTRL_foot_r_IK_visibility_Forwards_inputB.o" "CTRL_foot_r_IK_visibility_Forwards.ib"
		;
connectAttr "BaseAnimation.csol" "Right.sslo";
connectAttr "BaseAnimation.fgwt" "Right.pwth";
connectAttr "BaseAnimation.omte" "Right.pmte";
connectAttr "CTRL_ship_rotate_Right.msg" "Right.bnds[3]";
connectAttr "CTRL_ship_scaleX_Right.msg" "Right.bnds[4]";
connectAttr "CTRL_ship_scaleY_Right.msg" "Right.bnds[5]";
connectAttr "CTRL_ship_scaleZ_Right.msg" "Right.bnds[6]";
connectAttr "CTRL_ship_translateX_Right.msg" "Right.bnds[7]";
connectAttr "CTRL_ship_translateY_Right.msg" "Right.bnds[8]";
connectAttr "CTRL_ship_translateZ_Right.msg" "Right.bnds[9]";
connectAttr "CTRL_ship_visibility_Right.msg" "Right.bnds[10]";
connectAttr "CTRL_cog_IKFK_Switch_Right.msg" "Right.bnds[11]";
connectAttr "CTRL_cog_rotate_Right.msg" "Right.bnds[15]";
connectAttr "CTRL_cog_scaleX_Right.msg" "Right.bnds[16]";
connectAttr "CTRL_cog_scaleY_Right.msg" "Right.bnds[17]";
connectAttr "CTRL_cog_scaleZ_Right.msg" "Right.bnds[18]";
connectAttr "CTRL_cog_translateX_Right.msg" "Right.bnds[19]";
connectAttr "CTRL_cog_translateY_Right.msg" "Right.bnds[20]";
connectAttr "CTRL_cog_translateZ_Right.msg" "Right.bnds[21]";
connectAttr "CTRL_cog_visibility_Right.msg" "Right.bnds[22]";
connectAttr "CTRL_head_Orient_Right.msg" "Right.bnds[23]";
connectAttr "CTRL_head_rotate_Right.msg" "Right.bnds[27]";
connectAttr "CTRL_head_scaleX_Right.msg" "Right.bnds[28]";
connectAttr "CTRL_head_scaleY_Right.msg" "Right.bnds[29]";
connectAttr "CTRL_head_scaleZ_Right.msg" "Right.bnds[30]";
connectAttr "CTRL_head_translateX_Right.msg" "Right.bnds[31]";
connectAttr "CTRL_head_translateY_Right.msg" "Right.bnds[32]";
connectAttr "CTRL_head_translateZ_Right.msg" "Right.bnds[33]";
connectAttr "CTRL_head_visibility_Right.msg" "Right.bnds[34]";
connectAttr "CTRL_arm_l_pole_rotate_Right.msg" "Right.bnds[38]";
connectAttr "CTRL_arm_l_pole_scaleX_Right.msg" "Right.bnds[39]";
connectAttr "CTRL_arm_l_pole_scaleY_Right.msg" "Right.bnds[40]";
connectAttr "CTRL_arm_l_pole_scaleZ_Right.msg" "Right.bnds[41]";
connectAttr "CTRL_arm_l_pole_translateX_Right.msg" "Right.bnds[42]";
connectAttr "CTRL_arm_l_pole_translateY_Right.msg" "Right.bnds[43]";
connectAttr "CTRL_arm_l_pole_translateZ_Right.msg" "Right.bnds[44]";
connectAttr "CTRL_arm_l_pole_visibility_Right.msg" "Right.bnds[45]";
connectAttr "CTRL_arm_l_ik_rotate_Right.msg" "Right.bnds[49]";
connectAttr "CTRL_arm_l_ik_scaleX_Right.msg" "Right.bnds[50]";
connectAttr "CTRL_arm_l_ik_scaleY_Right.msg" "Right.bnds[51]";
connectAttr "CTRL_arm_l_ik_scaleZ_Right.msg" "Right.bnds[52]";
connectAttr "CTRL_arm_l_ik_translateX_Right.msg" "Right.bnds[53]";
connectAttr "CTRL_arm_l_ik_translateY_Right.msg" "Right.bnds[54]";
connectAttr "CTRL_arm_l_ik_translateZ_Right.msg" "Right.bnds[55]";
connectAttr "CTRL_arm_l_ik_visibility_Right.msg" "Right.bnds[56]";
connectAttr "CTRL_chest_IK_rotate_Right.msg" "Right.bnds[60]";
connectAttr "CTRL_chest_IK_scaleX_Right.msg" "Right.bnds[61]";
connectAttr "CTRL_chest_IK_scaleY_Right.msg" "Right.bnds[62]";
connectAttr "CTRL_chest_IK_scaleZ_Right.msg" "Right.bnds[63]";
connectAttr "CTRL_chest_IK_translateX_Right.msg" "Right.bnds[64]";
connectAttr "CTRL_chest_IK_translateY_Right.msg" "Right.bnds[65]";
connectAttr "CTRL_chest_IK_translateZ_Right.msg" "Right.bnds[66]";
connectAttr "CTRL_chest_IK_visibility_Right.msg" "Right.bnds[67]";
connectAttr "CTRL_arm_r_ik_rotate_Right.msg" "Right.bnds[71]";
connectAttr "CTRL_arm_r_ik_scaleX_Right.msg" "Right.bnds[72]";
connectAttr "CTRL_arm_r_ik_scaleY_Right.msg" "Right.bnds[73]";
connectAttr "CTRL_arm_r_ik_scaleZ_Right.msg" "Right.bnds[74]";
connectAttr "CTRL_arm_r_ik_translateX_Right.msg" "Right.bnds[75]";
connectAttr "CTRL_arm_r_ik_translateY_Right.msg" "Right.bnds[76]";
connectAttr "CTRL_arm_r_ik_translateZ_Right.msg" "Right.bnds[77]";
connectAttr "CTRL_arm_r_ik_visibility_Right.msg" "Right.bnds[78]";
connectAttr "CTRL_ship_rotate_Forwards.ox" "CTRL_ship_rotate_Right.iax";
connectAttr "CTRL_ship_rotate_Forwards.oy" "CTRL_ship_rotate_Right.iay";
connectAttr "CTRL_ship_rotate_Forwards.oz" "CTRL_ship_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_ship_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_rotate_Right.wb";
connectAttr "CTRL_ship_rotate_Right_inputBX.o" "CTRL_ship_rotate_Right.ibx";
connectAttr "CTRL_ship_rotate_Right_inputBY.o" "CTRL_ship_rotate_Right.iby";
connectAttr "CTRL_ship_rotate_Right_inputBZ.o" "CTRL_ship_rotate_Right.ibz";
connectAttr "Right.sam" "CTRL_ship_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleX_Right.wb";
connectAttr "CTRL_ship_scaleX_Forwards.o" "CTRL_ship_scaleX_Right.ia";
connectAttr "CTRL_ship_scaleX_Right_inputB.o" "CTRL_ship_scaleX_Right.ib";
connectAttr "Right.sam" "CTRL_ship_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleY_Right.wb";
connectAttr "CTRL_ship_scaleY_Forwards.o" "CTRL_ship_scaleY_Right.ia";
connectAttr "CTRL_ship_scaleY_Right_inputB.o" "CTRL_ship_scaleY_Right.ib";
connectAttr "Right.sam" "CTRL_ship_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_ship_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_scaleZ_Right.wb";
connectAttr "CTRL_ship_scaleZ_Forwards.o" "CTRL_ship_scaleZ_Right.ia";
connectAttr "CTRL_ship_scaleZ_Right_inputB.o" "CTRL_ship_scaleZ_Right.ib";
connectAttr "Right.bgwt" "CTRL_ship_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateX_Right.wb";
connectAttr "CTRL_ship_translateX_Forwards.o" "CTRL_ship_translateX_Right.ia";
connectAttr "CTRL_ship_translateX_Right_inputB.o" "CTRL_ship_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateY_Right.wb";
connectAttr "CTRL_ship_translateY_Forwards.o" "CTRL_ship_translateY_Right.ia";
connectAttr "CTRL_ship_translateY_Right_inputB.o" "CTRL_ship_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_translateZ_Right.wb";
connectAttr "CTRL_ship_translateZ_Forwards.o" "CTRL_ship_translateZ_Right.ia";
connectAttr "CTRL_ship_translateZ_Right_inputB.o" "CTRL_ship_translateZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_ship_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_ship_visibility_Right.wb";
connectAttr "CTRL_ship_visibility_Forwards.o" "CTRL_ship_visibility_Right.ia";
connectAttr "CTRL_ship_visibility_Right_inputB.o" "CTRL_ship_visibility_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_cog_IKFK_Switch_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_IKFK_Switch_Right.wb";
connectAttr "CTRL_cog_IKFK_Switch_Forwards.o" "CTRL_cog_IKFK_Switch_Right.ia";
connectAttr "CTRL_cog_IKFK_Switch_Right_inputB.o" "CTRL_cog_IKFK_Switch_Right.ib"
		;
connectAttr "CTRL_cog_rotate_Forwards.ox" "CTRL_cog_rotate_Right.iax";
connectAttr "CTRL_cog_rotate_Forwards.oy" "CTRL_cog_rotate_Right.iay";
connectAttr "CTRL_cog_rotate_Forwards.oz" "CTRL_cog_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_cog_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_cog_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_rotate_Right.wb";
connectAttr "CTRL_cog_rotate_Right_inputBX.o" "CTRL_cog_rotate_Right.ibx";
connectAttr "CTRL_cog_rotate_Right_inputBY.o" "CTRL_cog_rotate_Right.iby";
connectAttr "CTRL_cog_rotate_Right_inputBZ.o" "CTRL_cog_rotate_Right.ibz";
connectAttr "Right.sam" "CTRL_cog_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_cog_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_scaleX_Right.wb";
connectAttr "CTRL_cog_scaleX_Forwards.o" "CTRL_cog_scaleX_Right.ia";
connectAttr "CTRL_cog_scaleX_Right_inputB.o" "CTRL_cog_scaleX_Right.ib";
connectAttr "Right.sam" "CTRL_cog_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_cog_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_scaleY_Right.wb";
connectAttr "CTRL_cog_scaleY_Forwards.o" "CTRL_cog_scaleY_Right.ia";
connectAttr "CTRL_cog_scaleY_Right_inputB.o" "CTRL_cog_scaleY_Right.ib";
connectAttr "Right.sam" "CTRL_cog_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_cog_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_scaleZ_Right.wb";
connectAttr "CTRL_cog_scaleZ_Forwards.o" "CTRL_cog_scaleZ_Right.ia";
connectAttr "CTRL_cog_scaleZ_Right_inputB.o" "CTRL_cog_scaleZ_Right.ib";
connectAttr "Right.bgwt" "CTRL_cog_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_translateX_Right.wb";
connectAttr "CTRL_cog_translateX_Forwards.o" "CTRL_cog_translateX_Right.ia";
connectAttr "CTRL_cog_translateX_Right_inputB.o" "CTRL_cog_translateX_Right.ib";
connectAttr "Right.bgwt" "CTRL_cog_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_translateY_Right.wb";
connectAttr "CTRL_cog_translateY_Forwards.o" "CTRL_cog_translateY_Right.ia";
connectAttr "CTRL_cog_translateY_Right_inputB.o" "CTRL_cog_translateY_Right.ib";
connectAttr "Right.bgwt" "CTRL_cog_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_translateZ_Right.wb";
connectAttr "CTRL_cog_translateZ_Forwards.o" "CTRL_cog_translateZ_Right.ia";
connectAttr "CTRL_cog_translateZ_Right_inputB.o" "CTRL_cog_translateZ_Right.ib";
connectAttr "Right.bgwt" "CTRL_cog_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_cog_visibility_Right.wb";
connectAttr "CTRL_cog_visibility_Forwards.o" "CTRL_cog_visibility_Right.ia";
connectAttr "CTRL_cog_visibility_Right_inputB.o" "CTRL_cog_visibility_Right.ib";
connectAttr "Right.bgwt" "CTRL_head_Orient_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_Orient_Right.wb";
connectAttr "CTRL_head_Orient_Forwards.o" "CTRL_head_Orient_Right.ia";
connectAttr "CTRL_head_Orient_Right_inputB.o" "CTRL_head_Orient_Right.ib";
connectAttr "CTRL_head_rotate_Forwards.ox" "CTRL_head_rotate_Right.iax";
connectAttr "CTRL_head_rotate_Forwards.oy" "CTRL_head_rotate_Right.iay";
connectAttr "CTRL_head_rotate_Forwards.oz" "CTRL_head_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_head_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_head_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_rotate_Right.wb";
connectAttr "CTRL_head_rotate_Right_inputBX.o" "CTRL_head_rotate_Right.ibx";
connectAttr "CTRL_head_rotate_Right_inputBY.o" "CTRL_head_rotate_Right.iby";
connectAttr "CTRL_head_rotate_Right_inputBZ.o" "CTRL_head_rotate_Right.ibz";
connectAttr "Right.sam" "CTRL_head_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_head_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_scaleX_Right.wb";
connectAttr "CTRL_head_scaleX_Forwards.o" "CTRL_head_scaleX_Right.ia";
connectAttr "CTRL_head_scaleX_Right_inputB.o" "CTRL_head_scaleX_Right.ib";
connectAttr "Right.sam" "CTRL_head_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_head_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_scaleY_Right.wb";
connectAttr "CTRL_head_scaleY_Forwards.o" "CTRL_head_scaleY_Right.ia";
connectAttr "CTRL_head_scaleY_Right_inputB.o" "CTRL_head_scaleY_Right.ib";
connectAttr "Right.sam" "CTRL_head_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_head_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_scaleZ_Right.wb";
connectAttr "CTRL_head_scaleZ_Forwards.o" "CTRL_head_scaleZ_Right.ia";
connectAttr "CTRL_head_scaleZ_Right_inputB.o" "CTRL_head_scaleZ_Right.ib";
connectAttr "Right.bgwt" "CTRL_head_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_translateX_Right.wb";
connectAttr "CTRL_head_translateX_Forwards.o" "CTRL_head_translateX_Right.ia";
connectAttr "CTRL_head_translateX_Right_inputB.o" "CTRL_head_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_head_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_translateY_Right.wb";
connectAttr "CTRL_head_translateY_Forwards.o" "CTRL_head_translateY_Right.ia";
connectAttr "CTRL_head_translateY_Right_inputB.o" "CTRL_head_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_head_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_translateZ_Right.wb";
connectAttr "CTRL_head_translateZ_Forwards.o" "CTRL_head_translateZ_Right.ia";
connectAttr "CTRL_head_translateZ_Right_inputB.o" "CTRL_head_translateZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_head_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_head_visibility_Right.wb";
connectAttr "CTRL_head_visibility_Forwards.o" "CTRL_head_visibility_Right.ia";
connectAttr "CTRL_head_visibility_Right_inputB.o" "CTRL_head_visibility_Right.ib"
		;
connectAttr "Right.oram" "CTRL_arm_l_pole_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_pole_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_rotate_Right.wb";
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBX.o" "CTRL_arm_l_pole_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBY.o" "CTRL_arm_l_pole_rotate_Right.iby"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBZ.o" "CTRL_arm_l_pole_rotate_Right.ibz"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAX.o" "CTRL_arm_l_pole_rotate_Right.iax"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAY.o" "CTRL_arm_l_pole_rotate_Right.iay"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAZ.o" "CTRL_arm_l_pole_rotate_Right.iaz"
		;
connectAttr "Right.sam" "CTRL_arm_l_pole_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_pole_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_scaleX_Right.wb";
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputB.o" "CTRL_arm_l_pole_scaleX_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputA.o" "CTRL_arm_l_pole_scaleX_Right.ia"
		;
connectAttr "Right.sam" "CTRL_arm_l_pole_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_pole_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_scaleY_Right.wb";
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputB.o" "CTRL_arm_l_pole_scaleY_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputA.o" "CTRL_arm_l_pole_scaleY_Right.ia"
		;
connectAttr "Right.sam" "CTRL_arm_l_pole_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_pole_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_scaleZ_Right.wb";
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputB.o" "CTRL_arm_l_pole_scaleZ_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputA.o" "CTRL_arm_l_pole_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_pole_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_translateX_Right.wb";
connectAttr "CTRL_arm_l_pole_translateX_Right_inputB.o" "CTRL_arm_l_pole_translateX_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right_inputA.o" "CTRL_arm_l_pole_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_pole_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_translateY_Right.wb";
connectAttr "CTRL_arm_l_pole_translateY_Right_inputB.o" "CTRL_arm_l_pole_translateY_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_translateY_Right_inputA.o" "CTRL_arm_l_pole_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_pole_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_translateZ_Right.wb";
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputB.o" "CTRL_arm_l_pole_translateZ_Right.ib"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputA.o" "CTRL_arm_l_pole_translateZ_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_pole_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_pole_visibility_Right.wb";
connectAttr "CTRL_arm_l_pole_visibility_Right_inputB.o" "CTRL_arm_l_pole_visibility_Right.ib"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards.ox" "CTRL_arm_l_ik_rotate_Right.iax";
connectAttr "CTRL_arm_l_ik_rotate_Forwards.oy" "CTRL_arm_l_ik_rotate_Right.iay";
connectAttr "CTRL_arm_l_ik_rotate_Forwards.oz" "CTRL_arm_l_ik_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_arm_l_ik_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_ik_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_rotate_Right.wb";
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBX.o" "CTRL_arm_l_ik_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBY.o" "CTRL_arm_l_ik_rotate_Right.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBZ.o" "CTRL_arm_l_ik_rotate_Right.ibz"
		;
connectAttr "Right.sam" "CTRL_arm_l_ik_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_ik_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_scaleX_Right.wb";
connectAttr "CTRL_arm_l_ik_scaleX_Forwards.o" "CTRL_arm_l_ik_scaleX_Right.ia";
connectAttr "CTRL_arm_l_ik_scaleX_Right_inputB.o" "CTRL_arm_l_ik_scaleX_Right.ib"
		;
connectAttr "Right.sam" "CTRL_arm_l_ik_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_ik_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_scaleY_Right.wb";
connectAttr "CTRL_arm_l_ik_scaleY_Forwards.o" "CTRL_arm_l_ik_scaleY_Right.ia";
connectAttr "CTRL_arm_l_ik_scaleY_Right_inputB.o" "CTRL_arm_l_ik_scaleY_Right.ib"
		;
connectAttr "Right.sam" "CTRL_arm_l_ik_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_l_ik_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_scaleZ_Right.wb";
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards.o" "CTRL_arm_l_ik_scaleZ_Right.ia";
connectAttr "CTRL_arm_l_ik_scaleZ_Right_inputB.o" "CTRL_arm_l_ik_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_ik_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_translateX_Right.wb";
connectAttr "CTRL_arm_l_ik_translateX_Forwards.o" "CTRL_arm_l_ik_translateX_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateX_Right_inputB.o" "CTRL_arm_l_ik_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_ik_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_translateY_Right.wb";
connectAttr "CTRL_arm_l_ik_translateY_Forwards.o" "CTRL_arm_l_ik_translateY_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateY_Right_inputB.o" "CTRL_arm_l_ik_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_ik_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_translateZ_Right.wb";
connectAttr "CTRL_arm_l_ik_translateZ_Forwards.o" "CTRL_arm_l_ik_translateZ_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Right_inputB.o" "CTRL_arm_l_ik_translateZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_arm_l_ik_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_l_ik_visibility_Right.wb";
connectAttr "CTRL_arm_l_ik_visibility_Forwards.o" "CTRL_arm_l_ik_visibility_Right.ia"
		;
connectAttr "CTRL_arm_l_ik_visibility_Right_inputB.o" "CTRL_arm_l_ik_visibility_Right.ib"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards.ox" "CTRL_chest_IK_rotate_Right.iax";
connectAttr "CTRL_chest_IK_rotate_Forwards.oy" "CTRL_chest_IK_rotate_Right.iay";
connectAttr "CTRL_chest_IK_rotate_Forwards.oz" "CTRL_chest_IK_rotate_Right.iaz";
connectAttr "Right.oram" "CTRL_chest_IK_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_chest_IK_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_rotate_Right.wb";
connectAttr "CTRL_chest_IK_rotate_Right_inputBX.o" "CTRL_chest_IK_rotate_Right.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBY.o" "CTRL_chest_IK_rotate_Right.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBZ.o" "CTRL_chest_IK_rotate_Right.ibz"
		;
connectAttr "Right.sam" "CTRL_chest_IK_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_chest_IK_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_scaleX_Right.wb";
connectAttr "CTRL_chest_IK_scaleX_Forwards.o" "CTRL_chest_IK_scaleX_Right.ia";
connectAttr "CTRL_chest_IK_scaleX_Right_inputB.o" "CTRL_chest_IK_scaleX_Right.ib"
		;
connectAttr "Right.sam" "CTRL_chest_IK_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_chest_IK_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_scaleY_Right.wb";
connectAttr "CTRL_chest_IK_scaleY_Forwards.o" "CTRL_chest_IK_scaleY_Right.ia";
connectAttr "CTRL_chest_IK_scaleY_Right_inputB.o" "CTRL_chest_IK_scaleY_Right.ib"
		;
connectAttr "Right.sam" "CTRL_chest_IK_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_chest_IK_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_scaleZ_Right.wb";
connectAttr "CTRL_chest_IK_scaleZ_Forwards.o" "CTRL_chest_IK_scaleZ_Right.ia";
connectAttr "CTRL_chest_IK_scaleZ_Right_inputB.o" "CTRL_chest_IK_scaleZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_chest_IK_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_translateX_Right.wb";
connectAttr "CTRL_chest_IK_translateX_Forwards.o" "CTRL_chest_IK_translateX_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateX_Right_inputB.o" "CTRL_chest_IK_translateX_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_chest_IK_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_translateY_Right.wb";
connectAttr "CTRL_chest_IK_translateY_Forwards.o" "CTRL_chest_IK_translateY_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateY_Right_inputB.o" "CTRL_chest_IK_translateY_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_chest_IK_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_translateZ_Right.wb";
connectAttr "CTRL_chest_IK_translateZ_Forwards.o" "CTRL_chest_IK_translateZ_Right.ia"
		;
connectAttr "CTRL_chest_IK_translateZ_Right_inputB.o" "CTRL_chest_IK_translateZ_Right.ib"
		;
connectAttr "Right.bgwt" "CTRL_chest_IK_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_chest_IK_visibility_Right.wb";
connectAttr "CTRL_chest_IK_visibility_Forwards.o" "CTRL_chest_IK_visibility_Right.ia"
		;
connectAttr "CTRL_chest_IK_visibility_Right_inputB.o" "CTRL_chest_IK_visibility_Right.ib"
		;
connectAttr "Right.oram" "CTRL_arm_r_ik_rotate_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_r_ik_rotate_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_rotate_Right.wb";
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBX.o" "CTRL_arm_r_ik_rotate_Right.ibx"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBY.o" "CTRL_arm_r_ik_rotate_Right.iby"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBZ.o" "CTRL_arm_r_ik_rotate_Right.ibz"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAX.o" "CTRL_arm_r_ik_rotate_Right.iax"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAY.o" "CTRL_arm_r_ik_rotate_Right.iay"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAZ.o" "CTRL_arm_r_ik_rotate_Right.iaz"
		;
connectAttr "Right.sam" "CTRL_arm_r_ik_scaleX_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_r_ik_scaleX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_scaleX_Right.wb";
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputB.o" "CTRL_arm_r_ik_scaleX_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputA.o" "CTRL_arm_r_ik_scaleX_Right.ia"
		;
connectAttr "Right.sam" "CTRL_arm_r_ik_scaleY_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_r_ik_scaleY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_scaleY_Right.wb";
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputB.o" "CTRL_arm_r_ik_scaleY_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputA.o" "CTRL_arm_r_ik_scaleY_Right.ia"
		;
connectAttr "Right.sam" "CTRL_arm_r_ik_scaleZ_Right.acm";
connectAttr "Right.bgwt" "CTRL_arm_r_ik_scaleZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_scaleZ_Right.wb";
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputB.o" "CTRL_arm_r_ik_scaleZ_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputA.o" "CTRL_arm_r_ik_scaleZ_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_r_ik_translateX_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_translateX_Right.wb";
connectAttr "CTRL_arm_r_ik_translateX_Right_inputB.o" "CTRL_arm_r_ik_translateX_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right_inputA.o" "CTRL_arm_r_ik_translateX_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_r_ik_translateY_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_translateY_Right.wb";
connectAttr "CTRL_arm_r_ik_translateY_Right_inputB.o" "CTRL_arm_r_ik_translateY_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right_inputA.o" "CTRL_arm_r_ik_translateY_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_r_ik_translateZ_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_translateZ_Right.wb";
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputB.o" "CTRL_arm_r_ik_translateZ_Right.ib"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputA.o" "CTRL_arm_r_ik_translateZ_Right.ia"
		;
connectAttr "Right.bgwt" "CTRL_arm_r_ik_visibility_Right.wa";
connectAttr "Right.fgwt" "CTRL_arm_r_ik_visibility_Right.wb";
connectAttr "CTRL_arm_r_ik_visibility_Right_inputB.o" "CTRL_arm_r_ik_visibility_Right.ib"
		;
connectAttr "BaseAnimation.csol" "Left.sslo";
connectAttr "BaseAnimation.fgwt" "Left.pwth";
connectAttr "BaseAnimation.omte" "Left.pmte";
connectAttr "CTRL_ship_rotate_Left.msg" "Left.bnds[3]";
connectAttr "CTRL_ship_scaleX_Left.msg" "Left.bnds[4]";
connectAttr "CTRL_ship_scaleY_Left.msg" "Left.bnds[5]";
connectAttr "CTRL_ship_scaleZ_Left.msg" "Left.bnds[6]";
connectAttr "CTRL_ship_translateX_Left.msg" "Left.bnds[7]";
connectAttr "CTRL_ship_translateY_Left.msg" "Left.bnds[8]";
connectAttr "CTRL_ship_translateZ_Left.msg" "Left.bnds[9]";
connectAttr "CTRL_ship_visibility_Left.msg" "Left.bnds[10]";
connectAttr "CTRL_cog_IKFK_Switch_Left.msg" "Left.bnds[11]";
connectAttr "CTRL_cog_rotate_Left.msg" "Left.bnds[15]";
connectAttr "CTRL_cog_scaleX_Left.msg" "Left.bnds[16]";
connectAttr "CTRL_cog_scaleY_Left.msg" "Left.bnds[17]";
connectAttr "CTRL_cog_scaleZ_Left.msg" "Left.bnds[18]";
connectAttr "CTRL_cog_translateX_Left.msg" "Left.bnds[19]";
connectAttr "CTRL_cog_translateY_Left.msg" "Left.bnds[20]";
connectAttr "CTRL_cog_translateZ_Left.msg" "Left.bnds[21]";
connectAttr "CTRL_cog_visibility_Left.msg" "Left.bnds[22]";
connectAttr "CTRL_head_Orient_Left.msg" "Left.bnds[23]";
connectAttr "CTRL_head_rotate_Left.msg" "Left.bnds[27]";
connectAttr "CTRL_head_scaleX_Left.msg" "Left.bnds[28]";
connectAttr "CTRL_head_scaleY_Left.msg" "Left.bnds[29]";
connectAttr "CTRL_head_scaleZ_Left.msg" "Left.bnds[30]";
connectAttr "CTRL_head_translateX_Left.msg" "Left.bnds[31]";
connectAttr "CTRL_head_translateY_Left.msg" "Left.bnds[32]";
connectAttr "CTRL_head_translateZ_Left.msg" "Left.bnds[33]";
connectAttr "CTRL_head_visibility_Left.msg" "Left.bnds[34]";
connectAttr "CTRL_arm_l_ik_rotate_Left.msg" "Left.bnds[38]";
connectAttr "CTRL_arm_l_ik_scaleX_Left.msg" "Left.bnds[39]";
connectAttr "CTRL_arm_l_ik_scaleY_Left.msg" "Left.bnds[40]";
connectAttr "CTRL_arm_l_ik_scaleZ_Left.msg" "Left.bnds[41]";
connectAttr "CTRL_arm_l_ik_translateX_Left.msg" "Left.bnds[42]";
connectAttr "CTRL_arm_l_ik_translateY_Left.msg" "Left.bnds[43]";
connectAttr "CTRL_arm_l_ik_translateZ_Left.msg" "Left.bnds[44]";
connectAttr "CTRL_arm_l_ik_visibility_Left.msg" "Left.bnds[45]";
connectAttr "CTRL_chest_IK_rotate_Left.msg" "Left.bnds[49]";
connectAttr "CTRL_chest_IK_scaleX_Left.msg" "Left.bnds[50]";
connectAttr "CTRL_chest_IK_scaleY_Left.msg" "Left.bnds[51]";
connectAttr "CTRL_chest_IK_scaleZ_Left.msg" "Left.bnds[52]";
connectAttr "CTRL_chest_IK_translateX_Left.msg" "Left.bnds[53]";
connectAttr "CTRL_chest_IK_translateY_Left.msg" "Left.bnds[54]";
connectAttr "CTRL_chest_IK_translateZ_Left.msg" "Left.bnds[55]";
connectAttr "CTRL_chest_IK_visibility_Left.msg" "Left.bnds[56]";
connectAttr "CTRL_arm_r_ik_rotate_Left.msg" "Left.bnds[60]";
connectAttr "CTRL_arm_r_ik_scaleX_Left.msg" "Left.bnds[61]";
connectAttr "CTRL_arm_r_ik_scaleY_Left.msg" "Left.bnds[62]";
connectAttr "CTRL_arm_r_ik_scaleZ_Left.msg" "Left.bnds[63]";
connectAttr "CTRL_arm_r_ik_translateX_Left.msg" "Left.bnds[64]";
connectAttr "CTRL_arm_r_ik_translateY_Left.msg" "Left.bnds[65]";
connectAttr "CTRL_arm_r_ik_translateZ_Left.msg" "Left.bnds[66]";
connectAttr "CTRL_arm_r_ik_visibility_Left.msg" "Left.bnds[67]";
connectAttr "CTRL_arm_r_pole_rotate_Left.msg" "Left.bnds[71]";
connectAttr "CTRL_arm_r_pole_scaleX_Left.msg" "Left.bnds[72]";
connectAttr "CTRL_arm_r_pole_scaleY_Left.msg" "Left.bnds[73]";
connectAttr "CTRL_arm_r_pole_scaleZ_Left.msg" "Left.bnds[74]";
connectAttr "CTRL_arm_r_pole_translateX_Left.msg" "Left.bnds[75]";
connectAttr "CTRL_arm_r_pole_translateY_Left.msg" "Left.bnds[76]";
connectAttr "CTRL_arm_r_pole_translateZ_Left.msg" "Left.bnds[77]";
connectAttr "CTRL_arm_r_pole_visibility_Left.msg" "Left.bnds[78]";
connectAttr "CTRL_spine_IK_rotate_Left.msg" "Left.bnds[82]";
connectAttr "CTRL_spine_IK_scaleX_Left.msg" "Left.bnds[83]";
connectAttr "CTRL_spine_IK_scaleY_Left.msg" "Left.bnds[84]";
connectAttr "CTRL_spine_IK_scaleZ_Left.msg" "Left.bnds[85]";
connectAttr "CTRL_spine_IK_translateX_Left.msg" "Left.bnds[86]";
connectAttr "CTRL_spine_IK_translateY_Left.msg" "Left.bnds[87]";
connectAttr "CTRL_spine_IK_translateZ_Left.msg" "Left.bnds[88]";
connectAttr "CTRL_spine_IK_visibility_Left.msg" "Left.bnds[89]";
connectAttr "CTRL_ship_rotate_Right.ox" "CTRL_ship_rotate_Left.iax";
connectAttr "CTRL_ship_rotate_Right.oy" "CTRL_ship_rotate_Left.iay";
connectAttr "CTRL_ship_rotate_Right.oz" "CTRL_ship_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_ship_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_rotate_Left.wb";
connectAttr "CTRL_ship_rotate_Left_inputBX.o" "CTRL_ship_rotate_Left.ibx";
connectAttr "CTRL_ship_rotate_Left_inputBY.o" "CTRL_ship_rotate_Left.iby";
connectAttr "CTRL_ship_rotate_Left_inputBZ.o" "CTRL_ship_rotate_Left.ibz";
connectAttr "Left.sam" "CTRL_ship_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleX_Left.wb";
connectAttr "CTRL_ship_scaleX_Right.o" "CTRL_ship_scaleX_Left.ia";
connectAttr "CTRL_ship_scaleX_Left_inputB.o" "CTRL_ship_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_ship_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleY_Left.wb";
connectAttr "CTRL_ship_scaleY_Right.o" "CTRL_ship_scaleY_Left.ia";
connectAttr "CTRL_ship_scaleY_Left_inputB.o" "CTRL_ship_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_ship_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_ship_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_scaleZ_Left.wb";
connectAttr "CTRL_ship_scaleZ_Right.o" "CTRL_ship_scaleZ_Left.ia";
connectAttr "CTRL_ship_scaleZ_Left_inputB.o" "CTRL_ship_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateX_Left.wb";
connectAttr "CTRL_ship_translateX_Right.o" "CTRL_ship_translateX_Left.ia";
connectAttr "CTRL_ship_translateX_Left_inputB.o" "CTRL_ship_translateX_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateY_Left.wb";
connectAttr "CTRL_ship_translateY_Right.o" "CTRL_ship_translateY_Left.ia";
connectAttr "CTRL_ship_translateY_Left_inputB.o" "CTRL_ship_translateY_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_translateZ_Left.wb";
connectAttr "CTRL_ship_translateZ_Right.o" "CTRL_ship_translateZ_Left.ia";
connectAttr "CTRL_ship_translateZ_Left_inputB.o" "CTRL_ship_translateZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_ship_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_ship_visibility_Left.wb";
connectAttr "CTRL_ship_visibility_Right.o" "CTRL_ship_visibility_Left.ia";
connectAttr "CTRL_ship_visibility_Left_inputB.o" "CTRL_ship_visibility_Left.ib";
connectAttr "Left.bgwt" "CTRL_cog_IKFK_Switch_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_IKFK_Switch_Left.wb";
connectAttr "CTRL_cog_IKFK_Switch_Right.o" "CTRL_cog_IKFK_Switch_Left.ia";
connectAttr "CTRL_cog_IKFK_Switch_Left_inputB.o" "CTRL_cog_IKFK_Switch_Left.ib";
connectAttr "CTRL_cog_rotate_Right.ox" "CTRL_cog_rotate_Left.iax";
connectAttr "CTRL_cog_rotate_Right.oy" "CTRL_cog_rotate_Left.iay";
connectAttr "CTRL_cog_rotate_Right.oz" "CTRL_cog_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_cog_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_cog_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_rotate_Left.wb";
connectAttr "CTRL_cog_rotate_Left_inputBX.o" "CTRL_cog_rotate_Left.ibx";
connectAttr "CTRL_cog_rotate_Left_inputBY.o" "CTRL_cog_rotate_Left.iby";
connectAttr "CTRL_cog_rotate_Left_inputBZ.o" "CTRL_cog_rotate_Left.ibz";
connectAttr "Left.sam" "CTRL_cog_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_cog_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_scaleX_Left.wb";
connectAttr "CTRL_cog_scaleX_Right.o" "CTRL_cog_scaleX_Left.ia";
connectAttr "CTRL_cog_scaleX_Left_inputB.o" "CTRL_cog_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_cog_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_cog_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_scaleY_Left.wb";
connectAttr "CTRL_cog_scaleY_Right.o" "CTRL_cog_scaleY_Left.ia";
connectAttr "CTRL_cog_scaleY_Left_inputB.o" "CTRL_cog_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_cog_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_cog_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_scaleZ_Left.wb";
connectAttr "CTRL_cog_scaleZ_Right.o" "CTRL_cog_scaleZ_Left.ia";
connectAttr "CTRL_cog_scaleZ_Left_inputB.o" "CTRL_cog_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_cog_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_translateX_Left.wb";
connectAttr "CTRL_cog_translateX_Right.o" "CTRL_cog_translateX_Left.ia";
connectAttr "CTRL_cog_translateX_Left_inputB.o" "CTRL_cog_translateX_Left.ib";
connectAttr "Left.bgwt" "CTRL_cog_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_translateY_Left.wb";
connectAttr "CTRL_cog_translateY_Right.o" "CTRL_cog_translateY_Left.ia";
connectAttr "CTRL_cog_translateY_Left_inputB.o" "CTRL_cog_translateY_Left.ib";
connectAttr "Left.bgwt" "CTRL_cog_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_translateZ_Left.wb";
connectAttr "CTRL_cog_translateZ_Right.o" "CTRL_cog_translateZ_Left.ia";
connectAttr "CTRL_cog_translateZ_Left_inputB.o" "CTRL_cog_translateZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_cog_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_cog_visibility_Left.wb";
connectAttr "CTRL_cog_visibility_Right.o" "CTRL_cog_visibility_Left.ia";
connectAttr "CTRL_cog_visibility_Left_inputB.o" "CTRL_cog_visibility_Left.ib";
connectAttr "Left.bgwt" "CTRL_head_Orient_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_Orient_Left.wb";
connectAttr "CTRL_head_Orient_Right.o" "CTRL_head_Orient_Left.ia";
connectAttr "CTRL_head_Orient_Left_inputB.o" "CTRL_head_Orient_Left.ib";
connectAttr "CTRL_head_rotate_Right.ox" "CTRL_head_rotate_Left.iax";
connectAttr "CTRL_head_rotate_Right.oy" "CTRL_head_rotate_Left.iay";
connectAttr "CTRL_head_rotate_Right.oz" "CTRL_head_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_head_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_head_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_rotate_Left.wb";
connectAttr "CTRL_head_rotate_Left_inputBX.o" "CTRL_head_rotate_Left.ibx";
connectAttr "CTRL_head_rotate_Left_inputBY.o" "CTRL_head_rotate_Left.iby";
connectAttr "CTRL_head_rotate_Left_inputBZ.o" "CTRL_head_rotate_Left.ibz";
connectAttr "Left.sam" "CTRL_head_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_head_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_scaleX_Left.wb";
connectAttr "CTRL_head_scaleX_Right.o" "CTRL_head_scaleX_Left.ia";
connectAttr "CTRL_head_scaleX_Left_inputB.o" "CTRL_head_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_head_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_head_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_scaleY_Left.wb";
connectAttr "CTRL_head_scaleY_Right.o" "CTRL_head_scaleY_Left.ia";
connectAttr "CTRL_head_scaleY_Left_inputB.o" "CTRL_head_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_head_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_head_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_scaleZ_Left.wb";
connectAttr "CTRL_head_scaleZ_Right.o" "CTRL_head_scaleZ_Left.ia";
connectAttr "CTRL_head_scaleZ_Left_inputB.o" "CTRL_head_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_head_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_translateX_Left.wb";
connectAttr "CTRL_head_translateX_Right.o" "CTRL_head_translateX_Left.ia";
connectAttr "CTRL_head_translateX_Left_inputB.o" "CTRL_head_translateX_Left.ib";
connectAttr "Left.bgwt" "CTRL_head_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_translateY_Left.wb";
connectAttr "CTRL_head_translateY_Right.o" "CTRL_head_translateY_Left.ia";
connectAttr "CTRL_head_translateY_Left_inputB.o" "CTRL_head_translateY_Left.ib";
connectAttr "Left.bgwt" "CTRL_head_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_translateZ_Left.wb";
connectAttr "CTRL_head_translateZ_Right.o" "CTRL_head_translateZ_Left.ia";
connectAttr "CTRL_head_translateZ_Left_inputB.o" "CTRL_head_translateZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_head_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_head_visibility_Left.wb";
connectAttr "CTRL_head_visibility_Right.o" "CTRL_head_visibility_Left.ia";
connectAttr "CTRL_head_visibility_Left_inputB.o" "CTRL_head_visibility_Left.ib";
connectAttr "CTRL_arm_l_ik_rotate_Right.ox" "CTRL_arm_l_ik_rotate_Left.iax";
connectAttr "CTRL_arm_l_ik_rotate_Right.oy" "CTRL_arm_l_ik_rotate_Left.iay";
connectAttr "CTRL_arm_l_ik_rotate_Right.oz" "CTRL_arm_l_ik_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_arm_l_ik_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_l_ik_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_rotate_Left.wb";
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBX.o" "CTRL_arm_l_ik_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBY.o" "CTRL_arm_l_ik_rotate_Left.iby"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBZ.o" "CTRL_arm_l_ik_rotate_Left.ibz"
		;
connectAttr "Left.sam" "CTRL_arm_l_ik_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_l_ik_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_scaleX_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleX_Right.o" "CTRL_arm_l_ik_scaleX_Left.ia";
connectAttr "CTRL_arm_l_ik_scaleX_Left_inputB.o" "CTRL_arm_l_ik_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_arm_l_ik_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_l_ik_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_scaleY_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleY_Right.o" "CTRL_arm_l_ik_scaleY_Left.ia";
connectAttr "CTRL_arm_l_ik_scaleY_Left_inputB.o" "CTRL_arm_l_ik_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_arm_l_ik_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_l_ik_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_scaleZ_Left.wb";
connectAttr "CTRL_arm_l_ik_scaleZ_Right.o" "CTRL_arm_l_ik_scaleZ_Left.ia";
connectAttr "CTRL_arm_l_ik_scaleZ_Left_inputB.o" "CTRL_arm_l_ik_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_arm_l_ik_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_translateX_Left.wb";
connectAttr "CTRL_arm_l_ik_translateX_Right.o" "CTRL_arm_l_ik_translateX_Left.ia"
		;
connectAttr "CTRL_arm_l_ik_translateX_Left_inputB.o" "CTRL_arm_l_ik_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_l_ik_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_translateY_Left.wb";
connectAttr "CTRL_arm_l_ik_translateY_Right.o" "CTRL_arm_l_ik_translateY_Left.ia"
		;
connectAttr "CTRL_arm_l_ik_translateY_Left_inputB.o" "CTRL_arm_l_ik_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_l_ik_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_translateZ_Left.wb";
connectAttr "CTRL_arm_l_ik_translateZ_Right.o" "CTRL_arm_l_ik_translateZ_Left.ia"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Left_inputB.o" "CTRL_arm_l_ik_translateZ_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_l_ik_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_l_ik_visibility_Left.wb";
connectAttr "CTRL_arm_l_ik_visibility_Right.o" "CTRL_arm_l_ik_visibility_Left.ia"
		;
connectAttr "CTRL_arm_l_ik_visibility_Left_inputB.o" "CTRL_arm_l_ik_visibility_Left.ib"
		;
connectAttr "CTRL_chest_IK_rotate_Right.ox" "CTRL_chest_IK_rotate_Left.iax";
connectAttr "CTRL_chest_IK_rotate_Right.oy" "CTRL_chest_IK_rotate_Left.iay";
connectAttr "CTRL_chest_IK_rotate_Right.oz" "CTRL_chest_IK_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_chest_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_chest_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_rotate_Left.wb";
connectAttr "CTRL_chest_IK_rotate_Left_inputBX.o" "CTRL_chest_IK_rotate_Left.ibx"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBY.o" "CTRL_chest_IK_rotate_Left.iby"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBZ.o" "CTRL_chest_IK_rotate_Left.ibz"
		;
connectAttr "Left.sam" "CTRL_chest_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_chest_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_scaleX_Left.wb";
connectAttr "CTRL_chest_IK_scaleX_Right.o" "CTRL_chest_IK_scaleX_Left.ia";
connectAttr "CTRL_chest_IK_scaleX_Left_inputB.o" "CTRL_chest_IK_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_chest_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_chest_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_scaleY_Left.wb";
connectAttr "CTRL_chest_IK_scaleY_Right.o" "CTRL_chest_IK_scaleY_Left.ia";
connectAttr "CTRL_chest_IK_scaleY_Left_inputB.o" "CTRL_chest_IK_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_chest_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_chest_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_scaleZ_Left.wb";
connectAttr "CTRL_chest_IK_scaleZ_Right.o" "CTRL_chest_IK_scaleZ_Left.ia";
connectAttr "CTRL_chest_IK_scaleZ_Left_inputB.o" "CTRL_chest_IK_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_chest_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_translateX_Left.wb";
connectAttr "CTRL_chest_IK_translateX_Right.o" "CTRL_chest_IK_translateX_Left.ia"
		;
connectAttr "CTRL_chest_IK_translateX_Left_inputB.o" "CTRL_chest_IK_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_chest_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_translateY_Left.wb";
connectAttr "CTRL_chest_IK_translateY_Right.o" "CTRL_chest_IK_translateY_Left.ia"
		;
connectAttr "CTRL_chest_IK_translateY_Left_inputB.o" "CTRL_chest_IK_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_chest_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_translateZ_Left.wb";
connectAttr "CTRL_chest_IK_translateZ_Right.o" "CTRL_chest_IK_translateZ_Left.ia"
		;
connectAttr "CTRL_chest_IK_translateZ_Left_inputB.o" "CTRL_chest_IK_translateZ_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_chest_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_chest_IK_visibility_Left.wb";
connectAttr "CTRL_chest_IK_visibility_Right.o" "CTRL_chest_IK_visibility_Left.ia"
		;
connectAttr "CTRL_chest_IK_visibility_Left_inputB.o" "CTRL_chest_IK_visibility_Left.ib"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right.ox" "CTRL_arm_r_ik_rotate_Left.iax";
connectAttr "CTRL_arm_r_ik_rotate_Right.oy" "CTRL_arm_r_ik_rotate_Left.iay";
connectAttr "CTRL_arm_r_ik_rotate_Right.oz" "CTRL_arm_r_ik_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_arm_r_ik_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_ik_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_rotate_Left.wb";
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBX.o" "CTRL_arm_r_ik_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBY.o" "CTRL_arm_r_ik_rotate_Left.iby"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBZ.o" "CTRL_arm_r_ik_rotate_Left.ibz"
		;
connectAttr "Left.sam" "CTRL_arm_r_ik_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_ik_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_scaleX_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleX_Right.o" "CTRL_arm_r_ik_scaleX_Left.ia";
connectAttr "CTRL_arm_r_ik_scaleX_Left_inputB.o" "CTRL_arm_r_ik_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_arm_r_ik_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_ik_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_scaleY_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleY_Right.o" "CTRL_arm_r_ik_scaleY_Left.ia";
connectAttr "CTRL_arm_r_ik_scaleY_Left_inputB.o" "CTRL_arm_r_ik_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_arm_r_ik_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_ik_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_scaleZ_Left.wb";
connectAttr "CTRL_arm_r_ik_scaleZ_Right.o" "CTRL_arm_r_ik_scaleZ_Left.ia";
connectAttr "CTRL_arm_r_ik_scaleZ_Left_inputB.o" "CTRL_arm_r_ik_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_arm_r_ik_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_translateX_Left.wb";
connectAttr "CTRL_arm_r_ik_translateX_Right.o" "CTRL_arm_r_ik_translateX_Left.ia"
		;
connectAttr "CTRL_arm_r_ik_translateX_Left_inputB.o" "CTRL_arm_r_ik_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_ik_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_translateY_Left.wb";
connectAttr "CTRL_arm_r_ik_translateY_Right.o" "CTRL_arm_r_ik_translateY_Left.ia"
		;
connectAttr "CTRL_arm_r_ik_translateY_Left_inputB.o" "CTRL_arm_r_ik_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_ik_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_translateZ_Left.wb";
connectAttr "CTRL_arm_r_ik_translateZ_Right.o" "CTRL_arm_r_ik_translateZ_Left.ia"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Left_inputB.o" "CTRL_arm_r_ik_translateZ_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_ik_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_ik_visibility_Left.wb";
connectAttr "CTRL_arm_r_ik_visibility_Right.o" "CTRL_arm_r_ik_visibility_Left.ia"
		;
connectAttr "CTRL_arm_r_ik_visibility_Left_inputB.o" "CTRL_arm_r_ik_visibility_Left.ib"
		;
connectAttr "Left.oram" "CTRL_arm_r_pole_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_pole_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_rotate_Left.wb";
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBX.o" "CTRL_arm_r_pole_rotate_Left.ibx"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBY.o" "CTRL_arm_r_pole_rotate_Left.iby"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBZ.o" "CTRL_arm_r_pole_rotate_Left.ibz"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAX.o" "CTRL_arm_r_pole_rotate_Left.iax"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAY.o" "CTRL_arm_r_pole_rotate_Left.iay"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAZ.o" "CTRL_arm_r_pole_rotate_Left.iaz"
		;
connectAttr "Left.sam" "CTRL_arm_r_pole_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_pole_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_scaleX_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputB.o" "CTRL_arm_r_pole_scaleX_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputA.o" "CTRL_arm_r_pole_scaleX_Left.ia"
		;
connectAttr "Left.sam" "CTRL_arm_r_pole_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_pole_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_scaleY_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputB.o" "CTRL_arm_r_pole_scaleY_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputA.o" "CTRL_arm_r_pole_scaleY_Left.ia"
		;
connectAttr "Left.sam" "CTRL_arm_r_pole_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_arm_r_pole_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_scaleZ_Left.wb";
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputB.o" "CTRL_arm_r_pole_scaleZ_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputA.o" "CTRL_arm_r_pole_scaleZ_Left.ia"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_pole_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_translateX_Left.wb";
connectAttr "CTRL_arm_r_pole_translateX_Left_inputB.o" "CTRL_arm_r_pole_translateX_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_translateX_Left_inputA.o" "CTRL_arm_r_pole_translateX_Left.ia"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_pole_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_translateY_Left.wb";
connectAttr "CTRL_arm_r_pole_translateY_Left_inputB.o" "CTRL_arm_r_pole_translateY_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_translateY_Left_inputA.o" "CTRL_arm_r_pole_translateY_Left.ia"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_pole_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_translateZ_Left.wb";
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputB.o" "CTRL_arm_r_pole_translateZ_Left.ib"
		;
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputA.o" "CTRL_arm_r_pole_translateZ_Left.ia"
		;
connectAttr "Left.bgwt" "CTRL_arm_r_pole_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_arm_r_pole_visibility_Left.wb";
connectAttr "CTRL_arm_r_pole_visibility_Left_inputB.o" "CTRL_arm_r_pole_visibility_Left.ib"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards.ox" "CTRL_spine_IK_rotate_Left.iax";
connectAttr "CTRL_spine_IK_rotate_Forwards.oy" "CTRL_spine_IK_rotate_Left.iay";
connectAttr "CTRL_spine_IK_rotate_Forwards.oz" "CTRL_spine_IK_rotate_Left.iaz";
connectAttr "Left.oram" "CTRL_spine_IK_rotate_Left.acm";
connectAttr "Left.bgwt" "CTRL_spine_IK_rotate_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_rotate_Left.wb";
connectAttr "CTRL_spine_IK_rotate_Left_inputBX.o" "CTRL_spine_IK_rotate_Left.ibx"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBY.o" "CTRL_spine_IK_rotate_Left.iby"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBZ.o" "CTRL_spine_IK_rotate_Left.ibz"
		;
connectAttr "Left.sam" "CTRL_spine_IK_scaleX_Left.acm";
connectAttr "Left.bgwt" "CTRL_spine_IK_scaleX_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_scaleX_Left.wb";
connectAttr "CTRL_spine_IK_scaleX_Forwards.o" "CTRL_spine_IK_scaleX_Left.ia";
connectAttr "CTRL_spine_IK_scaleX_Left_inputB.o" "CTRL_spine_IK_scaleX_Left.ib";
connectAttr "Left.sam" "CTRL_spine_IK_scaleY_Left.acm";
connectAttr "Left.bgwt" "CTRL_spine_IK_scaleY_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_scaleY_Left.wb";
connectAttr "CTRL_spine_IK_scaleY_Forwards.o" "CTRL_spine_IK_scaleY_Left.ia";
connectAttr "CTRL_spine_IK_scaleY_Left_inputB.o" "CTRL_spine_IK_scaleY_Left.ib";
connectAttr "Left.sam" "CTRL_spine_IK_scaleZ_Left.acm";
connectAttr "Left.bgwt" "CTRL_spine_IK_scaleZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_scaleZ_Left.wb";
connectAttr "CTRL_spine_IK_scaleZ_Forwards.o" "CTRL_spine_IK_scaleZ_Left.ia";
connectAttr "CTRL_spine_IK_scaleZ_Left_inputB.o" "CTRL_spine_IK_scaleZ_Left.ib";
connectAttr "Left.bgwt" "CTRL_spine_IK_translateX_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_translateX_Left.wb";
connectAttr "CTRL_spine_IK_translateX_Forwards.o" "CTRL_spine_IK_translateX_Left.ia"
		;
connectAttr "CTRL_spine_IK_translateX_Left_inputB.o" "CTRL_spine_IK_translateX_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_spine_IK_translateY_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_translateY_Left.wb";
connectAttr "CTRL_spine_IK_translateY_Forwards.o" "CTRL_spine_IK_translateY_Left.ia"
		;
connectAttr "CTRL_spine_IK_translateY_Left_inputB.o" "CTRL_spine_IK_translateY_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_spine_IK_translateZ_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_translateZ_Left.wb";
connectAttr "CTRL_spine_IK_translateZ_Forwards.o" "CTRL_spine_IK_translateZ_Left.ia"
		;
connectAttr "CTRL_spine_IK_translateZ_Left_inputB.o" "CTRL_spine_IK_translateZ_Left.ib"
		;
connectAttr "Left.bgwt" "CTRL_spine_IK_visibility_Left.wa";
connectAttr "Left.fgwt" "CTRL_spine_IK_visibility_Left.wb";
connectAttr "CTRL_spine_IK_visibility_Forwards.o" "CTRL_spine_IK_visibility_Left.ia"
		;
connectAttr "CTRL_spine_IK_visibility_Left_inputB.o" "CTRL_spine_IK_visibility_Left.ib"
		;
connectAttr "CTRL_chest_IK_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "CTRL_ship_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "CTRL_ship_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "CTRL_ship_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "CTRL_ship_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "CTRL_ship_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "CTRL_ship_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "animBot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "CTRL_head_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "CTRL_head_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "CTRL_head_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "CTRL_head_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "CTRL_head_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "CTRL_head_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "CTRL_arm_l_pole_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "CTRL_head_Orient_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "CTRL_head_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "CTRL_head_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "CTRL_arm_l_pole_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "CTRL_head_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "CTRL_head_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "CTRL_head_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "CTRL_head_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "CTRL_head_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "CTRL_head_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "CTRL_head_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Player_rigRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "CTRL_arm_l_pole_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "CTRL_cog_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "CTRL_cog_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "CTRL_cog_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "CTRL_cog_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "CTRL_cog_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "CTRL_cog_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "CTRL_cog_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "CTRL_head_Orient_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "CTRL_head_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "CTRL_ship_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "CTRL_ship_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "CTRL_cog_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "CTRL_cog_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "CTRL_cog_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "CTRL_cog_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "CTRL_cog_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "CTRL_cog_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "CTRL_foot_r_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "CTRL_ship_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "CTRL_ship_translateY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "CTRL_ship_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn";
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "CTRL_ship_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "CTRL_ship_scaleZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "CTRL_ship_translateX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "CTRL_ship_translateZ_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "CTRL_ship_visibility_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "CTRL_cog_rotate_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "CTRL_cog_scaleX_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "CTRL_cog_scaleY_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "CTRL_foot_r_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "CTRL_head_Orient_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "CTRL_cog_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "CTRL_head_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "CTRL_head_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "CTRL_head_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "CTRL_ship_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "CTRL_cog_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "CTRL_cog_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "CTRL_cog_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "CTRL_head_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "CTRL_ship_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "CTRL_ship_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "CTRL_cog_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "CTRL_ship_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "CTRL_ship_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "CTRL_cog_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "CTRL_ship_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "CTRL_foot_l_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "CTRL_ship_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "CTRL_cog_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "CTRL_head_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "CTRL_head_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "CTRL_head_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "CTRL_ship_visibility_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "CTRL_ship_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn";
connectAttr "CTRL_ship_translateY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "CTRL_ship_scaleX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "CTRL_cog_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn";
connectAttr "CTRL_ship_scaleZ_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "CTRL_ship_scaleY_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "CTRL_ship_scaleX_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "CTRL_ship_scaleZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "CTRL_ship_translateX_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "CTRL_ship_visibility_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "CTRL_foot_l_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "CTRL_ship_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "CTRL_ship_translateZ_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "CTRL_ship_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "CTRL_ship_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "CTRL_ship_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "CTRL_ship_scaleY_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn";
connectAttr "CTRL_ship_translateX_Backwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "CTRL_ship_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "CTRL_ship_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "CTRL_ship_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "CTRL_ship_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "CTRL_cog_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "CTRL_cog_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "CTRL_ship_rotate_Backwards_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "CTRL_ship_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "CTRL_ship_translateY_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "CTRL_ship_translateZ_Backwards_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "CTRL_cog_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "CTRL_cog_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "CTRL_cog_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn"
		;
connectAttr "CTRL_cog_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "CTRL_head_Orient_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "CTRL_head_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "CTRL_head_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "CTRL_head_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "CTRL_head_translateY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "CTRL_head_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "CTRL_head_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "CTRL_head_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn"
		;
connectAttr "CTRL_head_scaleZ_Forwards.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn"
		;
connectAttr "CTRL_head_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn"
		;
connectAttr "CTRL_head_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn"
		;
connectAttr "CTRL_cog_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn"
		;
connectAttr "CTRL_ship_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn"
		;
connectAttr "CTRL_cog_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn"
		;
connectAttr "CTRL_cog_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn"
		;
connectAttr "CTRL_ship_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn"
		;
connectAttr "Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn";
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn"
		;
connectAttr "CTRL_cog_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Right_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn"
		;
connectAttr "CTRL_head_Orient_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn"
		;
connectAttr "CTRL_ship_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Right_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "CTRL_ship_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn"
		;
connectAttr "CTRL_ship_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "CTRL_arm_l_pole_visibility_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "CTRL_ship_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn"
		;
connectAttr "CTRL_ship_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Right_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn"
		;
connectAttr "CTRL_ship_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "CTRL_cog_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "CTRL_cog_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "CTRL_cog_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn"
		;
connectAttr "CTRL_cog_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn"
		;
connectAttr "CTRL_head_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn"
		;
connectAttr "CTRL_head_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn"
		;
connectAttr "CTRL_head_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "CTRL_head_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn"
		;
connectAttr "CTRL_head_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "CTRL_head_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "CTRL_cog_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn"
		;
connectAttr "CTRL_cog_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn"
		;
connectAttr "CTRL_arm_r_pole_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn"
		;
connectAttr "CTRL_arm_r_pole_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "CTRL_ship_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn"
		;
connectAttr "CTRL_ship_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "CTRL_cog_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn"
		;
connectAttr "CTRL_ship_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn"
		;
connectAttr "CTRL_ship_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn"
		;
connectAttr "CTRL_ship_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn"
		;
connectAttr "CTRL_arm_r_pole_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn"
		;
connectAttr "CTRL_ship_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn"
		;
connectAttr "CTRL_cog_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn"
		;
connectAttr "CTRL_ship_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn"
		;
connectAttr "CTRL_ship_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn"
		;
connectAttr "CTRL_arm_r_pole_translateY_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn"
		;
connectAttr "CTRL_cog_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn"
		;
connectAttr "CTRL_cog_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn"
		;
connectAttr "CTRL_cog_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn"
		;
connectAttr "CTRL_cog_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn"
		;
connectAttr "CTRL_head_Orient_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn"
		;
connectAttr "CTRL_head_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn"
		;
connectAttr "CTRL_head_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn"
		;
connectAttr "CTRL_head_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn"
		;
connectAttr "CTRL_head_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn"
		;
connectAttr "CTRL_head_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn"
		;
connectAttr "CTRL_head_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn"
		;
connectAttr "CTRL_head_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn"
		;
connectAttr "CTRL_arm_l_ik_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn"
		;
connectAttr "CTRL_head_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn"
		;
connectAttr "CTRL_arm_r_ik_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn"
		;
connectAttr "CTRL_arm_r_pole_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn"
		;
connectAttr "CTRL_arm_r_pole_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn"
		;
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn"
		;
connectAttr "CTRL_arm_r_pole_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Left_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Left_inputB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn"
		;
connectAttr "CTRL_foot_l_IK_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn"
		;
connectAttr "CTRL_foot_l_IK_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn"
		;
connectAttr "CTRL_foot_l_IK_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn"
		;
connectAttr "CTRL_foot_l_IK_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn"
		;
connectAttr "CTRL_foot_l_IK_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn"
		;
connectAttr "CTRL_cog_IKFK_Switch_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn"
		;
connectAttr "CTRL_cog_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn"
		;
connectAttr "CTRL_cog_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn"
		;
connectAttr "CTRL_cog_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn"
		;
connectAttr "CTRL_cog_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn"
		;
connectAttr "CTRL_cog_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn"
		;
connectAttr "CTRL_cog_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn"
		;
connectAttr "CTRL_cog_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn"
		;
connectAttr "CTRL_cog_visibility_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn"
		;
connectAttr "CTRL_head_Orient_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn"
		;
connectAttr "CTRL_head_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn"
		;
connectAttr "CTRL_head_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn"
		;
connectAttr "CTRL_head_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn"
		;
connectAttr "CTRL_head_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn"
		;
connectAttr "CTRL_head_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn"
		;
connectAttr "CTRL_head_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn"
		;
connectAttr "CTRL_head_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn"
		;
connectAttr "CTRL_head_visibility_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn"
		;
connectAttr "CTRL_leg_r_IKFK_IKFK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn"
		;
connectAttr "CTRL_leg_r_IKFK_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn"
		;
connectAttr "CTRL_leg_r_IKFK_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn"
		;
connectAttr "CTRL_leg_r_IKFK_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn"
		;
connectAttr "CTRL_leg_r_IKFK_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn"
		;
connectAttr "CTRL_arm_l_pole_rotate_Right_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleX_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleY_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn"
		;
connectAttr "CTRL_arm_l_pole_scaleZ_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn"
		;
connectAttr "CTRL_arm_l_pole_translateX_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn"
		;
connectAttr "CTRL_arm_l_pole_translateY_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn"
		;
connectAttr "CTRL_arm_l_pole_translateZ_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn"
		;
connectAttr "CTRL_arm_l_ik_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn"
		;
connectAttr "CTRL_arm_l_ik_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn"
		;
connectAttr "CTRL_arm_l_ik_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn"
		;
connectAttr "CTRL_arm_l_ik_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn"
		;
connectAttr "CTRL_arm_l_ik_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn"
		;
connectAttr "CTRL_root_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn"
		;
connectAttr "CTRL_root_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn"
		;
connectAttr "CTRL_root_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn"
		;
connectAttr "CTRL_root_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn"
		;
connectAttr "CTRL_root_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn"
		;
connectAttr "CTRL_root_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn"
		;
connectAttr "CTRL_root_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn"
		;
connectAttr "CTRL_root_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn"
		;
connectAttr "CTRL_root_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn"
		;
connectAttr "CTRL_root_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn"
		;
connectAttr "CTRL_chest_IK_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn"
		;
connectAttr "CTRL_chest_IK_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn"
		;
connectAttr "CTRL_chest_IK_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn"
		;
connectAttr "CTRL_chest_IK_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn"
		;
connectAttr "CTRL_chest_IK_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn"
		;
connectAttr "CTRL_chest_IK_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn"
		;
connectAttr "CTRL_chest_IK_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn"
		;
connectAttr "CTRL_chest_IK_visibility_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn"
		;
connectAttr "CTRL_arm_r_ik_rotate_Right_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleX_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleY_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn"
		;
connectAttr "CTRL_arm_r_ik_scaleZ_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn"
		;
connectAttr "CTRL_arm_r_ik_translateX_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn"
		;
connectAttr "CTRL_arm_r_ik_translateY_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn"
		;
connectAttr "CTRL_arm_r_ik_translateZ_Right_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn"
		;
connectAttr "CTRL_leg_r_pole_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn"
		;
connectAttr "CTRL_leg_r_pole_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn"
		;
connectAttr "CTRL_leg_r_pole_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn"
		;
connectAttr "CTRL_leg_r_pole_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn"
		;
connectAttr "CTRL_leg_r_pole_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn"
		;
connectAttr "CTRL_leg_r_pole_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn"
		;
connectAttr "CTRL_leg_r_pole_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn"
		;
connectAttr "CTRL_leg_r_pole_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn"
		;
connectAttr "CTRL_leg_r_pole_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn"
		;
connectAttr "CTRL_shoulder_l_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn"
		;
connectAttr "CTRL_shoulder_l_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn"
		;
connectAttr "CTRL_shoulder_l_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn"
		;
connectAttr "CTRL_shoulder_l_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn"
		;
connectAttr "CTRL_shoulder_l_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn"
		;
connectAttr "CTRL_shoulder_l_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn"
		;
connectAttr "CTRL_shoulder_l_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn"
		;
connectAttr "CTRL_shoulder_l_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn"
		;
connectAttr "CTRL_shoulder_l_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn"
		;
connectAttr "CTRL_shoulder_l_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn"
		;
connectAttr "CTRL_arm_l_IKFK_IKFK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn"
		;
connectAttr "CTRL_arm_l_IKFK_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn"
		;
connectAttr "CTRL_arm_l_IKFK_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn"
		;
connectAttr "CTRL_arm_l_IKFK_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn"
		;
connectAttr "CTRL_arm_l_IKFK_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn"
		;
connectAttr "CTRL_arm_l_IKFK_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn"
		;
connectAttr "CTRL_arm_l_IKFK_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn"
		;
connectAttr "CTRL_arm_l_IKFK_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn"
		;
connectAttr "CTRL_pelvis_IK_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn"
		;
connectAttr "CTRL_pelvis_IK_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn"
		;
connectAttr "CTRL_pelvis_IK_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn"
		;
connectAttr "CTRL_pelvis_IK_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn"
		;
connectAttr "CTRL_pelvis_IK_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn"
		;
connectAttr "CTRL_pelvis_IK_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn"
		;
connectAttr "CTRL_pelvis_IK_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn"
		;
connectAttr "CTRL_pelvis_IK_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn"
		;
connectAttr "CTRL_pelvis_IK_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn"
		;
connectAttr "CTRL_shoulder_r_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn"
		;
connectAttr "CTRL_shoulder_r_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn"
		;
connectAttr "CTRL_shoulder_r_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn"
		;
connectAttr "CTRL_shoulder_r_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn"
		;
connectAttr "CTRL_shoulder_r_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn"
		;
connectAttr "CTRL_shoulder_r_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn"
		;
connectAttr "CTRL_shoulder_r_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn"
		;
connectAttr "CTRL_shoulder_r_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn"
		;
connectAttr "CTRL_shoulder_r_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn"
		;
connectAttr "CTRL_shoulder_r_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn"
		;
connectAttr "CTRL_leg_l_pole_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn"
		;
connectAttr "CTRL_leg_l_pole_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn"
		;
connectAttr "CTRL_leg_l_pole_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn"
		;
connectAttr "CTRL_leg_l_pole_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn"
		;
connectAttr "CTRL_leg_l_pole_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn"
		;
connectAttr "CTRL_leg_l_pole_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn"
		;
connectAttr "CTRL_leg_l_pole_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn"
		;
connectAttr "CTRL_leg_l_pole_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn"
		;
connectAttr "CTRL_leg_l_pole_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn"
		;
connectAttr "CTRL_arm_r_pole_rotate_Left_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleX_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleY_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn"
		;
connectAttr "CTRL_arm_r_pole_scaleZ_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn"
		;
connectAttr "CTRL_arm_r_pole_translateX_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn"
		;
connectAttr "CTRL_arm_r_pole_translateY_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn"
		;
connectAttr "CTRL_arm_r_pole_translateZ_Left_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn"
		;
connectAttr "CTRL_spine_IK_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn"
		;
connectAttr "CTRL_spine_IK_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn"
		;
connectAttr "CTRL_spine_IK_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn"
		;
connectAttr "CTRL_spine_IK_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[874].dn"
		;
connectAttr "CTRL_spine_IK_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[875].dn"
		;
connectAttr "CTRL_spine_IK_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[876].dn"
		;
connectAttr "CTRL_spine_IK_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[877].dn"
		;
connectAttr "CTRL_spine_IK_visibility_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[878].dn"
		;
connectAttr "CTRL_leg_l_IKFK_IKFK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[879].dn"
		;
connectAttr "CTRL_leg_l_IKFK_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[880].dn"
		;
connectAttr "CTRL_leg_l_IKFK_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[881].dn"
		;
connectAttr "CTRL_leg_l_IKFK_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[882].dn"
		;
connectAttr "CTRL_leg_l_IKFK_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[883].dn"
		;
connectAttr "CTRL_arm_r_IKFK_IKFK_Switch.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[884].dn"
		;
connectAttr "CTRL_arm_r_IKFK_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[885].dn"
		;
connectAttr "CTRL_arm_r_IKFK_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[886].dn"
		;
connectAttr "CTRL_arm_r_IKFK_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[887].dn"
		;
connectAttr "CTRL_arm_r_IKFK_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[888].dn"
		;
connectAttr "CTRL_arm_r_IKFK_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[889].dn"
		;
connectAttr "CTRL_arm_r_IKFK_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[890].dn"
		;
connectAttr "CTRL_arm_r_IKFK_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[891].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[892].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[893].dn"
		;
connectAttr "CTRL_foot_r_IK_rotate_Forwards_inputAZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[894].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[895].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[896].dn"
		;
connectAttr "CTRL_foot_r_IK_scaleZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[897].dn"
		;
connectAttr "CTRL_foot_r_IK_translateX_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[898].dn"
		;
connectAttr "CTRL_foot_r_IK_translateY_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[899].dn"
		;
connectAttr "CTRL_foot_r_IK_translateZ_Forwards_inputA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[900].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Player_IdleAnimation.ma

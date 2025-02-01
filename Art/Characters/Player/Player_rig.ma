//Maya ASCII 2025ff03 scene
//Name: Player_rig.ma
//Last modified: Sat, Feb 01, 2025 03:36:41 PM
//Codeset: 1252
file -rdi 1 -ns ":" -rfn "Player_modelRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:05 PM|ICON|undef|INFO|undef|OBJN|26|INCL|/Characters/Player/SK_Orion.fbx(/Characters/Player/SK_Saucer.fbx(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaAscii" "/Characters/Player/Player_model.ma";
file -rdi 2 -ns ":" -rfn "SK_OrionRN" -op "fbx" -typ "FBX" "/Characters/Player/SK_Orion.fbx";
file -rdi 2 -ns ":" -rfn "SK_SaucerRN" -op "fbx" -typ "FBX" "/Characters/Player/SK_Saucer.fbx";
file -r -ns ":" -dr 1 -rfn "Player_modelRN" -op "VERS|2025ff03|UVER|undef|MADE|undef|CHNG|Sat, Feb 01, 2025 02:33:05 PM|ICON|undef|INFO|undef|OBJN|26|INCL|/Characters/Player/SK_Orion.fbx(/Characters/Player/SK_Saucer.fbx(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaAscii" "/Characters/Player/Player_model.ma";
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires "fbxmaya" "2020.3.6";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "8380CD40-47D5-39E6-7683-C28F59D6E918";
createNode transform -s -n "persp";
	rename -uid "A953003B-43A6-EEE1-2E92-C989BB1C046D";
	setAttr ".t" -type "double3" 174.39465037928852 390.6438930313987 417.01803241900535 ;
	setAttr ".r" -type "double3" -40.800000000000999 1462.7999999999906 -1.7250687783662652e-15 ;
	setAttr ".rpt" -type "double3" 3.9936231426595986e-14 1.8462368387895034e-14 1.1711651242766059e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "249EE9D8-45EE-8A27-28A2-B18CF54EA63A";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 597.56220979813452;
	setAttr ".ow" 150.89528225182917;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.89866000413894653 0.1844329833984375 0.011725544929504395 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EEDA1F5F-4DFE-5EB7-661E-3BB2055DD71C";
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7590548E-4AF5-CA7D-778C-B5BBB36F55CA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 60.922137736700563;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7BB6B121-4547-08C8-680A-AEA9C24CE835";
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "843F474A-432C-A49A-6FCE-4092E18E6289";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4CD8503C-4E86-7547-0FCE-1C876AB30C6A";
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7EF308A3-439E-EBD6-5CDA-0B8A46B46C7E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "skeleton";
	rename -uid "114233C2-4CE0-EC48-AF0D-B8A65A4E4D6F";
createNode joint -n "root_player" -p "skeleton";
	rename -uid "E33E0FF7-4D14-8D4D-C774-DC9F5DAC2C3D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 2;
createNode joint -n "pelvis" -p "root_player";
	rename -uid "642BB780-4AF7-B112-8C39-F99FAA1B5119";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 18.570463180542138 0 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999996647 0 2.5895457263264561e-07 0 0 1 0 0
		 -2.5895457263264561e-07 0 0.99999999999996647 0 -8.0261456012024314e-13 18.570463180542138 1.7698691599473456e-14 1;
	setAttr ".radi" 2;
createNode joint -n "spine" -p "pelvis";
	rename -uid "183FB37F-4FFE-D808-0D77-96A67B600D13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.9676570892502152 0.0001049709510318906 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999998630007 -4.3469015164684095e-08 -5.234311364056687e-06 0
		 4.3469015165338494e-08 0.999999999999999 1.1256500244902624e-14 0 5.2343113640566819e-06 -2.3878686030903215e-13 0.99999999998630107 0
		 5.7331781845291712e-10 26.538120269792337 0.00010497094977827056 1;
	setAttr ".radi" 2;
createNode joint -n "chest" -p "spine";
	rename -uid "B4977CA7-4EA3-DE35-D4A7-E9AB1A92B798";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2211001120978402e-07 11.121116638166761 0 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999998630007 -4.3469015164684095e-08 -5.234311364056687e-06 0
		 4.3469015165338494e-08 0.999999999999999 1.1256500244902624e-14 0 5.2343113640566819e-06 -2.3878686030903215e-13 0.99999999998630107 0
		 7.0610731438243481e-07 37.659236907959084 0.00010497094869513224 1;
	setAttr ".radi" 2;
createNode joint -n "head" -p "chest";
	rename -uid "9BE682D6-467A-E0D5-3ECD-33AB420518F2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.7086062882270442e-08 9.3842391967773384 0.088004575172680705 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.5917603611396923e-06 47.043476104736385 0.088109546120186441 1;
	setAttr ".radi" 2;
createNode joint -n "nose" -p "head";
	rename -uid "FD622186-4D54-2A79-D8E5-8B9DEE061EE5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.565578460694464 20.028613597309295 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.5917603611397431e-06 72.609054565426064 20.116723143435586 1;
	setAttr ".radi" 2;
createNode joint -n "nose_tip" -p "nose";
	rename -uid "8BF4B891-4931-48B2-D3BB-ED81A7DBB58B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.62939389632733e-06 8.2893180847167969 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.5917603611397641e-06 72.60906219481798 28.406041228152382 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "head_parentConstraint1" -p "head";
	rename -uid "EC8D9E59-433F-6A1B-436F-8491932D3DEB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_headW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3379485984516214e-14 4.9737991503207013e-14 
		7.1050705596764629e-10 ;
	setAttr ".tg[0].tor" -type "double3" 1.4463488157648902e-27 4.8531412986198693e-20 
		0 ;
	setAttr ".lr" -type "double3" -1.4463488157648893e-27 -0.0002999039498191822 2.4905911085982558e-06 ;
	setAttr ".rst" -type "double3" 6.3527471044072525e-22 -1.4210854715202004e-14 -1.3877787807814457e-17 ;
	setAttr ".rsrr" -type "double3" 0 -0.0002999039498191822 2.4905911085981864e-06 ;
	setAttr -k on ".w0";
createNode joint -n "upperarm_l" -p "chest";
	rename -uid "9314F76F-4173-0CF4-314E-3CB97DE0DAC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.529869482783401 3.3835229166083254 0.087907386769111778 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999950866625 3.1294702638998236e-05 -1.8190814510027319e-06 0
		 -3.1306000058254232e-05 0.99997832926867125 -0.0065833132214047499 0 1.6130192005340952e-06 0.0065833132751183087 0.99997832975706036 0
		 18.529869704893411 41.042759824567433 0.088012357720143708 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_l" -p "upperarm_l";
	rename -uid "8F108CEF-4611-16B5-9510-F4A43AAC8C5A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.559045405518484 0 9.4595601502349514e-05 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999950866625 3.1294702638998236e-05 -1.8190814510027319e-06 0
		 -3.1306000058254232e-05 0.99997832926867125 -0.0065833132214047499 0 1.6130192005340952e-06 0.0065833132751183087 0.99997832975706036 0
		 29.088914359021686 41.040044746393434 -0.37460892221801023 1;
	setAttr ".radi" 2;
createNode joint -n "hand_l" -p "lowerarm_l";
	rename -uid "35081292-48D7-B9BA-ECDB-0C85B371526B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.9534699909064646 -0.0048255956959260809 0.37459437495287462 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999999989 -4.7261791478829789e-20 1.4823076576950256e-21 0
		 4.6525600733657595e-20 0.99999999999999978 2.3879509480906336e-13 0 -1.0587911840678754e-21 -2.3879509480906336e-13 1.0000000000000002 0
		 37.042385101318359 41.037934228871507 -5.3644180296248612e-06 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "hand_l_parentConstraint1" -p "hand_l";
	rename -uid "1823A56F-426B-118D-64B0-F59B04DE9A94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "hand_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 
		8.4703294725430034e-22 ;
	setAttr ".tg[1].tot" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 
		8.4703294725430034e-22 ;
	setAttr ".lr" -type "double3" 0.93212134072260644 -0.52719700321030982 0.80796441861467394 ;
	setAttr ".rst" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 8.4703294725430034e-22 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "lowerarm_l_parentConstraint1" -p "lowerarm_l";
	rename -uid "23AA7217-44B5-1AC0-05AB-FF93725184AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "lowerarm_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 
		0 ;
	setAttr ".tg[1].tot" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 
		0 ;
	setAttr ".lr" -type "double3" 0 1.4030173234826608 0.018076072219747268 ;
	setAttr ".rst" -type "double3" 0 0 -0.46270669269255027 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "upperarm_l_parentConstraint1" -p "upperarm_l";
	rename -uid "4F60C91C-4E41-28E0-6FB3-76B4684B125B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "upperarm_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-15 1.3877787807814457e-17 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-15 1.3877787807814457e-17 ;
	setAttr ".lr" -type "double3" -0.93929101914403434 -0.88949409513384092 -0.8115347517317465 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.3877787807814457e-17 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "upperarm_r" -p "chest";
	rename -uid "BE37EC2B-4EEC-27EF-5CB9-05BDBC93052C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -18.529900222110012 3.3835630920408848 0.087907429048968116 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999949336371 -3.1776640138585574e-05 1.8755832181000492e-06 0
		 -3.1788467910032824e-05 -0.99997765647259118 0.0066847247570565446 0 1.663123217924528e-06 -0.0066847248132917356 -0.99997765697609708 0
		 -18.529900000000005 41.0428 0.088012400000000088 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_r" -p "upperarm_r";
	rename -uid "5A2ED11A-4070-0A25-B1E0-F9B59B43A239";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10.558999999999996 0 0.46261239999999998 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999949336371 -3.1776640138585574e-05 1.8755832181000492e-06 0
		 -3.1788467910032824e-05 -0.99997765647259118 0.0066847247570565446 0 1.663123217924528e-06 -0.0066847248132917356 -0.99997765697609708 0
		 -29.088899225268996 41.040043092953894 -0.3746094681232881 1;
	setAttr ".radi" 2;
createNode joint -n "hand_r" -p "lowerarm_r";
	rename -uid "B4CD9DDB-4E92-AFC0-DC9D-76AC3CD8E51F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.9535000000000071 0.0048999999999998229 -0.37459463558 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999949336371 -3.1776640138585574e-05 1.8755832181000492e-06 0
		 -3.1788467910032824e-05 -0.99997765647259118 0.0066847247570565446 0 1.663123217924528e-06 -0.0066847248132917356 -0.99997765697609708 0
		 -37.042400000000022 41.0379 -5.3644199998828261e-06 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "hand_r_parentConstraint1" -p "hand_r";
	rename -uid "06F8CCAD-4ABC-143A-8969-838F35357280";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "hand_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".lr" -type "double3" -7.1757823893278004e-06 -1.8079360196813454e-28 2.0701560751885966e-05 ;
	setAttr ".rst" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "lowerarm_r_parentConstraint1" -p "lowerarm_r";
	rename -uid "6A533F70-4CE5-494A-CC46-D8A7D915128E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "lowerarm_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "upperarm_r_parentConstraint1" -p "upperarm_r";
	rename -uid "87C05542-4222-A595-A500-4E8E47D1CD45";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "upperarm_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 1.3877787807814457e-17 ;
	setAttr ".tg[1].tot" -type "double3" -7.1054273576010019e-15 0 1.3877787807814457e-17 ;
	setAttr ".lr" -type "double3" -0.38300218316836526 0.0004073648659121301 0.0017974747669561883 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 0 1.3877787807814457e-17 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "chest_parentConstraint1" -p "chest";
	rename -uid "CA70B6F7-44C0-C6B7-8588-2AB1B318A39D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chest_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "chest_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0.00082627635789833676 -1.0690986514690152e-06 
		0.088108771270516473 ;
	setAttr ".tg[0].tor" -type "double3" -0.53729906304959896 0.00053967386297826172 
		-89.999999895685079 ;
	setAttr ".tg[1].tot" -type "double3" 0.00082627635789833676 -1.0690986514690152e-06 
		0.088108771270516306 ;
	setAttr ".tg[1].tor" -type "double3" -0.53729906304959896 0.00053967386297826172 
		-89.999999895685079 ;
	setAttr ".lr" -type "double3" -2.3600709659797256e-13 4.9696166897867462e-17 -7.7650260777928145e-19 ;
	setAttr ".rst" -type "double3" -3.1763735522036263e-22 0 4.3774662714102242e-17 ;
	setAttr ".rsrr" -type "double3" -1.6552148617688108e-32 9.9392333795734948e-17 -1.908332808878111e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "spine_parentConstraint1" -p "spine";
	rename -uid "676D1A3D-4372-BD7B-69AE-C5B5F5F57FA7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "spine_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -8.6668945797896413e-07 2.397889064768867e-07 
		-0.0001095272761003907 ;
	setAttr ".tg[0].tor" -type "double3" -179.54661910407475 -0.00029990311784650216 
		89.999998855628817 ;
	setAttr ".tg[1].tot" -type "double3" -8.6668945797896413e-07 2.3978890647688681e-07 
		-0.0001095272761003907 ;
	setAttr ".tg[1].tor" -type "double3" -179.54661910407475 -0.00029990311784650216 
		89.999998855628817 ;
	setAttr ".lr" -type "double3" -2.5266789232109983e-13 0.00031474095391664721 -2.4905911085642204e-06 ;
	setAttr ".rst" -type "double3" -6.6174449004242214e-23 0 9.1615083575025125e-18 ;
	setAttr ".rsrr" -type "double3" 8.6471330402289353e-15 4.8001230991295461e-31 -6.361109362927032e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "thigh_l" -p "pelvis";
	rename -uid "B991C32F-443B-1936-D8E3-7A98D668B808";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931978909179012 -1.0324192047120566 5.9604644481998868e-07 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999870481 0 1.6094633767357772e-06 0 0 1 0 0
		 -1.6094633767357772e-06 0 0.99999999999870481 0 8.5931978909179012 17.538043975830085 5.9604644481998868e-07 1;
	setAttr ".radi" 2;
createNode joint -n "calf_l" -p "thigh_l";
	rename -uid "40CEAC56-4C3C-3AC7-4136-91B88F93D55B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.5367432320971308e-07 -9.2177371978759783 0.25439546087959719 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999870481 0 1.6094633767357772e-06 0 0 1 0 0
		 -1.6094633767357772e-06 0 0.99999999999870481 0 8.593198435152047 8.3203067779541051 0.25439605692724737 1;
	setAttr ".radi" 2;
createNode joint -n "foot_l" -p "calf_l";
	rename -uid "D3FFE2D8-4C2F-FB85-7897-618FBB7ACAF1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.814328161631634e-08 -8.4945685714483226 -0.25439532083195038 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99999999999870481 0 1.6094633767357772e-06 0 0 1 0 0
		 -1.6094633767357772e-06 0 0.99999999999870481 0 8.5931989227352812 -0.17426179349421919 7.3609575229616198e-07 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "foot_l_parentConstraint1" -p "foot_l";
	rename -uid "9038637E-4851-467F-804B-B49B31098263";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "foot_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 2.7755575615628914e-17 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 2.7755575615628914e-17 0 ;
	setAttr ".rst" -type "double3" 0 2.7755575615628914e-17 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "calf_l_parentConstraint1" -p "calf_l";
	rename -uid "A287AB8C-4FA3-7433-F566-81879B6B9131";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "calf_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "calf_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "thigh_l_parentConstraint1" -p "thigh_l";
	rename -uid "41AE0C51-49CE-B67D-B235-189995212CF0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thigh_l_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "thigh_l_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -3.537486590982541e-11 0.00033899114472984922 -0.00013660645398015723 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "thigh_r" -p "pelvis";
	rename -uid "D77F2D63-4EC1-4830-7E0C-12AB38DA49E6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5932000000000013 -1.032463180542138 5.9604599999999999e-07 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 17.538000000000004 5.9604600000000031e-07 1;
	setAttr ".radi" 2;
createNode joint -n "calf_r" -p "thigh_r";
	rename -uid "20D682BC-45E5-ABBC-FDB0-6DB83CA6CAF4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4743925583194078e-15 -9.217690000000001 0.25439540395400001 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 8.3203099999999992 0.25439600000000001 1;
	setAttr ".radi" 2;
createNode joint -n "foot_r" -p "calf_r";
	rename -uid "4F7894E4-4779-3331-B678-50A6BBF905CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.5102810375396984e-16 -8.4945719999999998 -0.25439526390600004 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 -0.17426200000000058 7.3609399997565116e-07 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "foot_r_parentConstraint1" -p "foot_r";
	rename -uid "AFEBE4FE-4922-2315-0283-C0B3F776C90E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "foot_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 0 1.0587911840678754e-22 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 1.0587911840678754e-22 ;
	setAttr ".rst" -type "double3" 0 0 1.0587911840678754e-22 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "calf_r_parentConstraint1" -p "calf_r";
	rename -uid "60BF9FE4-416E-19BB-826C-8DA625B37608";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "calf_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "calf_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "thigh_r_parentConstraint1" -p "thigh_r";
	rename -uid "62C6C1AD-40FB-B189-41A0-A79F1B784AE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thigh_r_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "thigh_r_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 1.4837004097464691e-05 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "pelvis_parentConstraint1" -p "pelvis";
	rename -uid "0C8767B3-4042-3682-0D67-6F80B53B0FCC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pelvis_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "pelvis_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-13 -6.8346537686483237e-08 
		3.0994415408469036e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.0501182244085521e-05 -1.0501182018884936e-05 
		-90.000001228722937 ;
	setAttr ".tg[1].tot" -type "double3" -5.6843418860808015e-13 -6.8346537686483184e-08 
		3.0994415408469045e-06 ;
	setAttr ".tg[1].tor" -type "double3" 1.0501182244085521e-05 -1.0501182018884936e-05 
		-90.000001228722937 ;
	setAttr ".lr" -type "double3" 3.1818307221099413e-13 -1.4837004097464691e-05 2.6954974759362309e-12 ;
	setAttr ".rst" -type "double3" 3.9704669402545328e-23 0 4.2351647362715017e-22 ;
	setAttr ".rsrr" -type "double3" -3.0332133116374172e-21 -3.6614123802607538e-21 
		-1.2722218725853676e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "root_parentConstraint1" -p "root_player";
	rename -uid "C0865799-467A-9964-C4A3-1E8F0CB78E7A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "root_ship" -p "skeleton";
	rename -uid "C5AB767C-4F0D-5CB4-F679-CCB9F869BACC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.134181908115792 ;
	setAttr ".bps" -type "matrix" -0.0023419139524956112 0.99999725771575942 0 0 0.99999725771575942 0.0023419139524956112 1.224646799147353e-16 0
		 1.2246434408177358e-16 2.8680174258022797e-19 -1 0 0 0 0 1;
	setAttr ".radi" 1.1570897261738999;
createNode joint -n "ship" -p "root_ship";
	rename -uid "8466A462-49B4-593C-B818-0A9208BA9D13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.0023419139524956112 0.99999725771575942 0 0 0.99999725771575942 0.0023419139524956112 1.224646799147353e-16 0
		 1.2246434408177358e-16 2.8680174258022797e-19 -1 0 -0.018735311619968633 7.9999780617260754 6.3971784503734189e-34 1;
	setAttr ".radi" 1.1570897261738999;
createNode parentConstraint -n "root_parentConstraint2" -p "root_ship";
	rename -uid "D261C721-4876-9137-6BFC-D8808014B1B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_shipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0033596720287268527 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90.134181908115792 ;
	setAttr -k on ".w0";
createNode transform -n "model";
	rename -uid "55BAEEBE-41CB-FF7E-1759-1D9927E25DFD";
createNode transform -n "Orion_test" -p "model";
	rename -uid "B4CA360A-480D-BBB6-6455-46A65685DA7C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Orion_testShape" -p "Orion_test";
	rename -uid "3CCBCF5D-4ADF-5158-D1BB-46B291AB3498";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[9].gcl" -type "componentList" 1 "f[160:255]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43275547027587891 0.30563457310199738 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 1657 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.49239877 0.034987278 0.4206486
		 0.035990991 0.56414551 0.036028162 0.34812704 0.041086718 0.63665313 0.041165046
		 0.27489287 0.047125012 0.70984739 0.047253393 0.49239409 0.051970817 0.2021534 0.053062201
		 0.78249443 0.053239323 0.42068756 0.054359101 0.56409675 0.054394595 0.12735926 0.059446774
		 0.85715145 0.059621759 0.34875721 0.061748981 0.63600987 0.061820239 0.049763866
		 0.063628718 0.9345727 0.063709639 0.49239033 0.068140209 0.27675644 0.070256621 0.70796978
		 0.070363939 0.4219197 0.071348436 0.56285608 0.07138145 0.49238771 0.077586472 0.20435263
		 0.07804253 0.78028679 0.078184456 0.35085773 0.078790933 0.63390124 0.078854986 0.42250437
		 0.08074785 0.56226707 0.080779411 0.12973399 0.08742968 0.85479701 0.08755473 0.27888414
		 0.087854885 0.70583463 0.087945879 0.35196498 0.088318281 0.63279068 0.088378422
		 0.046981759 0.094420888 0.93738365 0.094427541 0.20635925 0.094584592 0.7782768 0.094706036
		 0.27974299 0.096462317 0.70497215 0.096545257 0.20749594 0.10454392 0.77713829 0.10465381
		 0.13189365 0.10575081 0.8526547 0.10584961 0.13318135 0.11599035 0.8513782 0.11607646
		 0.93909454 0.11613559 0.045295186 0.11618016 0.93754488 0.12782189 0.046863981 0.12788968
		 0.49237335 0.1369056 0.42341161 0.13837875 0.56133127 0.13840412 0.35406005 0.14337109
		 0.63067079 0.14340815 0.28156102 0.14755806 0.7031765 0.14757177 0.49237072 0.14967391
		 0.42376509 0.15166469 0.56097424 0.1516895 0.21264042 0.15491979 0.77197778 0.15500042
		 0.35477039 0.15677112 0.62996209 0.15680675 0.70249915 0.16111964 0.28223905 0.16112237
		 0.49236879 0.1620574 0.42400798 0.16383344 0.56072849 0.16385825 0.14168145 0.16624077
		 0.84292233 0.16633798 0.21433787 0.16788355 0.77026206 0.16795479 0.35522732 0.16856992
		 0.62950975 0.16860597 0.28284958 0.17306237 0.70192337 0.17309512 0.49236616 0.17520678
		 0.42431116 0.17653182 0.56042206 0.17655703 0.21606894 0.1796568 0.76857287 0.17978792
		 0.14489906 0.18020719 0.83973289 0.18031377 0.35583898 0.18091607 0.6288985 0.18095329
		 0.28347015 0.18522203 0.70129424 0.18524902 0.91981077 0.18752567 0.064778097 0.18770841
		 0.49236295 0.1914898 0.21778886 0.19199055 0.76684463 0.1920993 0.42483857 0.19216754
		 0.55988985 0.19219394 0.14794619 0.19242036 0.83659559 0.19247863 0.35683271 0.19607629
		 0.62790591 0.19611552 0.28467146 0.20007834 0.70008683 0.2000948 0.91586673 0.20350739
		 0.068784304 0.20370615 0.15131377 0.20497319 0.83325148 0.20503955 0.21998213 0.20667784
		 0.76464051 0.20676208 0.91032493 0.21698084 0.074448355 0.21708742 0.15544237 0.2201601
		 0.82914007 0.22024 0.90275234 0.22985761 0.082031943 0.22991428 0.34767735 0.23153391
		 0.34767735 0.23153391 0.52251142 0.23394015 0.52251142 0.23394015 0.32931817 0.23444149
		 0.32931817 0.23444149 0.36590388 0.23521161 0.36590388 0.23521161 0.50353783 0.23683527
		 0.50353783 0.23683527 0.54130012 0.23784995 0.54130012 0.23784995 0.31377545 0.24194095
		 0.31377545 0.24194095 0.38113943 0.24336347 0.38113943 0.24336347 0.091802575 0.24400318
		 0.89298797 0.24400318 0.48743737 0.24449554 0.48743737 0.24449554 0.55695987 0.24636069
		 0.55695987 0.24636069 0.34731689 0.24846429 0.34731689 0.24846429 0.33371747 0.24938032
		 0.33371747 0.24938032 0.36087078 0.24996439 0.36087078 0.24996439 0.52204305 0.25141379
		 0.52204305 0.25141379 0.50800055 0.25228792 0.50800055 0.25228792 0.53601712 0.25303736
		 0.53601712 0.25303736 0.30043295 0.25329655 0.30043295 0.25329655 0.32155204 0.25390241
		 0.32155204 0.25390241 0.37284911 0.25501084 0.37284911 0.25501084 0.39403266 0.25529578
		 0.39403266 0.25529578 0.47357774 0.25616696 0.47357774 0.25616696 0.49541223 0.2568984
		 0.49541223 0.2568984 0.54833657 0.25831243 0.54833657 0.25831243 0.57016361 0.25874946
		 0.57016361 0.25874946 0.34703684 0.26131058 0.34703684 0.26131058 0.3357603 0.26131091
		 0.3357603 0.26131091 0.35831025 0.26180714 0.35831025 0.26180714 0.32686329 0.26180932
		 0.32686329 0.26180932 0.36719063 0.26269624 0.36719063 0.26269624 0.31229973 0.26376626
		 0.31229973 0.26376626 0.51005232 0.26461512 0.51005232 0.26461512 0.52168947 0.26466712
		 0.52168947 0.26466712 0.50086319 0.26509085 0.50086319 0.26509085 0.53331125 0.26523477
		 0.53331125 0.26523477 0.38169214 0.26528901 0.38169214 0.26528901 0.54245907 0.2661989
		 0.54245907 0.2661989 0.48580533 0.26705226 0.48580533 0.26705226 0.55738264 0.26895842
		 0.55738264 0.26895842 0.32319698 0.27046597 0.32319698 0.27046597 0.28806686 0.27080858
		 0.28806686 0.27080858 0.37047979 0.27152541 0.37047979 0.27152541 0.33474997 0.27286229
		 0.33474997 0.27286229 0.34676796 0.27337542 0.34676796 0.27337542 0.4057101 0.27338168
		 0.4057101 0.27338168 0.35880631 0.27340603 0.35880631 0.27340603 0.49704248 0.27401802
		 0.49704248 0.27401802 0.46069032 0.2742385 0.46069032 0.2742385 0.54579836 0.27531278
		 0.54579836 0.27531278 0.07817398 0.27633834 0.07817398 0.27633834 0.50896347 0.27653337
		 0.50896347 0.27653337 0.18357578 0.2765646 0.18357578 0.2765646 0.52135879 0.27710849
		 0.52135879 0.27710849 0.53376561 0.27719149 0.53376561 0.27719149 0.58205491 0.27746281
		 0.58205491 0.27746281 0.30426449 0.27946702 0.30426449 0.27946702 0.090711042 0.28086618
		 0.090711087 0.28086618 0.17111099 0.28115839 0.17111099 0.28115839 0.38906601 0.28138891
		 0.38906601 0.28138891 0.47744101 0.2832633 0.47744101 0.2832633 0.31827876 0.28526509
		 0.31827876 0.28526509 0.5648672 0.28557906 0.5648672 0.28557906 0.37474149 0.28657916
		 0.37474149 0.28657916 0.3321079 0.2876949 0.3321079 0.2876949 0.10322536 0.28789037
		 0.10322536 0.28789037 0.15872806 0.28815734 0.15872806 0.28815734 0.36076874 0.28837064
		 0.36076874 0.28837064 0.34642014 0.28843632;
	setAttr ".uvst[0].uvsp[250:499]" 0.34642014 0.28843632 0.49191976 0.28929159
		 0.49191976 0.28929159 0.2800265 0.29029733 0.2800265 0.29029733 0.5501039 0.29082921
		 0.5501039 0.29082921 0.069419168 0.29154631 0.069419168 0.29154631 0.19269744 0.29163003
		 0.19269744 0.29163003 0.50619423 0.29183033 0.50619423 0.29183033 0.077109218 0.29228294
		 0.077109218 0.29228294 0.53572267 0.29261026 0.53572267 0.29261026 0.52094871 0.29263106
		 0.52094871 0.29263106 0.41298872 0.29331803 0.41298872 0.29331803 0.45227569 0.29442516
		 0.45227569 0.29442516 0.18913391 0.29571795 0.18913391 0.29571795 0.29826251 0.29632914
		 0.29826251 0.29632914 0.58938015 0.2980369 0.58938015 0.2980369 0.3943432 0.29860756
		 0.3943432 0.29860756 0.11590178 0.29911906 0.11590178 0.29911917 0.14614986 0.29933932
		 0.14614986 0.29933932 0.31448475 0.30062616 0.31448475 0.30062616 0.47120249 0.30070862
		 0.47120249 0.30070862 0.37783188 0.30217835 0.37783188 0.30217835 0.3300496 0.30325517
		 0.3300496 0.30325517 0.57016653 0.30331305 0.57016653 0.30331305 0.36207956 0.30405506
		 0.36207956 0.30405506 0.057430301 0.30423534 0.057430301 0.30423534 0.34603173 0.30441552
		 0.34603173 0.30441552 0.20492193 0.3045578 0.20492193 0.3045578 0.087894671 0.30485862
		 0.087894723 0.30485862 0.48798358 0.30515718 0.48798358 0.30515718 0.5532012 0.3068741
		 0.5532012 0.3068741 0.060462844 0.30727434 0.060462844 0.30727434 0.20168212 0.30778405
		 0.20168221 0.30778405 0.50405151 0.30787721 0.50405151 0.30787721 0.17799288 0.30834875
		 0.17799293 0.30834875 0.53702033 0.308745 0.53702033 0.308745 0.52051663 0.30908674
		 0.52051663 0.30908674 0.27424303 0.31163502 0.27424303 0.31163502 0.12574388 0.31290942
		 0.12574388 0.31290942 0.13650911 0.31309849 0.13650911 0.31309849 0.098241083 0.31500715
		 0.098241083 0.31500715 0.41794753 0.31511071 0.41794753 0.31511071 0.29344761 0.31598261
		 0.29344761 0.31598261 0.044715609 0.31619698 0.044715654 0.31619698 0.44622052 0.31663072
		 0.44622052 0.31663072 0.21787375 0.31686541 0.21787375 0.31686541 0.16770309 0.31859142
		 0.16770309 0.31859142 0.39826357 0.31863654 0.39826357 0.31863654 0.31106317 0.31926239
		 0.31106317 0.31926239 0.072828554 0.31966665 0.072828554 0.31966665 0.18944842 0.31999159
		 0.18944842 0.31999159 0.21356514 0.32029361 0.21356519 0.32029361 0.59426671 0.32049829
		 0.59426671 0.32049829 0.46626723 0.32106438 0.46626723 0.32106438 0.38036522 0.32111862
		 0.38036522 0.32111862 0.32803771 0.32153681 0.32803771 0.32153681 0.3631497 0.32249364
		 0.3631497 0.32249364 0.34555215 0.32279482 0.34555215 0.32279482 0.57399911 0.32386658
		 0.57399911 0.32386658 0.045435768 0.3238886 0.045435768 0.3238886 0.48447168 0.32441616
		 0.48447168 0.32441616 0.029488865 0.32491907 0.029488865 0.32491907 0.10727866 0.32590201
		 0.10727871 0.32590201 0.2327373 0.32629552 0.2327373 0.32629552 0.55571878 0.32630497
		 0.55571878 0.32630497 0.13119996 0.32633263 0.13119996 0.32633263 0.50199527 0.32672548
		 0.50199527 0.32672548 0.53809184 0.32767427 0.53809184 0.32767427 0.52002305 0.32799768
		 0.52002305 0.32799768 0.15853116 0.3292928 0.15853116 0.3292928 0.082815699 0.32967526
		 0.082815699 0.32967538 0.27068788 0.32984549 0.27068788 0.32984549 0.17953056 0.3299219
		 0.17953056 0.3299219 0.20091268 0.33131042 0.20091268 0.33131042 0.29031152 0.33330441
		 0.29031152 0.33330441 0.42079338 0.33381736 0.42079338 0.33381736 0.057988312 0.334701
		 0.057988312 0.334701 0.22749189 0.3352285 0.22749189 0.3352285 0.44277555 0.33555019
		 0.44277555 0.33555019 0.30857101 0.33610904 0.30857101 0.33610904 0.400628 0.33638716
		 0.400628 0.33638716 0.11760841 0.3372182 0.11760841 0.3372182 0.033989746 0.33746585
		 0.033989746 0.33746585 0.32648531 0.3381747 0.32648531 0.3381747 0.38191825 0.33821118
		 0.38191825 0.33821118 0.46303201 0.33899969 0.46303201 0.33899969 0.34507337 0.33922535
		 0.34507337 0.33922535 0.36376345 0.33927894 0.36376345 0.33927894 0.092583559 0.33946404
		 0.092583559 0.33946404 0.59673446 0.33960897 0.59673446 0.33960897 0.16986297 0.33964422
		 0.16986297 0.33964431 0.14822741 0.34047917 0.14822747 0.34047917 0.19077201 0.34156433
		 0.19077201 0.34156433 0.48194015 0.34182763 0.48194015 0.34182763 0.57633483 0.34198868
		 0.57633483 0.34198868 0.55727512 0.34377134 0.55727512 0.34377134 0.50045103 0.34386057
		 0.50045103 0.34386057 0.53873211 0.34484071 0.53873211 0.34484071 0.51958609 0.34491056
		 0.51958609 0.34491056 0.068114415 0.34506908 0.068114415 0.34506908 0.267775 0.3481158
		 0.267775 0.3481158 0.21971756 0.34819829 0.21971756 0.34819829 0.040987018 0.34999514
		 0.040987018 0.34999514 0.10342921 0.35033303 0.10342921 0.35033303 0.15914059 0.35042462
		 0.15914059 0.35042471 0.18018551 0.3507753 0.18018551 0.3507753 0.28762364 0.35111016
		 0.28762364 0.35111016 0.13467312 0.35262537 0.13467318 0.35262537 0.42290777 0.35270381
		 0.42290777 0.35270381 0.30638558 0.35363144 0.30638558 0.35363144 0.078989968 0.35413009
		 0.078989968 0.35413009 0.43988252 0.35439312 0.43988252 0.35439312 0.40241915 0.35472059
		 0.40241915 0.35472059 0.32504201 0.35555285 0.32504201 0.35555285 0.38310391 0.35616434
		 0.38310391 0.35616434 0.34450278 0.35669017 0.34450278 0.35669017 0.36408871 0.3568815
		 0.36408871 0.3568815 0.4603067 0.35742283 0.4603067 0.35742283 0.59859943 0.35858732
		 0.59859943 0.35858732 0.47975075 0.35996157 0.47975075 0.35996157 0.57803667 0.36049974
		 0.57803667 0.36049974 0.20835391 0.36089635 0.20835391 0.36089635 0.16903937 0.36123699
		 0.16903952 0.36123699 0.49906617 0.36187041 0.49906617 0.36187041 0.55851334 0.36199749
		 0.55851334 0.36199749 0.052188564 0.36269572 0.052188564 0.36269572 0.51913786 0.3628037;
	setAttr ".uvst[0].uvsp[500:749]" 0.51913786 0.3628037 0.53919518 0.36287141
		 0.53919518 0.36287141 0.14606267 0.36347169 0.14606267 0.36347169 0.090284012 0.36448398
		 0.090284012 0.36448407 0.26538628 0.36463994 0.26538628 0.36463994 0.11975792 0.3666968
		 0.11975792 0.3666968 0.28537869 0.36747819 0.28537869 0.36747819 0.9697271 0.36938193
		 0.65261954 0.36938199 0.96973938 0.3695949 0.65265483 0.36960974 0.67283398 0.36961743
		 0.9495315 0.36962476 0.69227678 0.36979702 0.93010885 0.36981174 0.42448443 0.36983716
		 0.42448443 0.36983716 0.94952661 0.36983874 0.67284685 0.36985365 0.71172088 0.36989459
		 0.91068453 0.36991331 0.30449778 0.36994004 0.30449778 0.36994004 0.73193747 0.3699747
		 0.89048702 0.36999461 0.9300856 0.37002578 0.6922701 0.37004009 0.75215071 0.37007973
		 0.87028998 0.3700991 0.91064352 0.37012842 0.71169466 0.3701438 0.77158898 0.37016025
		 0.81123334 0.37016258 0.79102618 0.3701711 0.85086399 0.37017563 0.83143634 0.37017968
		 0.89042896 0.37021044 0.73189193 0.37022653 0.87021786 0.3703163 0.75208825 0.37033221
		 0.85078138 0.37039682 0.8111406 0.37039813 0.83134598 0.37040713 0.77151304 0.37040988
		 0.79093927 0.3704147 0.19463843 0.37097967 0.19463849 0.37097967 0.4374277 0.37140667
		 0.4374277 0.37140667 0.40376922 0.3716687 0.40376922 0.3716687 0.32371843 0.37190032
		 0.32371843 0.37190032 0.065957703 0.37256727 0.065957703 0.37256727 0.38394231 0.37293673
		 0.38394231 0.37293673 0.34389699 0.37315363 0.34389699 0.37315363 0.36424381 0.37348473
		 0.36424381 0.37348473 0.45798475 0.37437278 0.45798475 0.37437278 0.15675543 0.37479135
		 0.15675548 0.37479135 0.60012466 0.37575275 0.60012466 0.37575275 0.47785777 0.37696546
		 0.47785777 0.37696546 0.18075201 0.37723863 0.18075205 0.37723863 0.57938069 0.3775391
		 0.57938069 0.3775391 0.07936921 0.37805223 0.07936921 0.37805223 0.13124095 0.3782047
		 0.13124095 0.3782047 0.49788892 0.37879556 0.49788892 0.37879556 0.55945581 0.37888253
		 0.55945581 0.37888253 0.51873553 0.37973523 0.51873553 0.37973523 0.53955156 0.37973523
		 0.53955156 0.37973523 0.1056544 0.38158169 0.1056544 0.3815819 0.19479972 0.38265264
		 0.19479972 0.38265264 0.066123642 0.38333306 0.066123746 0.38333306 0.14256258 0.38955054
		 0.14256258 0.38955054 0.20940083 0.39190799 0.20940083 0.39190799 0.17157865 0.39215901
		 0.17157865 0.39215901 0.052343924 0.39294428 0.052343924 0.39294428 0.11647639 0.39299467
		 0.11647639 0.39299467 0.093479067 0.39511007 0.093479112 0.39511007 0.97007638 0.39771792
		 0.65228063 0.39774445 0.94978446 0.39790699 0.67259008 0.39792833 0.65230399 0.39794055
		 0.97009021 0.39795503 0.93031675 0.39806834 0.69207793 0.39807788 0.67258984 0.39813706
		 0.94978184 0.39814809 0.91085953 0.39817968 0.71155137 0.39818564 0.89061683 0.39827916
		 0.73181003 0.39828107 0.69206089 0.39829132 0.93029362 0.39830562 0.75206453 0.39836451
		 0.87037605 0.39836785 0.71151763 0.3984113 0.91081768 0.39842066 0.7715252 0.39842537
		 0.85092431 0.39842692 0.79098386 0.39844921 0.83147353 0.39844969 0.81123024 0.39845392
		 0.73176068 0.39851066 0.8905583 0.39851549 0.87030452 0.39859882 0.75200099 0.39859983
		 0.85084516 0.39865926 0.77145165 0.3986595 0.79090124 0.39868274 0.83138782 0.39868292
		 0.81114298 0.39868733 0.18222934 0.40222862 0.18222938 0.40222862 0.12777288 0.40371159
		 0.12777299 0.40371168 0.22036591 0.40532446 0.22036591 0.40532446 0.082270622 0.40538985
		 0.082270622 0.40538985 0.041134972 0.4054983 0.041134972 0.40549842 0.15873221 0.40575504
		 0.15873225 0.40575504 0.10340121 0.4060446 0.10340121 0.4060446 0.19225067 0.41114452
		 0.19225067 0.41114452 0.071549557 0.4145388 0.071549557 0.4145388 0.11419233 0.41596654
		 0.11419233 0.41596654 0.1691772 0.41622218 0.16917725 0.41622239 0.092597812 0.41674376
		 0.092597812 0.41674376 0.034109432 0.41786611 0.034109432 0.4178662 0.22763006 0.41847035
		 0.22763017 0.41847035 0.14510882 0.41857216 0.14510882 0.41857216 0.97025329 0.41936323
		 0.65210956 0.41940561 0.94995552 0.41951677 0.67242497 0.4195542 0.65211755 0.41958794
		 0.97027308 0.41963008 0.93046075 0.41965124 0.69193619 0.41968337 0.6724208 0.41974422
		 0.91097742 0.41976675 0.94994682 0.41978154 0.71143788 0.41979244 0.89071161 0.41986361
		 0.69191474 0.41988155 0.73172075 0.41988453 0.93043143 0.41991273 0.87044913 0.41994253
		 0.75199836 0.41995725 0.71139997 0.41999546 0.85097533 0.41999778 0.77148432 0.42000762
		 0.91092926 0.42002293 0.8314994 0.42003009 0.79096681 0.42003462 0.81123406 0.42004213
		 0.73166567 0.42009357 0.89064747 0.42011699 0.75192755 0.42017362 0.87037069 0.42019019
		 0.77140027 0.42022946 0.85088569 0.42023978 0.79087502 0.42026177 0.83140451 0.4202666
		 0.81113881 0.42027393 0.20227706 0.42066643 0.20227706 0.42066643 0.061284859 0.42480642
		 0.061284859 0.42480659 0.17852467 0.42558992 0.17852472 0.42558992 0.082854643 0.42639023
		 0.082854643 0.42639044 0.10370655 0.42709017 0.10370661 0.42709017 0.13016877 0.42771333
		 0.13016877 0.42771354 0.23008865 0.42876998 0.23008871 0.42876998 0.9703241 0.42899212
		 0.65203983 0.42904326 0.95002335 0.42913833 0.67235988 0.42918417 0.65204543 0.42921934
		 0.15515539 0.42924443 0.15515545 0.42924464 0.93052107 0.42926648 0.97034258 0.42927304
		 0.69187897 0.42930719 0.6723519 0.42936668 0.91102833 0.42937812 0.71138972 0.42941281
		 0.95001215 0.42941359 0.89075321 0.42947397 0.69185466 0.4294965 0.731682 0.42950323
		 0.93048996 0.42953768 0.87048119 0.42955241 0.75196952 0.42957285 0.85099679 0.429607
		 0.71134859 0.4296079 0.77146548 0.42962167 0.83151084 0.4296405 0.91097838 0.42964455
		 0.79095834 0.42964706 0.81123561 0.42965415 0.73162371 0.42970446 0.89068633 0.42973551;
	setAttr ".uvst[0].uvsp[750:999]" 0.75189549 0.42978218 0.87039942 0.42980555
		 0.77137858 0.42983827 0.85090405 0.42985293 0.79086345 0.42987153 0.83141285 0.42987838
		 0.81113726 0.42988524 0.029488865 0.4303211 0.029488865 0.4303211 0.21460858 0.43071777
		 0.21460868 0.43071777 0.18812209 0.4352079 0.18812215 0.43520802 0.048630264 0.4359203
		 0.048630264 0.4359203 0.072903164 0.43628693 0.072903164 0.43628693 0.094473049 0.43765682
		 0.094473049 0.43765682 0.21557829 0.43821591 0.21557835 0.43821591 0.16404973 0.4392848
		 0.16404977 0.4392848 0.044534598 0.43947503 0.044534598 0.43947503 0.12387989 0.44158638
		 0.12387995 0.44158646 0.13555248 0.4417727 0.13555248 0.44177288 0.20019987 0.44731182
		 0.20019998 0.44731182 0.08419726 0.44777542 0.08419726 0.44777542 0.060669359 0.44849437
		 0.060669359 0.44849446 0.97046095 0.44885066 0.6519075 0.44892088 0.95015222 0.4489837
		 0.67223603 0.44904879 0.65190881 0.44908169 0.93063873 0.44910327 0.97046953 0.44915643
		 0.69176787 0.44916263 0.91113025 0.44920865 0.67222172 0.44921425 0.71129495 0.4492611
		 0.95013756 0.44928268 0.89083749 0.44930366 0.1735501 0.44933155 0.1735502 0.44933176
		 0.69173712 0.44933334 0.73160595 0.44934681 0.87054604 0.44937959 0.93060178 0.44939497
		 0.75191277 0.44941488 0.85104233 0.44943479 0.71124607 0.44944075 0.77142864 0.44945887
		 0.83153671 0.44947115 0.79094189 0.44948366 0.81124061 0.44948819 0.91107339 0.44949439
		 0.73153955 0.4495348 0.89076191 0.44957879 0.75183064 0.4496105 0.87045544 0.44964555
		 0.77133352 0.44966355 0.85094053 0.44968989 0.79083759 0.44970003 0.83142871 0.44971457
		 0.81113178 0.44971755 0.20318796 0.45030621 0.203188 0.45030633 0.057436075 0.45172721
		 0.057436179 0.45172721 0.11376709 0.45528021 0.11376709 0.45528021 0.14477648 0.45639369
		 0.14477648 0.45639369 0.073153473 0.46040428 0.073153473 0.46040437 0.18357502 0.46168464
		 0.18357502 0.46168482 0.19107112 0.46267065 0.19107112 0.46267065 0.069715984 0.46470553
		 0.069715984 0.46470553 0.10104483 0.46661651 0.10104483 0.46661663 0.15816934 0.46738759
		 0.15816939 0.46738759 0.97060519 0.47155228 0.65176922 0.47164527 0.95029098 0.47167948
		 0.67210358 0.4717671 0.651766 0.47178558 0.93076664 0.4717932 0.69164747 0.47187534
		 0.97060519 0.47188213 0.91124421 0.47189811 0.67208213 0.47191337 0.71119088 0.47197405
		 0.89093202 0.47199324 0.95026952 0.47200337 0.6916092 0.47202733 0.73152322 0.47205558
		 0.87062007 0.47206607 0.93072206 0.47211364 0.75185245 0.47211829 0.85109681 0.47212365
		 0.71113354 0.47212949 0.77138954 0.4721587 0.83156973 0.47216371 0.79092544 0.47218505
		 0.81124979 0.47218516 0.91117543 0.47220734 0.73144585 0.47222403 0.89084369 0.47228745
		 0.75175792 0.47229579 0.87051529 0.47234955 0.77128023 0.47235146 0.79080516 0.47239032
		 0.8509782 0.47239032 0.81112236 0.47241142 0.83144325 0.47241142 0.088058308 0.47436294
		 0.088058308 0.47436303 0.17129977 0.47467989 0.17129982 0.47468001 0.18159395 0.4771606
		 0.18159406 0.4771606 0.079114094 0.47958919 0.079114094 0.47958928 0.1861386 0.49123678
		 0.22023696 0.49376008 0.15211271 0.49459884 0.57973075 0.49965459 0.24604687 0.49997783
		 0.12646379 0.50145012 0.61130935 0.50447708 0.54827136 0.50520176 0.32127076 0.51010114
		 0.32127088 0.5101012 0.41352731 0.51036787 0.41352731 0.51036787 0.33280629 0.51487088
		 0.33280641 0.51487088 0.40193397 0.51496196 0.40193397 0.51496196 0.57995087 0.51880133
		 0.3162154 0.51896322 0.31621546 0.51896322 0.41855681 0.51923263 0.41855681 0.51923263
		 0.63701254 0.51971048 0.34271288 0.52082026 0.34271288 0.52082026 0.39201653 0.5208869
		 0.39201653 0.5208869 0.52292502 0.52102202 0.32368088 0.52133822 0.32368082 0.52133828
		 0.41104579 0.52144235 0.41104579 0.52144241 0.60852331 0.5220058 0.55145967 0.52266186
		 0.18656163 0.52559501 0.25182357 0.52588898 0.21892734 0.526649 0.30950725 0.52679193
		 0.30950731 0.52679193 0.4252432 0.52707219 0.4252432 0.52707219 0.15423173 0.52744567
		 0.12132673 0.52749574 0.62840736 0.52851588 0.53173035 0.52962726 0.31317711 0.53047234
		 0.31317699 0.5304724 0.42154437 0.53060126 0.42154437 0.53060126 0.35375911 0.53075314
		 0.35375905 0.5307532 0.38094592 0.53079045 0.38094592 0.53079045 0.33311927 0.53116763
		 0.33311939 0.53116763 0.40158546 0.53125578 0.40158552 0.53125578 0.30165917 0.53347743
		 0.30165911 0.53347749 0.433065 0.53378272 0.43306506 0.53378272 0.29278249 0.53850722
		 0.2927826 0.53850722 0.44191426 0.53885341 0.44191432 0.53885341 0.32314807 0.54047215
		 0.32314801 0.54047221 0.41153926 0.54058778 0.41153926 0.54058778 0.34294528 0.54064459
		 0.34294522 0.54064465 0.39173412 0.54071003 0.39173418 0.54071003 0.30401266 0.5409497
		 0.3040126 0.54094976 0.43069679 0.54112315 0.43069679 0.54112315 0.36263853 0.54262811
		 0.36263847 0.54262817 0.37203491 0.54264128 0.37203497 0.54264128 0.65283293 0.54505682
		 0.5802601 0.54570502 0.50769162 0.54672533 0.61040121 0.54694086 0.5501554 0.54763347
		 0.7959035 0.54809403 0.63537282 0.54824507 0.52522039 0.54951143 0.29751891 0.55005646
		 0.29751879 0.55005652 0.33288759 0.55023992 0.33288759 0.55023998 0.43715364 0.55026495
		 0.43715364 0.55026501 0.40176874 0.55033398 0.40176874 0.55033404 0.31381464 0.55041659
		 0.3138147 0.55041659 0.42084974 0.55056614 0.42084986 0.55056614 0.78468376 0.55058205
		 0.78468382 0.55058205 0.35147327 0.55083036 0.35147321 0.55083042 0.383178 0.55087399
		 0.383178 0.55087399 0.36732203 0.55331141 0.36732197 0.55331147 0.76673454 0.55684185
		 0.7667346 0.55684185 0.18696567 0.5584107 0.21964213 0.55879366 0.15430856 0.55959809
		 0.34227747 0.5596571 0.34227753 0.5596571 0.39235014 0.55972707 0.39235014 0.55972713;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.3034395 0.55998015 0.30343968 0.55998015
		 0.25365511 0.56002659 0.43119603 0.56016886 0.43119609 0.56016886 0.32326323 0.56026983
		 0.32326311 0.56026995 0.35921872 0.56031525 0.35921872 0.56031525 0.37540573 0.5603379
		 0.37540573 0.5603379 0.4113667 0.56039488 0.4113667 0.56039494 0.12033625 0.56166792
		 0.86049861 0.56246471 0.86049867 0.56246471 0.35090655 0.56831104 0.35090655 0.5683111
		 0.3836956 0.56835759 0.3836956 0.56835759 0.36730051 0.56856 0.36730051 0.56856012
		 0.33342433 0.56882715 0.33342433 0.56882727 0.40117818 0.56892401 0.40117818 0.56892407
		 0.31334054 0.57105494 0.31334049 0.57105505 0.42125779 0.57121342 0.42125773 0.57121348
		 0.35903651 0.57646453 0.35903645 0.57646459 0.37554204 0.57648814 0.37554204 0.5764882
		 0.65837997 0.57651621 0.34288675 0.57660007 0.34288663 0.57660013 0.39169216 0.57667017
		 0.39169216 0.57667017 0.63923329 0.57673633 0.61232966 0.57704556 0.58062464 0.5774101
		 0.54891956 0.57777458 0.52201587 0.57808387 0.50286919 0.57830399 0.32518977 0.57996869
		 0.32518971 0.57996875 0.4093802 0.58009112 0.4093802 0.58009124 0.33585948 0.58468306
		 0.33585942 0.58468318 0.35110807 0.58470571 0.35110813 0.58470571 0.36727732 0.58472919
		 0.36727732 0.58472931 0.38344693 0.58475244 0.38344693 0.5847525 0.39869612 0.58477396
		 0.39869612 0.58477402 0.78901434 0.5882107 0.7890144 0.5882107 0.32517576 0.58936518
		 0.3251757 0.58936524 0.79748797 0.58944392 0.79748803 0.58944392 0.40936691 0.58948624
		 0.40936697 0.5894863 0.21745551 0.58988923 0.18735361 0.58991617 0.15726012 0.59063041
		 0.34286255 0.59278709 0.34286249 0.59278715 0.39166957 0.59285814 0.39166957 0.5928582
		 0.35901237 0.59297013 0.35901237 0.59297019 0.37551844 0.59299421 0.37551844 0.59299421
		 0.90842593 0.59371209 0.24927747 0.5938006 0.77574414 0.5942657 0.77574414 0.5942657
		 0.12554407 0.59532416 0.31329918 0.59824181 0.31329912 0.59824187 0.42122018 0.59839535
		 0.42122018 0.59839541 0.84296459 0.60001814 0.84296453 0.60001826 0.33337629 0.60053194
		 0.33337617 0.60053205 0.40113443 0.600631 0.40113443 0.600631 0.36725378 0.6008988
		 0.36725378 0.60089886 0.35085827 0.60110009 0.35085821 0.60110021 0.38364911 0.60114843
		 0.38364911 0.60114849 0.63602883 0.60530877 0.52587634 0.60657513 0.61109382 0.60718668
		 0.55084801 0.60787928 0.6535576 0.60809481 0.32318759 0.60905868 0.32318753 0.60905874
		 0.58098912 0.60911512 0.35914767 0.60912073 0.35914767 0.60912073 0.37533569 0.60914481
		 0.37533569 0.60914487 0.41130108 0.6091882 0.41130108 0.60918826 0.30336374 0.60928369
		 0.30336362 0.6092838 0.43112898 0.60946417 0.43112904 0.60946417 0.34220278 0.60972965
		 0.34220272 0.60972977 0.5084163 0.60976338 0.39227998 0.60980427 0.39227998 0.60980439
		 0.36723125 0.61614799 0.36723119 0.61614811 0.35137409 0.61858428 0.35137415 0.61858428
		 0.38308108 0.6186322 0.38308108 0.61863226 0.31370485 0.6188826 0.31370479 0.61888272
		 0.21563169 0.61896348 0.24046662 0.61896384 0.42076141 0.61904234 0.42076153 0.6190424
		 0.33278245 0.61912107 0.33278245 0.61912113 0.29741013 0.61918396 0.29741007 0.61918408
		 0.18771408 0.6191954 0.40167451 0.61922598 0.40167451 0.6192261 0.43706203 0.61937863
		 0.43706214 0.61937869 0.15979922 0.61965096 0.13497183 0.62026274 0.7994802 0.62202835
		 0.79948026 0.62202835 0.87758088 0.62426662 0.877581 0.62426662 0.80809098 0.62436885
		 0.80809093 0.62436891 0.82969218 0.62469101 0.82969201 0.62469107 0.62951881 0.62519288
		 0.5328418 0.62630427 0.36251748 0.62681854 0.36251748 0.62681866 0.3719126 0.62683237
		 0.37191254 0.62683243 0.30386406 0.62831461 0.30386418 0.62831461 0.4305926 0.62850702
		 0.43059266 0.62850714 0.34281564 0.62874806 0.34281558 0.62874818 0.39160895 0.62882352
		 0.39160895 0.62882364 0.32300806 0.62886333 0.323008 0.62886345 0.4114235 0.62900323
		 0.41142356 0.62900329 0.2927826 0.63076395 0.29278249 0.63076407 0.44164783 0.63084829
		 0.44164783 0.63084841 0.78976792 0.63158214 0.78976798 0.63158214 0.60978955 0.63215828
		 0.55272597 0.63281429 0.63832414 0.63379812 0.52423662 0.63510966 0.3016327 0.63581908
		 0.30163258 0.6358192 0.43279624 0.63589346 0.4327963 0.63589358 0.58129835 0.63601875
		 0.33295941 0.63820267 0.33295935 0.63820279 0.40143561 0.63831234 0.40143573 0.63831246
		 0.35360551 0.63867038 0.35360551 0.63867044 0.38078743 0.63871133 0.38078737 0.63871145
		 0.31299269 0.63883948 0.31299257 0.6388396 0.42141539 0.63902402 0.42141545 0.63902414
		 0.30945289 0.64252818 0.30945277 0.64252824 0.42496407 0.64258301 0.42496407 0.64258313
		 0.24917999 0.64418489 0.12688206 0.64569056 0.94939637 0.64700198 0.21757184 0.64778644
		 0.32348806 0.64802229 0.32348794 0.64802241 0.18806981 0.64808613 0.41087186 0.64817083
		 0.41087186 0.64817095 0.15856929 0.64851284 0.34253222 0.64857662 0.34253222 0.64857674
		 0.39182746 0.64865214 0.39182746 0.6486522 0.61297786 0.64961839 0.54993987 0.65034306
		 0.31614071 0.65036929 0.31614071 0.65036941 0.41825199 0.65039587 0.41825199 0.65039599
		 0.84805685 0.65084779 0.84805685 0.65084785 0.33261114 0.65450555 0.33261108 0.65450567
		 0.40172482 0.65461385 0.40172482 0.65461397 0.58151847 0.65516555 0.41318113 0.65923274
		 0.41318125 0.65923285 0.32118589 0.65923321 0.32118583 0.65923333 0.8121345 0.65945381
		 0.8121345 0.65945393 0.82321441 0.66160226 0.82321441 0.66160226 0.90799797 0.66643071
		 0.90799797 0.66643071 0.80311853 0.66910982 0.80311853 0.66910982 0.21948299 0.67797619
		 0.2527166 0.67800909 0.18843994 0.67814916 0.15740201 0.67874062 0.12417929 0.67959172
		 0.58777177 0.68343556 0.58777177 0.68343586 0.53778917 0.68403947 0.53778917 0.68403989;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.63767999 0.68622702 0.63767999 0.68622738
		 0.48944411 0.68735278 0.48944405 0.68735331 0.86683029 0.68911946 0.86683029 0.68911952
		 0.44099903 0.69052607 0.44099897 0.69052649 0.38971287 0.69106358 0.38971287 0.69106406
		 0.68583369 0.69165361 0.68583363 0.69165403 0.73409325 0.69694465 0.73409325 0.69694501
		 0.96910179 0.69770586 0.78530675 0.69972682 0.78530669 0.69972712 0.58728039 0.70587242
		 0.58728039 0.70587301 0.5388028 0.70677328 0.5388028 0.7067737 0.82076901 0.70701742
		 0.82076889 0.7070176 0.18880612 0.70788944 0.21769691 0.70791453 0.15992469 0.70862591
		 0.63567203 0.70889461 0.63567203 0.70889515 0.92880046 0.70893478 0.92880052 0.7089349
		 0.83670139 0.70949465 0.83670133 0.70949477 0.4910816 0.71032703 0.4910816 0.71032751
		 0.809771 0.71149909 0.809771 0.71149921 0.24910584 0.7118113 0.12862119 0.7132948
		 0.4421083 0.71387094 0.44210824 0.71387148 0.68319184 0.71453404 0.68319184 0.71453464
		 0.38793159 0.71590549 0.38793147 0.71590596 0.73196316 0.72021872 0.73196316 0.72021902
		 0.2982918 0.72101194 0.33247724 0.7216146 0.079676718 0.72370362 0.78599888 0.72462273
		 0.78599882 0.72462332 0.045516409 0.7251476 0.35857505 0.72655696 0.26473522 0.7267741
		 0.11336495 0.72863775 0.58674943 0.73011589 0.58674943 0.73011637 0.019548299 0.73073119
		 0.53947949 0.73105603 0.53947961 0.73105639 0.63393295 0.73312443 0.63393289 0.73312491
		 0.88193882 0.7341857 0.88193882 0.73418576 0.49323437 0.7349658 0.49323431 0.73496622
		 0.18914771 0.73563462 0.21548909 0.73572457 0.16281652 0.73637295 0.24000701 0.73699868
		 0.13833739 0.73825043 0.67996252 0.73905516 0.67996269 0.73905551 0.44470066 0.7399857
		 0.44470066 0.73998606 0.3887468 0.74536532 0.3887468 0.74536574 0.72823006 0.74619478
		 0.72823006 0.74619526 0.36560068 0.75217319 0.78389466 0.75401872 0.78389466 0.7540192
		 0.33280507 0.75448132 0.30082127 0.75482178 0.013155345 0.75651246 0.077980429 0.75756538
		 0.045998015 0.75801259 0.27022675 0.75817794 0.58611244 0.75920427 0.58611244 0.75920451
		 0.10864824 0.76016742 0.54094696 0.7604183 0.54094696 0.76041859 0.24220544 0.76149237
		 0.18947195 0.76197028 0.21568927 0.7621516 0.63118148 0.76239437 0.63118142 0.76239485
		 0.97631222 0.76266581 0.97631222 0.76266587 0.1367427 0.76279098 0.16326706 0.76279706
		 0.92970413 0.76292032 0.92970407 0.76292038 0.49686486 0.76512617 0.49686486 0.76512659
		 0.8121317 0.76869762 0.8121317 0.76869774 0.67501515 0.76902765 0.67501527 0.76902801
		 0.89410537 0.76937938 0.89410532 0.7693795 0.84270686 0.7696079 0.84270692 0.7696079
		 0.82413185 0.77104658 0.82413185 0.7710467 0.85864383 0.7723785 0.85864377 0.77237862
		 0.44950804 0.77267569 0.44950798 0.77267617 0.72199619 0.77864301 0.72199613 0.77864337
		 0.39344642 0.78342146 0.39344639 0.78342193 0.36908549 0.78618467 0.33480099 0.7866829
		 0.30225825 0.78715611 0.27130604 0.78760594 0.2430934 0.78801405 0.21661317 0.78839111
		 0.18980163 0.78874683 0.16298944 0.78905147 0.136508 0.78932631 0.10829385 0.78961295
		 0.077339932 0.78992534 0.044795446 0.79025358 0.010509003 0.79059947 0.77753365 0.79183269
		 0.77753365 0.79183322 0.58537638 0.79281467 0.58537638 0.79281509 0.54349899 0.79401785
		 0.54349899 0.79401827 0.62716097 0.79584998 0.62716097 0.79585034 0.50230747 0.79965436
		 0.50230742 0.79965472 0.8789928 0.80095994 0.8789928 0.80096006 0.92105263 0.80182976
		 0.92105258 0.80182993 0.66806638 0.80328423 0.66806632 0.80328476 0.81248796 0.80685413
		 0.81248802 0.80685431 0.83692956 0.80692607 0.83692956 0.80692613 0.45820129 0.81083357
		 0.45820132 0.81083393 0.82266551 0.81317067 0.82266557 0.81317085 0.96926349 0.81392455
		 0.96926337 0.81392473 0.24296889 0.8145588 0.21641317 0.81467873 0.1638366 0.81532615
		 0.19013183 0.81556535 0.13728598 0.81586009 0.71164083 0.81638354 0.71164066 0.81638408
		 0.27108163 0.81705415 0.33374187 0.81892902 0.10924321 0.81904674 0.30176178 0.81951857
		 0.3665905 0.82028282 0.078633055 0.8222658 0.046648167 0.82246369 0.01384275 0.82462597
		 0.58465022 0.82597703 0.58465022 0.82597739 0.54704881 0.82697397 0.54704881 0.82697451
		 0.40583491 0.82838047 0.40583488 0.82838082 0.62217194 0.82861918 0.62217194 0.8286196
		 0.85435408 0.83069301 0.85435414 0.83069307 0.5099538 0.83327585 0.50995368 0.83327633
		 0.76318878 0.8362062 0.76318878 0.83620667 0.65895557 0.83653891 0.6589554 0.83653939
		 0.2414951 0.83910513 0.13936374 0.84036261 0.21699579 0.84123063 0.16390789 0.84188432
		 0.19045803 0.84206128 0.36031237 0.84609222 0.471275 0.84812766 0.47127497 0.84812826
		 0.26650819 0.84860331 0.020754473 0.85027283 0.11459202 0.85047382 0.80313057 0.85091251
		 0.80313057 0.85091257 0.33436969 0.8517909 0.69694692 0.85306978 0.69694692 0.85307032
		 0.30021682 0.85338682 0.046829574 0.855331 0.58399278 0.85599834 0.58399272 0.85599887
		 0.081011385 0.85608584 0.82550091 0.85618901 0.82550091 0.85618913 0.55086178 0.85632437
		 0.55086178 0.85632473 0.61707771 0.85777438 0.61707771 0.85777485 0.81286371 0.85901934
		 0.81286365 0.85901946 0.51885659 0.86216611 0.51885659 0.86216646 0.8447327 0.8631568
		 0.8447327 0.86315691 0.2516568 0.86385524 0.64879638 0.86501163 0.64879638 0.86501205
		 0.12981448 0.86535537 0.89093417 0.86675632 0.89093417 0.86675644 0.22024044 0.86926949
		 0.16135459 0.86999446 0.19080551 0.8702814 0.42616495 0.87257254 0.42616495 0.87257296
		 0.74094361 0.87946588 0.74094361 0.87946647 0.48785856 0.87974387 0.48785853 0.87974435
		 0.52677792 0.88264334 0.52677792 0.88264364 0.55142206 0.88388419 0.55142194 0.88388461
		 0.67899525 0.88392955 0.67899519 0.88393009 0.58336467 0.88467729 0.58336467 0.88467771;
	setAttr ".uvst[0].uvsp[1500:1656]" 0.63998628 0.88512254 0.63998634 0.88512295
		 0.6153115 0.88528341 0.6153115 0.88528371 0.79226011 0.88563347 0.79226011 0.88563347
		 0.31467843 0.88639426 0.32432204 0.88652104 0.30503482 0.88652122 0.33345607 0.8868531
		 0.29590082 0.88685334 0.83328873 0.89207792 0.83328879 0.89207804 0.81566459 0.89242494
		 0.81566447 0.89242518 0.93624604 0.8928268 0.93624604 0.89282697 0.80388737 0.89454073
		 0.80388731 0.89454085 0.87024844 0.89606261 0.87024838 0.89606267 0.25733998 0.89742309
		 0.12495947 0.89905304 0.22352532 0.89987385 0.15882424 0.90067071 0.19118665 0.90123761
		 0.31467855 0.90150505 0.30556151 0.90196848 0.32379562 0.90196848 0.3330428 0.9030394
		 0.29631436 0.90303969 0.51030976 0.90340137 0.51030976 0.90340203 0.65552992 0.90658164
		 0.65552986 0.90658218 0.45337301 0.9092598 0.45337296 0.90926027 0.31467864 0.91019589
		 0.32277858 0.91044533 0.30657867 0.91044539 0.33126286 0.91201174 0.29809436 0.91201198
		 0.36027798 0.91367441 0.26907918 0.91367501 0.34409162 0.91408789 0.28526562 0.91408831
		 0.71215564 0.91492707 0.71215564 0.91492736 0.54353201 0.91584808 0.54353201 0.91584849
		 0.33511922 0.91586804 0.29423803 0.91586816 0.7742185 0.91623873 0.77421856 0.91623873
		 0.6217947 0.91756201 0.6217947 0.91756237 0.31467864 0.91794038 0.32190061 0.91809481
		 0.30745667 0.91809487 0.32849899 0.91863203 0.30085832 0.91863221 0.58259577 0.91979033
		 0.58259577 0.91979092 0.36061022 0.92280853 0.26874715 0.922809 0.34516275 0.92333513
		 0.28419462 0.92333555 0.33668581 0.92435229 0.29267156 0.92435265 0.3146787 0.92515242
		 0.32903636 0.92523038 0.30032101 0.92523056 0.32182479 0.92530626 0.30753258 0.92530638
		 0.90714842 0.92991447 0.90714842 0.92991459 0.256659 0.93160516 0.22379294 0.9318583
		 0.36073714 0.9324522 0.34562629 0.93245226 0.32919088 0.93245238 0.33693531 0.93245238
		 0.31467873 0.93245244 0.32197875 0.93245244 0.30737871 0.9324525 0.28373119 0.93245262
		 0.29242215 0.93245262 0.30016658 0.93245262 0.26862034 0.9324528 0.15934414 0.93265188
		 0.12648179 0.93320811 0.19158737 0.93378204 0.79605007 0.93405163 0.79604995 0.93405181
		 0.8256802 0.93671256 0.82568014 0.93671268 0.48650989 0.93688905 0.48650983 0.93688947
		 0.8104558 0.93830705 0.8104558 0.93830705 0.30753267 0.93959862 0.32182488 0.93959862
		 0.32903647 0.93967432 0.3003211 0.93967456 0.31467876 0.93975246 0.3366859 0.94055235
		 0.29267168 0.94055259 0.67784101 0.94107896 0.67784095 0.9410795 0.34516284 0.94156945
		 0.28419477 0.94156981 0.36061037 0.94209588 0.26874724 0.94209647 0.32849914 0.94627267
		 0.30085847 0.94627285 0.32190078 0.94681007 0.30745685 0.94681019 0.31467882 0.94696462
		 0.7484076 0.9474535 0.74840772 0.9474535 0.33511943 0.94903672 0.29423824 0.94903702
		 0.34409186 0.95081663 0.28526586 0.95081705 0.36027828 0.95122987 0.26907948 0.95123047
		 0.33126315 0.95289296 0.2980946 0.9528932 0.32277885 0.95445949 0.30657887 0.95445967
		 0.31467891 0.95470899 0.25165784 0.95769036 0.52903605 0.95823675 0.52903599 0.95823735
		 0.13212368 0.95916206 0.63442099 0.96054471 0.63442099 0.96054518 0.33304316 0.96186531
		 0.29631469 0.96186554 0.323796 0.96293634 0.30556187 0.96293652 0.31467897 0.96339989
		 0.22602716 0.96465796 0.1579182 0.9654966 0.19200948 0.96806675 0.58153158 0.96838504
		 0.58153152 0.96838546 0.33345664 0.97805154 0.29590139 0.97805184 0.32432264 0.97838372
		 0.30503541 0.9783839 0.31467903 0.97851062 0.78064156 0.97876048 0.82789487 0.98281848
		 0.82789481 0.9828186 0.80010313 0.98525548 0.80010319 0.98525548;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 1370 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -14.637264 57.255138 16.667131 -14.637264 
		86.825363 16.371426 -14.637264 56.959431 -12.903097 -14.637259 86.529655 -13.198804 
		14.637261 57.255131 16.667133 14.637259 86.825363 16.371426 14.637261 56.959419 -12.903096 
		14.637264 86.529655 -13.198801 -16.772335 54.862919 -6.868422 -17.844809 53.867332 
		1.9144179 -16.772333 55.038361 10.675591 -16.772333 63.289806 18.763638 -17.844809 
		72.072647 19.759226 -16.772335 80.833817 18.588194 -16.772335 88.921867 10.33675 
		-17.844809 89.91745 1.5539112 -16.772335 88.746422 -7.2072616 -16.772333 80.49498 
		-15.295308 -17.84481 71.712143 -16.290894 -16.772335 62.950966 -15.119865 8.6842861 
		54.781219 -15.038167 4.6348922e-07 53.687084 -16.110641 -8.6842861 54.781227 -15.038168 
		-8.6842861 88.664734 -15.377007 -1.6358435e-07 89.737198 -16.471149 8.6842861 88.664719 
		-15.377008 16.772333 80.494987 -15.29531 17.844809 71.712143 -16.290897 16.772333 
		62.950974 -15.119867 16.772333 55.038368 10.675591 17.844809 53.867336 1.9144186 
		16.772333 54.862923 -6.8684211 16.772333 88.746422 -7.2072601 17.844809 89.917458 
		1.553911 16.772333 88.921867 10.33675 16.772333 80.833824 18.588194 17.844809 72.072647 
		19.759222 16.772331 63.289814 18.763636 -8.6842861 55.120068 18.845337 -3.5443253e-07 
		54.047592 19.939478 8.6842852 55.12006 18.845337 8.6842842 89.003563 18.506496 -2.7263823e-08 
		90.09771 19.578972 -8.6842861 89.003571 18.506496 -21.340834 62.637047 11.176491 
		-22.887667 71.990906 11.585204 -21.340834 81.334717 10.989511 -22.887665 62.041351 
		1.8326763 -24.576145 71.892395 1.7341646 -22.887665 81.743439 1.6356524 -21.340834 
		62.450066 -7.5211835 -22.887665 71.793884 -8.1168756 -21.34083 81.147743 -7.7081633 
		-9.2553492 62.327995 -19.728741 -9.7525291 71.661201 -21.384691 -9.2553482 81.025665 
		-19.915724 7.3612887e-07 61.810165 -21.286177 2.7263962e-07 71.64415 -23.090225 -1.6358435e-07 
		81.512245 -21.483202 9.2553482 62.327988 -19.728743 9.7525291 71.661201 -21.384691 
		9.2553492 81.025665 -19.91572 21.34083 62.450066 -7.5211821 22.887667 71.793884 -8.1168737 
		21.340834 81.147743 -7.7081618 22.887663 62.041359 1.832677 24.576145 71.892395 1.7341648 
		22.887665 81.743431 1.6356523 21.340832 62.637047 11.176492 22.887665 71.990906 11.585204 
		21.340828 81.334724 10.989511 9.2553463 62.759125 23.38405 9.7525272 72.123581 24.85302 
		9.2553473 81.456795 23.197071 -7.3612887e-07 62.272549 24.951529 -2.7263894e-07 72.14064 
		26.558554 1.6358435e-07 81.974625 24.754505 -9.2553501 62.759129 23.38405 -9.7525291 
		72.123589 24.853016 -9.2553501 81.456802 23.197069 -9.2553501 50.242512 -7.3991055 
		-2.1811199e-07 48.67503 -7.8856831 9.2553482 50.242504 -7.3991055 -9.7525291 48.77354 
		1.9653572 0 47.068005 1.9824126 9.7525282 48.77354 1.9653567 -9.2553492 50.429489 
		11.298569 3.5443253e-07 48.872055 11.816396 9.2553492 50.429489 11.298569 9.2553482 
		93.355301 -7.8302402 3.2717008e-07 94.912735 -8.3480673 -9.2553501 93.355309 -7.8302398 
		9.7525291 95.011246 1.5029727 -2.7263823e-08 96.716789 1.4859171 -9.7525291 95.011246 
		1.502972 9.2553482 93.542282 10.867434 -4.9075163e-07 95.109764 11.354012 -9.2553492 
		93.542282 10.867435 -7.6785269 65.213806 35.431229 -7.6785269 80.725906 35.276108 
		7.6784468 65.213806 35.431229 7.6784453 80.725899 35.276108 -8.7985554 63.92247 19.443104 
		-9.3611584 63.436623 27.692175 -8.7985535 64.050926 32.288155 -8.7985535 68.379501 
		36.531025 -9.3611584 72.986847 37.053291 -8.7985554 77.582825 36.438988 -8.7985535 
		81.825699 32.110405 -9.3611584 82.347969 27.503057 -8.7985554 81.69725 19.265354 
		8.7984715 64.050926 32.288158 9.3610754 63.436619 27.692181 8.7984724 63.92247 19.443104 
		8.7984715 81.697235 19.265354 9.3610764 82.347969 27.503065 8.7984734 81.825691 32.110409 
		8.7984724 77.582825 36.438992 9.3610764 72.986847 37.053299 8.7984715 68.379501 36.531025 
		-4.5556865 64.093781 36.573883 -4.1158066e-05 63.531178 37.14785 4.5556035 64.093781 
		36.573883 4.5556035 81.868546 36.39613 -4.0986441e-05 82.442528 36.958733 -4.5556865 
		81.868561 36.396133 -11.19512 68.037079 32.550922 -12.006566 72.94397 32.765327 -11.19512 
		77.845596 32.452839 -12.006565 67.724586 27.649298 -12.892317 72.892296 27.59762 
		-12.006565 78.060005 27.545942 -11.19512 67.90535 19.378719 -12.006565 72.809395 
		19.308302 -11.195119 77.713867 19.280632 11.195036 67.90535 19.378719 12.006482 72.809395 
		19.308302 11.195036 77.713867 19.280632 12.006481 67.724579 27.649298 12.892233 72.892288 
		27.59762 12.006481 78.059998 27.545942 11.195035 68.037071 32.550922 12.006482 72.94397 
		32.765327 11.195036 77.845589 32.452839 4.855175 68.101112 38.954823 5.1159878 73.013573 
		39.725422 4.8551745 77.909637 38.856735 -4.1358304e-05 67.845863 39.7771 -4.111516e-05 
		73.022522 40.620121 -4.0886327e-05 78.181274 39.673744 -4.8552566 68.10112 38.954823 
		-5.1160703 73.013573 39.725422 -4.8552566 77.909637 38.856735 -4.855257 61.501453 
		19.442759 -4.1086554e-05 60.681595 19.429581 4.855175 61.50145 19.44276 -5.1160698 
		60.764488 27.718899 -4.097214e-05 59.869793 27.727846 5.1159878 60.764488 27.718899 
		-4.8552575 61.633179 32.614964 -4.0786206e-05 60.816166 32.886608 4.8551745 61.633171 
		32.614964 4.855175 84.117767 19.216595 -4.0800511e-05 84.937202 19.187019 -4.855257 
		84.117767 19.216591 5.1159892 85.020096 27.476339;
	setAttr ".pt[166:331]" -4.0986441e-05 85.914795 27.467392 -5.1160693 85.020096 
		27.476339 4.8551741 84.249496 32.388798 -4.1229585e-05 85.071777 32.644047 -4.8552575 
		84.249496 32.388798 3.6818051e-07 36.49456 -16.827932 1.7389323e-07 39.188107 -18.911398 
		6.0997159e-08 40.842571 -20.555536 8.1658115 36.516663 -14.61781 9.171463 39.11731 
		-16.43012 10.002027 40.765396 -17.849762 14.143594 36.577045 -8.5796423 15.885765 
		38.923874 -9.650939 17.324879 40.554531 -10.456947 16.331617 36.920288 -0.54409331 
		18.331854 38.859165 -0.51006514 20.10984 40.316719 -0.40167344 14.143594 36.26403 
		7.5128188 15.885252 37.832542 8.5263023 17.30549 39.345997 9.578764 8.1658106 35.466629 
		13.394572 9.1718426 36.656189 15.102967 9.9893675 38.048527 16.789791 -1.7102602e-07 
		35.123398 15.542476 -9.1427154e-08 36.161167 17.501068 -4.885548e-08 37.489067 19.420029 
		-8.1658068 35.466621 13.394572 -9.1718426 36.656185 15.102968 -9.9893675 38.048523 
		16.789793 -14.143596 36.26403 7.5128164 -15.885253 37.832546 8.5263023 -17.30549 
		39.346001 9.578764 -16.331617 36.920292 -0.54409337 -18.331856 38.859165 -0.51006514 
		-20.109842 40.316719 -0.40167344 -14.143597 36.577045 -8.5796404 -15.885768 38.923878 
		-9.650939 -17.324883 40.554535 -10.456947 -8.1658068 36.516659 -14.617809 -9.1714611 
		39.11731 -16.430122 -10.002027 40.765392 -17.849762 -1.1221232e-08 48.624046 -18.704039 
		-2.1258016e-07 53.30048 -15.332658 -3.552077e-08 50.400242 -19.021614 -7.3784946e-08 
		51.915894 -18.492968 -1.5003052e-07 52.935913 -17.203646 7.3159494 53.320282 -13.35255 
		9.0072784 48.648426 -16.266163 8.2432833 52.958225 -14.972552 8.8863316 51.939941 
		-16.087828 9.1554861 50.425014 -16.543623 12.671594 53.374374 -7.9428105 15.601061 
		48.715031 -9.6057796 14.277781 53.01918 -8.877099 15.391576 52.005657 -9.5168772 
		15.857767 50.492722 -9.7736464 14.637579 52.971935 -0.54832774 18.434563 48.647713 
		-0.50106847 16.486565 53.102455 -0.55055076 17.772663 52.095421 -0.54078412 18.310972 
		50.585205 -0.52568167 12.672069 53.092354 7.7313809 15.600833 48.330948 9.1030493 
		14.277829 52.688313 8.6193857 15.391576 51.641029 9.1933746 15.857765 50.108711 9.3692284 
		7.3153343 52.417896 13.362155 9.0069866 47.398315 15.847539 8.2430658 51.891762 14.951886 
		8.8863316 50.748894 15.977733 9.1554852 49.167171 16.295059 1.9391797e-07 52.109333 
		15.396575 -1.1214198e-08 46.977482 18.292522 1.1757251e-07 51.525513 17.23772 4.1005471e-08 
		50.339619 18.427664 1.5498131e-08 48.738258 18.800165 -7.3153329 52.417904 13.362155 
		-9.0069857 47.398315 15.847542 -8.2430658 51.891766 14.951886 -8.8863316 50.748894 
		15.977734 -9.1554861 49.167171 16.295061 -12.67207 53.092361 7.7313814 -15.600833 
		48.330944 9.1030493 -14.277831 52.688313 8.6193867 -15.391576 51.641026 9.1933746 
		-15.857765 50.108704 9.3692293 -14.63758 52.971947 -0.54832786 -18.434563 48.647717 
		-0.50106847 -16.486567 53.102448 -0.5505507 -17.772663 52.095413 -0.54078406 -18.310976 
		50.585205 -0.52568167 -12.671597 53.374386 -7.9428101 -15.601062 48.715027 -9.6057796 
		-14.277782 53.019188 -8.8771 -15.391577 52.00565 -9.5168772 -15.857765 50.492722 
		-9.7736464 -7.3159504 53.320286 -13.35255 -9.0072784 48.648422 -16.266167 -8.2432823 
		52.958225 -14.97255 -8.8863306 51.939945 -16.087831 -9.1554861 50.425022 -16.543627 
		1.1271879e-08 42.183357 -20.51585 9.9947958 42.106285 -17.812235 17.31284 41.895695 
		-10.425043 20.129265 41.539051 -0.34428057 17.289701 40.675941 9.7525139 9.9801483 
		39.369453 16.999023 -2.0389834e-08 38.79985 19.639545 -9.9801464 39.36945 16.999023 
		-17.289701 40.675945 9.7525139 -20.129267 41.539055 -0.3442806 -17.31284 41.895691 
		-10.425043 -9.9947948 42.106281 -17.812235 23.17767 36.110397 -5.2451229 23.177668 
		36.208069 4.5219264 23.177671 45.877449 -5.342793 23.177666 45.975121 4.4242554 28.798023 
		36.110397 -5.245122 28.798023 36.208069 4.5219264 28.798023 45.975117 4.4242558 28.798029 
		45.877445 -5.3427925 30.069956 36.110397 -5.2451224 32.928528 36.110397 -5.2451224 
		26.17548 36.208069 4.5219269 36.665161 36.233948 4.4955244 36.665161 36.136799 -5.2192416 
		36.665165 45.851566 -5.3163905 36.665161 45.948708 4.3983774 30.069956 45.975117 
		4.4242558 32.928528 45.975117 4.4242563 30.069962 45.877449 -5.342793 32.928532 45.877445 
		-5.342793 23.177666 43.776005 5.8198757 23.177666 41.109909 6.3044133 23.177668 38.43465 
		5.8732891 23.17767 47.273071 -3.1436815 23.17767 47.757603 -0.47758237 23.177668 
		47.326485 2.1976733 23.17767 38.309513 -6.6407423 23.17767 40.975609 -7.1252799 23.177671 
		43.650864 -6.6941562 23.177668 34.812447 2.322814 23.177668 34.327915 -0.34328547 
		23.177668 34.759037 -3.0185416 26.175482 36.110397 -5.2451239 32.928524 36.208069 
		4.5219274 30.069952 36.208069 4.5219264 26.175482 45.975121 4.4242554 26.175486 45.877449 
		-5.342793 28.798023 34.812447 2.3228142 28.798025 34.327911 -0.34328493 28.798025 
		34.759033 -3.0185406 28.798025 38.309509 -6.6407418 28.798029 40.975609 -7.1252789 
		28.798029 43.650864 -6.6941562 28.798023 43.776005 5.8198757 28.798023 41.109909 
		6.3044133 28.798023 38.43465 5.8732901 28.798029 47.273071 -3.1436806 28.798025 47.757603 
		-0.47758171 28.798025 47.326477 2.197674 36.66856 43.761276 5.786902 36.671959 41.10955 
		6.2690873 36.66856 38.448711 5.8400278 36.668564 38.324234 -6.6077671 36.671963 40.975964 
		-7.0899529;
	setAttr ".pt[332:497]" 36.668564 43.636799 -6.660893 26.175486 47.273071 -3.1436808 
		26.175482 47.757603 -0.47758216 26.175482 47.326485 2.1976733 36.668564 47.240093 
		-3.1289537 36.671963 47.722271 -0.47722808 36.66856 47.293217 2.1836102 26.17548 
		43.776005 5.8198757 26.17548 41.109909 6.3044128 26.17548 38.43465 5.8732901 26.175482 
		38.309509 -6.6407433 26.175482 40.975609 -7.1252799 26.175486 43.650864 -6.6941562 
		36.66856 34.845421 2.3080881 36.671963 34.363235 -0.34363738 36.668564 34.792294 
		-3.0044754 26.17548 34.812447 2.3228147 26.175482 34.327911 -0.3432852 26.175482 
		34.759033 -3.0185409 32.928524 34.812447 2.3228147 30.069952 34.812447 2.3228147 
		32.928528 34.327911 -0.34328446 30.069956 34.327911 -0.34328467 32.928532 34.759033 
		-3.0185394 30.069958 34.759033 -3.0185401 32.928528 38.309509 -6.6407423 30.069956 
		38.309509 -6.6407423 32.928532 40.975609 -7.1252789 30.069958 40.975609 -7.1252789 
		32.928532 43.650864 -6.6941571 30.069958 43.650864 -6.6941552 32.928524 43.776005 
		5.8198762 30.069952 43.776005 5.8198757 32.928528 41.109909 6.3044133 30.069956 41.109909 
		6.3044133 32.928524 38.43465 5.8732901 30.069952 38.43465 5.8732901 32.928532 47.273064 
		-3.1436799 30.069958 47.273071 -3.1436801 32.928532 47.757599 -0.47758162 30.069958 
		47.757603 -0.47758171 32.928528 47.326477 2.1976748 30.069956 47.326485 2.197674 
		22.496878 35.452766 5.6647568 14.192263 35.45277 5.6647558 22.496878 35.33239 -6.3726187 
		14.192265 35.332394 -6.3726172 22.341961 47.191936 5.6169806 14.347177 47.191936 
		5.6169786 22.341965 47.070168 -6.5596132 14.347179 47.070171 -6.5596137 22.925043 
		34.030266 -3.9528539 23.217934 33.620296 -0.33620754 22.925043 34.102512 3.271517 
		13.764096 34.102512 3.2715158 13.471208 33.620296 -0.33620909 13.764098 34.030266 
		-3.9528551 22.990326 43.779068 -7.5143008 23.217936 40.968533 -7.8328919 22.992786 
		38.195236 -7.4622097 13.696356 38.19524 -7.4622121 13.471209 40.968533 -7.8328948 
		13.698816 43.779072 -7.5143018 22.925043 48.055248 3.1319892 23.217937 48.465221 
		-0.48465756 22.925043 47.983006 -4.092382 13.764096 47.983006 -4.0923834 13.471209 
		48.465221 -0.48465905 13.764098 48.055248 3.1319873 22.992785 38.33683 6.6968803 
		23.217936 41.116985 7.0120277 22.990326 43.920586 6.6372948 13.698813 43.920589 6.6372924 
		13.471206 41.116985 7.0120258 13.696353 38.336834 6.696878 20.759739 34.593231 6.6681499 
		18.344568 34.178768 7.1297426 15.929402 34.593231 6.668149 15.929403 34.452961 -7.3586202 
		18.34457 34.02935 -7.8118329 20.759737 34.452961 -7.3586216 15.972917 48.08889 6.4961705 
		18.34457 48.539444 6.9378028 20.716223 48.08889 6.4961715 15.972921 47.949364 -7.4565668 
		18.344572 48.390991 -7.9071178 20.716225 47.949364 -7.4565668 20.872177 32.204639 
		3.5280499 18.344568 31.563313 3.7412829 15.816962 32.204643 3.5280488 21.007957 31.522747 
		-0.31523252 18.344568 30.820431 -0.30820951 15.681184 31.522747 -0.31523326 20.872177 
		32.127644 -4.1713829 18.344568 31.48218 -4.371748 15.816962 32.127647 -4.1713829 
		15.78556 37.993187 -9.4062634 15.681187 40.947556 -9.9304419 15.786701 43.944214 
		-9.4603682 18.34457 37.827648 -10.061698 18.344574 40.940533 -10.632757 18.344572 
		44.098354 -10.118504 20.903584 37.993187 -9.4062643 21.007959 40.947556 -9.9304428 
		20.902441 43.944214 -9.4603672 15.7867 44.124619 8.5796671 15.681184 41.137959 9.1095734 
		15.785559 38.173698 8.6445837 18.34457 44.291889 9.2345896 18.34457 41.144981 9.8118916 
		18.344568 38.021297 9.3031979 20.902441 44.124615 8.579669 21.007956 41.137959 9.1095753 
		20.903582 38.173695 8.6445847 12.422301 43.995457 -4.3361607 12.094021 41.002193 
		-4.4669499 12.418749 38.044464 -4.2783875 11.991241 44.195122 -0.44195816 11.6329 
		41.042759 -0.41043469 11.987365 37.924473 -0.37925163 12.422299 44.073376 3.4554582 
		12.094018 41.083324 3.6460812 12.418749 38.122417 3.5167055 20.872179 49.880871 -4.3489156 
		18.344572 50.522205 -4.562149 15.816964 49.880875 -4.3489165 21.007957 50.562771 
		-0.50563323 18.344572 51.265087 -0.51265723 15.681186 50.562771 -0.50563455 20.872179 
		49.957867 3.3505166 18.34457 50.603336 3.5508814 15.816964 49.95787 3.3505158 38.861374 
		34.712387 6.0782204 38.86137 47.56179 5.9497242 38.86137 34.583893 -6.7711926 38.861374 
		47.433292 -6.8996887 51.582283 34.712383 6.0782208 51.582283 47.561783 5.9497247 
		51.582283 34.583889 -6.7711921 51.582279 47.433289 -6.8996882 37.933605 33.672878 
		-4.1488948 37.467567 33.240253 -0.33240706 37.933605 33.749115 3.4746656 37.933605 
		37.334686 6.9892335 37.467567 41.151165 7.421854 37.933601 44.958237 6.9129972 37.933601 
		48.472805 3.3274264 37.467571 48.905422 -0.48906127 37.933601 48.396568 -4.296134 
		37.933601 44.810997 -7.8107028 37.467571 40.994511 -8.2433214 37.933601 37.187447 
		-7.7344656 48.99548 33.637379 -7.6989627 45.221825 33.16193 -8.1649952 41.44817 33.637379 
		-7.6989641 41.44817 48.361065 -7.8462043 45.221825 48.827099 -8.3216496 48.995483 
		48.361061 -7.8462033 52.510048 44.810993 -7.8107018 52.976078 40.994511 -8.2433233 
		52.510052 37.187443 -7.7344646 52.510052 33.749111 3.4746661 52.976086 33.240257 
		-0.33240709 52.510052 33.672874 -4.1488943 52.510048 48.396564 -4.2961335 52.976078 
		48.905418 -0.48906124;
	setAttr ".pt[498:663]" 52.510052 48.472801 3.3274264 52.510052 44.958233 6.9129968 
		52.976086 41.151165 7.4218545 52.510052 37.334682 6.9892325 41.448166 33.784618 7.0247345 
		45.221825 33.318584 7.5001817 48.995483 33.784618 7.024734 48.995483 48.508301 6.8774953 
		45.221825 48.983753 7.3435273 41.44817 48.508305 6.8774962 41.20002 36.91674 -9.7371979 
		40.983978 40.972378 -10.456771 41.20002 45.041599 -9.8184481 45.221825 36.691723 
		-10.413963 45.221825 40.964966 -11.197893 45.221825 45.253033 -10.499578 49.243633 
		36.91674 -9.7371988 49.459675 40.972378 -10.456772 49.243633 45.041599 -9.8184481 
		54.495235 36.969784 -4.4325447 55.167397 41.030033 -4.6913948 54.495232 45.094646 
		-4.5137949 55.167397 36.792187 -0.36792696 55.901112 41.072842 -0.41073421 55.167397 
		45.353493 -0.45354143 54.495235 37.051033 3.6923263 55.167397 41.11565 3.8699272 
		54.495235 45.1759 3.6110764 49.243629 37.104084 8.9969797 49.459675 41.173302 9.6353025 
		49.243626 45.228943 8.9157295 45.221825 36.892647 9.6781092 45.221825 41.18071 10.376425 
		45.221825 45.453957 9.592495 41.20002 37.104084 8.9969778 40.983978 41.173302 9.6353035 
		41.20002 45.228943 8.9157295 41.20002 31.665134 -4.3794975 45.221825 30.984001 -4.5909328 
		49.243629 31.665129 -4.3794975 40.983978 31.02681 -0.31027225 45.221825 30.285688 
		-0.30286092 49.459675 31.02681 -0.31027225 41.20002 31.746384 3.7453737 45.221825 
		31.069616 3.9703891 49.243629 31.746378 3.7453737 49.243633 50.3993 -4.5668421 45.221825 
		51.076061 -4.7918568 41.20002 50.3993 -4.5668421 49.459675 51.11887 -0.51119614 45.221825 
		51.859989 -0.51860744 40.983978 51.11887 -0.51119614 49.243633 50.480549 3.5580292 
		45.221825 51.161678 3.7694652 41.20002 50.480549 3.5580292 -23.17766 36.110394 -5.2451229 
		-23.177658 36.208065 4.5219254 -23.177666 45.877441 -5.342793 -23.177662 45.975113 
		4.4242544 -28.798023 36.110394 -5.245122 -28.798014 36.208065 4.5219254 -28.798016 
		45.975113 4.4242554 -28.798023 45.877441 -5.342792 -30.06995 36.110394 -5.245122 
		-32.928524 36.110394 -5.2451215 -26.17547 36.208065 4.5219264 -36.665154 36.233944 
		4.4955239 -36.665157 36.136795 -5.2192416 -36.665157 45.851562 -5.3163896 -36.665157 
		45.948711 4.3983765 -30.06995 45.975113 4.4242558 -32.928524 45.975113 4.4242558 
		-30.069956 45.877441 -5.3427925 -32.928524 45.877441 -5.342792 -23.17766 43.776001 
		5.8198743 -23.17766 41.109898 6.3044128 -23.177658 38.434643 5.8732886 -23.177666 
		47.27306 -3.143681 -23.177666 47.757599 -0.47758231 -23.177662 47.326477 2.1976731 
		-23.177666 38.309505 -6.6407423 -23.177666 40.975605 -7.1252804 -23.177666 43.650856 
		-6.6941562 -23.177658 34.812443 2.3228137 -23.177658 34.327908 -0.34328541 -23.17766 
		34.759029 -3.0185411 -26.175476 36.110394 -5.2451224 -32.928516 36.208065 4.5219269 
		-30.069946 36.208065 4.5219259 -26.175476 45.975113 4.4242554 -26.175482 45.877441 
		-5.342792 -28.798014 34.812443 2.322814 -28.798014 34.327908 -0.3432849 -28.798014 
		34.759029 -3.0185404 -28.798023 38.309505 -6.6407418 -28.798023 40.975605 -7.1252789 
		-28.798023 43.650856 -6.6941552 -28.798016 43.776001 5.8198748 -28.798014 41.109898 
		6.3044128 -28.798014 38.434647 5.8732891 -28.798023 47.27306 -3.1436803 -28.798023 
		47.757599 -0.47758165 -28.798023 47.326477 2.1976736 -36.668552 43.761276 5.7869015 
		-36.671951 41.10955 6.2690873 -36.668552 38.448711 5.8400269 -36.668564 38.32423 
		-6.6077666 -36.671963 40.97596 -7.089951 -36.668564 43.636795 -6.6608925 -26.175482 
		47.27306 -3.1436806 -26.175476 47.757599 -0.47758213 -26.175476 47.326477 2.1976731 
		-36.668564 47.240089 -3.1289535 -36.671955 47.722275 -0.47722811 -36.668564 47.293217 
		2.18361 -26.175476 43.776001 5.8198748 -26.17547 41.109898 6.3044128 -26.17547 38.434647 
		5.8732891 -26.175476 38.309505 -6.6407423 -26.175482 40.975605 -7.1252789 -26.175482 
		43.650856 -6.6941552 -36.668552 34.845421 2.3080878 -36.671951 34.363235 -0.34363738 
		-36.66856 34.792294 -3.0044751 -26.17547 34.812443 2.3228145 -26.175474 34.327908 
		-0.34328517 -26.175474 34.759029 -3.0185406 -32.928516 34.812443 2.3228145 -30.069946 
		34.812443 2.3228145 -32.928516 34.327908 -0.34328443 -30.069946 34.327908 -0.34328464 
		-32.92852 34.759029 -3.0185392 -30.069946 34.759029 -3.0185397 -32.928524 38.309505 
		-6.6407418 -30.069956 38.309505 -6.6407423 -32.928524 40.975605 -7.125278 -30.069956 
		40.975605 -7.1252799 -32.928524 43.65086 -6.6941562 -30.069956 43.650856 -6.6941552 
		-32.92852 43.776001 5.8198757 -30.06995 43.776001 5.8198748 -32.928516 41.109905 
		6.3044128 -30.069946 41.109905 6.3044119 -32.928516 38.434647 5.8732901 -30.069946 
		38.434647 5.8732891 -32.928524 47.27306 -3.1436796 -30.069956 47.27306 -3.1436796 
		-32.928524 47.757599 -0.47758159 -30.069956 47.757599 -0.47758165 -32.928524 47.326477 
		2.1976745 -30.06995 47.326477 2.1976738 -22.496868 35.452763 5.6647568 -14.192254 
		35.452763 5.6647553 -22.496868 35.332386 -6.3726177 -14.192255 35.332386 -6.3726168 
		-22.341959 47.191933 5.6169806 -14.347172 47.191933 5.6169782 -22.341961 47.070164 
		-6.5596128 -14.347178 47.070171 -6.5596132 -22.925037 34.030258 -3.9528539 -23.217928 
		33.620293 -0.33620751 -22.925035 34.102505 3.2715166 -13.764091 34.102505 3.2715156 
		-13.471197 33.620293 -0.33620906 -13.764091 34.030262 -3.9528546 -22.99032 43.779064 
		-7.5143008;
	setAttr ".pt[664:829]" -23.217932 40.968525 -7.8328919 -22.992785 38.195232 
		-7.4622097 -13.696351 38.195236 -7.4622121 -13.471204 40.968525 -7.8328948 -13.698811 
		43.779064 -7.5143023 -22.925037 48.055241 3.1319885 -23.217932 48.46521 -0.48465747 
		-22.925039 47.982998 -4.092382 -13.764095 47.982998 -4.0923834 -13.471204 48.465214 
		-0.48465899 -13.764093 48.055244 3.1319871 -22.992777 38.336826 6.6968789 -23.21793 
		41.116974 7.0120273 -22.99032 43.920582 6.6372933 -13.69881 43.920582 6.637291 -13.471198 
		41.116978 7.0120244 -13.696344 38.336826 6.6968775 -20.759731 34.593227 6.6681499 
		-18.344561 34.178768 7.1297412 -15.929395 34.593227 6.6681485 -15.929397 34.452957 
		-7.3586192 -18.344563 34.02935 -7.8118329 -20.759733 34.452957 -7.3586202 -15.972911 
		48.088886 6.49617 -18.344564 48.539436 6.9378014 -20.716217 48.088886 6.4961715 -15.972917 
		47.949356 -7.4565659 -18.34457 48.390987 -7.9071169 -20.716223 47.949356 -7.4565649 
		-20.872171 32.204639 3.5280499 -18.344561 31.563307 3.7412829 -15.816954 32.204639 
		3.5280488 -21.00795 31.522747 -0.31523252 -18.344561 30.820427 -0.30820948 -15.681175 
		31.522743 -0.31523323 -20.872173 32.127644 -4.171382 -18.344561 31.482178 -4.3717475 
		-15.816959 32.127644 -4.1713824 -15.785557 37.993187 -9.4062624 -15.681183 40.947552 
		-9.9304409 -15.786697 43.94421 -9.4603672 -18.344568 37.827648 -10.061698 -18.344568 
		40.940529 -10.632757 -18.34457 44.098354 -10.118504 -20.90358 37.993187 -9.4062624 
		-21.007952 40.947552 -9.9304409 -20.902437 43.94421 -9.4603672 -15.786695 44.124611 
		8.5796671 -15.681176 41.137955 9.1095724 -15.785549 38.173691 8.6445827 -18.344563 
		44.291885 9.2345877 -18.344561 41.144978 9.8118887 -18.344561 38.021294 9.303196 
		-20.902433 44.124611 8.579668 -21.00795 41.137955 9.1095743 -20.903572 38.173691 
		8.6445847 -12.422296 43.995453 -4.3361602 -12.094013 41.002186 -4.4669499 -12.418743 
		38.044464 -4.2783871 -11.991234 44.195118 -0.4419581 -11.632894 41.042751 -0.41043463 
		-11.987362 37.924465 -0.37925157 -12.42229 44.073368 3.4554582 -12.094012 41.083317 
		3.6460805 -12.418743 38.12241 3.516706 -20.872177 49.880871 -4.3489151 -18.34457 
		50.522194 -4.5621486 -15.816962 49.880871 -4.3489161 -21.007954 50.562759 -0.50563312 
		-18.34457 51.265076 -0.51265711 -15.681184 50.562759 -0.50563443 -20.872175 49.957867 
		3.3505166 -18.344564 50.603325 3.5508816 -15.816957 49.957867 3.3505154 -38.861362 
		34.712383 6.0782204 -38.861366 47.561783 5.9497242 -38.861366 34.583885 -6.7711921 
		-38.861366 47.433285 -6.8996878 -51.582268 34.712383 6.0782194 -51.582268 47.561783 
		5.9497232 -51.582268 34.583889 -6.7711926 -51.582272 47.433289 -6.8996887 -37.933598 
		33.672871 -4.1488943 -37.46756 33.240253 -0.33240706 -37.933598 33.749111 3.4746656 
		-37.93359 37.334679 6.9892335 -37.46756 41.151161 7.421854 -37.933594 44.958229 6.9129968 
		-37.933594 48.472794 3.3274264 -37.467564 48.905422 -0.48906127 -37.933594 48.396557 
		-4.2961335 -37.933594 44.810989 -7.8107018 -37.467564 40.994507 -8.2433214 -37.933594 
		37.187439 -7.7344646 -48.995472 33.637375 -7.6989617 -45.221813 33.161926 -8.1649942 
		-41.448166 33.637371 -7.6989627 -41.448166 48.361057 -7.8462024 -45.221817 48.827091 
		-8.3216486 -48.995472 48.361057 -7.8462024 -52.510048 44.810993 -7.8107014 -52.976078 
		40.994511 -8.2433214 -52.51004 37.187443 -7.7344632 -52.51004 33.749111 3.4746656 
		-52.976074 33.240253 -0.33240706 -52.51004 33.672874 -4.1488943 -52.510048 48.396564 
		-4.296133 -52.976078 48.905418 -0.48906124 -52.51004 48.472801 3.327426 -52.51004 
		44.958233 6.9129968 -52.976074 41.151165 7.4218545 -52.51004 37.334682 6.9892325 
		-41.448162 33.784611 7.0247355 -45.221813 33.318581 7.5001812 -48.995468 33.784615 
		7.024734 -48.995472 48.508297 6.8774953 -45.221813 48.983746 7.3435268 -41.448166 
		48.508297 6.8774962 -41.20002 36.916733 -9.737196 -40.983971 40.97237 -10.456772 
		-41.20002 45.041592 -9.8184471 -45.221813 36.691715 -10.413962 -45.221813 40.964966 
		-11.197893 -45.221813 45.253029 -10.499578 -49.243618 36.916733 -9.7371979 -49.459663 
		40.972378 -10.456772 -49.243618 45.041592 -9.8184471 -54.495224 36.969776 -4.4325442 
		-55.167385 41.030029 -4.6913948 -54.495232 45.094643 -4.5137944 -55.167385 36.792183 
		-0.3679269 -55.901093 41.072834 -0.41073415 -55.167385 45.353489 -0.45354137 -54.495224 
		37.051029 3.6923265 -55.167385 41.115643 3.8699267 -54.495224 45.175892 3.6110766 
		-49.243614 37.10408 8.9969778 -49.459663 41.173302 9.6353016 -49.243618 45.228935 
		8.9157286 -45.221813 36.892639 9.6781082 -45.221813 41.18071 10.376424 -45.221813 
		45.453953 9.5924931 -41.200016 37.10408 8.9969778 -40.983967 41.173294 9.6353006 
		-41.20002 45.228935 8.9157286 -41.200016 31.665129 -4.3794971 -45.221813 30.983995 
		-4.5909328 -49.243614 31.665129 -4.3794971 -40.983967 31.026806 -0.31027222 -45.221813 
		30.285683 -0.30286086 -49.459663 31.02681 -0.31027225 -41.200016 31.746378 3.7453735 
		-45.221813 31.069611 3.9703887 -49.243614 31.746378 3.7453735 -49.243618 50.399288 
		-4.5668416 -45.221817 51.076061 -4.7918568 -41.20002 50.399296 -4.5668416 -49.459663 
		51.118866 -0.51119608 -45.221813 51.859993 -0.5186075 -40.983971 51.11887 -0.51119614 
		-49.243618 50.480537 3.5580287 -45.221813 51.161678 3.7694647 -41.20002 50.480545 
		3.5580287 -15.495494 49.120285 9.7057858 -16.367258 57.365292 -20.669483 -14.754534 
		92.251404 -11.762905;
	setAttr ".pt[830:995]" 15.495497 49.120285 9.7057858 16.36726 57.365299 -20.669481 
		14.754496 92.251404 -11.76291 -18.065302 52.888695 -13.957697 -20.304674 50.995182 
		-5.2670655 -18.492212 48.990784 2.6465998 -16.906668 52.194546 12.085887 -16.906668 
		91.395187 -6.4950695 -16.906702 85.995163 -18.560112 -17.987732 76.521713 -22.127094 
		-17.952953 65.653198 -22.280602 9.0739336 57.151932 -24.07769 0 56.646893 -25.337549 
		-9.0739336 57.151932 -24.07769 -8.7538795 95.226952 -12.57874 -2.0267207e-05 96.68885 
		-13.043247 8.7538404 95.226952 -12.578743 16.906664 85.995178 -18.56012 17.987732 
		76.521713 -22.127096 17.952953 65.653214 -22.280603 18.49221 48.99078 2.6465991 20.304676 
		50.99519 -5.2670655 18.065304 52.888699 -13.957697 16.906668 91.395203 -6.4950695 
		16.906664 52.194553 12.085886 -9.1889257 47.89719 18.797977 0 47.585243 22.226002 
		9.1889257 47.897186 18.797979 -21.511757 52.927433 4.0235562 -23.646505 56.333664 
		-7.0858326 -22.796349 59.31319 -15.793646 -23.070982 73.764885 -16.935944 -21.511757 
		84.407181 -13.063963 -8.3674335 67.936333 -28.45101 -8.8169165 77.916191 -26.429987 
		-8.3674374 87.938133 -22.355232 0 67.949898 -29.934748 0 77.916847 -28.441616 -2.0195686e-05 
		88.931847 -23.517273 8.3673992 67.936333 -28.45101 8.8168793 77.916191 -26.429987 
		8.3673983 87.938133 -22.355236 22.796347 59.31319 -15.793646 23.07098 73.764885 -16.935942 
		21.511757 84.407181 -13.063963 23.646503 56.333668 -7.0858316 21.511757 52.927441 
		4.0235572 9.6336327 51.037174 20.755934 0 52.07235 24.732908 -9.6336298 51.037182 
		20.755934 -9.8192558 50.695587 -18.264708 0 50.093594 -18.536163 9.8192558 50.695576 
		-18.264708 -9.8306389 46.534664 -2.9989977 0 44.900795 -3.7344911 9.8306389 46.534668 
		-2.9989982 -9.3294773 46.640072 4.6030045 0 44.985313 4.5461135 9.3294754 46.640076 
		4.6030045 9.3294764 98.295692 -1.2491206 -1.9298017e-05 99.950035 -1.2339866 -9.3295145 
		98.295692 -1.2491181 23.855574 61.621109 -13.241889 -23.855574 61.621105 -13.24189 
		-13.745453 55.110744 9.7169657 -13.745454 87.868088 -6.4499726 13.745454 87.86808 
		-6.4499731 13.745454 55.110741 9.7169657 -17.489483 55.681248 3.1438913 -19.214355 
		58.185566 -5.8008661 -18.757164 73.570396 -15.007503 -17.489483 82.02771 -12.31291 
		18.757162 73.570404 -15.007504 17.489483 82.02771 -12.31291 19.214355 58.18557 -5.8008671 
		17.489481 55.681263 3.1438911 7.5850501 54.818344 13.22381 0 56.526791 14.436313 
		-7.5850506 54.818348 13.223813 7.5850506 91.438354 -1.1931856 0 92.783363 -1.1808848 
		-7.5850506 91.438354 -1.1931857 19.445299 62.837856 -11.575191 -19.445305 62.837856 
		-11.575191 21.305334 57.295315 -4.7882953 21.594385 62.850788 -10.711529 8.8923492 
		54.077843 19.014477 15.326061 54.4217 12.423051 -1.8784904e-05 98.354813 0.30587026 
		-8.4573002 96.855133 0.29215473 19.500622 84.050392 -11.163581 15.326061 90.464592 
		-4.9476638 20.91407 74.500595 -14.446866 -15.326058 54.421692 12.42305 -8.8923492 
		54.07785 19.014475 19.500616 55.085979 5.1059837 -21.305336 57.295307 -4.7882953 
		-19.500618 55.085983 5.1059852 -21.594389 62.850788 -10.711529 -15.326061 90.464592 
		-4.9476638 -19.500622 84.050392 -11.16358 -20.914072 74.500595 -14.446866 8.4572639 
		96.855133 0.29215249 0 55.808674 23.0387 5.2166166 2.111299 3.3031056 5.2166166 2.044817 
		-3.3446727 11.797917 2.1112981 3.3031061 11.797916 2.044816 -3.3446722 4.1197329 
		10.952913 -4.5418296 4.1197329 11.041555 4.3218746 12.894799 11.041554 4.3218746 
		12.894798 10.952912 -4.5418296 4.7366238 1.5744928 -1.9880077 4.4955173 1.3511738 
		-0.013514286 4.7366242 1.6139358 1.9561182 10.45961 1.5561247 -3.8246746 8.507267 
		1.3106468 -4.0657868 6.5549245 1.556125 -3.8246746 4.1197319 15.547215 4.2768173 
		4.1197319 17.582363 4.2564659 12.27791 1.6139362 1.9561185 12.519016 1.3511742 -0.013514495 
		12.277909 1.5744932 -1.988008 6.5549245 1.6323043 3.7927854 8.507267 1.391699 4.0387583 
		10.45961 1.632305 3.7927852 4.143219 8.2851782 -4.491425 4.7131367 3.4251184 -3.8670914 
		12.871312 8.3733454 4.3248315 12.301395 3.5017715 3.7978163 12.871314 8.2851772 -4.491426 
		12.301394 3.4251189 -3.8670912 4.1197305 17.493721 -4.6072392 4.1197314 15.458573 
		-4.5868869 4.7131376 3.5017734 3.7978165 4.1432195 8.3733463 4.324831 12.894798 17.582363 
		4.2564654 12.894799 15.547215 4.2768173 12.894796 17.493721 -4.6072388 12.894799 
		15.458571 -4.5868859 2.8857377 11.021473 2.3136916 2.4744077 10.997235 -0.10997699 
		2.8857372 10.972997 -2.5336456 6.1078324 10.940448 -5.7882872 8.507266 10.936293 
		-6.2037735 10.906698 10.940448 -5.7882872 10.906698 11.054021 5.5683341 8.507266 
		11.058175 5.9838204 6.1078334 11.054021 5.5683331 14.128793 10.972996 -2.5336466 
		14.540124 10.997233 -0.10997727 14.128793 11.021472 2.3136919 13.334722 3.3084054 
		-2.1481051 14.099038 8.3006763 -2.4938567 13.684455 3.2124064 -0.032127086 14.508387 
		8.320303 -0.083207257 13.334723 3.3507032 2.0815079 14.099038 8.3488894 2.3273528 
		6.4265418 0.53789794 -2.1073339 8.507267 0.18623048 -2.2167299 10.587991 0.53789765 
		-2.1073339 6.3147697 0.20837903 -0.0020861642 8.507267 -0.17426182 0.0017402696 10.699764 
		0.20837879 -0.0020862785 6.4265423 0.57993233 2.0961504 8.507267 0.23052627 2.2125573;
	setAttr ".pt[996:1161]" 10.587992 0.5799343 2.0961509 3.6798105 3.3507037 2.0815079 
		2.915493 8.3488903 2.3273532 3.3300784 3.2124064 -0.032127105 2.506145 8.3203049 
		-0.083207183 3.6798105 3.3084047 -2.1481049 2.9154935 8.3006763 -2.4938569 14.128792 
		15.478655 -2.5787036 14.128792 17.513802 -2.5990558 14.540123 15.502892 -0.15503471 
		14.540123 17.53804 -0.1753867 14.128793 15.527131 2.2686341 14.128793 17.562279 2.248282 
		6.1207666 8.2682981 -5.7315063 8.507266 8.2596836 -6.1449447 10.893764 8.2682972 
		-5.7315078 6.4136076 3.2807894 -4.9095163 8.507267 3.1601086 -5.2616091 10.600924 
		3.2807894 -4.9095168 10.906698 15.559679 5.5232763 10.906697 17.594826 5.502924 8.507266 
		15.563834 5.9387631 8.507266 17.598982 5.9184113 6.1078334 15.559679 5.5232759 6.1078329 
		17.594828 5.502924 6.1078329 15.446107 -5.833344 6.107832 17.481255 -5.8536968 8.5072651 
		15.441952 -6.2488308 8.5072641 17.477098 -6.2691822 10.906697 15.446105 -5.8333435 
		10.906696 17.481255 -5.8536973 2.8857369 15.527131 2.2686343 2.8857369 17.562279 
		2.2482824 2.4744072 15.502893 -0.15503448 2.4744058 17.53804 -0.17538656 2.8857367 
		15.478655 -2.5787036 2.8857381 17.513803 -2.5990555 10.600924 3.3783197 4.8429198 
		10.893764 8.3812685 5.5650034 8.507267 3.2647052 5.1973562 8.507267 8.3809242 5.9785314 
		6.4136086 3.3783195 4.8429203 6.1207681 8.3812695 5.5650029 4.1197324 13.294386 4.299346 
		4.1197319 13.205744 -4.5643582 12.894801 13.294384 4.299346 12.894799 13.205743 -4.5643578 
		14.128792 13.274302 2.291163 14.540123 13.250063 -0.13250598 14.128792 13.225824 
		-2.556175 6.1078334 13.30685 5.5458045 8.507266 13.311006 5.9612918 10.906698 13.306849 
		5.545805 10.906698 13.193276 -5.8108158 8.5072651 13.189123 -6.2263021 6.1078329 
		13.193277 -5.8108158 2.8857367 13.225824 -2.5561745 2.4744074 13.250063 -0.13250573 
		2.8857374 13.274302 2.291163 4.1982031 5.8566079 -4.4115944 12.81633 5.9436641 4.2935839 
		12.81633 5.8566084 -4.4115949 4.1982031 5.943665 4.2935843 14.010593 5.8031464 -2.448549 
		14.411531 5.7628078 -0.05763172 14.010593 5.8509536 2.3320007 3.0039384 5.850955 
		2.3320007 2.6030006 5.7628093 -0.05763169 3.0039387 5.8031464 -2.448549 6.1408939 
		5.7714586 -5.6171899 8.507266 5.7031655 -6.0215354 10.873637 5.7714586 -5.6171904 
		10.873637 5.8826427 5.5006423 8.507267 5.8224516 5.9062734 6.1408954 5.8826432 5.5006428 
		-5.2166162 2.1112988 3.3031056 -5.2166157 2.0448167 -3.3446722 -11.797916 2.1112981 
		3.3031054 -11.797915 2.044816 -3.3446722 -4.1197319 10.952912 -4.5418291 -4.1197329 
		11.041553 4.3218746 -12.894798 11.041554 4.3218746 -12.894798 10.952912 -4.5418291 
		-4.7366238 1.5744928 -1.9880077 -4.4955173 1.3511736 -0.013514285 -4.7366238 1.6139356 
		1.9561181 -10.459608 1.5561247 -3.8246739 -8.507267 1.3106465 -4.0657864 -6.5549235 
		1.5561249 -3.8246746 -4.1197319 15.547212 4.2768173 -4.1197319 17.582359 4.2564659 
		-12.277908 1.6139359 1.9561185 -12.519015 1.3511741 -0.013514495 -12.277908 1.5744929 
		-1.9880079 -6.5549245 1.6323041 3.7927847 -8.507267 1.3916988 4.0387578 -10.459608 
		1.6323048 3.7927852 -4.143219 8.2851782 -4.4914246 -4.7131362 3.4251189 -3.8670912 
		-12.871312 8.3733454 4.324831 -12.301394 3.5017719 3.7978158 -12.871311 8.2851772 
		-4.4914255 -12.301394 3.4251194 -3.8670912 -4.1197305 17.493717 -4.6072383 -4.1197314 
		15.45857 -4.5868864 -4.7131367 3.5017734 3.7978163 -4.143219 8.3733454 4.324831 -12.894798 
		17.582361 4.2564654 -12.894799 15.547214 4.2768173 -12.894796 17.493719 -4.6072383 
		-12.894796 15.45857 -4.5868855 -2.8857374 11.021471 2.3136916 -2.474407 10.997233 
		-0.10997698 -2.8857367 10.972995 -2.5336456 -6.107832 10.940447 -5.7882872 -8.5072651 
		10.936293 -6.2037725 -10.906697 10.940447 -5.7882867 -10.906697 11.054019 5.5683341 
		-8.507266 11.058175 5.9838195 -6.1078334 11.054019 5.5683322 -14.128792 10.972994 
		-2.5336466 -14.540123 10.997232 -0.10997725 -14.128792 11.021471 2.3136916 -13.334722 
		3.3084049 -2.1481049 -14.099036 8.3006754 -2.4938567 -13.684452 3.2124064 -0.032127086 
		-14.508385 8.320303 -0.08320725 -13.334722 3.350703 2.0815079 -14.099038 8.3488894 
		2.3273523 -6.4265418 0.53789788 -2.1073337 -8.507267 0.18623045 -2.2167299 -10.587991 
		0.53789765 -2.1073337 -6.3147688 0.20837903 -0.0020861642 -8.507267 -0.17426182 0.0017402695 
		-10.699763 0.20837879 -0.0020862785 -6.4265423 0.57993233 2.0961504 -8.507267 0.23052624 
		2.2125571 -10.587991 0.57993424 2.0961509 -3.67981 3.350703 2.0815079 -2.9154928 
		8.3488894 2.3273528 -3.3300784 3.2124062 -0.032127101 -2.5061448 8.3203039 -0.083207175 
		-3.6798105 3.3084042 -2.1481049 -2.9154932 8.3006754 -2.4938567 -14.12879 15.478654 
		-2.5787036 -14.128792 17.513802 -2.5990555 -14.540121 15.502891 -0.15503469 -14.540121 
		17.53804 -0.17538668 -14.128792 15.527129 2.2686336 -14.128792 17.562277 2.2482817 
		-6.1207652 8.2682972 -5.7315059 -8.5072641 8.2596836 -6.1449437 -10.893764 8.2682972 
		-5.7315073 -6.4136076 3.2807894 -4.9095159 -8.507266 3.1601086 -5.2616086 -10.600924 
		3.2807887 -4.9095154 -10.906696 15.559679 5.5232759 -10.906696 17.594828 5.5029235 
		-8.5072651 15.563834 5.9387622 -8.5072641 17.598982 5.9184103 -6.1078329 15.559678 
		5.5232749 -6.107832 17.594826 5.5029235 -6.107832 15.446105 -5.8333435 -6.1078315 
		17.481255 -5.8536963 -8.5072641 15.441951 -6.2488298 -8.5072641 17.477098 -6.2691813;
	setAttr ".pt[1162:1327]" -10.906695 15.446105 -5.8333426 -10.906695 17.481255 
		-5.8536963 -2.8857365 15.527131 2.2686343 -2.8857365 17.562279 2.248282 -2.4744067 
		15.502893 -0.15503448 -2.4744053 17.53804 -0.17538656 -2.8857365 15.478655 -2.5787034 
		-2.8857377 17.513803 -2.5990555 -10.600924 3.378319 4.8429193 -10.893764 8.3812675 
		5.5650034 -8.507267 3.2647052 5.1973557 -8.507266 8.3809242 5.9785304 -6.4136086 
		3.3783195 4.8429198 -6.1207671 8.3812685 5.565002 -4.1197319 13.294382 4.299346 -4.1197319 
		13.205741 -4.5643578 -12.894798 13.294382 4.299346 -12.894798 13.20574 -4.5643573 
		-14.128792 13.274301 2.2911627 -14.540123 13.250062 -0.13250597 -14.128792 13.225823 
		-2.556175 -6.1078334 13.306849 5.5458035 -8.5072651 13.311004 5.9612908 -10.906697 
		13.306849 5.5458045 -10.906696 13.193276 -5.8108149 -8.5072651 13.189121 -6.2263012 
		-6.1078324 13.193276 -5.8108158 -2.8857367 13.225824 -2.5561743 -2.474407 13.250063 
		-0.13250573 -2.8857372 13.274302 2.291163 -4.1982026 5.8566074 -4.4115934 -12.816327 
		5.9436631 4.2935839 -12.816328 5.8566074 -4.4115944 -4.1982031 5.943665 4.2935843 
		-14.010592 5.8031464 -2.4485488 -14.411531 5.7628069 -0.057631709 -14.010594 5.8509536 
		2.3320003 -3.003938 5.8509536 2.3320005 -2.6030006 5.7628088 -0.057631686 -3.0039384 
		5.8031454 -2.4485488 -6.140893 5.7714581 -5.6171894 -8.507266 5.7031655 -6.0215349 
		-10.873637 5.7714581 -5.6171899 -10.873637 5.8826418 5.5006423 -8.507267 5.8224511 
		5.9062734 -6.1408949 5.8826427 5.5006423 -9.6511707 15.134037 9.5982914 -9.2715178 
		45.348892 8.912611 -9.6511717 14.93906 -9.899025 -9.2715197 45.161591 -9.8177299 
		9.6511717 15.134037 9.5982904 9.2715168 45.3489 8.912611 9.6511717 14.939059 -9.8990259 
		9.2715187 45.161594 -9.817729 -12.741676 26.666821 12.604997 -12.741678 26.409405 
		-13.135767 12.741678 26.409405 -13.135767 12.741678 26.666817 12.604997 -11.058944 
		14.559815 -5.9300575 -11.766088 14.407237 -0.14407501 -11.058945 14.675496 5.6376991 
		-12.563328 32.083633 12.370654 -11.97925 37.62466 11.72521 -10.741537 42.366245 10.427455 
		-10.599273 46.361149 5.0883832 -11.264277 46.833271 -0.46834025 -10.599272 46.250118 
		-6.0145116 -12.745956 21.91441 -13.09514 -12.301339 18.508253 -12.611925 -11.125853 
		16.182642 -11.401187 5.7260389 14.505946 -11.31683 3.3832521e-08 14.288387 -12.029014 
		-5.7260399 14.505948 -11.316832 -5.4959331 46.19857 -11.169401 -1.1841101e-07 46.719482 
		-11.846401 5.4959331 46.19857 -11.1694 12.745957 21.91441 -13.095139 12.301342 18.508253 
		-12.611923 11.125852 16.18264 -11.401187 11.058945 14.675493 5.6376996 11.766088 
		14.407237 -0.14407492 11.058947 14.559813 -5.930057 10.599275 46.250126 -6.0145116 
		11.264281 46.833267 -0.4683404 10.599274 46.361153 5.0883837 12.745956 22.171909 
		12.654269 12.30134 18.756769 12.239269 11.125853 16.40741 11.075281 -5.7260404 14.729363 
		11.024473 -2.7065525e-07 14.52609 11.740864 5.7260389 14.729363 11.024473 5.4959331 
		46.412701 10.243273 1.3532727e-07 46.947048 10.90972 -5.4959335 46.412701 10.243272 
		-11.125852 16.407412 11.075281 -12.301341 18.756769 12.239267 -12.745957 22.171907 
		12.654268 -10.741538 42.149239 -11.272621 -11.979251 37.382652 -12.475295 -12.563325 
		31.829817 -13.009802 10.741537 42.149246 -11.272623 11.97925 37.382648 -12.475296 
		12.563328 31.829815 -13.009801 10.741539 42.366249 10.427452 11.979251 37.624657 
		11.72521 12.563326 32.083622 12.370657 6.9681048 26.703016 16.224792 -2.3682342e-07 
		26.715088 17.431391 -6.9681058 26.703018 16.224792 16.325275 26.467728 -7.303875 
		17.51981 26.538111 -0.26538566 16.325277 26.608498 6.7731042 -6.9681058 26.373213 
		-16.755564 -2.3682342e-07 26.361141 -17.962162 6.9681039 26.373203 -16.755566 -16.325275 
		26.608498 6.7731042 -17.519808 26.538115 -0.26538521 -16.325275 26.467726 -7.303875 
		-16.09708 32.035851 6.620213 -15.350959 37.647614 6.2408257 -13.652602 42.608311 
		5.5643163 -17.275097 31.976171 -0.31976694 -16.475658 37.659237 -0.37659866 -14.633215 
		42.802734 -0.42803425 -16.097078 31.897043 -7.259553 -15.350957 37.515278 -6.9924674 
		-13.652602 42.48851 -6.415298 -6.8704848 31.80385 -16.579344 -6.5504804 37.426384 
		-15.881839 -5.9299097 42.410503 -14.215997 2.9602752e-08 31.801668 -17.76936 1.6916964e-08 
		37.492813 -17.018677 -1.1841171e-07 42.654919 -15.20906 6.8704848 31.803841 -16.579346 
		6.5504794 37.426384 -15.881838 5.9299092 42.410503 -14.215999 16.09708 31.897049 
		-7.2595534 15.350959 37.515274 -6.9924664 13.652602 42.48851 -6.4152989 17.275097 
		31.976168 -0.31976685 16.475658 37.659237 -0.37659845 14.633215 42.802731 -0.42803439 
		16.097078 32.035839 6.620214 15.350957 37.64761 6.2408261 13.652602 42.608307 5.5643163 
		6.8704848 32.129047 15.940005 6.5504794 37.736507 15.130198 5.9299097 42.686317 13.365015 
		-3.5523479e-07 32.150677 17.129827 -1.6915205e-08 37.825657 16.26548 1.1841101e-07 
		42.950542 14.352991 -6.8704848 32.129051 15.940006 -6.5504804 37.736507 15.130198 
		-5.9299092 42.686317 13.365017 -6.1025729 13.659687 -6.3014312 -1.0149616e-07 13.352895 
		-6.6295252 6.1025734 13.659686 -6.3014312 -6.4303927 13.417849 -0.13418049 1.8607552e-07 
		13.086576 -0.13086811 6.4303904 13.417848 -0.13418102 -6.1025734 13.782973 6.026999 
		1.353278e-07 13.482803 6.3611641 6.1025724 13.782975 6.027 5.8309283 48.494316 -6.3753676 
		8.4581302e-08 49.252243 -6.6894498 -5.8309293 48.494316 -6.3753672;
	setAttr ".pt[1328:1369]" 6.134336 49.314213 -0.4931502 8.4580599e-08 50.144894 
		-0.50145739 -6.1343379 49.314209 -0.4931505 5.8309293 48.612114 5.4042869 1.0149545e-07 
		49.376175 5.7031503 -5.8309283 48.612118 5.4042869 6.1394243 16.322094 14.137145 
		6.7252002 18.760771 15.74227 6.9701843 22.204248 16.276318 -2.5373959e-07 16.231033 
		15.174064 -2.3682351e-07 18.741449 16.912653 -2.8757151e-07 22.21245 17.484007 -6.1394253 
		16.3221 14.137144 -6.7252026 18.760773 15.742271 -6.9701834 22.20425 16.27632 14.155949 
		16.117088 -6.3632326 15.769007 18.533556 -6.9791503 16.331747 21.968874 -7.2609863 
		15.181495 16.077686 -0.16077934 16.927376 18.570463 -0.18570772 17.527321 22.035404 
		-0.22035775 14.155948 16.241123 6.0396461 15.769005 18.66942 6.6071143 16.331747 
		22.109688 6.8201928 -6.1394253 16.036112 -14.460732 -6.7252011 18.442202 -16.114305 
		-6.9701843 21.874311 -16.71711 2.5374004e-07 15.924335 -15.495623 -6.7663635e-08 
		18.399479 -17.284065 -1.3109891e-07 21.858358 -17.924723 6.1394248 16.036114 -14.460732 
		6.7252011 18.4422 -16.114305 6.9701829 21.87431 -16.717112 -14.155951 16.241117 6.0396452 
		-15.769007 18.669422 6.6071153 -16.331747 22.10969 6.8201928 -15.181493 16.077682 
		-0.16077968 -16.927374 18.570467 -0.1857076 -17.527321 22.035406 -0.22035751 -14.155948 
		16.11709 -6.3632336 -15.769004 18.533554 -6.9791503 -16.331747 21.968872 -7.2609859;
	setAttr -s 1370 ".vt";
	setAttr ".vt[0:165]"  -0.14785115 -0.17237969 0.57082754 -0.14785115 -0.17237969 0.86652982
		 -0.14785115 0.1233226 0.57082754 -0.14785111 0.1233226 0.86652982 0.14785112 -0.1723797 0.57082748
		 0.14785111 -0.1723797 0.86652976 0.14785112 0.1233226 0.57082742 0.14785115 0.12332258 0.86652976
		 -0.16941753 0.063191518 0.54926109 -0.1802506 -0.024528546 0.53842801 -0.16941752 -0.11224861 0.54926109
		 -0.16941752 -0.19394606 0.63095856 -0.1802506 -0.20477916 0.71867865 -0.16941753 -0.19394606 0.80639869
		 -0.16941753 -0.11224861 0.88809615 -0.1802506 -0.02452855 0.89892918 -0.16941753 0.063191511 0.88809615
		 -0.16941752 0.14488897 0.80639869 -0.18025061 0.15572204 0.71867865 -0.16941753 0.14488897 0.63095856
		 0.087720059 0.14488897 0.54926109 4.6817092e-09 0.15572205 0.53842807 -0.087720059 0.14488898 0.54926115
		 -0.087720059 0.14488897 0.88809621 -1.6523671e-09 0.15572205 0.89892924 0.087720059 0.14488898 0.88809609
		 0.16941752 0.14488898 0.80639875 0.18025059 0.15572207 0.71867865 0.1694175 0.14488898 0.63095862
		 0.16941752 -0.11224861 0.54926115 0.18025059 -0.024528554 0.53842807 0.1694175 0.063191511 0.54926115
		 0.16941752 0.063191496 0.88809615 0.18025059 -0.024528548 0.89892924 0.16941752 -0.11224861 0.88809615
		 0.16941752 -0.19394605 0.80639875 0.1802506 -0.20477913 0.71867865 0.16941749 -0.19394605 0.63095862
		 -0.087720059 -0.19394608 0.54926115 -3.5801264e-09 -0.20477915 0.53842807 0.087720051 -0.19394606 0.54926109
		 0.087720044 -0.19394606 0.88809609 -2.7539215e-10 -0.20477915 0.89892924 -0.087720059 -0.19394608 0.88809621
		 -0.21556397 -0.11801691 0.62519026 -0.23118855 -0.12303894 0.71867865 -0.21556398 -0.11801691 0.81216699
		 -0.23118854 -0.024528546 0.62016821 -0.2482439 -0.02452855 0.71867865 -0.23118854 -0.024528548 0.8171891
		 -0.21556397 0.068959832 0.62519026 -0.23118854 0.073981851 0.71867865 -0.21556394 0.068959832 0.81216699
		 -0.093488373 0.1910354 0.62519032 -0.098510392 0.20666 0.71867865 -0.093488365 0.19103543 0.81216705
		 7.435645e-09 0.20665999 0.62016827 2.7539357e-09 0.22371535 0.71867865 -1.6523671e-09 0.20665999 0.81718904
		 0.093488365 0.19103542 0.62519026 0.098510392 0.20666 0.71867865 0.093488373 0.19103539 0.81216699
		 0.21556394 0.068959817 0.62519026 0.23118855 0.073981836 0.71867865 0.21556398 0.068959817 0.81216705
		 0.23118852 -0.024528554 0.62016827 0.24824388 -0.024528552 0.71867865 0.23118854 -0.024528546 0.81718904
		 0.21556395 -0.11801692 0.62519026 0.23118854 -0.12303895 0.71867865 0.21556392 -0.11801692 0.81216705
		 0.093488351 -0.24009252 0.62519026 0.098510377 -0.2557171 0.71867859 0.093488358 -0.24009252 0.81216699
		 -7.435645e-09 -0.25571707 0.62016827 -2.7539286e-09 -0.27277243 0.71867865 1.6523671e-09 -0.25571707 0.81718904
		 -0.093488388 -0.2400925 0.62519032 -0.098510399 -0.25571707 0.71867865 -0.09348838 -0.24009249 0.81216705
		 -0.09348838 0.068959825 0.5031147 -2.2031514e-09 0.073981851 0.48749012 0.093488365 0.068959825 0.50311464
		 -0.098510399 -0.024528552 0.48749009 0 -0.02452855 0.47043473 0.098510385 -0.024528548 0.48749012
		 -0.093488373 -0.11801692 0.5031147 3.5801264e-09 -0.12303894 0.48749012 0.093488373 -0.11801691 0.5031147
		 0.093488365 0.068959825 0.93424261 3.3047485e-09 0.073981844 0.94986719 -0.09348838 0.068959817 0.93424267
		 0.098510392 -0.024528554 0.94986719 -2.7539215e-10 -0.024528554 0.96692258 -0.098510392 -0.024528546 0.94986719
		 0.093488365 -0.11801691 0.93424261 -4.9570872e-09 -0.12303894 0.94986719 -0.093488373 -0.11801692 0.93424261
		 -0.077560879 -0.3607977 0.64853001 -0.077560879 -0.3607977 0.80365098 0.077560067 -0.3607977 0.64853001
		 0.077560052 -0.3607977 0.80365092 -0.088874295 -0.20080331 0.63721663 -0.094557159 -0.28323719 0.6315338
		 -0.08887428 -0.32925382 0.63721663 -0.08887428 -0.37211108 0.68007386 -0.094557151 -0.37779394 0.72609049
		 -0.088874295 -0.37211108 0.77210706 -0.08887428 -0.32925382 0.81496441 -0.094557151 -0.28323719 0.82064724
		 -0.088874295 -0.20080331 0.81496441 0.088873453 -0.32925385 0.63721663 0.094556317 -0.28323725 0.63153374
		 0.088873461 -0.20080331 0.63721663 0.088873453 -0.20080331 0.81496429 0.094556324 -0.28323725 0.82064724
		 0.088873468 -0.32925385 0.81496429 0.088873461 -0.37211111 0.77210706 0.094556332 -0.377794 0.72609049
		 0.088873446 -0.37211111 0.6800738 -0.046017036 -0.37211108 0.63721663 -4.1573804e-07 -0.37779394 0.63153374
		 0.046016198 -0.37211111 0.63721663 0.046016198 -0.37211108 0.81496429 -4.1400446e-07 -0.37779394 0.82064724
		 -0.046017036 -0.37211111 0.81496441 -0.11308201 -0.33227983 0.67704791 -0.12127844 -0.3349143 0.72609049
		 -0.11308201 -0.33227983 0.77513307 -0.12127843 -0.28323722 0.67441344 -0.13022542 -0.28323722 0.72609049
		 -0.12127843 -0.28323722 0.7777676 -0.11308201 -0.20055778 0.67704791 -0.12127843 -0.20034404 0.72609049
		 -0.11308201 -0.20055778 0.77513307 0.11308117 -0.20055778 0.67704785 0.1212776 -0.20034404 0.72609043
		 0.11308117 -0.20055778 0.77513301 0.12127759 -0.28323722 0.67441338 0.13022457 -0.28323722 0.72609043
		 0.12127759 -0.28323722 0.77776754 0.11308116 -0.33227983 0.67704785 0.12127759 -0.3349143 0.72609049
		 0.11308117 -0.33227983 0.77513301 0.049042173 -0.39631882 0.67704785 0.051676642 -0.40451524 0.72609049
		 0.049042169 -0.39631882 0.77513307 -4.1776065e-07 -0.40451524 0.67441338 -4.1530464e-07 -0.41346222 0.72609049
		 -4.1299319e-07 -0.40451524 0.77776754 -0.049042996 -0.39631882 0.67704791 -0.051677477 -0.40451524 0.72609049
		 -0.049042996 -0.39631882 0.77513307 -0.049043 -0.20055777 0.61300892 -4.1501571e-07 -0.20034403 0.60481244
		 0.049042173 -0.2005578 0.61300886 -0.051677473 -0.28323722 0.60481244 -4.1385999e-07 -0.28323722 0.59586549
		 0.051676646 -0.28323722 0.60481244 -0.049043003 -0.33227983 0.61300892 -4.1198189e-07 -0.3349143 0.60481244
		 0.049042169 -0.33227983 0.61300886 0.049042173 -0.2005578 0.83917207 -4.1212635e-07 -0.20034403 0.84736854
		 -0.049043 -0.20055777 0.83917207 0.051676657 -0.28323722 0.84736854;
	setAttr ".vt[166:331]" -4.1400446e-07 -0.28323722 0.85631549 -0.051677469 -0.28323722 0.84736854
		 0.049042162 -0.33227983 0.83917207 -4.1646044e-07 -0.3349143 0.84736854 -0.049043003 -0.33227983 0.83917207
		 3.7189949e-09 0.16461335 0.36659175 1.7564972e-09 0.18517658 0.39373285 6.1613292e-10 0.2014509 0.41044024
		 0.082482941 0.14251213 0.36659175 0.092641041 0.16037337 0.39277685 0.10103057 0.17440358 0.40939802
		 0.14286458 0.082130447 0.36659175 0.16046228 0.092607677 0.39016482 0.17499878 0.1005039 0.40655035
		 0.16496582 0.0017486693 0.36922035 0.18517025 0.0012145505 0.38860378 0.20312971 -1.500184e-05 0.40316704
		 0.14286458 -0.078746773 0.36185282 0.16045709 -0.089037433 0.37743503 0.17480293 -0.099712327 0.39246282
		 0.082482934 -0.13747869 0.35329145 0.09264487 -0.15467988 0.36501506 0.10090271 -0.17168565 0.37876838
		 -1.7275354e-09 -0.15892126 0.34964472 -9.235066e-10 -0.178609 0.35982555 -4.9348969e-10 -0.19792946 0.37291133
		 -0.082482897 -0.13747869 0.35329139 -0.092644878 -0.15467989 0.365015 -0.10090271 -0.17168567 0.37876832
		 -0.1428646 -0.078746751 0.36185282 -0.1604571 -0.089037433 0.37743506 -0.17480293 -0.099712335 0.39246285
		 -0.16496584 0.0017486695 0.36922038 -0.18517026 0.0012145505 0.38860378 -0.20312972 -1.500184e-05 0.40316704
		 -0.14286461 0.082130425 0.36659175 -0.1604623 0.092607677 0.39016485 -0.17499882 0.1005039 0.40655038
		 -0.082482897 0.14251211 0.36659172 -0.092641018 0.16037339 0.39277685 -0.10103057 0.17440358 0.40939799
		 -1.1334578e-10 0.18215969 0.48806208 -2.1472744e-09 0.14798164 0.53448462 -3.5879566e-10 0.18515752 0.50585401
		 -7.4530249e-10 0.17972003 0.52095616 -1.5154598e-09 0.16672611 0.53102642 0.073898479 0.12818056 0.53448462
		 0.090982608 0.15778093 0.48806208 0.083265483 0.14441517 0.53102642 0.089760929 0.15566863 0.5209561
		 0.092479654 0.16037761 0.50585395 0.12799589 0.074083172 0.53448457 0.15758647 0.091177098 0.48806208
		 0.14422001 0.083460644 0.53102642 0.15547046 0.089959122 0.52095616 0.16017947 0.092677839 0.50585401
		 0.14785433 0.00018597902 0.5297212 0.18620771 0.00014581977 0.48647857 0.16653095 0.00019515606 0.53102648
		 0.17952184 0.00019819451 0.52095616 0.18495932 0.00019819448 0.50585401 0.12800069 -0.082614869 0.53009737
		 0.15758418 -0.095854081 0.48235092 0.1442205 -0.091453627 0.52596855 0.15547046 -0.097088225 0.51543939
		 0.16017945 -0.098693371 0.50010014 0.073892266 -0.13884954 0.52279043 0.090979658 -0.16319898 0.4723511
		 0.083263293 -0.15469265 0.51737064 0.089760922 -0.16483581 0.50584054 0.092479646 -0.1678506 0.48999318
		 1.9587674e-09 -0.15916085 0.51950169 -1.1327472e-10 -0.18760428 0.46789873 1.1876011e-09 -0.17751209 0.51347995
		 4.1419668e-10 -0.18929175 0.50150323 1.5654678e-10 -0.19285627 0.48545399 -0.073892251 -0.13884954 0.52279049
		 -0.090979651 -0.16319901 0.4723511 -0.083263293 -0.15469265 0.5173707 -0.089760922 -0.16483583 0.50584054
		 -0.092479661 -0.16785063 0.48999316 -0.12800071 -0.082614876 0.53009742 -0.15758418 -0.095854081 0.48235089
		 -0.14422052 -0.091453634 0.52596855 -0.15547046 -0.097088225 0.51543933 -0.16017945 -0.098693371 0.50010008
		 -0.14785434 0.00018597902 0.52972132 -0.18620771 0.00014581978 0.4864786 -0.16653097 0.00019515607 0.53102642
		 -0.17952186 0.00019819448 0.5209561 -0.18495935 0.0001981945 0.50585401 -0.12799592 0.074083164 0.53448468
		 -0.15758649 0.091177098 0.48806205 -0.14422002 0.083460644 0.53102648 -0.15547048 0.089959122 0.5209561
		 -0.16017945 0.092677839 0.50585401 -0.073898487 0.12818056 0.53448468 -0.090982608 0.15778096 0.48806205
		 -0.083265476 0.14441516 0.53102642 -0.089760914 0.15566866 0.52095616 -0.092479654 0.16037764 0.50585401
		 1.1385737e-10 0.20092 0.42384279 0.10095754 0.17389426 0.42280179 0.17487717 0.10005078 0.41995746
		 0.20332591 -0.00071109604 0.4153834 0.17464344 -0.10158264 0.40574357 0.10080957 -0.17390984 0.39195538
		 -2.0595792e-10 -0.20025547 0.38599589 -0.10080956 -0.17390986 0.39195535 -0.17464344 -0.10158264 0.4057436
		 -0.20332593 -0.00071109593 0.41538343 -0.17487717 0.10005078 0.41995743 -0.10095752 0.17389426 0.42280176
		 0.23411787 0.048835248 0.36159232 0.23411785 -0.048835248 0.36159232 0.2341179 0.048835225 0.45926282
		 0.23411784 -0.048835259 0.45926282 0.29088911 0.048835237 0.36159232 0.29088911 -0.048835244 0.36159232
		 0.29088911 -0.048835263 0.45926279 0.29088917 0.048835222 0.45926279 0.30373693 0.04883524 0.36159232
		 0.33261138 0.04883524 0.36159232 0.26439878 -0.048835251 0.36159232 0.37035516 -0.04857384 0.36185372
		 0.37035516 0.048573822 0.36185372 0.37035522 0.048573814 0.45900139 0.37035516 -0.048573863 0.45900133
		 0.30373693 -0.048835263 0.45926279 0.33261138 -0.048835266 0.45926279 0.30373698 0.048835225 0.45926282
		 0.33261141 0.048835225 0.45926279 0.23411784 -0.06257017 0.43713433 0.23411784 -0.067148477 0.41042757
		 0.23411785 -0.062570162 0.38372079 0.23411788 0.026706761 0.47299775 0.23411788 -1.4387947e-08 0.47757602
		 0.23411785 -0.026706787 0.47299775 0.23411788 0.062570155 0.38372082 0.23411788 0.067148454 0.41042757
		 0.2341179 0.062570147 0.43713433 0.23411785 -0.02670677 0.34785739 0.23411785 7.4832105e-09 0.34327912
		 0.23411785 0.026706785 0.34785742 0.26439881 0.048835255 0.36159232 0.33261135 -0.048835255 0.36159232
		 0.3037369 -0.048835248 0.36159232 0.26439881 -0.048835255 0.45926282 0.26439884 0.048835229 0.45926282
		 0.29088911 -0.026706774 0.34785739 0.29088914 2.357158e-09 0.34327909 0.29088914 0.026706776 0.34785739
		 0.29088914 0.062570147 0.38372079 0.29088917 0.067148447 0.41042757 0.29088917 0.062570147 0.43713433
		 0.29088911 -0.06257017 0.43713433 0.29088911 -0.067148477 0.41042757 0.29088911 -0.06257017 0.38372079
		 0.29088917 0.026706751 0.47299775 0.29088914 -2.1009093e-08 0.47757602 0.29088914 -0.026706794 0.4729977
		 0.37038949 -0.062238995 0.43699035 0.37042382 -0.066795215 0.41042751 0.37038949 -0.062238988 0.3838647
		 0.37038955 0.062238961 0.38386473 0.37042388 0.066795185 0.41042757;
	setAttr ".vt[332:497]" 0.37038955 0.062238954 0.43699038 0.26439884 0.026706753 0.47299775
		 0.26439881 -1.6561177e-08 0.47757602 0.26439881 -0.026706789 0.47299775 0.37038955 0.026562795 0.47266653
		 0.37042388 -2.4084727e-08 0.47722271 0.37038949 -0.026562845 0.47266653 0.26439878 -0.06257017 0.43713433
		 0.26439878 -0.067148469 0.41042757 0.26439878 -0.06257017 0.38372079 0.26439881 0.062570162 0.38372079
		 0.26439881 0.067148454 0.41042757 0.26439884 0.062570147 0.43713433 0.37038949 -0.026562823 0.34818855
		 0.37042388 -5.7590874e-09 0.34363234 0.37038952 0.026562812 0.34818855 0.26439878 -0.026706778 0.34785739
		 0.26439881 5.0910529e-09 0.34327909 0.26439881 0.026706778 0.34785739 0.33261135 -0.026706778 0.34785739
		 0.3037369 -0.026706778 0.34785739 0.33261138 -2.3203661e-09 0.34327909 0.30373693 -2.4858338e-10 0.34327909
		 0.33261141 0.026706764 0.34785739 0.30373695 0.02670677 0.34785739 0.33261138 0.062570155 0.38372079
		 0.30373693 0.062570155 0.38372079 0.33261141 0.067148447 0.41042757 0.30373695 0.067148447 0.41042757
		 0.33261141 0.062570155 0.43713433 0.30373695 0.06257014 0.43713433 0.33261135 -0.062570177 0.43713433
		 0.3037369 -0.06257017 0.43713433 0.33261138 -0.067148477 0.41042757 0.30373693 -0.067148477 0.41042757
		 0.33261135 -0.06257017 0.38372079 0.3037369 -0.06257017 0.38372079 0.33261141 0.026706744 0.4729977
		 0.30373695 0.026706746 0.47299775 0.33261141 -2.1601128e-08 0.47757599 0.30373695 -2.0966372e-08 0.47757602
		 0.33261138 -0.026706802 0.4729977 0.30373693 -0.026706794 0.47299775 0.22724119 -0.060186885 0.35392576
		 0.14335619 -0.060186874 0.35392579 0.22724119 0.06018687 0.35392576 0.1433562 0.060186859 0.35392579
		 0.22567637 -0.060882989 0.4713105 0.14492097 -0.060882967 0.47131053 0.2256764 0.060882952 0.4713105
		 0.144921 0.060882956 0.47131053 0.2315661 0.036121845 0.34066388 0.23452458 -8.8347214e-09 0.33620295
		 0.23156609 -0.036121864 0.34066388 0.13903128 -0.036121853 0.34066388 0.1360728 6.6288699e-09 0.33620295
		 0.13903129 0.036121856 0.34066388 0.23222552 0.070757955 0.43849826 0.23452459 0.074224576 0.41042757
		 0.23225036 0.070795432 0.38266033 0.13834703 0.070795454 0.38266036 0.13607281 0.074224606 0.41042757
		 0.13837188 0.070757963 0.43849829 0.2315661 -0.036121882 0.48019126 0.23452462 -2.5323519e-08 0.48465219
		 0.23156609 0.03612183 0.48019126 0.13903128 0.036121842 0.48019126 0.13607281 -1.0287103e-08 0.48465219
		 0.13903129 -0.036121864 0.48019126 0.23225035 -0.070795469 0.38266033 0.23452459 -0.074224621 0.41042757
		 0.23222551 -0.070758 0.43849826 0.13837186 -0.070757978 0.43849829 0.13607278 -0.074224599 0.41042757
		 0.138347 -0.070795447 0.38266036 0.20969433 -0.070133865 0.34523094 0.18529867 -0.074707888 0.34104058
		 0.16090305 -0.070133857 0.34523094 0.16090307 0.070133835 0.34523094 0.1852987 0.074707866 0.34104058
		 0.20969431 0.07013385 0.34523094 0.16134259 -0.069763698 0.48019123 0.18529868 -0.074224629 0.48465216
		 0.20925477 -0.069763705 0.48019123 0.16134264 0.069763675 0.48019126 0.18529871 0.074224576 0.48465216
		 0.2092548 0.069763675 0.48019126 0.21083008 -0.038497165 0.32166141 0.18529867 -0.040565155 0.31522745
		 0.1597673 -0.038497154 0.32166144 0.2122016 -8.039045e-10 0.31522745 0.18529867 1.9299851e-09 0.30820429
		 0.1583958 6.799735e-09 0.31522745 0.21083008 0.038497161 0.32166141 0.18529867 0.040565152 0.31522745
		 0.1597673 0.038497161 0.32166144 0.1594501 0.090254225 0.3808344 0.15839583 0.095200077 0.41042757
		 0.15946163 0.090200171 0.44034415 0.18529868 0.096824467 0.37924471 0.18529873 0.10222323 0.41042757
		 0.18529871 0.096765451 0.44195122 0.21114731 0.090254232 0.3808344 0.21220161 0.095200084 0.41042757
		 0.21113576 0.090200163 0.44034415 0.15946162 -0.090200186 0.44034415 0.1583958 -0.095200077 0.41042754
		 0.15945008 -0.09025424 0.3808344 0.1852987 -0.096765481 0.44195122 0.1852987 -0.10222325 0.41042754
		 0.18529867 -0.09682449 0.37924471 0.21113577 -0.090200201 0.44034413 0.21220158 -0.095200092 0.41042754
		 0.21114729 -0.090254255 0.38083437 0.12547779 0.038958095 0.44034415 0.12216183 0.040565155 0.41042757
		 0.12544191 0.03897547 0.3808344 0.12112365 -2.6773108e-09 0.44195122 0.11750405 4.4930113e-09 0.41042757
		 0.1210845 7.4483451e-09 0.37924471 0.12547778 -0.038958095 0.44034415 0.1221618 -0.040565155 0.41042757
		 0.12544191 -0.038975462 0.3808344 0.21083009 0.038497139 0.49919367 0.18529871 0.040565133 0.50562769
		 0.15976731 0.038497146 0.49919373 0.2122016 -2.6946768e-08 0.50562769 0.18529871 -1.9599424e-08 0.51265085
		 0.15839581 -1.396077e-08 0.50562769 0.21083009 -0.038497183 0.49919367 0.18529868 -0.040565174 0.50562769
		 0.15976731 -0.038497176 0.49919373 0.39253911 -0.064247072 0.34648138 0.39253908 -0.064247072 0.47497541
		 0.39253908 0.064247057 0.34648138 0.39253911 0.064247057 0.47497541 0.52103317 -0.064247079 0.34648135
		 0.52103317 -0.064247079 0.47497535 0.52103317 0.064247049 0.34648135 0.52103311 0.064247049 0.47497535
		 0.38316771 0.038117792 0.33710995 0.37846029 -8.9201571e-09 0.33240253 0.38316771 -0.038117811 0.33710995
		 0.38316771 -0.073618501 0.37261066 0.37846029 -0.07832589 0.41072837 0.38316768 -0.073618509 0.44884616
		 0.38316768 -0.038117811 0.48434684 0.37846032 -8.92015e-09 0.4890542 0.38316768 0.038117792 0.48434684
		 0.38316768 0.073618494 0.44884616 0.37846032 0.078325868 0.41072837 0.38316768 0.073618487 0.37261066
		 0.49490383 0.073618472 0.33710995 0.45678613 0.078325875 0.33240256 0.41866839 0.073618487 0.33710995
		 0.41866839 0.073618494 0.48434684 0.4567861 0.078325875 0.48905423 0.49490386 0.073618487 0.48434681
		 0.53040451 0.073618487 0.4488461 0.5351119 0.078325883 0.41072837 0.53040457 0.073618479 0.3726106
		 0.53040457 -0.038117815 0.33710992 0.53511196 -8.9201535e-09 0.33240256 0.53040457 0.038117789 0.33710992
		 0.53040451 0.038117789 0.48434681 0.5351119 -8.9201535e-09 0.48905417;
	setAttr ".vt[498:663]" 0.53040457 -0.038117811 0.48434681 0.53040457 -0.073618501 0.4488461
		 0.53511196 -0.078325897 0.41072837 0.53040457 -0.073618494 0.3726106 0.41866836 -0.073618501 0.33710995
		 0.4567861 -0.078325897 0.33240256 0.49490386 -0.073618494 0.33710995 0.49490386 -0.073618501 0.48434681
		 0.45678613 -0.078325897 0.48905423 0.41866839 -0.073618509 0.48434684 0.41616181 0.093670875 0.3701041
		 0.41397959 0.10046036 0.41072839 0.41616181 0.093670882 0.45135269 0.45678613 0.10046036 0.36792183
		 0.45678613 0.10787158 0.41072837 0.45678613 0.10046036 0.45353493 0.49741045 0.093670882 0.3701041
		 0.49959266 0.10046037 0.41072837 0.49741045 0.093670882 0.45135269 0.55045694 0.040624347 0.37010407
		 0.55724645 0.042806599 0.41072839 0.55045688 0.040624347 0.45135272 0.55724645 -8.9201535e-09 0.36792186
		 0.56465769 -8.9201464e-09 0.41072839 0.55724645 -8.9201535e-09 0.45353493 0.55045694 -0.040624365 0.37010407
		 0.55724645 -0.042806622 0.41072839 0.55045694 -0.040624365 0.45135272 0.49741039 -0.093670897 0.3701041
		 0.49959269 -0.10046038 0.41072837 0.49741036 -0.093670897 0.45135269 0.4567861 -0.10046037 0.36792183
		 0.4567861 -0.1078716 0.41072837 0.45678613 -0.10046037 0.45353493 0.41616184 -0.093670882 0.3701041
		 0.41397959 -0.10046039 0.41072839 0.41616181 -0.093670897 0.45135269 0.41616184 0.040624347 0.31705758
		 0.4567861 0.042806599 0.31026807 0.49741039 0.040624347 0.31705752 0.41397959 -8.9201535e-09 0.31026807
		 0.4567861 -8.9201535e-09 0.30285686 0.49959269 -8.9201464e-09 0.31026807 0.41616184 -0.040624365 0.31705758
		 0.4567861 -0.042806622 0.31026807 0.49741039 -0.040624365 0.31705752 0.49741045 0.040624347 0.50439924
		 0.45678613 0.042806599 0.51118869 0.41616181 0.040624347 0.50439924 0.49959266 -8.9201606e-09 0.51118869
		 0.45678613 -8.9201606e-09 0.51859987 0.41397959 -8.9201535e-09 0.51118869 0.49741045 -0.040624365 0.50439924
		 0.45678613 -0.042806622 0.51118869 0.41616181 -0.040624365 0.50439924 -0.23411778 0.048835248 0.36159226
		 -0.23411776 -0.048835237 0.36159226 -0.23411784 0.048835225 0.45926276 -0.23411779 -0.048835248 0.45926276
		 -0.29088911 0.048835237 0.36159226 -0.29088902 -0.048835237 0.36159226 -0.29088905 -0.048835255 0.45926276
		 -0.29088911 0.048835218 0.45926276 -0.30373687 0.048835237 0.36159226 -0.33261135 0.048835233 0.36159226
		 -0.26439869 -0.048835248 0.36159226 -0.3703551 -0.048573833 0.36185369 -0.37035513 0.048573818 0.36185369
		 -0.37035513 0.048573807 0.45900136 -0.37035513 -0.048573855 0.45900136 -0.30373687 -0.048835259 0.45926276
		 -0.33261135 -0.048835263 0.45926276 -0.30373693 0.048835222 0.45926276 -0.33261135 0.048835218 0.45926276
		 -0.23411778 -0.062570155 0.43713427 -0.23411778 -0.067148469 0.41042748 -0.23411776 -0.062570155 0.3837207
		 -0.23411784 0.026706757 0.47299767 -0.23411784 -1.4387949e-08 0.47757596 -0.23411779 -0.026706785 0.47299767
		 -0.23411784 0.062570155 0.38372076 -0.23411784 0.067148462 0.41042754 -0.23411784 0.062570147 0.43713427
		 -0.23411776 -0.026706768 0.34785736 -0.23411776 7.4832087e-09 0.34327906 -0.23411778 0.026706781 0.34785736
		 -0.26439875 0.048835244 0.36159226 -0.33261129 -0.048835251 0.36159226 -0.30373684 -0.04883524 0.36159226
		 -0.26439875 -0.048835255 0.45926276 -0.26439881 0.048835218 0.45926276 -0.29088902 -0.02670677 0.34785736
		 -0.29088902 2.3571474e-09 0.34327906 -0.29088902 0.026706774 0.34785736 -0.29088911 0.062570147 0.38372076
		 -0.29088911 0.067148447 0.41042754 -0.29088911 0.06257014 0.43713427 -0.29088905 -0.062570162 0.43713427
		 -0.29088902 -0.067148469 0.41042748 -0.29088902 -0.062570162 0.38372076 -0.29088911 0.02670675 0.47299767
		 -0.29088911 -2.1009088e-08 0.47757596 -0.29088911 -0.026706789 0.47299767 -0.37038943 -0.062238988 0.43699035
		 -0.37042376 -0.066795215 0.41042754 -0.3703894 -0.06223898 0.3838647 -0.37038952 0.062238958 0.3838647
		 -0.37042388 0.06679517 0.41042754 -0.37038952 0.06223895 0.43699035 -0.26439881 0.026706751 0.47299767
		 -0.26439875 -1.6561177e-08 0.47757599 -0.26439875 -0.026706785 0.47299767 -0.37038952 0.026562793 0.4726665
		 -0.37042379 -2.4084731e-08 0.47722274 -0.37038952 -0.026562842 0.4726665 -0.26439875 -0.062570162 0.43713427
		 -0.26439869 -0.067148469 0.41042748 -0.26439869 -0.062570162 0.38372076 -0.26439875 0.062570155 0.38372076
		 -0.26439881 0.067148447 0.41042754 -0.26439881 0.06257014 0.43713427 -0.3703894 -0.026562821 0.34818855
		 -0.37042376 -5.7590945e-09 0.34363234 -0.37038949 0.02656281 0.34818855 -0.26439869 -0.026706776 0.34785736
		 -0.26439872 5.0910494e-09 0.34327906 -0.26439872 0.026706776 0.34785736 -0.33261129 -0.026706774 0.34785736
		 -0.30373684 -0.026706776 0.34785736 -0.33261129 -2.3203732e-09 0.34327906 -0.30373684 -2.4858693e-10 0.34327906
		 -0.33261132 0.026706763 0.34785736 -0.30373684 0.026706766 0.34785736 -0.33261135 0.062570147 0.38372076
		 -0.30373693 0.062570155 0.38372076 -0.33261135 0.06714844 0.41042754 -0.30373693 0.067148454 0.41042754
		 -0.33261135 0.062570147 0.4371343 -0.30373693 0.06257014 0.43713427 -0.33261132 -0.06257017 0.43713427
		 -0.30373687 -0.062570162 0.43713427 -0.33261129 -0.067148469 0.41042754 -0.30373684 -0.067148462 0.41042754
		 -0.33261129 -0.06257017 0.38372076 -0.30373684 -0.062570162 0.38372076 -0.33261135 0.026706742 0.47299767
		 -0.30373693 0.026706742 0.47299767 -0.33261135 -2.160113e-08 0.47757596 -0.30373693 -2.0966374e-08 0.47757596
		 -0.33261135 -0.026706798 0.47299767 -0.30373687 -0.026706791 0.47299767 -0.22724108 -0.060186882 0.35392573
		 -0.1433561 -0.06018687 0.35392573 -0.2272411 0.060186863 0.35392573 -0.14335611 0.060186852 0.35392573
		 -0.22567636 -0.060882986 0.47131047 -0.14492093 -0.060882963 0.47131047 -0.22567637 0.060882948 0.47131047
		 -0.14492099 0.060882952 0.47131053 -0.23156603 0.036121845 0.34066379 -0.23452453 -8.8347214e-09 0.33620292
		 -0.23156601 -0.03612186 0.34066382 -0.13903122 -0.036121849 0.34066382 -0.1360727 6.6288663e-09 0.33620292
		 -0.13903123 0.036121853 0.34066382 -0.23222546 0.070757955 0.4384982;
	setAttr ".vt[664:829]" -0.23452456 0.074224576 0.41042748 -0.23225035 0.070795432 0.38266027
		 -0.13834698 0.070795454 0.3826603 -0.13607277 0.074224606 0.41042751 -0.13837183 0.07075797 0.43849823
		 -0.23156604 -0.036121875 0.48019117 -0.23452456 -2.5323518e-08 0.4846521 -0.23156606 0.03612183 0.48019117
		 -0.13903126 0.036121842 0.4801912 -0.13607277 -1.0287101e-08 0.48465213 -0.13903125 -0.03612186 0.4801912
		 -0.23225027 -0.070795454 0.38266027 -0.23452455 -0.074224614 0.41042748 -0.23222545 -0.070757985 0.4384982
		 -0.13837181 -0.070757963 0.43849823 -0.13607271 -0.074224584 0.41042751 -0.13834691 -0.070795439 0.3826603
		 -0.20969425 -0.070133865 0.34523091 -0.18529859 -0.074707873 0.34104058 -0.16090298 -0.07013385 0.34523091
		 -0.16090299 0.070133828 0.34523091 -0.18529861 0.074707866 0.34104058 -0.20969427 0.070133835 0.34523091
		 -0.16134253 -0.06976369 0.4801912 -0.18529862 -0.074224614 0.4846521 -0.20925471 -0.069763705 0.4801912
		 -0.16134259 0.069763668 0.4801912 -0.18529868 0.074224569 0.48465213 -0.20925477 0.06976366 0.4801912
		 -0.21083002 -0.038497165 0.32166138 -0.18529859 -0.040565155 0.31522739 -0.15976721 -0.038497154 0.32166138
		 -0.21220151 -8.039045e-10 0.31522745 -0.18529859 1.9299922e-09 0.30820426 -0.15839571 6.7997323e-09 0.31522742
		 -0.21083003 0.038497154 0.32166138 -0.18529859 0.040565148 0.31522742 -0.15976727 0.038497157 0.32166138
		 -0.15945007 0.090254217 0.3808344 -0.15839578 0.095200069 0.41042751 -0.15946159 0.090200163 0.4403441
		 -0.18529867 0.096824467 0.37924471 -0.18529867 0.10222323 0.41042751 -0.18529868 0.096765451 0.44195119
		 -0.21114726 0.090254217 0.3808344 -0.21220154 0.095200069 0.41042751 -0.21113573 0.090200156 0.4403441
		 -0.15946156 -0.090200186 0.4403441 -0.15839572 -0.095200069 0.41042751 -0.15944999 -0.090254232 0.38083434
		 -0.18529861 -0.096765459 0.44195116 -0.18529859 -0.10222323 0.41042751 -0.18529859 -0.096824467 0.37924466
		 -0.2111357 -0.090200193 0.4403441 -0.21220152 -0.095200084 0.41042751 -0.21114719 -0.090254255 0.38083434
		 -0.12547773 0.038958088 0.4403441 -0.12216175 0.040565155 0.41042751 -0.12544185 0.038975462 0.3808344
		 -0.12112357 -2.6773108e-09 0.44195116 -0.11750398 4.493014e-09 0.41042751 -0.12108446 7.4483513e-09 0.37924466
		 -0.12547767 -0.038958095 0.4403441 -0.12216174 -0.040565148 0.41042751 -0.12544185 -0.038975466 0.38083434
		 -0.21083006 0.038497135 0.49919367 -0.18529868 0.040565129 0.50562757 -0.1597673 0.038497142 0.49919367
		 -0.21220155 -2.6946765e-08 0.50562757 -0.18529868 -1.9599433e-08 0.51265073 -0.1583958 -1.3960774e-08 0.50562757
		 -0.21083005 -0.038497183 0.49919367 -0.18529862 -0.040565174 0.50562757 -0.15976724 -0.038497172 0.49919367
		 -0.39253902 -0.064247072 0.34648132 -0.39253905 -0.064247072 0.47497532 -0.39253905 0.064247049 0.34648132
		 -0.39253905 0.064247049 0.47497532 -0.52103299 -0.064247064 0.34648135 -0.52103299 -0.064247064 0.47497535
		 -0.52103299 0.064247057 0.34648135 -0.52103305 0.064247057 0.47497535 -0.38316765 0.038117789 0.33710989
		 -0.3784602 -8.9201606e-09 0.33240253 -0.38316765 -0.038117811 0.33710989 -0.38316756 -0.073618501 0.37261057
		 -0.3784602 -0.07832589 0.41072834 -0.38316759 -0.073618501 0.44884607 -0.38316759 -0.038117811 0.48434675
		 -0.37846023 -8.9201606e-09 0.4890542 -0.38316759 0.038117789 0.48434675 -0.38316759 0.073618487 0.44884607
		 -0.37846023 0.07832586 0.41072834 -0.38316759 0.073618479 0.37261057 -0.49490374 0.073618464 0.33710992
		 -0.45678601 0.078325868 0.33240253 -0.41866833 0.073618472 0.33710989 -0.41866833 0.073618479 0.48434675
		 -0.45678604 0.078325868 0.48905417 -0.49490374 0.073618479 0.48434675 -0.53040451 0.073618479 0.4488461
		 -0.5351119 0.078325868 0.41072837 -0.53040445 0.073618464 0.3726106 -0.53040445 -0.038117811 0.33710992
		 -0.53511184 -8.9201535e-09 0.33240253 -0.53040445 0.038117789 0.33710992 -0.53040451 0.038117785 0.48434681
		 -0.5351119 -8.9201535e-09 0.48905417 -0.53040445 -0.038117807 0.48434681 -0.53040445 -0.073618501 0.4488461
		 -0.53511184 -0.078325897 0.41072837 -0.53040445 -0.073618494 0.3726106 -0.4186683 -0.073618509 0.33710989
		 -0.45678598 -0.07832589 0.33240253 -0.49490371 -0.073618494 0.33710992 -0.49490374 -0.073618501 0.48434675
		 -0.45678601 -0.07832589 0.48905417 -0.41866833 -0.073618509 0.48434675 -0.41616181 0.09367086 0.37010404
		 -0.4139795 0.10046037 0.41072831 -0.41616181 0.093670875 0.45135263 -0.45678601 0.10046035 0.36792177
		 -0.45678601 0.10787158 0.41072837 -0.45678601 0.10046035 0.4535349 -0.49741027 0.093670875 0.37010404
		 -0.49959257 0.10046037 0.41072837 -0.49741027 0.093670875 0.45135263 -0.55045682 0.040624343 0.37010401
		 -0.55724633 0.042806599 0.41072834 -0.55045688 0.040624343 0.45135266 -0.55724633 -8.9201535e-09 0.3679218
		 -0.56465751 -8.9201535e-09 0.41072834 -0.55724633 -8.9201535e-09 0.45353487 -0.55045682 -0.040624365 0.37010401
		 -0.55724633 -0.042806618 0.41072834 -0.55045682 -0.040624365 0.45135266 -0.49741024 -0.093670882 0.37010404
		 -0.49959254 -0.10046037 0.41072837 -0.49741027 -0.093670882 0.45135263 -0.45678598 -0.10046036 0.36792177
		 -0.45678598 -0.10787158 0.41072837 -0.45678601 -0.10046036 0.4535349 -0.41616178 -0.093670875 0.37010404
		 -0.41397947 -0.10046036 0.41072831 -0.41616181 -0.093670882 0.45135263 -0.41616178 0.040624343 0.31705752
		 -0.45678598 0.042806599 0.31026801 -0.49741024 0.040624343 0.31705752 -0.41397947 -8.9201571e-09 0.31026804
		 -0.45678598 -8.9201535e-09 0.3028568 -0.49959254 -8.9201535e-09 0.31026807 -0.41616178 -0.040624361 0.31705752
		 -0.45678598 -0.042806618 0.31026801 -0.49741024 -0.040624361 0.31705752 -0.49741027 0.040624343 0.50439912
		 -0.45678604 0.042806599 0.51118869 -0.41616181 0.040624343 0.50439918 -0.49959257 -8.9201535e-09 0.51118863
		 -0.45678601 -8.9201535e-09 0.51859993 -0.4139795 -8.9201571e-09 0.51118869 -0.49741027 -0.040624361 0.50439912
		 -0.45678601 -0.042806618 0.51118869 -0.41616181 -0.040624361 0.50439918 -0.15652014 -0.10195976 0.49018323
		 -0.16532584 0.20093811 0.57566231 -0.14903569 0.10839292 0.92359799;
	setAttr ".vt[830:995]" 0.15652017 -0.10195976 0.49018323 0.16532585 0.20093809 0.57566237
		 0.1490353 0.10839297 0.92359799 -0.1824778 0.13427459 0.53022969 -0.20509772 0.047566298 0.51042747
		 -0.18679002 -0.031362019 0.48959419 -0.17077442 -0.12606581 0.52068478 -0.17077442 0.055805445 0.91450995
		 -0.17077477 0.17698377 0.86172152 -0.18169427 0.21359728 0.76735312 -0.18134296 0.21621896 0.65869421
		 0.091655895 0.2350381 0.57386971 0 0.24768594 0.56894583 -0.091655895 0.23503812 0.57386971
		 -0.088423029 0.11625292 0.95343202 -2.0471926e-07 0.12075135 0.96809602 0.088422626 0.11625295 0.95343202
		 0.17077439 0.17698383 0.86172163 0.18169425 0.2135973 0.76735312 0.18134296 0.21621898 0.65869433
		 0.18679 -0.031362012 0.48959416 0.20509773 0.047566295 0.51042753 0.18247782 0.13427459 0.53022975
		 0.17077443 0.055805445 0.91451007 0.17077439 -0.12606579 0.52068484 -0.092817433 -0.1927503 0.47704434
		 7.1054274e-15 -0.22699592 0.47358242 0.092817433 -0.19275032 0.47704431 -0.21729048 -0.045523841 0.52881908
		 -0.23885359 0.065218344 0.5639888 -0.23026614 0.15198985 0.59465182 -0.23304021 0.16196662 0.73926854
		 -0.21729048 0.12218656 0.8452937 -0.084519528 0.27768859 0.68214023 -0.089059763 0.25648248 0.78172678
		 -0.084519573 0.21473689 0.88152874 1.4210855e-14 0.29252312 0.68242425 4.2632564e-14 0.2765967 0.7819345
		 -2.0399683e-07 0.22625677 0.89158106 0.084519185 0.27768859 0.68214023 0.08905939 0.25648248 0.78172678
		 0.08451917 0.21473692 0.88152874 0.23026612 0.15198985 0.59465182 0.2330402 0.16196661 0.73926854
		 0.21729048 0.12218656 0.8452937 0.23885357 0.065218337 0.56398886 0.21729048 -0.045523848 0.52881914
		 0.097309418 -0.21264188 0.50824529 7.1054274e-15 -0.25251114 0.51819831 -0.097309396 -0.21264187 0.50824535
		 -0.099184401 0.17755967 0.50873148 0 0.18033415 0.50273931 0.099184401 0.17755967 0.50873137
		 -0.099299379 0.025333902 0.46559998 1.4210855e-14 0.032851472 0.44933647 0.099299379 0.025333906 0.46560001
		 -0.094237141 -0.05068906 0.46589381 7.1054274e-15 -0.049954746 0.44935358 0.094237126 -0.05068906 0.46589383
		 0.094237134 0.00266121 0.98298353 -1.9492947e-07 0.0023444649 0.99952382 -0.094237521 0.0026611849 0.98298353
		 0.24096538 0.12624405 0.61747354 -0.2409654 0.12624407 0.61747348 -0.13884296 -0.10267055 0.55008072
		 -0.13884297 0.055707205 0.87923795 0.13884297 0.055707209 0.87923789 0.13884297 -0.10267055 0.55008066
		 -0.17666145 -0.037003428 0.55644244 -0.19408441 0.05218479 0.58237749 -0.18946631 0.14270359 0.737131
		 -0.17666145 0.1149147 0.82142621 0.18946628 0.14270361 0.73713106 0.17666145 0.11491471 0.82142627
		 0.19408439 0.052184802 0.58237755 0.17666143 -0.037003428 0.55644256 0.076616667 -0.13770625 0.54680634
		 2.1316282e-14 -0.1500009 0.56376785 -0.076616675 -0.13770628 0.5468064 0.076616675 0.0027875928 0.91441143
		 1.4210855e-14 0.0025301073 0.92785895 -0.076616675 0.0027875942 0.91441143 0.19641717 0.10945708 0.62947315
		 -0.19641721 0.10945708 0.62947315 0.2152054 0.042149112 0.57337463 0.2181251 0.10082002 0.62951607
		 0.089821711 -0.19553308 0.53882307 0.1548087 -0.1296598 0.54292035 -1.897465e-07 -0.012893055 0.98341918
		 -0.085427277 -0.012605958 0.96842527 0.19697598 0.10322031 0.84153616 0.1548087 0.04042599 0.90505016
		 0.21125324 0.13700478 0.74637598 -0.15480867 -0.12965979 0.54292029 -0.089821711 -0.19553307 0.53882313
		 0.19697592 -0.056562871 0.55029416 -0.21520542 0.042149112 0.57337457 -0.19697595 -0.056562882 0.55029416
		 -0.21812515 0.10082003 0.62951607 -0.1548087 0.04042599 0.90505016 -0.19697598 0.1032203 0.8415361
		 -0.21125326 0.13700478 0.74637598 0.085426904 -0.012605935 0.96842527 7.1054274e-15 -0.23594436 0.55572724
		 0.052693099 -0.033238865 0.020780582 0.052693095 0.033238918 0.020780548 0.11917088 -0.033238869 0.020780571
		 0.11917087 0.033238914 0.020780539 0.041613463 0.044318557 0.10997231 0.041613463 -0.04431849 0.10997234
		 0.1302505 -0.04431849 0.10997234 0.13025048 0.044318553 0.10997231 0.047844686 0.019720653 0.015942123
		 0.045409266 2.3427599e-08 0.013511723 0.047844689 -0.019720607 0.015942134 0.10565262 0.038087323 0.015942112
		 0.085931994 0.04052275 0.013511688 0.066211358 0.038087323 0.015942115 0.041613452 -0.044318486 0.15502894
		 0.041613452 -0.04431849 0.17538042 0.12401929 -0.019720608 0.015942138 0.12645471 2.5474332e-08 0.013511728
		 0.12401929 0.019720657 0.015942127 0.066211358 -0.038087279 0.015942149 0.085931987 -0.040522702 0.013511742
		 0.10565262 -0.038087275 0.015942156 0.041850697 0.044081312 0.083292589 0.047607441 0.038324565 0.034634423
		 0.13001326 -0.044081256 0.083292618 0.12425652 -0.038324513 0.034634449 0.13001327 0.044081319 0.083292581
		 0.12425651 0.038324561 0.034634426 0.041613441 0.044318561 0.17538038 0.041613448 0.044318557 0.15502891
		 0.047607452 -0.038324516 0.034634467 0.041850701 -0.044081252 0.083292626 0.13025048 -0.044318486 0.17538042
		 0.1302505 -0.044318486 0.15502894 0.13025047 0.044318557 0.17538038 0.1302505 0.044318546 0.15502889
		 0.029148865 -0.024236659 0.10997234 0.024994016 2.8672732e-08 0.10997234 0.02914886 0.024236716 0.10997232
		 0.061695278 0.056783132 0.10997231 0.085931979 0.060937993 0.10997231 0.11016867 0.056783132 0.10997231
		 0.11016867 -0.056783084 0.10997235 0.085931979 -0.060937945 0.10997235 0.061695289 -0.056783073 0.10997235
		 0.14271508 0.024236726 0.10997231 0.14686994 3.1549234e-08 0.10997232 0.14271508 -0.02423666 0.10997234
		 0.13469416 0.021148091 0.033295523 0.14241453 0.024106076 0.083247811 0.13822682 2.5133749e-08 0.03212405
		 0.14654936 2.886838e-08 0.083203018 0.13469417 -0.021148039 0.033295535 0.14241453 -0.024106018 0.083247818
		 0.064914562 0.021017447 0.0055891424 0.085931994 0.022146462 0.0020837581 0.1069494 0.021017447 0.0055891396
		 0.063785553 2.3547177e-08 0.0020837756 0.085931994 2.3917003e-08 -0.0017426329 0.10807843 2.4714e-08 0.0020837733
		 0.064914569 -0.021017397 0.0055891313 0.085931994 -0.022146411 0.00208378;
	setAttr ".vt[996:1161]" 0.10694941 -0.021017401 0.0055891508 0.037169803 -0.021148039 0.033295538
		 0.029449424 -0.024106024 0.083247826 0.033637155 2.5305999e-08 0.03212405 0.025314596 2.7936217e-08 0.083203033
		 0.037169803 0.021148089 0.033295516 0.029449429 0.024106078 0.083247811 0.14271507 0.024236722 0.15502891
		 0.14271507 0.024236726 0.17538038 0.14686993 3.2638521e-08 0.15502891 0.14686993 3.4432638e-08 0.17538039
		 0.14271508 -0.024236655 0.15502892 0.14271508 -0.024236653 0.17538039 0.061825924 0.056482572 0.083247803
		 0.085931979 0.060617402 0.083203003 0.11003803 0.056482587 0.083247796 0.064783916 0.048762202 0.033295508
		 0.085931987 0.052294847 0.032124028 0.10708005 0.048762206 0.033295508 0.11016867 -0.056783076 0.15502894
		 0.11016866 -0.056783073 0.17538041 0.085931979 -0.060937945 0.15502894 0.085931979 -0.060937945 0.17538042
		 0.061695285 -0.056783073 0.15502894 0.061695281 -0.056783073 0.17538042 0.061695281 0.056783125 0.15502889
		 0.061695274 0.056783136 0.17538038 0.085931972 0.060937993 0.15502889 0.085931964 0.06093799 0.17538036
		 0.11016866 0.056783121 0.15502888 0.11016865 0.05678314 0.17538036 0.029148858 -0.024236659 0.15502892
		 0.029148858 -0.024236657 0.17538041 0.024994012 3.0381415e-08 0.15502892 0.024993997 3.3061912e-08 0.17538039
		 0.029148856 0.024236722 0.15502891 0.029148869 0.024236724 0.17538039 0.10708005 -0.048762158 0.033295553
		 0.11003803 -0.056482527 0.083247833 0.085931987 -0.052294809 0.03212408 0.085931987 -0.060617357 0.08320304
		 0.064783923 -0.048762165 0.033295549 0.061825939 -0.05648252 0.083247848 0.04161346 -0.044318486 0.13250065
		 0.041613452 0.044318557 0.13250062 0.13025051 -0.04431849 0.13250063 0.1302505 0.044318549 0.1325006
		 0.14271507 -0.024236659 0.13250063 0.14686993 3.209388e-08 0.13250062 0.14271507 0.024236722 0.1325006
		 0.061695289 -0.056783073 0.13250065 0.085931979 -0.060937945 0.13250065 0.11016867 -0.056783076 0.13250063
		 0.11016867 0.056783129 0.13250059 0.085931972 0.060937993 0.1325006 0.061695281 0.056783132 0.1325006
		 0.029148856 0.024236718 0.1325006 0.024994014 2.9527072e-08 0.13250062 0.029148862 -0.024236659 0.13250063
		 0.04240609 0.043525919 0.05900133 0.12945788 -0.043525863 0.05900136 0.12945788 0.043525927 0.059001334
		 0.042406093 -0.043525867 0.059001371 0.14152114 0.023902776 0.05827048 0.14557102 2.7159551e-08 0.057628065
		 0.14152114 -0.023902722 0.058270492 0.030342812 -0.023902722 0.058270503 0.026292937 2.6758173e-08 0.057628077
		 0.030342815 0.023902776 0.05827048 0.062029231 0.055589184 0.058270473 0.085931979 0.059639066 0.057628043
		 0.10983472 0.055589192 0.058270473 0.10983472 -0.055589139 0.05827051 0.085931994 -0.059639025 0.057628099
		 0.062029246 -0.055589143 0.058270518 -0.052693091 -0.033238865 0.020780578 -0.052693088 0.033238914 0.020780547
		 -0.11917087 -0.033238862 0.020780573 -0.11917086 0.033238914 0.020780539 -0.041613456 0.044318549 0.1099723
		 -0.041613463 -0.04431849 0.10997233 -0.13025048 -0.04431849 0.10997234 -0.13025048 0.044318549 0.10997231
		 -0.047844686 0.019720653 0.015942123 -0.045409266 2.3427598e-08 0.013511722 -0.047844686 -0.019720605 0.015942132
		 -0.10565261 0.038087316 0.015942112 -0.085931987 0.040522747 0.013511685 -0.06621135 0.038087323 0.015942113
		 -0.041613452 -0.044318486 0.15502891 -0.041613452 -0.04431849 0.17538039 -0.12401928 -0.019720608 0.015942136
		 -0.1264547 2.5474328e-08 0.013511727 -0.12401928 0.019720655 0.015942125 -0.066211358 -0.038087271 0.015942147
		 -0.085931987 -0.040522698 0.01351174 -0.10565261 -0.038087275 0.015942154 -0.041850697 0.044081308 0.083292589
		 -0.047607437 0.038324561 0.034634426 -0.13001326 -0.044081252 0.083292618 -0.12425651 -0.038324509 0.034634452
		 -0.13001324 0.044081315 0.083292581 -0.12425651 0.038324561 0.03463443 -0.041613441 0.044318553 0.17538035
		 -0.041613448 0.044318549 0.15502888 -0.047607441 -0.038324513 0.034634467 -0.041850697 -0.044081252 0.083292618
		 -0.13025048 -0.044318486 0.17538041 -0.1302505 -0.044318486 0.15502892 -0.13025047 0.044318553 0.17538036
		 -0.13025047 0.044318542 0.15502888 -0.029148864 -0.024236657 0.10997233 -0.02499401 2.867273e-08 0.10997232
		 -0.029148856 0.024236714 0.10997231 -0.061695274 0.056783129 0.10997229 -0.085931972 0.060937986 0.1099723
		 -0.11016866 0.056783125 0.10997229 -0.11016866 -0.05678308 0.10997234 -0.085931979 -0.060937937 0.10997234
		 -0.061695285 -0.056783065 0.10997234 -0.14271507 0.024236724 0.1099723 -0.14686993 3.1549231e-08 0.10997231
		 -0.14271507 -0.024236657 0.10997232 -0.13469416 0.021148089 0.03329552 -0.14241451 0.024106074 0.083247803
		 -0.13822679 2.5133749e-08 0.03212405 -0.14654934 2.8868373e-08 0.08320301 -0.13469416 -0.021148039 0.033295531
		 -0.14241453 -0.024106015 0.083247811 -0.064914562 0.021017445 0.005589142 -0.085931987 0.022146462 0.0020837579
		 -0.1069494 0.021017443 0.0055891392 -0.063785546 2.3547173e-08 0.0020837756 -0.085931987 2.3916996e-08 -0.0017426328
		 -0.10807841 2.4713996e-08 0.0020837733 -0.064914569 -0.021017397 0.0055891313 -0.085931994 -0.022146409 0.0020837798
		 -0.1069494 -0.021017401 0.0055891499 -0.037169799 -0.021148039 0.033295531 -0.029449422 -0.02410602 0.083247818
		 -0.033637155 2.5305999e-08 0.032124046 -0.025314594 2.7936217e-08 0.083203025 -0.037169803 0.021148087 0.033295512
		 -0.029449426 0.024106074 0.083247803 -0.14271505 0.024236722 0.15502889 -0.14271507 0.024236724 0.17538036
		 -0.14686991 3.2638518e-08 0.15502889 -0.14686991 3.4432631e-08 0.17538038 -0.14271507 -0.024236651 0.15502891
		 -0.14271507 -0.024236649 0.17538038 -0.061825912 0.056482568 0.083247788 -0.085931964 0.060617395 0.083203003
		 -0.11003802 0.05648258 0.083247788 -0.064783916 0.048762199 0.033295508 -0.085931979 0.052294839 0.032124028
		 -0.10708004 0.048762195 0.033295501 -0.11016865 -0.056783073 0.15502894 -0.11016865 -0.056783069 0.17538042
		 -0.085931972 -0.060937937 0.15502894 -0.085931964 -0.060937937 0.17538042 -0.061695281 -0.056783065 0.15502892
		 -0.061695274 -0.056783065 0.17538041 -0.061695274 0.056783121 0.15502888 -0.061695267 0.056783132 0.17538036
		 -0.085931964 0.060937986 0.15502888 -0.085931964 0.060937982 0.17538036;
	setAttr ".vt[1162:1327]" -0.11016864 0.056783114 0.15502888 -0.11016864 0.056783132 0.17538036
		 -0.029148852 -0.024236657 0.15502892 -0.029148854 -0.024236653 0.17538041 -0.024994008 3.0381415e-08 0.15502892
		 -0.024993993 3.3061909e-08 0.17538039 -0.029148854 0.02423672 0.15502891 -0.029148865 0.024236722 0.17538039
		 -0.10708004 -0.048762154 0.033295546 -0.11003801 -0.056482527 0.083247826 -0.085931987 -0.052294802 0.03212408
		 -0.085931979 -0.06061735 0.08320304 -0.064783923 -0.048762158 0.033295549 -0.061825931 -0.056482513 0.083247833
		 -0.041613456 -0.044318486 0.13250062 -0.041613452 0.044318549 0.13250059 -0.13025048 -0.044318486 0.13250062
		 -0.13025048 0.044318546 0.13250057 -0.14271507 -0.024236655 0.13250062 -0.14686993 3.2093869e-08 0.1325006
		 -0.14271507 0.024236722 0.13250059 -0.061695285 -0.056783065 0.13250063 -0.085931972 -0.060937937 0.13250063
		 -0.11016866 -0.056783073 0.13250063 -0.11016865 0.056783121 0.13250059 -0.085931972 0.060937986 0.13250059
		 -0.061695278 0.056783129 0.13250059 -0.029148856 0.024236716 0.1325006 -0.02499401 2.9527074e-08 0.13250062
		 -0.02914886 -0.024236657 0.13250063 -0.042406086 0.043525912 0.059001327 -0.12945785 -0.043525863 0.059001353
		 -0.12945786 0.043525919 0.059001327 -0.042406093 -0.043525867 0.059001368 -0.14152113 0.023902774 0.05827048
		 -0.14557102 2.7159544e-08 0.057628054 -0.14152116 -0.023902718 0.058270492 -0.030342808 -0.02390272 0.058270492
		 -0.026292935 2.6758173e-08 0.057628073 -0.030342812 0.023902774 0.058270469 -0.062029224 0.05558918 0.058270466
		 -0.085931979 0.059639059 0.057628043 -0.10983472 0.055589184 0.058270466 -0.10983472 -0.055589139 0.058270503
		 -0.085931987 -0.059639022 0.057628095 -0.062029243 -0.055589136 0.05827051 -0.09748657 -0.097486593 0.15036547
		 -0.093651697 -0.093651704 0.45255238 -0.097486578 0.09748657 0.15036547 -0.093651712 0.093651697 0.45255241
		 0.097486585 -0.097486585 0.15036547 0.09365169 -0.093651704 0.45255247 0.097486585 0.097486578 0.15036546
		 0.093651704 0.09365169 0.45255247 -0.1287038 -0.12870382 0.26538113 -0.12870382 0.12870382 0.2653811
		 0.12870382 0.12870382 0.2653811 0.12870382 -0.12870382 0.2653811 -0.1117065 0.057838786 0.14617653
		 -0.11884937 3.0756322e-09 0.14407235 -0.11170651 -0.057838779 0.14617655 -0.1269023 -0.12690227 0.31956726
		 -0.12100253 -0.12100253 0.37503654 -0.10850038 -0.10850039 0.42257741 -0.10706336 -0.05551447 0.46305633
		 -0.11378058 -5.1260329e-10 0.46833268 -0.10706335 0.055514477 0.46305633 -0.12874703 0.12874705 0.22043157
		 -0.12425595 0.12425597 0.18632509 -0.11238234 0.11238234 0.16295025 0.057838779 0.11170651 0.14617653
		 3.4174263e-10 0.11884939 0.14407237 -0.057838786 0.11170653 0.14617655 -0.055514477 0.10706337 0.46305636
		 -1.1960708e-09 0.11378061 0.46833265 0.055514477 0.10706336 0.46305633 0.12874705 0.12874703 0.22043158
		 0.12425598 0.12425596 0.1863251 0.11238234 0.11238234 0.16295023 0.11170651 -0.057838783 0.14617652
		 0.11884938 2.2212916e-09 0.14407235 0.11170653 0.057838783 0.14617652 0.10706338 0.055514477 0.46305639
		 0.11378062 1.1960806e-09 0.46833265 0.10706337 -0.055514477 0.46305636 0.12874703 -0.12874705 0.22043158
		 0.12425596 -0.12425597 0.1863251 0.11238234 -0.11238234 0.16295023 -0.05783879 -0.11170652 0.14617653
		 -2.7338913e-09 -0.11884938 0.14407237 0.057838775 -0.11170652 0.14617653 0.055514473 -0.10706337 0.46305636
		 1.3669421e-09 -0.11378061 0.46833265 -0.055514481 -0.10706336 0.46305636 -0.11238234 -0.11238234 0.16295026
		 -0.12425597 -0.12425596 0.18632509 -0.12874705 -0.12874703 0.22043157 -0.10850038 0.10850037 0.42257741
		 -0.12100253 0.12100253 0.37503654 -0.12690227 0.1269023 0.3195672 0.10850038 0.10850039 0.42257747
		 0.12100253 0.12100253 0.37503651 0.1269023 0.12690228 0.31956717 0.1085004 -0.10850037 0.42257747
		 0.12100253 -0.12100253 0.37503651 0.12690228 -0.1269023 0.31956717 0.070384897 -0.16490178 0.2653811
		 -2.3921558e-09 -0.17696777 0.26538116 -0.070384905 -0.16490178 0.26538113 0.16490178 0.070384897 0.26538113
		 0.17696777 2.3921594e-09 0.2653811 0.16490179 -0.070384897 0.2653811 -0.070384905 0.16490178 0.26538116
		 -2.3921558e-09 0.17696777 0.2653811 0.07038489 0.16490179 0.26538107 -0.16490178 -0.070384897 0.2653811
		 -0.17696775 -2.3921594e-09 0.26538113 -0.16490178 0.070384897 0.2653811 -0.16259676 -0.069398828 0.31966448
		 -0.15506019 -0.066166461 0.37581444 -0.13790508 -0.059898071 0.42548409 -0.17449592 2.5630165e-10 0.31976169
		 -0.16642079 1.5378152e-09 0.37659237 -0.14781025 -5.1260329e-10 0.42802733 -0.16259675 0.069398835 0.31966442
		 -0.15506017 0.066166468 0.37581444 -0.13790508 0.059898071 0.42548409 -0.069398835 0.16259675 0.31966448
		 -0.066166468 0.15506019 0.37581444 -0.059898078 0.13790506 0.42548409 2.990177e-10 0.17449592 0.31976166
		 1.7087842e-10 0.16642079 0.37659234 -1.1960779e-09 0.14781025 0.4280273 0.069398835 0.16259676 0.31966439
		 0.066166461 0.15506017 0.37581444 0.059898071 0.13790508 0.42548409 0.16259676 0.069398835 0.31966448
		 0.15506019 0.066166461 0.37581441 0.13790508 0.059898078 0.42548406 0.17449592 -2.990177e-10 0.31976166
		 0.16642079 -1.7086599e-10 0.37659234 0.14781025 1.1960815e-09 0.4280273 0.16259675 -0.069398835 0.31966439
		 0.15506017 -0.066166468 0.37581441 0.13790508 -0.059898071 0.42548406 0.069398835 -0.16259675 0.31966448
		 0.066166461 -0.15506019 0.37581444 0.059898078 -0.13790506 0.42548409 -3.5882302e-09 -0.17449594 0.31976175
		 -1.7086066e-10 -0.16642079 0.37659234 1.1960708e-09 -0.14781025 0.4280273 -0.069398835 -0.16259676 0.31966451
		 -0.066166468 -0.15506019 0.37581444 -0.059898071 -0.13790508 0.42548409 -0.061642151 0.061642155 0.13721329
		 -1.0252137e-09 0.064953446 0.13417847 0.061642155 0.061642155 0.13721327 -0.064953461 -1.7086843e-09 0.13417847
		 1.8795507e-09 2.3921576e-09 0.13086574 0.064953439 3.7591041e-09 0.13417846 -0.061642155 -0.061642148 0.13721329
		 1.3669474e-09 -0.064953446 0.13417847 0.061642148 -0.061642155 0.1372133 0.058898266 0.058898274 0.48553213
		 8.5435659e-10 0.061962996 0.49314207 -0.058898278 0.05889827 0.48553213;
	setAttr ".vt[1328:1369]" 0.061962992 6.8347372e-10 0.4931421 8.5434948e-10 2.7338942e-09 0.50144893
		 -0.061963007 4.1008414e-09 0.49314207 0.058898274 -0.05889827 0.48553213 1.0252066e-09 -0.061963003 0.4931421
		 -0.058898266 -0.05889827 0.48553216 0.062014386 -0.14298938 0.16179101 0.067931317 -0.15928288 0.18601485
		 0.0704059 -0.16496713 0.22039278 -2.5630262e-09 -0.15334843 0.16077681 -2.3921567e-09 -0.1709836 0.18570462
		 -2.9047627e-09 -0.17704365 0.22035402 -0.062014397 -0.14298938 0.16179106 -0.067931339 -0.15928289 0.18601486
		 -0.070405893 -0.16496715 0.22039279 0.14298938 0.06201439 0.16179103 0.15928289 0.067931324 0.18601486
		 0.16496713 0.0704059 0.22039279 0.15334843 -1.1960761e-09 0.16077684 0.1709836 6.8347283e-10 0.18570462
		 0.17704365 1.3242314e-09 0.22035402 0.14298937 -0.062014397 0.16179106 0.15928288 -0.067931324 0.18601486
		 0.16496715 -0.070405893 0.22039279 -0.062014397 0.14298938 0.16179103 -0.067931324 0.15928288 0.18601486
		 -0.0704059 0.16496713 0.22039279 2.5630307e-09 0.15334843 0.16077684 -6.8347106e-10 0.17098358 0.18570463
		 -1.3242314e-09 0.17704365 0.22035404 0.06201439 0.14298938 0.16179104 0.067931324 0.15928288 0.18601485
		 0.070405886 0.16496715 0.22039278 -0.1429894 -0.06201439 0.16179101 -0.15928289 -0.067931332 0.18601488
		 -0.16496713 -0.070405893 0.22039281 -0.15334842 2.5630271e-09 0.16077681 -0.17098357 -6.8347283e-10 0.18570465
		 -0.17704365 -1.3242296e-09 0.22035405 -0.14298937 0.062014397 0.16179104 -0.15928286 0.067931324 0.18601485
		 -0.16496715 0.070405893 0.22039278;
	setAttr -s 2674 ".ed";
	setAttr ".ed[0:165]"  44 45 0 45 48 0 48 47 0 47 44 0 45 46 0 46 49 0 49 48 0
		 48 51 0 51 50 0 50 47 0 49 52 0 52 51 0 0 11 0 11 44 0 44 10 0 10 0 0 11 12 0 12 45 0
		 12 13 0 13 46 0 13 1 0 1 14 0 14 46 0 14 15 0 15 49 0 15 16 0 16 52 0 16 3 0 3 17 0
		 17 52 0 17 18 0 18 51 0 18 19 0 19 50 0 8 50 0 19 2 0 2 8 0 9 47 0 8 9 0 9 10 0 53 54 0
		 54 57 0 57 56 0 56 53 0 54 55 0 55 58 0 58 57 0 57 60 0 60 59 0 59 56 0 58 61 0 61 60 0
		 19 53 0 53 22 0 22 2 0 18 54 0 17 55 0 3 23 0 23 55 0 23 24 0 24 58 0 24 25 0 25 61 0
		 25 7 0 7 26 0 26 61 0 26 27 0 27 60 0 27 28 0 28 59 0 20 59 0 28 6 0 6 20 0 21 56 0
		 20 21 0 21 22 0 62 63 0 63 66 0 66 65 0 65 62 0 63 64 0 64 67 0 67 66 0 66 69 0 69 68 0
		 68 65 0 67 70 0 70 69 0 28 62 0 62 31 0 31 6 0 27 63 0 26 64 0 7 32 0 32 64 0 32 33 0
		 33 67 0 33 34 0 34 70 0 34 5 0 5 35 0 35 70 0 35 36 0 36 69 0 36 37 0 37 68 0 29 68 0
		 37 4 0 4 29 0 30 65 0 29 30 0 30 31 0 71 72 0 72 75 0 75 74 0 74 71 0 72 73 0 73 76 0
		 76 75 0 75 78 0 78 77 0 77 74 0 76 79 0 79 78 0 37 71 0 71 40 0 40 4 0 36 72 0 35 73 0
		 5 41 0 41 73 0 41 42 0 42 76 0 42 43 0 43 79 0 43 1 0 13 79 0 12 78 0 11 77 0 38 77 0
		 0 38 0 39 74 0 38 39 0 39 40 0 80 81 0 81 84 0 84 83 0 83 80 0 81 82 0 82 85 0 85 84 0
		 84 87 0 87 86 0 86 83 0 85 88 0 88 87 0 22 80 0 80 8 0 21 81 0 20 82 0 31 82 0 30 85 0
		 29 88 0 40 88 0 39 87 0 38 86 0;
	setAttr ".ed[166:331]" 10 86 0 9 83 0 89 90 0 90 93 0 93 92 0 92 89 0 90 91 0
		 91 94 0 94 93 0 93 96 0 96 95 0 95 92 0 94 97 0 97 96 0 25 89 0 89 32 0 24 90 0 23 91 0
		 16 91 0 15 94 0 14 97 0 43 97 0 42 96 0 41 95 0 34 95 0 33 92 0 126 127 0 127 130 0
		 130 129 0 129 126 0 127 128 0 128 131 0 131 130 0 130 133 0 133 132 0 132 129 0 131 134 0
		 134 133 0 98 105 0 105 126 0 126 104 0 104 98 0 105 106 0 106 127 0 106 107 0 107 128 0
		 107 99 0 99 108 0 108 128 0 108 109 0 109 131 0 109 110 0 110 134 0 103 129 0 132 102 0
		 102 103 0 103 104 0 135 136 0 136 139 0 139 138 0 138 135 0 136 137 0 137 140 0 140 139 0
		 139 142 0 142 141 0 141 138 0 140 143 0 143 142 0 137 114 0 114 115 0 115 140 0 115 116 0
		 116 143 0 116 101 0 101 117 0 117 143 0 117 118 0 118 142 0 118 119 0 119 141 0 111 141 0
		 119 100 0 100 111 0 112 138 0 111 112 0 113 135 0 112 113 0 144 145 0 145 148 0 148 147 0
		 147 144 0 145 146 0 146 149 0 149 148 0 148 151 0 151 150 0 150 147 0 149 152 0 152 151 0
		 119 144 0 144 122 0 122 100 0 118 145 0 117 146 0 101 123 0 123 146 0 123 124 0 124 149 0
		 124 125 0 125 152 0 125 99 0 107 152 0 106 151 0 105 150 0 120 150 0 98 120 0 121 147 0
		 120 121 0 121 122 0 153 154 0 154 157 0 157 156 0 156 153 0 154 155 0 155 158 0 158 157 0
		 157 160 0 160 159 0 159 156 0 158 161 0 161 160 0 155 113 0 112 158 0 111 161 0 122 161 0
		 121 160 0 120 159 0 104 159 0 103 156 0 102 153 0 162 163 0 163 166 0 166 165 0 165 162 0
		 163 164 0 164 167 0 167 166 0 166 169 0 169 168 0 168 165 0 167 170 0 170 169 0 164 110 0
		 109 167 0 108 170 0 125 170 0 124 169 0 123 168 0 116 168 0 115 165 0 114 162 0 223 270 0
		 270 269 0 269 218 0 218 223 0;
	setAttr ".ed[332:497]" 233 272 0 272 271 0 271 228 0 228 233 0 238 273 0 273 272 0
		 233 238 0 243 274 0 274 273 0 238 243 0 248 275 0 275 274 0 243 248 0 253 276 0 276 275 0
		 248 253 0 258 277 0 277 276 0 253 258 0 263 278 0 278 277 0 258 263 0 267 278 0 263 207 0
		 207 267 0 271 270 0 223 228 0 267 268 0 268 176 0 176 173 0 173 267 0 176 175 0 175 172 0
		 172 173 0 175 174 0 174 171 0 171 172 0 268 269 0 269 179 0 179 176 0 179 178 0 178 175 0
		 178 177 0 177 174 0 270 182 0 182 179 0 182 181 0 181 178 0 181 180 0 180 177 0 271 185 0
		 185 182 0 185 184 0 184 181 0 184 183 0 183 180 0 272 188 0 188 185 0 188 187 0 187 184 0
		 187 186 0 186 183 0 273 191 0 191 188 0 191 190 0 190 187 0 190 189 0 189 186 0 274 194 0
		 194 191 0 194 193 0 193 190 0 193 192 0 192 189 0 275 197 0 197 194 0 197 196 0 196 193 0
		 196 195 0 195 192 0 276 200 0 200 197 0 200 199 0 199 196 0 199 198 0 198 195 0 277 203 0
		 203 200 0 203 202 0 202 199 0 202 201 0 201 198 0 278 206 0 206 203 0 206 205 0 205 202 0
		 205 204 0 204 201 0 173 206 0 172 205 0 171 204 0 213 207 0 207 209 0 209 216 0 216 213 0
		 209 210 0 210 215 0 215 216 0 210 211 0 211 214 0 214 215 0 211 208 0 208 212 0 212 214 0
		 218 213 0 216 221 0 221 218 0 215 220 0 220 221 0 214 219 0 219 220 0 212 217 0 217 219 0
		 221 226 0 226 223 0 220 225 0 225 226 0 219 224 0 224 225 0 217 222 0 222 224 0 226 231 0
		 231 228 0 225 230 0 230 231 0 224 229 0 229 230 0 222 227 0 227 229 0 231 236 0 236 233 0
		 230 235 0 235 236 0 229 234 0 234 235 0 227 232 0 232 234 0 236 241 0 241 238 0 235 240 0
		 240 241 0 234 239 0 239 240 0 232 237 0 237 239 0 241 246 0 246 243 0 240 245 0 245 246 0
		 239 244 0 244 245 0 237 242 0 242 244 0 246 251 0 251 248 0 245 250 0;
	setAttr ".ed[498:663]" 250 251 0 244 249 0 249 250 0 242 247 0 247 249 0 251 256 0
		 256 253 0 250 255 0 255 256 0 249 254 0 254 255 0 247 252 0 252 254 0 256 261 0 261 258 0
		 255 260 0 260 261 0 254 259 0 259 260 0 252 257 0 257 259 0 261 266 0 266 263 0 260 265 0
		 265 266 0 259 264 0 264 265 0 257 262 0 262 264 0 266 209 0 265 210 0 264 211 0 262 208 0
		 268 213 0 327 363 0 363 365 0 365 328 0 328 327 0 365 367 0 367 329 0 329 328 0 367 311 0
		 311 290 0 290 329 0 292 297 0 297 369 0 369 336 0 336 292 0 330 357 0 357 359 0 359 331 0
		 331 330 0 359 361 0 361 332 0 332 331 0 361 297 0 292 332 0 311 351 0 351 345 0 345 290 0
		 333 301 0 301 302 0 302 334 0 334 333 0 325 334 0 334 335 0 335 326 0 326 325 0 302 303 0
		 303 335 0 314 333 0 333 324 0 324 286 0 286 314 0 281 301 0 314 281 0 303 282 0 282 313 0
		 313 335 0 313 285 0 285 326 0 321 339 0 339 340 0 340 322 0 322 321 0 369 371 0 371 337 0
		 337 336 0 371 373 0 373 338 0 338 337 0 373 295 0 295 293 0 293 338 0 288 357 0 330 291 0
		 291 288 0 339 298 0 298 299 0 299 340 0 340 341 0 341 323 0 323 322 0 299 300 0 300 341 0
		 313 339 0 321 285 0 282 298 0 300 280 0 280 289 0 289 341 0 289 284 0 284 323 0 318 342 0
		 342 343 0 343 319 0 319 318 0 342 304 0 304 305 0 305 343 0 343 344 0 344 320 0 320 319 0
		 305 306 0 306 344 0 310 342 0 318 283 0 283 310 0 279 304 0 310 279 0 306 281 0 314 344 0
		 286 320 0 315 348 0 348 349 0 349 316 0 316 315 0 351 353 0 353 346 0 346 345 0 353 355 0
		 355 347 0 347 346 0 355 288 0 291 347 0 325 324 0 348 307 0 307 308 0 308 349 0 349 350 0
		 350 317 0 317 316 0 308 309 0 309 350 0 289 348 0 315 284 0 280 307 0 309 279 0 310 350 0
		 283 317 0 351 352 0 352 354 0 354 353 0 354 356 0 356 355 0 311 312 0;
	setAttr ".ed[664:829]" 312 352 0 356 287 0 287 288 0 312 284 0 315 352 0 316 354 0
		 317 356 0 283 287 0 357 358 0 358 360 0 360 359 0 360 362 0 362 361 0 287 358 0 362 296 0
		 296 297 0 318 358 0 319 360 0 320 362 0 286 296 0 363 364 0 364 366 0 366 365 0 366 368 0
		 368 367 0 294 364 0 363 295 0 295 294 0 368 312 0 294 285 0 321 364 0 322 366 0 323 368 0
		 369 370 0 370 372 0 372 371 0 372 374 0 374 373 0 296 370 0 374 294 0 324 370 0 325 372 0
		 326 374 0 327 293 0 419 420 0 420 423 0 423 422 0 422 419 0 420 421 0 421 424 0 424 423 0
		 423 426 0 426 425 0 425 422 0 424 427 0 427 426 0 375 407 0 407 419 0 419 385 0 385 375 0
		 407 408 0 408 420 0 408 409 0 409 421 0 409 376 0 376 386 0 386 421 0 386 387 0 387 424 0
		 387 388 0 388 427 0 388 378 0 378 410 0 410 427 0 410 411 0 411 426 0 411 412 0 412 425 0
		 383 425 0 412 377 0 377 383 0 384 422 0 383 384 0 384 385 0 428 429 0 429 432 0 432 431 0
		 431 428 0 429 430 0 430 433 0 433 432 0 432 435 0 435 434 0 434 431 0 433 436 0 436 435 0
		 378 392 0 392 428 0 428 410 0 392 393 0 393 429 0 393 394 0 394 430 0 394 382 0 382 416 0
		 416 430 0 416 417 0 417 433 0 417 418 0 418 436 0 418 381 0 381 389 0 389 436 0 389 390 0
		 390 435 0 390 391 0 391 434 0 412 434 0 391 377 0 411 431 0 437 438 0 438 441 0 441 440 0
		 440 437 0 438 439 0 439 442 0 442 441 0 441 444 0 444 443 0 443 440 0 442 445 0 445 444 0
		 380 404 0 404 437 0 437 413 0 413 380 0 404 405 0 405 438 0 405 406 0 406 439 0 406 376 0
		 409 439 0 408 442 0 407 445 0 375 401 0 401 445 0 401 402 0 402 444 0 402 403 0 403 443 0
		 415 443 0 403 379 0 379 415 0 414 440 0 415 414 0 414 413 0 446 447 0 447 450 0 450 449 0
		 449 446 0 447 448 0 448 451 0 451 450 0 450 453 0 453 452 0 452 449 0;
	setAttr ".ed[830:995]" 451 454 0 454 453 0 394 446 0 446 398 0 398 382 0 393 447 0
		 392 448 0 388 448 0 387 451 0 386 454 0 406 454 0 405 453 0 404 452 0 400 452 0 380 400 0
		 399 449 0 400 399 0 399 398 0 455 456 0 456 459 0 459 458 0 458 455 0 456 457 0 457 460 0
		 460 459 0 459 462 0 462 461 0 461 458 0 460 463 0 463 462 0 418 455 0 455 397 0 397 381 0
		 417 456 0 416 457 0 398 457 0 399 460 0 400 463 0 413 463 0 414 462 0 415 461 0 395 461 0
		 379 395 0 396 458 0 395 396 0 396 397 0 299 402 0 401 300 0 298 403 0 282 379 0 303 395 0
		 302 396 0 301 397 0 281 381 0 306 389 0 305 390 0 304 391 0 279 377 0 309 383 0 308 384 0
		 307 385 0 280 375 0 337 479 0 479 480 0 480 336 0 480 467 0 467 292 0 467 481 0 481 332 0
		 481 482 0 482 331 0 482 483 0 483 330 0 483 466 0 466 291 0 466 472 0 472 347 0 472 473 0
		 473 346 0 473 474 0 474 345 0 474 464 0 464 290 0 464 475 0 475 329 0 475 476 0 476 328 0
		 476 477 0 477 327 0 477 465 0 465 293 0 465 478 0 478 338 0 478 479 0 508 509 0 509 512 0
		 512 511 0 511 508 0 509 510 0 510 513 0 513 512 0 512 515 0 515 514 0 514 511 0 513 516 0
		 516 515 0 483 508 0 508 486 0 486 466 0 482 509 0 481 510 0 467 487 0 487 510 0 487 488 0
		 488 513 0 488 489 0 489 516 0 489 471 0 471 490 0 490 516 0 490 491 0 491 515 0 491 492 0
		 492 514 0 484 514 0 492 470 0 470 484 0 485 511 0 484 485 0 485 486 0 517 518 0 518 521 0
		 521 520 0 520 517 0 518 519 0 519 522 0 522 521 0 521 524 0 524 523 0 523 520 0 522 525 0
		 525 524 0 492 517 0 517 495 0 495 470 0 491 518 0 490 519 0 471 496 0 496 519 0 496 497 0
		 497 522 0 497 498 0 498 525 0 498 469 0 469 499 0 499 525 0 499 500 0 500 524 0 500 501 0
		 501 523 0 493 523 0 501 468 0 468 493 0 494 520 0 493 494 0 494 495 0;
	setAttr ".ed[996:1161]" 526 527 0 527 530 0 530 529 0 529 526 0 527 528 0 528 531 0
		 531 530 0 530 533 0 533 532 0 532 529 0 531 534 0 534 533 0 501 526 0 526 504 0 504 468 0
		 500 527 0 499 528 0 469 505 0 505 528 0 505 506 0 506 531 0 506 507 0 507 534 0 507 465 0
		 477 534 0 476 533 0 475 532 0 502 532 0 464 502 0 503 529 0 502 503 0 503 504 0 535 536 0
		 536 539 0 539 538 0 538 535 0 536 537 0 537 540 0 540 539 0 539 542 0 542 541 0 541 538 0
		 540 543 0 543 542 0 486 535 0 535 472 0 485 536 0 484 537 0 495 537 0 494 540 0 493 543 0
		 504 543 0 503 542 0 502 541 0 474 541 0 473 538 0 544 545 0 545 548 0 548 547 0 547 544 0
		 545 546 0 546 549 0 549 548 0 548 551 0 551 550 0 550 547 0 549 552 0 552 551 0 489 544 0
		 544 496 0 488 545 0 487 546 0 480 546 0 479 549 0 478 552 0 507 552 0 506 551 0 505 550 0
		 498 550 0 497 547 0 601 602 0 602 639 0 639 637 0 637 601 0 602 603 0 603 641 0 641 639 0
		 603 564 0 564 585 0 585 641 0 566 610 0 610 643 0 643 571 0 571 566 0 604 605 0 605 633 0
		 633 631 0 631 604 0 605 606 0 606 635 0 635 633 0 606 566 0 571 635 0 564 619 0 619 625 0
		 625 585 0 607 608 0 608 576 0 576 575 0 575 607 0 599 600 0 600 609 0 609 608 0 608 599 0
		 609 577 0 577 576 0 588 560 0 560 598 0 598 607 0 607 588 0 555 588 0 575 555 0 609 587 0
		 587 556 0 556 577 0 600 559 0 559 587 0 595 596 0 596 614 0 614 613 0 613 595 0 610 611 0
		 611 645 0 645 643 0 611 612 0 612 647 0 647 645 0 612 567 0 567 569 0 569 647 0 562 565 0
		 565 604 0 631 562 0 614 573 0 573 572 0 572 613 0 596 597 0 597 615 0 615 614 0 615 574 0
		 574 573 0 559 595 0 613 587 0 572 556 0 615 563 0 563 554 0 554 574 0 597 558 0 558 563 0
		 592 593 0 593 617 0 617 616 0 616 592 0 617 579 0 579 578 0 578 616 0;
	setAttr ".ed[1162:1327]" 593 594 0 594 618 0 618 617 0 618 580 0 580 579 0 584 557 0
		 557 592 0 616 584 0 553 584 0 578 553 0 618 588 0 555 580 0 594 560 0 589 590 0 590 623 0
		 623 622 0 622 589 0 619 620 0 620 627 0 627 625 0 620 621 0 621 629 0 629 627 0 621 565 0
		 562 629 0 598 599 0 623 582 0 582 581 0 581 622 0 590 591 0 591 624 0 624 623 0 624 583 0
		 583 582 0 558 589 0 622 563 0 581 554 0 624 584 0 553 583 0 591 557 0 627 628 0 628 626 0
		 626 625 0 629 630 0 630 628 0 626 586 0 586 585 0 562 561 0 561 630 0 626 589 0 558 586 0
		 628 590 0 630 591 0 561 557 0 633 634 0 634 632 0 632 631 0 635 636 0 636 634 0 632 561 0
		 571 570 0 570 636 0 632 592 0 634 593 0 636 594 0 570 560 0 639 640 0 640 638 0 638 637 0
		 641 642 0 642 640 0 568 569 0 569 637 0 638 568 0 586 642 0 638 595 0 559 568 0 640 596 0
		 642 597 0 645 646 0 646 644 0 644 643 0 647 648 0 648 646 0 644 570 0 568 648 0 644 598 0
		 646 599 0 648 600 0 567 601 0 693 696 0 696 697 0 697 694 0 694 693 0 697 698 0 698 695 0
		 695 694 0 696 699 0 699 700 0 700 697 0 700 701 0 701 698 0 649 659 0 659 693 0 693 681 0
		 681 649 0 694 682 0 682 681 0 695 683 0 683 682 0 695 660 0 660 650 0 650 683 0 698 661 0
		 661 660 0 701 662 0 662 661 0 701 684 0 684 652 0 652 662 0 700 685 0 685 684 0 699 686 0
		 686 685 0 657 651 0 651 686 0 699 657 0 658 657 0 696 658 0 659 658 0 702 705 0 705 706 0
		 706 703 0 703 702 0 706 707 0 707 704 0 704 703 0 705 708 0 708 709 0 709 706 0 709 710 0
		 710 707 0 684 702 0 702 666 0 666 652 0 703 667 0 667 666 0 704 668 0 668 667 0 704 690 0
		 690 656 0 656 668 0 707 691 0 691 690 0 710 692 0 692 691 0 710 663 0 663 655 0 655 692 0
		 709 664 0 664 663 0 708 665 0 665 664 0 651 665 0 708 686 0 705 685 0;
	setAttr ".ed[1328:1493]" 711 714 0 714 715 0 715 712 0 712 711 0 715 716 0 716 713 0
		 713 712 0 714 717 0 717 718 0 718 715 0 718 719 0 719 716 0 654 687 0 687 711 0 711 678 0
		 678 654 0 712 679 0 679 678 0 713 680 0 680 679 0 713 683 0 650 680 0 716 682 0 719 681 0
		 719 675 0 675 649 0 718 676 0 676 675 0 717 677 0 677 676 0 689 653 0 653 677 0 717 689 0
		 688 689 0 714 688 0 687 688 0 720 723 0 723 724 0 724 721 0 721 720 0 724 725 0 725 722 0
		 722 721 0 723 726 0 726 727 0 727 724 0 727 728 0 728 725 0 656 672 0 672 720 0 720 668 0
		 721 667 0 722 666 0 722 662 0 725 661 0 728 660 0 728 680 0 727 679 0 726 678 0 674 654 0
		 726 674 0 673 674 0 723 673 0 672 673 0 729 732 0 732 733 0 733 730 0 730 729 0 733 734 0
		 734 731 0 731 730 0 732 735 0 735 736 0 736 733 0 736 737 0 737 734 0 655 671 0 671 729 0
		 729 692 0 730 691 0 731 690 0 731 672 0 734 673 0 737 674 0 737 687 0 736 688 0 735 689 0
		 669 653 0 735 669 0 670 669 0 732 670 0 671 670 0 574 675 0 676 573 0 677 572 0 653 556 0
		 669 577 0 670 576 0 671 575 0 655 555 0 663 580 0 664 579 0 665 578 0 651 553 0 657 583 0
		 658 582 0 659 581 0 649 554 0 610 754 0 754 753 0 753 611 0 566 741 0 741 754 0 606 755 0
		 755 741 0 605 756 0 756 755 0 604 757 0 757 756 0 565 740 0 740 757 0 621 746 0 746 740 0
		 620 747 0 747 746 0 619 748 0 748 747 0 564 738 0 738 748 0 603 749 0 749 738 0 602 750 0
		 750 749 0 601 751 0 751 750 0 567 739 0 739 751 0 612 752 0 752 739 0 753 752 0 782 785 0
		 785 786 0 786 783 0 783 782 0 786 787 0 787 784 0 784 783 0 785 788 0 788 789 0 789 786 0
		 789 790 0 790 787 0 740 760 0 760 782 0 782 757 0 783 756 0 784 755 0 784 761 0 761 741 0
		 787 762 0 762 761 0 790 763 0 763 762 0 790 764 0 764 745 0 745 763 0;
	setAttr ".ed[1494:1659]" 789 765 0 765 764 0 788 766 0 766 765 0 758 744 0 744 766 0
		 788 758 0 759 758 0 785 759 0 760 759 0 791 794 0 794 795 0 795 792 0 792 791 0 795 796 0
		 796 793 0 793 792 0 794 797 0 797 798 0 798 795 0 798 799 0 799 796 0 744 769 0 769 791 0
		 791 766 0 792 765 0 793 764 0 793 770 0 770 745 0 796 771 0 771 770 0 799 772 0 772 771 0
		 799 773 0 773 743 0 743 772 0 798 774 0 774 773 0 797 775 0 775 774 0 767 742 0 742 775 0
		 797 767 0 768 767 0 794 768 0 769 768 0 800 803 0 803 804 0 804 801 0 801 800 0 804 805 0
		 805 802 0 802 801 0 803 806 0 806 807 0 807 804 0 807 808 0 808 805 0 742 778 0 778 800 0
		 800 775 0 801 774 0 802 773 0 802 779 0 779 743 0 805 780 0 780 779 0 808 781 0 781 780 0
		 808 751 0 739 781 0 807 750 0 806 749 0 776 738 0 806 776 0 777 776 0 803 777 0 778 777 0
		 809 812 0 812 813 0 813 810 0 810 809 0 813 814 0 814 811 0 811 810 0 812 815 0 815 816 0
		 816 813 0 816 817 0 817 814 0 746 809 0 809 760 0 810 759 0 811 758 0 811 769 0 814 768 0
		 817 767 0 817 778 0 816 777 0 815 776 0 815 748 0 812 747 0 818 821 0 821 822 0 822 819 0
		 819 818 0 822 823 0 823 820 0 820 819 0 821 824 0 824 825 0 825 822 0 825 826 0 826 823 0
		 770 818 0 818 763 0 819 762 0 820 761 0 820 754 0 823 753 0 826 752 0 826 781 0 825 780 0
		 824 779 0 824 772 0 821 771 0 827 836 0 836 858 0 858 835 0 835 827 0 862 837 0 837 829 0
		 829 838 0 838 862 0 861 862 0 838 839 0 839 861 0 860 861 0 839 840 0 840 860 0 833 860 0
		 860 828 0 828 833 0 834 859 0 859 860 0 833 834 0 858 859 0 834 835 0 863 864 0 864 867 0
		 867 866 0 866 863 0 864 865 0 865 868 0 868 867 0 867 870 0 870 869 0 869 866 0 868 871 0
		 871 870 0 828 840 0 840 863 0 863 843 0 843 828 0 839 864 0 838 865 0;
	setAttr ".ed[1660:1825]" 829 844 0 844 865 0 844 845 0 845 868 0 845 846 0 846 871 0
		 846 832 0 832 847 0 847 871 0 847 848 0 848 870 0 848 849 0 849 869 0 841 869 0 849 831 0
		 831 841 0 842 866 0 841 842 0 842 843 0 831 872 0 872 852 0 852 831 0 848 873 0 873 872 0
		 872 849 0 847 874 0 874 873 0 832 853 0 853 874 0 850 876 0 876 854 0 854 830 0 830 850 0
		 851 875 0 875 876 0 850 851 0 872 875 0 851 852 0 854 877 0 877 857 0 857 830 0 855 879 0
		 879 836 0 827 855 0 856 878 0 878 879 0 855 856 0 877 878 0 856 857 0 880 881 0 881 884 0
		 884 883 0 883 880 0 881 882 0 882 885 0 885 884 0 884 887 0 887 886 0 886 883 0 885 888 0
		 888 887 0 843 880 0 880 833 0 842 881 0 841 882 0 852 882 0 851 885 0 850 888 0 857 888 0
		 856 887 0 855 886 0 835 886 0 834 883 0 846 889 0 889 853 0 845 890 0 890 889 0 844 891 0
		 891 890 0 837 891 0 860 893 0 893 861 0 873 892 0 892 872 0 914 915 0 915 912 0 912 904 0
		 904 914 0 916 917 0 917 897 0 897 906 0 906 916 0 918 919 0 919 911 0 911 910 0 910 918 0
		 920 921 0 921 896 0 896 903 0 903 920 0 915 922 0 922 902 0 902 912 0 923 924 0 924 908 0
		 908 894 0 894 923 0 917 925 0 925 905 0 905 897 0 926 927 0 927 898 0 898 899 0 899 926 0
		 922 920 0 903 902 0 928 926 0 899 913 0 913 928 0 925 914 0 904 905 0 919 929 0 929 895 0
		 895 911 0 930 931 0 931 900 0 900 901 0 901 930 0 921 932 0 932 909 0 909 896 0 933 916 0
		 906 907 0 907 933 0 927 923 0 894 898 0 931 928 0 913 900 0 924 933 0 907 908 0 929 930 0
		 901 895 0 932 918 0 910 909 0 892 875 0 859 893 0 890 918 0 932 889 0 862 930 0 929 837 0
		 878 933 0 924 879 0 893 928 0 931 861 0 836 923 0 927 858 0 877 916 0 921 853 0 919 891 0
		 875 914 0 925 876 0 859 926 0 874 920 0 922 873 0 917 854 0 915 892 0;
	setAttr ".ed[1826:1991]" 1060 985 0 985 987 0 987 1061 0 1061 1060 0 1057 1059 0
		 1059 982 0 982 961 0 961 1057 0 937 961 0 982 952 0 952 937 0 987 958 0 958 1056 0
		 1056 1061 0 960 941 0 941 979 0 979 983 0 983 960 0 979 980 0 980 985 0 985 983 0
		 980 981 0 981 987 0 981 940 0 940 958 0 1062 998 0 998 1000 0 1000 1063 0 1063 1062 0
		 950 986 0 986 959 0 959 936 0 936 950 0 951 984 0 984 986 0 950 951 0 982 984 0 951 952 0
		 988 989 0 989 992 0 992 991 0 991 988 0 989 990 0 990 993 0 993 992 0 992 995 0 995 994 0
		 994 991 0 993 996 0 996 995 0 935 947 0 947 988 0 988 942 0 942 935 0 947 946 0 946 989 0
		 946 945 0 945 990 0 945 937 0 952 990 0 951 993 0 950 996 0 936 955 0 955 996 0 955 954 0
		 954 995 0 954 953 0 953 994 0 944 994 0 953 934 0 934 944 0 943 991 0 944 943 0 943 942 0
		 1000 1002 0 1002 1064 0 1064 1063 0 1058 965 0 965 998 0 1062 1058 0 934 964 0 964 997 0
		 997 944 0 1002 956 0 956 1055 0 1055 1064 0 965 939 0 939 970 0 970 998 0 970 971 0
		 971 1000 0 971 972 0 972 1002 0 972 938 0 938 956 0 1045 1003 0 1003 1005 0 1005 1044 0
		 1044 1045 0 942 1001 0 1001 957 0 957 935 0 943 999 0 999 1001 0 997 999 0 1005 1007 0
		 1007 1043 0 1043 1044 0 1003 1004 0 1004 1006 0 1006 1005 0 1042 1045 0 1045 979 0
		 941 1042 0 1006 1008 0 1008 1007 0 1007 967 0 967 1041 0 1041 1043 0 969 968 0 968 1004 0
		 1003 969 0 1008 966 0 966 967 0 1066 1013 0 1013 1012 0 1012 1065 0 1065 1066 0 1067 1014 0
		 1014 1013 0 1066 1067 0 961 1014 0 1067 1057 0 938 973 0 973 1009 0 1009 956 0 973 974 0
		 974 1010 0 1010 1009 0 974 975 0 975 1011 0 1011 1010 0 975 941 0 960 1011 0 1055 1065 0
		 1012 957 0 957 1055 0 945 1014 0 946 1013 0 947 1012 0 1048 1015 0 1015 1017 0 1017 1047 0
		 1047 1048 0 1017 1019 0 1019 1046 0 1046 1047 0 1015 1016 0 1016 1018 0 1018 1017 0
		 1041 1048 0 1048 976 0 976 940 0 940 1041 0 1018 1020 0 1020 1019 0;
	setAttr ".ed[1992:2157]" 1019 948 0 948 1039 0 1039 1046 0 966 1016 0 1015 967 0
		 1020 949 0 949 948 0 1051 1021 0 1021 1023 0 1023 1050 0 1050 1051 0 1023 1025 0
		 1025 1049 0 1049 1050 0 1021 1022 0 1022 1024 0 1024 1023 0 1040 1051 0 1051 973 0
		 938 1040 0 1024 1026 0 1026 1025 0 1025 969 0 969 1042 0 1042 1049 0 963 962 0 962 1022 0
		 1021 963 0 1026 968 0 1054 1027 0 1027 1029 0 1029 1053 0 1053 1054 0 1029 1031 0
		 1031 1052 0 1052 1053 0 1027 1028 0 1028 1030 0 1030 1029 0 948 1027 0 1054 1039 0
		 1030 1032 0 1032 1031 0 1031 963 0 963 1040 0 1040 1052 0 949 1028 0 1032 962 0 1068 1034 0
		 1034 1036 0 1036 1069 0 1069 1068 0 1036 1038 0 1038 1070 0 1070 1069 0 1056 1068 0
		 1068 1033 0 1033 959 0 959 1056 0 1033 955 0 1038 965 0 1058 1070 0 976 1034 0 1034 958 0
		 976 977 0 977 1036 0 977 978 0 978 1038 0 978 939 0 953 1037 0 1037 964 0 954 1035 0
		 1035 1037 0 1033 1035 0 1059 983 0 1060 1059 0 972 1052 0 939 1039 0 1054 970 0 971 1053 0
		 975 1049 0 974 1050 0 978 1046 0 977 1047 0 981 1043 0 980 1044 0 1060 984 0 1037 1070 0
		 1058 964 0 1035 1069 0 1009 1065 0 960 1057 0 1067 1011 0 1066 1010 0 1001 1064 0
		 1062 997 0 999 1063 0 986 1061 0 1197 1198 0 1198 1124 0 1124 1122 0 1122 1197 0
		 1194 1098 0 1098 1119 0 1119 1196 0 1196 1194 0 1074 1089 0 1089 1119 0 1098 1074 0
		 1198 1193 0 1193 1095 0 1095 1124 0 1097 1120 0 1120 1116 0 1116 1078 0 1078 1097 0
		 1120 1122 0 1122 1117 0 1117 1116 0 1124 1118 0 1118 1117 0 1095 1077 0 1077 1118 0
		 1199 1200 0 1200 1137 0 1137 1135 0 1135 1199 0 1087 1073 0 1073 1096 0 1096 1123 0
		 1123 1087 0 1088 1087 0 1123 1121 0 1121 1088 0 1089 1088 0 1121 1119 0 1125 1128 0
		 1128 1129 0 1129 1126 0 1126 1125 0 1129 1130 0 1130 1127 0 1127 1126 0 1128 1131 0
		 1131 1132 0 1132 1129 0 1132 1133 0 1133 1130 0 1072 1079 0 1079 1125 0 1125 1084 0
		 1084 1072 0 1126 1083 0 1083 1084 0 1127 1082 0 1082 1083 0 1127 1089 0 1074 1082 0
		 1130 1088 0 1133 1087 0 1133 1092 0 1092 1073 0 1132 1091 0 1091 1092 0 1131 1090 0
		 1090 1091 0;
	setAttr ".ed[2158:2323]" 1081 1071 0 1071 1090 0 1131 1081 0 1080 1081 0 1128 1080 0
		 1079 1080 0 1200 1201 0 1201 1139 0 1139 1137 0 1195 1199 0 1135 1102 0 1102 1195 0
		 1081 1134 0 1134 1101 0 1101 1071 0 1201 1192 0 1192 1093 0 1093 1139 0 1135 1107 0
		 1107 1076 0 1076 1102 0 1137 1108 0 1108 1107 0 1139 1109 0 1109 1108 0 1093 1075 0
		 1075 1109 0 1182 1181 0 1181 1142 0 1142 1140 0 1140 1182 0 1072 1094 0 1094 1138 0
		 1138 1079 0 1138 1136 0 1136 1080 0 1136 1134 0 1181 1180 0 1180 1144 0 1144 1142 0
		 1142 1143 0 1143 1141 0 1141 1140 0 1179 1078 0 1116 1182 0 1182 1179 0 1144 1145 0
		 1145 1143 0 1180 1178 0 1178 1104 0 1104 1144 0 1106 1140 0 1141 1105 0 1105 1106 0
		 1104 1103 0 1103 1145 0 1203 1202 0 1202 1149 0 1149 1150 0 1150 1203 0 1204 1203 0
		 1150 1151 0 1151 1204 0 1194 1204 0 1151 1098 0 1093 1146 0 1146 1110 0 1110 1075 0
		 1146 1147 0 1147 1111 0 1111 1110 0 1147 1148 0 1148 1112 0 1112 1111 0 1148 1097 0
		 1078 1112 0 1192 1094 0 1094 1149 0 1202 1192 0 1151 1082 0 1150 1083 0 1149 1084 0
		 1185 1184 0 1184 1154 0 1154 1152 0 1152 1185 0 1184 1183 0 1183 1156 0 1156 1154 0
		 1154 1155 0 1155 1153 0 1153 1152 0 1178 1077 0 1077 1113 0 1113 1185 0 1185 1178 0
		 1156 1157 0 1157 1155 0 1183 1176 0 1176 1085 0 1085 1156 0 1104 1152 0 1153 1103 0
		 1085 1086 0 1086 1157 0 1188 1187 0 1187 1160 0 1160 1158 0 1158 1188 0 1187 1186 0
		 1186 1162 0 1162 1160 0 1160 1161 0 1161 1159 0 1159 1158 0 1177 1075 0 1110 1188 0
		 1188 1177 0 1162 1163 0 1163 1161 0 1186 1179 0 1179 1106 0 1106 1162 0 1100 1158 0
		 1159 1099 0 1099 1100 0 1105 1163 0 1191 1190 0 1190 1166 0 1166 1164 0 1164 1191 0
		 1190 1189 0 1189 1168 0 1168 1166 0 1166 1167 0 1167 1165 0 1165 1164 0 1176 1191 0
		 1164 1085 0 1168 1169 0 1169 1167 0 1189 1177 0 1177 1100 0 1100 1168 0 1165 1086 0
		 1099 1169 0 1205 1206 0 1206 1173 0 1173 1171 0 1171 1205 0 1206 1207 0 1207 1175 0
		 1175 1173 0 1193 1096 0 1096 1170 0 1170 1205 0 1205 1193 0 1092 1170 0 1207 1195 0
		 1102 1175 0 1095 1171 0 1171 1113 0 1173 1114 0 1114 1113 0 1175 1115 0 1115 1114 0;
	setAttr ".ed[2324:2489]" 1076 1115 0 1101 1174 0 1174 1090 0 1174 1172 0 1172 1091 0
		 1172 1170 0 1196 1197 0 1120 1196 0 1189 1109 0 1107 1191 0 1176 1076 0 1190 1108 0
		 1186 1112 0 1187 1111 0 1183 1115 0 1184 1114 0 1180 1118 0 1181 1117 0 1121 1197 0
		 1101 1195 0 1207 1174 0 1206 1172 0 1202 1146 0 1148 1204 0 1194 1097 0 1147 1203 0
		 1201 1138 0 1134 1199 0 1200 1136 0 1198 1123 0 1280 1281 0 1281 1284 0 1284 1283 0
		 1283 1280 0 1281 1282 0 1282 1285 0 1285 1284 0 1284 1287 0 1287 1286 0 1286 1283 0
		 1285 1288 0 1288 1287 0 1216 1223 0 1223 1280 0 1280 1277 0 1277 1216 0 1223 1224 0
		 1224 1281 0 1224 1225 0 1225 1282 0 1225 1209 0 1209 1226 0 1226 1282 0 1226 1227 0
		 1227 1285 0 1227 1228 0 1228 1288 0 1228 1211 0 1211 1259 0 1259 1288 0 1259 1260 0
		 1260 1287 0 1260 1261 0 1261 1286 0 1279 1286 0 1261 1217 0 1217 1279 0 1278 1283 0
		 1279 1278 0 1278 1277 0 1289 1290 0 1290 1293 0 1293 1292 0 1292 1289 0 1290 1291 0
		 1291 1294 0 1294 1293 0 1293 1296 0 1296 1295 0 1295 1292 0 1294 1297 0 1297 1296 0
		 1261 1289 0 1289 1274 0 1274 1217 0 1260 1290 0 1259 1291 0 1211 1235 0 1235 1291 0
		 1235 1236 0 1236 1294 0 1236 1237 0 1237 1297 0 1237 1215 0 1215 1262 0 1262 1297 0
		 1262 1263 0 1263 1296 0 1263 1264 0 1264 1295 0 1276 1295 0 1264 1218 0 1218 1276 0
		 1275 1292 0 1276 1275 0 1275 1274 0 1298 1299 0 1299 1302 0 1302 1301 0 1301 1298 0
		 1299 1300 0 1300 1303 0 1303 1302 0 1302 1305 0 1305 1304 0 1304 1301 0 1303 1306 0
		 1306 1305 0 1264 1298 0 1298 1271 0 1271 1218 0 1263 1299 0 1262 1300 0 1215 1244 0
		 1244 1300 0 1244 1245 0 1245 1303 0 1245 1246 0 1246 1306 0 1246 1213 0 1213 1265 0
		 1265 1306 0 1265 1266 0 1266 1305 0 1266 1267 0 1267 1304 0 1273 1304 0 1267 1219 0
		 1219 1273 0 1272 1301 0 1273 1272 0 1272 1271 0 1307 1308 0 1308 1311 0 1311 1310 0
		 1310 1307 0 1308 1309 0 1309 1312 0 1312 1311 0 1311 1314 0 1314 1313 0 1313 1310 0
		 1312 1315 0 1315 1314 0 1267 1307 0 1307 1268 0 1268 1219 0 1266 1308 0 1265 1309 0
		 1213 1253 0 1253 1309 0 1253 1254 0 1254 1312 0 1254 1255 0 1255 1315 0 1255 1209 0;
	setAttr ".ed[2490:2655]" 1225 1315 0 1224 1314 0 1223 1313 0 1270 1313 0 1216 1270 0
		 1269 1310 0 1270 1269 0 1269 1268 0 1316 1317 0 1317 1320 0 1320 1319 0 1319 1316 0
		 1317 1318 0 1318 1321 0 1321 1320 0 1320 1323 0 1323 1322 0 1322 1319 0 1321 1324 0
		 1324 1323 0 1210 1234 0 1234 1316 0 1316 1220 0 1220 1210 0 1234 1233 0 1233 1317 0
		 1233 1232 0 1232 1318 0 1232 1214 0 1214 1243 0 1243 1318 0 1243 1242 0 1242 1321 0
		 1242 1241 0 1241 1324 0 1241 1212 0 1212 1252 0 1252 1324 0 1252 1251 0 1251 1323 0
		 1251 1250 0 1250 1322 0 1222 1322 0 1250 1208 0 1208 1222 0 1221 1319 0 1222 1221 0
		 1221 1220 0 1325 1326 0 1326 1329 0 1329 1328 0 1328 1325 0 1326 1327 0 1327 1330 0
		 1330 1329 0 1329 1332 0 1332 1331 0 1331 1328 0 1330 1333 0 1333 1332 0 1237 1325 0
		 1325 1244 0 1236 1326 0 1235 1327 0 1228 1327 0 1227 1330 0 1226 1333 0 1255 1333 0
		 1254 1332 0 1253 1331 0 1246 1331 0 1245 1328 0 1334 1335 0 1335 1338 0 1338 1337 0
		 1337 1334 0 1335 1336 0 1336 1339 0 1339 1338 0 1338 1341 0 1341 1340 0 1340 1337 0
		 1339 1342 0 1342 1341 0 1212 1249 0 1249 1334 0 1334 1252 0 1249 1248 0 1248 1335 0
		 1248 1247 0 1247 1336 0 1247 1219 0 1268 1336 0 1269 1339 0 1270 1342 0 1216 1258 0
		 1258 1342 0 1258 1257 0 1257 1341 0 1257 1256 0 1256 1340 0 1250 1340 0 1256 1208 0
		 1251 1337 0 1343 1344 0 1344 1347 0 1347 1346 0 1346 1343 0 1344 1345 0 1345 1348 0
		 1348 1347 0 1347 1350 0 1350 1349 0 1349 1346 0 1348 1351 0 1351 1350 0 1214 1240 0
		 1240 1343 0 1343 1243 0 1240 1239 0 1239 1344 0 1239 1238 0 1238 1345 0 1238 1218 0
		 1271 1345 0 1272 1348 0 1273 1351 0 1247 1351 0 1248 1350 0 1249 1349 0 1241 1349 0
		 1242 1346 0 1352 1353 0 1353 1356 0 1356 1355 0 1355 1352 0 1353 1354 0 1354 1357 0
		 1357 1356 0 1356 1359 0 1359 1358 0 1358 1355 0 1357 1360 0 1360 1359 0 1210 1231 0
		 1231 1352 0 1352 1234 0 1231 1230 0 1230 1353 0 1230 1229 0 1229 1354 0 1229 1217 0
		 1274 1354 0 1275 1357 0 1276 1360 0 1238 1360 0 1239 1359 0 1240 1358 0 1232 1358 0
		 1233 1355 0 1361 1362 0 1362 1365 0 1365 1364 0 1364 1361 0 1362 1363 0 1363 1366 0;
	setAttr ".ed[2656:2673]" 1366 1365 0 1365 1368 0 1368 1367 0 1367 1364 0 1366 1369 0
		 1369 1368 0 1256 1361 0 1361 1222 0 1257 1362 0 1258 1363 0 1277 1363 0 1278 1366 0
		 1279 1369 0 1229 1369 0 1230 1368 0 1231 1367 0 1220 1367 0 1221 1364 0;
	setAttr -s 5256 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.87974155 -0.33619544 -0.3361955 -0.93447548
		 -0.35602751 4.5070355e-08 -1 6.4715131e-08 9.4583655e-08 -0.93447548 6.5101624e-08
		 -0.35602763 -0.93447548 -0.35602751 4.5070355e-08 -0.87974161 -0.33619541 0.33619535
		 -0.93447542 4.5070355e-08 0.35602769 -1 6.4715131e-08 9.4583655e-08 -0.93447548 6.5101624e-08
		 -0.35602763 -1 6.4715131e-08 9.4583655e-08 -0.93447548 0.35602754 1.0516415e-07 -0.87974155
		 0.3361955 -0.33619541 -1 6.4715131e-08 9.4583655e-08 -0.93447542 4.5070355e-08 0.35602769
		 -0.87974155 0.3361955 0.3361955 -0.93447548 0.35602754 1.0516415e-07 -0.57735008
		 -0.57735044 -0.57735032 -0.67094761 -0.67094785 -0.31568694 -0.87974155 -0.33619544
		 -0.3361955 -0.67094773 -0.31568694 -0.67094779 -0.67094761 -0.67094785 -0.31568694
		 -0.70710671 -0.70710683 5.0647884e-08 -0.93447548 -0.35602751 4.5070355e-08 -0.87974155
		 -0.33619544 -0.3361955 -0.70710671 -0.70710683 5.0647884e-08 -0.67094779 -0.67094779
		 0.31568676 -0.87974161 -0.33619541 0.33619535 -0.93447548 -0.35602751 4.5070355e-08
		 -0.67094779 -0.67094779 0.31568676 -0.57735026 -0.57735026 0.57735038 -0.67094773
		 -0.3156867 0.67094791 -0.87974161 -0.33619541 0.33619535 -0.87974161 -0.33619541
		 0.33619535 -0.67094773 -0.3156867 0.67094791 -0.70710677 -5.5712654e-08 0.70710671
		 -0.93447542 4.5070355e-08 0.35602769 -0.93447542 4.5070355e-08 0.35602769 -0.70710677
		 -5.5712654e-08 0.70710671 -0.67094791 0.31568664 0.67094767 -0.87974155 0.3361955
		 0.3361955 -0.87974155 0.3361955 0.3361955 -0.67094791 0.31568664 0.67094767 -0.57735014
		 0.57735038 0.57735032 -0.67094779 0.67094773 0.31568679 -0.93447548 0.35602754 1.0516415e-07
		 -0.87974155 0.3361955 0.3361955 -0.67094779 0.67094773 0.31568679 -0.70710689 0.70710665
		 5.0647877e-08 -0.87974155 0.3361955 -0.33619541 -0.93447548 0.35602754 1.0516415e-07
		 -0.70710689 0.70710665 5.0647877e-08 -0.67094773 0.67094779 -0.31568685 -0.67094779
		 0.31568691 -0.67094779 -0.87974155 0.3361955 -0.33619541 -0.67094773 0.67094779 -0.31568685
		 -0.57735008 0.57735044 -0.57735026 -0.70710677 1.5194363e-08 -0.70710677 -0.93447548
		 6.5101624e-08 -0.35602763 -0.87974155 0.3361955 -0.33619541 -0.67094779 0.31568691
		 -0.67094779 -0.67094773 -0.31568694 -0.67094779 -0.87974155 -0.33619544 -0.3361955
		 -0.93447548 6.5101624e-08 -0.35602763 -0.70710677 1.5194363e-08 -0.70710677 -0.33619541
		 0.87974155 -0.33619544 -0.35602763 0.93447548 -7.0109436e-08 3.4846614e-08 1 8.4627487e-08
		 -4.0062531e-08 0.93447548 -0.35602751 -0.35602763 0.93447548 -7.0109436e-08 -0.33619532
		 0.87974155 0.3361955 2.6040649e-07 0.93447548 0.35602763 3.4846614e-08 1 8.4627487e-08
		 -4.0062531e-08 0.93447548 -0.35602751 3.4846614e-08 1 8.4627487e-08 0.3560276 0.93447548
		 1.6525797e-07 0.33619553 0.87974161 -0.33619541 3.4846614e-08 1 8.4627487e-08 2.6040649e-07
		 0.93447548 0.35602763 0.33619547 0.87974149 0.33619559 0.3560276 0.93447548 1.6525797e-07
		 -0.57735008 0.57735044 -0.57735026 -0.67094773 0.67094779 -0.31568685 -0.33619541
		 0.87974155 -0.33619544 -0.31568655 0.67094791 -0.67094773 -0.67094773 0.67094779
		 -0.31568685 -0.70710689 0.70710665 5.0647877e-08 -0.35602763 0.93447548 -7.0109436e-08
		 -0.33619541 0.87974155 -0.33619544 -0.70710689 0.70710665 5.0647877e-08 -0.67094779
		 0.67094773 0.31568679 -0.33619532 0.87974155 0.3361955 -0.35602763 0.93447548 -7.0109436e-08
		 -0.67094779 0.67094773 0.31568679 -0.57735014 0.57735038 0.57735032 -0.31568667 0.67094773
		 0.67094779 -0.33619532 0.87974155 0.3361955 -0.33619532 0.87974155 0.3361955 -0.31568667
		 0.67094773 0.67094779 4.5076621e-07 0.70710683 0.70710677 2.6040649e-07 0.93447548
		 0.35602763 2.6040649e-07 0.93447548 0.35602763 4.5076621e-07 0.70710683 0.70710677
		 0.31568688 0.67094797 0.67094755 0.33619547 0.87974149 0.33619559 0.33619547 0.87974149
		 0.33619559 0.31568688 0.67094797 0.67094755 0.5773496 0.5773505 0.57735068 0.67094755
		 0.67094791 0.31568706 0.3560276 0.93447548 1.6525797e-07 0.33619547 0.87974149 0.33619559
		 0.67094755 0.67094791 0.31568706 0.70710683 0.70710677 -5.5712665e-08 0.33619553
		 0.87974161 -0.33619541 0.3560276 0.93447548 1.6525797e-07 0.70710683 0.70710677 -5.5712665e-08
		 0.67094785 0.67094773 -0.31568667 0.31568661 0.67094779 -0.67094785 0.33619553 0.87974161
		 -0.33619541 0.67094785 0.67094773 -0.31568667 0.5773502 0.57735026 -0.57735044 -4.0518302e-08
		 0.70710683 -0.70710677 -4.0062531e-08 0.93447548 -0.35602751 0.33619553 0.87974161
		 -0.33619541 0.31568661 0.67094779 -0.67094785 -0.31568655 0.67094791 -0.67094773
		 -0.33619541 0.87974155 -0.33619544 -4.0062531e-08 0.93447548 -0.35602751 -4.0518302e-08
		 0.70710683 -0.70710677 0.87974155 0.33619535 -0.33619559 0.93447554 0.35602742 -2.0532052e-07
		 1 -1.0453982e-07 -1.9912347e-08 0.93447548 4.0062531e-08 -0.35602754 0.93447554 0.35602742
		 -2.0532052e-07 0.87974155 0.33619529 0.33619553 0.93447548 -2.2535174e-07 0.35602751
		 1 -1.0453982e-07 -1.9912347e-08 0.93447548 4.0062531e-08 -0.35602754 1 -1.0453982e-07
		 -1.9912347e-08 0.93447548 -0.35602748 9.0140716e-08 0.87974155 -0.33619538 -0.33619544
		 1 -1.0453982e-07 -1.9912347e-08 0.93447548 -2.2535174e-07 0.35602751 0.87974149 -0.33619553
		 0.33619559 0.93447548 -0.35602748 9.0140716e-08 0.5773502 0.57735026 -0.57735044
		 0.67094785 0.67094773 -0.31568667 0.87974155 0.33619535 -0.33619559 0.67094785 0.31568664
		 -0.67094779 0.67094785 0.67094773 -0.31568667 0.70710683 0.70710677 -5.5712665e-08
		 0.93447554 0.35602742 -2.0532052e-07 0.87974155 0.33619535 -0.33619559 0.70710683
		 0.70710677 -5.5712665e-08 0.67094755 0.67094791 0.31568706 0.87974155 0.33619529
		 0.33619553 0.93447554 0.35602742 -2.0532052e-07 0.67094755 0.67094791 0.31568706
		 0.5773496 0.5773505 0.57735068 0.67094749 0.31568688 0.67094809 0.87974155 0.33619529
		 0.33619553 0.87974155 0.33619529 0.33619553 0.67094749 0.31568688 0.67094809 0.70710659
		 -6.077746e-08 0.70710701 0.93447548 -2.2535174e-07 0.35602751 0.93447548 -2.2535174e-07
		 0.35602751 0.70710659 -6.077746e-08 0.70710701;
	setAttr ".n[166:331]" -type "float3"  0.67094749 -0.31568703 0.67094803 0.87974149
		 -0.33619553 0.33619559 0.87974149 -0.33619553 0.33619559 0.67094749 -0.31568703 0.67094803
		 0.57734972 -0.57735056 0.57735056 0.67094761 -0.67094773 0.31568709 0.93447548 -0.35602748
		 9.0140716e-08 0.87974149 -0.33619553 0.33619559 0.67094761 -0.67094773 0.31568709
		 0.70710695 -0.70710671 -1.5194365e-08 0.87974155 -0.33619538 -0.33619544 0.93447548
		 -0.35602748 9.0140716e-08 0.70710695 -0.70710671 -1.5194365e-08 0.67094779 -0.67094779
		 -0.31568676 0.67094779 -0.31568679 -0.67094779 0.87974155 -0.33619538 -0.33619544
		 0.67094779 -0.67094779 -0.31568676 0.57735026 -0.57735032 -0.57735032 0.70710677
		 -9.1166186e-08 -0.70710677 0.93447548 4.0062531e-08 -0.35602754 0.87974155 -0.33619538
		 -0.33619544 0.67094779 -0.31568679 -0.67094779 0.67094785 0.31568664 -0.67094779
		 0.87974155 0.33619535 -0.33619559 0.93447548 4.0062531e-08 -0.35602754 0.70710677
		 -9.1166186e-08 -0.70710677 0.33619529 -0.87974161 -0.3361955 0.35602754 -0.93447548
		 -1.3020325e-07 -1.7423305e-07 -1 3.4846611e-08 -2.103283e-07 -0.93447548 -0.35602748
		 0.35602754 -0.93447548 -1.3020325e-07 0.33619562 -0.87974149 0.33619553 1.3020325e-07
		 -0.93447548 0.35602754 -1.7423305e-07 -1 3.4846611e-08 -2.103283e-07 -0.93447548
		 -0.35602748 -1.7423305e-07 -1 3.4846611e-08 -0.35602757 -0.93447548 6.5101624e-08
		 -0.33619541 -0.87974161 -0.33619535 -1.7423305e-07 -1 3.4846611e-08 1.3020325e-07
		 -0.93447548 0.35602754 -0.33619538 -0.87974155 0.33619544 -0.35602757 -0.93447548
		 6.5101624e-08 0.57735026 -0.57735032 -0.57735032 0.67094779 -0.67094779 -0.31568676
		 0.33619529 -0.87974161 -0.3361955 0.31568655 -0.67094773 -0.67094791 0.67094779 -0.67094779
		 -0.31568676 0.70710695 -0.70710671 -1.5194365e-08 0.35602754 -0.93447548 -1.3020325e-07
		 0.33619529 -0.87974161 -0.3361955 0.70710695 -0.70710671 -1.5194365e-08 0.67094761
		 -0.67094773 0.31568709 0.33619562 -0.87974149 0.33619553 0.35602754 -0.93447548 -1.3020325e-07
		 0.67094761 -0.67094773 0.31568709 0.57734972 -0.57735056 0.57735056 0.31568685 -0.67094779
		 0.67094767 0.33619562 -0.87974149 0.33619553 0.33619562 -0.87974149 0.33619553 0.31568685
		 -0.67094779 0.67094767 5.0647884e-07 -0.70710683 0.70710677 1.3020325e-07 -0.93447548
		 0.35602754 1.3020325e-07 -0.93447548 0.35602754 5.0647884e-07 -0.70710683 0.70710677
		 -0.31568643 -0.67094779 0.67094791 -0.33619538 -0.87974155 0.33619544 -0.33619538
		 -0.87974155 0.33619544 -0.31568643 -0.67094779 0.67094791 -0.57735026 -0.57735026
		 0.57735038 -0.67094779 -0.67094779 0.31568676 -0.35602757 -0.93447548 6.5101624e-08
		 -0.33619538 -0.87974155 0.33619544 -0.67094779 -0.67094779 0.31568676 -0.70710671
		 -0.70710683 5.0647884e-08 -0.33619541 -0.87974161 -0.33619535 -0.35602757 -0.93447548
		 6.5101624e-08 -0.70710671 -0.70710683 5.0647884e-08 -0.67094761 -0.67094785 -0.31568694
		 -0.31568652 -0.67094797 -0.67094779 -0.33619541 -0.87974161 -0.33619535 -0.67094761
		 -0.67094785 -0.31568694 -0.57735008 -0.57735044 -0.57735032 -7.5971826e-08 -0.70710683
		 -0.70710677 -2.103283e-07 -0.93447548 -0.35602748 -0.33619541 -0.87974161 -0.33619535
		 -0.31568652 -0.67094797 -0.67094779 0.31568655 -0.67094773 -0.67094791 0.33619529
		 -0.87974161 -0.3361955 -2.103283e-07 -0.93447548 -0.35602748 -7.5971826e-08 -0.70710683
		 -0.70710677 -0.33619529 0.33619571 -0.87974155 -2.0031266e-08 0.35602772 -0.93447542
		 1.642769e-07 -9.9561753e-08 -1 -0.35602742 -1.5023451e-08 -0.93447548 -2.0031266e-08
		 0.35602772 -0.93447542 0.33619523 0.33619529 -0.87974173 0.35602754 -1.3020323e-07
		 -0.93447548 1.642769e-07 -9.9561753e-08 -1 -0.35602742 -1.5023451e-08 -0.93447548
		 1.642769e-07 -9.9561753e-08 -1 2.503908e-07 -0.3560276 -0.93447548 -0.33619517 -0.33619568
		 -0.87974161 1.642769e-07 -9.9561753e-08 -1 0.35602754 -1.3020323e-07 -0.93447548
		 0.33619529 -0.33619535 -0.87974167 2.503908e-07 -0.3560276 -0.93447548 -0.57735008
		 0.57735044 -0.57735026 -0.31568655 0.67094791 -0.67094773 -0.33619529 0.33619571
		 -0.87974155 -0.67094779 0.31568691 -0.67094779 -0.31568655 0.67094791 -0.67094773
		 -4.0518302e-08 0.70710683 -0.70710677 -2.0031266e-08 0.35602772 -0.93447542 -0.33619529
		 0.33619571 -0.87974155 -4.0518302e-08 0.70710683 -0.70710677 0.31568661 0.67094779
		 -0.67094785 0.33619523 0.33619529 -0.87974173 -2.0031266e-08 0.35602772 -0.93447542
		 0.31568661 0.67094779 -0.67094785 0.5773502 0.57735026 -0.57735044 0.67094785 0.31568664
		 -0.67094779 0.33619523 0.33619529 -0.87974173 0.33619523 0.33619529 -0.87974173 0.67094785
		 0.31568664 -0.67094779 0.70710677 -9.1166186e-08 -0.70710677 0.35602754 -1.3020323e-07
		 -0.93447548 0.35602754 -1.3020323e-07 -0.93447548 0.70710677 -9.1166186e-08 -0.70710677
		 0.67094779 -0.31568679 -0.67094779 0.33619529 -0.33619535 -0.87974167 0.33619529
		 -0.33619535 -0.87974167 0.67094779 -0.31568679 -0.67094779 0.57735026 -0.57735032
		 -0.57735032 0.31568655 -0.67094773 -0.67094791 2.503908e-07 -0.3560276 -0.93447548
		 0.33619529 -0.33619535 -0.87974167 0.31568655 -0.67094773 -0.67094791 -7.5971826e-08
		 -0.70710683 -0.70710677 -0.33619517 -0.33619568 -0.87974161 2.503908e-07 -0.3560276
		 -0.93447548 -7.5971826e-08 -0.70710683 -0.70710677 -0.31568652 -0.67094797 -0.67094779
		 -0.67094773 -0.31568694 -0.67094779 -0.33619517 -0.33619568 -0.87974161 -0.31568652
		 -0.67094797 -0.67094779 -0.57735008 -0.57735044 -0.57735032 -0.70710677 1.5194363e-08
		 -0.70710677 -0.35602742 -1.5023451e-08 -0.93447548 -0.33619517 -0.33619568 -0.87974161
		 -0.67094773 -0.31568694 -0.67094779 -0.67094779 0.31568691 -0.67094779 -0.33619529
		 0.33619571 -0.87974155 -0.35602742 -1.5023451e-08 -0.93447548 -0.70710677 1.5194363e-08
		 -0.70710677 0.33619577 0.33619565 0.87974131 4.0563319e-07 0.35602763 0.93447542
		 1.9414544e-07 -7.9649418e-08 1 0.35602778 -5.0078164e-09 0.93447542 4.0563319e-07
		 0.35602763 0.93447542 -0.33619571 0.33619532 0.87974155 -0.35602796 -1.5023448e-07
		 0.9344753 1.9414544e-07 -7.9649418e-08 1 0.35602778 -5.0078164e-09 0.93447542 1.9414544e-07
		 -7.9649418e-08 1 3.0046903e-07 -0.35602763 0.93447542 0.33619547 -0.33619565 0.87974149;
	setAttr ".n[332:497]" -type "float3"  1.9414544e-07 -7.9649418e-08 1 -0.35602796
		 -1.5023448e-07 0.9344753 -0.33619538 -0.33619535 0.87974161 3.0046903e-07 -0.35602763
		 0.93447542 0.5773496 0.5773505 0.57735068 0.31568688 0.67094797 0.67094755 0.33619577
		 0.33619565 0.87974131 0.67094749 0.31568688 0.67094809 0.31568688 0.67094797 0.67094755
		 4.5076621e-07 0.70710683 0.70710677 4.0563319e-07 0.35602763 0.93447542 0.33619577
		 0.33619565 0.87974131 4.5076621e-07 0.70710683 0.70710677 -0.31568667 0.67094773
		 0.67094779 -0.33619571 0.33619532 0.87974155 4.0563319e-07 0.35602763 0.93447542
		 -0.31568667 0.67094773 0.67094779 -0.57735014 0.57735038 0.57735032 -0.67094791 0.31568664
		 0.67094767 -0.33619571 0.33619532 0.87974155 -0.33619571 0.33619532 0.87974155 -0.67094791
		 0.31568664 0.67094767 -0.70710677 -5.5712654e-08 0.70710671 -0.35602796 -1.5023448e-07
		 0.9344753 -0.35602796 -1.5023448e-07 0.9344753 -0.70710677 -5.5712654e-08 0.70710671
		 -0.67094773 -0.3156867 0.67094791 -0.33619538 -0.33619535 0.87974161 -0.33619538
		 -0.33619535 0.87974161 -0.67094773 -0.3156867 0.67094791 -0.57735026 -0.57735026
		 0.57735038 -0.31568643 -0.67094779 0.67094791 3.0046903e-07 -0.35602763 0.93447542
		 -0.33619538 -0.33619535 0.87974161 -0.31568643 -0.67094779 0.67094791 5.0647884e-07
		 -0.70710683 0.70710677 0.33619547 -0.33619565 0.87974149 3.0046903e-07 -0.35602763
		 0.93447542 5.0647884e-07 -0.70710683 0.70710677 0.31568685 -0.67094779 0.67094767
		 0.67094749 -0.31568703 0.67094803 0.33619547 -0.33619565 0.87974149 0.31568685 -0.67094779
		 0.67094767 0.57734972 -0.57735056 0.57735056 0.70710659 -6.077746e-08 0.70710701
		 0.35602778 -5.0078164e-09 0.93447542 0.33619547 -0.33619565 0.87974149 0.67094749
		 -0.31568703 0.67094803 0.67094749 0.31568688 0.67094809 0.33619577 0.33619565 0.87974131
		 0.35602778 -5.0078164e-09 0.93447542 0.70710659 -6.077746e-08 0.70710701 -0.87974137
		 -0.33619568 -0.33619565 -0.93447548 -0.35602763 -1.7527363e-07 -0.99945331 -0.033062208
		 -1.3813634e-07 -0.93466634 -0.034293838 -0.35386842 -0.93447548 -0.35602763 -1.7527363e-07
		 -0.87974155 -0.33619556 0.33619523 -0.9346664 -0.034293786 0.35386825 -0.99945331
		 -0.033062208 -1.3813634e-07 -0.93466634 -0.034293838 -0.35386842 -0.99945331 -0.033062208
		 -1.3813634e-07 -0.99440259 0.10565729 -9.540264e-08 -0.9307611 0.10270976 -0.35090515
		 -0.99945331 -0.033062208 -1.3813634e-07 -0.9346664 -0.034293786 0.35386825 -0.93076116
		 0.10270996 0.35090494 -0.99440259 0.10565729 -9.540264e-08 -0.57734984 -0.57735062
		 -0.57735038 -0.67094773 -0.67094785 -0.31568682 -0.87974137 -0.33619568 -0.33619565
		 -0.67094773 -0.31568679 -0.67094785 -0.67094773 -0.67094785 -0.31568682 -0.70710695
		 -0.70710671 -1.4687883e-07 -0.93447548 -0.35602763 -1.7527363e-07 -0.87974137 -0.33619568
		 -0.33619565 -0.70710695 -0.70710671 -1.4687883e-07 -0.67094797 -0.67094785 0.31568626
		 -0.87974155 -0.33619556 0.33619523 -0.93447548 -0.35602763 -1.7527363e-07 -0.67094797
		 -0.67094785 0.31568626 -0.57735062 -0.5773505 0.57734978 -0.67094797 -0.31568655
		 0.67094761 -0.87974155 -0.33619556 0.33619523 -0.87974155 -0.33619556 0.33619523
		 -0.67094797 -0.31568655 0.67094761 -0.70665729 -0.035648227 0.70665741 -0.9346664
		 -0.034293786 0.35386825 -0.9346664 -0.034293786 0.35386825 -0.70665729 -0.035648227
		 0.70665741 -0.70354694 0.10020982 0.70354789 -0.93076116 0.10270996 0.35090494 -0.70665759
		 -0.035648186 -0.70665717 -0.93466634 -0.034293838 -0.35386842 -0.9307611 0.10270976
		 -0.35090515 -0.70354736 0.10020965 -0.70354754 -0.67094773 -0.31568679 -0.67094785
		 -0.87974137 -0.33619568 -0.33619565 -0.93466634 -0.034293838 -0.35386842 -0.70665759
		 -0.035648186 -0.70665717 0.93076104 0.10270976 -0.3509056 0.99440259 0.10565712 6.6781844e-08
		 0.99945331 -0.033062197 -1.1840258e-07 0.93466622 -0.034293819 -0.35386863 0.99440259
		 0.10565712 6.6781844e-08 0.93076128 0.10270993 0.35090452 0.93466645 -0.034293767
		 0.35386804 0.99945331 -0.033062197 -1.1840258e-07 0.93466622 -0.034293819 -0.35386863
		 0.99945331 -0.033062197 -1.1840258e-07 0.93447548 -0.35602751 2.5039085e-08 0.87974155
		 -0.33619526 -0.33619568 0.99945331 -0.033062197 -1.1840258e-07 0.93466645 -0.034293767
		 0.35386804 0.87974155 -0.33619544 0.33619535 0.93447548 -0.35602751 2.5039085e-08
		 0.93076128 0.10270993 0.35090452 0.70354795 0.10021026 0.70354688 0.70665741 -0.035648484
		 0.70665729 0.93466645 -0.034293767 0.35386804 0.93466645 -0.034293767 0.35386804
		 0.70665741 -0.035648484 0.70665729 0.67094839 -0.31568703 0.67094707 0.87974155 -0.33619544
		 0.33619535 0.87974155 -0.33619544 0.33619535 0.67094839 -0.31568703 0.67094707 0.57735139
		 -0.57734978 0.57734972 0.67094785 -0.67094761 0.315687 0.93447548 -0.35602751 2.5039085e-08
		 0.87974155 -0.33619544 0.33619535 0.67094785 -0.67094761 0.315687 0.70710653 -0.70710707
		 2.1272113e-07 0.87974155 -0.33619526 -0.33619568 0.93447548 -0.35602751 2.5039085e-08
		 0.70710653 -0.70710707 2.1272113e-07 0.67094785 -0.67094767 -0.31568688 0.67094767
		 -0.31568667 -0.67094791 0.87974155 -0.33619526 -0.33619568 0.67094785 -0.67094767
		 -0.31568688 0.57735026 -0.57735014 -0.5773505 0.70665723 -0.035648309 -0.70665741
		 0.93466622 -0.034293819 -0.35386863 0.87974155 -0.33619526 -0.33619568 0.67094767
		 -0.31568667 -0.67094791 0.70354754 0.10020968 -0.70354736 0.93076104 0.10270976 -0.3509056
		 0.93466622 -0.034293819 -0.35386863 0.70665723 -0.035648309 -0.70665741 0.33619565
		 -0.87974155 -0.33619544 0.35602725 -0.9344756 1.0015632e-08 -4.9780869e-08 -1 7.4671306e-08
		 -1.8028148e-07 -0.93447548 -0.35602769 0.35602725 -0.9344756 1.0015632e-08 0.33619553
		 -0.87974149 0.33619553 1.5023451e-08 -0.93447554 0.35602739 -4.9780869e-08 -1 7.4671306e-08
		 -1.8028148e-07 -0.93447548 -0.35602769 -4.9780869e-08 -1 7.4671306e-08 -0.3560279
		 -0.9344753 1.4021887e-07 -0.33619598 -0.87974137 -0.33619544 -4.9780869e-08 -1 7.4671306e-08
		 1.5023451e-08 -0.93447554 0.35602739 -0.33619559 -0.87974155 0.33619517 -0.3560279
		 -0.9344753 1.4021887e-07 0.57735026 -0.57735014 -0.5773505 0.67094785 -0.67094767
		 -0.31568688;
	setAttr ".n[498:663]" -type "float3"  0.33619565 -0.87974155 -0.33619544 0.31568667
		 -0.67094797 -0.67094761 0.67094785 -0.67094767 -0.31568688 0.70710653 -0.70710707
		 2.1272113e-07 0.35602725 -0.9344756 1.0015632e-08 0.33619565 -0.87974155 -0.33619544
		 0.70710653 -0.70710707 2.1272113e-07 0.67094785 -0.67094761 0.315687 0.33619553 -0.87974149
		 0.33619553 0.35602725 -0.9344756 1.0015632e-08 0.67094785 -0.67094761 0.315687 0.57735139
		 -0.57734978 0.57734972 0.31568718 -0.67094779 0.67094755 0.33619553 -0.87974149 0.33619553
		 0.33619553 -0.87974149 0.33619553 0.31568718 -0.67094779 0.67094755 -1.823323e-07
		 -0.70710665 0.70710689 1.5023451e-08 -0.93447554 0.35602739 1.5023451e-08 -0.93447554
		 0.35602739 -1.823323e-07 -0.70710665 0.70710689 -0.31568664 -0.67094785 0.67094773
		 -0.33619559 -0.87974155 0.33619517 -0.33619559 -0.87974155 0.33619517 -0.31568664
		 -0.67094785 0.67094773 -0.57735062 -0.5773505 0.57734978 -0.67094797 -0.67094785
		 0.31568626 -0.3560279 -0.9344753 1.4021887e-07 -0.33619559 -0.87974155 0.33619517
		 -0.67094797 -0.67094785 0.31568626 -0.70710695 -0.70710671 -1.4687883e-07 -0.33619598
		 -0.87974137 -0.33619544 -0.3560279 -0.9344753 1.4021887e-07 -0.70710695 -0.70710671
		 -1.4687883e-07 -0.67094773 -0.67094785 -0.31568682 -0.31568682 -0.67094773 -0.67094785
		 -0.33619598 -0.87974137 -0.33619544 -0.67094773 -0.67094785 -0.31568682 -0.57734984
		 -0.57735062 -0.57735038 -1.9752669e-07 -0.70710671 -0.70710689 -1.8028148e-07 -0.93447548
		 -0.35602769 -0.33619598 -0.87974137 -0.33619544 -0.31568682 -0.67094773 -0.67094785
		 0.31568667 -0.67094797 -0.67094761 0.33619565 -0.87974155 -0.33619544 -1.8028148e-07
		 -0.93447548 -0.35602769 -1.9752669e-07 -0.70710671 -0.70710689 -0.35090548 0.10270988
		 -0.93076092 -1.9080533e-08 0.10565714 -0.99440259 -1.9733763e-08 -0.033062264 -0.99945331
		 -0.35386884 -0.034293875 -0.9346661 -1.9080533e-08 0.10565714 -0.99440259 0.35090598
		 0.10270969 -0.93076086 0.3538689 -0.034293763 -0.93466616 -1.9733763e-08 -0.033062264
		 -0.99945331 -0.35386884 -0.034293875 -0.9346661 -1.9733763e-08 -0.033062264 -0.99945331
		 -4.5070369e-08 -0.35602793 -0.93447536 -0.33619571 -0.33619577 -0.87974131 -1.9733763e-08
		 -0.033062264 -0.99945331 0.3538689 -0.034293763 -0.93466616 0.33619547 -0.33619574
		 -0.87974143 -4.5070369e-08 -0.35602793 -0.93447536 0.35090598 0.10270969 -0.93076086
		 0.70354754 0.10020968 -0.70354736 0.70665723 -0.035648309 -0.70665741 0.3538689 -0.034293763
		 -0.93466616 0.3538689 -0.034293763 -0.93466616 0.70665723 -0.035648309 -0.70665741
		 0.67094767 -0.31568667 -0.67094791 0.33619547 -0.33619574 -0.87974143 0.33619547
		 -0.33619574 -0.87974143 0.67094767 -0.31568667 -0.67094791 0.57735026 -0.57735014
		 -0.5773505 0.31568667 -0.67094797 -0.67094761 -4.5070369e-08 -0.35602793 -0.93447536
		 0.33619547 -0.33619574 -0.87974143 0.31568667 -0.67094797 -0.67094761 -1.9752669e-07
		 -0.70710671 -0.70710689 -0.33619571 -0.33619577 -0.87974131 -4.5070369e-08 -0.35602793
		 -0.93447536 -1.9752669e-07 -0.70710671 -0.70710689 -0.31568682 -0.67094773 -0.67094785
		 -0.67094773 -0.31568679 -0.67094785 -0.33619571 -0.33619577 -0.87974131 -0.31568682
		 -0.67094773 -0.67094785 -0.57734984 -0.57735062 -0.57735038 -0.70665759 -0.035648186
		 -0.70665717 -0.35386884 -0.034293875 -0.9346661 -0.33619571 -0.33619577 -0.87974131
		 -0.67094773 -0.31568679 -0.67094785 -0.70354736 0.10020965 -0.70354754 -0.35090548
		 0.10270988 -0.93076092 -0.35386884 -0.034293875 -0.9346661 -0.70665759 -0.035648186
		 -0.70665717 0.35090548 0.10271028 0.93076092 -9.5402655e-09 0.10565732 0.99440253
		 1.9733763e-08 -0.033062313 0.99945331 0.35386854 -0.03429389 0.93466622 -9.5402655e-09
		 0.10565732 0.99440253 -0.35090491 0.10270988 0.93076128 -0.35386842 -0.034293819
		 0.93466634 1.9733763e-08 -0.033062313 0.99945331 0.35386854 -0.03429389 0.93466622
		 1.9733763e-08 -0.033062313 0.99945331 -1.9530489e-07 -0.35602772 0.93447548 0.33619577
		 -0.33619612 0.87974119 1.9733763e-08 -0.033062313 0.99945331 -0.35386842 -0.034293819
		 0.93466634 -0.33619559 -0.33619535 0.87974149 -1.9530489e-07 -0.35602772 0.93447548
		 -0.35090491 0.10270988 0.93076128 -0.70354694 0.10020982 0.70354789 -0.70665729 -0.035648227
		 0.70665741 -0.35386842 -0.034293819 0.93466634 -0.35386842 -0.034293819 0.93466634
		 -0.70665729 -0.035648227 0.70665741 -0.67094797 -0.31568655 0.67094761 -0.33619559
		 -0.33619535 0.87974149 -0.33619559 -0.33619535 0.87974149 -0.67094797 -0.31568655
		 0.67094761 -0.57735062 -0.5773505 0.57734978 -0.31568664 -0.67094785 0.67094773 -1.9530489e-07
		 -0.35602772 0.93447548 -0.33619559 -0.33619535 0.87974149 -0.31568664 -0.67094785
		 0.67094773 -1.823323e-07 -0.70710665 0.70710689 0.33619577 -0.33619612 0.87974119
		 -1.9530489e-07 -0.35602772 0.93447548 -1.823323e-07 -0.70710665 0.70710689 0.31568718
		 -0.67094779 0.67094755 0.67094839 -0.31568703 0.67094707 0.33619577 -0.33619612 0.87974119
		 0.31568718 -0.67094779 0.67094755 0.57735139 -0.57734978 0.57734972 0.70665741 -0.035648484
		 0.70665729 0.35386854 -0.03429389 0.93466622 0.33619577 -0.33619612 0.87974119 0.67094839
		 -0.31568703 0.67094707 0.70354795 0.10021026 0.70354688 0.35090548 0.10271028 0.93076092
		 0.35386854 -0.03429389 0.93466622 0.70665741 -0.035648484 0.70665729 0.99487525 0.00088970334
		 0.10110564 0.99289536 -0.010795635 0.11849984 0.85565692 0.49793515 0.14110918 0.85815954
		 0.50695097 0.081011049 0.50299406 -0.86345863 -0.037896581 0.48988318 -0.87164849
		 0.015602964 0.85104752 -0.5197708 0.074541204 0.86260557 -0.50476855 0.033472694
		 3.1034821e-07 -0.99825054 -0.059125949 1.683926e-07 -0.99993104 -0.011745899 0.48988318
		 -0.87164849 0.015602964 0.50299406 -0.86345863 -0.037896581 -0.5029937 -0.86345893
		 -0.03789673 -0.48988262 -0.87164879 0.01560277 1.683926e-07 -0.99993104 -0.011745899
		 3.1034821e-07 -0.99825054 -0.059125949 -0.86260533 -0.50476885 0.033472493 -0.8510474
		 -0.51977098 0.074541457 -0.48988262 -0.87164879 0.01560277 -0.5029937 -0.86345893
		 -0.03789673 -0.99487537 0.00088958547 0.10110536 -0.99289531 -0.010795669 0.11850035
		 -0.8510474 -0.51977098 0.074541457 -0.86260533 -0.50476885 0.033472493;
	setAttr ".n[664:829]" -type "float3"  -0.85815954 0.50695103 0.081011303 -0.85565668
		 0.49793532 0.14110985 -0.99289531 -0.010795669 0.11850035 -0.99487537 0.00088958547
		 0.10110536 -0.499677 0.86418921 0.059159961 -0.496712 0.85393703 0.15514156 -0.85565668
		 0.49793532 0.14110985 -0.85815954 0.50695103 0.081011303 -6.5545287e-08 0.98745573
		 0.15789634 -0.496712 0.85393703 0.15514156 -0.499677 0.86418921 0.059159961 3.4923784e-07
		 0.99820411 0.059903029 0.86260557 -0.50476855 0.033472694 0.85104752 -0.5197708 0.074541204
		 0.99289536 -0.010795635 0.11849984 0.99487525 0.00088970334 0.10110564 -6.5545287e-08
		 0.98745573 0.15789634 0.49671227 0.85393691 0.15514112 0.46446693 0.81765056 -0.3401736
		 2.7060116e-07 0.94181561 -0.33612999 2.7060116e-07 0.94181561 -0.33612999 0.46446693
		 0.81765056 -0.3401736 0.36138967 0.65106124 -0.6674704 3.2671483e-07 0.7510969 -0.66019195
		 3.2671483e-07 0.7510969 -0.66019195 0.36138967 0.65106124 -0.6674704 0.38375047 0.68122023
		 -0.62343758 7.9297095e-08 0.7920329 -0.61047834 0.49671227 0.85393691 0.15514112
		 0.85565692 0.49793515 0.14110918 0.79908782 0.4797051 -0.3624109 0.46446693 0.81765056
		 -0.3401736 0.46446693 0.81765056 -0.3401736 0.79908782 0.4797051 -0.3624109 0.61103684
		 0.37626272 -0.69646263 0.36138967 0.65106124 -0.6674704 0.36138967 0.65106124 -0.6674704
		 0.61103684 0.37626272 -0.69646263 0.64382541 0.38363323 -0.66205317 0.38375047 0.68122023
		 -0.62343758 0.85565692 0.49793515 0.14110918 0.99289536 -0.010795635 0.11849984 0.92336798
		 0.024386225 -0.38314077 0.79908782 0.4797051 -0.3624109 0.79908782 0.4797051 -0.3624109
		 0.92336798 0.024386225 -0.38314077 0.67602313 0.051195774 -0.73509979 0.61103684
		 0.37626272 -0.69646263 0.61103684 0.37626272 -0.69646263 0.67602313 0.051195774 -0.73509979
		 0.69544435 0.045680754 -0.71712655 0.64382541 0.38363323 -0.66205317 0.99289536 -0.010795635
		 0.11849984 0.85104752 -0.5197708 0.074541204 0.80174595 -0.4152627 -0.42983752 0.92336798
		 0.024386225 -0.38314077 0.92336798 0.024386225 -0.38314077 0.80174595 -0.4152627
		 -0.42983752 0.58394742 -0.23096097 -0.77824318 0.67602313 0.051195774 -0.73509979
		 0.67602313 0.051195774 -0.73509979 0.58394742 -0.23096097 -0.77824318 0.5664165 -0.2279879
		 -0.79195565 0.69544435 0.045680754 -0.71712655 0.85104752 -0.5197708 0.074541204
		 0.48988318 -0.87164849 0.015602964 0.46819752 -0.73433864 -0.49146506 0.80174595
		 -0.4152627 -0.42983752 0.80174595 -0.4152627 -0.42983752 0.46819752 -0.73433864 -0.49146506
		 0.34390855 -0.44708151 -0.82573909 0.58394742 -0.23096097 -0.77824318 0.58394742
		 -0.23096097 -0.77824318 0.34390855 -0.44708151 -0.82573909 0.31489104 -0.41317186
		 -0.854478 0.5664165 -0.2279879 -0.79195565 0.48988318 -0.87164849 0.015602964 1.683926e-07
		 -0.99993104 -0.011745899 -7.3136412e-08 -0.85262549 -0.52252257 0.46819752 -0.73433864
		 -0.49146506 0.46819752 -0.73433864 -0.49146506 -7.3136412e-08 -0.85262549 -0.52252257
		 1.4581693e-08 -0.5266906 -0.85005713 0.34390855 -0.44708151 -0.82573909 0.34390855
		 -0.44708151 -0.82573909 1.4581693e-08 -0.5266906 -0.85005713 3.8286197e-07 -0.4760102
		 -0.87943971 0.31489104 -0.41317186 -0.854478 1.683926e-07 -0.99993104 -0.011745899
		 -0.48988262 -0.87164879 0.01560277 -0.46819746 -0.73433864 -0.49146497 -7.3136412e-08
		 -0.85262549 -0.52252257 -7.3136412e-08 -0.85262549 -0.52252257 -0.46819746 -0.73433864
		 -0.49146497 -0.34390888 -0.44708136 -0.82573897 1.4581693e-08 -0.5266906 -0.85005713
		 1.4581693e-08 -0.5266906 -0.85005713 -0.34390888 -0.44708136 -0.82573897 -0.31489024
		 -0.41317156 -0.85447842 3.8286197e-07 -0.4760102 -0.87943971 -0.48988262 -0.87164879
		 0.01560277 -0.8510474 -0.51977098 0.074541457 -0.80174589 -0.41526312 -0.42983738
		 -0.46819746 -0.73433864 -0.49146497 -0.46819746 -0.73433864 -0.49146497 -0.80174589
		 -0.41526312 -0.42983738 -0.58394742 -0.23096083 -0.77824318 -0.34390888 -0.44708136
		 -0.82573897 -0.34390888 -0.44708136 -0.82573897 -0.58394742 -0.23096083 -0.77824318
		 -0.56641626 -0.22798771 -0.79195595 -0.31489024 -0.41317156 -0.85447842 -0.8510474
		 -0.51977098 0.074541457 -0.99289531 -0.010795669 0.11850035 -0.92336804 0.024386168
		 -0.38314062 -0.80174589 -0.41526312 -0.42983738 -0.80174589 -0.41526312 -0.42983738
		 -0.92336804 0.024386168 -0.38314062 -0.67602283 0.05119564 -0.73510009 -0.58394742
		 -0.23096083 -0.77824318 -0.58394742 -0.23096083 -0.77824318 -0.67602283 0.05119564
		 -0.73510009 -0.69544417 0.045680732 -0.71712673 -0.56641626 -0.22798771 -0.79195595
		 -0.99289531 -0.010795669 0.11850035 -0.85565668 0.49793532 0.14110985 -0.79908818
		 0.47970507 -0.36241019 -0.92336804 0.024386168 -0.38314062 -0.92336804 0.024386168
		 -0.38314062 -0.79908818 0.47970507 -0.36241019 -0.61103636 0.37626299 -0.69646299
		 -0.67602283 0.05119564 -0.73510009 -0.67602283 0.05119564 -0.73510009 -0.61103636
		 0.37626299 -0.69646299 -0.64382464 0.38363376 -0.66205364 -0.69544417 0.045680732
		 -0.71712673 -0.85565668 0.49793532 0.14110985 -0.496712 0.85393703 0.15514156 -0.46446669
		 0.81765085 -0.34017304 -0.79908818 0.47970507 -0.36241019 -0.79908818 0.47970507
		 -0.36241019 -0.46446669 0.81765085 -0.34017304 -0.36138895 0.65106136 -0.66747069
		 -0.61103636 0.37626299 -0.69646299 -0.61103636 0.37626299 -0.69646299 -0.36138895
		 0.65106136 -0.66747069 -0.38374951 0.68122035 -0.62343806 -0.64382464 0.38363376
		 -0.66205364 -0.496712 0.85393703 0.15514156 -6.5545287e-08 0.98745573 0.15789634
		 2.7060116e-07 0.94181561 -0.33612999 -0.46446669 0.81765085 -0.34017304 -0.46446669
		 0.81765085 -0.34017304 2.7060116e-07 0.94181561 -0.33612999 3.2671483e-07 0.7510969
		 -0.66019195 -0.36138895 0.65106136 -0.66747069 -0.36138895 0.65106136 -0.66747069
		 3.2671483e-07 0.7510969 -0.66019195 7.9297095e-08 0.7920329 -0.61047834 -0.38374951
		 0.68122035 -0.62343806 0.49967748 0.86418903 0.059159268 3.4923784e-07 0.99820411
		 0.059903029 5.3897833e-07 0.99631929 0.085718855 0.4981527 0.86284071 0.08573135
		 0.4981527 0.86284071 0.08573135 5.3897833e-07 0.99631929 0.085718855;
	setAttr ".n[830:995]" -type "float3"  1.3387057e-07 0.82373965 0.56696814 0.41186827
		 0.71338487 0.56696236 0.41186827 0.71338487 0.56696236 1.3387057e-07 0.82373965 0.56696814
		 2.624906e-07 0.44024283 0.89787877 0.22013015 0.38127059 0.89787281 0.22013015 0.38127059
		 0.89787281 2.624906e-07 0.44024283 0.89787877 6.1407553e-07 0.1814308 0.98340368
		 0.090731308 0.15712821 0.98340154 0.85815954 0.50695097 0.081011049 0.49967748 0.86418903
		 0.059159268 0.4981527 0.86284071 0.08573135 0.85776657 0.50082839 0.11579005 0.85776657
		 0.50082839 0.11579005 0.4981527 0.86284071 0.08573135 0.41186827 0.71338487 0.56696236
		 0.71338868 0.41188303 0.5669471 0.71338868 0.41188303 0.5669471 0.41186827 0.71338487
		 0.56696236 0.22013015 0.38127059 0.89787281 0.35902086 0.20855534 0.90973002 0.35902086
		 0.20855534 0.90973002 0.22013015 0.38127059 0.89787281 0.090731308 0.15712821 0.98340154
		 0.099267133 0.060371481 0.99322772 0.99487525 0.00088970334 0.10110564 0.85815954
		 0.50695097 0.081011049 0.85776657 0.50082839 0.11579005 0.98999971 0.0048551769 0.14098625
		 0.98999971 0.0048551769 0.14098625 0.85776657 0.50082839 0.11579005 0.71338868 0.41188303
		 0.5669471 0.82405949 -0.0070044268 0.56645995 0.82405949 -0.0070044268 0.56645995
		 0.71338868 0.41188303 0.5669471 0.35902086 0.20855534 0.90973002 0.39559519 -0.020454137
		 0.91819715 0.39559519 -0.020454137 0.91819715 0.35902086 0.20855534 0.90973002 0.099267133
		 0.060371481 0.99322772 0.067296483 -0.028099926 0.99733728 0.86260557 -0.50476855
		 0.033472694 0.99487525 0.00088970334 0.10110564 0.98999971 0.0048551769 0.14098625
		 0.86455625 -0.4958086 0.08195395 0.86455625 -0.4958086 0.08195395 0.98999971 0.0048551769
		 0.14098625 0.82405949 -0.0070044268 0.56645995 0.71621501 -0.44694865 0.5359785 0.71621501
		 -0.44694865 0.5359785 0.82405949 -0.0070044268 0.56645995 0.39559519 -0.020454137
		 0.91819715 0.35829601 -0.27986798 0.89067274 0.35829601 -0.27986798 0.89067274 0.39559519
		 -0.020454137 0.91819715 0.067296483 -0.028099926 0.99733728 0.096226536 -0.14487535
		 0.98475969 0.50299406 -0.86345863 -0.037896581 0.86260557 -0.50476855 0.033472694
		 0.86455625 -0.4958086 0.08195395 0.50509167 -0.86302036 -0.0088458769 0.50509167
		 -0.86302036 -0.0088458769 0.86455625 -0.4958086 0.08195395 0.71621501 -0.44694865
		 0.5359785 0.41241953 -0.77309358 0.48190919 0.41241953 -0.77309358 0.48190919 0.71621501
		 -0.44694865 0.5359785 0.35829601 -0.27986798 0.89067274 0.21521775 -0.48734808 0.8462702
		 0.21521775 -0.48734808 0.8462702 0.35829601 -0.27986798 0.89067274 0.096226536 -0.14487535
		 0.98475969 0.081997998 -0.27625206 0.95758086 3.1034821e-07 -0.99825054 -0.059125949
		 0.50299406 -0.86345863 -0.037896581 0.50509167 -0.86302036 -0.0088458769 2.4869962e-07
		 -0.99934489 -0.036192827 2.4869962e-07 -0.99934489 -0.036192827 0.50509167 -0.86302036
		 -0.0088458769 0.41241953 -0.77309358 0.48190919 1.1529854e-07 -0.88887072 0.45815799
		 1.1529854e-07 -0.88887072 0.45815799 0.41241953 -0.77309358 0.48190919 0.21521775
		 -0.48734808 0.8462702 -4.4935636e-08 -0.55373573 0.8326925 -4.4935636e-08 -0.55373573
		 0.8326925 0.21521775 -0.48734808 0.8462702 0.081997998 -0.27625206 0.95758086 -3.1830314e-07
		 -0.30722713 0.9516362 -0.5029937 -0.86345893 -0.03789673 3.1034821e-07 -0.99825054
		 -0.059125949 2.4869962e-07 -0.99934489 -0.036192827 -0.50509137 -0.86302054 -0.0088464646
		 -0.50509137 -0.86302054 -0.0088464646 2.4869962e-07 -0.99934489 -0.036192827 1.1529854e-07
		 -0.88887072 0.45815799 -0.41242015 -0.773094 0.48190811 -0.41242015 -0.773094 0.48190811
		 1.1529854e-07 -0.88887072 0.45815799 -4.4935636e-08 -0.55373573 0.8326925 -0.21521939
		 -0.48734844 0.84626955 -0.21521939 -0.48734844 0.84626955 -4.4935636e-08 -0.55373573
		 0.8326925 -3.1830314e-07 -0.30722713 0.9516362 -0.081999466 -0.27625263 0.95758051
		 -0.86260533 -0.50476885 0.033472493 -0.5029937 -0.86345893 -0.03789673 -0.50509137
		 -0.86302054 -0.0088464646 -0.86455607 -0.4958089 0.081953578 -0.86455607 -0.4958089
		 0.081953578 -0.50509137 -0.86302054 -0.0088464646 -0.41242015 -0.773094 0.48190811
		 -0.71621531 -0.44694874 0.53597802 -0.71621531 -0.44694874 0.53597802 -0.41242015
		 -0.773094 0.48190811 -0.21521939 -0.48734844 0.84626955 -0.3582989 -0.27986857 0.89067131
		 -0.3582989 -0.27986857 0.89067131 -0.21521939 -0.48734844 0.84626955 -0.081999466
		 -0.27625263 0.95758051 -0.09623231 -0.14487652 0.98475891 -0.99487537 0.00088958547
		 0.10110536 -0.86260533 -0.50476885 0.033472493 -0.86455607 -0.4958089 0.081953578
		 -0.98999971 0.004855189 0.14098622 -0.98999971 0.004855189 0.14098622 -0.86455607
		 -0.4958089 0.081953578 -0.71621531 -0.44694874 0.53597802 -0.82405955 -0.0070044613
		 0.56645995 -0.82405955 -0.0070044613 0.56645995 -0.71621531 -0.44694874 0.53597802
		 -0.3582989 -0.27986857 0.89067131 -0.39559826 -0.020454362 0.9181959 -0.39559826
		 -0.020454362 0.9181959 -0.3582989 -0.27986857 0.89067131 -0.09623231 -0.14487652
		 0.98475891 -0.067303583 -0.028100243 0.99733675 -0.85815954 0.50695103 0.081011303
		 -0.99487537 0.00088958547 0.10110536 -0.98999971 0.004855189 0.14098622 -0.85776663
		 0.50082833 0.11579042 -0.85776663 0.50082833 0.11579042 -0.98999971 0.004855189 0.14098622
		 -0.82405955 -0.0070044613 0.56645995 -0.71338969 0.41188237 0.56694633 -0.71338969
		 0.41188237 0.56694633 -0.82405955 -0.0070044613 0.56645995 -0.39559826 -0.020454362
		 0.9181959 -0.3590236 0.20855604 0.90972877 -0.3590236 0.20855604 0.90972877 -0.39559826
		 -0.020454362 0.9181959 -0.067303583 -0.028100243 0.99733675 -0.099270284 0.060373396
		 0.99322724 -0.499677 0.86418921 0.059159961 -0.85815954 0.50695103 0.081011303 -0.85776663
		 0.50082833 0.11579042 -0.49815235 0.86284083 0.085732169 -0.49815235 0.86284083 0.085732169
		 -0.85776663 0.50082833 0.11579042 -0.71338969 0.41188237 0.56694633 -0.41186908 0.71338463
		 0.56696236 -0.41186908 0.71338463 0.56696236 -0.71338969 0.41188237 0.56694633 -0.3590236
		 0.20855604 0.90972877 -0.22013126 0.38127083 0.89787239;
	setAttr ".n[996:1161]" -type "float3"  -0.22013126 0.38127083 0.89787239 -0.3590236
		 0.20855604 0.90972877 -0.099270284 0.060373396 0.99322724 -0.090731338 0.15713051
		 0.98340118 3.4923784e-07 0.99820411 0.059903029 -0.499677 0.86418921 0.059159961
		 -0.49815235 0.86284083 0.085732169 5.3897833e-07 0.99631929 0.085718855 5.3897833e-07
		 0.99631929 0.085718855 -0.49815235 0.86284083 0.085732169 -0.41186908 0.71338463
		 0.56696236 1.3387057e-07 0.82373965 0.56696814 1.3387057e-07 0.82373965 0.56696814
		 -0.41186908 0.71338463 0.56696236 -0.22013126 0.38127083 0.89787239 2.624906e-07
		 0.44024283 0.89787877 2.624906e-07 0.44024283 0.89787877 -0.22013126 0.38127083 0.89787239
		 -0.090731338 0.15713051 0.98340118 6.1407553e-07 0.1814308 0.98340368 0.85815954
		 0.50695097 0.081011049 0.85565692 0.49793515 0.14110918 0.49671227 0.85393691 0.15514112
		 0.49967748 0.86418903 0.059159268 0.49967748 0.86418903 0.059159268 0.49671227 0.85393691
		 0.15514112 -6.5545287e-08 0.98745573 0.15789634 3.4923784e-07 0.99820411 0.059903029
		 0.0095486613 -0.93497938 0.3545734 0.004771499 -0.93493468 0.35478777 0.0046880348
		 -0.99998897 1.3000137e-07 0.009380782 -0.99995595 -2.5981996e-07 0.009380782 -0.99995595
		 -2.5981996e-07 0.0046880348 -0.99998897 1.3000137e-07 0.0047712638 -0.93493468 -0.35478777
		 0.009547865 -0.9349792 -0.35457385 0.009547865 -0.9349792 -0.35457385 0.0047712638
		 -0.93493468 -0.35478777 0.0048729922 -0.70709854 -0.70709825 0.009752783 -0.70707315
		 -0.70707309 0.009753448 0.70707285 0.70707339 0.0048731989 0.70709831 0.70709842
		 0.0047719255 0.35478717 0.93493491 0.0095483139 0.35457277 0.93497968 0.0095486753
		 0.93497956 -0.35457304 0.0047717034 0.93493479 -0.35478738 0.0046880892 0.99998897
		 2.6963249e-07 0.0093809655 0.99995595 2.7906589e-07 0.0093809655 0.99995595 2.7906589e-07
		 0.0046880892 0.99998897 2.6963249e-07 0.0047713262 0.93493462 0.35478777 0.0095483819
		 0.93497932 0.35457376 0.0095483819 0.93497932 0.35457376 0.0047713262 0.93493462
		 0.35478777 0.0048731989 0.70709831 0.70709842 0.009753448 0.70707285 0.70707339 0.009752783
		 -0.70707315 -0.70707309 0.0048729922 -0.70709854 -0.70709825 0.0047713416 -0.35478777
		 -0.93493474 0.0095474869 -0.35457349 -0.93497944 4.2670794e-07 0.35473964 0.93496507
		 6.6776721e-07 0.3547397 0.93496507 3.4786758e-08 -4.8123745e-08 1 7.1471163e-07 -2.6949309e-07
		 1 -6.7467266e-07 -4.668006e-07 1 7.1471163e-07 -2.6949309e-07 1 8.7263999e-07 -0.3547399
		 0.93496507 -5.2364169e-07 -0.35474038 0.93496484 7.1471163e-07 -2.6949309e-07 1 3.4786758e-08
		 -4.8123745e-08 1 6.6802556e-08 -0.35473984 0.93496501 8.7263999e-07 -0.3547399 0.93496507
		 2.6135046e-07 0.70710695 0.70710659 4.2670794e-07 0.35473964 0.93496507 -3.6965407e-08
		 0.35474008 0.93496501 6.1010837e-08 0.70710748 0.70710617 4.0201698e-07 0.70710713
		 0.70710647 6.6776721e-07 0.3547397 0.93496507 4.2670794e-07 0.35473964 0.93496507
		 2.6135046e-07 0.70710695 0.70710659 8.7263999e-07 -0.3547399 0.93496507 6.6802556e-08
		 -0.35473984 0.93496501 4.0201635e-07 -0.70710742 0.70710611 4.3464561e-07 -0.70710719
		 0.70710641 -5.2364169e-07 -0.35474038 0.93496484 8.7263999e-07 -0.3547399 0.93496507
		 4.3464561e-07 -0.70710719 0.70710641 2.3363745e-07 -0.70710719 0.70710641 -3.026685e-08
		 -0.93496495 0.35474008 1.4661222e-07 -0.93496501 0.35473993 -1.9674914e-08 -1 7.6998035e-08
		 -3.0139049e-08 -1 2.4061888e-08 0.0095483139 0.35457277 0.93497968 0.0047719255 0.35478717
		 0.93493491 0.004689395 9.6297299e-09 0.99998897 0.0093809478 6.7360766e-08 0.99995595
		 0.0093809478 6.7360766e-08 0.99995595 0.004689395 9.6297299e-09 0.99998897 0.0047725858
		 -0.35478759 0.93493474 0.0095488541 -0.3545731 0.9349795 0.0095488541 -0.3545731
		 0.9349795 0.0047725858 -0.35478759 0.93493474 0.0048735202 -0.70709854 0.70709819
		 0.0097541921 -0.70707339 0.70707285 0.0048736022 0.70709872 -0.70709801 0.0047717034
		 0.93493479 -0.35478738 0.0095486753 0.93497956 -0.35457304 0.0097539397 0.70707369
		 -0.70707268 1.4661222e-07 -0.93496501 0.35473993 3.5375794e-07 -0.93496513 0.35473981
		 2.092829e-08 -1 1.2512184e-07 -1.9674914e-08 -1 7.6998035e-08 -3.0139049e-08 -1 2.4061888e-08
		 -1.9674914e-08 -1 7.6998035e-08 4.7796407e-09 -0.9349649 -0.35474023 -1.1407494e-09
		 -0.9349649 -0.35474032 -1.9674914e-08 -1 7.6998035e-08 2.092829e-08 -1 1.2512184e-07
		 -6.4203483e-08 -0.93496495 -0.35474023 4.7796407e-09 -0.9349649 -0.35474023 4.3464561e-07
		 -0.70710719 0.70710641 1.4661222e-07 -0.93496501 0.35473993 -3.026685e-08 -0.93496495
		 0.35474008 2.3363745e-07 -0.70710719 0.70710641 4.0201635e-07 -0.70710742 0.70710611
		 3.5375794e-07 -0.93496513 0.35473981 1.4661222e-07 -0.93496501 0.35473993 4.3464561e-07
		 -0.70710719 0.70710641 4.7796407e-09 -0.9349649 -0.35474023 -6.4203483e-08 -0.93496495
		 -0.35474023 4.4220928e-07 -0.70710689 -0.70710659 1.2261478e-07 -0.70710689 -0.70710659
		 -1.1407494e-09 -0.9349649 -0.35474032 4.7796407e-09 -0.9349649 -0.35474023 1.2261478e-07
		 -0.70710689 -0.70710659 1.4290819e-07 -0.70710677 -0.70710683 2.1613117e-07 0.93496495
		 -0.35474005 7.9050707e-08 0.93496513 -0.35473973 9.8423996e-08 1 1.7324561e-07 2.1724745e-07
		 1 1.8287034e-07 7.9050707e-08 0.93496513 -0.35473973 -3.7308402e-07 0.93496513 -0.3547397
		 -7.1976345e-08 1 1.5399613e-07 9.8423996e-08 1 1.7324561e-07 2.1724745e-07 1 1.8287034e-07
		 9.8423996e-08 1 1.7324561e-07 -2.0920729e-10 0.93496495 0.35474005 2.9988735e-07
		 0.93496501 0.35473984 9.8423996e-08 1 1.7324561e-07 -7.1976345e-08 1 1.5399613e-07
		 -2.0277153e-07 0.93496495 0.35474014 -2.0920729e-10 0.93496495 0.35474005 -1.6863227e-07
		 0.70710719 -0.70710641 7.9050707e-08 0.93496513 -0.35473973 2.1613117e-07 0.93496495
		 -0.35474005 -1.1518928e-07 0.70710665 -0.70710689 -8.4456661e-07 0.70710695 -0.70710647
		 -3.7308402e-07 0.93496513 -0.3547397 7.9050707e-08 0.93496513 -0.35473973 -1.6863227e-07
		 0.70710719 -0.70710641 -2.0920729e-10 0.93496495 0.35474005 -2.0277153e-07 0.93496495
		 0.35474014 4.0201698e-07 0.70710713 0.70710647 2.6135046e-07 0.70710695 0.70710659
		 2.9988735e-07 0.93496501 0.35473984 -2.0920729e-10 0.93496495 0.35474005;
	setAttr ".n[1162:1327]" -type "float3"  2.6135046e-07 0.70710695 0.70710659 6.1010837e-08
		 0.70710748 0.70710617 1.1851503e-07 -0.35474008 -0.93496495 6.924374e-08 -0.35474014
		 -0.93496495 -1.5297637e-07 1.2030944e-07 -1 2.637953e-07 -2.8874265e-08 -1 0.0095474869
		 -0.35457349 -0.93497944 0.0047713416 -0.35478777 -0.93493474 0.0046878313 3.8518923e-08
		 -0.99998897 0.0093803946 8.6606747e-08 -0.99995595 0.0093803946 8.6606747e-08 -0.99995595
		 0.0046878313 3.8518923e-08 -0.99998897 0.0047713304 0.3547878 -0.93493468 0.0095484722
		 0.35457352 -0.93497938 0.0095484722 0.35457352 -0.93497938 0.0047713304 0.3547878
		 -0.93493468 0.0048736022 0.70709872 -0.70709801 0.0097539397 0.70707369 -0.70707268
		 -3.6965407e-08 0.35474008 0.93496501 4.2670794e-07 0.35473964 0.93496507 7.1471163e-07
		 -2.6949309e-07 1 -6.7467266e-07 -4.668006e-07 1 6.924374e-08 -0.35474014 -0.93496495
		 4.0258374e-07 -0.35473996 -0.93496501 -7.6894077e-07 2.2136932e-07 -1 -1.5297637e-07
		 1.2030944e-07 -1 2.637953e-07 -2.8874265e-08 -1 -1.5297637e-07 1.2030944e-07 -1 -3.1079276e-07
		 0.35474014 -0.93496495 5.2576915e-08 0.35473996 -0.93496501 -1.5297637e-07 1.2030944e-07
		 -1 -7.6894077e-07 2.2136932e-07 -1 -1.2408892e-06 0.35473993 -0.93496501 -3.1079276e-07
		 0.35474014 -0.93496495 1.4290819e-07 -0.70710677 -0.70710683 1.2261478e-07 -0.70710689
		 -0.70710659 6.924374e-08 -0.35474014 -0.93496495 1.1851503e-07 -0.35474008 -0.93496495
		 1.2261478e-07 -0.70710689 -0.70710659 4.4220928e-07 -0.70710689 -0.70710659 4.0258374e-07
		 -0.35473996 -0.93496501 6.924374e-08 -0.35474014 -0.93496495 -3.1079276e-07 0.35474014
		 -0.93496495 -1.2408892e-06 0.35473993 -0.93496501 -8.4456661e-07 0.70710695 -0.70710647
		 -1.6863227e-07 0.70710719 -0.70710641 5.2576915e-08 0.35473996 -0.93496501 -3.1079276e-07
		 0.35474014 -0.93496495 -1.6863227e-07 0.70710719 -0.70710641 -1.1518928e-07 0.70710665
		 -0.70710689 0.0047713416 -0.35478777 -0.93493474 4.8210734e-07 -0.35474008 -0.93496495
		 -1.2749301e-08 -3.8499017e-08 -1 0.0046878313 3.8518923e-08 -0.99998897 0.0046878313
		 3.8518923e-08 -0.99998897 -1.2749301e-08 -3.8499017e-08 -1 -5.3386077e-07 0.35473979
		 -0.93496501 0.0047713304 0.3547878 -0.93493468 0.0048729922 -0.70709854 -0.70709825
		 2.0729176e-07 -0.70710683 -0.70710677 4.8210734e-07 -0.35474008 -0.93496495 0.0047713416
		 -0.35478777 -0.93493474 0.0047713304 0.3547878 -0.93493468 -5.3386077e-07 0.35473979
		 -0.93496501 -3.6884089e-07 0.70710659 -0.70710689 0.0048736022 0.70709872 -0.70709801
		 2.0729176e-07 -0.70710683 -0.70710677 1.4290819e-07 -0.70710677 -0.70710683 1.1851503e-07
		 -0.35474008 -0.93496495 4.8210734e-07 -0.35474008 -0.93496495 4.8210734e-07 -0.35474008
		 -0.93496495 1.1851503e-07 -0.35474008 -0.93496495 2.637953e-07 -2.8874265e-08 -1
		 -1.2749301e-08 -3.8499017e-08 -1 -1.2749301e-08 -3.8499017e-08 -1 2.637953e-07 -2.8874265e-08
		 -1 5.2576915e-08 0.35473996 -0.93496501 -5.3386077e-07 0.35473979 -0.93496501 -5.3386077e-07
		 0.35473979 -0.93496501 5.2576915e-08 0.35473996 -0.93496501 -1.1518928e-07 0.70710665
		 -0.70710689 -3.6884089e-07 0.70710659 -0.70710689 0.0047717034 0.93493479 -0.35478738
		 -4.9461626e-08 0.93496495 -0.35474005 9.1195096e-09 1 2.3580652e-07 0.0046880892
		 0.99998897 2.6963249e-07 0.0046880892 0.99998897 2.6963249e-07 9.1195096e-09 1 2.3580652e-07
		 -3.3044767e-08 0.93496501 0.35473993 0.0047713262 0.93493462 0.35478777 -3.6884089e-07
		 0.70710659 -0.70710689 -4.9461626e-08 0.93496495 -0.35474005 0.0047717034 0.93493479
		 -0.35478738 0.0048736022 0.70709872 -0.70709801 0.0047713262 0.93493462 0.35478777
		 -3.3044767e-08 0.93496501 0.35473993 -1.5831822e-07 0.70710713 0.70710647 0.0048731989
		 0.70709831 0.70709842 -3.6884089e-07 0.70710659 -0.70710689 -1.1518928e-07 0.70710665
		 -0.70710689 2.1613117e-07 0.93496495 -0.35474005 -4.9461626e-08 0.93496495 -0.35474005
		 -4.9461626e-08 0.93496495 -0.35474005 2.1613117e-07 0.93496495 -0.35474005 2.1724745e-07
		 1 1.8287034e-07 9.1195096e-09 1 2.3580652e-07 9.1195096e-09 1 2.3580652e-07 2.1724745e-07
		 1 1.8287034e-07 2.9988735e-07 0.93496501 0.35473984 -3.3044767e-08 0.93496501 0.35473993
		 -3.3044767e-08 0.93496501 0.35473993 2.9988735e-07 0.93496501 0.35473984 6.1010837e-08
		 0.70710748 0.70710617 -1.5831822e-07 0.70710713 0.70710647 0.004771499 -0.93493468
		 0.35478777 -1.9562853e-07 -0.93496495 0.35474011 -3.7741206e-08 -1 1.0105994e-07
		 0.0046880348 -0.99998897 1.3000137e-07 0.0046880348 -0.99998897 1.3000137e-07 -3.7741206e-08
		 -1 1.0105994e-07 -7.1858267e-08 -0.9349649 -0.3547402 0.0047712638 -0.93493468 -0.35478777
		 -2.1079988e-07 -0.70710713 0.70710647 -1.9562853e-07 -0.93496495 0.35474011 0.004771499
		 -0.93493468 0.35478777 0.0048735202 -0.70709854 0.70709819 0.0047712638 -0.93493468
		 -0.35478777 -7.1858267e-08 -0.9349649 -0.3547402 2.0729176e-07 -0.70710683 -0.70710677
		 0.0048729922 -0.70709854 -0.70709825 -2.1079988e-07 -0.70710713 0.70710647 2.3363745e-07
		 -0.70710719 0.70710641 -3.026685e-08 -0.93496495 0.35474008 -1.9562853e-07 -0.93496495
		 0.35474011 -1.9562853e-07 -0.93496495 0.35474011 -3.026685e-08 -0.93496495 0.35474008
		 -3.0139049e-08 -1 2.4061888e-08 -3.7741206e-08 -1 1.0105994e-07 -3.7741206e-08 -1
		 1.0105994e-07 -3.0139049e-08 -1 2.4061888e-08 -1.1407494e-09 -0.9349649 -0.35474032
		 -7.1858267e-08 -0.9349649 -0.3547402 -7.1858267e-08 -0.9349649 -0.3547402 -1.1407494e-09
		 -0.9349649 -0.35474032 1.4290819e-07 -0.70710677 -0.70710683 2.0729176e-07 -0.70710683
		 -0.70710677 0.0047719255 0.35478717 0.93493491 2.7211431e-07 0.35473999 0.93496501
		 -1.3121813e-07 -1.4918369e-07 1 0.004689395 9.6297299e-09 0.99998897 0.004689395
		 9.6297299e-09 0.99998897 -1.3121813e-07 -1.4918369e-07 1 -5.7015649e-07 -0.35473999
		 0.93496501 0.0047725858 -0.35478759 0.93493474 -1.5831822e-07 0.70710713 0.70710647
		 2.7211431e-07 0.35473999 0.93496501 0.0047719255 0.35478717 0.93493491 0.0048731989
		 0.70709831 0.70709842 0.0047725858 -0.35478759 0.93493474 -5.7015649e-07 -0.35473999
		 0.93496501 -2.1079988e-07 -0.70710713 0.70710647 0.0048735202 -0.70709854 0.70709819
		 -1.5831822e-07 0.70710713 0.70710647 6.1010837e-08 0.70710748 0.70710617 -3.6965407e-08
		 0.35474008 0.93496501 2.7211431e-07 0.35473999 0.93496501;
	setAttr ".n[1328:1493]" -type "float3"  2.7211431e-07 0.35473999 0.93496501 -3.6965407e-08
		 0.35474008 0.93496501 -6.7467266e-07 -4.668006e-07 1 -1.3121813e-07 -1.4918369e-07
		 1 -1.3121813e-07 -1.4918369e-07 1 -6.7467266e-07 -4.668006e-07 1 -5.2364169e-07 -0.35474038
		 0.93496484 -5.7015649e-07 -0.35473999 0.93496501 -5.7015649e-07 -0.35473999 0.93496501
		 -5.2364169e-07 -0.35474038 0.93496484 2.3363745e-07 -0.70710719 0.70710641 -2.1079988e-07
		 -0.70710713 0.70710647 0.0097541921 -0.70707339 0.70707285 0.0048735202 -0.70709854
		 0.70709819 0.004771499 -0.93493468 0.35478777 0.0095486613 -0.93497938 0.3545734
		 0.45422354 -0.35312757 -0.81791306 -5.8642757e-07 -0.39547887 -0.91847509 -3.4270093e-07
		 1.0229878e-08 -1 0.47814196 2.5414526e-08 -0.87828255 -5.8642757e-07 -0.39547887
		 -0.91847509 -0.45422387 -0.35312769 -0.81791294 -0.4781422 1.169068e-07 -0.87828243
		 -3.4270093e-07 1.0229878e-08 -1 0.47814196 2.5414526e-08 -0.87828255 -3.4270093e-07
		 1.0229878e-08 -1 -5.3406808e-07 0.39547908 -0.91847497 0.45422357 0.35312769 -0.81791306
		 -3.4270093e-07 1.0229878e-08 -1 -0.4781422 1.169068e-07 -0.87828243 -0.45422438 0.35312796
		 -0.81791252 -5.3406808e-07 0.39547908 -0.91847497 0.76577741 -0.48200589 -0.42574084
		 0.43174458 -0.67670763 -0.59637529 0.45422354 -0.35312757 -0.81791306 0.82658392
		 -0.27210724 -0.49266288 0.43174458 -0.67670763 -0.59637529 -7.7217936e-07 -0.74898916
		 -0.66258228 -5.8642757e-07 -0.39547887 -0.91847509 0.45422354 -0.35312757 -0.81791306
		 -7.7217936e-07 -0.74898916 -0.66258228 -0.43174464 -0.67670768 -0.59637511 -0.45422387
		 -0.35312769 -0.81791294 -5.8642757e-07 -0.39547887 -0.91847509 -0.43174464 -0.67670768
		 -0.59637511 -0.73843127 -0.50737149 -0.44417724 -0.79951411 -0.27740079 -0.53275335
		 -0.45422387 -0.35312769 -0.81791294 -0.45422387 -0.35312769 -0.81791294 -0.79951411
		 -0.27740079 -0.53275335 -0.83413827 1.1066574e-07 -0.55155545 -0.4781422 1.169068e-07
		 -0.87828243 -0.4781422 1.169068e-07 -0.87828243 -0.83413827 1.1066574e-07 -0.55155545
		 -0.79951411 0.277401 -0.53275299 -0.45422438 0.35312796 -0.81791252 -0.45422438 0.35312796
		 -0.81791252 -0.79951411 0.277401 -0.53275299 -0.73843127 0.5073716 -0.44417718 -0.43174484
		 0.67670768 -0.59637505 -5.3406808e-07 0.39547908 -0.91847497 -0.45422438 0.35312796
		 -0.81791252 -0.43174484 0.67670768 -0.59637505 -4.4786398e-07 0.74898946 -0.66258198
		 0.45422357 0.35312769 -0.81791306 -5.3406808e-07 0.39547908 -0.91847497 -4.4786398e-07
		 0.74898946 -0.66258198 0.43174419 0.67670786 -0.59637529 0.82658398 0.27210709 -0.49266288
		 0.45422357 0.35312769 -0.81791306 0.43174419 0.67670786 -0.59637529 0.76577687 0.48200652
		 -0.42574105 0.88728803 -2.3407934e-07 -0.46121579 0.47814196 2.5414526e-08 -0.87828255
		 0.45422357 0.35312769 -0.81791306 0.82658398 0.27210709 -0.49266288 0.82658392 -0.27210724
		 -0.49266288 0.45422354 -0.35312757 -0.81791306 0.47814196 2.5414526e-08 -0.87828255
		 0.88728803 -2.3407934e-07 -0.46121579 -0.45639077 0.83655351 -0.30312657 -0.47790483
		 0.87841159 4.5749392e-08 5.6256482e-08 1 -9.2056062e-08 -3.3755953e-07 0.94089597
		 -0.3386957 -0.47790483 0.87841159 4.5749392e-08 -0.45814103 0.84111464 0.28745946
		 2.4911301e-07 0.94703472 0.32113129 5.6256482e-08 1 -9.2056062e-08 -3.3755953e-07
		 0.94089597 -0.3386957 5.6256482e-08 1 -9.2056062e-08 0.47790515 0.87841141 4.574941e-08
		 0.45639101 0.83655339 -0.30312657 5.6256482e-08 1 -9.2056062e-08 2.4911301e-07 0.94703472
		 0.32113129 0.45814136 0.84111452 0.28745934 0.47790515 0.87841141 4.574941e-08 -0.73843127
		 0.5073716 -0.44417718 -0.7937724 0.55795568 -0.24209672 -0.45639077 0.83655351 -0.30312657
		 -0.43174484 0.67670768 -0.59637505 -0.7937724 0.55795568 -0.24209672 -0.81888151
		 0.57396251 2.3441117e-07 -0.47790483 0.87841159 4.5749392e-08 -0.45639077 0.83655351
		 -0.30312657 -0.81888151 0.57396251 2.3441117e-07 -0.79715729 0.55653876 0.23410448
		 -0.45814103 0.84111464 0.28745946 -0.47790483 0.87841159 4.5749392e-08 -0.79715729
		 0.55653876 0.23410448 -0.73742104 0.49890468 0.45530692 -0.43834373 0.65795165 0.61233526
		 -0.45814103 0.84111464 0.28745946 -0.45814103 0.84111464 0.28745946 -0.43834373 0.65795165
		 0.61233526 5.9296775e-07 0.73113614 0.68223161 2.4911301e-07 0.94703472 0.32113129
		 2.4911301e-07 0.94703472 0.32113129 5.9296775e-07 0.73113614 0.68223161 0.43834487
		 0.657951 0.61233521 0.45814136 0.84111452 0.28745934 0.45814136 0.84111452 0.28745934
		 0.43834487 0.657951 0.61233521 0.76057577 0.47678438 0.44068259 0.84701341 0.48707888
		 0.21289104 0.47790515 0.87841141 4.574941e-08 0.45814136 0.84111452 0.28745934 0.84701341
		 0.48707888 0.21289104 0.8909598 0.45408219 7.9498037e-05 0.45639101 0.83655339 -0.30312657
		 0.47790515 0.87841141 4.574941e-08 0.8909598 0.45408219 7.9498037e-05 0.84568942
		 0.48652053 -0.21933375 0.43174419 0.67670786 -0.59637529 0.45639101 0.83655339 -0.30312657
		 0.84568942 0.48652053 -0.21933375 0.76577687 0.48200652 -0.42574105 -4.4786398e-07
		 0.74898946 -0.66258198 -3.3755953e-07 0.94089597 -0.3386957 0.45639101 0.83655339
		 -0.30312657 0.43174419 0.67670786 -0.59637529 -0.43174484 0.67670768 -0.59637505
		 -0.45639077 0.83655351 -0.30312657 -3.3755953e-07 0.94089597 -0.3386957 -4.4786398e-07
		 0.74898946 -0.66258198 -0.45814121 -0.84111458 0.28745916 -0.47790512 -0.87841147
		 -1.8808082e-07 -1.5342677e-07 -1 -2.8639664e-07 -3.0503646e-08 -0.94703478 0.32113102
		 -0.47790512 -0.87841147 -1.8808082e-07 -0.45639122 -0.83655328 -0.30312645 -7.0580631e-07
		 -0.94089597 -0.33869576 -1.5342677e-07 -1 -2.8639664e-07 -3.0503646e-08 -0.94703478
		 0.32113102 -1.5342677e-07 -1 -2.8639664e-07 0.47790471 -0.87841165 -2.4399674e-07
		 0.45814151 -0.84111452 0.28745902 -1.5342677e-07 -1 -2.8639664e-07 -7.0580631e-07
		 -0.94089597 -0.33869576 0.45639068 -0.83655339 -0.30312678 0.47790471 -0.87841165
		 -2.4399674e-07 -0.73742127 -0.49890426 0.45530692 -0.79715717 -0.55653894 0.23410454
		 -0.45814121 -0.84111458 0.28745916 -0.43834448 -0.65795135 0.61233491 -0.79715717
		 -0.55653894 0.23410454 -0.81888163 -0.57396239 2.7431097e-08;
	setAttr ".n[1494:1659]" -type "float3"  -0.47790512 -0.87841147 -1.8808082e-07
		 -0.45814121 -0.84111458 0.28745916 -0.81888163 -0.57396239 2.7431097e-08 -0.7937727
		 -0.55795515 -0.24209677 -0.45639122 -0.83655328 -0.30312645 -0.47790512 -0.87841147
		 -1.8808082e-07 -0.7937727 -0.55795515 -0.24209677 -0.73843127 -0.50737149 -0.44417724
		 -0.43174464 -0.67670768 -0.59637511 -0.45639122 -0.83655328 -0.30312645 -0.45639122
		 -0.83655328 -0.30312645 -0.43174464 -0.67670768 -0.59637511 -7.7217936e-07 -0.74898916
		 -0.66258228 -7.0580631e-07 -0.94089597 -0.33869576 -7.0580631e-07 -0.94089597 -0.33869576
		 -7.7217936e-07 -0.74898916 -0.66258228 0.43174458 -0.67670763 -0.59637529 0.45639068
		 -0.83655339 -0.30312678 0.45639068 -0.83655339 -0.30312678 0.43174458 -0.67670763
		 -0.59637529 0.76577741 -0.48200589 -0.42574084 0.84569031 -0.48651895 -0.21933369
		 0.47790471 -0.87841165 -2.4399674e-07 0.45639068 -0.83655339 -0.30312678 0.84569031
		 -0.48651895 -0.21933369 0.89096087 -0.45408008 7.9390025e-05 0.45814151 -0.84111452
		 0.28745902 0.47790471 -0.87841165 -2.4399674e-07 0.89096087 -0.45408008 7.9390025e-05
		 0.84701437 -0.48707709 0.21289109 0.43834478 -0.65795124 0.61233479 0.45814151 -0.84111452
		 0.28745902 0.84701437 -0.48707709 0.21289109 0.76057607 -0.47678426 0.44068223 3.3883884e-07
		 -0.73113626 0.68223143 -3.0503646e-08 -0.94703478 0.32113102 0.45814151 -0.84111452
		 0.28745902 0.43834478 -0.65795124 0.61233479 -0.43834448 -0.65795135 0.61233491 -0.45814121
		 -0.84111458 0.28745916 -3.0503646e-08 -0.94703478 0.32113102 3.3883884e-07 -0.73113626
		 0.68223143 -0.94522327 0.24222435 0.21881557 -0.9675166 0.2528075 4.0212493e-07 -1
		 3.1017328e-07 4.4102762e-07 -0.97436816 1.719917e-07 0.2249594 -0.9675166 0.2528075
		 4.0212493e-07 -0.94500077 0.24309202 -0.21881448 -0.9745627 1.3078855e-07 -0.22411509
		 -1 3.1017328e-07 4.4102762e-07 -0.97436816 1.719917e-07 0.2249594 -1 3.1017328e-07
		 4.4102762e-07 -0.96751672 -0.25280705 2.0471818e-07 -0.94522339 -0.24222387 0.21881574
		 -1 3.1017328e-07 4.4102762e-07 -0.9745627 1.3078855e-07 -0.22411509 -0.94500089 -0.24309143
		 -0.2188146 -0.96751672 -0.25280705 2.0471818e-07 -0.73742104 0.49890468 0.45530692
		 -0.79715729 0.55653876 0.23410448 -0.94522327 0.24222435 0.21881557 -0.80779099 0.25631633
		 0.53082544 -0.79715729 0.55653876 0.23410448 -0.81888151 0.57396251 2.3441117e-07
		 -0.9675166 0.2528075 4.0212493e-07 -0.94522327 0.24222435 0.21881557 -0.81888151
		 0.57396251 2.3441117e-07 -0.7937724 0.55795568 -0.24209672 -0.94500077 0.24309202
		 -0.21881448 -0.9675166 0.2528075 4.0212493e-07 -0.7937724 0.55795568 -0.24209672
		 -0.73843127 0.5073716 -0.44417718 -0.79951411 0.277401 -0.53275299 -0.94500077 0.24309202
		 -0.21881448 -0.94500077 0.24309202 -0.21881448 -0.79951411 0.277401 -0.53275299 -0.83413827
		 1.1066574e-07 -0.55155545 -0.9745627 1.3078855e-07 -0.22411509 -0.9745627 1.3078855e-07
		 -0.22411509 -0.83413827 1.1066574e-07 -0.55155545 -0.79951411 -0.27740079 -0.53275335
		 -0.94500089 -0.24309143 -0.2188146 -0.94500089 -0.24309143 -0.2188146 -0.79951411
		 -0.27740079 -0.53275335 -0.73843127 -0.50737149 -0.44417724 -0.7937727 -0.55795515
		 -0.24209677 -0.96751672 -0.25280705 2.0471818e-07 -0.94500089 -0.24309143 -0.2188146
		 -0.7937727 -0.55795515 -0.24209677 -0.81888163 -0.57396239 2.7431097e-08 -0.94522339
		 -0.24222387 0.21881574 -0.96751672 -0.25280705 2.0471818e-07 -0.81888163 -0.57396239
		 2.7431097e-08 -0.79715717 -0.55653894 0.23410454 -0.80779111 -0.25631613 0.53082532
		 -0.94522339 -0.24222387 0.21881574 -0.79715717 -0.55653894 0.23410454 -0.73742127
		 -0.49890426 0.45530692 -0.83370286 -4.2746105e-08 0.55221331 -0.97436816 1.719917e-07
		 0.2249594 -0.94522339 -0.24222387 0.21881574 -0.80779111 -0.25631613 0.53082532 -0.80779099
		 0.25631633 0.53082544 -0.94522327 0.24222435 0.21881557 -0.97436816 1.719917e-07
		 0.2249594 -0.83370286 -4.2746105e-08 0.55221331 0.4586384 0.31651017 0.83034462 1.3032169e-06
		 0.35553196 0.93466413 1.5600575e-06 -1.5344828e-08 1 0.47814283 -1.601114e-07 0.87828207
		 1.3032169e-06 0.35553196 0.93466413 -0.45863748 0.3165102 0.83034509 -0.47814235
		 -2.5414513e-08 0.87828231 1.5600575e-06 -1.5344828e-08 1 0.47814283 -1.601114e-07
		 0.87828207 1.5600575e-06 -1.5344828e-08 1 7.4690297e-07 -0.35553211 0.93466401 0.45863816
		 -0.31651071 0.83034444 1.5600575e-06 -1.5344828e-08 1 -0.47814235 -2.5414513e-08
		 0.87828231 -0.45863807 -0.31651008 0.83034474 7.4690297e-07 -0.35553211 0.93466401
		 0.76057577 0.47678438 0.44068259 0.43834487 0.657951 0.61233521 0.4586384 0.31651017
		 0.83034462 0.83506721 0.24949798 0.49031985 0.43834487 0.657951 0.61233521 5.9296775e-07
		 0.73113614 0.68223161 1.3032169e-06 0.35553196 0.93466413 0.4586384 0.31651017 0.83034462
		 5.9296775e-07 0.73113614 0.68223161 -0.43834373 0.65795165 0.61233526 -0.45863748
		 0.3165102 0.83034509 1.3032169e-06 0.35553196 0.93466413 -0.43834373 0.65795165 0.61233526
		 -0.73742104 0.49890468 0.45530692 -0.80779099 0.25631633 0.53082544 -0.45863748 0.3165102
		 0.83034509 -0.45863748 0.3165102 0.83034509 -0.80779099 0.25631633 0.53082544 -0.83370286
		 -4.2746105e-08 0.55221331 -0.47814235 -2.5414513e-08 0.87828231 -0.47814235 -2.5414513e-08
		 0.87828231 -0.83370286 -4.2746105e-08 0.55221331 -0.80779111 -0.25631613 0.53082532
		 -0.45863807 -0.31651008 0.83034474 -0.45863807 -0.31651008 0.83034474 -0.80779111
		 -0.25631613 0.53082532 -0.73742127 -0.49890426 0.45530692 -0.43834448 -0.65795135
		 0.61233491 7.4690297e-07 -0.35553211 0.93466401 -0.45863807 -0.31651008 0.83034474
		 -0.43834448 -0.65795135 0.61233491 3.3883884e-07 -0.73113626 0.68223143 0.45863816
		 -0.31651071 0.83034444 7.4690297e-07 -0.35553211 0.93466401 3.3883884e-07 -0.73113626
		 0.68223143 0.43834478 -0.65795124 0.61233479 0.83506799 -0.24949835 0.49031833 0.45863816
		 -0.31651071 0.83034444 0.43834478 -0.65795124 0.61233479 0.76057607 -0.47678426 0.44068223
		 0.88728762 -5.7862376e-08 0.4612166 0.47814283 -1.601114e-07 0.87828207 0.45863816
		 -0.31651071 0.83034444 0.83506799 -0.24949835 0.49031833;
	setAttr ".n[1660:1825]" -type "float3"  0.83506721 0.24949798 0.49031985 0.4586384
		 0.31651017 0.83034462 0.47814283 -1.601114e-07 0.87828207 0.88728762 -5.7862376e-08
		 0.4612166 0.99579471 -0.091613039 0.00015548112 0.89096087 -0.45408008 7.9390025e-05
		 0.84569031 -0.48651895 -0.21933369 0.96353459 -0.21477748 -0.1595989 0.9633683 -0.21462452
		 0.16080396 0.84701437 -0.48707709 0.21289109 0.89096087 -0.45408008 7.9390025e-05
		 0.99579471 -0.091613039 0.00015548112 0.92732406 -0.2764546 0.25227556 0.76057607
		 -0.47678426 0.44068223 0.84701437 -0.48707709 0.21289109 0.9633683 -0.21462452 0.16080396
		 0.97866738 -0.12586981 0.16237879 0.83506799 -0.24949835 0.49031833 0.76057607 -0.47678426
		 0.44068223 0.92732406 -0.2764546 0.25227556 0.99412125 2.4021742e-07 0.10827241 0.88728762
		 -5.7862376e-08 0.4612166 0.83506799 -0.24949835 0.49031833 0.97866738 -0.12586981
		 0.16237879 0.97866678 0.12587041 0.16238211 0.83506721 0.24949798 0.49031985 0.88728762
		 -5.7862376e-08 0.4612166 0.99412125 2.4021742e-07 0.10827241 0.92732286 0.27645668
		 0.25227761 0.76057577 0.47678438 0.44068259 0.83506721 0.24949798 0.49031985 0.97866678
		 0.12587041 0.16238211 0.96336716 0.21462898 0.16080432 0.84701341 0.48707888 0.21289104
		 0.76057577 0.47678438 0.44068259 0.92732286 0.27645668 0.25227761 0.99579412 0.09161929
		 0.00015545111 0.8909598 0.45408219 7.9498037e-05 0.84701341 0.48707888 0.21289104
		 0.96336716 0.21462898 0.16080432 0.96353376 0.21478108 -0.15959872 0.84568942 0.48652053
		 -0.21933375 0.8909598 0.45408219 7.9498037e-05 0.99579412 0.09161929 0.00015545111
		 0.93007815 0.26959169 -0.24954949 0.76577687 0.48200652 -0.42574105 0.84568942 0.48652053
		 -0.21933375 0.96353376 0.21478108 -0.15959872 0.97901618 0.12430279 -0.16148129 0.82658398
		 0.27210709 -0.49266288 0.76577687 0.48200652 -0.42574105 0.93007815 0.26959169 -0.24954949
		 0.99412119 -2.6809971e-07 -0.10827319 0.88728803 -2.3407934e-07 -0.46121579 0.82658398
		 0.27210709 -0.49266288 0.97901618 0.12430279 -0.16148129 0.97901601 -0.12430318 -0.1614819
		 0.82658392 -0.27210724 -0.49266288 0.88728803 -2.3407934e-07 -0.46121579 0.99412119
		 -2.6809971e-07 -0.10827319 0.93007833 -0.26959109 -0.24954966 0.76577741 -0.48200589
		 -0.42574084 0.82658392 -0.27210724 -0.49266288 0.97901601 -0.12430318 -0.1614819
		 0.96353459 -0.21477748 -0.1595989 0.84569031 -0.48651895 -0.21933369 0.76577741 -0.48200589
		 -0.42574084 0.93007833 -0.26959109 -0.24954966 -0.76752836 0.25100145 0.58982927
		 -0.78319502 -2.7709984e-07 0.6217761 -0.66627645 -9.9729895e-09 0.74570483 -0.64039755
		 0.32025069 0.69809061 -0.74280071 0.47390035 0.47293299 -0.76752836 0.25100145 0.58982927
		 -0.64039755 0.32025069 0.69809061 -0.57414973 0.57886291 0.57902497 -0.76387441 0.59496444
		 0.2500262 -0.74280071 0.47390035 0.47293299 -0.57414973 0.57886291 0.57902497 -0.63878524
		 0.69912726 0.32120785 -0.77576911 0.63101369 -0.0020021915 -0.76387441 0.59496444
		 0.2500262 -0.63878524 0.69912726 0.32120785 -0.66192937 0.74956566 0.00092902454
		 -0.75896752 0.60000795 -0.25290081 -0.77576911 0.63101369 -0.0020021915 -0.66192937
		 0.74956566 0.00092902454 -0.6356616 0.70213068 -0.32085326 -0.73535657 0.47868189
		 -0.47970235 -0.75896752 0.60000795 -0.25290081 -0.6356616 0.70213068 -0.32085326
		 -0.57114226 0.58051431 -0.58034438 -0.75508857 0.25189981 -0.60529971 -0.73535657
		 0.47868189 -0.47970235 -0.57114226 0.58051431 -0.58034438 -0.63397396 0.32183278
		 -0.70320749 -0.76805741 -1.5859752e-07 -0.64038098 -0.75508857 0.25189981 -0.60529971
		 -0.63397396 0.32183278 -0.70320749 -0.65739709 -1.4911114e-07 -0.75354439 -0.75508708
		 -0.25189999 -0.6053015 -0.76805741 -1.5859752e-07 -0.64038098 -0.65739709 -1.4911114e-07
		 -0.75354439 -0.63397336 -0.32183272 -0.70320803 -0.73535484 -0.47868359 -0.47970343
		 -0.75508708 -0.25189999 -0.6053015 -0.63397336 -0.32183272 -0.70320803 -0.57114166
		 -0.58051473 -0.58034462 -0.75896597 -0.6000092 -0.25290203 -0.73535484 -0.47868359
		 -0.47970343 -0.57114166 -0.58051473 -0.58034462 -0.63566017 -0.70213169 -0.3208538
		 -0.77576864 -0.63101429 -0.0020030416 -0.75896597 -0.6000092 -0.25290203 -0.63566017
		 -0.70213169 -0.3208538 -0.66192901 -0.74956596 0.00092890766 -0.76387322 -0.59496599
		 0.2500262 -0.77576864 -0.63101429 -0.0020030416 -0.66192901 -0.74956596 0.00092890766
		 -0.63878441 -0.69912797 0.32120791 -0.74279988 -0.47390184 0.47293276 -0.76387322
		 -0.59496599 0.2500262 -0.63878441 -0.69912797 0.32120791 -0.57414949 -0.57886314
		 0.57902485 -0.76752836 -0.25100207 0.58982891 -0.74279988 -0.47390184 0.47293276
		 -0.57414949 -0.57886314 0.57902485 -0.64039761 -0.32025075 0.69809049 -0.78319502
		 -2.7709984e-07 0.6217761 -0.76752836 -0.25100207 0.58982891 -0.64039761 -0.32025075
		 0.69809049 -0.66627645 -9.9729895e-09 0.74570483 -0.33619568 0.87974161 -0.33619526
		 -0.35602742 0.93447548 -5.508597e-08 -1.3938647e-07 1 -1.9414544e-07 7.5117242e-08
		 0.93447548 -0.35602748 -0.35602742 0.93447548 -5.508597e-08 -0.33619538 0.87974173
		 0.33619511 -4.0062531e-08 0.93447566 0.35602716 -1.3938647e-07 1 -1.9414544e-07 7.5117242e-08
		 0.93447548 -0.35602748 -1.3938647e-07 1 -1.9414544e-07 0.35602757 0.93447548 -3.0046902e-08
		 0.33619562 0.87974155 -0.33619544 -1.3938647e-07 1 -1.9414544e-07 -4.0062531e-08
		 0.93447566 0.35602716 0.33619595 0.87974131 0.3361955 0.35602757 0.93447548 -3.0046902e-08
		 -0.57114226 0.58051431 -0.58034438 -0.6356616 0.70213068 -0.32085326 -0.33619568
		 0.87974161 -0.33619526 -0.31568679 0.67094773 -0.67094779 -0.6356616 0.70213068 -0.32085326
		 -0.66192937 0.74956566 0.00092902454 -0.35602742 0.93447548 -5.508597e-08 -0.33619568
		 0.87974161 -0.33619526 -0.66192937 0.74956566 0.00092902454 -0.63878524 0.69912726
		 0.32120785 -0.33619538 0.87974173 0.33619511 -0.35602742 0.93447548 -5.508597e-08
		 -0.63878524 0.69912726 0.32120785 -0.57414973 0.57886291 0.57902497 -0.3156867 0.67094791
		 0.67094773 -0.33619538 0.87974173 0.33619511 -0.33619538 0.87974173 0.33619511 -0.3156867
		 0.67094791 0.67094773;
	setAttr ".n[1826:1991]" -type "float3"  -1.5700846e-07 0.70710683 0.70710683
		 -4.0062531e-08 0.93447566 0.35602716 -4.0062531e-08 0.93447566 0.35602716 -1.5700846e-07
		 0.70710683 0.70710683 0.31568688 0.67094785 0.67094773 0.33619595 0.87974131 0.3361955
		 0.33619595 0.87974131 0.3361955 0.31568688 0.67094785 0.67094773 0.57735091 0.5773496
		 0.57735026 0.67094815 0.67094713 0.31568721 0.35602757 0.93447548 -3.0046902e-08
		 0.33619595 0.87974131 0.3361955 0.67094815 0.67094713 0.31568721 0.70710677 0.70710683
		 3.6972949e-07 0.33619562 0.87974155 -0.33619544 0.35602757 0.93447548 -3.0046902e-08
		 0.70710677 0.70710683 3.6972949e-07 0.67094773 0.67094785 -0.31568664 0.31568632
		 0.67094803 -0.67094779 0.33619562 0.87974155 -0.33619544 0.67094773 0.67094785 -0.31568664
		 0.57734978 0.5773508 -0.5773502 4.5583104e-08 0.70710683 -0.70710683 7.5117242e-08
		 0.93447548 -0.35602748 0.33619562 0.87974155 -0.33619544 0.31568632 0.67094803 -0.67094779
		 -0.31568679 0.67094773 -0.67094779 -0.33619568 0.87974161 -0.33619526 7.5117242e-08
		 0.93447548 -0.35602748 4.5583104e-08 0.70710683 -0.70710683 0.87974173 0.33619523
		 -0.33619523 0.93447548 0.3560276 6.0093817e-07 1 2.4890446e-07 1.8916738e-07 0.93447548
		 -2.5039075e-08 -0.35602736 0.93447548 0.3560276 6.0093817e-07 0.87974113 0.33619568
		 0.33619633 0.9344753 8.4131324e-07 0.35602802 1 2.4890446e-07 1.8916738e-07 0.93447548
		 -2.5039075e-08 -0.35602736 1 2.4890446e-07 1.8916738e-07 0.93447536 -0.35602763 2.0031271e-08
		 0.87974167 -0.33619532 -0.33619544 1 2.4890446e-07 1.8916738e-07 0.9344753 8.4131324e-07
		 0.35602802 0.87974119 -0.33619568 0.33619604 0.93447536 -0.35602763 2.0031271e-08
		 0.57734978 0.5773508 -0.5773502 0.67094773 0.67094785 -0.31568664 0.87974173 0.33619523
		 -0.33619523 0.67094767 0.31568682 -0.67094785 0.67094773 0.67094785 -0.31568664 0.70710677
		 0.70710683 3.6972949e-07 0.93447548 0.3560276 6.0093817e-07 0.87974173 0.33619523
		 -0.33619523 0.70710677 0.70710683 3.6972949e-07 0.67094815 0.67094713 0.31568721
		 0.87974113 0.33619568 0.33619633 0.93447548 0.3560276 6.0093817e-07 0.67094815 0.67094713
		 0.31568721 0.57735091 0.5773496 0.57735026 0.67094809 0.31568649 0.67094755 0.87974113
		 0.33619568 0.33619633 0.87974113 0.33619568 0.33619633 0.67094809 0.31568649 0.67094755
		 0.70710707 5.9257985e-07 0.70710647 0.9344753 8.4131324e-07 0.35602802 0.9344753
		 8.4131324e-07 0.35602802 0.70710707 5.9257985e-07 0.70710647 0.67094809 -0.31568637
		 0.67094761 0.87974119 -0.33619568 0.33619604 0.87974119 -0.33619568 0.33619604 0.67094809
		 -0.31568637 0.67094761 0.5773502 -0.57735068 0.57734996 0.67094731 -0.67094809 0.315687
		 0.93447536 -0.35602763 2.0031271e-08 0.87974119 -0.33619568 0.33619604 0.67094731
		 -0.67094809 0.315687 0.70710659 -0.70710695 5.0647886e-09 0.87974167 -0.33619532
		 -0.33619544 0.93447536 -0.35602763 2.0031271e-08 0.70710659 -0.70710695 5.0647886e-09
		 0.67094749 -0.67094797 -0.315687 0.67094785 -0.3156867 -0.67094785 0.87974167 -0.33619532
		 -0.33619544 0.67094749 -0.67094797 -0.315687 0.5773499 -0.57735085 -0.57735014 0.70710689
		 5.0647877e-09 -0.70710665 0.93447548 -2.5039075e-08 -0.35602736 0.87974167 -0.33619532
		 -0.33619544 0.67094785 -0.3156867 -0.67094785 0.67094767 0.31568682 -0.67094785 0.87974173
		 0.33619523 -0.33619523 0.93447548 -2.5039075e-08 -0.35602736 0.70710689 5.0647877e-09
		 -0.70710665 0.33619526 -0.87974167 -0.3361955 0.35602781 -0.93447536 -9.5148536e-08
		 -1.9414544e-07 -1 -1.5432074e-07 -4.0062531e-08 -0.93447554 -0.35602731 0.35602781
		 -0.93447536 -9.5148536e-08 0.33619544 -0.87974149 0.33619568 1.3521104e-07 -0.93447554
		 0.35602722 -1.9414544e-07 -1 -1.5432074e-07 -4.0062531e-08 -0.93447554 -0.35602731
		 -1.9414544e-07 -1 -1.5432074e-07 -0.35602731 -0.93447554 -7.0109429e-08 -0.33619538
		 -0.87974167 -0.33619526 -1.9414544e-07 -1 -1.5432074e-07 1.3521104e-07 -0.93447554
		 0.35602722 -0.33619547 -0.87974167 0.33619523 -0.35602731 -0.93447554 -7.0109429e-08
		 0.5773499 -0.57735085 -0.57735014 0.67094749 -0.67094797 -0.315687 0.33619526 -0.87974167
		 -0.3361955 0.31568658 -0.67094803 -0.67094761 0.67094749 -0.67094797 -0.315687 0.70710659
		 -0.70710695 5.0647886e-09 0.35602781 -0.93447536 -9.5148536e-08 0.33619526 -0.87974167
		 -0.3361955 0.70710659 -0.70710695 5.0647886e-09 0.67094731 -0.67094809 0.315687 0.33619544
		 -0.87974149 0.33619568 0.35602781 -0.93447536 -9.5148536e-08 0.67094731 -0.67094809
		 0.315687 0.5773502 -0.57735068 0.57734996 0.31568712 -0.67094785 0.67094755 0.33619544
		 -0.87974149 0.33619568 0.33619544 -0.87974149 0.33619568 0.31568712 -0.67094785 0.67094755
		 3.4440569e-07 -0.70710689 0.70710671 1.3521104e-07 -0.93447554 0.35602722 1.3521104e-07
		 -0.93447554 0.35602722 3.4440569e-07 -0.70710689 0.70710671 -0.3156867 -0.67094791
		 0.67094779 -0.33619547 -0.87974167 0.33619523 -0.33619547 -0.87974167 0.33619523
		 -0.3156867 -0.67094791 0.67094779 -0.57414949 -0.57886314 0.57902485 -0.63878441
		 -0.69912797 0.32120791 -0.35602731 -0.93447554 -7.0109429e-08 -0.33619547 -0.87974167
		 0.33619523 -0.63878441 -0.69912797 0.32120791 -0.66192901 -0.74956596 0.00092890766
		 -0.33619538 -0.87974167 -0.33619526 -0.35602731 -0.93447554 -7.0109429e-08 -0.66192901
		 -0.74956596 0.00092890766 -0.63566017 -0.70213169 -0.3208538 -0.31568724 -0.67094773
		 -0.67094761 -0.33619538 -0.87974167 -0.33619526 -0.63566017 -0.70213169 -0.3208538
		 -0.57114166 -0.58051473 -0.58034462 -2.4310989e-07 -0.70710695 -0.70710659 -4.0062531e-08
		 -0.93447554 -0.35602731 -0.33619538 -0.87974167 -0.33619526 -0.31568724 -0.67094773
		 -0.67094761 0.31568658 -0.67094803 -0.67094761 0.33619526 -0.87974167 -0.3361955
		 -4.0062531e-08 -0.93447554 -0.35602731 -2.4310989e-07 -0.70710695 -0.70710659 -0.33619544
		 0.33619529 -0.87974167 -3.5555499e-07 0.35602725 -0.93447554 -3.6340035e-07 3.4846607e-08
		 -1 -0.35602722 -2.0031266e-08 -0.93447554 -3.5555499e-07 0.35602725 -0.93447554 0.33619478
		 0.3361955 -0.87974179 0.35602722 5.0078164e-09 -0.93447566 -3.6340035e-07 3.4846607e-08
		 -1;
	setAttr ".n[1992:2157]" -type "float3"  -0.35602722 -2.0031266e-08 -0.93447554
		 -3.6340035e-07 3.4846607e-08 -1 -4.1064095e-07 -0.35602725 -0.93447554 -0.33619553
		 -0.33619526 -0.87974155 -3.6340035e-07 3.4846607e-08 -1 0.35602722 5.0078164e-09
		 -0.93447566 0.3361949 -0.33619523 -0.87974185 -4.1064095e-07 -0.35602725 -0.93447554
		 -0.57114226 0.58051431 -0.58034438 -0.31568679 0.67094773 -0.67094779 -0.33619544
		 0.33619529 -0.87974167 -0.63397396 0.32183278 -0.70320749 -0.31568679 0.67094773
		 -0.67094779 4.5583104e-08 0.70710683 -0.70710683 -3.5555499e-07 0.35602725 -0.93447554
		 -0.33619544 0.33619529 -0.87974167 4.5583104e-08 0.70710683 -0.70710683 0.31568632
		 0.67094803 -0.67094779 0.33619478 0.3361955 -0.87974179 -3.5555499e-07 0.35602725
		 -0.93447554 0.31568632 0.67094803 -0.67094779 0.57734978 0.5773508 -0.5773502 0.67094767
		 0.31568682 -0.67094785 0.33619478 0.3361955 -0.87974179 0.33619478 0.3361955 -0.87974179
		 0.67094767 0.31568682 -0.67094785 0.70710689 5.0647877e-09 -0.70710665 0.35602722
		 5.0078164e-09 -0.93447566 0.35602722 5.0078164e-09 -0.93447566 0.70710689 5.0647877e-09
		 -0.70710665 0.67094785 -0.3156867 -0.67094785 0.3361949 -0.33619523 -0.87974185 0.3361949
		 -0.33619523 -0.87974185 0.67094785 -0.3156867 -0.67094785 0.5773499 -0.57735085 -0.57735014
		 0.31568658 -0.67094803 -0.67094761 -4.1064095e-07 -0.35602725 -0.93447554 0.3361949
		 -0.33619523 -0.87974185 0.31568658 -0.67094803 -0.67094761 -2.4310989e-07 -0.70710695
		 -0.70710659 -0.33619553 -0.33619526 -0.87974155 -4.1064095e-07 -0.35602725 -0.93447554
		 -2.4310989e-07 -0.70710695 -0.70710659 -0.31568724 -0.67094773 -0.67094761 -0.63397336
		 -0.32183272 -0.70320803 -0.33619553 -0.33619526 -0.87974155 -0.31568724 -0.67094773
		 -0.67094761 -0.57114166 -0.58051473 -0.58034462 -0.65739709 -1.4911114e-07 -0.75354439
		 -0.35602722 -2.0031266e-08 -0.93447554 -0.33619553 -0.33619526 -0.87974155 -0.63397336
		 -0.32183272 -0.70320803 -0.63397396 0.32183278 -0.70320749 -0.33619544 0.33619529
		 -0.87974167 -0.35602722 -2.0031266e-08 -0.93447554 -0.65739709 -1.4911114e-07 -0.75354439
		 0.33619562 0.33619502 0.87974161 1.0015632e-08 0.35602683 0.93447572 0 -3.484659e-08
		 1 0.35602731 3.0046898e-08 0.93447554 1.0015632e-08 0.35602683 0.93447572 -0.33619517
		 0.33619484 0.87974191 -0.35602665 -3.0046898e-08 0.93447584 0 -3.484659e-08 1 0.35602731
		 3.0046898e-08 0.93447554 0 -3.484659e-08 1 1.302032e-07 -0.35602692 0.93447566 0.33619568
		 -0.3361949 0.87974167 0 -3.484659e-08 1 -0.35602665 -3.0046898e-08 0.93447584 -0.33619517
		 -0.33619475 0.87974197 1.302032e-07 -0.35602692 0.93447566 0.57735091 0.5773496 0.57735026
		 0.31568688 0.67094785 0.67094773 0.33619562 0.33619502 0.87974161 0.67094809 0.31568649
		 0.67094755 0.31568688 0.67094785 0.67094773 -1.5700846e-07 0.70710683 0.70710683
		 1.0015632e-08 0.35602683 0.93447572 0.33619562 0.33619502 0.87974161 -1.5700846e-07
		 0.70710683 0.70710683 -0.3156867 0.67094791 0.67094773 -0.33619517 0.33619484 0.87974191
		 1.0015632e-08 0.35602683 0.93447572 -0.3156867 0.67094791 0.67094773 -0.57414973
		 0.57886291 0.57902497 -0.64039755 0.32025069 0.69809061 -0.33619517 0.33619484 0.87974191
		 -0.33619517 0.33619484 0.87974191 -0.64039755 0.32025069 0.69809061 -0.66627645 -9.9729895e-09
		 0.74570483 -0.35602665 -3.0046898e-08 0.93447584 -0.35602665 -3.0046898e-08 0.93447584
		 -0.66627645 -9.9729895e-09 0.74570483 -0.64039761 -0.32025075 0.69809049 -0.33619517
		 -0.33619475 0.87974197 -0.33619517 -0.33619475 0.87974197 -0.64039761 -0.32025075
		 0.69809049 -0.57414949 -0.57886314 0.57902485 -0.3156867 -0.67094791 0.67094779 1.302032e-07
		 -0.35602692 0.93447566 -0.33619517 -0.33619475 0.87974197 -0.3156867 -0.67094791
		 0.67094779 3.4440569e-07 -0.70710689 0.70710671 0.33619568 -0.3361949 0.87974167
		 1.302032e-07 -0.35602692 0.93447566 3.4440569e-07 -0.70710689 0.70710671 0.31568712
		 -0.67094785 0.67094755 0.67094809 -0.31568637 0.67094761 0.33619568 -0.3361949 0.87974167
		 0.31568712 -0.67094785 0.67094755 0.5773502 -0.57735068 0.57734996 0.70710707 5.9257985e-07
		 0.70710647 0.35602731 3.0046898e-08 0.93447554 0.33619568 -0.3361949 0.87974167 0.67094809
		 -0.31568637 0.67094761 0.67094809 0.31568649 0.67094755 0.33619562 0.33619502 0.87974161
		 0.35602731 3.0046898e-08 0.93447554 0.70710707 5.9257985e-07 0.70710647 -0.0095480382
		 -0.93497956 0.35457319 -0.0093806991 -0.99995595 5.7737793e-08 -0.0046879128 -0.99998897
		 6.7408124e-08 -0.0047713094 -0.93493491 0.35478723 -0.0093806991 -0.99995595 5.7737793e-08
		 -0.0095483279 -0.9349795 -0.35457316 -0.0047714934 -0.93493485 -0.35478732 -0.0046879128
		 -0.99998897 6.7408124e-08 -0.0095483279 -0.9349795 -0.35457316 -0.0097536007 -0.70707321
		 -0.70707309 -0.0048734345 -0.70709842 -0.70709842 -0.0047714934 -0.93493485 -0.35478732
		 -0.0097533558 0.70707285 0.70707345 -0.009547323 0.35457343 0.93497944 -0.0047707264
		 0.35478741 0.93493485 -0.0048731533 0.70709807 0.7070986 -0.0095482841 0.93497962
		 -0.35457295 -0.0093809171 0.99995607 7.6983746e-08 -0.0046882872 0.99998897 2.4555814e-07
		 -0.0047716447 0.93493485 -0.35478729 -0.0093809171 0.99995607 7.6983746e-08 -0.0095486902
		 0.93497944 0.35457349 -0.0047715916 0.93493462 0.35478792 -0.0046882872 0.99998897
		 2.4555814e-07 -0.0095486902 0.93497944 0.35457349 -0.0097533558 0.70707285 0.70707345
		 -0.0048731533 0.70709807 0.7070986 -0.0047715916 0.93493462 0.35478792 -0.0097536007
		 -0.70707321 -0.70707309 -0.0095482776 -0.35457298 -0.93497962 -0.0047715059 -0.3547872
		 -0.93493491 -0.0048734345 -0.70709842 -0.70709842 2.593038e-08 0.35473993 0.93496495
		 -8.2393939e-08 -1.4437135e-08 1 1.1516205e-06 -1.0587225e-07 1 6.7572e-07 0.35474005
		 0.93496495 -6.5820495e-07 6.2560908e-08 1 -3.3049784e-07 -0.35473987 0.93496501 -4.1371933e-08
		 -0.35473993 0.93496495 -8.2393939e-08 -1.4437135e-08 1 -8.2393939e-08 -1.4437135e-08
		 1 -4.1371933e-08 -0.35473993 0.93496495 5.7825156e-07 -0.3547402 0.9349649 1.1516205e-06
		 -1.0587225e-07 1 6.7840745e-08 0.70710677 0.70710677 -6.9590169e-07 0.70710695 0.70710671;
	setAttr ".n[2158:2323]" -type "float3"  -1.0208888e-06 0.35474002 0.93496495
		 2.593038e-08 0.35473993 0.93496495 9.824641e-08 0.70710683 0.70710671 6.7840745e-08
		 0.70710677 0.70710677 2.593038e-08 0.35473993 0.93496495 6.7572e-07 0.35474005 0.93496495
		 -4.1371933e-08 -0.35473993 0.93496495 8.8713442e-10 -0.70710695 0.70710671 1.7742687e-09
		 -0.70710707 0.70710653 5.7825156e-07 -0.3547402 0.9349649 -3.3049784e-07 -0.35473987
		 0.93496501 3.5730918e-07 -0.70710707 0.70710653 8.8713442e-10 -0.70710695 0.70710671
		 -4.1371933e-08 -0.35473993 0.93496495 5.2483932e-07 -0.93496513 0.35473961 -8.4821892e-08
		 -1 -3.8980264e-07 3.5988187e-08 -1 -1.1549708e-07 8.8010865e-10 -0.93496501 0.35473984
		 -0.009547323 0.35457343 0.93497944 -0.009379711 9.6229504e-09 0.99995607 -0.0046875342
		 -9.6297299e-09 0.99998897 -0.0047707264 0.35478741 0.93493485 -0.009379711 9.6229504e-09
		 0.99995607 -0.0095478063 -0.35457343 0.93497944 -0.0047715744 -0.35478756 0.93493474
		 -0.0046875342 -9.6297299e-09 0.99998897 -0.0095478063 -0.35457343 0.93497944 -0.0097533567
		 -0.70707315 0.70707309 -0.0048733135 -0.7070986 0.70709819 -0.0047715744 -0.35478756
		 0.93493474 -0.0048736515 0.70709831 -0.70709848 -0.0097539872 0.70707333 -0.70707297
		 -0.0095482841 0.93497962 -0.35457295 -0.0047716447 0.93493485 -0.35478729 8.8010865e-10
		 -0.93496501 0.35473984 3.5988187e-08 -1 -1.1549708e-07 7.1976388e-08 -1 -1.1549706e-07
		 1.7602174e-09 -0.93496507 0.35473981 -8.4821892e-08 -1 -3.8980264e-07 -2.5553987e-07
		 -0.93496495 -0.35474008 -2.6466162e-07 -0.93496495 -0.35474014 3.5988187e-08 -1 -1.1549708e-07
		 3.5988187e-08 -1 -1.1549708e-07 -2.6466162e-07 -0.93496495 -0.35474014 -5.2932495e-07
		 -0.93496472 -0.35474062 7.1976388e-08 -1 -1.1549706e-07 8.8713442e-10 -0.70710695
		 0.70710671 3.5730918e-07 -0.70710707 0.70710653 5.2483932e-07 -0.93496513 0.35473961
		 8.8010865e-10 -0.93496501 0.35473984 1.7742687e-09 -0.70710707 0.70710653 8.8713442e-10
		 -0.70710695 0.70710671 8.8010865e-10 -0.93496501 0.35473984 1.7602174e-09 -0.93496507
		 0.35473981 -2.6466162e-07 -0.93496495 -0.35474014 -3.0320399e-07 -0.70710683 -0.70710671
		 -6.0640775e-07 -0.70710659 -0.70710689 -5.2932495e-07 -0.93496472 -0.35474062 -2.5553987e-07
		 -0.93496495 -0.35474008 0 -0.70710671 -0.70710689 -3.0320399e-07 -0.70710683 -0.70710671
		 -2.6466162e-07 -0.93496495 -0.35474014 6.1191244e-08 0.93496513 -0.35473967 1.6964071e-07
		 1 4.0905206e-07 -1.4395243e-07 1 4.7161305e-07 -9.6270213e-08 0.93496501 -0.35473967
		 -9.6270213e-08 0.93496501 -0.35473967 -1.4395243e-07 1 4.7161305e-07 -2.879051e-07
		 1 4.9086265e-07 -1.445627e-07 0.93496501 -0.35473984 1.6964071e-07 1 4.0905206e-07
		 8.5180055e-08 0.93496495 0.35473999 -7.2281509e-08 0.9349649 0.35474017 -1.4395243e-07
		 1 4.7161305e-07 -1.4395243e-07 1 4.7161305e-07 -7.2281509e-08 0.9349649 0.35474017
		 -1.4456305e-07 0.9349649 0.35474023 -2.879051e-07 1 4.9086265e-07 -2.4180201e-08
		 0.70710689 -0.70710671 6.9044233e-07 0.70710689 -0.70710671 6.1191244e-08 0.93496513
		 -0.35473967 -9.6270213e-08 0.93496501 -0.35473967 0 0.70710689 -0.70710665 -2.4180201e-08
		 0.70710689 -0.70710671 -9.6270213e-08 0.93496501 -0.35473967 -1.445627e-07 0.93496501
		 -0.35473984 -7.2281509e-08 0.9349649 0.35474017 6.7840745e-08 0.70710677 0.70710677
		 9.824641e-08 0.70710683 0.70710671 -1.4456305e-07 0.9349649 0.35474023 8.5180055e-08
		 0.93496495 0.35473999 -6.9590169e-07 0.70710695 0.70710671 6.7840745e-08 0.70710677
		 0.70710677 -7.2281509e-08 0.9349649 0.35474017 -3.5094135e-07 -0.35473967 -0.93496513
		 -3.4945919e-07 9.6247543e-09 -1 3.2910296e-07 3.3686643e-08 -1 3.3049804e-07 -0.35473981
		 -0.93496501 -0.0095482776 -0.35457298 -0.93497962 -0.0093806377 1.8283622e-07 -0.99995607
		 -0.0046879952 6.7408116e-08 -0.99998897 -0.0047715059 -0.3547872 -0.93493491 -0.0093806377
		 1.8283622e-07 -0.99995607 -0.0095487554 0.35457322 -0.9349795 -0.0047717453 0.3547872
		 -0.93493491 -0.0046879952 6.7408116e-08 -0.99998897 -0.0095487554 0.35457322 -0.9349795
		 -0.0097539872 0.70707333 -0.70707297 -0.0048736515 0.70709831 -0.70709848 -0.0047717453
		 0.3547872 -0.93493491 -1.0208888e-06 0.35474002 0.93496495 -6.5820495e-07 6.2560908e-08
		 1 -8.2393939e-08 -1.4437135e-08 1 2.593038e-08 0.35473993 0.93496495 3.3049804e-07
		 -0.35473981 -0.93496501 3.2910296e-07 3.3686643e-08 -1 0 5.7748547e-08 -1 0 -0.35473967
		 -0.93496513 -3.4945919e-07 9.6247543e-09 -1 7.0896039e-07 0.35473981 -0.93496501
		 0 0.35473979 -0.93496513 3.2910296e-07 3.3686643e-08 -1 3.2910296e-07 3.3686643e-08
		 -1 0 0.35473979 -0.93496513 0 0.3547399 -0.93496501 0 5.7748547e-08 -1 0 -0.70710671
		 -0.70710689 -3.5094135e-07 -0.35473967 -0.93496513 3.3049804e-07 -0.35473981 -0.93496501
		 -3.0320399e-07 -0.70710683 -0.70710671 -3.0320399e-07 -0.70710683 -0.70710671 3.3049804e-07
		 -0.35473981 -0.93496501 0 -0.35473967 -0.93496513 -6.0640775e-07 -0.70710659 -0.70710689
		 0 0.35473979 -0.93496513 -2.4180201e-08 0.70710689 -0.70710671 0 0.70710689 -0.70710665
		 0 0.3547399 -0.93496501 7.0896039e-07 0.35473981 -0.93496501 6.9044233e-07 0.70710689
		 -0.70710671 -2.4180201e-08 0.70710689 -0.70710671 0 0.35473979 -0.93496513 -0.0047715059
		 -0.3547872 -0.93493491 -0.0046879952 6.7408116e-08 -0.99998897 -6.7856217e-07 5.774853e-08
		 -1 -6.814393e-07 -0.35473961 -0.93496513 -0.0046879952 6.7408116e-08 -0.99998897
		 -0.0047717453 0.3547872 -0.93493491 7.0896203e-07 0.35473981 -0.93496501 -6.7856217e-07
		 5.774853e-08 -1 -0.0048734345 -0.70709842 -0.70709842 -0.0047715059 -0.3547872 -0.93493491
		 -6.814393e-07 -0.35473961 -0.93496513 0 -0.70710659 -0.70710701 -0.0047717453 0.3547872
		 -0.93493491 -0.0048736515 0.70709831 -0.70709848 6.9243686e-07 0.70710683 -0.70710677
		 7.0896203e-07 0.35473981 -0.93496501 0 -0.70710659 -0.70710701 -6.814393e-07 -0.35473961
		 -0.93496513 -3.5094135e-07 -0.35473967 -0.93496513 0 -0.70710671 -0.70710689 -6.814393e-07
		 -0.35473961 -0.93496513 -6.7856217e-07 5.774853e-08 -1 -3.4945919e-07 9.6247543e-09
		 -1 -3.5094135e-07 -0.35473967 -0.93496513;
	setAttr ".n[2324:2489]" -type "float3"  -6.7856217e-07 5.774853e-08 -1 7.0896203e-07
		 0.35473981 -0.93496501 7.0896039e-07 0.35473981 -0.93496501 -3.4945919e-07 9.6247543e-09
		 -1 7.0896203e-07 0.35473981 -0.93496501 6.9243686e-07 0.70710683 -0.70710677 6.9044233e-07
		 0.70710689 -0.70710671 7.0896039e-07 0.35473981 -0.93496501 -0.0047716447 0.93493485
		 -0.35478729 -0.0046882872 0.99998897 2.4555814e-07 1.8676044e-08 1 3.8980264e-07
		 -5.0531607e-08 0.93496513 -0.35473967 -0.0046882872 0.99998897 2.4555814e-07 -0.0047715916
		 0.93493462 0.35478792 2.0500622e-07 0.93496495 0.35474002 1.8676044e-08 1 3.8980264e-07
		 6.9243686e-07 0.70710683 -0.70710677 -0.0048736515 0.70709831 -0.70709848 -0.0047716447
		 0.93493485 -0.35478729 -5.0531607e-08 0.93496513 -0.35473967 -0.0047715916 0.93493462
		 0.35478792 -0.0048731533 0.70709807 0.7070986 -5.5563231e-07 0.70710683 0.70710671
		 2.0500622e-07 0.93496495 0.35474002 6.9243686e-07 0.70710683 -0.70710677 -5.0531607e-08
		 0.93496513 -0.35473967 6.1191244e-08 0.93496513 -0.35473967 6.9044233e-07 0.70710689
		 -0.70710671 -5.0531607e-08 0.93496513 -0.35473967 1.8676044e-08 1 3.8980264e-07 1.6964071e-07
		 1 4.0905206e-07 6.1191244e-08 0.93496513 -0.35473967 1.8676044e-08 1 3.8980264e-07
		 2.0500622e-07 0.93496495 0.35474002 8.5180055e-08 0.93496495 0.35473999 1.6964071e-07
		 1 4.0905206e-07 2.0500622e-07 0.93496495 0.35474002 -5.5563231e-07 0.70710683 0.70710671
		 -6.9590169e-07 0.70710695 0.70710671 8.5180055e-08 0.93496495 0.35473999 -0.0047713094
		 -0.93493491 0.35478723 -0.0046879128 -0.99998897 6.7408124e-08 2.840426e-08 -1 2.358065e-07
		 6.0156458e-07 -0.93496513 0.35473955 -0.0046879128 -0.99998897 6.7408124e-08 -0.0047714934
		 -0.93493485 -0.35478732 -2.176387e-07 -0.93496501 -0.3547399 2.840426e-08 -1 2.358065e-07
		 3.5823965e-07 -0.70710713 0.70710647 -0.0048733135 -0.7070986 0.70709819 -0.0047713094
		 -0.93493491 0.35478723 6.0156458e-07 -0.93496513 0.35473955 -0.0047714934 -0.93493485
		 -0.35478732 -0.0048734345 -0.70709842 -0.70709842 0 -0.70710659 -0.70710701 -2.176387e-07
		 -0.93496501 -0.3547399 3.5823965e-07 -0.70710713 0.70710647 6.0156458e-07 -0.93496513
		 0.35473955 5.2483932e-07 -0.93496513 0.35473961 3.5730918e-07 -0.70710707 0.70710653
		 6.0156458e-07 -0.93496513 0.35473955 2.840426e-08 -1 2.358065e-07 -8.4821892e-08
		 -1 -3.8980264e-07 5.2483932e-07 -0.93496513 0.35473961 2.840426e-08 -1 2.358065e-07
		 -2.176387e-07 -0.93496501 -0.3547399 -2.5553987e-07 -0.93496495 -0.35474008 -8.4821892e-08
		 -1 -3.8980264e-07 -2.176387e-07 -0.93496501 -0.3547399 0 -0.70710659 -0.70710701
		 0 -0.70710671 -0.70710689 -2.5553987e-07 -0.93496495 -0.35474008 -0.0047707264 0.35478741
		 0.93493485 -0.0046875342 -9.6297299e-09 0.99998897 -5.5073293e-14 5.2936155e-08 1
		 -4.0574986e-07 0.35473981 0.93496513 -0.0046875342 -9.6297299e-09 0.99998897 -0.0047715744
		 -0.35478756 0.93493474 -3.0320902e-07 -0.3547399 0.93496507 -5.5073293e-14 5.2936155e-08
		 1 -5.5563231e-07 0.70710683 0.70710671 -0.0048731533 0.70709807 0.7070986 -0.0047707264
		 0.35478741 0.93493485 -4.0574986e-07 0.35473981 0.93496513 -0.0047715744 -0.35478756
		 0.93493474 -0.0048733135 -0.7070986 0.70709819 3.5823965e-07 -0.70710713 0.70710647
		 -3.0320902e-07 -0.3547399 0.93496507 -5.5563231e-07 0.70710683 0.70710671 -4.0574986e-07
		 0.35473981 0.93496513 -1.0208888e-06 0.35474002 0.93496495 -6.9590169e-07 0.70710695
		 0.70710671 -4.0574986e-07 0.35473981 0.93496513 -5.5073293e-14 5.2936155e-08 1 -6.5820495e-07
		 6.2560908e-08 1 -1.0208888e-06 0.35474002 0.93496495 -5.5073293e-14 5.2936155e-08
		 1 -3.0320902e-07 -0.3547399 0.93496507 -3.3049784e-07 -0.35473987 0.93496501 -6.5820495e-07
		 6.2560908e-08 1 -3.0320902e-07 -0.3547399 0.93496507 3.5823965e-07 -0.70710713 0.70710647
		 3.5730918e-07 -0.70710707 0.70710653 -3.3049784e-07 -0.35473987 0.93496501 -0.0097533567
		 -0.70707315 0.70707309 -0.0095480382 -0.93497956 0.35457319 -0.0047713094 -0.93493491
		 0.35478723 -0.0048733135 -0.7070986 0.70709819 -0.45422333 -0.35312787 -0.81791312
		 -0.4781417 2.0331608e-08 -0.87828273 6.1379268e-08 1.9948261e-07 -1 -2.6179807e-08
		 -0.39547899 -0.91847497 -2.6179807e-08 -0.39547899 -0.91847497 6.1379268e-08 1.9948261e-07
		 -1 0.47814187 2.9480844e-07 -0.87828261 0.45422313 -0.35312778 -0.81791335 -0.4781417
		 2.0331608e-08 -0.87828273 -0.45422316 0.35312772 -0.81791329 3.6651727e-07 0.39547908
		 -0.91847497 6.1379268e-08 1.9948261e-07 -1 6.1379268e-08 1.9948261e-07 -1 3.6651727e-07
		 0.39547908 -0.91847497 0.45422333 0.35312808 -0.81791306 0.47814187 2.9480844e-07
		 -0.87828261 -0.76577717 -0.4820064 -0.42574069 -0.8265841 -0.27210769 -0.49266225
		 -0.45422333 -0.35312787 -0.81791312 -0.43174398 -0.67670804 -0.59637511 -0.43174398
		 -0.67670804 -0.59637511 -0.45422333 -0.35312787 -0.81791312 -2.6179807e-08 -0.39547899
		 -0.91847497 2.2650575e-07 -0.74898946 -0.66258186 2.2650575e-07 -0.74898946 -0.66258186
		 -2.6179807e-08 -0.39547899 -0.91847497 0.45422313 -0.35312778 -0.81791335 0.43174374
		 -0.67670804 -0.59637547 0.43174374 -0.67670804 -0.59637547 0.45422313 -0.35312778
		 -0.81791335 0.79951417 -0.27740046 -0.53275329 0.73843169 -0.50737089 -0.44417733
		 0.45422313 -0.35312778 -0.81791335 0.47814187 2.9480844e-07 -0.87828261 0.83413821
		 3.6720917e-07 -0.55155545 0.79951417 -0.27740046 -0.53275329 0.47814187 2.9480844e-07
		 -0.87828261 0.45422333 0.35312808 -0.81791306 0.79951388 0.27740118 -0.53275335 0.83413821
		 3.6720917e-07 -0.55155545 0.45422333 0.35312808 -0.81791306 0.43174428 0.67670816
		 -0.59637493 0.73843175 0.50737137 -0.44417664 0.79951388 0.27740118 -0.53275335 3.6651727e-07
		 0.39547908 -0.91847497 2.4194944e-07 0.74898958 -0.66258174 0.43174428 0.67670816
		 -0.59637493 0.45422333 0.35312808 -0.81791306 -0.45422316 0.35312772 -0.81791329
		 -0.43174386 0.67670792 -0.59637547 2.4194944e-07 0.74898958 -0.66258174 3.6651727e-07
		 0.39547908 -0.91847497 -0.8265835 0.2721085 -0.49266291 -0.76577657 0.48200688 -0.42574126
		 -0.43174386 0.67670792 -0.59637547 -0.45422316 0.35312772 -0.81791329 -0.88728857
		 -4.2081726e-07 -0.46121463 -0.8265835 0.2721085 -0.49266291;
	setAttr ".n[2490:2655]" -type "float3"  -0.45422316 0.35312772 -0.81791329 -0.4781417
		 2.0331608e-08 -0.87828273 -0.8265841 -0.27210769 -0.49266225 -0.88728857 -4.2081726e-07
		 -0.46121463 -0.4781417 2.0331608e-08 -0.87828273 -0.45422333 -0.35312787 -0.81791312
		 0.45639065 0.83655363 -0.30312645 -1.1251984e-07 0.94089592 -0.33869594 -7.6713398e-08
		 1 -4.2448079e-07 0.4779048 0.87841171 -3.7107844e-07 0.4779048 0.87841171 -3.7107844e-07
		 -7.6713398e-08 1 -4.2448079e-07 -4.168831e-07 0.9470346 0.32113153 0.45814106 0.8411147
		 0.28745937 -1.1251984e-07 0.94089592 -0.33869594 -0.45639095 0.83655334 -0.30312687
		 -0.47790504 0.87841153 -7.6249002e-08 -7.6713398e-08 1 -4.2448079e-07 -7.6713398e-08
		 1 -4.2448079e-07 -0.47790504 0.87841153 -7.6249002e-08 -0.45814162 0.8411144 0.28745931
		 -4.168831e-07 0.9470346 0.32113153 0.73843175 0.50737137 -0.44417664 0.43174428 0.67670816
		 -0.59637493 0.45639065 0.83655363 -0.30312645 0.79377234 0.55795574 -0.24209666 0.79377234
		 0.55795574 -0.24209666 0.45639065 0.83655363 -0.30312645 0.4779048 0.87841171 -3.7107844e-07
		 0.81888121 0.57396305 -1.3466173e-07 0.81888121 0.57396305 -1.3466173e-07 0.4779048
		 0.87841171 -3.7107844e-07 0.45814106 0.8411147 0.28745937 0.79715699 0.556539 0.23410474
		 0.79715699 0.556539 0.23410474 0.45814106 0.8411147 0.28745937 0.4383435 0.65795147
		 0.61233562 0.73742074 0.49890438 0.45530769 0.45814106 0.8411147 0.28745937 -4.168831e-07
		 0.9470346 0.32113153 1.5883064e-07 0.73113567 0.68223214 0.4383435 0.65795147 0.61233562
		 -4.168831e-07 0.9470346 0.32113153 -0.45814162 0.8411144 0.28745931 -0.43834382 0.65795124
		 0.61233556 1.5883064e-07 0.73113567 0.68223214 -0.45814162 0.8411144 0.28745931 -0.84701341
		 0.48707879 0.21289106 -0.76057607 0.47678417 0.44068214 -0.43834382 0.65795124 0.61233556
		 -0.47790504 0.87841153 -7.6249002e-08 -0.89096034 0.45408118 7.9602287e-05 -0.84701341
		 0.48707879 0.21289106 -0.45814162 0.8411144 0.28745931 -0.45639095 0.83655334 -0.30312687
		 -0.84568989 0.48651928 -0.21933417 -0.89096034 0.45408118 7.9602287e-05 -0.47790504
		 0.87841153 -7.6249002e-08 -0.43174386 0.67670792 -0.59637547 -0.76577657 0.48200688
		 -0.42574126 -0.84568989 0.48651928 -0.21933417 -0.45639095 0.83655334 -0.30312687
		 2.4194944e-07 0.74898958 -0.66258174 -0.43174386 0.67670792 -0.59637547 -0.45639095
		 0.83655334 -0.30312687 -1.1251984e-07 0.94089592 -0.33869594 0.43174428 0.67670816
		 -0.59637493 2.4194944e-07 0.74898958 -0.66258174 -1.1251984e-07 0.94089592 -0.33869594
		 0.45639065 0.83655363 -0.30312645 0.4581413 -0.84111458 0.28745919 2.1352542e-07
		 -0.94703478 0.32113102 3.8356688e-07 -1 -1.1251296e-07 0.47790533 -0.87841135 1.219984e-07
		 0.47790533 -0.87841135 1.219984e-07 3.8356688e-07 -1 -1.1251296e-07 4.0404856e-07
		 -0.94089592 -0.33869588 0.45639089 -0.83655351 -0.30312654 2.1352542e-07 -0.94703478
		 0.32113102 -0.45814067 -0.841115 0.28745919 -0.47790471 -0.87841171 -1.1691512e-07
		 3.8356688e-07 -1 -1.1251296e-07 3.8356688e-07 -1 -1.1251296e-07 -0.47790471 -0.87841171
		 -1.1691512e-07 -0.4563905 -0.83655351 -0.30312687 4.0404856e-07 -0.94089592 -0.33869588
		 0.73742098 -0.49890476 0.45530695 0.43834358 -0.65795159 0.61233538 0.4581413 -0.84111458
		 0.28745919 0.79715711 -0.55653894 0.23410453 0.79715711 -0.55653894 0.23410453 0.4581413
		 -0.84111458 0.28745919 0.47790533 -0.87841135 1.219984e-07 0.81888187 -0.57396215
		 2.9675456e-07 0.81888187 -0.57396215 2.9675456e-07 0.47790533 -0.87841135 1.219984e-07
		 0.45639089 -0.83655351 -0.30312654 0.79377294 -0.55795491 -0.2420966 0.79377294 -0.55795491
		 -0.2420966 0.45639089 -0.83655351 -0.30312654 0.43174374 -0.67670804 -0.59637547
		 0.73843169 -0.50737089 -0.44417733 0.45639089 -0.83655351 -0.30312654 4.0404856e-07
		 -0.94089592 -0.33869588 2.2650575e-07 -0.74898946 -0.66258186 0.43174374 -0.67670804
		 -0.59637547 4.0404856e-07 -0.94089592 -0.33869588 -0.4563905 -0.83655351 -0.30312687
		 -0.43174398 -0.67670804 -0.59637511 2.2650575e-07 -0.74898946 -0.66258186 -0.4563905
		 -0.83655351 -0.30312687 -0.84568989 -0.48651937 -0.21933419 -0.76577717 -0.4820064
		 -0.42574069 -0.43174398 -0.67670804 -0.59637511 -0.47790471 -0.87841171 -1.1691512e-07
		 -0.89096069 -0.45408037 7.9044483e-05 -0.84568989 -0.48651937 -0.21933419 -0.4563905
		 -0.83655351 -0.30312687 -0.45814067 -0.841115 0.28745919 -0.84701407 -0.48707771
		 0.2128907 -0.89096069 -0.45408037 7.9044483e-05 -0.47790471 -0.87841171 -1.1691512e-07
		 -0.43834373 -0.65795159 0.61233526 -0.76057631 -0.47678426 0.4406817 -0.84701407
		 -0.48707771 0.2128907 -0.45814067 -0.841115 0.28745919 -7.4120962e-08 -0.73113608
		 0.68223161 -0.43834373 -0.65795159 0.61233526 -0.45814067 -0.841115 0.28745919 2.1352542e-07
		 -0.94703478 0.32113102 0.43834358 -0.65795159 0.61233538 -7.4120962e-08 -0.73113608
		 0.68223161 2.1352542e-07 -0.94703478 0.32113102 0.4581413 -0.84111458 0.28745919
		 0.94522309 0.24222477 0.21881621 0.97436804 5.6684587e-07 0.22495991 1 2.6413193e-07
		 7.2696857e-09 0.96751648 0.25280789 1.6328714e-07 0.96751648 0.25280789 1.6328714e-07
		 1 2.6413193e-07 7.2696857e-09 0.97456264 2.0344881e-07 -0.22411515 0.94500089 0.2430919
		 -0.21881422 0.97436804 5.6684587e-07 0.22495991 0.94522321 -0.24222432 0.21881598
		 0.96751666 -0.25280705 -1.2185604e-08 1 2.6413193e-07 7.2696857e-09 1 2.6413193e-07
		 7.2696857e-09 0.96751666 -0.25280705 -1.2185604e-08 0.94500101 -0.24309096 -0.21881437
		 0.97456264 2.0344881e-07 -0.22411515 0.73742074 0.49890438 0.45530769 0.80779064
		 0.25631639 0.53082603 0.94522309 0.24222477 0.21881621 0.79715699 0.556539 0.23410474
		 0.79715699 0.556539 0.23410474 0.94522309 0.24222477 0.21881621 0.96751648 0.25280789
		 1.6328714e-07 0.81888121 0.57396305 -1.3466173e-07 0.81888121 0.57396305 -1.3466173e-07
		 0.96751648 0.25280789 1.6328714e-07 0.94500089 0.2430919 -0.21881422 0.79377234 0.55795574
		 -0.24209666 0.79377234 0.55795574 -0.24209666 0.94500089 0.2430919 -0.21881422 0.79951388
		 0.27740118 -0.53275335 0.73843175 0.50737137 -0.44417664;
	setAttr ".n[2656:2821]" -type "float3"  0.94500089 0.2430919 -0.21881422 0.97456264
		 2.0344881e-07 -0.22411515 0.83413821 3.6720917e-07 -0.55155545 0.79951388 0.27740118
		 -0.53275335 0.97456264 2.0344881e-07 -0.22411515 0.94500101 -0.24309096 -0.21881437
		 0.79951417 -0.27740046 -0.53275329 0.83413821 3.6720917e-07 -0.55155545 0.94500101
		 -0.24309096 -0.21881437 0.79377294 -0.55795491 -0.2420966 0.73843169 -0.50737089
		 -0.44417733 0.79951417 -0.27740046 -0.53275329 0.96751666 -0.25280705 -1.2185604e-08
		 0.81888187 -0.57396215 2.9675456e-07 0.79377294 -0.55795491 -0.2420966 0.94500101
		 -0.24309096 -0.21881437 0.94522321 -0.24222432 0.21881598 0.79715711 -0.55653894
		 0.23410453 0.81888187 -0.57396215 2.9675456e-07 0.96751666 -0.25280705 -1.2185604e-08
		 0.80779082 -0.25631604 0.53082579 0.73742098 -0.49890476 0.45530695 0.79715711 -0.55653894
		 0.23410453 0.94522321 -0.24222432 0.21881598 0.83370256 4.9283739e-07 0.55221373
		 0.80779082 -0.25631604 0.53082579 0.94522321 -0.24222432 0.21881598 0.97436804 5.6684587e-07
		 0.22495991 0.80779064 0.25631639 0.53082603 0.83370256 4.9283739e-07 0.55221373 0.97436804
		 5.6684587e-07 0.22495991 0.94522309 0.24222477 0.21881621 -0.45863691 0.31650975
		 0.83034557 -0.47814229 -1.1690678e-07 0.87828237 -8.695396e-08 8.1839019e-08 1 5.151048e-09
		 0.35553128 0.93466437 5.151048e-09 0.35553128 0.93466437 -8.695396e-08 8.1839019e-08
		 1 0.47814178 2.9734974e-07 0.87828267 0.45863628 0.31650984 0.83034593 -0.47814229
		 -1.1690678e-07 0.87828237 -0.45863745 -0.31650987 0.83034527 3.7602666e-07 -0.35553145
		 0.93466431 -8.695396e-08 8.1839019e-08 1 -8.695396e-08 8.1839019e-08 1 3.7602666e-07
		 -0.35553145 0.93466431 0.45863748 -0.3165096 0.83034527 0.47814178 2.9734974e-07
		 0.87828267 -0.76057607 0.47678417 0.44068214 -0.83506846 0.24949676 0.49031824 -0.45863691
		 0.31650975 0.83034557 -0.43834382 0.65795124 0.61233556 -0.43834382 0.65795124 0.61233556
		 -0.45863691 0.31650975 0.83034557 5.151048e-09 0.35553128 0.93466437 1.5883064e-07
		 0.73113567 0.68223214 1.5883064e-07 0.73113567 0.68223214 5.151048e-09 0.35553128
		 0.93466437 0.45863628 0.31650984 0.83034593 0.4383435 0.65795147 0.61233562 0.4383435
		 0.65795147 0.61233562 0.45863628 0.31650984 0.83034593 0.80779064 0.25631639 0.53082603
		 0.73742074 0.49890438 0.45530769 0.45863628 0.31650984 0.83034593 0.47814178 2.9734974e-07
		 0.87828267 0.83370256 4.9283739e-07 0.55221373 0.80779064 0.25631639 0.53082603 0.47814178
		 2.9734974e-07 0.87828267 0.45863748 -0.3165096 0.83034527 0.80779082 -0.25631604
		 0.53082579 0.83370256 4.9283739e-07 0.55221373 0.45863748 -0.3165096 0.83034527 0.43834358
		 -0.65795159 0.61233538 0.73742098 -0.49890476 0.45530695 0.80779082 -0.25631604 0.53082579
		 3.7602666e-07 -0.35553145 0.93466431 -7.4120962e-08 -0.73113608 0.68223161 0.43834358
		 -0.65795159 0.61233538 0.45863748 -0.3165096 0.83034527 -0.45863745 -0.31650987 0.83034527
		 -0.43834373 -0.65795159 0.61233526 -7.4120962e-08 -0.73113608 0.68223161 3.7602666e-07
		 -0.35553145 0.93466431 -0.835069 -0.249497 0.49031729 -0.76057631 -0.47678426 0.4406817
		 -0.43834373 -0.65795159 0.61233526 -0.45863745 -0.31650987 0.83034527 -0.88728821
		 -1.7884717e-07 0.46121529 -0.835069 -0.249497 0.49031729 -0.45863745 -0.31650987
		 0.83034527 -0.47814229 -1.1690678e-07 0.87828237 -0.83506846 0.24949676 0.49031824
		 -0.88728821 -1.7884717e-07 0.46121529 -0.47814229 -1.1690678e-07 0.87828237 -0.45863691
		 0.31650975 0.83034557 -0.99579459 -0.09161403 0.00015521527 -0.96353406 -0.2147789
		 -0.15959996 -0.84568989 -0.48651937 -0.21933419 -0.89096069 -0.45408037 7.9044483e-05
		 -0.96336818 -0.21462524 0.16080318 -0.99579459 -0.09161403 0.00015521527 -0.89096069
		 -0.45408037 7.9044483e-05 -0.84701407 -0.48707771 0.2128907 -0.92732435 -0.27645451
		 0.25227454 -0.96336818 -0.21462524 0.16080318 -0.84701407 -0.48707771 0.2128907 -0.76057631
		 -0.47678426 0.4406817 -0.97866738 -0.12586983 0.1623791 -0.92732435 -0.27645451 0.25227454
		 -0.76057631 -0.47678426 0.4406817 -0.835069 -0.249497 0.49031729 -0.99412119 -1.9517654e-07
		 0.108273 -0.97866738 -0.12586983 0.1623791 -0.835069 -0.249497 0.49031729 -0.88728821
		 -1.7884717e-07 0.46121529 -0.97866696 0.12586951 0.1623815 -0.99412119 -1.9517654e-07
		 0.108273 -0.88728821 -1.7884717e-07 0.46121529 -0.83506846 0.24949676 0.49031824
		 -0.92732364 0.27645528 0.25227636 -0.97866696 0.12586951 0.1623815 -0.83506846 0.24949676
		 0.49031824 -0.76057607 0.47678417 0.44068214 -0.96336728 0.21462832 0.16080457 -0.92732364
		 0.27645528 0.25227636 -0.76057607 0.47678417 0.44068214 -0.84701341 0.48707879 0.21289106
		 -0.99579436 0.091616593 0.00015646084 -0.96336728 0.21462832 0.16080457 -0.84701341
		 0.48707879 0.21289106 -0.89096034 0.45408118 7.9602287e-05 -0.96353441 0.21477775
		 -0.1595993 -0.99579436 0.091616593 0.00015646084 -0.89096034 0.45408118 7.9602287e-05
		 -0.84568989 0.48651928 -0.21933417 -0.93007779 0.26959226 -0.24955018 -0.96353441
		 0.21477775 -0.1595993 -0.84568989 0.48651928 -0.21933417 -0.76577657 0.48200688 -0.42574126
		 -0.97901624 0.1243047 -0.16147953 -0.93007779 0.26959226 -0.24955018 -0.76577657
		 0.48200688 -0.42574126 -0.8265835 0.2721085 -0.49266291 -0.99412155 -3.9035308e-07
		 -0.10826998 -0.97901624 0.1243047 -0.16147953 -0.8265835 0.2721085 -0.49266291 -0.88728857
		 -4.2081726e-07 -0.46121463 -0.9790163 -0.12430421 -0.16147931 -0.99412155 -3.9035308e-07
		 -0.10826998 -0.88728857 -4.2081726e-07 -0.46121463 -0.8265841 -0.27210769 -0.49266225
		 -0.93007821 -0.26959145 -0.24954964 -0.9790163 -0.12430421 -0.16147931 -0.8265841
		 -0.27210769 -0.49266225 -0.76577717 -0.4820064 -0.42574069 -0.96353406 -0.2147789
		 -0.15959996 -0.93007821 -0.26959145 -0.24954964 -0.76577717 -0.4820064 -0.42574069
		 -0.84568989 -0.48651937 -0.21933419 0.76752853 0.25100169 0.58982891 0.64039749 0.32025144
		 0.69809031 0.66627604 1.9447343e-07 0.74570525 0.78319538 1.847333e-07 0.62177563
		 0.74280095 0.47390062 0.47293222 0.57414931 0.57886344 0.57902485;
	setAttr ".n[2822:2987]" -type "float3"  0.64039749 0.32025144 0.69809031 0.76752853
		 0.25100169 0.58982891 0.76387548 0.59496337 0.25002587 0.63878506 0.69912744 0.3212077
		 0.57414931 0.57886344 0.57902485 0.74280095 0.47390062 0.47293222 0.77577192 0.63101017
		 -0.0020021771 0.6619308 0.74956441 0.00092908245 0.63878506 0.69912744 0.3212077
		 0.76387548 0.59496337 0.25002587 0.75896901 0.60000616 -0.25290048 0.63566154 0.70213056
		 -0.32085371 0.6619308 0.74956441 0.00092908245 0.77577192 0.63101017 -0.0020021771
		 0.73535722 0.47868124 -0.479702 0.57114184 0.58051479 -0.58034438 0.63566154 0.70213056
		 -0.32085371 0.75896901 0.60000616 -0.25290048 0.75508988 0.25189918 -0.60529828 0.63397485
		 0.32183221 -0.70320684 0.57114184 0.58051479 -0.58034438 0.73535722 0.47868124 -0.479702
		 0.7680586 -3.7887227e-07 -0.64037949 0.65739799 -2.4851852e-07 -0.7535435 0.63397485
		 0.32183221 -0.70320684 0.75508988 0.25189918 -0.60529828 0.75508857 -0.25189987 -0.60529971
		 0.63397431 -0.32183224 -0.70320737 0.65739799 -2.4851852e-07 -0.7535435 0.7680586
		 -3.7887227e-07 -0.64037949 0.73535639 -0.47868165 -0.47970286 0.57114208 -0.58051419
		 -0.58034474 0.63397431 -0.32183224 -0.70320737 0.75508857 -0.25189987 -0.60529971
		 0.75896698 -0.60000837 -0.25290129 0.63566077 -0.70213091 -0.32085413 0.57114208
		 -0.58051419 -0.58034474 0.73535639 -0.47868165 -0.47970286 0.77576935 -0.63101339
		 -0.0020017198 0.66192907 -0.74956596 0.0009294803 0.63566077 -0.70213091 -0.32085413
		 0.75896698 -0.60000837 -0.25290129 0.7638737 -0.59496498 0.25002718 0.63878411 -0.69912797
		 0.32120854 0.66192907 -0.74956596 0.0009294803 0.77576935 -0.63101339 -0.0020017198
		 0.74279988 -0.47390121 0.47293326 0.57414901 -0.57886344 0.57902491 0.63878411 -0.69912797
		 0.32120854 0.7638737 -0.59496498 0.25002718 0.76752919 -0.25100195 0.5898279 0.64039755
		 -0.3202517 0.6980902 0.57414901 -0.57886344 0.57902491 0.74279988 -0.47390121 0.47293326
		 0.78319538 1.847333e-07 0.62177563 0.66627604 1.9447343e-07 0.74570525 0.64039755
		 -0.3202517 0.6980902 0.76752919 -0.25100195 0.5898279 0.33619523 0.87974167 -0.33619544
		 4.0062542e-08 0.93447548 -0.35602763 1.5929884e-07 1 1.5929884e-07 0.35602754 0.93447548
		 -1.5524233e-07 0.35602754 0.93447548 -1.5524233e-07 1.5929884e-07 1 1.5929884e-07
		 1.6525796e-07 0.93447548 0.35602754 0.33619538 0.87974167 0.33619538 4.0062542e-08
		 0.93447548 -0.35602763 -0.3361955 0.87974137 -0.33619592 -0.35602733 0.93447554 1.0015634e-08
		 1.5929884e-07 1 1.5929884e-07 1.5929884e-07 1 1.5929884e-07 -0.35602733 0.93447554
		 1.0015634e-08 -0.33619481 0.87974185 0.3361955 1.6525796e-07 0.93447548 0.35602754
		 0.57114184 0.58051479 -0.58034438 0.31568697 0.67094773 -0.67094773 0.33619523 0.87974167
		 -0.33619544 0.63566154 0.70213056 -0.32085371 0.63566154 0.70213056 -0.32085371 0.33619523
		 0.87974167 -0.33619544 0.35602754 0.93447548 -1.5524233e-07 0.6619308 0.74956441
		 0.00092908245 0.6619308 0.74956441 0.00092908245 0.35602754 0.93447548 -1.5524233e-07
		 0.33619538 0.87974167 0.33619538 0.63878506 0.69912744 0.3212077 0.63878506 0.69912744
		 0.3212077 0.33619538 0.87974167 0.33619538 0.31568682 0.67094797 0.67094755 0.57414931
		 0.57886344 0.57902485 0.33619538 0.87974167 0.33619538 1.6525796e-07 0.93447548 0.35602754
		 -4.5583107e-08 0.70710689 0.70710671 0.31568682 0.67094797 0.67094755 1.6525796e-07
		 0.93447548 0.35602754 -0.33619481 0.87974185 0.3361955 -0.31568649 0.67094797 0.67094773
		 -4.5583107e-08 0.70710689 0.70710671 -0.33619481 0.87974185 0.3361955 -0.67094767
		 0.67094779 0.31568706 -0.57734931 0.57735062 0.57735097 -0.31568649 0.67094797 0.67094773
		 -0.35602733 0.93447554 1.0015634e-08 -0.70710701 0.70710659 -3.8998891e-07 -0.67094767
		 0.67094779 0.31568706 -0.33619481 0.87974185 0.3361955 -0.3361955 0.87974137 -0.33619592
		 -0.67094755 0.67094767 -0.31568736 -0.70710701 0.70710659 -3.8998891e-07 -0.35602733
		 0.93447554 1.0015634e-08 -0.31568718 0.67094737 -0.67094797 -0.57735014 0.57735008
		 -0.57735068 -0.67094755 0.67094767 -0.31568736 -0.3361955 0.87974137 -0.33619592
		 2.5830425e-07 0.70710683 -0.70710683 -0.31568718 0.67094737 -0.67094797 -0.3361955
		 0.87974137 -0.33619592 4.0062542e-08 0.93447548 -0.35602763 0.31568697 0.67094773
		 -0.67094773 2.5830425e-07 0.70710683 -0.70710683 4.0062542e-08 0.93447548 -0.35602763
		 0.33619523 0.87974167 -0.33619544 -0.87974143 0.33619547 -0.3361958 -0.93447554 6.0093797e-08
		 -0.35602728 -1 4.9780855e-08 -2.3397003e-07 -0.93447584 0.35602674 -6.7104736e-07
		 -0.93447584 0.35602674 -6.7104736e-07 -1 4.9780855e-08 -2.3397003e-07 -0.93447572
		 -2.003126e-08 0.3560268 -0.87974209 0.33619449 0.33619517 -0.93447554 6.0093797e-08
		 -0.35602728 -0.87974137 -0.3361958 -0.33619559 -0.93447554 -0.35602725 -7.5117264e-08
		 -1 4.9780855e-08 -2.3397003e-07 -1 4.9780855e-08 -2.3397003e-07 -0.93447554 -0.35602725
		 -7.5117264e-08 -0.87974155 -0.33619562 0.33619535 -0.93447572 -2.003126e-08 0.3560268
		 -0.57735014 0.57735008 -0.57735068 -0.67094767 0.31568673 -0.67094785 -0.87974143
		 0.33619547 -0.3361958 -0.67094755 0.67094767 -0.31568736 -0.67094755 0.67094767 -0.31568736
		 -0.87974143 0.33619547 -0.3361958 -0.93447584 0.35602674 -6.7104736e-07 -0.70710701
		 0.70710659 -3.8998891e-07 -0.70710701 0.70710659 -3.8998891e-07 -0.93447584 0.35602674
		 -6.7104736e-07 -0.87974209 0.33619449 0.33619517 -0.67094767 0.67094779 0.31568706
		 -0.67094767 0.67094779 0.31568706 -0.87974209 0.33619449 0.33619517 -0.67094719 0.3156864
		 0.67094851 -0.57734931 0.57735062 0.57735097 -0.87974209 0.33619449 0.33619517 -0.93447572
		 -2.003126e-08 0.3560268 -0.70710659 -4.5583114e-08 0.70710707 -0.67094719 0.3156864
		 0.67094851 -0.93447572 -2.003126e-08 0.3560268 -0.87974155 -0.33619562 0.33619535
		 -0.67094702 -0.3156873 0.67094839 -0.70710659 -4.5583114e-08 0.70710707 -0.87974155
		 -0.33619562 0.33619535 -0.67094743 -0.67094797 0.315687 -0.57734907 -0.57735115 0.57735062
		 -0.67094702 -0.3156873 0.67094839;
	setAttr ".n[2988:3153]" -type "float3"  -0.93447554 -0.35602725 -7.5117264e-08
		 -0.70710647 -0.70710707 6.0777474e-08 -0.67094743 -0.67094797 0.315687 -0.87974155
		 -0.33619562 0.33619535 -0.87974137 -0.3361958 -0.33619559 -0.67094719 -0.67094821
		 -0.31568721 -0.70710647 -0.70710707 6.0777474e-08 -0.93447554 -0.35602725 -7.5117264e-08
		 -0.67094731 -0.31568706 -0.67094809 -0.5773499 -0.57735014 -0.57735074 -0.67094719
		 -0.67094821 -0.31568721 -0.87974137 -0.3361958 -0.33619559 -0.70710629 0 -0.70710713
		 -0.67094731 -0.31568706 -0.67094809 -0.87974137 -0.3361958 -0.33619559 -0.93447554
		 6.0093797e-08 -0.35602728 -0.67094767 0.31568673 -0.67094785 -0.70710629 0 -0.70710713
		 -0.93447554 6.0093797e-08 -0.35602728 -0.87974143 0.33619547 -0.3361958 -0.3361952
		 -0.87974155 -0.33619562 1.0015634e-07 -0.93447566 -0.35602719 3.8829089e-07 -1 1.1449603e-07
		 -0.35602731 -0.93447554 4.0062531e-08 -0.35602731 -0.93447554 4.0062531e-08 3.8829089e-07
		 -1 1.1449603e-07 3.3051586e-07 -0.93447548 0.35602736 -0.33619526 -0.87974155 0.33619553
		 1.0015634e-07 -0.93447566 -0.35602719 0.33619544 -0.87974161 -0.33619529 0.35602745
		 -0.93447548 -1.5023449e-08 3.8829089e-07 -1 1.1449603e-07 3.8829089e-07 -1 1.1449603e-07
		 0.35602745 -0.93447548 -1.5023449e-08 0.33619502 -0.87974167 0.33619556 3.3051586e-07
		 -0.93447548 0.35602736 -0.5773499 -0.57735014 -0.57735074 -0.31568718 -0.67094755
		 -0.67094779 -0.3361952 -0.87974155 -0.33619562 -0.67094719 -0.67094821 -0.31568721
		 -0.67094719 -0.67094821 -0.31568721 -0.3361952 -0.87974155 -0.33619562 -0.35602731
		 -0.93447554 4.0062531e-08 -0.70710647 -0.70710707 6.0777474e-08 -0.70710647 -0.70710707
		 6.0777474e-08 -0.35602731 -0.93447554 4.0062531e-08 -0.33619526 -0.87974155 0.33619553
		 -0.67094743 -0.67094797 0.315687 -0.67094743 -0.67094797 0.315687 -0.33619526 -0.87974155
		 0.33619553 -0.31568635 -0.67094803 0.67094767 -0.57734907 -0.57735115 0.57735062
		 -0.33619526 -0.87974155 0.33619553 3.3051586e-07 -0.93447548 0.35602736 -1.4181411e-07
		 -0.70710701 0.70710653 -0.31568635 -0.67094803 0.67094767 3.3051586e-07 -0.93447548
		 0.35602736 0.33619502 -0.87974167 0.33619556 0.31568664 -0.67094821 0.67094743 -1.4181411e-07
		 -0.70710701 0.70710653 0.33619502 -0.87974167 0.33619556 0.63878411 -0.69912797 0.32120854
		 0.57414901 -0.57886344 0.57902491 0.31568664 -0.67094821 0.67094743 0.35602745 -0.93447548
		 -1.5023449e-08 0.66192907 -0.74956596 0.0009294803 0.63878411 -0.69912797 0.32120854
		 0.33619502 -0.87974167 0.33619556 0.33619544 -0.87974161 -0.33619529 0.63566077 -0.70213091
		 -0.32085413 0.66192907 -0.74956596 0.0009294803 0.35602745 -0.93447548 -1.5023449e-08
		 0.31568712 -0.67094767 -0.67094767 0.57114208 -0.58051419 -0.58034474 0.63566077
		 -0.70213091 -0.32085413 0.33619544 -0.87974161 -0.33619529 9.6230984e-08 -0.70710725
		 -0.70710629 0.31568712 -0.67094767 -0.67094767 0.33619544 -0.87974161 -0.33619529
		 1.0015634e-07 -0.93447566 -0.35602719 -0.31568718 -0.67094755 -0.67094779 9.6230984e-08
		 -0.70710725 -0.70710629 1.0015634e-07 -0.93447566 -0.35602719 -0.3361952 -0.87974155
		 -0.33619562 0.33619568 0.33619535 -0.87974155 0.35602757 -4.0062528e-08 -0.93447548
		 -2.7379485e-07 -4.9780882e-09 -1 2.2034401e-07 0.35602719 -0.9344756 2.2034401e-07
		 0.35602719 -0.9344756 -2.7379485e-07 -4.9780882e-09 -1 -0.35602733 -7.0109401e-08
		 -0.93447548 -0.33619553 0.33619523 -0.87974167 0.35602757 -4.0062528e-08 -0.93447548
		 0.33619538 -0.33619517 -0.87974173 -1.402189e-07 -0.35602736 -0.93447554 -2.7379485e-07
		 -4.9780882e-09 -1 -2.7379485e-07 -4.9780882e-09 -1 -1.402189e-07 -0.35602736 -0.93447554
		 -0.33619526 -0.33619529 -0.87974173 -0.35602733 -7.0109401e-08 -0.93447548 0.57114184
		 0.58051479 -0.58034438 0.63397485 0.32183221 -0.70320684 0.33619568 0.33619535 -0.87974155
		 0.31568697 0.67094773 -0.67094773 0.31568697 0.67094773 -0.67094773 0.33619568 0.33619535
		 -0.87974155 2.2034401e-07 0.35602719 -0.9344756 2.5830425e-07 0.70710683 -0.70710683
		 2.5830425e-07 0.70710683 -0.70710683 2.2034401e-07 0.35602719 -0.9344756 -0.33619553
		 0.33619523 -0.87974167 -0.31568718 0.67094737 -0.67094797 -0.31568718 0.67094737
		 -0.67094797 -0.33619553 0.33619523 -0.87974167 -0.67094767 0.31568673 -0.67094785
		 -0.57735014 0.57735008 -0.57735068 -0.33619553 0.33619523 -0.87974167 -0.35602733
		 -7.0109401e-08 -0.93447548 -0.70710629 0 -0.70710713 -0.67094767 0.31568673 -0.67094785
		 -0.35602733 -7.0109401e-08 -0.93447548 -0.33619526 -0.33619529 -0.87974173 -0.67094731
		 -0.31568706 -0.67094809 -0.70710629 0 -0.70710713 -0.33619526 -0.33619529 -0.87974173
		 -0.31568718 -0.67094755 -0.67094779 -0.5773499 -0.57735014 -0.57735074 -0.67094731
		 -0.31568706 -0.67094809 -1.402189e-07 -0.35602736 -0.93447554 9.6230984e-08 -0.70710725
		 -0.70710629 -0.31568718 -0.67094755 -0.67094779 -0.33619526 -0.33619529 -0.87974173
		 0.33619538 -0.33619517 -0.87974173 0.31568712 -0.67094767 -0.67094767 9.6230984e-08
		 -0.70710725 -0.70710629 -1.402189e-07 -0.35602736 -0.93447554 0.63397431 -0.32183224
		 -0.70320737 0.57114208 -0.58051419 -0.58034474 0.31568712 -0.67094767 -0.67094767
		 0.33619538 -0.33619517 -0.87974173 0.65739799 -2.4851852e-07 -0.7535435 0.63397431
		 -0.32183224 -0.70320737 0.33619538 -0.33619517 -0.87974173 0.35602757 -4.0062528e-08
		 -0.93447548 0.63397485 0.32183221 -0.70320684 0.65739799 -2.4851852e-07 -0.7535435
		 0.35602757 -4.0062528e-08 -0.93447548 0.33619568 0.33619535 -0.87974155 -0.33619508
		 0.33619559 0.87974173 -0.35602754 -4.507033e-08 0.93447542 1.2943035e-07 -2.4890451e-08
		 1 2.5039093e-08 0.35602766 0.93447548 2.5039093e-08 0.35602766 0.93447548 1.2943035e-07
		 -2.4890451e-08 1 0.35602775 -1.0015632e-08 0.93447542 0.33619529 0.33619604 0.87974137
		 -0.35602754 -4.507033e-08 0.93447542 -0.3361949 -0.33619571 0.87974173 -1.7026581e-07
		 -0.35602772 0.93447536 1.2943035e-07 -2.4890451e-08 1 1.2943035e-07 -2.4890451e-08
		 1 -1.7026581e-07 -0.35602772 0.93447536 0.33619526 -0.33619621 0.87974137 0.35602775
		 -1.0015632e-08 0.93447542 -0.57734931 0.57735062 0.57735097 -0.67094719 0.3156864
		 0.67094851;
	setAttr ".n[3154:3319]" -type "float3"  -0.33619508 0.33619559 0.87974173 -0.31568649
		 0.67094797 0.67094773 -0.31568649 0.67094797 0.67094773 -0.33619508 0.33619559 0.87974173
		 2.5039093e-08 0.35602766 0.93447548 -4.5583107e-08 0.70710689 0.70710671 -4.5583107e-08
		 0.70710689 0.70710671 2.5039093e-08 0.35602766 0.93447548 0.33619529 0.33619604 0.87974137
		 0.31568682 0.67094797 0.67094755 0.31568682 0.67094797 0.67094755 0.33619529 0.33619604
		 0.87974137 0.64039749 0.32025144 0.69809031 0.57414931 0.57886344 0.57902485 0.33619529
		 0.33619604 0.87974137 0.35602775 -1.0015632e-08 0.93447542 0.66627604 1.9447343e-07
		 0.74570525 0.64039749 0.32025144 0.69809031 0.35602775 -1.0015632e-08 0.93447542
		 0.33619526 -0.33619621 0.87974137 0.64039755 -0.3202517 0.6980902 0.66627604 1.9447343e-07
		 0.74570525 0.33619526 -0.33619621 0.87974137 0.31568664 -0.67094821 0.67094743 0.57414901
		 -0.57886344 0.57902491 0.64039755 -0.3202517 0.6980902 -1.7026581e-07 -0.35602772
		 0.93447536 -1.4181411e-07 -0.70710701 0.70710653 0.31568664 -0.67094821 0.67094743
		 0.33619526 -0.33619621 0.87974137 -0.3361949 -0.33619571 0.87974173 -0.31568635 -0.67094803
		 0.67094767 -1.4181411e-07 -0.70710701 0.70710653 -1.7026581e-07 -0.35602772 0.93447536
		 -0.67094702 -0.3156873 0.67094839 -0.57734907 -0.57735115 0.57735062 -0.31568635
		 -0.67094803 0.67094767 -0.3361949 -0.33619571 0.87974173 -0.70710659 -4.5583114e-08
		 0.70710707 -0.67094702 -0.3156873 0.67094839 -0.3361949 -0.33619571 0.87974173 -0.35602754
		 -4.507033e-08 0.93447542 -0.67094719 0.3156864 0.67094851 -0.70710659 -4.5583114e-08
		 0.70710707 -0.35602754 -4.507033e-08 0.93447542 -0.33619508 0.33619559 0.87974173
		 -0.53948027 -0.26298323 -0.79987544 -0.82953119 -0.55439782 -0.067239434 -0.94378805
		 -0.32684475 -0.049362484 -0.56684166 -0.077541634 -0.82016939 -0.95998037 -0.1010743
		 0.26119268 -0.84461647 -0.30970708 0.43669745 -0.55990249 0.34254766 0.75443381 -0.59894657
		 0.59883195 0.53166074 -0.98598129 0.1116581 0.12398989 -0.95998037 -0.1010743 0.26119268
		 -0.59894657 0.59883195 0.53166074 -0.62502134 0.75369316 0.20321155 -0.81193888 0.48073393
		 -0.33113471 -0.98598129 0.1116581 0.12398989 -0.62502134 0.75369316 0.20321155 -0.60310334
		 0.79047531 -0.10684145 -0.53290558 0.41385993 -0.7380594 -0.81193888 0.48073393 -0.33113471
		 -0.51036483 0.72574353 -0.46132851 -0.62109256 0.15430865 -0.76839632 -0.99120128
		 -0.10207254 -0.084268555 -0.81193888 0.48073393 -0.33113471 -0.53290558 0.41385993
		 -0.7380594 -0.56684166 -0.077541634 -0.82016939 -0.94378805 -0.32684475 -0.049362484
		 -0.99120128 -0.10207254 -0.084268555 -0.62109256 0.15430865 -0.76839632 -0.32146361
		 0.94317877 -0.084113054 -0.3363052 0.90381676 0.26460159 2.7760601e-07 0.95700294
		 0.29007813 2.0106731e-07 0.99570471 -0.092585661 -0.3363052 0.90381676 0.26460159
		 -0.30504531 0.74561465 0.59245777 -2.773302e-07 0.777583 0.62878036 2.7760601e-07
		 0.95700294 0.29007813 2.0106731e-07 0.99570471 -0.092585661 2.7760601e-07 0.95700294
		 0.29007813 0.33630446 0.90381706 0.26460183 0.32146311 0.94317883 -0.084112912 2.7760601e-07
		 0.95700294 0.29007813 -2.773302e-07 0.777583 0.62878036 0.30504483 0.74561477 0.59245795
		 0.33630446 0.90381706 0.26460183 -0.51036483 0.72574353 -0.46132851 -0.60310334 0.79047531
		 -0.10684145 -0.32146361 0.94317877 -0.084113054 -0.28104421 0.82120615 -0.49662322
		 -0.60310334 0.79047531 -0.10684145 -0.62502134 0.75369316 0.20321155 -0.3363052 0.90381676
		 0.26460159 -0.32146361 0.94317877 -0.084113054 -0.62502134 0.75369316 0.20321155
		 -0.59894657 0.59883195 0.53166074 -0.30504531 0.74561465 0.59245777 -0.3363052 0.90381676
		 0.26460159 -0.59894657 0.59883195 0.53166074 -0.55990249 0.34254766 0.75443381 -0.32475471
		 0.4020032 0.856112 -0.30504531 0.74561465 0.59245777 -0.30504531 0.74561465 0.59245777
		 -0.32475471 0.4020032 0.856112 -4.9936816e-08 0.42905325 0.90327924 -2.773302e-07
		 0.777583 0.62878036 -2.773302e-07 0.777583 0.62878036 -4.9936816e-08 0.42905325 0.90327924
		 0.32475409 0.4020035 0.85611212 0.30504483 0.74561477 0.59245795 0.30504483 0.74561477
		 0.59245795 0.32475409 0.4020035 0.85611212 0.55990052 0.34254885 0.75443465 0.59894508
		 0.59883273 0.53166175 0.33630446 0.90381706 0.26460183 0.30504483 0.74561477 0.59245795
		 0.59894508 0.59883273 0.53166175 0.6250205 0.7536937 0.20321198 0.32146311 0.94317883
		 -0.084112912 0.33630446 0.90381706 0.26460183 0.6250205 0.7536937 0.20321198 0.60310316
		 0.79047555 -0.10684106 0.28104451 0.82120633 -0.49662274 0.32146311 0.94317883 -0.084112912
		 0.60310316 0.79047555 -0.10684106 0.51036537 0.72574353 -0.46132788 -1.3658772e-07
		 0.84705895 -0.53149891 2.0106731e-07 0.99570471 -0.092585661 0.32146311 0.94317883
		 -0.084112912 0.28104451 0.82120633 -0.49662274 -0.28104421 0.82120615 -0.49662322
		 -0.32146361 0.94317877 -0.084113054 2.0106731e-07 0.99570471 -0.092585661 -1.3658772e-07
		 0.84705895 -0.53149891 0.51036537 0.72574353 -0.46132788 0.81193894 0.48073387 -0.33113459
		 0.53290612 0.41385981 -0.73805898 0.60310316 0.79047555 -0.10684106 0.6250205 0.7536937
		 0.20321198 0.98598117 0.11165813 0.12399023 0.81193894 0.48073387 -0.33113459 0.6250205
		 0.7536937 0.20321198 0.59894508 0.59883273 0.53166175 0.95998025 -0.10107286 0.26119384
		 0.98598117 0.11165813 0.12399023 0.59894508 0.59883273 0.53166175 0.55990052 0.34254885
		 0.75443465 0.84461594 -0.30970514 0.43669972 0.95998025 -0.10107286 0.26119384 0.56684172
		 -0.077541538 -0.82016933 0.94378805 -0.32684481 -0.049361303 0.82953131 -0.55439776
		 -0.067238666 0.53948081 -0.26298338 -0.79987514 0.62109303 0.15430844 -0.76839596
		 0.9912014 -0.10207288 -0.084267676 0.94378805 -0.32684481 -0.049361303 0.56684172
		 -0.077541538 -0.82016933 0.53290612 0.41385981 -0.73805898 0.81193894 0.48073387
		 -0.33113459 0.9912014 -0.10207288 -0.084267676 0.62109303 0.15430844 -0.76839596
		 0.53948081 -0.26298338 -0.79987514 0.82953131 -0.55439776 -0.067238666;
	setAttr ".n[3320:3485]" -type "float3"  0.57891577 -0.81141019 -0.080436297 0.40633279
		 -0.44240937 -0.79947966 -0.40633276 -0.44240934 -0.7994796 -0.57891607 -0.81141001
		 -0.080436066 -0.82953119 -0.55439782 -0.067239434 -0.53948027 -0.26298323 -0.79987544
		 -2.2026791e-07 -0.59255201 -0.80553216 -1.8487077e-07 -0.99999142 0.0041326145 -0.57891607
		 -0.81141001 -0.080436066 -0.40633276 -0.44240934 -0.7994796 0.40633279 -0.44240937
		 -0.79947966 0.57891577 -0.81141019 -0.080436297 -1.8487077e-07 -0.99999142 0.0041326145
		 -2.2026791e-07 -0.59255201 -0.80553216 -0.25564763 0.5242703 -0.81227148 -3.8283636e-07
		 0.53308564 -0.84606129 -1.0888422e-07 0.15671617 -0.98764366 -0.237589 0.15407281
		 -0.95906883 -3.8283636e-07 0.53308564 -0.84606129 0.25564802 0.5242703 -0.81227142
		 0.23758888 0.15407275 -0.95906895 -1.0888422e-07 0.15671617 -0.98764366 -0.237589
		 0.15407281 -0.95906883 -1.0888422e-07 0.15671617 -0.98764366 1.1853504e-07 -0.058647592
		 -0.9982788 -0.22272 -0.040346097 -0.97404724 -1.0888422e-07 0.15671617 -0.98764366
		 0.23758888 0.15407275 -0.95906895 0.22271986 -0.040345874 -0.97404724 1.1853504e-07
		 -0.058647592 -0.9982788 -0.51036483 0.72574353 -0.46132851 -0.28104421 0.82120615
		 -0.49662322 -0.25564763 0.5242703 -0.81227148 -0.53290558 0.41385993 -0.7380594 -0.28104421
		 0.82120615 -0.49662322 -1.3658772e-07 0.84705895 -0.53149891 -3.8283636e-07 0.53308564
		 -0.84606129 -0.25564763 0.5242703 -0.81227148 -1.3658772e-07 0.84705895 -0.53149891
		 0.28104451 0.82120633 -0.49662274 0.25564802 0.5242703 -0.81227142 -3.8283636e-07
		 0.53308564 -0.84606129 0.28104451 0.82120633 -0.49662274 0.51036537 0.72574353 -0.46132788
		 0.53290612 0.41385981 -0.73805898 0.25564802 0.5242703 -0.81227142 0.25564802 0.5242703
		 -0.81227142 0.53290612 0.41385981 -0.73805898 0.62109303 0.15430844 -0.76839596 0.23758888
		 0.15407275 -0.95906895 0.23758888 0.15407275 -0.95906895 0.62109303 0.15430844 -0.76839596
		 0.56684172 -0.077541538 -0.82016933 0.22271986 -0.040345874 -0.97404724 0.22271986
		 -0.040345874 -0.97404724 0.56684172 -0.077541538 -0.82016933 0.53948081 -0.26298338
		 -0.79987514 0.40633279 -0.44240937 -0.79947966 1.1853504e-07 -0.058647592 -0.9982788
		 0.22271986 -0.040345874 -0.97404724 0.40633279 -0.44240937 -0.79947966 -2.2026791e-07
		 -0.59255201 -0.80553216 -0.22272 -0.040346097 -0.97404724 1.1853504e-07 -0.058647592
		 -0.9982788 -2.2026791e-07 -0.59255201 -0.80553216 -0.40633276 -0.44240934 -0.7994796
		 -0.56684166 -0.077541634 -0.82016939 -0.22272 -0.040346097 -0.97404724 -0.40633276
		 -0.44240934 -0.7994796 -0.53948027 -0.26298323 -0.79987544 -0.62109256 0.15430865
		 -0.76839632 -0.237589 0.15407281 -0.95906883 -0.22272 -0.040346097 -0.97404724 -0.56684166
		 -0.077541634 -0.82016939 -0.53290558 0.41385993 -0.7380594 -0.25564763 0.5242703
		 -0.81227148 -0.237589 0.15407281 -0.95906883 -0.62109256 0.15430865 -0.76839632 0.55990052
		 0.34254885 0.75443465 0.32475409 0.4020035 0.85611212 0.48521131 -0.35904878 0.79727906
		 0.84461594 -0.30970514 0.43669972 0.32475409 0.4020035 0.85611212 -4.9936816e-08
		 0.42905325 0.90327924 3.4236501e-07 -0.2597329 0.96568048 0.48521131 -0.35904878
		 0.79727906 -4.9936816e-08 0.42905325 0.90327924 -0.32475471 0.4020032 0.856112 -0.48521212
		 -0.35904917 0.7972784 3.4236501e-07 -0.2597329 0.96568048 -0.32475471 0.4020032 0.856112
		 -0.55990249 0.34254766 0.75443381 -0.84461647 -0.30970708 0.43669745 -0.48521212
		 -0.35904917 0.7972784 -0.81193888 0.48073393 -0.33113471 -0.99355674 -0.080487184
		 0.079793029 -0.98598129 0.1116581 0.12398989 0.98598117 0.11165813 0.12399023 0.99355662
		 -0.080487266 0.079793617 0.81193894 0.48073387 -0.33113459 0.44987231 -0.42399883
		 0.78602791 0.34505618 -0.77298605 0.53238022 -0.26795194 -0.83104295 0.48741084 -0.027250418
		 -0.53171885 0.8464824 0.4130992 -0.50347131 0.75885808 0.45294669 -0.42575094 0.78331059
		 0.10455161 -0.16543397 0.98066336 0.14097376 -0.12295656 0.98234826 3.5205673e-07
		 -0.95685077 0.29057994 -0.29212433 -0.94562143 0.14305067 -0.18256503 -0.91202545
		 -0.36725944 2.7874743e-08 -0.96356374 -0.267479 0.48293966 -0.79997927 -0.35609353
		 0.54981905 -0.80672824 -0.21653771 0.26974073 -0.79078287 -0.54945648 -0.022169948
		 -0.89414018 -0.44723785 0.34505618 -0.77298605 0.53238022 0.3449122 -0.93751854 -0.04576467
		 -0.281064 -0.95961732 0.011736498 -0.26795194 -0.83104295 0.48741084 -0.45294741
		 -0.42575085 0.78331012 -0.41309944 -0.50347114 0.7588582 -0.1409741 -0.12295705 0.98234814
		 -0.104553 -0.16543415 0.98066312 0.45294669 -0.42575094 0.78331059 0.50533468 -0.35195926
		 0.78788424 0.14431292 -0.23797922 0.96048927 0.10455161 -0.16543397 0.98066336 -0.44987169
		 -0.42399916 0.78602809 -0.50533438 -0.35195944 0.78788429 -0.14430958 -0.23797919
		 0.96048975 0.027251368 -0.53171891 0.8464824 0.3449122 -0.93751854 -0.04576467 0.48293966
		 -0.79997927 -0.35609353 -0.022169948 -0.89414018 -0.44723785 -0.281064 -0.95961732
		 0.011736498 -0.34505719 -0.77298594 0.53237981 -0.44987169 -0.42399916 0.78602809
		 0.027251368 -0.53171891 0.8464824 0.26795122 -0.83104306 0.48741114 0.50533468 -0.35195926
		 0.78788424 0.44987231 -0.42399883 0.78602791 -0.027250418 -0.53171885 0.8464824 0.14431292
		 -0.23797922 0.96048927 -0.29212433 -0.94562143 0.14305067 -0.54981923 -0.80672777
		 -0.21653882 -0.26974177 -0.79078227 -0.54945678 -0.18256503 -0.91202545 -0.36725944
		 -0.48293921 -0.79997951 -0.3560935 -0.34491241 -0.93751854 -0.045764968 0.28106448
		 -0.95961714 0.011736927 0.022169556 -0.89414018 -0.44723797 0.54981905 -0.80672824
		 -0.21653771 0.29212359 -0.94562155 0.14305122 0.18256548 -0.91202569 -0.36725882
		 0.26974073 -0.79078287 -0.54945648 9.1193428e-08 -0.59746933 0.8018918 0.4130992
		 -0.50347131 0.75885808 0.14097376 -0.12295656 0.98234826 2.8697374e-07 -0.089780204
		 0.99596161 -0.50533438 -0.35195944 0.78788429 -0.45294741 -0.42575085 0.78331012
		 -0.104553 -0.16543415 0.98066312 -0.14430958 -0.23797919 0.96048975 -0.34491241 -0.93751854
		 -0.045764968 -0.34505719 -0.77298594 0.53237981;
	setAttr ".n[3486:3651]" -type "float3"  0.26795122 -0.83104306 0.48741114 0.28106448
		 -0.95961714 0.011736927 -0.41309944 -0.50347114 0.7588582 9.1193428e-08 -0.59746933
		 0.8018918 2.8697374e-07 -0.089780204 0.99596161 -0.1409741 -0.12295705 0.98234814
		 -0.54981923 -0.80672777 -0.21653882 -0.48293921 -0.79997951 -0.3560935 0.022169556
		 -0.89414018 -0.44723797 -0.26974177 -0.79078227 -0.54945678 0.29212359 -0.94562155
		 0.14305122 3.5205673e-07 -0.95685077 0.29057994 2.7874743e-08 -0.96356374 -0.267479
		 0.18256548 -0.91202569 -0.36725882 0.81193894 0.48073387 -0.33113459 0.99355662 -0.080487266
		 0.079793617 0.9912014 -0.10207288 -0.084267676 -0.99355674 -0.080487184 0.079793029
		 -0.81193888 0.48073393 -0.33113471 -0.99120128 -0.10207254 -0.084268555 0.48521131
		 -0.35904878 0.79727906 3.4236501e-07 -0.2597329 0.96568048 3.5205673e-07 -0.95685077
		 0.29057994 0.29212359 -0.94562155 0.14305122 -0.84461647 -0.30970708 0.43669745 -0.95998037
		 -0.1010743 0.26119268 -0.48293921 -0.79997951 -0.3560935 -0.54981923 -0.80672777
		 -0.21653882 -0.57891607 -0.81141001 -0.080436066 -1.8487077e-07 -0.99999142 0.0041326145
		 9.1193428e-08 -0.59746933 0.8018918 -0.41309944 -0.50347114 0.7588582 -0.98598129
		 0.1116581 0.12398989 -0.99355674 -0.080487184 0.079793029 -0.34505719 -0.77298594
		 0.53237981 -0.34491241 -0.93751854 -0.045764968 -0.94378805 -0.32684475 -0.049362484
		 -0.82953119 -0.55439782 -0.067239434 -0.45294741 -0.42575085 0.78331012 -0.50533438
		 -0.35195944 0.78788429 -1.8487077e-07 -0.99999142 0.0041326145 0.57891577 -0.81141019
		 -0.080436297 0.4130992 -0.50347131 0.75885808 9.1193428e-08 -0.59746933 0.8018918
		 0.84461594 -0.30970514 0.43669972 0.48521131 -0.35904878 0.79727906 0.29212359 -0.94562155
		 0.14305122 0.54981905 -0.80672824 -0.21653771 -0.95998037 -0.1010743 0.26119268 -0.98598129
		 0.1116581 0.12398989 -0.34491241 -0.93751854 -0.045764968 -0.48293921 -0.79997951
		 -0.3560935 -0.48521212 -0.35904917 0.7972784 -0.84461647 -0.30970708 0.43669745 -0.54981923
		 -0.80672777 -0.21653882 -0.29212433 -0.94562143 0.14305067 0.94378805 -0.32684481
		 -0.049361303 0.9912014 -0.10207288 -0.084267676 0.44987231 -0.42399883 0.78602791
		 0.50533468 -0.35195926 0.78788424 -0.99355674 -0.080487184 0.079793029 -0.99120128
		 -0.10207254 -0.084268555 -0.44987169 -0.42399916 0.78602809 -0.34505719 -0.77298594
		 0.53237981 0.98598117 0.11165813 0.12399023 0.95998025 -0.10107286 0.26119384 0.48293966
		 -0.79997927 -0.35609353 0.3449122 -0.93751854 -0.04576467 -0.99120128 -0.10207254
		 -0.084268555 -0.94378805 -0.32684475 -0.049362484 -0.50533438 -0.35195944 0.78788429
		 -0.44987169 -0.42399916 0.78602809 0.82953131 -0.55439776 -0.067238666 0.94378805
		 -0.32684481 -0.049361303 0.50533468 -0.35195926 0.78788424 0.45294669 -0.42575094
		 0.78331059 -0.82953119 -0.55439782 -0.067239434 -0.57891607 -0.81141001 -0.080436066
		 -0.41309944 -0.50347114 0.7588582 -0.45294741 -0.42575085 0.78331012 0.99355662 -0.080487266
		 0.079793617 0.98598117 0.11165813 0.12399023 0.3449122 -0.93751854 -0.04576467 0.34505618
		 -0.77298605 0.53238022 0.95998025 -0.10107286 0.26119384 0.84461594 -0.30970514 0.43669972
		 0.54981905 -0.80672824 -0.21653771 0.48293966 -0.79997927 -0.35609353 3.4236501e-07
		 -0.2597329 0.96568048 -0.48521212 -0.35904917 0.7972784 -0.29212433 -0.94562143 0.14305067
		 3.5205673e-07 -0.95685077 0.29057994 0.57891577 -0.81141019 -0.080436297 0.82953131
		 -0.55439776 -0.067238666 0.45294669 -0.42575094 0.78331059 0.4130992 -0.50347131
		 0.75885808 0.9912014 -0.10207288 -0.084267676 0.99355662 -0.080487266 0.079793617
		 0.34505618 -0.77298605 0.53238022 0.44987231 -0.42399883 0.78602791 0.81193894 0.48073387
		 -0.33113459 0.51036537 0.72574353 -0.46132788 0.60310316 0.79047555 -0.10684106 -0.51036483
		 0.72574353 -0.46132851 -0.81193888 0.48073393 -0.33113471 -0.60310334 0.79047531
		 -0.10684145 0.98719752 -1.0317108e-07 -0.15950269 0.99969143 -1.8313662e-07 -0.024840856
		 0.93497425 -0.35390389 -0.023983268 0.92184454 -0.35375232 -0.15830934 0.69840151
		 0.69840145 -0.15643138 0.92184466 0.35375208 -0.15830962 0.85787404 0.33065653 -0.39334261
		 0.65459251 0.65459251 -0.37817627 0.57511276 0.5751124 -0.58179992 0.65459251 0.65459251
		 -0.37817627 0.85787404 0.33065653 -0.39334261 0.66826051 0.31511718 -0.67389101 0.92184454
		 -0.35375232 -0.15830934 0.93497425 -0.35390389 -0.023983268 0.70691633 -0.70691633
		 -0.023208018 0.69840151 -0.69840151 -0.15643093 0.70691639 0.70691633 -0.023207935
		 0.70709288 0.70709306 -0.0062528374 0.93492419 0.35479477 -0.0061199246 0.93497437
		 0.35390347 -0.023983289 0.93497437 0.35390347 -0.023983289 0.93492419 0.35479477
		 -0.0061199246 0.999982 -8.1864897e-08 -0.006010572 0.99969143 -1.8313662e-07 -0.024840856
		 0.99969143 -1.8313662e-07 -0.024840856 0.999982 -8.1864897e-08 -0.006010572 0.93492424
		 -0.35479453 -0.0061200112 0.93497425 -0.35390389 -0.023983268 0.93497425 -0.35390389
		 -0.023983268 0.93492424 -0.35479453 -0.0061200112 0.70709324 -0.70709264 -0.0062530274
		 0.70691633 -0.70691633 -0.023208018 -0.9218446 -0.3537522 -0.15830974 -0.93497437
		 -0.35390356 -0.023983376 -0.99969143 2.8916304e-08 -0.024840957 -0.98719746 -2.947745e-08
		 -0.15950297 0.66826034 -0.31511754 -0.67389101 0.85787404 -0.33065668 -0.39334249
		 0.65459228 -0.65459269 -0.37817627 0.57511222 -0.575113 -0.58179981 0.70455885 2.0745378e-07
		 -0.70964551 0.91240603 1.481102e-08 -0.40928617 0.85787404 -0.33065668 -0.39334249
		 0.66826034 -0.31511754 -0.67389101 0.66826051 0.31511718 -0.67389101 0.85787404 0.33065653
		 -0.39334261 0.91240603 1.481102e-08 -0.40928617 0.70455885 2.0745378e-07 -0.70964551
		 -0.33570719 0.33570659 -0.88011467 -1.5020822e-08 0.35545889 -0.93469197 1.0451963e-07
		 -2.5383338e-07 -1 -0.35545945 -1.2016655e-07 -0.93469173 -1.5020822e-08 0.35545889
		 -0.93469197 0.33570716 0.33570641 -0.88011467 0.35545954 -8.0111036e-08 -0.93469167
		 1.0451963e-07 -2.5383338e-07 -1 -0.35545945 -1.2016655e-07 -0.93469173 1.0451963e-07
		 -2.5383338e-07 -1 2.5535394e-07 -0.35545981 -0.93469155 -0.33570692 -0.33570719 -0.88011456;
	setAttr ".n[3652:3817]" -type "float3"  1.0451963e-07 -2.5383338e-07 -1 0.35545954
		 -8.0111036e-08 -0.93469167 0.33570698 -0.3357074 -0.8801145 2.5535394e-07 -0.35545981
		 -0.93469155 -0.57511234 0.57511228 -0.58180028 -0.31511772 0.66826004 -0.67389119
		 -0.33570719 0.33570659 -0.88011467 -0.66826016 0.31511733 -0.67389125 -0.31511772
		 0.66826004 -0.67389119 1.0119703e-08 0.70455867 -0.70964581 -1.5020822e-08 0.35545889
		 -0.93469197 -0.33570719 0.33570659 -0.88011467 1.0119703e-08 0.70455867 -0.70964581
		 0.31511801 0.66826004 -0.67389101 0.33570716 0.33570641 -0.88011467 -1.5020822e-08
		 0.35545889 -0.93469197 0.31511801 0.66826004 -0.67389101 0.57511276 0.5751124 -0.58179992
		 0.66826051 0.31511718 -0.67389101 0.33570716 0.33570641 -0.88011467 0.33570716 0.33570641
		 -0.88011467 0.66826051 0.31511718 -0.67389101 0.70455885 2.0745378e-07 -0.70964551
		 0.35545954 -8.0111036e-08 -0.93469167 0.35545954 -8.0111036e-08 -0.93469167 0.70455885
		 2.0745378e-07 -0.70964551 0.66826034 -0.31511754 -0.67389101 0.33570698 -0.3357074
		 -0.8801145 0.33570698 -0.3357074 -0.8801145 0.66826034 -0.31511754 -0.67389101 0.57511222
		 -0.575113 -0.58179981 0.31511757 -0.66826063 -0.67389065 2.5535394e-07 -0.35545981
		 -0.93469155 0.33570698 -0.3357074 -0.8801145 0.31511757 -0.66826063 -0.67389065 2.0745381e-07
		 -0.70455915 -0.70964521 -0.33570692 -0.33570719 -0.88011456 2.5535394e-07 -0.35545981
		 -0.93469155 2.0745381e-07 -0.70455915 -0.70964521 -0.31511763 -0.66826051 -0.67389077
		 -0.66826028 -0.31511787 -0.67389083 -0.33570692 -0.33570719 -0.88011456 -0.31511763
		 -0.66826051 -0.67389077 -0.57511258 -0.5751127 -0.58179963 -0.70455879 -1.0625683e-07
		 -0.70964551 -0.35545945 -1.2016655e-07 -0.93469173 -0.33570692 -0.33570719 -0.88011456
		 -0.66826028 -0.31511787 -0.67389083 -0.66826016 0.31511733 -0.67389125 -0.33570719
		 0.33570659 -0.88011467 -0.35545945 -1.2016655e-07 -0.93469173 -0.70455879 -1.0625683e-07
		 -0.70964551 -0.98719746 -2.947745e-08 -0.15950297 -0.99969143 2.8916304e-08 -0.024840957
		 -0.93497449 0.35390344 -0.023983505 -0.92184466 0.35375193 -0.15830968 -0.69840127
		 -0.69840163 -0.15643105 -0.70691615 -0.70691645 -0.023207998 -0.93497437 -0.35390356
		 -0.023983376 -0.9218446 -0.3537522 -0.15830974 -0.57511258 -0.5751127 -0.58179963
		 -0.65459239 -0.65459263 -0.37817636 -0.85787374 -0.33065701 -0.39334282 -0.66826028
		 -0.31511787 -0.67389083 -0.92184466 0.35375193 -0.15830968 -0.93497449 0.35390344
		 -0.023983505 -0.70691627 0.70691639 -0.023208207 -0.69840145 0.69840151 -0.1564312
		 -0.70691615 -0.70691645 -0.023207998 -0.70709288 -0.70709306 -0.00625308 -0.9349243
		 -0.35479459 -0.0061202389 -0.93497437 -0.35390356 -0.023983376 -0.93497437 -0.35390356
		 -0.023983376 -0.9349243 -0.35479459 -0.0061202389 -0.99998188 -6.2602545e-08 -0.0060109901
		 -0.99969143 2.8916304e-08 -0.024840957 -0.99969143 2.8916304e-08 -0.024840957 -0.99998188
		 -6.2602545e-08 -0.0060109901 -0.9349243 0.35479447 -0.0061203954 -0.93497449 0.35390344
		 -0.023983505 -0.93497449 0.35390344 -0.023983505 -0.9349243 0.35479447 -0.0061203954
		 -0.70709288 0.707093 -0.0062532462 -0.70691627 0.70691639 -0.023208207 0.93496501
		 0.3547399 2.2296717e-07 0.93496495 0.35474005 1.149399e-07 1 2.6468078e-07 -8.0587419e-08
		 1 1.1549707e-07 2.5651858e-07 -0.66826016 0.31511733 -0.67389125 -0.85787392 0.33065647
		 -0.39334285 -0.65459245 0.65459239 -0.37817663 -0.57511234 0.57511228 -0.58180028
		 -0.70455879 -1.0625683e-07 -0.70964551 -0.91240597 -1.678582e-07 -0.40928641 -0.85787392
		 0.33065647 -0.39334285 -0.66826016 0.31511733 -0.67389125 -0.66826028 -0.31511787
		 -0.67389083 -0.85787374 -0.33065701 -0.39334282 -0.91240597 -1.678582e-07 -0.40928641
		 -0.70455879 -1.0625683e-07 -0.70964551 1 1.1549707e-07 2.5651858e-07 1 2.6468078e-07
		 -8.0587419e-08 0.93496513 -0.35473973 2.1777982e-08 0.93496519 -0.35473943 1.0425211e-07
		 0.93496495 0.35474005 1.149399e-07 0.93496484 0.35474047 1.7753483e-07 1 4.3311408e-07
		 -3.6877446e-09 1 2.6468078e-07 -8.0587419e-08 0.70710695 0.70710671 1.5003634e-07
		 0.93496501 0.3547399 2.2296717e-07 0.93492419 0.35479477 -0.0061199246 0.70709288
		 0.70709306 -0.0062528374 1 2.6468078e-07 -8.0587419e-08 1 4.3311408e-07 -3.6877446e-09
		 0.9349649 -0.35474014 1.7912242e-07 0.93496513 -0.35473973 2.1777982e-08 0.93496519
		 -0.35473943 1.0425211e-07 0.93496513 -0.35473973 2.1777982e-08 0.70710689 -0.70710659
		 1.9364643e-07 0.70710719 -0.70710635 1.2630365e-07 0.70710695 0.70710671 2.6820939e-07
		 0.70710647 0.70710707 1.4347346e-07 0.93496484 0.35474047 1.7753483e-07 0.93496495
		 0.35474005 1.149399e-07 0.93496513 -0.35473973 2.1777982e-08 0.9349649 -0.35474014
		 1.7912242e-07 0.70710671 -0.70710689 2.5562628e-07 0.70710689 -0.70710659 1.9364643e-07
		 -1.4738725e-07 0.98719752 -0.15950294 -5.4307073e-08 0.91240603 -0.40928617 -0.33065671
		 0.85787386 -0.39334273 -0.35375193 0.92184466 -0.15830967 0.35375178 0.92184466 -0.15830983
		 0.33065683 0.85787398 -0.39334252 -5.4307073e-08 0.91240603 -0.40928617 -1.4738725e-07
		 0.98719752 -0.15950294 0.69840151 0.69840145 -0.15643138 0.65459251 0.65459251 -0.37817627
		 0.33065683 0.85787398 -0.39334252 0.35375178 0.92184466 -0.15830983 -0.70709288 0.707093
		 -0.0062532462 -0.35479465 0.93492419 -0.0061203488 -0.35390344 0.93497449 -0.023983469
		 -0.70691627 0.70691639 -0.023208207 -0.35479465 0.93492419 -0.0061203488 -5.7786977e-08
		 0.99998188 -0.0060109934 -1.5903967e-07 0.99969143 -0.024840983 -0.35390344 0.93497449
		 -0.023983469 -5.7786977e-08 0.99998188 -0.0060109934 0.35479444 0.93492424 -0.0061201281
		 0.35390311 0.93497455 -0.023983348 -1.5903967e-07 0.99969143 -0.024840983 0.35479444
		 0.93492424 -0.0061201281 0.70709288 0.70709306 -0.0062528374 0.70691639 0.70691633
		 -0.023207935 0.35390311 0.93497455 -0.023983348 -0.69840145 0.69840151 -0.1564312
		 -0.35375193 0.92184466 -0.15830967 -0.33065671 0.85787386 -0.39334273 -0.65459245
		 0.65459239 -0.37817663 0.33065683 0.85787398 -0.39334252 0.65459251 0.65459251 -0.37817627
		 0.57511276 0.5751124 -0.58179992 0.31511801 0.66826004 -0.67389101 -5.4307073e-08
		 0.91240603 -0.40928617 0.33065683 0.85787398 -0.39334252;
	setAttr ".n[3818:3983]" -type "float3"  0.31511801 0.66826004 -0.67389101 1.0119703e-08
		 0.70455867 -0.70964581 -0.33065671 0.85787386 -0.39334273 -5.4307073e-08 0.91240603
		 -0.40928617 1.0119703e-08 0.70455867 -0.70964581 -0.31511772 0.66826004 -0.67389119
		 -0.65459245 0.65459239 -0.37817663 -0.33065671 0.85787386 -0.39334273 -0.31511772
		 0.66826004 -0.67389119 -0.57511234 0.57511228 -0.58180028 0.35474008 -0.93496495
		 1.6490949e-07 0.3547402 -0.93496495 9.4781896e-08 -6.73733e-08 -1 -2.054554e-08 -8.1810434e-08
		 -1 4.3551331e-08 -8.1810434e-08 -1 4.3551331e-08 -6.73733e-08 -1 -2.054554e-08 -0.35474026
		 -0.9349649 -9.1391684e-08 -0.35474026 -0.9349649 -5.1305676e-08 0.3547402 -0.93496495
		 9.4781896e-08 0.35474038 -0.9349649 7.8183028e-08 -1.1549709e-07 -1 -2.1588544e-08
		 -6.73733e-08 -1 -2.054554e-08 0.70710719 -0.70710635 1.2630365e-07 0.35474008 -0.93496495
		 1.6490949e-07 0.35479483 -0.93492413 -0.0061201649 0.70709324 -0.70709264 -0.0062530274
		 -6.73733e-08 -1 -2.054554e-08 -1.1549709e-07 -1 -2.1588544e-08 -0.35474029 -0.9349649
		 -1.4497436e-07 -0.35474026 -0.9349649 -9.1391684e-08 -0.35474026 -0.9349649 -5.1305676e-08
		 -0.35474026 -0.9349649 -9.1391684e-08 -0.70710659 -0.70710695 -1.2602328e-07 -0.70710683
		 -0.70710683 -1.3720954e-07 0.70710689 -0.70710659 1.9364643e-07 0.70710671 -0.70710689
		 2.5562628e-07 0.35474038 -0.9349649 7.8183028e-08 0.3547402 -0.93496495 9.4781896e-08
		 -0.35474026 -0.9349649 -9.1391684e-08 -0.35474029 -0.9349649 -1.4497436e-07 -0.70710647
		 -0.70710713 -1.2427847e-07 -0.70710659 -0.70710695 -1.2602328e-07 -0.35473996 0.93496501
		 -5.0339271e-08 -0.35473981 0.93496501 -1.005408e-07 9.6247568e-08 1 2.9885161e-08
		 0 1 1.3143624e-07 0 1 1.3143624e-07 9.6247568e-08 1 2.9885161e-08 0.35474014 0.9349649
		 1.7558337e-07 0.35474005 0.93496495 2.1979972e-07 -0.35473981 0.93496501 -1.005408e-07
		 -0.35473984 0.93496507 -3.0813902e-07 9.6247543e-09 1 -2.9904993e-07 9.6247568e-08
		 1 2.9885161e-08 -0.70710659 0.70710689 -1.6406986e-07 -0.35473996 0.93496501 -5.0339271e-08
		 -0.35479465 0.93492419 -0.0061203488 -0.70709288 0.707093 -0.0062532462 9.6247568e-08
		 1 2.9885161e-08 9.6247543e-09 1 -2.9904993e-07 0.35474008 0.93496495 -2.362611e-07
		 0.35474014 0.9349649 1.7558337e-07 0.35474005 0.93496495 2.1979972e-07 0.35474014
		 0.9349649 1.7558337e-07 0.70710695 0.70710671 2.6820939e-07 0.70710695 0.70710671
		 1.5003634e-07 -0.70710647 0.70710707 -1.1335059e-07 -0.70710659 0.70710689 -1.5168293e-07
		 -0.35473984 0.93496507 -3.0813902e-07 -0.35473981 0.93496501 -1.005408e-07 0.35474014
		 0.9349649 1.7558337e-07 0.35474008 0.93496495 -2.362611e-07 0.70710647 0.70710707
		 1.4347346e-07 0.70710695 0.70710671 2.6820939e-07 -0.93496501 -0.35473987 -1.5650247e-07
		 -0.93496495 -0.35474017 -1.7122699e-07 -1 1.4437132e-08 -1.48303e-07 -1 -6.7373286e-08
		 -1.1129994e-07 -1 -6.7373286e-08 -1.1129994e-07 -1 1.4437132e-08 -1.48303e-07 -0.93496501
		 0.3547399 -4.3685191e-08 -0.93496507 0.3547399 -1.5695954e-07 -0.93496495 -0.35474017
		 -1.7122699e-07 -0.9349649 -0.35474038 -1.7035596e-07 -1 7.6998035e-08 -2.0332638e-07
		 -1 1.4437132e-08 -1.48303e-07 -0.70710683 -0.70710683 -1.3720954e-07 -0.70710659
		 -0.70710695 -1.2602328e-07 -0.93496495 -0.35474017 -1.7122699e-07 -0.93496501 -0.35473987
		 -1.5650247e-07 -1 1.4437132e-08 -1.48303e-07 -1 7.6998035e-08 -2.0332638e-07 -0.93496507
		 0.35473987 1.7163529e-08 -0.93496501 0.3547399 -4.3685191e-08 -0.93496507 0.3547399
		 -1.5695954e-07 -0.93496501 0.3547399 -4.3685191e-08 -0.70710647 0.70710707 -1.1335059e-07
		 -0.70710659 0.70710689 -1.6406986e-07 -0.70710659 -0.70710695 -1.2602328e-07 -0.70710647
		 -0.70710713 -1.2427847e-07 -0.9349649 -0.35474038 -1.7035596e-07 -0.93496495 -0.35474017
		 -1.7122699e-07 -0.93496501 0.3547399 -4.3685191e-08 -0.93496507 0.35473987 1.7163529e-08
		 -0.70710659 0.70710689 -1.5168293e-07 -0.70710647 0.70710707 -1.1335059e-07 0.35375202
		 -0.92184466 -0.15830959 0.35390362 -0.93497437 -0.023983415 -1.1084583e-07 -0.99969143
		 -0.024840893 7.3693627e-08 -0.98719752 -0.15950279 7.3693627e-08 -0.98719752 -0.15950279
		 -1.1084583e-07 -0.99969143 -0.024840893 -0.35390353 -0.93497437 -0.023983289 -0.35375205
		 -0.92184466 -0.15830946 0.69840151 -0.69840151 -0.15643093 0.35375202 -0.92184466
		 -0.15830959 0.33065674 -0.85787398 -0.39334261 0.65459228 -0.65459269 -0.37817627
		 0.57511222 -0.575113 -0.58179981 0.65459228 -0.65459269 -0.37817627 0.33065674 -0.85787398
		 -0.39334261 0.31511757 -0.66826063 -0.67389065 -0.35375205 -0.92184466 -0.15830946
		 -0.35390353 -0.93497437 -0.023983289 -0.70691615 -0.70691645 -0.023207998 -0.69840127
		 -0.69840163 -0.15643105 0.70691633 -0.70691633 -0.023208018 0.70709324 -0.70709264
		 -0.0062530274 0.35479483 -0.93492413 -0.0061201649 0.35390362 -0.93497437 -0.023983415
		 0.35390362 -0.93497437 -0.023983415 0.35479483 -0.93492413 -0.0061201649 -1.6372979e-07
		 -0.999982 -0.0060108798 -1.1084583e-07 -0.99969143 -0.024840893 -1.1084583e-07 -0.99969143
		 -0.024840893 -1.6372979e-07 -0.999982 -0.0060108798 -0.3547948 -0.93492413 -0.00612021
		 -0.35390353 -0.93497437 -0.023983289 -0.35390353 -0.93497437 -0.023983289 -0.3547948
		 -0.93492413 -0.00612021 -0.70709288 -0.70709306 -0.00625308 -0.70691615 -0.70691645
		 -0.023207998 -0.31511763 -0.66826051 -0.67389077 -0.33065674 -0.85787398 -0.39334264
		 -0.65459239 -0.65459263 -0.37817636 -0.57511258 -0.5751127 -0.58179963 2.0745381e-07
		 -0.70455915 -0.70964521 1.2342515e-07 -0.91240603 -0.40928614 -0.33065674 -0.85787398
		 -0.39334264 -0.31511763 -0.66826051 -0.67389077 0.31511757 -0.66826063 -0.67389065
		 0.33065674 -0.85787398 -0.39334261 1.2342515e-07 -0.91240603 -0.40928614 2.0745381e-07
		 -0.70455915 -0.70964521 0.92184466 0.35375208 -0.15830962 0.93497437 0.35390347 -0.023983289
		 0.99969143 -1.8313662e-07 -0.024840856 0.98719752 -1.0317108e-07 -0.15950269 -0.9349243
		 0.35479447 -0.0061203954 -0.93496507 0.3547399 -1.5695954e-07 -0.70710659 0.70710689
		 -1.6406986e-07 -0.70709288 0.707093 -0.0062532462 -0.70709288 -0.70709306 -0.00625308
		 -0.70710683 -0.70710683 -1.3720954e-07 -0.93496501 -0.35473987 -1.5650247e-07 -0.9349243
		 -0.35479459 -0.0061202389;
	setAttr ".n[3984:4149]" -type "float3"  -0.99998188 -6.2602545e-08 -0.0060109901
		 -1 -6.7373286e-08 -1.1129994e-07 -0.93496507 0.3547399 -1.5695954e-07 -0.9349243
		 0.35479447 -0.0061203954 -0.9349243 -0.35479459 -0.0061202389 -0.93496501 -0.35473987
		 -1.5650247e-07 -1 -6.7373286e-08 -1.1129994e-07 -0.99998188 -6.2602545e-08 -0.0060109901
		 0.35479444 0.93492424 -0.0061201281 0.35474005 0.93496495 2.1979972e-07 0.70710695
		 0.70710671 1.5003634e-07 0.70709288 0.70709306 -0.0062528374 -0.70710647 0.70710707
		 -1.1335059e-07 -0.35473981 0.93496501 -1.005408e-07 -0.35473996 0.93496501 -5.0339271e-08
		 -0.70710659 0.70710689 -1.6406986e-07 -5.7786977e-08 0.99998188 -0.0060109934 0 1
		 1.3143624e-07 0.35474005 0.93496495 2.1979972e-07 0.35479444 0.93492424 -0.0061201281
		 -0.35479465 0.93492419 -0.0061203488 -0.35473996 0.93496501 -5.0339271e-08 0 1 1.3143624e-07
		 -5.7786977e-08 0.99998188 -0.0060109934 -0.3547948 -0.93492413 -0.00612021 -0.35474026
		 -0.9349649 -5.1305676e-08 -0.70710683 -0.70710683 -1.3720954e-07 -0.70709288 -0.70709306
		 -0.00625308 0.70710689 -0.70710659 1.9364643e-07 0.3547402 -0.93496495 9.4781896e-08
		 0.35474008 -0.93496495 1.6490949e-07 0.70710719 -0.70710635 1.2630365e-07 -1.6372979e-07
		 -0.999982 -0.0060108798 -8.1810434e-08 -1 4.3551331e-08 -0.35474026 -0.9349649 -5.1305676e-08
		 -0.3547948 -0.93492413 -0.00612021 0.35479483 -0.93492413 -0.0061201649 0.35474008
		 -0.93496495 1.6490949e-07 -8.1810434e-08 -1 4.3551331e-08 -1.6372979e-07 -0.999982
		 -0.0060108798 0.93492424 -0.35479453 -0.0061200112 0.93496519 -0.35473943 1.0425211e-07
		 0.70710719 -0.70710635 1.2630365e-07 0.70709324 -0.70709264 -0.0062530274 0.70710695
		 0.70710671 2.6820939e-07 0.93496495 0.35474005 1.149399e-07 0.93496501 0.3547399
		 2.2296717e-07 0.70710695 0.70710671 1.5003634e-07 0.999982 -8.1864897e-08 -0.006010572
		 1 1.1549707e-07 2.5651858e-07 0.93496519 -0.35473943 1.0425211e-07 0.93492424 -0.35479453
		 -0.0061200112 0.93492419 0.35479477 -0.0061199246 0.93496501 0.3547399 2.2296717e-07
		 1 1.1549707e-07 2.5651858e-07 0.999982 -8.1864897e-08 -0.006010572 0.85787404 0.33065653
		 -0.39334261 0.92184466 0.35375208 -0.15830962 0.98719752 -1.0317108e-07 -0.15950269
		 0.91240603 1.481102e-08 -0.40928617 -0.33065674 -0.85787398 -0.39334264 -0.35375205
		 -0.92184466 -0.15830946 -0.69840127 -0.69840163 -0.15643105 -0.65459239 -0.65459263
		 -0.37817636 0.70691633 -0.70691633 -0.023208018 0.35390362 -0.93497437 -0.023983415
		 0.35375202 -0.92184466 -0.15830959 0.69840151 -0.69840151 -0.15643093 1.2342515e-07
		 -0.91240603 -0.40928614 7.3693627e-08 -0.98719752 -0.15950279 -0.35375205 -0.92184466
		 -0.15830946 -0.33065674 -0.85787398 -0.39334264 0.33065674 -0.85787398 -0.39334261
		 0.35375202 -0.92184466 -0.15830959 7.3693627e-08 -0.98719752 -0.15950279 1.2342515e-07
		 -0.91240603 -0.40928614 -0.70691627 0.70691639 -0.023208207 -0.35390344 0.93497449
		 -0.023983469 -0.35375193 0.92184466 -0.15830967 -0.69840145 0.69840151 -0.1564312
		 0.70691639 0.70691633 -0.023207935 0.69840151 0.69840145 -0.15643138 0.35375178 0.92184466
		 -0.15830983 0.35390311 0.93497455 -0.023983348 0.35390311 0.93497455 -0.023983348
		 0.35375178 0.92184466 -0.15830983 -1.4738725e-07 0.98719752 -0.15950294 -1.5903967e-07
		 0.99969143 -0.024840983 -1.5903967e-07 0.99969143 -0.024840983 -1.4738725e-07 0.98719752
		 -0.15950294 -0.35375193 0.92184466 -0.15830967 -0.35390344 0.93497449 -0.023983469
		 -0.85787392 0.33065647 -0.39334285 -0.92184466 0.35375193 -0.15830968 -0.69840145
		 0.69840151 -0.1564312 -0.65459245 0.65459239 -0.37817663 -0.65459239 -0.65459263
		 -0.37817636 -0.69840127 -0.69840163 -0.15643105 -0.9218446 -0.3537522 -0.15830974
		 -0.85787374 -0.33065701 -0.39334282 -0.91240597 -1.678582e-07 -0.40928641 -0.98719746
		 -2.947745e-08 -0.15950297 -0.92184466 0.35375193 -0.15830968 -0.85787392 0.33065647
		 -0.39334285 -0.85787374 -0.33065701 -0.39334282 -0.9218446 -0.3537522 -0.15830974
		 -0.98719746 -2.947745e-08 -0.15950297 -0.91240597 -1.678582e-07 -0.40928641 0.85787404
		 -0.33065668 -0.39334249 0.92184454 -0.35375232 -0.15830934 0.69840151 -0.69840151
		 -0.15643093 0.65459228 -0.65459269 -0.37817627 0.70691639 0.70691633 -0.023207935
		 0.93497437 0.35390347 -0.023983289 0.92184466 0.35375208 -0.15830962 0.69840151 0.69840145
		 -0.15643138 0.91240603 1.481102e-08 -0.40928617 0.98719752 -1.0317108e-07 -0.15950269
		 0.92184454 -0.35375232 -0.15830934 0.85787404 -0.33065668 -0.39334249 -0.98719752
		 1.0317109e-07 -0.15950282 -0.92184472 -0.35375199 -0.15830958 -0.93497449 -0.35390344
		 -0.023983017 -0.99969143 2.3133043e-07 -0.024840569 -0.69840163 0.69840139 -0.15643114
		 -0.65459251 0.65459251 -0.3781763 -0.85787404 0.33065638 -0.39334264 -0.92184484
		 0.35375178 -0.15830944 -0.57511228 0.57511276 -0.58179992 -0.66826046 0.31511733
		 -0.67389101 -0.85787404 0.33065638 -0.39334264 -0.65459251 0.65459251 -0.3781763
		 -0.92184472 -0.35375199 -0.15830958 -0.69840151 -0.69840151 -0.15643118 -0.70691651
		 -0.70691627 -0.023208002 -0.93497449 -0.35390344 -0.023983017 -0.70691639 0.70691633
		 -0.023208076 -0.93497449 0.35390338 -0.023983281 -0.93492424 0.35479459 -0.0061202156
		 -0.70709294 0.70709294 -0.0062528872 -0.93497449 0.35390338 -0.023983281 -0.99969143
		 2.3133043e-07 -0.024840569 -0.99998188 1.9743881e-07 -0.0060108355 -0.93492424 0.35479459
		 -0.0061202156 -0.99969143 2.3133043e-07 -0.024840569 -0.93497449 -0.35390344 -0.023983017
		 -0.93492424 -0.35479465 -0.00612 -0.99998188 1.9743881e-07 -0.0060108355 -0.93497449
		 -0.35390344 -0.023983017 -0.70691651 -0.70691627 -0.023208002 -0.70709294 -0.70709294
		 -0.0062528369 -0.93492424 -0.35479465 -0.00612 0.9218446 -0.35375208 -0.15830976
		 0.98719746 -3.4390354e-08 -0.15950295 0.99969143 -1.4458152e-08 -0.024840981 0.93497437
		 -0.35390353 -0.023983371 -0.66826034 -0.31511778 -0.67389083 -0.57511246 -0.57511282
		 -0.58179969 -0.65459239 -0.65459263 -0.37817624 -0.85787386 -0.33065674 -0.39334276
		 -0.70455891 -2.0745381e-07 -0.70964551 -0.66826034 -0.31511778 -0.67389083 -0.85787386
		 -0.33065674 -0.39334276 -0.91240597 -5.4307058e-08 -0.40928635 -0.66826046 0.31511733
		 -0.67389101 -0.70455891 -2.0745381e-07 -0.70964551;
	setAttr ".n[4150:4315]" -type "float3"  -0.91240597 -5.4307058e-08 -0.40928635
		 -0.85787404 0.33065638 -0.39334264 0.33570722 0.33570644 -0.88011467 0.35545945 -1.3518736e-07
		 -0.93469173 -9.456538e-08 -2.6378763e-07 -1 -5.0069406e-09 0.35545892 -0.93469197
		 -5.0069406e-09 0.35545892 -0.93469197 -9.456538e-08 -2.6378763e-07 -1 -0.35545954
		 -3.1543723e-07 -0.93469173 -0.33570725 0.33570644 -0.88011467 0.35545945 -1.3518736e-07
		 -0.93469173 0.33570683 -0.33570719 -0.88011456 -2.7538167e-07 -0.35545975 -0.93469155
		 -9.456538e-08 -2.6378763e-07 -1 -9.456538e-08 -2.6378763e-07 -1 -2.7538167e-07 -0.35545975
		 -0.93469155 -0.33570698 -0.33570734 -0.88011438 -0.35545954 -3.1543723e-07 -0.93469173
		 0.57511252 0.57511222 -0.58180016 0.66826028 0.31511721 -0.67389125 0.33570722 0.33570644
		 -0.88011467 0.31511787 0.66826022 -0.67389089 0.31511787 0.66826022 -0.67389089 0.33570722
		 0.33570644 -0.88011467 -5.0069406e-09 0.35545892 -0.93469197 -7.5897773e-08 0.70455873
		 -0.70964575 -7.5897773e-08 0.70455873 -0.70964575 -5.0069406e-09 0.35545892 -0.93469197
		 -0.33570725 0.33570644 -0.88011467 -0.31511784 0.66826016 -0.67389095 -0.31511784
		 0.66826016 -0.67389095 -0.33570725 0.33570644 -0.88011467 -0.66826046 0.31511733
		 -0.67389101 -0.57511228 0.57511276 -0.58179992 -0.33570725 0.33570644 -0.88011467
		 -0.35545954 -3.1543723e-07 -0.93469173 -0.70455891 -2.0745381e-07 -0.70964551 -0.66826046
		 0.31511733 -0.67389101 -0.35545954 -3.1543723e-07 -0.93469173 -0.33570698 -0.33570734
		 -0.88011438 -0.66826034 -0.31511778 -0.67389083 -0.70455891 -2.0745381e-07 -0.70964551
		 -0.33570698 -0.33570734 -0.88011438 -0.3151176 -0.66826063 -0.67389065 -0.57511246
		 -0.57511282 -0.58179969 -0.66826034 -0.31511778 -0.67389083 -2.7538167e-07 -0.35545975
		 -0.93469155 -1.2649623e-07 -0.70455915 -0.70964521 -0.3151176 -0.66826063 -0.67389065
		 -0.33570698 -0.33570734 -0.88011438 0.33570683 -0.33570719 -0.88011456 0.31511748
		 -0.66826063 -0.67389077 -1.2649623e-07 -0.70455915 -0.70964521 -2.7538167e-07 -0.35545975
		 -0.93469155 0.66826028 -0.31511784 -0.67389095 0.5751124 -0.57511294 -0.58179969
		 0.31511748 -0.66826063 -0.67389077 0.33570683 -0.33570719 -0.88011456 0.70455873
		 -1.2143637e-07 -0.70964563 0.66826028 -0.31511784 -0.67389095 0.33570683 -0.33570719
		 -0.88011456 0.35545945 -1.3518736e-07 -0.93469173 0.66826028 0.31511721 -0.67389125
		 0.70455873 -1.2143637e-07 -0.70964563 0.35545945 -1.3518736e-07 -0.93469173 0.33570722
		 0.33570644 -0.88011467 0.98719746 -3.4390354e-08 -0.15950295 0.92184466 0.35375196
		 -0.1583098 0.93497437 0.35390347 -0.023983536 0.99969143 -1.4458152e-08 -0.024840981
		 0.69840127 -0.69840181 -0.15643112 0.9218446 -0.35375208 -0.15830976 0.93497437 -0.35390353
		 -0.023983371 0.70691609 -0.70691657 -0.02320803 0.5751124 -0.57511294 -0.58179969
		 0.66826028 -0.31511784 -0.67389095 0.8578738 -0.33065683 -0.39334285 0.65459228 -0.65459275
		 -0.37817642 0.92184466 0.35375196 -0.1583098 0.69840145 0.69840151 -0.15643126 0.70691621
		 0.70691639 -0.023208259 0.93497437 0.35390347 -0.023983536 0.70691609 -0.70691657
		 -0.02320803 0.93497437 -0.35390353 -0.023983371 0.93492419 -0.35479474 -0.0061202385
		 0.7070927 -0.70709312 -0.0062529827 0.93497437 -0.35390353 -0.023983371 0.99969143
		 -1.4458152e-08 -0.024840981 0.99998188 -5.778697e-08 -0.0060109869 0.93492419 -0.35479474
		 -0.0061202385 0.99969143 -1.4458152e-08 -0.024840981 0.93497437 0.35390347 -0.023983536
		 0.9349243 0.35479453 -0.0061203474 0.99998188 -5.778697e-08 -0.0060109869 0.93497437
		 0.35390347 -0.023983536 0.70691621 0.70691639 -0.023208259 0.70709282 0.70709306
		 -0.0062531624 0.9349243 0.35479453 -0.0061203474 -0.93496495 0.35474011 3.4090118e-07
		 -1 3.8499024e-08 2.5485323e-07 -1 -1.684332e-07 1.611722e-07 -0.93496495 0.35474008
		 8.0092512e-08 0.66826028 0.31511721 -0.67389125 0.57511252 0.57511222 -0.58180016
		 0.65459251 0.65459234 -0.37817657 0.85787398 0.33065638 -0.39334297 0.70455873 -1.2143637e-07
		 -0.70964563 0.66826028 0.31511721 -0.67389125 0.85787398 0.33065638 -0.39334297 0.91240591
		 -1.0367713e-07 -0.40928647 0.66826028 -0.31511784 -0.67389095 0.70455873 -1.2143637e-07
		 -0.70964563 0.91240591 -1.0367713e-07 -0.40928647 0.8578738 -0.33065683 -0.39334285
		 -1 3.8499024e-08 2.5485323e-07 -0.93496501 -0.35473996 3.4639182e-08 -0.93496501
		 -0.35473976 1.2877784e-07 -1 -1.684332e-07 1.611722e-07 -0.93496495 0.35474008 8.0092512e-08
		 -1 -1.684332e-07 1.611722e-07 -1 -2.8874274e-07 -1.8069925e-07 -0.93496501 0.35473981
		 -4.6258111e-07 -0.70710659 0.70710695 4.0123621e-07 -0.70709294 0.70709294 -0.0062528872
		 -0.93492424 0.35479459 -0.0061202156 -0.93496495 0.35474011 3.4090118e-07 -1 -1.684332e-07
		 1.611722e-07 -0.93496501 -0.35473976 1.2877784e-07 -0.93496513 -0.35473967 2.194684e-07
		 -1 -2.8874274e-07 -1.8069925e-07 -0.93496501 -0.35473996 3.4639182e-08 -0.70710683
		 -0.70710665 -2.0538758e-08 -0.70710701 -0.70710659 8.0175361e-08 -0.93496501 -0.35473976
		 1.2877784e-07 -0.70710653 0.70710701 -3.1930396e-09 -0.93496495 0.35474008 8.0092512e-08
		 -0.93496501 0.35473981 -4.6258111e-07 -0.70710659 0.70710695 -5.2818365e-07 -0.93496501
		 -0.35473976 1.2877784e-07 -0.70710701 -0.70710659 8.0175361e-08 -0.70710677 -0.70710683
		 3.4176571e-07 -0.93496513 -0.35473967 2.194684e-07 5.89549e-08 0.98719752 -0.15950291
		 0.35375193 0.92184466 -0.15830976 0.33065665 0.85787398 -0.39334258 0 0.91240609
		 -0.40928614 -0.35375181 0.92184466 -0.15830968 5.89549e-08 0.98719752 -0.15950291
		 0 0.91240609 -0.40928614 -0.33065671 0.85787398 -0.39334267 -0.69840163 0.69840139
		 -0.15643114 -0.35375181 0.92184466 -0.15830968 -0.33065671 0.85787398 -0.39334267
		 -0.65459251 0.65459251 -0.3781763 0.70709282 0.70709306 -0.0062531624 0.70691621
		 0.70691639 -0.023208259 0.35390344 0.93497437 -0.023983529 0.35479444 0.93492424
		 -0.0061202617 0.35479444 0.93492424 -0.0061202617 0.35390344 0.93497437 -0.023983529
		 1.3976214e-07 0.99969143 -0.024840889 -7.2233718e-08 0.99998188 -0.0060109585 -7.2233718e-08
		 0.99998188 -0.0060109585 1.3976214e-07 0.99969143 -0.024840889 -0.35390311 0.93497455
		 -0.023983331 -0.35479447 0.9349243 -0.0061200699;
	setAttr ".n[4316:4481]" -type "float3"  -0.35479447 0.9349243 -0.0061200699 -0.35390311
		 0.93497455 -0.023983331 -0.70691639 0.70691633 -0.023208076 -0.70709294 0.70709294
		 -0.0062528872 0.69840145 0.69840151 -0.15643126 0.65459251 0.65459234 -0.37817657
		 0.33065665 0.85787398 -0.39334258 0.35375193 0.92184466 -0.15830976 -0.33065671 0.85787398
		 -0.39334267 -0.31511784 0.66826016 -0.67389095 -0.57511228 0.57511276 -0.58179992
		 -0.65459251 0.65459251 -0.3781763 0 0.91240609 -0.40928614 -7.5897773e-08 0.70455873
		 -0.70964575 -0.31511784 0.66826016 -0.67389095 -0.33065671 0.85787398 -0.39334267
		 0.33065665 0.85787398 -0.39334258 0.31511787 0.66826022 -0.67389089 -7.5897773e-08
		 0.70455873 -0.70964575 0 0.91240609 -0.40928614 0.65459251 0.65459234 -0.37817657
		 0.57511252 0.57511222 -0.58180016 0.31511787 0.66826022 -0.67389089 0.33065665 0.85787398
		 -0.39334258 -0.35474014 -0.93496495 8.8842896e-08 1.9249512e-07 -1 5.3302589e-08
		 7.6998042e-08 -1 5.7013434e-09 -0.35474008 -0.93496495 4.6996512e-08 1.9249512e-07
		 -1 5.3302589e-08 0.35474008 -0.93496495 -2.765341e-14 0.35474011 -0.9349649 -1.7898475e-07
		 7.6998042e-08 -1 5.7013434e-09 -0.35474008 -0.93496495 4.6996512e-08 7.6998042e-08
		 -1 5.7013434e-09 1.0587233e-07 -1 1.1800789e-07 -0.35473996 -0.93496501 2.4180258e-07
		 -0.70710683 -0.70710665 -2.0538758e-08 -0.70709294 -0.70709294 -0.0062528369 -0.35479462
		 -0.93492419 -0.0061199889 -0.35474014 -0.93496495 8.8842896e-08 7.6998042e-08 -1
		 5.7013434e-09 0.35474011 -0.9349649 -1.7898475e-07 0.35474011 -0.93496495 -2.4658857e-07
		 1.0587233e-07 -1 1.1800789e-07 0.35474008 -0.93496495 -2.765341e-14 0.70710647 -0.70710695
		 -1.1226994e-07 0.70710659 -0.70710695 -2.3654846e-07 0.35474011 -0.9349649 -1.7898475e-07
		 -0.70710701 -0.70710659 8.0175361e-08 -0.35474008 -0.93496495 4.6996512e-08 -0.35473996
		 -0.93496501 2.4180258e-07 -0.70710677 -0.70710683 3.4176571e-07 0.35474011 -0.9349649
		 -1.7898475e-07 0.70710659 -0.70710695 -2.3654846e-07 0.70710665 -0.70710689 -2.48557e-07
		 0.35474011 -0.93496495 -2.4658857e-07 0.35473984 0.93496501 5.7611276e-15 -1.973075e-07
		 1 5.3302699e-08 -1.2512184e-07 1 -1.1402541e-08 0.35473987 0.93496501 -1.1310638e-07
		 -1.973075e-07 1 5.3302699e-08 -0.35473993 0.93496501 2.7629054e-07 -0.35474002 0.93496495
		 -2.3364301e-08 -1.2512184e-07 1 -1.1402541e-08 0.35473987 0.93496501 -1.1310638e-07
		 -1.2512184e-07 1 -1.1402541e-08 -8.6622805e-08 1 -2.3601568e-07 0.35473976 0.93496507
		 -2.4658877e-07 0.70710659 0.70710689 -4.2101206e-08 0.70709282 0.70709306 -0.0062531624
		 0.35479444 0.93492424 -0.0061202617 0.35473984 0.93496501 5.7611276e-15 -1.2512184e-07
		 1 -1.1402541e-08 -0.35474002 0.93496495 -2.3364301e-08 -0.35474011 0.93496495 -4.8360511e-07
		 -8.6622805e-08 1 -2.3601568e-07 -0.35473993 0.93496501 2.7629054e-07 -0.70710659
		 0.70710695 4.0123621e-07 -0.70710653 0.70710701 -3.1930396e-09 -0.35474002 0.93496495
		 -2.3364301e-08 0.70710659 0.70710695 -1.4207676e-07 0.35473987 0.93496501 -1.1310638e-07
		 0.35473976 0.93496507 -2.4658877e-07 0.70710665 0.70710695 -2.4855706e-07 -0.35474002
		 0.93496495 -2.3364301e-08 -0.70710653 0.70710701 -3.1930396e-09 -0.70710659 0.70710695
		 -5.2818365e-07 -0.35474011 0.93496495 -4.8360511e-07 0.93496495 -0.35474008 -1.8331006e-07
		 1 -5.2936155e-08 -9.8276693e-08 1 4.8123773e-08 -1.782136e-07 0.93496501 -0.35473996
		 -1.8161391e-07 1 -5.2936155e-08 -9.8276693e-08 0.93496501 0.3547399 -6.8532138e-08
		 0.93496501 0.35473999 -8.089102e-08 1 4.8123773e-08 -1.782136e-07 0.93496501 -0.35473996
		 -1.8161391e-07 1 4.8123773e-08 -1.782136e-07 1 1.3474656e-07 -2.0651358e-07 0.93496501
		 -0.35473987 -1.481352e-07 0.70710647 -0.70710695 -1.1226994e-07 0.93496495 -0.35474008
		 -1.8331006e-07 0.93496501 -0.35473996 -1.8161391e-07 0.70710659 -0.70710695 -2.3654846e-07
		 1 4.8123773e-08 -1.782136e-07 0.93496501 0.35473999 -8.089102e-08 0.93496501 0.35473993
		 -5.9254123e-08 1 1.3474656e-07 -2.0651358e-07 0.93496501 0.3547399 -6.8532138e-08
		 0.70710659 0.70710689 -4.2101206e-08 0.70710659 0.70710695 -1.4207676e-07 0.93496501
		 0.35473999 -8.089102e-08 0.70710659 -0.70710695 -2.3654846e-07 0.93496501 -0.35473996
		 -1.8161391e-07 0.93496501 -0.35473987 -1.481352e-07 0.70710665 -0.70710689 -2.48557e-07
		 0.93496501 0.35473999 -8.089102e-08 0.70710659 0.70710695 -1.4207676e-07 0.70710665
		 0.70710695 -2.4855706e-07 0.93496501 0.35473993 -5.9254123e-08 -0.35375223 -0.92184466
		 -0.15830967 9.3345257e-08 -0.98719752 -0.15950273 2.120529e-07 -0.99969143 -0.024840711
		 -0.35390347 -0.93497437 -0.023983339 9.3345257e-08 -0.98719752 -0.15950273 0.35375187
		 -0.92184478 -0.15830953 0.35390347 -0.93497437 -0.023983257 2.120529e-07 -0.99969143
		 -0.024840711 -0.69840151 -0.69840151 -0.15643118 -0.65459239 -0.65459263 -0.37817624
		 -0.33065689 -0.85787386 -0.39334264 -0.35375223 -0.92184466 -0.15830967 -0.57511246
		 -0.57511282 -0.58179969 -0.3151176 -0.66826063 -0.67389065 -0.33065689 -0.85787386
		 -0.39334264 -0.65459239 -0.65459263 -0.37817624 0.35375187 -0.92184478 -0.15830953
		 0.69840127 -0.69840181 -0.15643112 0.70691609 -0.70691657 -0.02320803 0.35390347
		 -0.93497437 -0.023983257 -0.70691651 -0.70691627 -0.023208002 -0.35390347 -0.93497437
		 -0.023983339 -0.35479462 -0.93492419 -0.0061199889 -0.70709294 -0.70709294 -0.0062528369
		 -0.35390347 -0.93497437 -0.023983339 2.120529e-07 -0.99969143 -0.024840711 2.4077906e-07
		 -0.99998188 -0.0060107489 -0.35479462 -0.93492419 -0.0061199889 2.120529e-07 -0.99969143
		 -0.024840711 0.35390347 -0.93497437 -0.023983257 0.3547948 -0.93492413 -0.0061200964
		 2.4077906e-07 -0.99998188 -0.0060107489 0.35390347 -0.93497437 -0.023983257 0.70691609
		 -0.70691657 -0.02320803 0.7070927 -0.70709312 -0.0062529827 0.3547948 -0.93492413
		 -0.0061200964 0.31511748 -0.66826063 -0.67389077 0.5751124 -0.57511294 -0.58179969
		 0.65459228 -0.65459275 -0.37817642 0.33065659 -0.85787404 -0.39334261 -1.2649623e-07
		 -0.70455915 -0.70964521 0.31511748 -0.66826063 -0.67389077 0.33065659 -0.85787404
		 -0.39334261 2.962204e-08 -0.91240603 -0.40928623 -0.3151176 -0.66826063 -0.67389065
		 -1.2649623e-07 -0.70455915 -0.70964521;
	setAttr ".n[4482:4647]" -type "float3"  2.962204e-08 -0.91240603 -0.40928623
		 -0.33065689 -0.85787386 -0.39334264 -0.92184484 0.35375178 -0.15830944 -0.98719752
		 1.0317109e-07 -0.15950282 -0.99969143 2.3133043e-07 -0.024840569 -0.93497449 0.35390338
		 -0.023983281 0.9349243 0.35479453 -0.0061203474 0.70709282 0.70709306 -0.0062531624
		 0.70710659 0.70710689 -4.2101206e-08 0.93496501 0.3547399 -6.8532138e-08 0.7070927
		 -0.70709312 -0.0062529827 0.93492419 -0.35479474 -0.0061202385 0.93496495 -0.35474008
		 -1.8331006e-07 0.70710647 -0.70710695 -1.1226994e-07 0.99998188 -5.778697e-08 -0.0060109869
		 0.9349243 0.35479453 -0.0061203474 0.93496501 0.3547399 -6.8532138e-08 1 -5.2936155e-08
		 -9.8276693e-08 0.93492419 -0.35479474 -0.0061202385 0.99998188 -5.778697e-08 -0.0060109869
		 1 -5.2936155e-08 -9.8276693e-08 0.93496495 -0.35474008 -1.8331006e-07 -0.35479447
		 0.9349243 -0.0061200699 -0.70709294 0.70709294 -0.0062528872 -0.70710659 0.70710695
		 4.0123621e-07 -0.35473993 0.93496501 2.7629054e-07 0.70710659 0.70710695 -1.4207676e-07
		 0.70710659 0.70710689 -4.2101206e-08 0.35473984 0.93496501 5.7611276e-15 0.35473987
		 0.93496501 -1.1310638e-07 -7.2233718e-08 0.99998188 -0.0060109585 -0.35479447 0.9349243
		 -0.0061200699 -0.35473993 0.93496501 2.7629054e-07 -1.973075e-07 1 5.3302699e-08
		 0.35479444 0.93492424 -0.0061202617 -7.2233718e-08 0.99998188 -0.0060109585 -1.973075e-07
		 1 5.3302699e-08 0.35473984 0.93496501 5.7611276e-15 0.3547948 -0.93492413 -0.0061200964
		 0.7070927 -0.70709312 -0.0062529827 0.70710647 -0.70710695 -1.1226994e-07 0.35474008
		 -0.93496495 -2.765341e-14 -0.70710701 -0.70710659 8.0175361e-08 -0.70710683 -0.70710665
		 -2.0538758e-08 -0.35474014 -0.93496495 8.8842896e-08 -0.35474008 -0.93496495 4.6996512e-08
		 2.4077906e-07 -0.99998188 -0.0060107489 0.3547948 -0.93492413 -0.0061200964 0.35474008
		 -0.93496495 -2.765341e-14 1.9249512e-07 -1 5.3302589e-08 -0.35479462 -0.93492419
		 -0.0061199889 2.4077906e-07 -0.99998188 -0.0060107489 1.9249512e-07 -1 5.3302589e-08
		 -0.35474014 -0.93496495 8.8842896e-08 -0.93492424 -0.35479465 -0.00612 -0.70709294
		 -0.70709294 -0.0062528369 -0.70710683 -0.70710665 -2.0538758e-08 -0.93496501 -0.35473996
		 3.4639182e-08 -0.70710653 0.70710701 -3.1930396e-09 -0.70710659 0.70710695 4.0123621e-07
		 -0.93496495 0.35474011 3.4090118e-07 -0.93496495 0.35474008 8.0092512e-08 -0.99998188
		 1.9743881e-07 -0.0060108355 -0.93492424 -0.35479465 -0.00612 -0.93496501 -0.35473996
		 3.4639182e-08 -1 3.8499024e-08 2.5485323e-07 -0.93492424 0.35479459 -0.0061202156
		 -0.99998188 1.9743881e-07 -0.0060108355 -1 3.8499024e-08 2.5485323e-07 -0.93496495
		 0.35474011 3.4090118e-07 -0.85787404 0.33065638 -0.39334264 -0.91240597 -5.4307058e-08
		 -0.40928635 -0.98719752 1.0317109e-07 -0.15950282 -0.92184484 0.35375178 -0.15830944
		 0.33065659 -0.85787404 -0.39334261 0.65459228 -0.65459275 -0.37817642 0.69840127
		 -0.69840181 -0.15643112 0.35375187 -0.92184478 -0.15830953 -0.70691651 -0.70691627
		 -0.023208002 -0.69840151 -0.69840151 -0.15643118 -0.35375223 -0.92184466 -0.15830967
		 -0.35390347 -0.93497437 -0.023983339 2.962204e-08 -0.91240603 -0.40928623 0.33065659
		 -0.85787404 -0.39334261 0.35375187 -0.92184478 -0.15830953 9.3345257e-08 -0.98719752
		 -0.15950273 -0.33065689 -0.85787386 -0.39334264 2.962204e-08 -0.91240603 -0.40928623
		 9.3345257e-08 -0.98719752 -0.15950273 -0.35375223 -0.92184466 -0.15830967 0.70691621
		 0.70691639 -0.023208259 0.69840145 0.69840151 -0.15643126 0.35375193 0.92184466 -0.15830976
		 0.35390344 0.93497437 -0.023983529 -0.70691639 0.70691633 -0.023208076 -0.35390311
		 0.93497455 -0.023983331 -0.35375181 0.92184466 -0.15830968 -0.69840163 0.69840139
		 -0.15643114 -0.35390311 0.93497455 -0.023983331 1.3976214e-07 0.99969143 -0.024840889
		 5.89549e-08 0.98719752 -0.15950291 -0.35375181 0.92184466 -0.15830968 1.3976214e-07
		 0.99969143 -0.024840889 0.35390344 0.93497437 -0.023983529 0.35375193 0.92184466
		 -0.15830976 5.89549e-08 0.98719752 -0.15950291 0.85787398 0.33065638 -0.39334297
		 0.65459251 0.65459234 -0.37817657 0.69840145 0.69840151 -0.15643126 0.92184466 0.35375196
		 -0.1583098 0.65459228 -0.65459275 -0.37817642 0.8578738 -0.33065683 -0.39334285 0.9218446
		 -0.35375208 -0.15830976 0.69840127 -0.69840181 -0.15643112 0.91240591 -1.0367713e-07
		 -0.40928647 0.85787398 0.33065638 -0.39334297 0.92184466 0.35375196 -0.1583098 0.98719746
		 -3.4390354e-08 -0.15950295 0.8578738 -0.33065683 -0.39334285 0.91240591 -1.0367713e-07
		 -0.40928647 0.98719746 -3.4390354e-08 -0.15950295 0.9218446 -0.35375208 -0.15830976
		 -0.85787386 -0.33065674 -0.39334276 -0.65459239 -0.65459263 -0.37817624 -0.69840151
		 -0.69840151 -0.15643118 -0.92184472 -0.35375199 -0.15830958 -0.70691639 0.70691633
		 -0.023208076 -0.69840163 0.69840139 -0.15643114 -0.92184484 0.35375178 -0.15830944
		 -0.93497449 0.35390338 -0.023983281 -0.91240597 -5.4307058e-08 -0.40928635 -0.85787386
		 -0.33065674 -0.39334276 -0.92184472 -0.35375199 -0.15830958 -0.98719752 1.0317109e-07
		 -0.15950282 -0.93047827 -0.35386682 0.094807453 -0.90604937 -0.34659797 0.24278472
		 -0.97037309 7.8240994e-08 0.24161132 -0.99564368 5.8110011e-08 0.093240246 -0.90604937
		 -0.34659797 0.24278472 -0.818367 -0.31453744 0.48097983 -0.86754769 1.2921066e-07
		 0.49735409 -0.97037309 7.8240994e-08 0.24161132 -0.99564368 5.8110011e-08 0.093240246
		 -0.97037309 7.8240994e-08 0.24161132 -0.90604931 0.34659803 0.24278459 -0.93047816
		 0.35386696 0.094807498 -0.97037309 7.8240994e-08 0.24161132 -0.86754769 1.2921066e-07
		 0.49735409 -0.81836712 0.31453735 0.48097968 -0.90604931 0.34659803 0.24278459 -0.70690149
		 -0.70690137 0.024098484 -0.70379531 -0.7037949 0.096669793 -0.93047827 -0.35386682
		 0.094807453 -0.93464142 -0.35479769 0.023751322 -0.70379531 -0.7037949 0.096669793
		 -0.68563634 -0.68563634 0.24455172 -0.90604937 -0.34659797 0.24278472 -0.93047827
		 -0.35386682 0.094807453 -0.68563634 -0.68563634 0.24455172 -0.62623721 -0.62623727
		 0.46438539 -0.818367 -0.31453744 0.48097983 -0.90604937 -0.34659797 0.24278472 -0.62623721
		 -0.62623727 0.46438539 -0.51407957 -0.51407987 0.68661779 -0.58858281 -0.27539015
		 0.76008582 -0.818367 -0.31453744 0.48097983;
	setAttr ".n[4648:4813]" -type "float3"  -0.818367 -0.31453744 0.48097983 -0.58858281
		 -0.27539015 0.76008582 -0.61520314 6.5025318e-08 0.78836864 -0.86754769 1.2921066e-07
		 0.49735409 -0.86754769 1.2921066e-07 0.49735409 -0.61520314 6.5025318e-08 0.78836864
		 -0.58858305 0.27538994 0.7600857 -0.81836712 0.31453735 0.48097968 -0.81836712 0.31453735
		 0.48097968 -0.58858305 0.27538994 0.7600857 -0.51407999 0.51407963 0.68661767 -0.62623733
		 0.62623715 0.46438539 -0.90604931 0.34659803 0.24278459 -0.81836712 0.31453735 0.48097968
		 -0.62623733 0.62623715 0.46438539 -0.68563634 0.68563634 0.24455169 -0.93047816 0.35386696
		 0.094807498 -0.90604931 0.34659803 0.24278459 -0.68563634 0.68563634 0.24455169 -0.70379502
		 0.70379514 0.096669763 -0.93464136 0.35479769 0.023751486 -0.93047816 0.35386696
		 0.094807498 -0.70379502 0.70379514 0.096669763 -0.70690149 0.70690137 0.024098601
		 -0.99972409 1.1579606e-07 0.023489444 -0.99564368 5.8110011e-08 0.093240246 -0.93047816
		 0.35386696 0.094807498 -0.93464136 0.35479769 0.023751486 -0.93464142 -0.35479769
		 0.023751322 -0.93047827 -0.35386682 0.094807453 -0.99564368 5.8110011e-08 0.093240246
		 -0.99972409 1.1579606e-07 0.023489444 -0.35386711 0.93047816 0.094807461 -0.34659791
		 0.90604937 0.24278471 2.4450308e-08 0.97037309 0.24161135 9.6850012e-09 0.99564368
		 0.093240254 -0.34659791 0.90604937 0.24278471 -0.31453717 0.81836718 0.4809798 7.951423e-08
		 0.86754781 0.49735373 2.4450308e-08 0.97037309 0.24161135 9.6850012e-09 0.99564368
		 0.093240254 2.4450308e-08 0.97037309 0.24161135 0.346598 0.90604937 0.24278471 0.35386705
		 0.93047822 0.09480761 2.4450308e-08 0.97037309 0.24161135 7.951423e-08 0.86754781
		 0.49735373 0.31453702 0.8183673 0.48097962 0.346598 0.90604937 0.24278471 -0.70690149
		 0.70690137 0.024098601 -0.70379502 0.70379514 0.096669763 -0.35386711 0.93047816
		 0.094807461 -0.35479763 0.93464136 0.023751521 -0.70379502 0.70379514 0.096669763
		 -0.68563634 0.68563634 0.24455169 -0.34659791 0.90604937 0.24278471 -0.35386711 0.93047816
		 0.094807461 -0.68563634 0.68563634 0.24455169 -0.62623733 0.62623715 0.46438539 -0.31453717
		 0.81836718 0.4809798 -0.34659791 0.90604937 0.24278471 -0.62623733 0.62623715 0.46438539
		 -0.51407999 0.51407963 0.68661767 -0.27538985 0.58858311 0.76008576 -0.31453717 0.81836718
		 0.4809798 -0.31453717 0.81836718 0.4809798 -0.27538985 0.58858311 0.76008576 7.5029213e-08
		 0.61520344 0.7883684 7.951423e-08 0.86754781 0.49735373 7.951423e-08 0.86754781 0.49735373
		 7.5029213e-08 0.61520344 0.7883684 0.27538946 0.58858311 0.76008588 0.31453702 0.8183673
		 0.48097962 0.31453702 0.8183673 0.48097962 0.27538946 0.58858311 0.76008588 0.51407939
		 0.51407969 0.68661809 0.62623727 0.62623733 0.46438533 0.346598 0.90604937 0.24278471
		 0.31453702 0.8183673 0.48097962 0.62623727 0.62623733 0.46438533 0.6856364 0.6856364
		 0.2445516 0.35386705 0.93047822 0.09480761 0.346598 0.90604937 0.24278471 0.6856364
		 0.6856364 0.2445516 0.70379502 0.70379496 0.096669979 0.35479769 0.93464142 0.023751199
		 0.35386705 0.93047822 0.09480761 0.70379502 0.70379496 0.096669979 0.70690149 0.70690131
		 0.024098473 -4.824836e-08 0.99972409 0.02348939 9.6850012e-09 0.99564368 0.093240254
		 0.35386705 0.93047822 0.09480761 0.35479769 0.93464142 0.023751199 -0.35479763 0.93464136
		 0.023751521 -0.35386711 0.93047816 0.094807461 9.6850012e-09 0.99564368 0.093240254
		 -4.824836e-08 0.99972409 0.02348939 0.93047816 0.35386696 0.094807595 0.90604937
		 0.34659782 0.24278466 0.97037321 -1.5159192e-07 0.24161133 0.99564368 4.8425006e-09
		 0.09324038 0.90604937 0.34659782 0.24278466 0.81836748 0.31453717 0.48097923 0.86754799
		 -1.7393737e-07 0.49735343 0.97037321 -1.5159192e-07 0.24161133 0.99564368 4.8425006e-09
		 0.09324038 0.97037321 -1.5159192e-07 0.24161133 0.90604949 -0.34659788 0.2427845
		 0.93047827 -0.35386693 0.094807625 0.97037321 -1.5159192e-07 0.24161133 0.86754799
		 -1.7393737e-07 0.49735343 0.81836736 -0.3145372 0.48097938 0.90604949 -0.34659788
		 0.2427845 0.70690149 0.70690131 0.024098473 0.70379502 0.70379496 0.096669979 0.93047816
		 0.35386696 0.094807595 0.93464136 0.35479763 0.023751339 0.70379502 0.70379496 0.096669979
		 0.6856364 0.6856364 0.2445516 0.90604937 0.34659782 0.24278466 0.93047816 0.35386696
		 0.094807595 0.6856364 0.6856364 0.2445516 0.62623727 0.62623733 0.46438533 0.81836748
		 0.31453717 0.48097923 0.90604937 0.34659782 0.24278466 0.62623727 0.62623733 0.46438533
		 0.51407939 0.51407969 0.68661809 0.58858299 0.27538985 0.76008576 0.81836748 0.31453717
		 0.48097923 0.81836748 0.31453717 0.48097923 0.58858299 0.27538985 0.76008576 0.61520356
		 -9.2536034e-08 0.78836828 0.86754799 -1.7393737e-07 0.49735343 0.86754799 -1.7393737e-07
		 0.49735343 0.61520356 -9.2536034e-08 0.78836828 0.58858299 -0.27538982 0.76008588
		 0.81836736 -0.3145372 0.48097938 0.81836736 -0.3145372 0.48097938 0.58858299 -0.27538982
		 0.76008588 0.51407939 -0.51407969 0.68661821 0.62623745 -0.62623709 0.46438536 0.90604949
		 -0.34659788 0.2427845 0.81836736 -0.3145372 0.48097938 0.62623745 -0.62623709 0.46438536
		 0.68563652 -0.68563622 0.24455154 0.93047827 -0.35386693 0.094807625 0.90604949 -0.34659788
		 0.2427845 0.68563652 -0.68563622 0.24455154 0.70379502 -0.70379502 0.09666983 0.93464136
		 -0.35479763 0.023751466 0.93047827 -0.35386693 0.094807625 0.70379502 -0.70379502
		 0.09666983 0.70690137 -0.70690149 0.024098508 0.99972409 8.6847059e-08 0.023489429
		 0.99564368 4.8425006e-09 0.09324038 0.93047827 -0.35386693 0.094807625 0.93464136
		 -0.35479763 0.023751466 0.93464136 0.35479763 0.023751339 0.93047816 0.35386696 0.094807595
		 0.99564368 4.8425006e-09 0.09324038 0.99972409 8.6847059e-08 0.023489429 0.35386711
		 -0.93047816 0.094807461 0.34659797 -0.90604931 0.24278481 5.868074e-08 -0.97037303
		 0.24161159 4.8425012e-08 -0.99564368 0.093240283 0.34659797 -0.90604931 0.24278481
		 0.31453705 -0.81836724 0.48097962;
	setAttr ".n[4814:4979]" -type "float3"  -3.4787476e-08 -0.86754781 0.49735379
		 5.868074e-08 -0.97037303 0.24161159 4.8425012e-08 -0.99564368 0.093240283 5.868074e-08
		 -0.97037303 0.24161159 -0.34659791 -0.90604931 0.24278484 -0.35386717 -0.93047816
		 0.094807483 5.868074e-08 -0.97037303 0.24161159 -3.4787476e-08 -0.86754781 0.49735379
		 -0.31453717 -0.81836712 0.4809798 -0.34659791 -0.90604931 0.24278484 0.70690137 -0.70690149
		 0.024098508 0.70379502 -0.70379502 0.09666983 0.35386711 -0.93047816 0.094807461
		 0.35479769 -0.93464136 0.02375121 0.70379502 -0.70379502 0.09666983 0.68563652 -0.68563622
		 0.24455154 0.34659797 -0.90604931 0.24278481 0.35386711 -0.93047816 0.094807461 0.68563652
		 -0.68563622 0.24455154 0.62623745 -0.62623709 0.46438536 0.31453705 -0.81836724 0.48097962
		 0.34659797 -0.90604931 0.24278481 0.62623745 -0.62623709 0.46438536 0.51407939 -0.51407969
		 0.68661821 0.27538964 -0.58858317 0.76008582 0.31453705 -0.81836724 0.48097962 0.31453705
		 -0.81836724 0.48097962 0.27538964 -0.58858317 0.76008582 -8.7534076e-08 -0.61520356
		 0.78836828 -3.4787476e-08 -0.86754781 0.49735379 -3.4787476e-08 -0.86754781 0.49735379
		 -8.7534076e-08 -0.61520356 0.78836828 -0.27539 -0.58858305 0.76008576 -0.31453717
		 -0.81836712 0.4809798 -0.31453717 -0.81836712 0.4809798 -0.27539 -0.58858305 0.76008576
		 -0.51407957 -0.51407987 0.68661779 -0.62623721 -0.62623727 0.46438539 -0.34659791
		 -0.90604931 0.24278484 -0.31453717 -0.81836712 0.4809798 -0.62623721 -0.62623727
		 0.46438539 -0.68563634 -0.68563634 0.24455172 -0.35386717 -0.93047816 0.094807483
		 -0.34659791 -0.90604931 0.24278484 -0.68563634 -0.68563634 0.24455172 -0.70379531
		 -0.7037949 0.096669793 -0.35479784 -0.9346413 0.023751322 -0.35386717 -0.93047816
		 0.094807483 -0.70379531 -0.7037949 0.096669793 -0.70690149 -0.70690137 0.024098484
		 5.3073197e-08 -0.99972409 0.023489295 4.8425012e-08 -0.99564368 0.093240283 -0.35386717
		 -0.93047816 0.094807483 -0.35479784 -0.9346413 0.023751322 0.35479769 -0.93464136
		 0.02375121 0.35386711 -0.93047816 0.094807461 4.8425012e-08 -0.99564368 0.093240283
		 5.3073197e-08 -0.99972409 0.023489295 -0.1171951 0.11719532 -0.98616958 -8.707638e-08
		 0.11816636 -0.99299383 -1.4290806e-08 -6.1926826e-08 -1 -0.11816627 -3.3399161e-08
		 -0.99299383 -8.707638e-08 0.11816636 -0.99299383 0.11719506 0.11719529 -0.98616958
		 0.11816615 -1.1570423e-07 -0.99299383 -1.4290806e-08 -6.1926826e-08 -1 -0.11816627
		 -3.3399161e-08 -0.99299383 -1.4290806e-08 -6.1926826e-08 -1 1.192827e-07 -0.11816631
		 -0.99299383 -0.11719528 -0.11719523 -0.98616958 -1.4290806e-08 -6.1926826e-08 -1
		 0.11816615 -1.1570423e-07 -0.99299383 0.1171951 -0.11719529 -0.9861697 1.192827e-07
		 -0.11816631 -0.99299383 -0.2861833 0.28618315 -0.91443884 -0.14563109 0.31501064
		 -0.93784857 -0.1171951 0.11719532 -0.98616958 -0.3150107 0.14563115 -0.93784851 -0.14563109
		 0.31501064 -0.93784857 -6.5206386e-08 0.31984141 -0.94747114 -8.707638e-08 0.11816636
		 -0.99299383 -0.1171951 0.11719532 -0.98616958 -6.5206386e-08 0.31984141 -0.94747114
		 0.14563088 0.31501091 -0.93784851 0.11719506 0.11719529 -0.98616958 -8.707638e-08
		 0.11816636 -0.99299383 0.14563088 0.31501091 -0.93784851 0.28618309 0.28618342 -0.91443872
		 0.31501073 0.14563107 -0.93784851 0.11719506 0.11719529 -0.98616958 0.11719506 0.11719529
		 -0.98616958 0.31501073 0.14563107 -0.93784851 0.31984159 -9.6602058e-08 -0.94747102
		 0.11816615 -1.1570423e-07 -0.99299383 0.11816615 -1.1570423e-07 -0.99299383 0.31984159
		 -9.6602058e-08 -0.94747102 0.31501085 -0.1456311 -0.93784851 0.1171951 -0.11719529
		 -0.9861697 0.1171951 -0.11719529 -0.9861697 0.31501085 -0.1456311 -0.93784851 0.28618309
		 -0.28618318 -0.91443884 0.14563091 -0.3150104 -0.93784863 1.192827e-07 -0.11816631
		 -0.99299383 0.1171951 -0.11719529 -0.9861697 0.14563091 -0.3150104 -0.93784863 -5.7961227e-08
		 -0.31984118 -0.94747114 -0.11719528 -0.11719523 -0.98616958 1.192827e-07 -0.11816631
		 -0.99299383 -5.7961227e-08 -0.31984118 -0.94747114 -0.14563109 -0.31501088 -0.93784839
		 -0.31501037 -0.14563107 -0.93784863 -0.11719528 -0.11719523 -0.98616958 -0.14563109
		 -0.31501088 -0.93784839 -0.28618297 -0.28618342 -0.91443884 -0.31984127 8.3319271e-08
		 -0.9474712 -0.11816627 -3.3399161e-08 -0.99299383 -0.11719528 -0.11719523 -0.98616958
		 -0.31501037 -0.14563107 -0.93784863 -0.3150107 0.14563115 -0.93784851 -0.1171951
		 0.11719532 -0.98616958 -0.11816627 -3.3399161e-08 -0.99299383 -0.31984127 8.3319271e-08
		 -0.9474712 0.27519295 0.27519345 0.92116094 0 0.28728083 0.95784634 1.2209613e-08
		 1.8802803e-07 1 0.28728062 2.7019757e-08 0.95784652 0 0.28728083 0.95784634 -0.27519339
		 0.27519333 0.92116082 -0.28728095 1.6703122e-07 0.95784634 1.2209613e-08 1.8802803e-07
		 1 0.28728062 2.7019757e-08 0.95784652 1.2209613e-08 1.8802803e-07 1 -4.9126836e-09
		 -0.28728083 0.9578464 0.27519333 -0.2751933 0.92116082 1.2209613e-08 1.8802803e-07
		 1 -0.28728095 1.6703122e-07 0.95784634 -0.27519351 -0.27519339 0.92116076 -4.9126836e-09
		 -0.28728083 0.9578464 0.51407939 0.51407969 0.68661809 0.27538946 0.58858311 0.76008588
		 0.27519295 0.27519345 0.92116094 0.58858299 0.27538985 0.76008576 0.27538946 0.58858311
		 0.76008588 7.5029213e-08 0.61520344 0.7883684 0 0.28728083 0.95784634 0.27519295
		 0.27519345 0.92116094 7.5029213e-08 0.61520344 0.7883684 -0.27538985 0.58858311 0.76008576
		 -0.27519339 0.27519333 0.92116082 0 0.28728083 0.95784634 -0.27538985 0.58858311
		 0.76008576 -0.51407999 0.51407963 0.68661767 -0.58858305 0.27538994 0.7600857 -0.27519339
		 0.27519333 0.92116082 -0.27519339 0.27519333 0.92116082 -0.58858305 0.27538994 0.7600857
		 -0.61520314 6.5025318e-08 0.78836864 -0.28728095 1.6703122e-07 0.95784634 -0.28728095
		 1.6703122e-07 0.95784634 -0.61520314 6.5025318e-08 0.78836864 -0.58858281 -0.27539015
		 0.76008582 -0.27519351 -0.27519339 0.92116076 -0.27519351 -0.27519339 0.92116076
		 -0.58858281 -0.27539015 0.76008582 -0.51407957 -0.51407987 0.68661779 -0.27539 -0.58858305
		 0.76008576;
	setAttr ".n[4980:5145]" -type "float3"  -4.9126836e-09 -0.28728083 0.9578464
		 -0.27519351 -0.27519339 0.92116076 -0.27539 -0.58858305 0.76008576 -8.7534076e-08
		 -0.61520356 0.78836828 0.27519333 -0.2751933 0.92116082 -4.9126836e-09 -0.28728083
		 0.9578464 -8.7534076e-08 -0.61520356 0.78836828 0.27538964 -0.58858317 0.76008582
		 0.58858299 -0.27538982 0.76008588 0.27519333 -0.2751933 0.92116082 0.27538964 -0.58858317
		 0.76008582 0.51407939 -0.51407969 0.68661821 0.61520356 -9.2536034e-08 0.78836828
		 0.28728062 2.7019757e-08 0.95784652 0.27519333 -0.2751933 0.92116082 0.58858299 -0.27538982
		 0.76008588 0.58858299 0.27538985 0.76008576 0.27519295 0.27519345 0.92116094 0.28728062
		 2.7019757e-08 0.95784652 0.61520356 -9.2536034e-08 0.78836828 0.23938589 -0.62687123
		 -0.74143565 0.32943898 -0.86467761 -0.37921309 5.0342251e-08 -0.92560166 -0.37849903
		 -8.4188251e-08 -0.65919316 -0.75197357 0.32943898 -0.86467761 -0.37921309 0.35425323
		 -0.93106478 -0.087310225 3.4132388e-08 -0.99633139 -0.085578591 5.0342251e-08 -0.92560166
		 -0.37849903 -8.4188251e-08 -0.65919316 -0.75197357 5.0342251e-08 -0.92560166 -0.37849903
		 -0.32943913 -0.86467731 -0.3792136 -0.23938595 -0.62687111 -0.74143577 5.0342251e-08
		 -0.92560166 -0.37849903 3.4132388e-08 -0.99633139 -0.085578591 -0.35425323 -0.93106478
		 -0.087310113 -0.32943913 -0.86467731 -0.3792136 0.28618309 -0.28618318 -0.91443884
		 0.48393285 -0.48393264 -0.72912151 0.23938589 -0.62687123 -0.74143565 0.14563091
		 -0.3150104 -0.93784863 0.48393285 -0.48393264 -0.72912151 0.65393901 -0.65393919
		 -0.38043046 0.32943898 -0.86467761 -0.37921309 0.23938589 -0.62687123 -0.74143565
		 0.65393901 -0.65393919 -0.38043046 0.70428354 -0.70428389 -0.089267999 0.35425323
		 -0.93106478 -0.087310225 0.32943898 -0.86467761 -0.37921309 0.70428354 -0.70428389
		 -0.089267999 0.70690137 -0.70690149 0.024098508 0.35479769 -0.93464136 0.02375121
		 0.35425323 -0.93106478 -0.087310225 0.35425323 -0.93106478 -0.087310225 0.35479769
		 -0.93464136 0.02375121 5.3073197e-08 -0.99972409 0.023489295 3.4132388e-08 -0.99633139
		 -0.085578591 3.4132388e-08 -0.99633139 -0.085578591 5.3073197e-08 -0.99972409 0.023489295
		 -0.35479784 -0.9346413 0.023751322 -0.35425323 -0.93106478 -0.087310113 -0.35425323
		 -0.93106478 -0.087310113 -0.35479784 -0.9346413 0.023751322 -0.70690149 -0.70690137
		 0.024098484 -0.70428377 -0.70428377 -0.08926779 -0.32943913 -0.86467731 -0.3792136
		 -0.35425323 -0.93106478 -0.087310113 -0.70428377 -0.70428377 -0.08926779 -0.65393913
		 -0.65393895 -0.38043049 -0.23938595 -0.62687111 -0.74143577 -0.32943913 -0.86467731
		 -0.3792136 -0.65393913 -0.65393895 -0.38043049 -0.48393255 -0.48393285 -0.72912163
		 -0.14563109 -0.31501088 -0.93784839 -0.23938595 -0.62687111 -0.74143577 -0.48393255
		 -0.48393285 -0.72912163 -0.28618297 -0.28618342 -0.91443884 -5.7961227e-08 -0.31984118
		 -0.94747114 -8.4188251e-08 -0.65919316 -0.75197357 -0.23938595 -0.62687111 -0.74143577
		 -0.14563109 -0.31501088 -0.93784839 0.14563091 -0.3150104 -0.93784863 0.23938589
		 -0.62687123 -0.74143565 -8.4188251e-08 -0.65919316 -0.75197357 -5.7961227e-08 -0.31984118
		 -0.94747114 0.62687123 0.23938581 -0.74143577 0.86467755 0.32943895 -0.37921333 0.92560166
		 -1.5102678e-08 -0.37849924 0.65919322 -4.7748539e-08 -0.75197351 0.86467755 0.32943895
		 -0.37921333 0.93106478 0.35425326 -0.087310031 0.99633139 1.9504222e-08 -0.085578568
		 0.92560166 -1.5102678e-08 -0.37849924 0.65919322 -4.7748539e-08 -0.75197351 0.92560166
		 -1.5102678e-08 -0.37849924 0.86467743 -0.32943907 -0.37921357 0.62687135 -0.23938587
		 -0.74143565 0.92560166 -1.5102678e-08 -0.37849924 0.99633139 1.9504222e-08 -0.085578568
		 0.93106472 -0.35425335 -0.087310247 0.86467743 -0.32943907 -0.37921357 0.28618309
		 0.28618342 -0.91443872 0.48393267 0.48393279 -0.72912151 0.62687123 0.23938581 -0.74143577
		 0.31501073 0.14563107 -0.93784851 0.48393267 0.48393279 -0.72912151 0.65393919 0.65393901
		 -0.38043037 0.86467755 0.32943895 -0.37921333 0.62687123 0.23938581 -0.74143577 0.65393919
		 0.65393901 -0.38043037 0.70428383 0.70428365 -0.089267947 0.93106478 0.35425326 -0.087310031
		 0.86467755 0.32943895 -0.37921333 0.70428383 0.70428365 -0.089267947 0.70690149 0.70690131
		 0.024098473 0.93464136 0.35479763 0.023751339 0.93106478 0.35425326 -0.087310031
		 0.93106478 0.35425326 -0.087310031 0.93464136 0.35479763 0.023751339 0.99972409 8.6847059e-08
		 0.023489429 0.99633139 1.9504222e-08 -0.085578568 0.99633139 1.9504222e-08 -0.085578568
		 0.99972409 8.6847059e-08 0.023489429 0.93464136 -0.35479763 0.023751466 0.93106472
		 -0.35425335 -0.087310247 0.93106472 -0.35425335 -0.087310247 0.93464136 -0.35479763
		 0.023751466 0.70690137 -0.70690149 0.024098508 0.70428354 -0.70428389 -0.089267999
		 0.86467743 -0.32943907 -0.37921357 0.93106472 -0.35425335 -0.087310247 0.70428354
		 -0.70428389 -0.089267999 0.65393901 -0.65393919 -0.38043046 0.62687135 -0.23938587
		 -0.74143565 0.86467743 -0.32943907 -0.37921357 0.65393901 -0.65393919 -0.38043046
		 0.48393285 -0.48393264 -0.72912151 0.31501085 -0.1456311 -0.93784851 0.62687135 -0.23938587
		 -0.74143565 0.48393285 -0.48393264 -0.72912151 0.28618309 -0.28618318 -0.91443884
		 0.31984159 -9.6602058e-08 -0.94747102 0.65919322 -4.7748539e-08 -0.75197351 0.62687135
		 -0.23938587 -0.74143565 0.31501085 -0.1456311 -0.93784851 0.31501073 0.14563107 -0.93784851
		 0.62687123 0.23938581 -0.74143577 0.65919322 -4.7748539e-08 -0.75197351 0.31984159
		 -9.6602058e-08 -0.94747102 -0.23938589 0.62687111 -0.74143577 -0.32943901 0.86467749
		 -0.3792133 -5.0342251e-08 0.92560172 -0.37849903 2.2617737e-08 0.65919322 -0.75197363
		 -0.32943901 0.86467749 -0.3792133 -0.35425329 0.93106478 -0.087310098 -6.8264782e-08
		 0.99633139 -0.085578501 -5.0342251e-08 0.92560172 -0.37849903 2.2617737e-08 0.65919322
		 -0.75197363 -5.0342251e-08 0.92560172 -0.37849903 0.32943907 0.86467749 -0.37921339
		 0.23938577 0.62687129 -0.74143577 -5.0342251e-08 0.92560172 -0.37849903 -6.8264782e-08
		 0.99633139 -0.085578501 0.3542532 0.93106478 -0.087310255 0.32943907 0.86467749 -0.37921339
		 -0.2861833 0.28618315 -0.91443884 -0.48393282 0.48393252 -0.72912157;
	setAttr ".n[5146:5255]" -type "float3"  -0.23938589 0.62687111 -0.74143577 -0.14563109
		 0.31501064 -0.93784857 -0.48393282 0.48393252 -0.72912157 -0.65393889 0.65393919
		 -0.38043061 -0.32943901 0.86467749 -0.3792133 -0.23938589 0.62687111 -0.74143577
		 -0.65393889 0.65393919 -0.38043061 -0.70428365 0.70428383 -0.089268021 -0.35425329
		 0.93106478 -0.087310098 -0.32943901 0.86467749 -0.3792133 -0.70428365 0.70428383
		 -0.089268021 -0.70690149 0.70690137 0.024098601 -0.35479763 0.93464136 0.023751521
		 -0.35425329 0.93106478 -0.087310098 -0.35425329 0.93106478 -0.087310098 -0.35479763
		 0.93464136 0.023751521 -4.824836e-08 0.99972409 0.02348939 -6.8264782e-08 0.99633139
		 -0.085578501 -6.8264782e-08 0.99633139 -0.085578501 -4.824836e-08 0.99972409 0.02348939
		 0.35479769 0.93464142 0.023751199 0.3542532 0.93106478 -0.087310255 0.3542532 0.93106478
		 -0.087310255 0.35479769 0.93464142 0.023751199 0.70690149 0.70690131 0.024098473
		 0.70428383 0.70428365 -0.089267947 0.32943907 0.86467749 -0.37921339 0.3542532 0.93106478
		 -0.087310255 0.70428383 0.70428365 -0.089267947 0.65393919 0.65393901 -0.38043037
		 0.23938577 0.62687129 -0.74143577 0.32943907 0.86467749 -0.37921339 0.65393919 0.65393901
		 -0.38043037 0.48393267 0.48393279 -0.72912151 0.14563088 0.31501091 -0.93784851 0.23938577
		 0.62687129 -0.74143577 0.48393267 0.48393279 -0.72912151 0.28618309 0.28618342 -0.91443872
		 -6.5206386e-08 0.31984141 -0.94747114 2.2617737e-08 0.65919322 -0.75197363 0.23938577
		 0.62687129 -0.74143577 0.14563088 0.31501091 -0.93784851 -0.14563109 0.31501064 -0.93784857
		 -0.23938589 0.62687111 -0.74143577 2.2617737e-08 0.65919322 -0.75197363 -6.5206386e-08
		 0.31984141 -0.94747114 -0.62687129 -0.23938583 -0.74143565 -0.86467767 -0.32943901
		 -0.37921301 -0.92560166 1.3592404e-07 -0.37849888 -0.65919346 1.8973773e-07 -0.75197345
		 -0.86467767 -0.32943901 -0.37921301 -0.93106472 -0.35425329 -0.087310076 -0.99633139
		 8.776901e-08 -0.085578687 -0.92560166 1.3592404e-07 -0.37849888 -0.65919346 1.8973773e-07
		 -0.75197345 -0.92560166 1.3592404e-07 -0.37849888 -0.86467725 0.32943913 -0.37921366
		 -0.62687129 0.23938595 -0.74143559 -0.92560166 1.3592404e-07 -0.37849888 -0.99633139
		 8.776901e-08 -0.085578687 -0.93106467 0.35425341 -0.087310396 -0.86467725 0.32943913
		 -0.37921366 -0.28618297 -0.28618342 -0.91443884 -0.48393255 -0.48393285 -0.72912163
		 -0.62687129 -0.23938583 -0.74143565 -0.31501037 -0.14563107 -0.93784863 -0.48393255
		 -0.48393285 -0.72912163 -0.65393913 -0.65393895 -0.38043049 -0.86467767 -0.32943901
		 -0.37921301 -0.62687129 -0.23938583 -0.74143565 -0.65393913 -0.65393895 -0.38043049
		 -0.70428377 -0.70428377 -0.08926779 -0.93106472 -0.35425329 -0.087310076 -0.86467767
		 -0.32943901 -0.37921301 -0.70428377 -0.70428377 -0.08926779 -0.70690149 -0.70690137
		 0.024098484 -0.93464142 -0.35479769 0.023751322 -0.93106472 -0.35425329 -0.087310076
		 -0.93106472 -0.35425329 -0.087310076 -0.93464142 -0.35479769 0.023751322 -0.99972409
		 1.1579606e-07 0.023489444 -0.99633139 8.776901e-08 -0.085578687 -0.99633139 8.776901e-08
		 -0.085578687 -0.99972409 1.1579606e-07 0.023489444 -0.93464136 0.35479769 0.023751486
		 -0.93106467 0.35425341 -0.087310396 -0.93106467 0.35425341 -0.087310396 -0.93464136
		 0.35479769 0.023751486 -0.70690149 0.70690137 0.024098601 -0.70428365 0.70428383
		 -0.089268021 -0.86467725 0.32943913 -0.37921366 -0.93106467 0.35425341 -0.087310396
		 -0.70428365 0.70428383 -0.089268021 -0.65393889 0.65393919 -0.38043061 -0.62687129
		 0.23938595 -0.74143559 -0.86467725 0.32943913 -0.37921366 -0.65393889 0.65393919
		 -0.38043061 -0.48393282 0.48393252 -0.72912157 -0.3150107 0.14563115 -0.93784851
		 -0.62687129 0.23938595 -0.74143559 -0.48393282 0.48393252 -0.72912157 -0.2861833
		 0.28618315 -0.91443884 -0.31984127 8.3319271e-08 -0.9474712 -0.65919346 1.8973773e-07
		 -0.75197345 -0.62687129 0.23938595 -0.74143559 -0.3150107 0.14563115 -0.93784851
		 -0.31501037 -0.14563107 -0.93784863 -0.62687129 -0.23938583 -0.74143565 -0.65919346
		 1.8973773e-07 -0.75197345 -0.31984127 8.3319271e-08 -0.9474712;
	setAttr -s 1316 -ch 5256 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1340 1383 1384 1335
		f 4 4 5 6 -2
		mu 0 4 1383 1422 1425 1384
		f 4 -3 7 8 9
		mu 0 4 1335 1384 1385 1336
		f 4 -7 10 11 -8
		mu 0 4 1384 1425 1426 1385
		f 4 12 13 14 15
		mu 0 4 1320 1350 1340 1304
		f 4 16 17 -1 -14
		mu 0 4 1350 1382 1383 1340
		f 4 18 19 -5 -18
		mu 0 4 1382 1417 1422 1383
		f 4 20 21 22 -20
		mu 0 4 1417 1445 1454 1422
		f 4 -23 23 24 -6
		mu 0 4 1422 1454 1464 1425
		f 4 -25 25 26 -11
		mu 0 4 1425 1464 1461 1426
		f 4 -27 27 28 29
		mu 0 4 1426 1461 1453 1427
		f 4 -12 -30 30 31
		mu 0 4 1385 1426 1427 1386
		f 4 -9 -32 32 33
		mu 0 4 1336 1385 1386 1334
		f 4 34 -34 35 36
		mu 0 4 1301 1336 1334 1307
		f 4 37 -10 -35 38
		mu 0 4 1298 1335 1336 1301
		f 4 -15 -4 -38 39
		mu 0 4 1304 1340 1335 1298
		f 4 40 41 42 43
		mu 0 4 1069 995 993 1068
		f 4 44 45 46 -42
		mu 0 4 995 923 916 993
		f 4 -43 47 48 49
		mu 0 4 1068 993 994 1067
		f 4 -47 50 51 -48
		mu 0 4 993 916 918 994
		f 4 -36 52 53 54
		mu 0 4 1144 1082 1069 1143
		f 4 -33 55 -41 -53
		mu 0 4 1082 1013 995 1069
		f 4 -31 56 -45 -56
		mu 0 4 1013 924 923 995
		f 4 -29 57 58 -57
		mu 0 4 924 888 885 923
		f 4 -59 59 60 -46
		mu 0 4 923 885 883 916
		f 4 -61 61 62 -51
		mu 0 4 916 883 884 918
		f 4 -63 63 64 65
		mu 0 4 918 884 887 917
		f 4 -52 -66 66 67
		mu 0 4 994 918 917 1002
		f 4 -49 -68 68 69
		mu 0 4 1067 994 1002 1079
		f 4 70 -70 71 72
		mu 0 4 1130 1067 1079 1131
		f 4 73 -50 -71 74
		mu 0 4 1138 1068 1067 1130
		f 4 -54 -44 -74 75
		mu 0 4 1143 1069 1068 1138
		f 4 76 77 78 79
		mu 0 4 1332 1375 1376 1333
		f 4 80 81 82 -78
		mu 0 4 1375 1421 1423 1376
		f 4 -79 83 84 85
		mu 0 4 1333 1376 1377 1337
		f 4 -83 86 87 -84
		mu 0 4 1376 1423 1420 1377
		f 4 -72 88 89 90
		mu 0 4 1302 1329 1332 1297
		f 4 -69 91 -77 -89
		mu 0 4 1329 1374 1375 1332
		f 4 -67 92 -81 -92
		mu 0 4 1374 1424 1421 1375
		f 4 -65 93 94 -93
		mu 0 4 1424 1449 1457 1421
		f 4 -95 95 96 -82
		mu 0 4 1421 1457 1460 1423
		f 4 -97 97 98 -87
		mu 0 4 1423 1460 1452 1420
		f 4 -99 99 100 101
		mu 0 4 1420 1452 1444 1413
		f 4 -88 -102 102 103
		mu 0 4 1377 1420 1413 1378
		f 4 -85 -104 104 105
		mu 0 4 1337 1377 1378 1343
		f 4 106 -106 107 108
		mu 0 4 1303 1337 1343 1319
		f 4 109 -86 -107 110
		mu 0 4 1296 1333 1337 1303
		f 4 -90 -80 -110 111
		mu 0 4 1297 1332 1333 1296
		f 4 112 113 114 115
		mu 0 4 1345 1379 1380 1344
		f 4 116 117 118 -114
		mu 0 4 1379 1414 1416 1380
		f 4 -115 119 120 121
		mu 0 4 1344 1380 1381 1351
		f 4 -119 122 123 -120
		mu 0 4 1380 1416 1415 1381
		f 4 -108 124 125 126
		mu 0 4 1319 1343 1345 1317
		f 4 -105 127 -113 -125
		mu 0 4 1343 1378 1379 1345
		f 4 -103 128 -117 -128
		mu 0 4 1378 1413 1414 1379
		f 4 -101 129 130 -129
		mu 0 4 1413 1444 1446 1414
		f 4 -131 131 132 -118
		mu 0 4 1414 1446 1448 1416
		f 4 -133 133 134 -123
		mu 0 4 1416 1448 1447 1415
		f 4 -135 135 -21 136
		mu 0 4 1415 1447 1445 1417
		f 4 -124 -137 -19 137
		mu 0 4 1381 1415 1417 1382
		f 4 -121 -138 -17 138
		mu 0 4 1351 1381 1382 1350
		f 4 139 -139 -13 140
		mu 0 4 1318 1351 1350 1320
		f 4 141 -122 -140 142
		mu 0 4 1316 1344 1351 1318
		f 4 -126 -116 -142 143
		mu 0 4 1317 1345 1344 1316
		f 4 144 145 146 147
		mu 0 4 1211 1208 1243 1244
		f 4 148 149 150 -146
		mu 0 4 1208 1205 1241 1243
		f 4 -147 151 152 153
		mu 0 4 1244 1243 1273 1275
		f 4 -151 154 155 -152
		mu 0 4 1243 1241 1274 1273
		f 4 -55 156 157 -37
		mu 0 4 1144 1143 1211 1203
		f 4 -76 158 -145 -157
		mu 0 4 1143 1138 1208 1211
		f 4 -75 159 -149 -159
		mu 0 4 1138 1130 1205 1208
		f 4 -73 -91 160 -160
		mu 0 4 1130 1131 1202 1205
		f 4 -161 -112 161 -150
		mu 0 4 1205 1202 1242 1241
		f 4 -162 -111 162 -155
		mu 0 4 1241 1242 1286 1274
		f 4 -163 -109 -127 163
		mu 0 4 1274 1286 1319 1317
		f 4 -156 -164 -144 164
		mu 0 4 1273 1274 1317 1316
		f 4 -153 -165 -143 165
		mu 0 4 1275 1273 1316 1318
		f 4 166 -166 -141 -16
		mu 0 4 1287 1275 1318 1320
		f 4 167 -154 -167 -40
		mu 0 4 1245 1244 1275 1287
		f 4 -158 -148 -168 -39
		mu 0 4 1203 1211 1244 1245
		f 4 168 169 170 171
		mu 0 4 1577 1591 1525 1523
		f 4 172 173 174 -170
		mu 0 4 1591 1589 1524 1525
		f 4 -171 175 176 177
		mu 0 4 1523 1525 1485 1483
		f 4 -175 178 179 -176
		mu 0 4 1525 1524 1484 1485
		f 4 -64 180 181 -94
		mu 0 4 1631 1642 1577 1576
		f 4 -62 182 -169 -181
		mu 0 4 1642 1644 1591 1577
		f 4 -60 183 -173 -183
		mu 0 4 1644 1643 1589 1591
		f 4 -58 -28 184 -184
		mu 0 4 1643 1634 1590 1589
		f 4 -185 -26 185 -174
		mu 0 4 1589 1590 1522 1524
		f 4 -186 -24 186 -179
		mu 0 4 1524 1522 1480 1484
		f 4 -187 -22 -136 187
		mu 0 4 1484 1480 1445 1447
		f 4 -180 -188 -134 188
		mu 0 4 1485 1484 1447 1448
		f 4 -177 -189 -132 189
		mu 0 4 1483 1485 1448 1446
		f 4 190 -190 -130 -100
		mu 0 4 1477 1483 1446 1444
		f 4 191 -178 -191 -98
		mu 0 4 1521 1523 1483 1477
		f 4 -182 -172 -192 -96
		mu 0 4 1576 1577 1523 1521
		f 4 192 193 194 195
		mu 0 4 1629 1630 1641 1640
		f 4 196 197 198 -194
		mu 0 4 1630 1628 1639 1641
		f 4 -195 199 200 201
		mu 0 4 1640 1641 1651 1650
		f 4 -199 202 203 -200
		mu 0 4 1641 1639 1649 1651
		f 4 204 205 206 207
		mu 0 4 1614 1616 1629 1627
		f 4 208 209 -193 -206
		mu 0 4 1616 1617 1630 1629
		f 4 210 211 -197 -210
		mu 0 4 1617 1615 1628 1630
		f 4 212 213 214 -212
		mu 0 4 1615 1613 1626 1628
		f 4 -215 215 216 -198
		mu 0 4 1628 1626 1637 1639
		f 4 -217 217 218 -203
		mu 0 4 1639 1637 1647 1649
		f 4 219 -202 220 221
		mu 0 4 1638 1640 1650 1648
		f 4 -207 -196 -220 222
		mu 0 4 1627 1629 1640 1638
		f 4 223 224 225 226
		mu 0 4 1508 1506 1526 1527
		f 4 227 228 229 -225
		mu 0 4 1506 1507 1528 1526
		f 4 -226 230 231 232
		mu 0 4 1527 1526 1537 1539
		f 4 -230 233 234 -231
		mu 0 4 1526 1528 1538 1537
		f 4 235 236 237 -229
		mu 0 4 1507 1509 1529 1528
		f 4 -238 238 239 -234
		mu 0 4 1528 1529 1540 1538
		f 4 -240 240 241 242
		mu 0 4 1538 1540 1559 1557
		f 4 -235 -243 243 244
		mu 0 4 1537 1538 1557 1556
		f 4 -232 -245 245 246
		mu 0 4 1539 1537 1556 1558
		f 4 247 -247 248 249
		mu 0 4 1541 1539 1558 1560
		f 4 250 -233 -248 251
		mu 0 4 1530 1527 1539 1541
		f 4 252 -227 -251 253
		mu 0 4 1510 1508 1527 1530
		f 4 254 255 256 257
		mu 0 4 1573 1569 1582 1584
		f 4 258 259 260 -256
		mu 0 4 1569 1572 1583 1582
		f 4 -257 261 262 263
		mu 0 4 1584 1582 1604 1600
		f 4 -261 264 265 -262
		mu 0 4 1582 1583 1601 1604
		f 4 -249 266 267 268
		mu 0 4 1560 1558 1573 1571
		f 4 -246 269 -255 -267
		mu 0 4 1558 1556 1569 1573
		f 4 -244 270 -259 -270
		mu 0 4 1556 1557 1572 1569
		f 4 -242 271 272 -271
		mu 0 4 1557 1559 1570 1572
		f 4 -273 273 274 -260
		mu 0 4 1572 1570 1580 1583
		f 4 -275 275 276 -265
		mu 0 4 1583 1580 1602 1601
		f 4 -277 277 -213 278
		mu 0 4 1601 1602 1613 1615
		f 4 -266 -279 -211 279
		mu 0 4 1604 1601 1615 1617
		f 4 -263 -280 -209 280
		mu 0 4 1600 1604 1617 1616
		f 4 281 -281 -205 282
		mu 0 4 1603 1600 1616 1614
		f 4 283 -264 -282 284
		mu 0 4 1587 1584 1600 1603
		f 4 -268 -258 -284 285
		mu 0 4 1571 1573 1584 1587
		f 4 286 287 288 289
		mu 0 4 1612 1588 1585 1610
		f 4 290 291 292 -288
		mu 0 4 1588 1564 1566 1585
		f 4 -289 293 294 295
		mu 0 4 1610 1585 1586 1606
		f 4 -293 296 297 -294
		mu 0 4 1585 1566 1568 1586
		f 4 298 -254 299 -292
		mu 0 4 1564 1543 1545 1566
		f 4 -300 -252 300 -297
		mu 0 4 1566 1545 1551 1568
		f 4 -301 -250 -269 301
		mu 0 4 1568 1551 1560 1571
		f 4 -298 -302 -286 302
		mu 0 4 1586 1568 1571 1587
		f 4 -295 -303 -285 303
		mu 0 4 1606 1586 1587 1603
		f 4 304 -304 -283 -208
		mu 0 4 1621 1606 1603 1614
		f 4 305 -296 -305 -223
		mu 0 4 1623 1610 1606 1621
		f 4 306 -290 -306 -222
		mu 0 4 1625 1612 1610 1623
		f 4 307 308 309 310
		mu 0 4 1563 1578 1579 1565
		f 4 311 312 313 -309
		mu 0 4 1578 1611 1609 1579
		f 4 -310 314 315 316
		mu 0 4 1565 1579 1581 1567
		f 4 -314 317 318 -315
		mu 0 4 1579 1609 1605 1581
		f 4 319 -218 320 -313
		mu 0 4 1611 1624 1622 1609
		f 4 -321 -216 321 -318
		mu 0 4 1609 1622 1620 1605
		f 4 -322 -214 -278 322
		mu 0 4 1605 1620 1613 1602
		f 4 -319 -323 -276 323
		mu 0 4 1581 1605 1602 1580
		f 4 -316 -324 -274 324
		mu 0 4 1567 1581 1580 1570
		f 4 325 -325 -272 -241
		mu 0 4 1550 1567 1570 1559
		f 4 326 -317 -326 -239
		mu 0 4 1544 1565 1567 1550
		f 4 327 -311 -327 -237
		mu 0 4 1542 1563 1565 1544
		f 4 328 329 330 331
		mu 0 4 58 41 43 63
		f 4 332 333 334 335
		mu 0 4 54 29 35 56
		f 4 336 337 -333 338
		mu 0 4 52 23 29 54
		f 4 339 340 -337 341
		mu 0 4 53 28 23 52
		f 4 342 343 -340 344
		mu 0 4 55 34 28 53
		f 4 345 346 -343 347
		mu 0 4 57 40 34 55
		f 4 348 349 -346 350
		mu 0 4 62 42 40 57
		f 4 351 352 -349 353
		mu 0 4 71 46 42 62
		f 4 354 -352 355 356
		mu 0 4 51 46 71 91
		f 4 -335 357 -329 358
		mu 0 4 56 35 41 58
		f 4 359 360 361 362
		mu 0 4 50 47 45 48
		f 4 -362 363 364 365
		mu 0 4 48 45 31 37
		f 4 -365 366 367 368
		mu 0 4 37 31 13 17
		f 4 369 370 371 -361
		mu 0 4 47 43 39 45
		f 4 -372 372 373 -364
		mu 0 4 45 39 25 31
		f 4 -374 374 375 -367
		mu 0 4 31 25 9 13
		f 4 -330 376 377 -371
		mu 0 4 43 41 33 39
		f 4 -378 378 379 -373
		mu 0 4 39 33 20 25
		f 4 -380 380 381 -375
		mu 0 4 25 20 6 9
		f 4 -358 382 383 -377
		mu 0 4 41 35 27 33
		f 4 -384 384 385 -379
		mu 0 4 33 27 15 20
		f 4 -386 386 387 -381
		mu 0 4 20 15 4 6
		f 4 -334 388 389 -383
		mu 0 4 35 29 22 27
		f 4 -390 390 391 -385
		mu 0 4 27 22 11 15
		f 4 -392 392 393 -387
		mu 0 4 15 11 2 4
		f 4 -338 394 395 -389
		mu 0 4 29 23 18 22
		f 4 -396 396 397 -391
		mu 0 4 22 18 7 11
		f 4 -398 398 399 -393
		mu 0 4 11 7 0 2
		f 4 -341 400 401 -395
		mu 0 4 23 28 21 18
		f 4 -402 402 403 -397
		mu 0 4 18 21 10 7
		f 4 -404 404 405 -399
		mu 0 4 7 10 1 0
		f 4 -344 406 407 -401
		mu 0 4 28 34 26 21
		f 4 -408 408 409 -403
		mu 0 4 21 26 14 10
		f 4 -410 410 411 -405
		mu 0 4 10 14 3 1
		f 4 -347 412 413 -407
		mu 0 4 34 40 32 26
		f 4 -414 414 415 -409
		mu 0 4 26 32 19 14
		f 4 -416 416 417 -411
		mu 0 4 14 19 5 3
		f 4 -350 418 419 -413
		mu 0 4 40 42 38 32
		f 4 -420 420 421 -415
		mu 0 4 32 38 24 19
		f 4 -422 422 423 -417
		mu 0 4 19 24 8 5
		f 4 -353 424 425 -419
		mu 0 4 42 46 44 38
		f 4 -426 426 427 -421
		mu 0 4 38 44 30 24
		f 4 -428 428 429 -423
		mu 0 4 24 30 12 8
		f 4 -355 -363 430 -425
		mu 0 4 46 51 49 44
		f 4 -431 -366 431 -427
		mu 0 4 44 49 36 30
		f 4 -432 -369 432 -429
		mu 0 4 30 36 16 12
		f 4 433 434 435 436
		mu 0 4 72 90 103 85
		f 4 -436 437 438 439
		mu 0 4 85 103 109 98
		f 4 -439 440 441 442
		mu 0 4 98 109 113 106
		f 4 -442 443 444 445
		mu 0 4 106 113 132 112
		f 4 446 -437 447 448
		mu 0 4 63 72 85 74
		f 4 -448 -440 449 450
		mu 0 4 74 85 98 83
		f 4 -450 -443 451 452
		mu 0 4 83 98 106 94
		f 4 -452 -446 453 454
		mu 0 4 94 106 112 108
		f 4 -332 -449 455 456
		mu 0 4 58 63 74 66
		f 4 -456 -451 457 458
		mu 0 4 66 74 83 78
		f 4 -458 -453 459 460
		mu 0 4 78 83 94 89
		f 4 -460 -455 461 462
		mu 0 4 89 94 108 102
		f 4 -359 -457 463 464
		mu 0 4 56 58 66 65
		f 4 -464 -459 465 466
		mu 0 4 65 66 78 76
		f 4 -466 -461 467 468
		mu 0 4 76 78 89 87
		f 4 -468 -463 469 470
		mu 0 4 87 89 102 100
		f 4 -336 -465 471 472
		mu 0 4 54 56 65 61
		f 4 -472 -467 473 474
		mu 0 4 61 65 76 70
		f 4 -474 -469 475 476
		mu 0 4 70 76 87 81
		f 4 -476 -471 477 478
		mu 0 4 81 87 100 96
		f 4 -339 -473 479 480
		mu 0 4 52 54 61 59
		f 4 -480 -475 481 482
		mu 0 4 59 61 70 68
		f 4 -482 -477 483 484
		mu 0 4 68 70 81 79
		f 4 -484 -479 485 486
		mu 0 4 79 81 96 92
		f 4 -342 -481 487 488
		mu 0 4 53 52 59 60
		f 4 -488 -483 489 490
		mu 0 4 60 59 68 69
		f 4 -490 -485 491 492
		mu 0 4 69 68 79 80
		f 4 -492 -487 493 494
		mu 0 4 80 79 92 95
		f 4 -345 -489 495 496
		mu 0 4 55 53 60 64
		f 4 -496 -491 497 498
		mu 0 4 64 60 69 75
		f 4 -498 -493 499 500
		mu 0 4 75 69 80 86
		f 4 -500 -495 501 502
		mu 0 4 86 80 95 99
		f 4 -348 -497 503 504
		mu 0 4 57 55 64 67
		f 4 -504 -499 505 506
		mu 0 4 67 64 75 77
		f 4 -506 -501 507 508
		mu 0 4 77 75 86 88
		f 4 -508 -503 509 510
		mu 0 4 88 86 99 101
		f 4 -351 -505 511 512
		mu 0 4 62 57 67 73
		f 4 -512 -507 513 514
		mu 0 4 73 67 77 82
		f 4 -514 -509 515 516
		mu 0 4 82 77 88 93
		f 4 -516 -511 517 518
		mu 0 4 93 88 101 107
		f 4 -354 -513 519 520
		mu 0 4 71 62 73 84
		f 4 -520 -515 521 522
		mu 0 4 84 73 82 97
		f 4 -522 -517 523 524
		mu 0 4 97 82 93 105
		f 4 -524 -519 525 526
		mu 0 4 105 93 107 111
		f 4 -356 -521 527 -435
		mu 0 4 91 71 84 104
		f 4 -528 -523 528 -438
		mu 0 4 104 84 97 110
		f 4 -529 -525 529 -441
		mu 0 4 110 97 105 114
		f 4 -530 -527 530 -444
		mu 0 4 114 105 111 131
		f 4 -331 -370 531 -447
		mu 0 4 63 43 47 72
		f 4 -532 -360 -357 -434
		mu 0 4 72 47 50 90
		f 4 532 533 534 535
		mu 0 4 548 641 642 547
		f 4 -535 536 537 538
		mu 0 4 547 642 640 550
		f 4 -538 539 540 541
		mu 0 4 550 640 639 549
		f 4 542 543 544 545
		mu 0 4 531 624 628 535
		f 4 546 547 548 549
		mu 0 4 524 617 613 516
		f 4 -549 550 551 552
		mu 0 4 515 614 618 523
		f 4 -552 553 -543 554
		mu 0 4 523 618 624 531
		f 4 -541 555 556 557
		mu 0 4 549 639 637 545
		f 4 558 559 560 561
		mu 0 4 811 865 867 813
		f 4 562 563 564 565
		mu 0 4 749 813 815 751
		f 4 -561 566 567 -564
		mu 0 4 813 867 869 815
		f 4 568 569 570 571
		mu 0 4 803 811 745 738
		f 4 572 -559 -569 573
		mu 0 4 857 865 811 803
		f 4 -568 574 575 576
		mu 0 4 815 869 872 817
		f 4 -565 -577 577 578
		mu 0 4 751 815 817 753
		f 4 579 580 581 582
		mu 0 4 755 819 820 756
		f 4 -545 583 584 585
		mu 0 4 535 628 635 542
		f 4 -585 586 587 588
		mu 0 4 542 635 636 544
		f 4 -588 589 590 591
		mu 0 4 544 636 638 546
		f 4 592 -547 593 594
		mu 0 4 623 617 524 532
		f 4 595 596 597 -581
		mu 0 4 819 874 873 820
		f 4 -582 598 599 600
		mu 0 4 756 820 818 754
		f 4 -598 601 602 -599
		mu 0 4 820 873 871 818
		f 4 603 -580 604 -578
		mu 0 4 817 819 755 753
		f 4 605 -596 -604 -576
		mu 0 4 872 874 819 817
		f 4 -603 606 607 608
		mu 0 4 818 871 870 816
		f 4 -600 -609 609 610
		mu 0 4 754 818 816 752
		f 4 611 612 613 614
		mu 0 4 731 794 789 725
		f 4 615 616 617 -613
		mu 0 4 794 850 845 789
		f 4 -614 618 619 620
		mu 0 4 729 791 796 734
		f 4 -618 621 622 -619
		mu 0 4 791 848 853 796
		f 4 623 -612 624 625
		mu 0 4 800 794 731 736
		f 4 626 -616 -624 627
		mu 0 4 854 850 794 800
		f 4 -623 628 -574 629
		mu 0 4 796 853 857 803
		f 4 -620 -630 -572 630
		mu 0 4 734 796 803 738
		f 4 631 632 633 634
		mu 0 4 750 814 812 748
		f 4 -557 635 636 637
		mu 0 4 545 637 634 543
		f 4 -637 638 639 640
		mu 0 4 543 634 627 536
		f 4 -640 641 -595 642
		mu 0 4 536 627 623 532
		f 4 -570 -562 -563 643
		mu 0 4 745 811 813 749
		f 4 644 645 646 -633
		mu 0 4 814 868 866 812
		f 4 -634 647 648 649
		mu 0 4 748 812 806 742
		f 4 -647 650 651 -648
		mu 0 4 812 866 860 806
		f 4 -610 652 -632 653
		mu 0 4 752 816 814 750
		f 4 -608 654 -645 -653
		mu 0 4 816 870 868 814
		f 4 -652 655 -628 656
		mu 0 4 806 860 854 800
		f 4 -649 -657 -626 657
		mu 0 4 742 806 800 736
		f 4 658 659 660 -636
		mu 0 4 637 700 698 634
		f 4 -661 661 662 -639
		mu 0 4 634 698 691 627
		f 4 663 664 -659 -556
		mu 0 4 639 702 700 637
		f 4 -663 665 666 -642
		mu 0 4 627 691 686 623
		f 4 667 -654 668 -665
		mu 0 4 702 752 750 700
		f 4 -669 -635 669 -660
		mu 0 4 700 750 748 698
		f 4 -670 -650 670 -662
		mu 0 4 698 748 742 691
		f 4 -671 -658 671 -666
		mu 0 4 691 742 736 686
		f 4 672 673 674 -548
		mu 0 4 617 681 677 613
		f 4 -675 675 676 -551
		mu 0 4 614 678 683 618
		f 4 677 -673 -593 -667
		mu 0 4 686 681 617 623
		f 4 -677 678 679 -554
		mu 0 4 618 683 688 624
		f 4 -672 -625 680 -678
		mu 0 4 686 736 731 681
		f 4 -681 -615 681 -674
		mu 0 4 681 731 725 677
		f 4 -682 -621 682 -676
		mu 0 4 678 729 734 683
		f 4 -683 -631 683 -679
		mu 0 4 683 734 738 688
		f 4 684 685 686 -534
		mu 0 4 641 705 706 642
		f 4 -687 687 688 -537
		mu 0 4 642 706 704 640
		f 4 689 -685 690 691
		mu 0 4 703 705 641 638
		f 4 -689 692 -664 -540
		mu 0 4 640 704 702 639
		f 4 693 -605 694 -690
		mu 0 4 703 753 755 705
		f 4 -695 -583 695 -686
		mu 0 4 705 755 756 706
		f 4 -696 -601 696 -688
		mu 0 4 706 756 754 704
		f 4 -697 -611 -668 -693
		mu 0 4 704 754 752 702
		f 4 697 698 699 -584
		mu 0 4 628 694 699 635
		f 4 -700 700 701 -587
		mu 0 4 635 699 701 636
		f 4 702 -698 -544 -680
		mu 0 4 688 694 628 624
		f 4 -702 703 -692 -590
		mu 0 4 636 701 703 638
		f 4 -684 -571 704 -703
		mu 0 4 688 738 745 694
		f 4 -705 -644 705 -699
		mu 0 4 694 745 749 699
		f 4 -706 -566 706 -701
		mu 0 4 699 749 751 701
		f 4 -707 -579 -694 -704
		mu 0 4 701 751 753 703
		f 4 -591 -691 -533 707
		mu 0 4 546 638 641 548
		f 4 708 709 710 711
		mu 0 4 799 772 712 762
		f 4 712 713 714 -710
		mu 0 4 772 727 664 712
		f 4 -711 715 716 717
		mu 0 4 762 712 657 707
		f 4 -715 718 719 -716
		mu 0 4 712 664 644 657
		f 4 720 721 722 723
		mu 0 4 878 840 799 832
		f 4 724 725 -709 -722
		mu 0 4 840 827 772 799
		f 4 726 727 -713 -726
		mu 0 4 827 778 727 772
		f 4 728 729 730 -728
		mu 0 4 778 718 671 727
		f 4 -731 731 732 -714
		mu 0 4 727 671 654 664
		f 4 -733 733 734 -719
		mu 0 4 664 654 601 644
		f 4 -735 735 736 737
		mu 0 4 644 601 576 593
		f 4 -720 -738 738 739
		mu 0 4 657 644 593 599
		f 4 -717 -740 740 741
		mu 0 4 707 657 599 647
		f 4 742 -742 743 744
		mu 0 4 760 707 647 670
		f 4 745 -718 -743 746
		mu 0 4 780 762 707 760
		f 4 -723 -712 -746 747
		mu 0 4 832 799 762 780
		f 4 748 749 750 751
		mu 0 4 457 428 391 431
		f 4 752 753 754 -750
		mu 0 4 428 385 339 391
		f 4 -751 755 756 757
		mu 0 4 431 391 347 393
		f 4 -755 758 759 -756
		mu 0 4 391 339 315 347
		f 4 760 761 762 -737
		mu 0 4 576 492 457 552
		f 4 763 764 -749 -762
		mu 0 4 492 456 428 457
		f 4 765 766 -753 -765
		mu 0 4 456 430 385 428
		f 4 767 768 769 -767
		mu 0 4 430 377 325 385
		f 4 -770 770 771 -754
		mu 0 4 385 325 283 339
		f 4 -772 772 773 -759
		mu 0 4 339 283 245 315
		f 4 -774 774 775 776
		mu 0 4 315 245 229 273
		f 4 -760 -777 777 778
		mu 0 4 347 315 273 312
		f 4 -757 -779 779 780
		mu 0 4 393 347 312 350
		f 4 781 -781 782 -744
		mu 0 4 449 393 350 401
		f 4 783 -758 -782 -741
		mu 0 4 489 431 393 449
		f 4 -763 -752 -784 -739
		mu 0 4 552 457 431 489
		f 4 784 785 786 787
		mu 0 4 649 665 714 659
		f 4 788 789 790 -786
		mu 0 4 665 716 767 714
		f 4 -787 791 792 793
		mu 0 4 659 714 765 710
		f 4 -791 794 795 -792
		mu 0 4 714 767 781 765
		f 4 796 797 798 799
		mu 0 4 579 607 649 595
		f 4 800 801 -785 -798
		mu 0 4 607 655 665 649
		f 4 802 803 -789 -802
		mu 0 4 655 661 716 665
		f 4 804 -729 805 -804
		mu 0 4 661 718 776 716
		f 4 -806 -727 806 -790
		mu 0 4 716 776 825 767
		f 4 -807 -725 807 -795
		mu 0 4 767 825 838 781
		f 4 -808 -721 808 809
		mu 0 4 781 838 876 830
		f 4 -796 -810 810 811
		mu 0 4 765 781 830 784
		f 4 -793 -812 812 813
		mu 0 4 710 765 784 763
		f 4 814 -814 815 816
		mu 0 4 652 710 763 668
		f 4 817 -794 -815 818
		mu 0 4 603 659 710 652
		f 4 -799 -788 -818 819
		mu 0 4 595 649 659 603
		f 4 820 821 822 823
		mu 0 4 462 503 581 509
		f 4 824 825 826 -822
		mu 0 4 503 570 597 581
		f 4 -823 827 828 829
		mu 0 4 509 581 605 592
		f 4 -827 830 831 -828
		mu 0 4 581 597 646 605
		f 4 -768 832 833 834
		mu 0 4 377 430 462 409
		f 4 -766 835 -821 -833
		mu 0 4 430 456 503 462
		f 4 -764 836 -825 -836
		mu 0 4 456 492 570 503
		f 4 -761 -736 837 -837
		mu 0 4 492 576 601 570
		f 4 -838 -734 838 -826
		mu 0 4 570 601 654 597
		f 4 -839 -732 839 -831
		mu 0 4 597 654 671 646
		f 4 -840 -730 -805 840
		mu 0 4 646 671 718 661
		f 4 -832 -841 -803 841
		mu 0 4 605 646 661 655
		f 4 -829 -842 -801 842
		mu 0 4 592 605 655 607
		f 4 843 -843 -797 844
		mu 0 4 506 592 607 579
		f 4 845 -830 -844 846
		mu 0 4 453 509 592 506
		f 4 -834 -824 -846 847
		mu 0 4 409 462 509 453
		f 4 848 849 850 851
		mu 0 4 304 327 388 345
		f 4 852 853 854 -850
		mu 0 4 327 372 423 388
		f 4 -851 855 856 857
		mu 0 4 345 388 445 399
		f 4 -855 858 859 -856
		mu 0 4 388 423 467 445
		f 4 -775 860 861 862
		mu 0 4 228 243 304 263
		f 4 -773 863 -849 -861
		mu 0 4 243 282 327 304
		f 4 -771 864 -853 -864
		mu 0 4 282 323 372 327
		f 4 -769 -835 865 -865
		mu 0 4 323 377 409 372
		f 4 -866 -848 866 -854
		mu 0 4 372 409 453 423
		f 4 -867 -847 867 -859
		mu 0 4 423 453 506 467
		f 4 -868 -845 -800 868
		mu 0 4 467 506 579 559
		f 4 -860 -869 -820 869
		mu 0 4 445 467 559 497
		f 4 -857 -870 -819 870
		mu 0 4 399 445 497 451
		f 4 871 -871 -817 872
		mu 0 4 365 399 451 411
		f 4 873 -858 -872 874
		mu 0 4 309 345 399 365
		f 4 -862 -852 -874 875
		mu 0 4 263 304 345 309
		f 4 876 -811 877 -602
		mu 0 4 823 784 830 835
		f 4 878 -813 -877 -597
		mu 0 4 773 763 784 823
		f 4 879 -816 -879 -606
		mu 0 4 757 668 763 773
		f 4 880 -873 -880 -575
		mu 0 4 334 365 411 369
		f 4 881 -875 -881 -567
		mu 0 4 297 309 365 334
		f 4 882 -876 -882 -560
		mu 0 4 257 263 309 297
		f 4 883 -863 -883 -573
		mu 0 4 213 228 263 257
		f 4 884 -776 -884 -629
		mu 0 4 259 273 229 217
		f 4 885 -778 -885 -622
		mu 0 4 301 312 273 259
		f 4 886 -780 -886 -617
		mu 0 4 337 350 312 301
		f 4 887 -783 -887 -627
		mu 0 4 373 401 350 337
		f 4 888 -745 -888 -656
		mu 0 4 770 760 670 720
		f 4 889 -747 -889 -651
		mu 0 4 822 780 760 770
		f 4 890 -748 -890 -646
		mu 0 4 833 832 780 822
		f 4 891 -724 -891 -655
		mu 0 4 880 878 832 833
		f 4 -878 -809 -892 -607
		mu 0 4 835 830 876 882
		f 4 -586 892 893 894
		mu 0 4 940 919 928 956
		f 4 -546 -895 895 896
		mu 0 4 943 940 956 972
		f 4 -555 -897 897 898
		mu 0 4 1182 1172 1137 1159
		f 4 -553 -899 899 900
		mu 0 4 1199 1182 1159 1195
		f 4 -550 -901 901 902
		mu 0 4 1219 1199 1195 1207
		f 4 -594 -903 903 904
		mu 0 4 1232 1219 1207 1225
		f 4 -643 -905 905 906
		mu 0 4 1221 1230 1227 1210
		f 4 -641 -907 907 908
		mu 0 4 1201 1221 1210 1197
		f 4 -638 -909 909 910
		mu 0 4 1184 1201 1197 1162
		f 4 -558 -911 911 912
		mu 0 4 1174 1184 1162 1142
		f 4 -542 -913 913 914
		mu 0 4 942 946 976 957
		f 4 -539 -915 915 916
		mu 0 4 921 942 957 929
		f 4 -536 -917 917 918
		mu 0 4 902 921 929 912
		f 4 -708 -919 919 920
		mu 0 4 893 902 912 897
		f 4 -592 -921 921 922
		mu 0 4 900 891 895 911
		f 4 -589 -923 923 -893
		mu 0 4 919 900 911 928
		f 4 924 925 926 927
		mu 0 4 1187 1168 1135 1164
		f 4 928 929 930 -926
		mu 0 4 1168 1129 1105 1135
		f 4 -927 931 932 933
		mu 0 4 1164 1135 1118 1124
		f 4 -931 934 935 -932
		mu 0 4 1135 1105 1090 1118
		f 4 -904 936 937 938
		mu 0 4 1225 1207 1187 1213
		f 4 -902 939 -925 -937
		mu 0 4 1207 1195 1168 1187
		f 4 -900 940 -929 -940
		mu 0 4 1195 1159 1129 1168
		f 4 -898 941 942 -941
		mu 0 4 1159 1137 1114 1129
		f 4 -943 943 944 -930
		mu 0 4 1129 1114 1084 1105
		f 4 -945 945 946 -935
		mu 0 4 1105 1084 1062 1090
		f 4 -947 947 948 949
		mu 0 4 1090 1062 1050 1071
		f 4 -936 -950 950 951
		mu 0 4 1118 1090 1071 1096
		f 4 -933 -952 952 953
		mu 0 4 1124 1118 1096 1107
		f 4 954 -954 955 956
		mu 0 4 1156 1124 1107 1123
		f 4 957 -934 -955 958
		mu 0 4 1191 1164 1124 1156
		f 4 -938 -928 -958 959
		mu 0 4 1213 1187 1164 1191
		f 4 960 961 962 963
		mu 0 4 1094 1075 1054 1076
		f 4 964 965 966 -962
		mu 0 4 1075 1051 1031 1054
		f 4 -963 967 968 969
		mu 0 4 1076 1054 1033 1056
		f 4 -967 970 971 -968
		mu 0 4 1054 1031 1021 1033
		f 4 -956 972 973 974
		mu 0 4 1123 1107 1094 1110
		f 4 -953 975 -961 -973
		mu 0 4 1107 1096 1075 1094
		f 4 -951 976 -965 -976
		mu 0 4 1096 1071 1051 1075
		f 4 -949 977 978 -977
		mu 0 4 1071 1050 1036 1051
		f 4 -979 979 980 -966
		mu 0 4 1051 1036 1017 1031
		f 4 -981 981 982 -971
		mu 0 4 1031 1017 1007 1021
		f 4 -983 983 984 985
		mu 0 4 1021 1007 990 1009
		f 4 -972 -986 986 987
		mu 0 4 1033 1021 1009 1018
		f 4 -969 -988 988 989
		mu 0 4 1056 1033 1018 1037
		f 4 990 -990 991 992
		mu 0 4 1073 1056 1037 1058
		f 4 993 -970 -991 994
		mu 0 4 1098 1076 1056 1073
		f 4 -974 -964 -994 995
		mu 0 4 1110 1094 1076 1098
		f 4 996 997 998 999
		mu 0 4 1025 999 978 1012
		f 4 1000 1001 1002 -998
		mu 0 4 999 987 953 978
		f 4 -999 1003 1004 1005
		mu 0 4 1012 978 949 982
		f 4 -1003 1006 1007 -1004
		mu 0 4 978 953 938 949
		f 4 -992 1008 1009 1010
		mu 0 4 1058 1037 1025 1048
		f 4 -989 1011 -997 -1009
		mu 0 4 1037 1018 999 1025
		f 4 -987 1012 -1001 -1012
		mu 0 4 1018 1009 987 999
		f 4 -985 1013 1014 -1013
		mu 0 4 1009 990 961 987
		f 4 -1015 1015 1016 -1002
		mu 0 4 987 961 933 953
		f 4 -1017 1017 1018 -1007
		mu 0 4 953 933 907 938
		f 4 -1019 1019 -920 1020
		mu 0 4 938 907 897 912
		f 4 -1008 -1021 -918 1021
		mu 0 4 949 938 912 929
		f 4 -1005 -1022 -916 1022
		mu 0 4 982 949 929 957
		f 4 1023 -1023 -914 1024
		mu 0 4 1004 982 957 976
		f 4 1025 -1006 -1024 1026
		mu 0 4 1029 1012 982 1004
		f 4 -1010 -1000 -1026 1027
		mu 0 4 1048 1025 1012 1029
		f 4 1028 1029 1030 1031
		mu 0 4 1189 1166 1140 1170
		f 4 1032 1033 1034 -1030
		mu 0 4 1166 1127 1121 1140
		f 4 -1031 1035 1036 1037
		mu 0 4 1170 1140 1112 1133
		f 4 -1035 1038 1039 -1036
		mu 0 4 1140 1121 1091 1112;
	setAttr ".fc[500:999]"
		f 4 -939 1040 1041 -906
		mu 0 4 1227 1215 1189 1210
		f 4 -960 1042 -1029 -1041
		mu 0 4 1215 1193 1166 1189
		f 4 -959 1043 -1033 -1043
		mu 0 4 1193 1158 1127 1166
		f 4 -957 -975 1044 -1044
		mu 0 4 1158 1123 1110 1127
		f 4 -1045 -996 1045 -1034
		mu 0 4 1127 1110 1098 1121
		f 4 -1046 -995 1046 -1039
		mu 0 4 1121 1098 1073 1091
		f 4 -1047 -993 -1011 1047
		mu 0 4 1091 1073 1058 1066
		f 4 -1040 -1048 -1028 1048
		mu 0 4 1112 1091 1066 1086
		f 4 -1037 -1049 -1027 1049
		mu 0 4 1133 1112 1086 1116
		f 4 1050 -1050 -1025 -912
		mu 0 4 1162 1133 1116 1142
		f 4 1051 -1038 -1051 -910
		mu 0 4 1197 1170 1133 1162
		f 4 -1042 -1032 -1052 -908
		mu 0 4 1210 1189 1170 1197
		f 4 1052 1053 1054 1055
		mu 0 4 1023 1006 974 996
		f 4 1056 1057 1058 -1054
		mu 0 4 1006 979 948 974
		f 4 -1055 1059 1060 1061
		mu 0 4 996 974 952 986
		f 4 -1059 1062 1063 -1060
		mu 0 4 974 948 935 952
		f 4 -948 1064 1065 -978
		mu 0 4 1050 1046 1023 1036
		f 4 -946 1066 -1053 -1065
		mu 0 4 1046 1027 1006 1023
		f 4 -944 1067 -1057 -1067
		mu 0 4 1027 1000 979 1006
		f 4 -942 -896 1068 -1068
		mu 0 4 1000 972 956 979
		f 4 -1069 -894 1069 -1058
		mu 0 4 979 956 928 948
		f 4 -1070 -924 1070 -1063
		mu 0 4 948 928 911 935
		f 4 -1071 -922 -1020 1071
		mu 0 4 935 911 895 905
		f 4 -1064 -1072 -1018 1072
		mu 0 4 952 935 905 932
		f 4 -1061 -1073 -1016 1073
		mu 0 4 986 952 932 960
		f 4 1074 -1074 -1014 -984
		mu 0 4 1007 986 960 990
		f 4 1075 -1062 -1075 -982
		mu 0 4 1017 996 986 1007
		f 4 -1066 -1056 -1076 -980
		mu 0 4 1036 1023 996 1017
		f 4 1076 1077 1078 1079
		mu 0 4 539 538 633 631
		f 4 1080 1081 1082 -1078
		mu 0 4 538 541 632 633
		f 4 1083 1084 1085 -1082
		mu 0 4 541 540 630 632
		f 4 1086 1087 1088 1089
		mu 0 4 519 525 620 616
		f 4 1090 1091 1092 1093
		mu 0 4 518 513 609 611
		f 4 1094 1095 1096 -1092
		mu 0 4 514 517 612 610
		f 4 1097 -1090 1098 -1096
		mu 0 4 517 519 616 612
		f 4 1099 1100 1101 -1085
		mu 0 4 540 534 626 630
		f 4 1102 1103 1104 1105
		mu 0 4 795 801 855 851
		f 4 1106 1107 1108 1109
		mu 0 4 737 740 804 801
		f 4 -1109 1110 1111 -1104
		mu 0 4 801 804 858 855
		f 4 1112 1113 1114 1115
		mu 0 4 792 730 733 795
		f 4 1116 -1116 -1106 1117
		mu 0 4 847 792 795 851
		f 4 1118 1119 1120 -1111
		mu 0 4 804 807 861 858
		f 4 1121 1122 -1119 -1108
		mu 0 4 740 743 807 804
		f 4 1123 1124 1125 1126
		mu 0 4 746 747 810 809
		f 4 1127 1128 1129 -1088
		mu 0 4 525 529 622 620
		f 4 1130 1131 1132 -1129
		mu 0 4 529 533 625 622
		f 4 1133 1134 1135 -1132
		mu 0 4 533 537 629 625
		f 4 1136 1137 -1094 1138
		mu 0 4 615 520 518 611
		f 4 -1126 1139 1140 1141
		mu 0 4 809 810 864 863
		f 4 1142 1143 1144 -1125
		mu 0 4 747 744 808 810
		f 4 -1145 1145 1146 -1140
		mu 0 4 810 808 862 864
		f 4 -1123 1147 -1127 1148
		mu 0 4 807 743 746 809
		f 4 -1120 -1149 -1142 1149
		mu 0 4 861 807 809 863
		f 4 1150 1151 1152 -1146
		mu 0 4 808 805 859 862
		f 4 1153 1154 -1151 -1144
		mu 0 4 744 741 805 808
		f 4 1155 1156 1157 1158
		mu 0 4 723 721 785 787
		f 4 -1158 1159 1160 1161
		mu 0 4 787 785 841 843
		f 4 1162 1163 1164 -1157
		mu 0 4 722 724 788 786
		f 4 -1165 1165 1166 -1160
		mu 0 4 786 788 844 842
		f 4 1167 1168 -1159 1169
		mu 0 4 790 728 723 787
		f 4 1170 -1170 -1162 1171
		mu 0 4 846 790 787 843
		f 4 1172 -1117 1173 -1166
		mu 0 4 788 792 847 844
		f 4 1174 -1113 -1173 -1164
		mu 0 4 724 730 792 788
		f 4 1175 1176 1177 1178
		mu 0 4 739 735 797 802
		f 4 1179 1180 1181 -1101
		mu 0 4 534 530 621 626
		f 4 1182 1183 1184 -1181
		mu 0 4 530 526 619 621
		f 4 1185 -1137 1186 -1184
		mu 0 4 526 520 615 619
		f 4 1187 -1110 -1103 -1115
		mu 0 4 733 737 801 795
		f 4 -1178 1188 1189 1190
		mu 0 4 802 797 852 856
		f 4 1191 1192 1193 -1177
		mu 0 4 735 732 793 797
		f 4 -1194 1194 1195 -1189
		mu 0 4 797 793 849 852
		f 4 1196 -1179 1197 -1155
		mu 0 4 741 739 802 805
		f 4 -1198 -1191 1198 -1152
		mu 0 4 805 802 856 859
		f 4 1199 -1171 1200 -1195
		mu 0 4 793 790 846 849
		f 4 1201 -1168 -1200 -1193
		mu 0 4 732 728 790 793
		f 4 -1182 1202 1203 1204
		mu 0 4 626 621 685 689
		f 4 -1185 1205 1206 -1203
		mu 0 4 621 619 682 685
		f 4 -1102 -1205 1207 1208
		mu 0 4 630 626 689 692
		f 4 -1187 1209 1210 -1206
		mu 0 4 619 615 679 682
		f 4 -1208 1211 -1197 1212
		mu 0 4 692 689 739 741
		f 4 -1204 1213 -1176 -1212
		mu 0 4 689 685 735 739
		f 4 -1207 1214 -1192 -1214
		mu 0 4 685 682 732 735
		f 4 -1211 1215 -1202 -1215
		mu 0 4 682 679 728 732
		f 4 -1093 1216 1217 1218
		mu 0 4 611 609 673 675
		f 4 -1097 1219 1220 -1217
		mu 0 4 610 612 676 674
		f 4 -1210 -1139 -1219 1221
		mu 0 4 679 615 611 675
		f 4 -1099 1222 1223 -1220
		mu 0 4 612 616 680 676
		f 4 -1222 1224 -1169 -1216
		mu 0 4 679 675 723 728
		f 4 -1218 1225 -1156 -1225
		mu 0 4 675 673 721 723
		f 4 -1221 1226 -1163 -1226
		mu 0 4 674 676 724 722
		f 4 -1224 1227 -1175 -1227
		mu 0 4 676 680 730 724
		f 4 -1079 1228 1229 1230
		mu 0 4 631 633 697 696
		f 4 -1083 1231 1232 -1229
		mu 0 4 633 632 695 697
		f 4 1233 1234 -1231 1235
		mu 0 4 693 629 631 696
		f 4 -1086 -1209 1236 -1232
		mu 0 4 632 630 692 695
		f 4 -1236 1237 -1148 1238
		mu 0 4 693 696 746 743
		f 4 -1230 1239 -1124 -1238
		mu 0 4 696 697 747 746
		f 4 -1233 1240 -1143 -1240
		mu 0 4 697 695 744 747
		f 4 -1237 -1213 -1154 -1241
		mu 0 4 695 692 741 744
		f 4 -1130 1241 1242 1243
		mu 0 4 620 622 687 684
		f 4 -1133 1244 1245 -1242
		mu 0 4 622 625 690 687
		f 4 -1223 -1089 -1244 1246
		mu 0 4 680 616 620 684
		f 4 -1136 -1234 1247 -1245
		mu 0 4 625 629 693 690
		f 4 -1247 1248 -1114 -1228
		mu 0 4 680 684 733 730
		f 4 -1243 1249 -1188 -1249
		mu 0 4 684 687 737 733
		f 4 -1246 1250 -1107 -1250
		mu 0 4 687 690 740 737
		f 4 -1248 -1239 -1122 -1251
		mu 0 4 690 693 743 740
		f 4 1251 -1080 -1235 -1135
		mu 0 4 537 539 631 629
		f 4 1252 1253 1254 1255
		mu 0 4 708 761 711 658
		f 4 -1255 1256 1257 1258
		mu 0 4 658 711 663 643
		f 4 1259 1260 1261 -1254
		mu 0 4 761 798 771 711
		f 4 -1262 1262 1263 -1257
		mu 0 4 711 771 726 663
		f 4 1264 1265 1266 1267
		mu 0 4 669 759 708 648
		f 4 -1267 -1256 1268 1269
		mu 0 4 648 708 658 600
		f 4 -1269 -1259 1270 1271
		mu 0 4 600 658 643 594
		f 4 -1271 1272 1273 1274
		mu 0 4 594 643 602 575
		f 4 -1258 1275 1276 -1273
		mu 0 4 643 663 653 602
		f 4 -1264 1277 1278 -1276
		mu 0 4 663 726 672 653
		f 4 1279 1280 1281 -1278
		mu 0 4 726 777 717 672
		f 4 1282 1283 -1280 -1263
		mu 0 4 771 828 777 726
		f 4 1284 1285 -1283 -1261
		mu 0 4 798 839 828 771
		f 4 1286 1287 -1285 1288
		mu 0 4 831 877 839 798
		f 4 1289 -1289 -1260 1290
		mu 0 4 779 831 798 761
		f 4 1291 -1291 -1253 -1266
		mu 0 4 759 779 761 708
		f 4 1292 1293 1294 1295
		mu 0 4 715 768 713 666
		f 4 -1295 1296 1297 1298
		mu 0 4 666 713 660 650
		f 4 1299 1300 1301 -1294
		mu 0 4 768 782 766 713
		f 4 -1302 1302 1303 -1297
		mu 0 4 713 766 709 660
		f 4 -1281 1304 1305 1306
		mu 0 4 717 775 715 662
		f 4 -1306 -1296 1307 1308
		mu 0 4 662 715 666 656
		f 4 -1308 -1299 1309 1310
		mu 0 4 656 666 650 608
		f 4 -1310 1311 1312 1313
		mu 0 4 608 650 596 580
		f 4 -1298 1314 1315 -1312
		mu 0 4 650 660 604 596
		f 4 -1304 1316 1317 -1315
		mu 0 4 660 709 651 604
		f 4 1318 1319 1320 -1317
		mu 0 4 709 764 667 651
		f 4 1321 1322 -1319 -1303
		mu 0 4 766 783 764 709
		f 4 1323 1324 -1322 -1301
		mu 0 4 782 829 783 766
		f 4 -1288 1325 -1324 1326
		mu 0 4 837 875 829 782
		f 4 -1286 -1327 -1300 1327
		mu 0 4 826 837 782 768
		f 4 -1284 -1328 -1293 -1305
		mu 0 4 775 826 768 715
		f 4 1328 1329 1330 1331
		mu 0 4 386 340 392 427
		f 4 -1331 1332 1333 1334
		mu 0 4 427 392 432 458
		f 4 1335 1336 1337 -1330
		mu 0 4 340 316 348 392
		f 4 -1338 1338 1339 -1333
		mu 0 4 392 348 394 432
		f 4 1340 1341 1342 1343
		mu 0 4 378 326 386 429
		f 4 -1343 -1332 1344 1345
		mu 0 4 429 386 427 455
		f 4 -1345 -1335 1346 1347
		mu 0 4 455 427 458 491
		f 4 -1347 1348 -1275 1349
		mu 0 4 491 458 551 575
		f 4 -1334 1350 -1272 -1349
		mu 0 4 458 432 490 551
		f 4 -1340 1351 -1270 -1351
		mu 0 4 432 394 450 490
		f 4 1352 1353 -1268 -1352
		mu 0 4 394 349 402 450
		f 4 1354 1355 -1353 -1339
		mu 0 4 348 311 349 394
		f 4 1356 1357 -1355 -1337
		mu 0 4 316 274 311 348
		f 4 1358 1359 -1357 1360
		mu 0 4 246 230 274 316
		f 4 1361 -1361 -1336 1362
		mu 0 4 284 246 316 340
		f 4 1363 -1363 -1329 -1342
		mu 0 4 326 284 340 386
		f 4 1364 1365 1366 1367
		mu 0 4 591 510 582 606
		f 4 -1367 1368 1369 1370
		mu 0 4 606 582 598 645
		f 4 1371 1372 1373 -1366
		mu 0 4 510 461 504 582
		f 4 -1374 1374 1375 -1369
		mu 0 4 582 504 569 598
		f 4 1376 1377 1378 -1314
		mu 0 4 580 505 591 608
		f 4 -1379 -1368 1379 -1311
		mu 0 4 608 591 606 656
		f 4 -1380 -1371 1380 -1309
		mu 0 4 656 606 645 662
		f 4 -1381 1381 -1282 -1307
		mu 0 4 662 645 672 717
		f 4 -1370 1382 -1279 -1382
		mu 0 4 645 598 653 672
		f 4 -1376 1383 -1277 -1383
		mu 0 4 598 569 602 653
		f 4 1384 -1350 -1274 -1384
		mu 0 4 569 491 575 602
		f 4 1385 -1348 -1385 -1375
		mu 0 4 504 455 491 569
		f 4 1386 -1346 -1386 -1373
		mu 0 4 461 429 455 504
		f 4 1387 -1344 -1387 1388
		mu 0 4 410 378 429 461
		f 4 1389 -1389 -1372 1390
		mu 0 4 454 410 461 510
		f 4 1391 -1391 -1365 -1378
		mu 0 4 505 454 510 591
		f 4 1392 1393 1394 1395
		mu 0 4 400 346 387 446
		f 4 -1395 1396 1397 1398
		mu 0 4 446 387 424 468
		f 4 1399 1400 1401 -1394
		mu 0 4 346 303 328 387
		f 4 -1402 1402 1403 -1397
		mu 0 4 387 328 371 424
		f 4 1404 1405 1406 -1321
		mu 0 4 412 366 400 452
		f 4 -1407 -1396 1407 -1318
		mu 0 4 452 400 446 498
		f 4 -1408 -1399 1408 -1316
		mu 0 4 498 446 468 560
		f 4 -1409 1409 -1377 -1313
		mu 0 4 560 468 505 580
		f 4 -1398 1410 -1392 -1410
		mu 0 4 468 424 454 505
		f 4 -1404 1411 -1390 -1411
		mu 0 4 424 371 410 454
		f 4 1412 -1341 -1388 -1412
		mu 0 4 371 324 378 410
		f 4 1413 -1364 -1413 -1403
		mu 0 4 328 281 324 371
		f 4 1414 -1362 -1414 -1401
		mu 0 4 303 244 281 328
		f 4 1415 -1359 -1415 1416
		mu 0 4 264 227 244 303
		f 4 1417 -1417 -1400 1418
		mu 0 4 310 264 303 346
		f 4 1419 -1419 -1393 -1406
		mu 0 4 366 310 346 400
		f 4 -1147 1420 -1356 1421
		mu 0 4 302 338 349 311
		f 4 -1141 -1422 -1358 1422
		mu 0 4 260 302 311 274
		f 4 -1150 -1423 -1360 1423
		mu 0 4 218 260 274 230
		f 4 -1121 -1424 -1416 1424
		mu 0 4 258 214 227 264
		f 4 -1112 -1425 -1418 1425
		mu 0 4 298 258 264 310
		f 4 -1105 -1426 -1420 1426
		mu 0 4 333 298 310 366
		f 4 -1118 -1427 -1405 1427
		mu 0 4 370 333 366 412
		f 4 -1174 -1428 -1320 1428
		mu 0 4 774 758 667 764
		f 4 -1167 -1429 -1323 1429
		mu 0 4 824 774 764 783
		f 4 -1161 -1430 -1325 1430
		mu 0 4 836 824 783 829
		f 4 -1172 -1431 -1326 1431
		mu 0 4 881 836 829 875
		f 4 -1201 -1432 -1287 1432
		mu 0 4 834 879 877 831
		f 4 -1196 -1433 -1290 1433
		mu 0 4 821 834 831 779
		f 4 -1190 -1434 -1292 1434
		mu 0 4 769 821 779 759
		f 4 -1199 -1435 -1265 1435
		mu 0 4 719 769 759 669
		f 4 -1153 -1436 -1354 -1421
		mu 0 4 338 374 402 349
		f 4 1436 1437 1438 -1128
		mu 0 4 901 910 927 920
		f 4 1439 1440 -1437 -1087
		mu 0 4 892 896 910 901
		f 4 1441 1442 -1440 -1098
		mu 0 4 903 913 898 894
		f 4 1443 1444 -1442 -1095
		mu 0 4 922 930 913 903
		f 4 1445 1446 -1444 -1091
		mu 0 4 941 958 930 922
		f 4 1447 1448 -1446 -1138
		mu 0 4 945 975 958 941
		f 4 1449 1450 -1448 -1186
		mu 0 4 1183 1161 1141 1173
		f 4 1451 1452 -1450 -1183
		mu 0 4 1200 1196 1161 1183
		f 4 1453 1454 -1452 -1180
		mu 0 4 1220 1209 1196 1200
		f 4 1455 1456 -1454 -1100
		mu 0 4 1229 1226 1209 1220
		f 4 1457 1458 -1456 -1084
		mu 0 4 1218 1206 1224 1231
		f 4 1459 1460 -1458 -1081
		mu 0 4 1198 1194 1206 1218
		f 4 1461 1462 -1460 -1077
		mu 0 4 1181 1160 1194 1198
		f 4 1463 1464 -1462 -1252
		mu 0 4 1171 1136 1160 1181
		f 4 1465 1466 -1464 -1134
		mu 0 4 939 955 971 944
		f 4 -1439 1467 -1466 -1131
		mu 0 4 920 927 955 939
		f 4 1468 1469 1470 1471
		mu 0 4 981 1011 977 950
		f 4 -1471 1472 1473 1474
		mu 0 4 950 977 954 937
		f 4 1475 1476 1477 -1470
		mu 0 4 1011 1024 998 977
		f 4 -1478 1478 1479 -1473
		mu 0 4 977 998 988 954
		f 4 1480 1481 1482 -1449
		mu 0 4 975 1003 981 958
		f 4 -1483 -1472 1483 -1447
		mu 0 4 958 981 950 930
		f 4 -1484 -1475 1484 -1445
		mu 0 4 930 950 937 913
		f 4 -1485 1485 1486 -1443
		mu 0 4 913 937 908 898
		f 4 -1474 1487 1488 -1486
		mu 0 4 937 954 934 908
		f 4 -1480 1489 1490 -1488
		mu 0 4 954 988 962 934
		f 4 1491 1492 1493 -1490
		mu 0 4 988 1010 989 962
		f 4 1494 1495 -1492 -1479
		mu 0 4 998 1019 1010 988
		f 4 1496 1497 -1495 -1477
		mu 0 4 1024 1038 1019 998
		f 4 1498 1499 -1497 1500
		mu 0 4 1047 1057 1038 1024
		f 4 1501 -1501 -1476 1502
		mu 0 4 1028 1047 1024 1011
		f 4 1503 -1503 -1469 -1482
		mu 0 4 1003 1028 1011 981
		f 4 1504 1505 1506 1507
		mu 0 4 1055 1077 1053 1032
		f 4 -1507 1508 1509 1510
		mu 0 4 1032 1053 1030 1020
		f 4 1511 1512 1513 -1506
		mu 0 4 1077 1093 1074 1053
		f 4 -1514 1514 1515 -1509
		mu 0 4 1053 1074 1052 1030
		f 4 1516 1517 1518 -1500
		mu 0 4 1057 1072 1055 1038
		f 4 -1519 -1508 1519 -1498
		mu 0 4 1038 1055 1032 1019
		f 4 -1520 -1511 1520 -1496
		mu 0 4 1019 1032 1020 1010
		f 4 -1521 1521 1522 -1493
		mu 0 4 1010 1020 1008 989
		f 4 -1510 1523 1524 -1522
		mu 0 4 1020 1030 1016 1008
		f 4 -1516 1525 1526 -1524
		mu 0 4 1030 1052 1035 1016
		f 4 1527 1528 1529 -1526
		mu 0 4 1052 1070 1049 1035
		f 4 1530 1531 -1528 -1515
		mu 0 4 1074 1095 1070 1052
		f 4 1532 1533 -1531 -1513
		mu 0 4 1093 1108 1095 1074
		f 4 1534 1535 -1533 1536
		mu 0 4 1109 1122 1108 1093
		f 4 1537 -1537 -1512 1538
		mu 0 4 1097 1109 1093 1077
		f 4 1539 -1539 -1505 -1518
		mu 0 4 1072 1097 1077 1055
		f 4 1540 1541 1542 1543
		mu 0 4 1125 1163 1134 1117
		f 4 -1543 1544 1545 1546
		mu 0 4 1117 1134 1104 1089
		f 4 1547 1548 1549 -1542
		mu 0 4 1163 1186 1167 1134
		f 4 -1550 1550 1551 -1545
		mu 0 4 1134 1167 1128 1104
		f 4 1552 1553 1554 -1536
		mu 0 4 1122 1155 1125 1108
		f 4 -1555 -1544 1555 -1534
		mu 0 4 1108 1125 1117 1095
		f 4 -1556 -1547 1556 -1532
		mu 0 4 1095 1117 1089 1070
		f 4 -1557 1557 1558 -1529
		mu 0 4 1070 1089 1061 1049
		f 4 -1546 1559 1560 -1558
		mu 0 4 1089 1104 1083 1061
		f 4 -1552 1561 1562 -1560
		mu 0 4 1104 1128 1113 1083
		f 4 1563 -1465 1564 -1562
		mu 0 4 1128 1160 1136 1113
		f 4 1565 -1463 -1564 -1551
		mu 0 4 1167 1194 1160 1128
		f 4 1566 -1461 -1566 -1549
		mu 0 4 1186 1206 1194 1167
		f 4 1567 -1459 -1567 1568
		mu 0 4 1212 1224 1206 1186
		f 4 1569 -1569 -1548 1570
		mu 0 4 1190 1212 1186 1163
		f 4 1571 -1571 -1541 -1554
		mu 0 4 1155 1190 1163 1125
		f 4 1572 1573 1574 1575
		mu 0 4 1132 1169 1139 1111
		f 4 -1575 1576 1577 1578
		mu 0 4 1111 1139 1120 1092
		f 4 1579 1580 1581 -1574
		mu 0 4 1169 1188 1165 1139
		f 4 -1582 1582 1583 -1577
		mu 0 4 1139 1165 1126 1120
		f 4 -1451 1584 1585 -1481
		mu 0 4 1141 1161 1132 1115
		f 4 -1586 -1576 1586 -1504
		mu 0 4 1115 1132 1111 1085
		f 4 -1587 -1579 1587 -1502
		mu 0 4 1085 1111 1092 1065
		f 4 -1588 1588 -1517 -1499
		mu 0 4 1065 1092 1072 1057
		f 4 -1578 1589 -1540 -1589
		mu 0 4 1092 1120 1097 1072
		f 4 -1584 1590 -1538 -1590
		mu 0 4 1120 1126 1109 1097
		f 4 1591 -1553 -1535 -1591
		mu 0 4 1126 1157 1122 1109
		f 4 1592 -1572 -1592 -1583
		mu 0 4 1165 1192 1157 1126
		f 4 1593 -1570 -1593 -1581
		mu 0 4 1188 1214 1192 1165
		f 4 -1457 -1568 -1594 1594
		mu 0 4 1209 1226 1214 1188
		f 4 -1455 -1595 -1580 1595
		mu 0 4 1196 1209 1188 1169
		f 4 -1453 -1596 -1573 -1585
		mu 0 4 1161 1196 1169 1132
		f 4 1596 1597 1598 1599
		mu 0 4 985 997 973 951
		f 4 -1599 1600 1601 1602
		mu 0 4 951 973 947 936
		f 4 1603 1604 1605 -1598
		mu 0 4 997 1022 1005 973
		f 4 -1606 1606 1607 -1601
		mu 0 4 973 1005 980 947
		f 4 -1523 1608 1609 -1494
		mu 0 4 989 1008 985 959
		f 4 -1610 -1600 1610 -1491
		mu 0 4 959 985 951 931
		f 4 -1611 -1603 1611 -1489
		mu 0 4 931 951 936 906
		f 4 -1612 1612 -1441 -1487
		mu 0 4 906 936 910 896
		f 4 -1602 1613 -1438 -1613
		mu 0 4 936 947 927 910
		f 4 -1608 1614 -1468 -1614
		mu 0 4 947 980 955 927
		f 4 1615 -1565 -1467 -1615
		mu 0 4 980 1001 971 955
		f 4 1616 -1563 -1616 -1607
		mu 0 4 1005 1026 1001 980
		f 4 1617 -1561 -1617 -1605
		mu 0 4 1022 1045 1026 1005
		f 4 -1530 -1559 -1618 1618
		mu 0 4 1035 1049 1045 1022
		f 4 -1527 -1619 -1604 1619
		mu 0 4 1016 1035 1022 997
		f 4 -1525 -1620 -1597 -1609
		mu 0 4 1008 1016 997 985
		f 4 1620 1621 1622 1623
		mu 0 4 1511 1513 1465 1475
		f 4 1624 1625 1626 1627
		mu 0 4 1235 1149 1151 1222
		f 4 1628 -1628 1629 1630
		mu 0 4 1280 1235 1222 1254
		f 4 1631 -1631 1632 1633
		mu 0 4 1366 1280 1254 1312
		f 3 1634 1635 1636
		mu 0 3 1397 1366 1360
		f 4 1637 1638 -1635 1639
		mu 0 4 1436 1405 1366 1397
		f 4 -1623 1640 -1638 1641
		mu 0 4 1475 1465 1405 1436
		f 4 1642 1643 1644 1645
		mu 0 4 1279 1237 1204 1264
		f 4 1646 1647 1648 -1644
		mu 0 4 1237 1148 1078 1204
		f 4 -1645 1649 1650 1651
		mu 0 4 1264 1204 1238 1278
		f 4 -1649 1652 1653 -1650
		mu 0 4 1204 1078 1147 1238
		f 4 1654 1655 1656 1657
		mu 0 4 1360 1312 1279 1352
		f 4 -1633 1658 -1643 -1656
		mu 0 4 1312 1254 1237 1279
		f 4 -1630 1659 -1647 -1659
		mu 0 4 1254 1222 1148 1237
		f 4 -1627 1660 1661 -1660
		mu 0 4 1222 1151 1087 1148
		f 4 -1662 1662 1663 -1648
		mu 0 4 1148 1087 1015 1078
		f 4 -1664 1664 1665 -1653
		mu 0 4 1078 1014 1088 1147
		f 4 -1666 1666 1667 1668
		mu 0 4 1147 1088 1152 1223
		f 4 -1654 -1669 1669 1670
		mu 0 4 1238 1147 1223 1255
		f 4 -1651 -1671 1671 1672
		mu 0 4 1278 1238 1255 1313
		f 4 1673 -1673 1674 1675
		mu 0 4 1353 1278 1313 1361
		f 4 1676 -1652 -1674 1677
		mu 0 4 1349 1264 1278 1353
		f 4 -1657 -1646 -1677 1678
		mu 0 4 1352 1279 1264 1348
		f 3 1679 1680 1681
		mu 0 3 1361 1367 1398
		f 4 -1672 1682 1683 1684
		mu 0 4 1313 1255 1281 1367
		f 4 -1670 1685 1686 -1683
		mu 0 4 1255 1223 1236 1281
		f 4 -1668 1687 1688 -1686
		mu 0 4 1223 1152 1150 1236
		f 4 1689 1690 1691 1692
		mu 0 4 1476 1466 1514 1512
		f 4 1693 1694 -1690 1695
		mu 0 4 1437 1406 1466 1476
		f 4 -1681 1696 -1694 1697
		mu 0 4 1398 1367 1406 1437
		f 4 -1692 1698 1699 1700
		mu 0 4 1512 1514 1598 1595
		f 4 1701 1702 -1621 1703
		mu 0 4 1594 1599 1513 1511
		f 4 1704 1705 -1702 1706
		mu 0 4 1653 1656 1599 1594
		f 4 -1700 1707 -1705 1708
		mu 0 4 1595 1598 1655 1654
		f 4 1709 1710 1711 1712
		mu 0 4 1399 1411 1515 1481
		f 4 1713 1714 1715 -1711
		mu 0 4 1412 1400 1482 1516
		f 4 -1712 1716 1717 1718
		mu 0 4 1481 1515 1574 1519
		f 4 -1716 1719 1720 -1717
		mu 0 4 1516 1482 1520 1575
		f 4 -1658 1721 1722 -1637
		mu 0 4 1360 1352 1399 1397
		f 4 -1679 1723 -1710 -1722
		mu 0 4 1352 1348 1411 1399
		f 4 -1678 1724 -1714 -1724
		mu 0 4 1349 1353 1400 1412
		f 4 -1676 -1682 1725 -1725
		mu 0 4 1353 1361 1398 1400
		f 4 -1726 -1698 1726 -1715
		mu 0 4 1400 1398 1437 1482
		f 4 -1727 -1696 1727 -1720
		mu 0 4 1482 1437 1476 1520
		f 4 -1728 -1693 -1701 1728
		mu 0 4 1520 1476 1512 1595
		f 4 -1721 -1729 -1709 1729
		mu 0 4 1575 1520 1595 1654
		f 4 -1718 -1730 -1707 1730
		mu 0 4 1519 1574 1653 1594
		f 4 1731 -1731 -1704 -1624
		mu 0 4 1475 1519 1594 1511
		f 4 1732 -1719 -1732 -1642
		mu 0 4 1436 1481 1519 1475
		f 4 -1723 -1713 -1733 -1640
		mu 0 4 1397 1399 1481 1436
		f 4 -1667 1733 1734 -1688
		mu 0 4 1152 1088 1063 1150
		f 4 -1665 1735 1736 -1734
		mu 0 4 1088 1014 968 1063
		f 4 -1663 1737 1738 -1736
		mu 0 4 1015 1087 1064 968
		f 4 -1661 -1626 1739 -1738
		mu 0 4 1087 1151 1149 1064
		f 3 1740 1741 -1632
		mu 0 3 1366 1362 1280
		f 3 1742 1743 -1684
		mu 0 3 1281 1363 1367
		f 4 1744 1745 1746 1747
		mu 0 4 1410 1365 1357 1404
		f 4 1748 1749 1750 1751
		mu 0 4 1593 1518 1505 1552
		f 4 1752 1753 1754 1755
		mu 0 4 984 1060 1081 992
		f 4 1756 1757 1758 1759
		mu 0 4 1234 1145 1175 1240
		f 4 1760 1761 1762 -1746
		mu 0 4 1365 1272 1285 1357
		f 4 1763 1764 1765 1766
		mu 0 4 1517 1592 1553 1504
		f 4 1767 1768 1769 -1750
		mu 0 4 1518 1472 1456 1505
		f 4 1770 1771 1772 1773
		mu 0 4 1409 1471 1455 1403
		f 4 1774 -1760 1775 -1762
		mu 0 4 1272 1234 1240 1285
		f 4 1776 -1774 1777 1778
		mu 0 4 1364 1409 1403 1356
		f 4 1779 -1748 1780 -1769
		mu 0 4 1472 1410 1404 1456
		f 4 1781 1782 1783 -1754
		mu 0 4 1060 1146 1176 1081
		f 4 1784 1785 1786 1787
		mu 0 4 1233 1271 1284 1239
		f 4 1788 1789 1790 -1758
		mu 0 4 1145 1059 1080 1175
		f 4 1791 -1752 1792 1793
		mu 0 4 1652 1593 1552 1618
		f 4 1794 -1767 1795 -1772
		mu 0 4 1471 1517 1504 1455
		f 4 1796 -1779 1797 -1786
		mu 0 4 1271 1364 1356 1284
		f 4 1798 -1794 1799 -1765
		mu 0 4 1592 1652 1619 1553
		f 4 1800 -1788 1801 -1783
		mu 0 4 1146 1233 1239 1176
		f 4 1802 -1756 1803 -1790
		mu 0 4 1059 983 991 1080
		f 3 -1744 1804 -1697
		mu 0 3 1367 1363 1406
		f 3 -1741 -1639 1805
		mu 0 3 1362 1366 1405
		f 4 -1737 1806 -1803 1807
		mu 0 4 1063 968 983 1059
		f 4 -1625 1808 -1801 1809
		mu 0 4 1149 1235 1233 1146
		f 4 -1706 1810 -1799 1811
		mu 0 4 1599 1656 1652 1592
		f 4 -1742 1812 -1797 1813
		mu 0 4 1280 1362 1364 1271
		f 4 -1622 1814 -1795 1815
		mu 0 4 1465 1513 1517 1471
		f 4 -1708 1816 -1792 -1811
		mu 0 4 1655 1598 1593 1652
		f 4 -1735 -1808 -1789 1817
		mu 0 4 1150 1063 1059 1145
		f 4 -1629 -1814 -1785 -1809
		mu 0 4 1235 1280 1271 1233
		f 4 -1740 -1810 -1782 1818
		mu 0 4 1064 1149 1146 1060
		f 4 -1695 1819 -1780 1820
		mu 0 4 1466 1406 1410 1472
		f 4 -1806 1821 -1777 -1813
		mu 0 4 1362 1405 1409 1364
		f 4 -1687 1822 -1775 1823
		mu 0 4 1281 1236 1234 1272
		f 4 -1641 -1816 -1771 -1822
		mu 0 4 1405 1465 1471 1409
		f 4 -1691 -1821 -1768 1824
		mu 0 4 1514 1466 1472 1518
		f 4 -1703 -1812 -1764 -1815
		mu 0 4 1513 1599 1592 1517
		f 4 -1743 -1824 -1761 1825
		mu 0 4 1363 1281 1272 1365
		f 4 -1689 -1818 -1757 -1823
		mu 0 4 1236 1150 1145 1234
		f 4 -1739 -1819 -1753 -1807
		mu 0 4 968 1064 1060 984
		f 4 -1699 -1825 -1749 -1817
		mu 0 4 1598 1514 1518 1593
		f 4 -1805 -1826 -1745 -1820
		mu 0 4 1406 1363 1365 1410
		f 3 -1680 -1675 -1685
		mu 0 3 1367 1361 1313
		f 3 -1636 -1634 -1655
		mu 0 3 1360 1366 1312
		f 4 1826 1827 1828 1829
		mu 0 4 203 269 279 231
		f 4 1830 1831 1832 1833
		mu 0 4 251 233 189 207
		f 4 1834 -1833 1835 1836
		mu 0 4 181 207 189 159
		f 4 -1829 1837 1838 1839
		mu 0 4 231 279 289 239
		f 4 1840 1841 1842 1843
		mu 0 4 305 367 353 287
		f 4 -1843 1844 1845 1846
		mu 0 4 287 353 335 271
		f 4 -1846 1847 1848 -1828
		mu 0 4 269 329 341 279
		f 4 -1849 1849 1850 -1838
		mu 0 4 279 341 355 289
		f 4 1851 1852 1853 1854
		mu 0 4 225 275 253 195
		f 4 1855 1856 1857 1858
		mu 0 4 153 185 197 173
		f 4 1859 1860 -1856 1861
		mu 0 4 129 155 185 153
		f 4 -1836 1862 -1860 1863
		mu 0 4 159 189 157 133
		f 4 1864 1865 1866 1867
		mu 0 4 147 143 117 125
		f 4 1868 1869 1870 -1866
		mu 0 4 143 145 123 117
		f 4 -1867 1871 1872 1873
		mu 0 4 119 115 137 139
		f 4 -1871 1874 1875 -1872
		mu 0 4 115 121 141 137
		f 4 1876 1877 1878 1879
		mu 0 4 187 183 147 161
		f 4 1880 1881 -1865 -1878
		mu 0 4 183 179 143 147
		f 4 1882 1883 -1869 -1882
		mu 0 4 179 177 145 143
		f 4 1884 -1837 1885 -1884
		mu 0 4 177 181 159 145
		f 4 -1886 -1864 1886 -1870
		mu 0 4 145 159 133 123
		f 4 -1887 -1862 1887 -1875
		mu 0 4 121 129 153 141
		f 4 -1888 -1859 1888 1889
		mu 0 4 141 153 173 169
		f 4 -1876 -1890 1890 1891
		mu 0 4 137 141 169 165
		f 4 -1873 -1892 1892 1893
		mu 0 4 139 137 165 167
		f 4 1894 -1894 1895 1896
		mu 0 4 151 139 167 171
		f 4 1897 -1874 -1895 1898
		mu 0 4 127 119 139 151
		f 4 -1879 -1868 -1898 1899
		mu 0 4 161 147 125 135
		f 4 -1854 1900 1901 1902
		mu 0 4 223 277 293 237
		f 4 1903 1904 -1852 1905
		mu 0 4 235 285 275 225
		f 4 1906 1907 1908 -1897
		mu 0 4 171 193 175 151
		f 4 -1902 1909 1910 1911
		mu 0 4 237 293 307 255
		f 4 1912 1913 1914 -1905
		mu 0 4 285 343 331 275
		f 4 -1915 1915 1916 -1853
		mu 0 4 275 331 321 253
		f 4 -1917 1917 1918 -1901
		mu 0 4 277 351 363 293
		f 4 -1919 1919 1920 -1910
		mu 0 4 293 363 375 307
		f 4 1921 1922 1923 1924
		mu 0 4 417 481 469 403
		f 4 1925 1926 1927 -1880
		mu 0 4 161 191 211 187
		f 4 1928 1929 -1926 -1900
		mu 0 4 135 163 191 161
		f 4 -1909 1930 -1929 -1899
		mu 0 4 151 175 149 127
		f 4 -1924 1931 1932 1933
		mu 0 4 397 463 471 407
		f 4 1934 1935 1936 -1923
		mu 0 4 481 567 553 469
		f 4 1937 1938 -1842 1939
		mu 0 4 433 417 353 367
		f 4 -1937 1940 1941 -1932
		mu 0 4 463 521 555 471
		f 4 -1933 1942 1943 1944
		mu 0 4 407 471 475 415
		f 4 1945 1946 -1935 1947
		mu 0 4 485 573 567 481
		f 4 -1942 1948 1949 -1943
		mu 0 4 471 555 561 475
		f 4 1950 1951 1952 1953
		mu 0 4 267 219 221 265
		f 4 1954 1955 -1951 1956
		mu 0 4 261 215 219 267
		f 4 -1834 1957 -1955 1958
		mu 0 4 251 207 215 261
		f 4 1959 1960 1961 -1921
		mu 0 4 375 381 317 307
		f 4 1962 1963 1964 -1961
		mu 0 4 381 383 319 317
		f 4 1965 1966 1967 -1964
		mu 0 4 383 379 313 319
		f 4 1968 -1841 1969 -1967
		mu 0 4 379 367 305 313
		f 4 1970 -1953 1971 1972
		mu 0 4 255 265 221 211
		f 4 -1958 -1835 -1885 1973
		mu 0 4 215 207 181 177
		f 4 -1956 -1974 -1883 1974
		mu 0 4 219 215 177 179
		f 4 -1952 -1975 -1881 1975
		mu 0 4 221 219 179 183
		f 4 -1972 -1976 -1877 -1928
		mu 0 4 211 221 183 187
		f 4 1976 1977 1978 1979
		mu 0 4 421 479 477 419
		f 4 -1979 1980 1981 1982
		mu 0 4 419 477 473 413
		f 4 1983 1984 1985 -1978
		mu 0 4 479 565 563 477
		f 4 1986 1987 1988 1989
		mu 0 4 415 421 359 355
		f 4 -1986 1990 1991 -1981
		mu 0 4 477 563 557 473
		f 4 -1982 1992 1993 1994
		mu 0 4 413 473 465 405
		f 4 -1950 1995 -1984 1996
		mu 0 4 475 561 565 479
		f 4 -1992 1997 1998 -1993
		mu 0 4 473 557 527 465
		f 4 1999 2000 2001 2002
		mu 0 4 441 501 499 443
		f 4 -2002 2003 2004 2005
		mu 0 4 443 499 493 439
		f 4 2006 2007 2008 -2001
		mu 0 4 501 589 587 499
		f 4 2009 2010 -1960 2011
		mu 0 4 437 441 381 375
		f 4 -2009 2012 2013 -2004
		mu 0 4 499 587 583 493
		f 4 -2005 2014 2015 2016
		mu 0 4 439 493 485 433
		f 4 2017 2018 -2007 2019
		mu 0 4 495 585 589 501
		f 4 -2014 2020 -1946 -2015
		mu 0 4 493 583 573 485
		f 4 2021 2022 2023 2024
		mu 0 4 395 459 447 389
		f 4 -2024 2025 2026 2027
		mu 0 4 425 483 487 435
		f 4 2028 2029 2030 -2023
		mu 0 4 459 511 507 447
		f 4 -1994 2031 -2022 2032
		mu 0 4 405 465 459 395
		f 4 -2031 2033 2034 -2026
		mu 0 4 483 571 577 487
		f 4 -2027 2035 2036 2037
		mu 0 4 435 487 495 437
		f 4 -1999 2038 -2029 -2032
		mu 0 4 465 527 511 459
		f 4 -2035 2039 -2018 -2036
		mu 0 4 487 577 585 495
		f 4 2040 2041 2042 2043
		mu 0 4 247 295 299 249
		f 4 -2043 2044 2045 2046
		mu 0 4 249 299 291 241
		f 4 2047 2048 2049 2050
		mu 0 4 239 247 205 197
		f 4 -1858 -2050 2051 -1889
		mu 0 4 173 197 205 169
		f 4 -2046 2052 -1904 2053
		mu 0 4 241 291 285 235
		f 4 -1851 -1989 2054 2055
		mu 0 4 289 355 359 295
		f 4 -2055 2056 2057 -2042
		mu 0 4 295 359 361 299
		f 4 -2058 2058 2059 -2045
		mu 0 4 299 361 357 291
		f 4 -2060 2060 -1913 -2053
		mu 0 4 291 357 343 285
		f 4 2061 2062 -1907 -1896
		mu 0 4 167 199 193 171
		f 4 2063 2064 -2062 -1893
		mu 0 4 165 201 199 167
		f 4 -2052 2065 -2064 -1891
		mu 0 4 169 205 201 165
		f 4 2066 -1847 -1827 2067
		mu 0 4 233 287 271 209
		f 4 2068 -2038 -2012 -1920
		mu 0 4 363 435 437 375
		f 4 2069 -2033 2070 -1914
		mu 0 4 343 405 395 331
		f 4 2071 -2028 -2069 -1918
		mu 0 4 351 425 435 363
		f 4 -2071 -2025 -2072 -1916
		mu 0 4 331 395 389 321;
	setAttr ".fc[1000:1315]"
		f 4 2072 -2017 -1940 -1969
		mu 0 4 379 439 433 367
		f 4 -2020 -2000 -2010 -2037
		mu 0 4 495 501 441 437
		f 4 2073 -2006 -2073 -1966
		mu 0 4 383 443 439 379
		f 4 -2011 -2003 -2074 -1963
		mu 0 4 381 441 443 383
		f 4 2074 -1995 -2070 -2061
		mu 0 4 357 413 405 343
		f 4 -1997 -1977 -1987 -1944
		mu 0 4 475 479 421 415
		f 4 2075 -1983 -2075 -2059
		mu 0 4 361 419 413 357
		f 4 -1988 -1980 -2076 -2057
		mu 0 4 359 421 419 361
		f 4 2076 -1945 -1990 -1850
		mu 0 4 341 407 415 355
		f 4 -1948 -1922 -1938 -2016
		mu 0 4 485 481 417 433
		f 4 2077 -1934 -2077 -1848
		mu 0 4 329 397 407 341
		f 4 -1939 -1925 -2078 -1845
		mu 0 4 353 417 403 335
		f 4 -1832 -2068 2078 -1863
		mu 0 4 189 233 209 157
		f 4 2079 -2054 2080 -2063
		mu 0 4 199 241 235 193
		f 4 -2056 -2041 -2048 -1839
		mu 0 4 289 295 247 239
		f 4 2081 -2047 -2080 -2065
		mu 0 4 201 249 241 199
		f 4 -2049 -2044 -2082 -2066
		mu 0 4 205 247 249 201
		f 4 -1962 2082 -1971 -1911
		mu 0 4 307 317 265 255
		f 4 2083 -1959 2084 -1970
		mu 0 4 305 251 261 313
		f 4 -2085 -1957 2085 -1968
		mu 0 4 313 261 267 319
		f 4 -2086 -1954 -2083 -1965
		mu 0 4 319 267 265 317
		f 4 2086 -1912 -1973 -1927
		mu 0 4 191 237 255 211
		f 4 -2081 -1906 2087 -1908
		mu 0 4 193 235 225 175
		f 4 2088 -1903 -2087 -1930
		mu 0 4 163 223 237 191
		f 4 -2088 -1855 -2089 -1931
		mu 0 4 175 225 195 149
		f 4 2089 -1840 -2051 -1857
		mu 0 4 185 231 239 197
		f 4 -1844 -2067 -1831 -2084
		mu 0 4 305 287 233 251
		f 4 -2079 -1830 -2090 -1861
		mu 0 4 155 203 231 185
		f 4 2090 2091 2092 2093
		mu 0 4 204 232 280 270
		f 4 2094 2095 2096 2097
		mu 0 4 252 208 190 234
		f 4 2098 2099 -2096 2100
		mu 0 4 182 160 190 208
		f 4 2101 2102 2103 -2092
		mu 0 4 232 240 290 280
		f 4 2104 2105 2106 2107
		mu 0 4 306 288 354 368
		f 4 2108 2109 2110 -2106
		mu 0 4 288 272 336 354
		f 4 -2093 2111 2112 -2110
		mu 0 4 270 280 342 330
		f 4 -2104 2113 2114 -2112
		mu 0 4 280 290 356 342
		f 4 2115 2116 2117 2118
		mu 0 4 226 196 254 276
		f 4 2119 2120 2121 2122
		mu 0 4 154 174 198 186
		f 4 2123 -2123 2124 2125
		mu 0 4 130 154 186 156
		f 4 2126 -2126 2127 -2100
		mu 0 4 160 134 158 190
		f 4 2128 2129 2130 2131
		mu 0 4 148 126 118 144
		f 4 -2131 2132 2133 2134
		mu 0 4 144 118 124 146
		f 4 2135 2136 2137 -2130
		mu 0 4 120 140 138 116
		f 4 -2138 2138 2139 -2133
		mu 0 4 116 138 142 122
		f 4 2140 2141 2142 2143
		mu 0 4 188 162 148 184
		f 4 -2143 -2132 2144 2145
		mu 0 4 184 148 144 180
		f 4 -2145 -2135 2146 2147
		mu 0 4 180 144 146 178
		f 4 -2147 2148 -2099 2149
		mu 0 4 178 146 160 182
		f 4 -2134 2150 -2127 -2149
		mu 0 4 146 124 134 160
		f 4 -2140 2151 -2124 -2151
		mu 0 4 122 142 154 130
		f 4 2152 2153 -2120 -2152
		mu 0 4 142 170 174 154
		f 4 2154 2155 -2153 -2139
		mu 0 4 138 166 170 142
		f 4 2156 2157 -2155 -2137
		mu 0 4 140 168 166 138
		f 4 2158 2159 -2157 2160
		mu 0 4 152 172 168 140
		f 4 2161 -2161 -2136 2162
		mu 0 4 128 152 140 120
		f 4 2163 -2163 -2129 -2142
		mu 0 4 162 136 126 148
		f 4 2164 2165 2166 -2117
		mu 0 4 224 238 294 278
		f 4 2167 -2119 2168 2169
		mu 0 4 236 226 276 286
		f 4 -2159 2170 2171 2172
		mu 0 4 172 152 176 194
		f 4 2173 2174 2175 -2166
		mu 0 4 238 256 308 294
		f 4 -2169 2176 2177 2178
		mu 0 4 286 276 332 344
		f 4 -2118 2179 2180 -2177
		mu 0 4 276 254 322 332
		f 4 -2167 2181 2182 -2180
		mu 0 4 278 294 364 352
		f 4 -2176 2183 2184 -2182
		mu 0 4 294 308 376 364
		f 4 2185 2186 2187 2188
		mu 0 4 418 404 470 482
		f 4 -2141 2189 2190 2191
		mu 0 4 162 188 212 192
		f 4 -2164 -2192 2192 2193
		mu 0 4 136 162 192 164
		f 4 -2162 -2194 2194 -2171
		mu 0 4 152 128 150 176
		f 4 2195 2196 2197 -2187
		mu 0 4 398 408 472 464
		f 4 -2188 2198 2199 2200
		mu 0 4 482 470 554 568
		f 4 2201 -2107 2202 2203
		mu 0 4 434 368 354 418
		f 4 -2198 2204 2205 -2199
		mu 0 4 464 472 556 522
		f 4 2206 2207 2208 -2197
		mu 0 4 408 416 476 472
		f 4 2209 -2201 2210 2211
		mu 0 4 486 482 568 574
		f 4 -2209 2212 2213 -2205
		mu 0 4 472 476 562 556
		f 4 2214 2215 2216 2217
		mu 0 4 268 266 222 220
		f 4 2218 -2218 2219 2220
		mu 0 4 262 268 220 216
		f 4 2221 -2221 2222 -2095
		mu 0 4 252 262 216 208
		f 4 -2184 2223 2224 2225
		mu 0 4 376 308 318 382
		f 4 -2225 2226 2227 2228
		mu 0 4 382 318 320 384
		f 4 -2228 2229 2230 2231
		mu 0 4 384 320 314 380
		f 4 -2231 2232 -2108 2233
		mu 0 4 380 314 306 368
		f 4 2234 2235 -2216 2236
		mu 0 4 256 212 222 266
		f 4 2237 -2150 -2101 -2223
		mu 0 4 216 178 182 208
		f 4 2238 -2148 -2238 -2220
		mu 0 4 220 180 178 216
		f 4 2239 -2146 -2239 -2217
		mu 0 4 222 184 180 220
		f 4 -2190 -2144 -2240 -2236
		mu 0 4 212 188 184 222
		f 4 2240 2241 2242 2243
		mu 0 4 422 420 478 480
		f 4 2244 2245 2246 -2242
		mu 0 4 420 414 474 478
		f 4 -2243 2247 2248 2249
		mu 0 4 480 478 564 566
		f 4 2250 2251 2252 2253
		mu 0 4 416 356 360 422
		f 4 -2247 2254 2255 -2248
		mu 0 4 478 474 558 564
		f 4 2256 2257 2258 -2246
		mu 0 4 414 406 466 474
		f 4 2259 -2250 2260 -2213
		mu 0 4 476 480 566 562
		f 4 -2259 2261 2262 -2255
		mu 0 4 474 466 528 558
		f 4 2263 2264 2265 2266
		mu 0 4 442 444 500 502
		f 4 2267 2268 2269 -2265
		mu 0 4 444 440 494 500
		f 4 -2266 2270 2271 2272
		mu 0 4 502 500 588 590
		f 4 2273 -2226 2274 2275
		mu 0 4 438 376 382 442
		f 4 -2270 2276 2277 -2271
		mu 0 4 500 494 584 588
		f 4 2278 2279 2280 -2269
		mu 0 4 440 434 486 494
		f 4 2281 -2273 2282 2283
		mu 0 4 496 502 590 586
		f 4 -2281 -2212 2284 -2277
		mu 0 4 494 486 574 584
		f 4 2285 2286 2287 2288
		mu 0 4 396 390 448 460
		f 4 2289 2290 2291 -2287
		mu 0 4 426 436 488 484
		f 4 -2288 2292 2293 2294
		mu 0 4 460 448 508 512
		f 4 2295 -2289 2296 -2258
		mu 0 4 406 396 460 466
		f 4 -2292 2297 2298 -2293
		mu 0 4 484 488 578 572
		f 4 2299 2300 2301 -2291
		mu 0 4 436 438 496 488
		f 4 -2297 -2295 2302 -2262
		mu 0 4 466 460 512 528
		f 4 -2302 -2284 2303 -2298
		mu 0 4 488 496 586 578
		f 4 2304 2305 2306 2307
		mu 0 4 248 250 300 296
		f 4 2308 2309 2310 -2306
		mu 0 4 250 242 292 300
		f 4 2311 2312 2313 2314
		mu 0 4 240 198 206 248
		f 4 -2154 2315 -2313 -2121
		mu 0 4 174 170 206 198
		f 4 2316 -2170 2317 -2310
		mu 0 4 242 236 286 292
		f 4 2318 2319 -2252 -2114
		mu 0 4 290 296 360 356
		f 4 -2307 2320 2321 -2320
		mu 0 4 296 300 362 360
		f 4 -2311 2322 2323 -2321
		mu 0 4 300 292 358 362
		f 4 -2318 -2179 2324 -2323
		mu 0 4 292 286 344 358
		f 4 -2160 -2173 2325 2326
		mu 0 4 168 172 194 200
		f 4 -2158 -2327 2327 2328
		mu 0 4 166 168 200 202
		f 4 -2156 -2329 2329 -2316
		mu 0 4 170 166 202 206
		f 4 2330 -2094 -2109 2331
		mu 0 4 234 210 272 288
		f 4 -2185 -2274 -2300 2332
		mu 0 4 364 376 438 436
		f 4 -2178 2333 -2296 2334
		mu 0 4 344 332 396 406
		f 4 -2183 -2333 -2290 2335
		mu 0 4 352 364 436 426
		f 4 -2181 -2336 -2286 -2334
		mu 0 4 332 322 390 396
		f 4 -2234 -2202 -2279 2336
		mu 0 4 380 368 434 440
		f 4 -2301 -2276 -2267 -2282
		mu 0 4 496 438 442 502
		f 4 -2232 -2337 -2268 2337
		mu 0 4 384 380 440 444
		f 4 -2229 -2338 -2264 -2275
		mu 0 4 382 384 444 442
		f 4 -2325 -2335 -2257 2338
		mu 0 4 358 344 406 414
		f 4 -2208 -2254 -2244 -2260
		mu 0 4 476 416 422 480
		f 4 -2324 -2339 -2245 2339
		mu 0 4 362 358 414 420
		f 4 -2322 -2340 -2241 -2253
		mu 0 4 360 362 420 422
		f 4 -2115 -2251 -2207 2340
		mu 0 4 342 356 416 408
		f 4 -2280 -2204 -2189 -2210
		mu 0 4 486 434 418 482
		f 4 -2113 -2341 -2196 2341
		mu 0 4 330 342 408 398
		f 4 -2111 -2342 -2186 -2203
		mu 0 4 354 336 404 418
		f 4 -2128 2342 -2331 -2097
		mu 0 4 190 158 210 234
		f 4 -2326 2343 -2317 2344
		mu 0 4 200 194 236 242
		f 4 -2103 -2315 -2308 -2319
		mu 0 4 290 240 248 296
		f 4 -2328 -2345 -2309 2345
		mu 0 4 202 200 242 250
		f 4 -2330 -2346 -2305 -2314
		mu 0 4 206 202 250 248
		f 4 -2175 -2237 2346 -2224
		mu 0 4 308 256 266 318
		f 4 -2233 2347 -2222 2348
		mu 0 4 306 314 262 252
		f 4 -2230 2349 -2219 -2348
		mu 0 4 314 320 268 262
		f 4 -2227 -2347 -2215 -2350
		mu 0 4 320 318 266 268
		f 4 -2191 -2235 -2174 2350
		mu 0 4 192 212 256 238
		f 4 -2172 2351 -2168 -2344
		mu 0 4 194 176 226 236
		f 4 -2193 -2351 -2165 2352
		mu 0 4 164 192 238 224
		f 4 -2195 -2353 -2116 -2352
		mu 0 4 176 150 196 226
		f 4 -2122 -2312 -2102 2353
		mu 0 4 186 198 240 232
		f 4 -2349 -2098 -2332 -2105
		mu 0 4 306 252 234 288
		f 4 -2125 -2354 -2091 -2343
		mu 0 4 156 186 232 204
		f 4 2354 2355 2356 2357
		mu 0 4 1407 1450 1486 1432
		f 4 2358 2359 2360 -2356
		mu 0 4 1450 1490 1535 1486
		f 4 -2357 2361 2362 2363
		mu 0 4 1441 1489 1459 1419
		f 4 -2361 2364 2365 -2362
		mu 0 4 1489 1547 1497 1459
		f 4 2366 2367 2368 2369
		mu 0 4 1354 1395 1407 1368
		f 4 2370 2371 -2355 -2368
		mu 0 4 1395 1438 1450 1407
		f 4 2372 2373 -2359 -2372
		mu 0 4 1438 1473 1490 1450
		f 4 2374 2375 2376 -2374
		mu 0 4 1473 1492 1531 1490
		f 4 -2377 2377 2378 -2360
		mu 0 4 1490 1531 1596 1535
		f 4 -2379 2379 2380 -2365
		mu 0 4 1547 1608 1534 1497
		f 4 -2381 2381 2382 2383
		mu 0 4 1497 1534 1501 1479
		f 4 -2366 -2384 2384 2385
		mu 0 4 1459 1497 1479 1443
		f 4 -2363 -2386 2386 2387
		mu 0 4 1419 1459 1443 1402
		f 4 2388 -2388 2389 2390
		mu 0 4 1371 1419 1402 1359
		f 4 2391 -2364 -2389 2392
		mu 0 4 1388 1441 1419 1371
		f 4 -2369 -2358 -2392 2393
		mu 0 4 1368 1407 1432 1372
		f 4 2394 2395 2396 2397
		mu 0 4 1394 1435 1429 1390
		f 4 2398 2399 2400 -2396
		mu 0 4 1435 1470 1463 1429
		f 4 -2397 2401 2402 2403
		mu 0 4 1390 1429 1431 1392
		f 4 -2401 2404 2405 -2402
		mu 0 4 1429 1463 1468 1431
		f 4 -2390 2406 2407 2408
		mu 0 4 1359 1402 1394 1347
		f 4 -2387 2409 -2395 -2407
		mu 0 4 1402 1443 1435 1394
		f 4 -2385 2410 -2399 -2410
		mu 0 4 1443 1479 1470 1435
		f 4 -2383 2411 2412 -2411
		mu 0 4 1479 1501 1503 1470
		f 4 -2413 2413 2414 -2400
		mu 0 4 1470 1503 1499 1463
		f 4 -2415 2415 2416 -2405
		mu 0 4 1463 1499 1495 1468
		f 4 -2417 2417 2418 2419
		mu 0 4 1468 1495 1493 1474
		f 4 -2406 -2420 2420 2421
		mu 0 4 1431 1468 1474 1439
		f 4 -2403 -2422 2422 2423
		mu 0 4 1392 1431 1439 1396
		f 4 2424 -2424 2425 2426
		mu 0 4 1342 1392 1396 1355
		f 4 2427 -2404 -2425 2428
		mu 0 4 1339 1390 1392 1342
		f 4 -2408 -2398 -2428 2429
		mu 0 4 1347 1394 1390 1339
		f 4 2430 2431 2432 2433
		mu 0 4 1408 1451 1487 1433
		f 4 2434 2435 2436 -2432
		mu 0 4 1451 1491 1536 1487
		f 4 -2433 2437 2438 2439
		mu 0 4 1440 1488 1458 1418
		f 4 -2437 2440 2441 -2438
		mu 0 4 1488 1546 1496 1458
		f 4 -2426 2442 2443 2444
		mu 0 4 1355 1396 1408 1369
		f 4 -2423 2445 -2431 -2443
		mu 0 4 1396 1439 1451 1408
		f 4 -2421 2446 -2435 -2446
		mu 0 4 1439 1474 1491 1451
		f 4 -2419 2447 2448 -2447
		mu 0 4 1474 1493 1532 1491
		f 4 -2449 2449 2450 -2436
		mu 0 4 1491 1532 1597 1536
		f 4 -2451 2451 2452 -2441
		mu 0 4 1546 1607 1533 1496
		f 4 -2453 2453 2454 2455
		mu 0 4 1496 1533 1500 1478
		f 4 -2442 -2456 2456 2457
		mu 0 4 1458 1496 1478 1442
		f 4 -2439 -2458 2458 2459
		mu 0 4 1418 1458 1442 1401
		f 4 2460 -2460 2461 2462
		mu 0 4 1370 1418 1401 1358
		f 4 2463 -2440 -2461 2464
		mu 0 4 1387 1440 1418 1370
		f 4 -2444 -2434 -2464 2465
		mu 0 4 1369 1408 1433 1373
		f 4 2466 2467 2468 2469
		mu 0 4 1393 1434 1428 1389
		f 4 2470 2471 2472 -2468
		mu 0 4 1434 1469 1462 1428
		f 4 -2469 2473 2474 2475
		mu 0 4 1389 1428 1430 1391
		f 4 -2473 2476 2477 -2474
		mu 0 4 1428 1462 1467 1430
		f 4 -2462 2478 2479 2480
		mu 0 4 1358 1401 1393 1346
		f 4 -2459 2481 -2467 -2479
		mu 0 4 1401 1442 1434 1393
		f 4 -2457 2482 -2471 -2482
		mu 0 4 1442 1478 1469 1434
		f 4 -2455 2483 2484 -2483
		mu 0 4 1478 1500 1502 1469
		f 4 -2485 2485 2486 -2472
		mu 0 4 1469 1502 1498 1462
		f 4 -2487 2487 2488 -2477
		mu 0 4 1462 1498 1494 1467
		f 4 -2489 2489 -2375 2490
		mu 0 4 1467 1494 1492 1473
		f 4 -2478 -2491 -2373 2491
		mu 0 4 1430 1467 1473 1438
		f 4 -2475 -2492 -2371 2492
		mu 0 4 1391 1430 1438 1395
		f 4 2493 -2493 -2367 2494
		mu 0 4 1341 1391 1395 1354
		f 4 2495 -2476 -2494 2496
		mu 0 4 1338 1389 1391 1341
		f 4 -2480 -2470 -2496 2497
		mu 0 4 1346 1393 1389 1338
		f 4 2498 2499 2500 2501
		mu 0 4 966 1040 1041 964
		f 4 2502 2503 2504 -2500
		mu 0 4 1040 1101 1106 1041
		f 4 -2501 2505 2506 2507
		mu 0 4 964 1041 1042 967
		f 4 -2505 2508 2509 -2506
		mu 0 4 1041 1106 1102 1042
		f 4 2510 2511 2512 2513
		mu 0 4 925 969 966 914
		f 4 2514 2515 -2499 -2512
		mu 0 4 969 1039 1040 966
		f 4 2516 2517 -2503 -2516
		mu 0 4 1039 1099 1101 1040
		f 4 2518 2519 2520 -2518
		mu 0 4 1099 1153 1177 1101
		f 4 -2521 2521 2522 -2504
		mu 0 4 1101 1177 1185 1106
		f 4 -2523 2523 2524 -2509
		mu 0 4 1106 1185 1178 1102
		f 4 -2525 2525 2526 2527
		mu 0 4 1102 1178 1154 1100
		f 4 -2510 -2528 2528 2529
		mu 0 4 1042 1102 1100 1043
		f 4 -2507 -2530 2530 2531
		mu 0 4 967 1042 1043 970
		f 4 2532 -2532 2533 2534
		mu 0 4 915 967 970 926
		f 4 2535 -2508 -2533 2536
		mu 0 4 899 964 967 915
		f 4 -2513 -2502 -2536 2537
		mu 0 4 914 966 964 899
		f 4 2538 2539 2540 2541
		mu 0 4 1549 1562 1646 1633
		f 4 2542 2543 2544 -2540
		mu 0 4 1562 1555 1636 1646
		f 4 -2541 2545 2546 2547
		mu 0 4 1635 1645 1561 1554
		f 4 -2545 2548 2549 -2546
		mu 0 4 1645 1632 1548 1561
		f 4 -2418 2550 2551 -2448
		mu 0 4 1493 1495 1549 1532
		f 4 -2416 2552 -2539 -2551
		mu 0 4 1495 1499 1562 1549
		f 4 -2414 2553 -2543 -2553
		mu 0 4 1499 1503 1555 1562
		f 4 -2412 -2382 2554 -2554
		mu 0 4 1503 1501 1534 1555
		f 4 -2555 -2380 2555 -2544
		mu 0 4 1555 1534 1608 1636
		f 4 -2556 -2378 2556 -2549
		mu 0 4 1632 1596 1531 1548
		f 4 -2557 -2376 -2490 2557
		mu 0 4 1548 1531 1492 1494
		f 4 -2550 -2558 -2488 2558
		mu 0 4 1561 1548 1494 1498
		f 4 -2547 -2559 -2486 2559
		mu 0 4 1554 1561 1498 1502
		f 4 2560 -2560 -2484 -2454
		mu 0 4 1533 1554 1502 1500
		f 4 2561 -2548 -2561 -2452
		mu 0 4 1607 1635 1554 1533
		f 4 -2552 -2542 -2562 -2450
		mu 0 4 1532 1549 1633 1597
		f 4 2562 2563 2564 2565
		mu 0 4 1250 1276 1267 1246
		f 4 2566 2567 2568 -2564
		mu 0 4 1276 1310 1305 1267
		f 4 -2565 2569 2570 2571
		mu 0 4 1246 1267 1269 1248
		f 4 -2569 2572 2573 -2570
		mu 0 4 1267 1305 1308 1269
		f 4 2574 2575 2576 -2527
		mu 0 4 1154 1180 1119 1100
		f 4 2577 2578 -2563 -2576
		mu 0 4 1260 1290 1276 1250
		f 4 2579 2580 -2567 -2579
		mu 0 4 1290 1321 1310 1276
		f 4 2581 -2481 2582 -2581
		mu 0 4 1321 1358 1346 1310
		f 4 -2583 -2498 2583 -2568
		mu 0 4 1310 1346 1338 1305
		f 4 -2584 -2497 2584 -2573
		mu 0 4 1305 1338 1341 1308
		f 4 -2585 -2495 2585 2586
		mu 0 4 1308 1341 1354 1314
		f 4 -2574 -2587 2587 2588
		mu 0 4 1269 1308 1314 1282
		f 4 -2571 -2589 2589 2590
		mu 0 4 1248 1269 1282 1252
		f 4 2591 -2591 2592 -2534
		mu 0 4 970 965 909 926
		f 4 2593 -2572 -2592 -2531
		mu 0 4 1043 1044 965 970
		f 4 -2577 -2566 -2594 -2529
		mu 0 4 1100 1119 1044 1043
		f 4 2594 2595 2596 2597
		mu 0 4 1257 1289 1293 1259
		f 4 2598 2599 2600 -2596
		mu 0 4 1289 1324 1326 1293
		f 4 -2597 2601 2602 2603
		mu 0 4 1265 1299 1294 1262
		f 4 -2601 2604 2605 -2602
		mu 0 4 1299 1330 1327 1294
		f 4 2606 2607 2608 -2520
		mu 0 4 1153 1179 1216 1177
		f 4 2609 2610 -2595 -2608
		mu 0 4 1253 1283 1289 1257
		f 4 2611 2612 -2599 -2611
		mu 0 4 1283 1315 1324 1289
		f 4 2613 -2445 2614 -2613
		mu 0 4 1315 1355 1369 1324
		f 4 -2615 -2466 2615 -2600
		mu 0 4 1324 1369 1373 1326
		f 4 -2616 -2465 2616 -2605
		mu 0 4 1330 1387 1370 1327
		f 4 -2617 -2463 -2582 2617
		mu 0 4 1327 1370 1358 1321
		f 4 -2606 -2618 -2580 2618
		mu 0 4 1294 1327 1321 1290
		f 4 -2603 -2619 -2578 2619
		mu 0 4 1262 1294 1290 1260
		f 4 2620 -2620 -2575 -2526
		mu 0 4 1178 1217 1180 1154
		f 4 2621 -2604 -2621 -2524
		mu 0 4 1185 1228 1217 1178
		f 4 -2609 -2598 -2622 -2522
		mu 0 4 1177 1216 1228 1185
		f 4 2622 2623 2624 2625
		mu 0 4 1251 1277 1268 1247
		f 4 2626 2627 2628 -2624
		mu 0 4 1277 1311 1306 1268
		f 4 -2625 2629 2630 2631
		mu 0 4 1247 1268 1270 1249
		f 4 -2629 2632 2633 -2630
		mu 0 4 1268 1306 1309 1270
		f 4 2634 2635 2636 -2511
		mu 0 4 925 904 963 969
		f 4 2637 2638 -2623 -2636
		mu 0 4 1261 1291 1277 1251
		f 4 2639 2640 -2627 -2639
		mu 0 4 1291 1322 1311 1277
		f 4 2641 -2409 2642 -2641
		mu 0 4 1322 1359 1347 1311
		f 4 -2643 -2430 2643 -2628
		mu 0 4 1311 1347 1339 1306
		f 4 -2644 -2429 2644 -2633
		mu 0 4 1306 1339 1342 1309
		f 4 -2645 -2427 -2614 2645
		mu 0 4 1309 1342 1355 1315
		f 4 -2634 -2646 -2612 2646
		mu 0 4 1270 1309 1315 1283
		f 4 -2631 -2647 -2610 2647
		mu 0 4 1249 1270 1283 1253
		f 4 2648 -2648 -2607 -2519
		mu 0 4 1099 1103 1179 1153
		f 4 2649 -2632 -2649 -2517
		mu 0 4 1039 1034 1103 1099
		f 4 -2637 -2626 -2650 -2515
		mu 0 4 969 963 1034 1039
		f 4 2650 2651 2652 2653
		mu 0 4 1256 1288 1292 1258
		f 4 2654 2655 2656 -2652
		mu 0 4 1288 1323 1325 1292
		f 4 -2653 2657 2658 2659
		mu 0 4 1266 1300 1295 1263
		f 4 -2657 2660 2661 -2658
		mu 0 4 1300 1331 1328 1295
		f 4 -2593 2662 2663 -2535
		mu 0 4 926 909 890 915
		f 4 -2590 2664 -2651 -2663
		mu 0 4 1252 1282 1288 1256
		f 4 -2588 2665 -2655 -2665
		mu 0 4 1282 1314 1323 1288
		f 4 -2586 -2370 2666 -2666
		mu 0 4 1314 1354 1368 1323
		f 4 -2667 -2394 2667 -2656
		mu 0 4 1323 1368 1372 1325
		f 4 -2668 -2393 2668 -2661
		mu 0 4 1331 1388 1371 1328
		f 4 -2669 -2391 -2642 2669
		mu 0 4 1328 1371 1359 1322
		f 4 -2662 -2670 -2640 2670
		mu 0 4 1295 1328 1322 1291
		f 4 -2659 -2671 -2638 2671
		mu 0 4 1263 1295 1291 1261
		f 4 2672 -2672 -2635 -2514
		mu 0 4 914 889 904 925
		f 4 2673 -2660 -2673 -2538
		mu 0 4 899 886 889 914
		f 4 -2664 -2654 -2674 -2537
		mu 0 4 915 890 886 899;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "Orion_testShapeDeformed" -p "Orion_test";
	rename -uid "89647F3F-4FAC-9A91-155A-E5A359BB9601";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63126093149185181 0.51441411674022675 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode transform -n "rig_controls";
	rename -uid "B5472F05-4DF5-A7F0-7AB6-13BB8FF2EFAD";
createNode transform -n "CTRL_ship" -p "rig_controls";
	rename -uid "38BF06A9-4C27-3715-06DF-4991AE6D5856";
	setAttr ".rp" -type "double3" 0.0050395080430902794 0 0 ;
	setAttr ".sp" -type "double3" 0.0050395080430902794 0 0 ;
createNode nurbsCurve -n "CTRL_shipShape" -p "CTRL_ship";
	rename -uid "8E2EC88E-4438-CC21-567C-6BADBBF89BCB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-224.7681826300178 0 -1.9297887487488419
		-135.22173835389594 0 -90
		-135.22173835389594 0 -45
		-45.221738353895972 0 -45
		-45.221738353895972 0 -135
		-90.221738353895972 0 -135
		-0.2217383538959723 0 -225
		89.778261646104028 0 -135
		44.778261646104028 0 -135
		44.778261646104028 0 -45
		134.77826164610406 0 -45
		134.77826164610406 0 -90
		224.77826164610403 0 0
		134.77826164610406 0 90
		134.77826164610406 0 45
		44.778261646104028 0 45
		44.778261646104028 0 135
		89.778261646104028 0 135
		-0.2217383538959723 0 225
		-90.221738353895972 0 135
		-45.221738353895972 0 135
		-45.221738353895972 0 45
		-135.22173835389594 0 45
		-135.22173835389594 0 90
		-224.7681826300178 0 -1.9297887487488419
		;
createNode transform -n "CTRL_root" -p "rig_controls";
	rename -uid "B2A8359A-496C-FFDD-FB40-AC9DB0C9AC7D";
createNode nurbsCurve -n "CTRL_rootShape" -p "CTRL_root";
	rename -uid "CDAD72B1-4FD7-BEDA-CCC7-DCAEE9683446";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.9807179779751554 1.8251633654441189e-16 
		-2.9807179779751589 2.5811707849576046e-16 2.5811707849576046e-16 -4.2153717900617806 
		-2.9807179779751554 1.8251633654441189e-16 -2.9807179779751571 -4.2153717900617806 
		1.1340367820279758e-31 -1.5699141370611207e-15 -2.9807179779751554 -1.8251633654441139e-16 
		2.9807179779751518 -4.2225667523526425e-16 -2.5811707849576026e-16 4.2153717900617806 
		2.9807179779751554 -1.8251633654441149e-16 2.98071797797515 4.2153717900617806 6.4823508414467419e-32 
		-7.7653975642903202e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "CTRL_cog" -p "CTRL_root";
	rename -uid "3937C81A-41FE-CC24-C4CD-EC80CBCFD9F3";
	addAttr -ci true -sn "IKFK_Switch" -ln "IKFK_Switch" -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 0 18.570463180541992 0 ;
	setAttr ".sp" -type "double3" 0 18.570463180541992 0 ;
	setAttr -k on ".IKFK_Switch";
createNode nurbsCurve -n "CTRL_cogShape" -p "CTRL_cog";
	rename -uid "26B5BE80-48FA-85E2-110F-B5BB2B0F53D9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-37.462203689676819 18.570463180541992 -0.32163145812480698
		-22.537796310323174 18.570463180541992 -15
		-22.537796310323174 18.570463180541992 -7.5
		-7.5377963103231771 18.570463180541992 -7.5
		-7.5377963103231771 18.570463180541992 -22.5
		-15.037796310323177 18.570463180541992 -22.5
		-0.037796310323177096 18.570463180541992 -37.5
		14.962203689676823 18.570463180541992 -22.5
		7.4622036896768229 18.570463180541992 -22.5
		7.4622036896768229 18.570463180541992 -7.5
		22.462203689676826 18.570463180541992 -7.5
		22.462203689676826 18.570463180541992 -15
		37.462203689676819 18.570463180541992 0
		22.462203689676826 18.570463180541992 15
		22.462203689676826 18.570463180541992 7.5
		7.4622036896768229 18.570463180541992 7.5
		7.4622036896768229 18.570463180541992 22.5
		14.962203689676823 18.570463180541992 22.5
		-0.037796310323177096 18.570463180541992 37.5
		-15.037796310323177 18.570463180541992 22.5
		-7.5377963103231771 18.570463180541992 22.5
		-7.5377963103231771 18.570463180541992 7.5
		-22.537796310323174 18.570463180541992 7.5
		-22.537796310323174 18.570463180541992 15
		-37.462203689676819 18.570463180541992 -0.32163145812480698
		;
createNode transform -n "leg_r_grp" -p "rig_controls";
	rename -uid "76A9642B-4801-36D2-A4B2-0797C094412C";
createNode transform -n "CTRL_leg_r_IKFK" -p "|rig_controls|leg_r_grp";
	rename -uid "4FFBDC9D-4BC3-5C3E-4CBC-E6A4C88F17BB";
	addAttr -ci true -sn "IKFK_Switch" -ln "IKFK_Switch" -min 0 -max 1 -at "double";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -32.152002763582253 10.074788642948377 0.25439295748276702 ;
	setAttr ".sp" -type "double3" -32.152002763582253 10.074788642948377 0.25439295748276702 ;
	setAttr -k on ".IKFK_Switch";
createNode nurbsCurve -n "CTRL_leg_r_IKFKShape" -p "CTRL_leg_r_IKFK";
	rename -uid "2ADD5B46-47C3-3D91-14C0-EDA38175A155";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-32.383422228422532 10.306208107788647 0.25439295748276702
		-32.152002763582253 14.507565393165926 0.25439295748276702
		-31.920583298741956 10.306208107788647 0.25439295748276702
		-27.7192260133647 10.074788642948377 0.25439295748276702
		-31.920583298741956 9.8433691781080999 0.25439295748276702
		-32.152002763582253 5.6420118927308245 0.25439295748276702
		-32.383422228422532 9.8433691781080999 0.25439295748276702
		-36.584779513799802 10.074788642948377 0.25439295748276702
		-32.383422228422532 10.306208107788647 0.25439295748276702
		-32.152002763582253 14.507565393165926 0.25439295748276702
		-31.920583298741956 10.306208107788647 0.25439295748276702
		;
createNode transform -n "CTRL_thigh_r_FK" -p "|rig_controls|leg_r_grp";
	rename -uid "3B46E998-4E45-7823-9704-0FAE5AF4DD1D";
	setAttr ".rp" -type "double3" -8.593197822570799 17.538043975830082 -2.5033950835003505e-06 ;
	setAttr ".sp" -type "double3" -8.593197822570799 17.538043975830082 -2.5033950835003505e-06 ;
createNode nurbsCurve -n "CTRL_thigh_r_FKShape" -p "CTRL_thigh_r_FK";
	rename -uid "E8072AE6-4A6D-3395-CD6C-AC99A279D35C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-17.212925696374271 17.538043975830082 -8.6197303771985538
		-8.593197822570799 17.538043975830082 -12.190138566493349
		0.026530051232670715 17.538043975830082 -8.6197303771985521
		3.5969382405274697 17.538043975830082 -2.5033950841322892e-06
		0.026530051232670715 17.538043975830082 8.6197253704083856
		-8.5931978225707972 17.538043975830082 12.190133559703188
		-17.212925696374271 17.538043975830082 8.6197253704083838
		-20.783333885669066 17.538043975830082 -2.5033950818379861e-06
		-17.212925696374271 17.538043975830082 -8.6197303771985538
		-8.593197822570799 17.538043975830082 -12.190138566493349
		0.026530051232670715 17.538043975830082 -8.6197303771985521
		;
createNode transform -n "CTRL_calf_r_FK" -p "CTRL_thigh_r_FK";
	rename -uid "665AD3CC-4480-12B3-B421-4C8F9D9E5413";
	setAttr ".rp" -type "double3" -8.5931998019067155 8.3203067779542188 0.25439295748277491 ;
	setAttr ".sp" -type "double3" -8.5931998019067155 8.3203067779542188 0.25439295748277491 ;
createNode nurbsCurve -n "CTRL_calf_r_FKShape" -p "CTRL_calf_r_FK";
	rename -uid "B1EC3915-4504-0737-3ED9-CF82C8AFBE1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-14.862092801036511 8.3203067779542188 -6.0145000416470218
		-8.5931998019067155 8.3203067779542188 -8.6111605429523266
		-2.3243068027769196 8.3203067779542188 -6.01450004164702
		0.27235369852838964 8.3203067779542188 0.25439295748277446
		-2.3243068027769196 8.3203067779542188 6.5232859566125709
		-8.5931998019067155 8.3203067779542188 9.1199464579178819
		-14.862092801036511 8.3203067779542188 6.52328595661257
		-17.458753302341819 8.3203067779542188 0.25439295748277613
		-14.862092801036511 8.3203067779542188 -6.0145000416470218
		-8.5931998019067155 8.3203067779542188 -8.6111605429523266
		-2.3243068027769196 8.3203067779542188 -6.01450004164702
		;
createNode transform -n "CTRL_leg_r_pole" -p "|rig_controls|leg_r_grp";
	rename -uid "AE46C0AC-4E78-60D8-3C37-2FBBAB11C3EF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -8.5932 8.32031 30.254396 ;
	setAttr ".sp" -type "double3" -8.5932 8.32031 30.254396 ;
createNode nurbsCurve -n "CTRL_leg_r_poleShape" -p "CTRL_leg_r_pole";
	rename -uid "C2AB7E4E-4924-43F6-8459-8DAC7D77F02D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-7.5931999999999995 9.3203099999999992 31.754396
		-7.5931999999999995 7.3203099999999992 31.754396
		-9.5931999999999995 7.3203099999999992 31.754396
		-9.5931999999999995 9.3203099999999992 31.754396
		-7.5931999999999995 9.3203099999999992 31.754396
		-8.5931999999999995 8.3203099999999992 28.754396
		-7.5931999999999995 7.3203099999999992 31.754396
		-9.5931999999999995 7.3203099999999992 31.754396
		-8.5931999999999995 8.3203099999999992 28.754396
		-9.5931999999999995 9.3203099999999992 31.754396
		;
createNode transform -n "CTRL_foot_r_IK" -p "|rig_controls|leg_r_grp";
	rename -uid "C6C07EB4-4D58-0F98-C7AA-EE99368EB7DC";
	setAttr ".rp" -type "double3" -8.5931988544005176 -0.174261793494221 -2.3633450815796486e-06 ;
	setAttr ".sp" -type "double3" -8.5931988544005176 -0.174261793494221 -2.3633450815796486e-06 ;
createNode nurbsCurve -n "CTRL_foot_r_IKShape" -p "CTRL_foot_r_IK";
	rename -uid "03C18286-4D04-A19B-9602-D1B9E357C946";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-3.5931988544005176 2.325738206505779 -5.0000023633450814
		-3.5931988544005176 2.325738206505779 4.9999976366549186
		-13.593198854400518 2.325738206505779 4.9999976366549186
		-13.593198854400518 2.325738206505779 -5.0000023633450814
		-3.5931988544005176 2.325738206505779 -4.9694275730066275
		-3.5931988544005176 -2.674261793494221 -5.0000023633450814
		-3.5931988544005176 -2.674261793494221 4.9999976366549186
		-13.593198854400518 -2.674261793494221 4.9999976366549186
		-13.593198854400518 -2.674261793494221 -5.0000023633450814
		-3.5931988544005176 -2.674261793494221 -5.0000023633450814
		-3.5931988544005176 -2.674261793494221 4.9999976366549186
		-3.5931988544005176 2.325738206505779 4.9999976366549186
		-13.593198854400518 2.325738206505779 4.9999976366549186
		-13.593198854400518 -2.674261793494221 4.9999976366549186
		-13.593198854400518 -2.674261793494221 -5.0000023633450814
		-13.593198854400518 2.325738206505779 -5.0000023633450814
		;
createNode ikHandle -n "ikHandle2_leg_r" -p "CTRL_foot_r_IK";
	rename -uid "78001371-4688-D7A3-26D1-4D8DA1C64D58";
	setAttr ".t" -type "double3" -8.5932 -0.17426200000000058 7.3609399997565106e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_leg_r_poleVectorConstraint1" -p "ikHandle2_leg_r";
	rename -uid "FBFEEDB3-40C3-8A5C-62E4-20AF9D1BB9FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_leg_r_poleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -9.217690000000001 30.254395403954 ;
	setAttr -k on ".w0";
createNode transform -n "leg_l_grp" -p "rig_controls";
	rename -uid "8E9DC59D-468F-34AC-EDC1-23A386BD4B27";
createNode transform -n "CTRL_leg_l_IKFK" -p "|rig_controls|leg_l_grp";
	rename -uid "2F3EF8B8-4BEE-7AE4-803A-54BBD17184B9";
	addAttr -ci true -sn "IKFK_Switch" -ln "IKFK_Switch" -min 0 -max 1 -at "double";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 32.152002763582253 10.074788642948377 0.25439295748276702 ;
	setAttr ".sp" -type "double3" 32.152002763582253 10.074788642948377 0.25439295748276702 ;
	setAttr -k on ".IKFK_Switch";
createNode nurbsCurve -n "CTRL_leg_l_IKFKShape" -p "CTRL_leg_l_IKFK";
	rename -uid "69E8C71A-4C08-3985-5D80-4C8A835CC50F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.383422228422532 10.306208107788647 0.25439295748276702
		32.152002763582253 14.507565393165926 0.25439295748276702
		31.920583298741956 10.306208107788647 0.25439295748276702
		27.7192260133647 10.074788642948377 0.25439295748276702
		31.920583298741956 9.8433691781080999 0.25439295748276702
		32.152002763582253 5.6420118927308245 0.25439295748276702
		32.383422228422532 9.8433691781080999 0.25439295748276702
		36.584779513799802 10.074788642948377 0.25439295748276702
		32.383422228422532 10.306208107788647 0.25439295748276702
		32.152002763582253 14.507565393165926 0.25439295748276702
		31.920583298741956 10.306208107788647 0.25439295748276702
		;
createNode transform -n "CTRL_thigh_l_FK" -p "|rig_controls|leg_l_grp";
	rename -uid "39694BAE-48BB-C89B-2EB9-75A3857381BA";
	setAttr ".rp" -type "double3" 8.593197822570799 17.538043975830082 -2.5033950835003505e-06 ;
	setAttr ".sp" -type "double3" 8.593197822570799 17.538043975830082 -2.5033950835003505e-06 ;
createNode nurbsCurve -n "CTRL_thigh_l_FKShape" -p "CTRL_thigh_l_FK";
	rename -uid "5ADFA30D-4CB9-0E61-5C1F-D084F54DA0DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.212925696374271 17.538043975830082 -8.6197303771985538
		8.593197822570799 17.538043975830082 -12.190138566493349
		-0.026530051232670715 17.538043975830082 -8.6197303771985521
		-3.5969382405274697 17.538043975830082 -2.5033950841322892e-06
		-0.026530051232670715 17.538043975830082 8.6197253704083856
		8.5931978225707972 17.538043975830082 12.190133559703188
		17.212925696374271 17.538043975830082 8.6197253704083838
		20.783333885669066 17.538043975830082 -2.5033950818379861e-06
		17.212925696374271 17.538043975830082 -8.6197303771985538
		8.593197822570799 17.538043975830082 -12.190138566493349
		-0.026530051232670715 17.538043975830082 -8.6197303771985521
		;
createNode transform -n "CTRL_calf_l_FK" -p "CTRL_thigh_l_FK";
	rename -uid "8CD3C437-41CC-C0B8-41AB-A2A508B3EB0A";
	setAttr ".rp" -type "double3" 8.5931998019067155 8.3203067779542188 0.25439295748277491 ;
	setAttr ".sp" -type "double3" 8.5931998019067155 8.3203067779542188 0.25439295748277491 ;
createNode nurbsCurve -n "CTRL_calf_l_FKShape" -p "CTRL_calf_l_FK";
	rename -uid "79EB9ACC-4BCC-10BC-25A1-72AAABB424B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.862092801036511 8.3203067779542188 -6.0145000416470218
		8.5931998019067155 8.3203067779542188 -8.6111605429523266
		2.3243068027769196 8.3203067779542188 -6.01450004164702
		-0.27235369852838964 8.3203067779542188 0.25439295748277446
		2.3243068027769196 8.3203067779542188 6.5232859566125709
		8.5931998019067155 8.3203067779542188 9.1199464579178819
		14.862092801036511 8.3203067779542188 6.52328595661257
		17.458753302341819 8.3203067779542188 0.25439295748277613
		14.862092801036511 8.3203067779542188 -6.0145000416470218
		8.5931998019067155 8.3203067779542188 -8.6111605429523266
		2.3243068027769196 8.3203067779542188 -6.01450004164702
		;
createNode transform -n "CTRL_foot_l_IK" -p "|rig_controls|leg_l_grp";
	rename -uid "69552C43-4049-8AA2-50D7-BF9F50629743";
	setAttr ".rp" -type "double3" 8.5931988544005176 -0.174261793494221 -2.3633450815796486e-06 ;
	setAttr ".sp" -type "double3" 8.5931988544005176 -0.174261793494221 -2.3633450815796486e-06 ;
createNode nurbsCurve -n "CTRL_foot_l_IKShape" -p "CTRL_foot_l_IK";
	rename -uid "87766B5E-4E13-DF2B-3D31-4CAAF95D2A3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		3.5931988544005176 2.325738206505779 -5.0000023633450814
		3.5931988544005176 2.325738206505779 4.9999976366549186
		13.593198854400518 2.325738206505779 4.9999976366549186
		13.593198854400518 2.325738206505779 -5.0000023633450814
		3.5931988544005176 2.325738206505779 -4.9694275730066275
		3.5931988544005176 -2.674261793494221 -5.0000023633450814
		3.5931988544005176 -2.674261793494221 4.9999976366549186
		13.593198854400518 -2.674261793494221 4.9999976366549186
		13.593198854400518 -2.674261793494221 -5.0000023633450814
		3.5931988544005176 -2.674261793494221 -5.0000023633450814
		3.5931988544005176 -2.674261793494221 4.9999976366549186
		3.5931988544005176 2.325738206505779 4.9999976366549186
		13.593198854400518 2.325738206505779 4.9999976366549186
		13.593198854400518 -2.674261793494221 4.9999976366549186
		13.593198854400518 -2.674261793494221 -5.0000023633450814
		13.593198854400518 2.325738206505779 -5.0000023633450814
		;
createNode ikHandle -n "ikHandle5_leg_l" -p "CTRL_foot_l_IK";
	rename -uid "3255BB94-45C0-4510-0B08-569B90675EA9";
	setAttr ".t" -type "double3" 8.5929588023898642 -0.17430576927642072 1.4004764681274651e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle5_leg_l_poleVectorConstraint1" -p "ikHandle5_leg_l";
	rename -uid "EA4B7D14-4FB5-795A-8FCA-A6B153AFE22F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_leg_l_poleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.00019928427458459907 -9.2176932220458969 30.254396056924016 ;
	setAttr -k on ".w0";
createNode transform -n "CTRL_leg_l_pole" -p "|rig_controls|leg_l_grp";
	rename -uid "A2C6E174-4815-CB1E-CE26-739A3C0F6532";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 8.5931992842745846 8.3203067779541033 30.254396056924016 ;
	setAttr ".sp" -type "double3" 8.5931992842745846 8.3203067779541033 30.254396056924016 ;
createNode nurbsCurve -n "CTRL_leg_l_poleShape" -p "CTRL_leg_l_pole";
	rename -uid "F1100D89-4B5E-FA25-F78C-C29EE46E857B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		9.5931992842745846 9.3203067779541033 31.754396056924016
		9.5931992842745846 7.3203067779541033 31.754396056924016
		7.5931992842745846 7.3203067779541033 31.754396056924016
		7.5931992842745846 9.3203067779541033 31.754396056924016
		9.5931992842745846 9.3203067779541033 31.754396056924016
		8.5931992842745846 8.3203067779541033 28.754396056924016
		9.5931992842745846 7.3203067779541033 31.754396056924016
		7.5931992842745846 7.3203067779541033 31.754396056924016
		8.5931992842745846 8.3203067779541033 28.754396056924016
		7.5931992842745846 9.3203067779541033 31.754396056924016
		;
createNode transform -n "arm_r_grp" -p "rig_controls";
	rename -uid "55CBB77C-4DE0-D0BB-6179-448085808089";
createNode transform -n "CTRL_shoulder_r" -p "|rig_controls|arm_r_grp";
	rename -uid "C9B40AF8-4E48-8DDA-8F78-CC98C7DDE60A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -18.53 41.042999999999985 0.088 ;
	setAttr ".sp" -type "double3" -18.53 41.042999999999985 0.088 ;
createNode bezierCurve -n "CTRL_shoulder_rShape" -p "CTRL_shoulder_r";
	rename -uid "0731956B-47CB-998B-E301-F08D6C77577B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "dataBezierCurve" 
		3 16 0 no 3
		21 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6
		19
		-21.75304186687093 50.307721812101086 -7.4120000000001482
		-21.753041866870902 50.307721812101086 -7.4119999999999964
		-25.753041866871044 50.307721812101086 -7.4120000000000026
		-25.753041866871001 50.307721812101086 -7.4120000000001518
		-25.753041866870966 50.307721812101086 -7.4120000000003001
		-25.753041866870973 52.307721812101086 -6.3382550945226015
		-25.753041866870973 52.307721812101086 0.088000000000048151
		-25.753041866870966 52.307721812101086 6.5142550945226967
		-25.753041866870973 50.307721812101086 7.588000000000001
		-25.753041866870987 50.307721812101086 7.5880000000000738
		-25.753041866871008 50.307721812101086 7.5880000000001466
		-21.753041866870959 50.307721812101086 7.5880000000000187
		-21.753041866870966 50.307721812101086 7.5880000000000098
		-21.753041866870973 50.307721812101086 7.588000000000001
		-21.75304186687098 52.307721812101086 6.5142550945226034
		-21.753041866870973 52.307721812101086 0.088000000000000966
		-21.753041866870973 52.307721812101086 -6.3382550945226024
		-21.753041866870966 50.307721812101086 -7.4120000000003001
		-21.75304186687093 50.307721812101086 -7.4120000000001482
		;
createNode transform -n "CTRL_upperarm_r_FK" -p "|rig_controls|arm_r_grp";
	rename -uid "3E273F10-4DC1-47A9-0453-009B08A3EDCD";
	setAttr ".rp" -type "double3" -18.529869079589844 41.042758941650391 0.088012360036373138 ;
	setAttr ".sp" -type "double3" -18.529869079589844 41.042758941650391 0.088012360036373138 ;
createNode nurbsCurve -n "CTRL_upperarm_r_FKShape" -p "CTRL_upperarm_r_FK";
	rename -uid "3583C1B5-42E7-C2E8-FCAA-A9B16DC91499";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-18.529869079589844 50.446098440345082 -9.3153271386583221
		-18.529869079589844 41.042758941650391 -13.210317890616279
		-18.529869079589844 31.639419442955699 -9.3153271386583185
		-18.529869079589844 27.744428690997733 0.088012360036372445
		-18.529869079589844 31.639419442955699 9.4913518587310666
		-18.529869079589844 41.042758941650391 13.386342610689034
		-18.529869079589844 50.446098440345082 9.4913518587310648
		-18.529869079589844 54.341089192303045 0.088012360036374956
		-18.529869079589844 50.446098440345082 -9.3153271386583221
		-18.529869079589844 41.042758941650391 -13.210317890616279
		-18.529869079589844 31.639419442955699 -9.3153271386583185
		;
createNode transform -n "CTRL_lowerarm_r_FK" -p "CTRL_upperarm_r_FK";
	rename -uid "C3287C60-4D46-5611-1946-2BBF9E19000C";
	setAttr ".rp" -type "double3" -29.08891487121582 41.042758941650391 0.088106952607631683 ;
	setAttr ".sp" -type "double3" -29.08891487121582 41.042758941650391 0.088106952607631683 ;
createNode nurbsCurve -n "CTRL_lowerarm_r_FKShape" -p "CTRL_lowerarm_r_FK";
	rename -uid "C3A46E17-47F4-D28C-B74E-8CB6D1D2D7F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-29.08891487121582 48.878875190562638 -7.7480092963046143
		-29.08891487121582 41.042758941650391 -10.993834922936244
		-29.08891487121582 33.206642692738143 -7.7480092963046125
		-29.08891487121582 29.960817066106507 0.088106952607631114
		-29.08891487121582 33.206642692738143 7.9242232015198768
		-29.08891487121582 41.042758941650391 11.170048828151515
		-29.08891487121582 48.878875190562638 7.9242232015198759
		-29.08891487121582 52.124700817194274 0.088106952607633196
		-29.08891487121582 48.878875190562638 -7.7480092963046143
		-29.08891487121582 41.042758941650391 -10.993834922936244
		-29.08891487121582 33.206642692738143 -7.7480092963046125
		;
createNode transform -n "CTRL_hand_r_FK" -p "CTRL_lowerarm_r_FK";
	rename -uid "ACD25ADE-4252-E112-DB87-71BF0BDB9E37";
	setAttr ".rp" -type "double3" -37.042385101318359 41.037933349609375 -5.3644180297851562e-06 ;
	setAttr ".sp" -type "double3" -37.042385101318359 41.037933349609375 -5.3644180297851562e-06 ;
createNode nurbsCurve -n "CTRL_hand_r_FKShape" -p "CTRL_hand_r_FK";
	rename -uid "E889C4B7-4E22-BB7A-7A46-37B1FEA838CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-37.042385101318359 48.874049598521623 -7.8361216133302758
		-37.042385101318359 41.037933349609375 -11.081947239961906
		-37.042385101318359 33.201817100697127 -7.836121613330274
		-37.042385101318359 29.955991474065492 -5.3644180303596462e-06
		-37.042385101318359 33.201817100697127 7.8361108844942153
		-37.042385101318359 41.037933349609375 11.081936511125853
		-37.042385101318359 48.874049598521623 7.8361108844942144
		-37.042385101318359 52.119875225153258 -5.3644180282739156e-06
		-37.042385101318359 48.874049598521623 -7.8361216133302758
		-37.042385101318359 41.037933349609375 -11.081947239961906
		-37.042385101318359 33.201817100697127 -7.836121613330274
		;
createNode transform -n "CTRL_arm_r_ik" -p "|rig_controls|arm_r_grp";
	rename -uid "97DBAA0D-423C-C7AA-B678-1B9B3EE6E36F";
	setAttr ".rp" -type "double3" -37.042385101317457 41.037933349609375 -5.3644179374146006e-06 ;
	setAttr ".sp" -type "double3" -37.042385101317457 41.037933349609375 -5.3644179374146006e-06 ;
createNode nurbsCurve -n "CTRL_arm_r_ikShape" -p "CTRL_arm_r_ik";
	rename -uid "CD5255E8-4F5C-762A-2227-8C8EDF214648";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-33.292385101317457 50.637933349609376 -9.6000053644179371
		-33.292385101317457 50.637933349609376 9.5999946355820622
		-40.792385101317457 50.637933349609376 9.5999946355820622
		-40.792385101317457 50.637933349609376 -9.6000053644179371
		-33.292385101317457 50.637933349609376 -9.5413017669681057
		-33.292385101317457 31.437933349609374 -9.6000053644179371
		-33.292385101317457 31.437933349609374 9.5999946355820622
		-40.792385101317457 31.437933349609374 9.5999946355820622
		-40.792385101317457 31.437933349609374 -9.6000053644179371
		-33.292385101317457 31.437933349609374 -9.6000053644179371
		-33.292385101317457 31.437933349609374 9.5999946355820622
		-33.292385101317457 50.637933349609376 9.5999946355820622
		-40.792385101317457 50.637933349609376 9.5999946355820622
		-40.792385101317457 31.437933349609374 9.5999946355820622
		-40.792385101317457 31.437933349609374 -9.6000053644179371
		-40.792385101317457 50.637933349609376 -9.6000053644179371
		;
createNode ikHandle -n "ikHandle3_arm_r" -p "CTRL_arm_r_ik";
	rename -uid "9CDD7296-4BA8-C2A3-33C4-74BEB907604D";
	setAttr ".rp" -type "double3" -37.042399999999098 41.037893330078127 -5.364420301456896e-06 ;
	setAttr ".sp" -type "double3" -37.042399999999098 41.037893330078127 -5.364420301456896e-06 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "ikHandle3_arm_r";
	rename -uid "434D2F48-4A14-3A5C-5B71-36A50D2B1455";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_elbow_rW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -37.042399999999098 41.037893330078127 -5.364420301456896e-06 ;
	setAttr ".sp" -type "double3" -37.042399999999098 41.037893330078127 -5.364420301456896e-06 ;
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -10.55899961242676 9.0332031277284841e-07 -30.462612393228913 ;
	setAttr -k on ".w0";
createNode transform -n "CTRL_arm_r_pole" -p "|rig_controls|arm_r_grp";
	rename -uid "0BBA6C31-401C-108D-A053-B7A4A827C1B9";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -29.088899612426758 41.042800903320312 -30.374599993228912 ;
	setAttr ".sp" -type "double3" -29.088899612426758 41.042800903320312 -30.374599993228912 ;
createNode nurbsCurve -n "CTRL_arm_r_poleShape" -p "CTRL_arm_r_pole";
	rename -uid "ADE1B93C-44BB-7435-C933-0E897CEB588F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-30.088899612426758 42.042800903320312 -31.874599993228912
		-30.088899612426758 40.042800903320312 -31.874599993228912
		-28.088899612426758 40.042800903320312 -31.874599993228912
		-28.088899612426758 42.042800903320312 -31.874599993228912
		-30.088899612426758 42.042800903320312 -31.874599993228912
		-29.088899612426758 41.042800903320312 -28.874599993228912
		-30.088899612426758 40.042800903320312 -31.874599993228912
		-28.088899612426758 40.042800903320312 -31.874599993228912
		-29.088899612426758 41.042800903320312 -28.874599993228912
		-28.088899612426758 42.042800903320312 -31.874599993228912
		;
createNode transform -n "CTRL_arm_r_IKFK" -p "|rig_controls|arm_r_grp";
	rename -uid "E2FB7B92-454E-B837-44EC-AA98EF914C55";
	addAttr -ci true -sn "IKFK_Switch" -ln "IKFK_Switch" -min 0 -max 1 -at "double";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".rp" -type "double3" -40.474489106349068 57.953649640653332 0.25439295748276702 ;
	setAttr ".sp" -type "double3" -40.474489106349068 57.953649640653332 0.25439295748276702 ;
	setAttr -k on ".IKFK_Switch";
createNode nurbsCurve -n "CTRL_arm_r_IKFKShape" -p "CTRL_arm_r_IKFK";
	rename -uid "C57797AE-4A89-8CEF-FCFB-D49DB7EA8367";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-40.705908571189354 58.185069105493604 0.25439295748276702
		-40.474489106349068 62.386426390870881 0.25439295748276702
		-40.243069641508768 58.185069105493604 0.25439295748276702
		-36.041712356131512 57.953649640653332 0.25439295748276702
		-40.243069641508768 57.722230175813053 0.25439295748276702
		-40.474489106349068 53.520872890435783 0.25439295748276702
		-40.705908571189354 57.722230175813053 0.25439295748276702
		-44.907265856566625 57.953649640653332 0.25439295748276702
		-40.705908571189354 58.185069105493604 0.25439295748276702
		-40.474489106349068 62.386426390870881 0.25439295748276702
		-40.243069641508768 58.185069105493604 0.25439295748276702
		;
createNode transform -n "arm_l_grp" -p "rig_controls";
	rename -uid "C66B769A-412E-A9D8-17D6-ED91BF718C14";
createNode transform -n "CTRL_shoulder_l" -p "|rig_controls|arm_l_grp";
	rename -uid "A89C4F21-4EE3-3CBC-933A-6693B3B299E7";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0.25681711619216685 0 ;
	setAttr ".rp" -type "double3" 18.53 41.042999999999985 0.088 ;
	setAttr ".sp" -type "double3" 18.53 41.042999999999985 0.088 ;
createNode bezierCurve -n "CTRL_shoulder_lShape" -p "CTRL_shoulder_l";
	rename -uid "5489400F-4B42-AF01-15D3-F88F4AC794CA";
	setAttr -k off ".v";
	setAttr ".cc" -type "dataBezierCurve" 
		3 16 0 no 3
		21 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6
		19
		21.75304186687093 50.307721812101086 -7.4120000000001482
		21.753041866870902 50.307721812101086 -7.4119999999999964
		25.753041866871044 50.307721812101086 -7.4120000000000026
		25.753041866871001 50.307721812101086 -7.4120000000001518
		25.753041866870966 50.307721812101086 -7.4120000000003001
		25.753041866870973 52.307721812101086 -6.3382550945226015
		25.753041866870973 52.307721812101086 0.088000000000048151
		25.753041866870966 52.307721812101086 6.5142550945226967
		25.753041866870973 50.307721812101086 7.588000000000001
		25.753041866870987 50.307721812101086 7.5880000000000738
		25.753041866871008 50.307721812101086 7.5880000000001466
		21.753041866870959 50.307721812101086 7.5880000000000187
		21.753041866870966 50.307721812101086 7.5880000000000098
		21.753041866870973 50.307721812101086 7.588000000000001
		21.75304186687098 52.307721812101086 6.5142550945226034
		21.753041866870973 52.307721812101086 0.088000000000000966
		21.753041866870973 52.307721812101086 -6.3382550945226024
		21.753041866870966 50.307721812101086 -7.4120000000003001
		21.75304186687093 50.307721812101086 -7.4120000000001482
		;
createNode transform -n "CTRL_arm_l_IKFK" -p "|rig_controls|arm_l_grp";
	rename -uid "735BF8AE-4E06-331D-3733-E8A4795AFAA4";
	addAttr -ci true -sn "IKFK_Switch" -ln "IKFK_Switch" -min 0 -max 1 -at "double";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".rp" -type "double3" 40.474489106349068 57.953649640653332 0.25439295748276702 ;
	setAttr ".sp" -type "double3" 40.474489106349068 57.953649640653332 0.25439295748276702 ;
	setAttr -k on ".IKFK_Switch";
createNode nurbsCurve -n "CTRL_arm_l_IKFKShape" -p "CTRL_arm_l_IKFK";
	rename -uid "9D36D4F5-4098-3C0D-FAD8-9D8F4007D7BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		40.705908571189354 58.185069105493604 0.25439295748276702
		40.474489106349068 62.386426390870881 0.25439295748276702
		40.243069641508768 58.185069105493604 0.25439295748276702
		36.041712356131512 57.953649640653332 0.25439295748276702
		40.243069641508768 57.722230175813053 0.25439295748276702
		40.474489106349068 53.520872890435783 0.25439295748276702
		40.705908571189354 57.722230175813053 0.25439295748276702
		44.907265856566625 57.953649640653332 0.25439295748276702
		40.705908571189354 58.185069105493604 0.25439295748276702
		40.474489106349068 62.386426390870881 0.25439295748276702
		40.243069641508768 58.185069105493604 0.25439295748276702
		;
createNode transform -n "CTRL_upperarm_l_FK" -p "|rig_controls|arm_l_grp";
	rename -uid "D731162E-4195-D6CD-91DD-EBBDEDFEE481";
	setAttr ".rp" -type "double3" 18.529869079589844 41.042758941650391 0.088012360036373138 ;
	setAttr ".sp" -type "double3" 18.529869079589844 41.042758941650391 0.088012360036373138 ;
createNode nurbsCurve -n "CTRL_upperarm_l_FKShape" -p "CTRL_upperarm_l_FK";
	rename -uid "C3C6C707-4F03-E72E-DEC5-B599FEE04917";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode transform -n "CTRL_lowerarm_l_FK" -p "CTRL_upperarm_l_FK";
	rename -uid "C06AD9CF-414F-CD53-ECD1-C9AF8DA810FC";
	setAttr ".rp" -type "double3" 29.08891487121582 41.042758941650391 0.088106952607631683 ;
	setAttr ".sp" -type "double3" 29.08891487121582 41.042758941650391 0.088106952607631683 ;
createNode nurbsCurve -n "CTRL_lowerarm_l_FKShape" -p "CTRL_lowerarm_l_FK";
	rename -uid "4811407E-40CF-8110-41F2-4EB8B4DF5078";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		29.08891487121582 48.878875190562638 -7.7480092963046143
		29.08891487121582 41.042758941650391 -10.993834922936244
		29.08891487121582 33.206642692738143 -7.7480092963046125
		29.08891487121582 29.960817066106507 0.088106952607631114
		29.08891487121582 33.206642692738143 7.9242232015198768
		29.08891487121582 41.042758941650391 11.170048828151515
		29.08891487121582 48.878875190562638 7.9242232015198759
		29.08891487121582 52.124700817194274 0.088106952607633196
		29.08891487121582 48.878875190562638 -7.7480092963046143
		29.08891487121582 41.042758941650391 -10.993834922936244
		29.08891487121582 33.206642692738143 -7.7480092963046125
		;
createNode transform -n "CTRL_hand_l_FK" -p "CTRL_lowerarm_l_FK";
	rename -uid "7AA7BA18-4D0B-7885-6F2A-C89693720454";
	setAttr ".rp" -type "double3" 37.042385101318359 41.037933349609375 -5.3644180297851562e-06 ;
	setAttr ".sp" -type "double3" 37.042385101318359 41.037933349609375 -5.3644180297851562e-06 ;
createNode nurbsCurve -n "CTRL_hand_l_FKShape" -p "CTRL_hand_l_FK";
	rename -uid "489BC59B-4C59-7056-1B89-BB9E7DC17A0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		37.042385101318359 48.874049598521623 -7.8361216133302758
		37.042385101318359 41.037933349609375 -11.081947239961906
		37.042385101318359 33.201817100697127 -7.836121613330274
		37.042385101318359 29.955991474065492 -5.3644180303596462e-06
		37.042385101318359 33.201817100697127 7.8361108844942153
		37.042385101318359 41.037933349609375 11.081936511125853
		37.042385101318359 48.874049598521623 7.8361108844942144
		37.042385101318359 52.119875225153258 -5.3644180282739156e-06
		37.042385101318359 48.874049598521623 -7.8361216133302758
		37.042385101318359 41.037933349609375 -11.081947239961906
		37.042385101318359 33.201817100697127 -7.836121613330274
		;
createNode transform -n "CTRL_arm_l_ik" -p "|rig_controls|arm_l_grp";
	rename -uid "4E3FEC67-49F1-0939-FE1F-B0B495963C0F";
	setAttr ".rp" -type "double3" 37.042385101316853 41.037933349609375 -5.3644178947820365e-06 ;
	setAttr ".sp" -type "double3" 37.042385101316853 41.037933349609375 -5.3644178947820365e-06 ;
createNode nurbsCurve -n "CTRL_arm_l_ikShape" -p "CTRL_arm_l_ik";
	rename -uid "9117ED5F-41E3-E5DE-C765-C79C82C02E95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		33.292385101316853 50.637933349609376 -9.6000053644178944
		33.292385101316853 50.637933349609376 9.5999946355821049
		40.792385101316853 50.637933349609376 9.5999946355821049
		40.792385101316853 50.637933349609376 -9.6000053644178944
		33.292385101316853 50.637933349609376 -9.5413017669680631
		33.292385101316853 31.437933349609374 -9.6000053644178944
		33.292385101316853 31.437933349609374 9.5999946355821049
		40.792385101316853 31.437933349609374 9.5999946355821049
		40.792385101316853 31.437933349609374 -9.6000053644178944
		33.292385101316853 31.437933349609374 -9.6000053644178944
		33.292385101316853 31.437933349609374 9.5999946355821049
		33.292385101316853 50.637933349609376 9.5999946355821049
		40.792385101316853 50.637933349609376 9.5999946355821049
		40.792385101316853 31.437933349609374 9.5999946355821049
		40.792385101316853 31.437933349609374 -9.6000053644178944
		40.792385101316853 50.637933349609376 -9.6000053644178944
		;
createNode ikHandle -n "ikHandle4_arm_l" -p "CTRL_arm_l_ik";
	rename -uid "0B796783-4F2D-B716-0F94-63A9CC9D2693";
	setAttr ".rp" -type "double3" 37.042515396424946 41.038222615242994 0.5552278375488312 ;
	setAttr ".sp" -type "double3" 37.042515396424946 41.038222615242994 0.5552278375488312 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle4_arm_l_poleVectorConstraint1" -p "ikHandle4_arm_l";
	rename -uid "A276ED3C-452F-74BB-FA47-31B075713ACD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_arm_l_poleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 37.042515396424946 41.038222615242994 0.5552278375488312 ;
	setAttr ".sp" -type "double3" 37.042515396424946 41.038222615242994 0.5552278375488312 ;
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 10.558914871215819 -0.00024105834959442518 -30.462599725008012 ;
	setAttr -k on ".w0";
createNode transform -n "CTRL_arm_l_pole" -p "|rig_controls|arm_l_grp";
	rename -uid "443BA441-4E8D-E4C8-1B24-549F67B1CC53";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 29.08891487121582 41.042758941650391 -30.374599725008011 ;
	setAttr ".sp" -type "double3" 29.08891487121582 41.042758941650391 -30.374599725008011 ;
createNode nurbsCurve -n "CTRL_arm_l_poleShape" -p "CTRL_arm_l_pole";
	rename -uid "062CC073-4121-BA64-49FB-179B35396158";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		28.08891487121582 42.042758941650391 -31.874599725008011
		28.08891487121582 40.042758941650391 -31.874599725008011
		30.08891487121582 40.042758941650391 -31.874599725008011
		30.08891487121582 42.042758941650391 -31.874599725008011
		28.08891487121582 42.042758941650391 -31.874599725008011
		29.08891487121582 41.042758941650391 -28.874599725008011
		28.08891487121582 40.042758941650391 -31.874599725008011
		30.08891487121582 40.042758941650391 -31.874599725008011
		29.08891487121582 41.042758941650391 -28.874599725008011
		30.08891487121582 42.042758941650391 -31.874599725008011
		;
createNode transform -n "head_grp" -p "rig_controls";
	rename -uid "62AEE909-469C-38CA-0C88-129E6DC8B415";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5917603377602063e-06 47.043476104736328 0.088109545409679413 1;
createNode transform -n "CTRL_head" -p "head_grp";
	rename -uid "B7183C22-4AA2-FEF8-6810-0A8F9396E603";
	addAttr -ci true -sn "Orient" -ln "Orient" -min 0 -max 1 -en "Global:Local" -at "enum";
	setAttr -k on ".Orient";
createNode nurbsCurve -n "CTRL_headShape" -p "CTRL_head";
	rename -uid "16C6E90B-4344-D1D6-1B89-F4B5180BF00A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.672213004877387 52.908901214599609 -15.906695295466246
		-1.9492947102214931e-05 52.908901214599609 -22.398346548729506
		-15.672251990771594 52.908901214599609 -15.906695295466243
		-22.163903244034866 52.908901214599609 -0.23446279764175529
		-15.672251990771594 52.908901214599609 15.437769700182736
		-1.949294710579225e-05 52.908901214599609 21.929420953446012
		15.672213004877387 52.908901214599609 15.437769700182734
		22.163864258140659 52.908901214599609 -0.23446279764175113
		15.672213004877387 52.908901214599609 -15.906695295466246
		-1.9492947102214931e-05 52.908901214599609 -22.398346548729506
		-15.672251990771594 52.908901214599609 -15.906695295466243
		;
createNode parentConstraint -n "head_grp_parentConstraint1" -p "head_grp";
	rename -uid "8ACD7263-4093-DB46-4684-9CAAD9701ECD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_chest_IKW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "CTRL_chest_FKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 8.8565303713039601e-07 9.3842391967773509 0.088004574463411686 ;
	setAttr ".tg[1].tot" -type "double3" 1.5917603377602061e-06 9.3842391967773509 0.088109545409679399 ;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-15 -1.3877787807814457e-17 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "torso_grp" -p "rig_controls";
	rename -uid "07716F27-4831-A7B2-3EC0-01A339E006D3";
createNode transform -n "CTRL_pelvis_IK" -p "torso_grp";
	rename -uid "D33261DB-4B25-7A0F-4D04-8C9CB575D026";
	setAttr ".rp" -type "double3" -6.8347105752764037e-08 18.570463180541992 -3.0994415283203125e-06 ;
	setAttr ".rpt" -type "double3" -1.4823076576950256e-21 0 -7.9409338805090657e-23 ;
	setAttr ".sp" -type "double3" -6.8347105752764037e-08 18.570463180541992 -3.0994415283203125e-06 ;
createNode nurbsCurve -n "CTRL_pelvis_IKShape" -p "CTRL_pelvis_IK";
	rename -uid "1CDD3213-4E1D-E036-803F-F7B89C6B0E6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.618612139068688 21.737829039871865 -15.515513272287834
		-6.8347334530831965e-08 7.2529241953755061 -21.942248013018379
		-18.618612275762132 21.737829039871862 -15.515513272287786
		-26.330693964639785 20.162039706226238 -3.0994414979571002e-06
		-18.618612275762466 20.810795129824115 15.515507073404599
		-6.8347249246909177e-08 10.96105983556655 21.942241814135397
		18.618612139068546 20.810795129824101 15.515507073404597
		26.330693827945012 20.162039706226242 -3.0994413704590883e-06
		18.618612139068688 21.737829039871865 -15.515513272287834
		-6.8347334530831965e-08 7.2529241953755061 -21.942248013018379
		-18.618612275762132 21.737829039871862 -15.515513272287786
		;
createNode transform -n "CTRL_spine_IK" -p "torso_grp";
	rename -uid "A35E18ED-4756-0A28-E0C5-3E9634F14481";
	setAttr ".t" -type "double3" -1.4823076576950256e-21 0 0 ;
	setAttr ".rp" -type "double3" 0 26.538120269775391 0 ;
	setAttr ".sp" -type "double3" 0 26.538120269775391 0 ;
createNode nurbsCurve -n "CTRL_spine_IKShape" -p "CTRL_spine_IK";
	rename -uid "E49F72CA-44D8-5DFD-569D-4A8B6D0F9A68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.868135404047296 26.538120269775391 -15.868135404047299
		1.3741107954299598e-15 26.538120269775391 -22.440932297976357
		-15.868135404047296 26.538120269775391 -15.868135404047292
		-22.440932297976367 26.538120269775391 -1.1633418930987783e-15
		-15.868135404047296 26.538120269775391 15.868135404047296
		-2.2479235363446538e-15 26.538120269775391 22.440932297976367
		15.868135404047296 26.538120269775391 15.868135404047292
		22.440932297976367 26.538120269775391 3.0602620140794173e-15
		15.868135404047296 26.538120269775391 -15.868135404047299
		1.3741107954299598e-15 26.538120269775391 -22.440932297976357
		-15.868135404047296 26.538120269775391 -15.868135404047292
		;
createNode transform -n "CTRL_chest_IK" -p "torso_grp";
	rename -uid "BBCC572D-49AE-8DAF-07CC-8CAAD99534C8";
	setAttr ".t" -type "double3" -4.4408935808082839e-15 -4.9737991503207013e-14 -4.2632564145606011e-14 ;
	setAttr ".rp" -type "double3" 7.0610730062981168e-07 37.659236907958984 0.00010497094626771286 ;
	setAttr ".sp" -type "double3" 7.0610730062981168e-07 37.659236907958984 0.00010497094626771286 ;
createNode nurbsCurve -n "CTRL_chest_IKShape" -p "CTRL_chest_IK";
	rename -uid "1AE25AE0-448A-3839-F58C-8FBF17E24228";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.868136110154596 37.659236907958984 -15.868030433101032
		7.0610730200392252e-07 29.754857373050712 -22.440827327030089
		-15.868134697939995 37.659236907958984 -15.868030433101024
		-27.958705647457197 37.659236907958984 0.00010497094626654953
		-15.868134697939995 37.659236907958984 15.868240374993563
		7.0610729838188809e-07 29.754857373050712 22.441037268922635
		15.868136110154596 37.659236907958984 15.86824037499356
		27.958707059671791 37.659236907958984 0.00010497094627077312
		15.868136110154596 37.659236907958984 -15.868030433101032
		7.0610730200392252e-07 29.754857373050712 -22.440827327030089
		-15.868134697939995 37.659236907958984 -15.868030433101024
		;
createNode transform -n "CTRL_pelvis_FK" -p "torso_grp";
	rename -uid "0092E9B2-40C3-5D91-B8F3-BE977B5831D4";
	setAttr ".rp" -type "double3" 0 18.570463180541992 0 ;
	setAttr ".sp" -type "double3" 0 18.570463180541992 0 ;
createNode nurbsCurve -n "CTRL_pelvis_FKShape" -p "CTRL_pelvis_FK";
	rename -uid "B7E2A7F6-4567-FDC1-D92B-898C0C57985D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63126156005255 18.570463180541992 -17.631261560052554
		1.5267897726999553e-15 18.570463180541992 -24.934369219973725
		-17.63126156005255 18.570463180541992 -17.631261560052547
		-24.934369219973735 18.570463180541992 -1.2926021034430867e-15
		-17.63126156005255 18.570463180541992 17.63126156005255
		-2.4976928181607259e-15 18.570463180541992 24.934369219973739
		17.63126156005255 18.570463180541992 17.631261560052547
		24.934369219973735 18.570463180541992 3.4002911267549075e-15
		17.63126156005255 18.570463180541992 -17.631261560052554
		1.5267897726999553e-15 18.570463180541992 -24.934369219973725
		-17.63126156005255 18.570463180541992 -17.631261560052547
		;
createNode transform -n "CTRL_spine_FK" -p "CTRL_pelvis_FK";
	rename -uid "82E2C547-4676-C594-BEB0-EFB044DB711A";
	setAttr ".rp" -type "double3" 0 26.538120269775391 0 ;
	setAttr ".sp" -type "double3" 0 26.538120269775391 0 ;
createNode nurbsCurve -n "CTRL_spine_FKShape" -p "CTRL_spine_FK";
	rename -uid "E642BBB2-47DD-CDB1-81EE-E2A2CE55B954";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CTRL_chest_FK" -p "CTRL_spine_FK";
	rename -uid "4C50DB6F-45EB-C2D0-CCAF-03910D93C64D";
	setAttr ".rp" -type "double3" 0 37.659236907958984 0 ;
	setAttr ".sp" -type "double3" 0 37.659236907958984 0 ;
createNode nurbsCurve -n "CTRL_chest_FKShape" -p "CTRL_chest_FK";
	rename -uid "4E819B9E-4547-AB51-9BF5-9AA6FF3C3530";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63126156005255 37.659236907958984 -17.631261560052554
		1.5267897726999553e-15 37.659236907958984 -24.934369219973725
		-17.63126156005255 37.659236907958984 -17.631261560052547
		-24.934369219973735 37.659236907958984 -1.2926021034430867e-15
		-17.63126156005255 37.659236907958984 17.63126156005255
		-2.4976928181607259e-15 37.659236907958984 24.934369219973739
		17.63126156005255 37.659236907958984 17.631261560052547
		24.934369219973735 37.659236907958984 3.4002911267549075e-15
		17.63126156005255 37.659236907958984 -17.631261560052554
		1.5267897726999553e-15 37.659236907958984 -24.934369219973725
		-17.63126156005255 37.659236907958984 -17.631261560052547
		;
createNode ikHandle -n "ikHandle_spine" -p "torso_grp";
	rename -uid "939B2A2B-488E-7751-A33D-D8A1655F5A85";
	setAttr ".t" -type "double3" 5.7022125724337945e-09 37.659236907959119 -0.088007674614085554 ;
	setAttr ".r" -type "double3" -0.0002397557476295522 -0.53729906304308384 89.999994592616346 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dwua" 5;
	setAttr ".dwuv" -type "double3" 0 0 1 ;
	setAttr ".dwve" -type "double3" 0 0 1 ;
	setAttr ".dtce" yes;
createNode transform -n "rig_systems";
	rename -uid "B3E3575F-498B-321F-31B0-02BCFF8719BC";
createNode transform -n "DO_NOT_TOUCH" -p "rig_systems";
	rename -uid "091E4589-44AD-B193-CB0E-5C9DD1426A57";
createNode transform -n "spine_group" -p "DO_NOT_TOUCH";
	rename -uid "3A084A58-4A15-25F3-6A0D-EC9AA1B1DA0F";
	setAttr ".v" no;
createNode joint -n "chest_ctrljnt" -p "spine_group";
	rename -uid "14471EA1-47DF-0D53-3926-AA946DE089ED";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7086065895455249e-08 37.659236907958984 -0.088007673621177673 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7086065895455249e-08 37.659236907958984 -0.088007673621177673 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "chest_ctrljnt_parentConstraint1" -p "chest_ctrljnt";
	rename -uid "583DEDA4-4582-6375-B2D5-4E88136A37B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_chest_IKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.2319336652526545e-07 0 -0.088112644567445386 ;
	setAttr -k on ".w0";
createNode joint -n "mid_ctrljnt" -p "spine_group";
	rename -uid "8C08FA68-42E6-A9BF-CC35-AD8C0445BF65";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.3921558067740989e-07 26.538120269775391 -4.5597553253173828e-06 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.3921558067740989e-07 26.538120269775391 -4.5597553253173828e-06 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "mid_ctrljnt_parentConstraint1" -p "mid_ctrljnt";
	rename -uid "C9504EDD-40A7-9E03-0C6B-D1849B5D3B41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_spine_IKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3921558067740989e-07 0 -4.5597553253173828e-06 ;
	setAttr -k on ".w0";
createNode joint -n "pelvis_ctrljnt" -p "spine_group";
	rename -uid "DACEC269-4CAF-8C7B-D96C-689F37762A03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.8347105752764037e-08 18.570463180541992 -3.0994415283203125e-06 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.8347105752764037e-08 18.570463180541992 -3.0994415283203125e-06 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "pelvis_ctrljnt1_parentConstraint1" -p "pelvis_ctrljnt";
	rename -uid "D9A00CE1-4B94-2E82-27C6-E19BEE7D0D2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_pelvis_IKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "spine_ik_curve" -p "spine_group";
	rename -uid "3B3E9F0A-498B-B5FB-C882-0DA95BCB50AC";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "spine_ik_curveShape" -p "spine_ik_curve";
	rename -uid "58D76803-4D4B-9EA7-EF24-5CA03D54691A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_ik_curveShapeOrig" -p "spine_ik_curve";
	rename -uid "5A856D29-4279-AC27-F87D-B28076287938";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-6.8347105752764566e-08 18.570463180542138 -3.0994415283203366e-06
		-1.5805309624047104e-07 20.963560581207442 0.0073298849165439823
		-3.374650772158826e-07 25.749755382537934 0.021995853632688484
		-1.2387907203740684e-07 33.689409732818596 -0.051339831203222185
		-1.7086069448168898e-08 37.65923690795892 -0.088007673621177521
		;
createNode joint -n "pelvis_IK" -p "spine_group";
	rename -uid "14F87120-4A5D-23E1-9C0E-75B1B0C5F069";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 1.5352472168984194e-21 3.705769144237564e-22 ;
	setAttr ".r" -type "double3" -1.4837004097464937e-05 -3.4642335539360267e-21 -1.0301845771564854e-27 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" -2.1445260678376599e-08 0.9999999999999829 -1.8328020158076637e-07 0
		 -0.9999999999999829 -2.1445227149641255e-08 1.832802055112551e-07 0 1.8328020158076642e-07 1.8328020551125504e-07 0.99999999999996636 0
		 -6.8347105752764566e-08 18.570463180542138 -3.0994415283203366e-06 1;
	setAttr ".bps" -type "matrix" -2.1445260678376615e-08 0.99999999999998346 -1.8328020158076644e-07 0
		 -0.9999999999999829 -2.1445227149641268e-08 1.8328020551125518e-07 0 1.8328020158076647e-07 1.8328020551125494e-07 0.99999999999996558 0
		 -6.834710575276409e-08 18.570463180541992 -3.0994415283203117e-06 1;
	setAttr ".radi" 2;
createNode joint -n "spine_IK" -p "pelvis_IK";
	rename -uid "4CE08A35-4FF5-4351-47AB-BE86FAA65EC7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 0.99996869391300547 -4.2867880213181727e-08 -0.007912723546052422 0
		 -1.3685654227878144e-13 -0.99999999998532507 5.4175712206805315e-06 0 -0.0079127235461685409 -5.4174016166416901e-06 -0.99996869389833098 0
		 7.967657089233537 1.8603368209282845e-15 3.705769144237564e-22 1;
	setAttr ".bps" -type "matrix" 1.9973045669338393e-08 0.99996869246274445 -0.0079129068205238164 0
		 0.99999999998630051 2.1446082892429567e-08 5.2342910151718081e-06 0 5.2342968432659333e-06 -0.0079129068205199462 -0.99996869244904407 0
		 -2.3921559088762963e-07 26.538120269775394 -4.5597553256808734e-06 1;
	setAttr ".radi" 2;
createNode joint -n "chest_IK" -p "spine_IK";
	rename -uid "100C888B-4438-ACD4-C267-E4AC46CA0400";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 0.99985052083109294 7.235034474235017e-08 -0.017289765579294888 0
		 1.4470110702956069e-07 -0.99999999999123923 4.1833495170832373e-06 0 -0.017289765578840752 -4.1852260416937811e-06 -0.99985052082234405 0
		 11.121464823857895 1.1602274558476366e-15 -3.8719027983802334e-14 1;
	setAttr ".bps" -type "matrix" 1.8206396857043997e-09 0.99995603027764057 0.0093775002736680747 1.0408340855860843e-17
		 -0.99999999995563971 9.0148039197484345e-08 -9.4186545681595188e-06 -4.1359030627651384e-25
		 -9.4190857957959971e-06 -0.0093775002732349438 0.99995603023328317 5.4210108624275222e-20
		 -1.7086066051184142e-08 37.659236907958956 -0.088007674614207665 0.99999999999999978;
	setAttr ".radi" 2;
createNode orientConstraint -n "chest_IK_orientConstraint1" -p "chest_IK";
	rename -uid "19B906B4-4909-8FF7-AB8C-91B7D1B53EAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_chest_IKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.53729906302045505 0.00023980645537115529 -89.999994592854122 ;
	setAttr ".o" -type "double3" -0.00023975574762967689 -0.53729906304308384 89.999994592616375 ;
	setAttr ".rsrr" -type "double3" 5.5173828725626983e-33 4.9696166897867449e-17 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "spine_IK";
	rename -uid "CF686CD9-4592-0962-FDDB-10B2337F5600";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".hd" yes;
createNode orientConstraint -n "spine_IK_orientConstraint1" -p "spine_IK";
	rename -uid "EF7403C1-46D4-92FB-260E-70B97DA8A706";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_spine_IKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.54661910407444 -0.00031473965744825764 89.999998738227731 ;
	setAttr ".o" -type "double3" 180.00000000116592 0.45338089591864228 89.999998738188225 ;
	setAttr ".rsrr" -type "double3" 0.00031475080795524175 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "pelvis_FK" -p "spine_group";
	rename -uid "CF98C8EC-4218-E58B-2BB2-6A92EFD2A3FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" -2.1445260678376599e-08 0.9999999999999829 -1.8328020158076637e-07 0
		 -0.9999999999999829 -2.1445227149641255e-08 1.832802055112551e-07 0 1.8328020158076642e-07 1.8328020551125504e-07 0.99999999999996636 0
		 -6.8347105752764566e-08 18.570463180542138 -3.0994415283203366e-06 1;
	setAttr ".bps" -type "matrix" -2.1445260678376615e-08 0.99999999999998346 -1.8328020158076644e-07 0
		 -0.9999999999999829 -2.1445227149641268e-08 1.8328020551125518e-07 0 1.8328020158076647e-07 1.8328020551125494e-07 0.99999999999996558 0
		 -6.834710575276409e-08 18.570463180541992 -3.0994415283203117e-06 1;
	setAttr ".radi" 2;
createNode joint -n "spine_FK" -p "pelvis_FK";
	rename -uid "19FD0F8D-4F05-F768-ADA5-AC85FCADF06F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 0.99996869391300547 -4.2867880213181727e-08 -0.007912723546052422 0
		 -1.3685654227878144e-13 -0.99999999998532507 5.4175712206805315e-06 0 -0.0079127235461685409 -5.4174016166416901e-06 -0.99996869389833098 0
		 7.967657089233537 1.8603368738678437e-15 3.705769144237564e-22 1;
	setAttr ".bps" -type "matrix" 1.9973045669338393e-08 0.99996869246274445 -0.0079129068205238164 0
		 0.99999999998630051 2.1446082892429567e-08 5.2342910151718081e-06 0 5.2342968432659333e-06 -0.0079129068205199462 -0.99996869244904407 0
		 -2.3921559088762963e-07 26.538120269775394 -4.5597553256808734e-06 1;
	setAttr ".radi" 2;
createNode joint -n "chest_FK" -p "spine_FK";
	rename -uid "A6ABC7A0-4A60-1877-35C1-DDAC02097A88";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 0.99985052083109294 7.2350344742350091e-08 -0.017289765579294888 0
		 1.4470110702956061e-07 -0.99999999999123923 4.1833495170832373e-06 0 -0.017289765578840752 -4.1852260416937811e-06 -0.99985052082234405 0
		 11.121464823857888 1.1602273499685181e-15 -3.8691272408186705e-14 1;
	setAttr ".bps" -type "matrix" 1.8206396857043997e-09 0.99995603027764057 0.0093775002736680747 1.0408340855860843e-17
		 -0.99999999995563971 9.0148039197484345e-08 -9.4186545681595188e-06 -4.1359030627651384e-25
		 -9.4190857957959971e-06 -0.0093775002732349438 0.99995603023328317 5.4210108624275222e-20
		 -1.7086066051184142e-08 37.659236907958956 -0.088007674614207665 0.99999999999999978;
	setAttr ".radi" 2;
createNode parentConstraint -n "chest_FK_parentConstraint1" -p "chest_FK";
	rename -uid "A6D7C344-4750-A070-563B-70B34E7D10E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_chest_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7086068604329798e-08 1.2789769243681803e-13 
		-0.088007674614207762 ;
	setAttr ".tg[0].tor" -type "double3" -0.00053967288472193053 -0.53729906305057262 
		89.999999895680489 ;
	setAttr ".lr" -type "double3" 4.9696166897868442e-17 8.8459177078204085e-15 1.2722024600202125e-14 ;
	setAttr ".rst" -type "double3" 11.121464823857888 1.1602273499685181e-15 -3.8691272408186705e-14 ;
	setAttr ".rsrr" -type "double3" -1.4406222926642887e-17 5.963540027744093e-16 5.2275384007085533e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine_FK_parentConstraint1" -p "spine_FK";
	rename -uid "9879A549-4532-99A4-D6B1-8FAB6662C1FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_spine_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.392155908876299e-07 1.4921397450962104e-13 
		-4.5597553257614813e-06 ;
	setAttr ".tg[0].tor" -type "double3" 179.99970008782657 0.45338089591926933 89.999998855592992 ;
	setAttr ".lr" -type "double3" -7.2556403670886469e-15 8.7465253740246672e-15 -1.9083328088781097e-14 ;
	setAttr ".rst" -type "double3" 7.967657089233537 1.8603368738678437e-15 3.705769144237564e-22 ;
	setAttr ".rsrr" -type "double3" -7.1335506928414754e-15 -6.7581998778337967e-31 
		-1.0856201820904615e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "pelvis_FK_parentConstraint1" -p "pelvis_FK";
	rename -uid "CDE60AA3-40C3-76D0-B341-6797A6A28F1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_pelvis_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.8347105752764566e-08 1.4566126083082054e-13 
		-3.0994415283203371e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.0501182244085527e-05 1.0501182018884929e-05 
		90.000001228722951 ;
	setAttr ".lr" -type "double3" -1.5166066558187088e-21 2.589009518039732e-21 6.3611093629268387e-15 ;
	setAttr ".rst" -type "double3" 0 5.2939559203393771e-23 -5.2939559203393771e-23 ;
	setAttr ".rsrr" -type "double3" -1.5166066558187088e-21 2.589009518039732e-21 6.3611093629268387e-15 ;
	setAttr -k on ".w0";
createNode transform -n "arm_l_grp" -p "DO_NOT_TOUCH";
	rename -uid "FC9B6D2B-41CC-91AE-93C6-6382408F35BF";
	setAttr ".v" no;
createNode joint -n "upperarm_l_IK" -p "|rig_systems|DO_NOT_TOUCH|arm_l_grp";
	rename -uid "69C7AF95-4719-8296-C886-13B5FECBCEBC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" -0.93929526735219471 -0.88919422126670267 -0.81153717638488521 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.530000000000001 41.042999999999999 0.087999999999999995 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 -4.9696166897867449e-17 1.5902773407317584e-15 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.529869704893411 41.04275982456744 0.088012357720143666 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_l_IK" -p "upperarm_l_IK";
	rename -uid "EB758631-46F9-6D86-05C3-91BB4A583218";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" -1.0071151438104121e-07 1.4030173234826604 0.018076072219747268 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.559045405518484 0 9.4595601502349514e-05 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 29.088915110411897 41.04275982456744 0.088106953321646017 1;
	setAttr ".radi" 2;
createNode joint -n "hand_l_IK" -p "lowerarm_l_IK";
	rename -uid "983D183B-4EC9-9769-3D72-56BAEDDA9BA9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.9534699909064646 -0.0048255956959260809 0.37459437495287462 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 37.042385101318366 41.037934228871521 -5.3644180296325006e-06 1;
	setAttr ".radi" 2;
createNode orientConstraint -n "hand_l_IK_orientConstraint1" -p "hand_l_IK";
	rename -uid "092DC7B0-44AC-06A0-D4C3-F783956E35E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_arm_l_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.93212134072260644 -0.52719700321030982 0.80796441861467405 ;
	setAttr ".rsrr" -type "double3" 0.37719879055781436 -9.2419192464209931e-05 -0.0017937016770696024 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector8" -p "lowerarm_l_IK";
	rename -uid "585B3A3E-4DAD-FC87-759C-C3B59CDC59AC";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".hd" yes;
createNode joint -n "upperarm_l_FK" -p "|rig_systems|DO_NOT_TOUCH|arm_l_grp";
	rename -uid "73743D99-4C5D-0CB2-39FD-AAAAFC99404D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 6.9065068050755722e-17 -1.9363173174233306e-18 0
		 6.6807844360331219e-17 1.0000000000000002 2.3879682953253933e-13 0 -1.0977546996415732e-18 -2.3879336008558738e-13 1 0
		 18.530000000000005 41.043000000000006 0.088000000000000189 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.529869704893411 41.04275982456744 0.088012357720143666 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_l_FK" -p "upperarm_l_FK";
	rename -uid "ADC15183-4947-8785-A76E-7BA0B33DFCA2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.0000000000000002 0 10.559045405518473 -2.1316282072803006e-14 9.4595601502169102e-05 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 29.088915110411897 41.04275982456744 0.088106953321646017 1;
	setAttr ".radi" 2;
createNode joint -n "hand_l_FK" -p "lowerarm_l_FK";
	rename -uid "E37D7D5A-4464-FBCF-A8CC-748333A5E16D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.9534699909064646 -0.0048255956959260809 0.37459437495287462 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 37.042385101318366 41.037934228871521 -5.3644180296325006e-06 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "hand_l_FK_parentConstraint1" -p "hand_l_FK";
	rename -uid "48291F78-4C18-39AA-9374-B7AD6C4A9B4F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 8.7926213154787547e-07 1.6653345369377348e-16 ;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lowerarm_l_FK_parentConstraint1" -p "lowerarm_l_FK";
	rename -uid "C67A82DC-4D09-01AC-49D1-28BC1A558BC8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_lowerarmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3919607983202695e-07 8.829170496937877e-07 
		-0.46270669197853587 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 0 -0.46270669269255021 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "upperarm_l_FK_parentConstraint1" -p "upperarm_l_FK";
	rename -uid "B8BC396F-4FB5-AE41-09A7-90BAF4610B58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_upperarm_FKW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.2530357070045284e-07 8.829170496937877e-07 
		-2.3162294582323995e-09 ;
	setAttr ".rst" -type "double3" 2.221100139365717e-07 37.659236907959112 0.0001049709510319019 ;
	setAttr -k on ".w0";
createNode transform -n "arm_r_grp" -p "DO_NOT_TOUCH";
	rename -uid "CC0ABC1A-4908-3FDD-8463-398F849D461B";
	setAttr ".v" no;
createNode joint -n "upperarm_r_IK" -p "|rig_systems|DO_NOT_TOUCH|arm_r_grp";
	rename -uid "4C044825-4FEF-1235-9E4B-F8B8F2AA2F35";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" -0.38300219258994439 0.00010746091624093884 0.001799965358022458 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -18.529899999999998 41.0428 0.088012400000000102 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -18.529900000000001 41.0428 0.088012400000000005 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_r_IK" -p "upperarm_r_IK";
	rename -uid "BFDB0CE3-463F-414C-2756-4CB23423608C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 1.4410800615690213e-10 4.9021580752693786e-07 3.3526502050634427e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10.558999999999996 0 0.46261239999999998 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -29.088899999999995 41.0428 -0.37459999999999999 1;
	setAttr ".radi" 2;
createNode joint -n "hand_r_IK" -p "lowerarm_r_IK";
	rename -uid "B56E78ED-4DD0-4BCA-E1A0-4A8266DD141B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.9535000000000071 0.0048999999999998229 -0.37459463558 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -37.042400000000001 41.0379 -5.3644199999869357e-06 1;
	setAttr ".radi" 2;
createNode orientConstraint -n "hand_r_IK_orientConstraint1" -p "hand_r_IK";
	rename -uid "047289DC-4AE8-1E81-643A-0D89191CA21D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_arm_r_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.61699780422262 -9.5426467710395306e-05 -0.0018006434760550953 ;
	setAttr ".o" -type "double3" 179.61699063166654 -0.00010746300252319518 -0.0018206673673565414 ;
	setAttr ".rsrr" -type "double3" 1.1032549055029226e-14 3.6398559739649047e-20 -3.8825130388958945e-19 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector7" -p "lowerarm_r_IK";
	rename -uid "EBB5E6E6-49AD-214B-313D-64AB780A0928";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".hd" yes;
createNode joint -n "upperarm_r_FK" -p "|rig_systems|DO_NOT_TOUCH|arm_r_grp";
	rename -uid "BB6C59BF-4C08-1686-79F5-C3BFD5B552FE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1.8206391300121468e-09 0.99995603027764035 0.0093775002736680747 0
		 -0.99999999995564037 9.0148038641751362e-08 -9.4186545681577706e-06 0 -9.4190857957890328e-06 -0.0093775002732349472 0.99995603023328306 0
		 -1.7086068604331273e-08 37.659236907959112 -0.088007674614207707 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -18.529900000000001 41.0428 0.088012400000000005 1;
	setAttr ".radi" 2;
createNode joint -n "lowerarm_r_FK" -p "upperarm_r_FK";
	rename -uid "6B5B224E-4CDB-AE9D-C903-E08D13B70E04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10.558999999999996 0 0.46261239999999998 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -29.088899999999995 41.0428 -0.37459999999999999 1;
	setAttr ".radi" 2;
createNode joint -n "hand_r_FK" -p "lowerarm_r_FK";
	rename -uid "BD80C5E5-4EF0-EDC8-F332-A3B13F62D17C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.9535000000000071 0.0048999999999998229 -0.37459463558 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -37.042400000000001 41.0379 -5.3644199999869357e-06 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "hand_r_FK_parentConstraint1" -p "hand_r_FK";
	rename -uid "B12031AB-43E0-E0F1-B9B5-DDBF8304BD2D";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
createNode parentConstraint -n "lowerarm_r_FK_parentConstraint1" -p "lowerarm_r_FK";
	rename -uid "BCC27743-40C7-470F-D6B2-9188E07C5413";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
createNode parentConstraint -n "upperarm_r_FK_parentConstraint1" -p "upperarm_r_FK";
	rename -uid "B91FF6AF-4420-F701-2F53-029D15A84436";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_upperarm_r_FKW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0920410154067213e-05 4.1058349609102152e-05 
		3.9963626963235299e-08 ;
	setAttr ".tg[0].tor" -type "double3" -180 0 0 ;
	setAttr ".lr" -type "double3" 179.46270093695043 0.00053967386297826064 -89.999999895685079 ;
	setAttr -k on ".w0";
createNode transform -n "leg_l_grp" -p "DO_NOT_TOUCH";
	rename -uid "FD65680D-4BCE-8498-CC96-83B7E35028B3";
	setAttr ".v" no;
createNode joint -n "thigh_l_IK" -p "|rig_systems|DO_NOT_TOUCH|leg_l_grp";
	rename -uid "47900795-4F85-AF57-BBF0-13B9A1398576";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" -1.8911565699196987e-11 0.00032415414063242666 -0.00013660645397995251 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.593 17.538 0 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1.1234022817552258e-07 -0.99999999999995703 -2.703465482666544e-07 0
		 9.1989371596690096e-08 2.7034655860076218e-07 -0.99999999999995914 0 0.99999999999998923 1.1234020268435342e-07 9.1989401813334684e-08 0
		 8.5931978225707972 17.538043975830085 -2.5033950835003505e-06 1;
	setAttr ".radi" 2;
createNode joint -n "calf_l_IK" -p "thigh_l_IK";
	rename -uid "CBCF5D1D-4210-AF39-0D09-62816FCEBBC6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 5.8853309397719599e-14 3.4284563528205492e-21 -9.6402193140706162e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.5367432320971308e-07 -9.2177371978759783 0.25439546087959719 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 4.6470616872476708e-07 -0.99999999999979938 4.3162655793947247e-07 0
		 0.97447721996494707 5.497398717357882e-07 0.22448640887386562 0 -0.22448640887405774 3.1629002922306526e-07 0.97447721996500725 0
		 8.5931987762451154 8.3203067779540998 0.2543929574845129 1;
	setAttr ".radi" 2;
createNode joint -n "foot_l_IK" -p "calf_l_IK";
	rename -uid "F4AC1B15-4DD8-AA41-4A93-2AA61A3BE2C4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.814328161631634e-08 -8.4945685714483226 -0.25439532083195038 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 4.6470616881317906e-07 -0.99999999999979827 4.3162655794379509e-07 -1.9852334701272664e-23
		 0.97447721996494796 5.4973987151721304e-07 0.22448640887386564 4.163336342344337e-17
		 -0.22448640887405807 3.1629002921786109e-07 0.97447721996500714 3.4694469519536142e-18
		 8.5931988543883939 -0.17426179349422091 -2.3633474414308742e-06 0.99999999999999967;
	setAttr ".radi" 2;
createNode ikEffector -n "effector9" -p "calf_l_IK";
	rename -uid "337EA371-4CA6-743F-FD04-C5976FDEDD87";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".hd" yes;
createNode joint -n "thigh_l_FK" -p "|rig_systems|DO_NOT_TOUCH|leg_l_grp";
	rename -uid "46A7DCAC-44C6-7A54-04F5-B7AD4BA4A772";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931978909179012 17.538043975830082 5.9604644481998868e-07 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1.1234022817552258e-07 -0.99999999999995703 -2.703465482666544e-07 0
		 9.1989371596690096e-08 2.7034655860076218e-07 -0.99999999999995914 0 0.99999999999998923 1.1234020268435342e-07 9.1989401813334684e-08 0
		 8.5931978225707972 17.538043975830085 -2.5033950835003505e-06 1;
	setAttr ".radi" 2;
createNode joint -n "calf_l_FK" -p "thigh_l_FK";
	rename -uid "9029D904-4E85-B34D-5ECE-B8B2BCC077F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.5367432320971308e-07 -9.2177371978759783 0.25439546087959719 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 4.6470616872476708e-07 -0.99999999999979938 4.3162655793947247e-07 0
		 0.97447721996494707 5.497398717357882e-07 0.22448640887386562 0 -0.22448640887405774 3.1629002922306526e-07 0.97447721996500725 0
		 8.5931987762451154 8.3203067779540998 0.2543929574845129 1;
	setAttr ".radi" 2;
createNode joint -n "foot_l_FK" -p "calf_l_FK";
	rename -uid "D2DE9632-445A-17DD-549A-B9B4FB901D57";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.814328161631634e-08 -8.4945685714483226 -0.25439532083195038 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 4.6470616881317906e-07 -0.99999999999979827 4.3162655794379509e-07 -1.9852334701272664e-23
		 0.97447721996494796 5.4973987151721304e-07 0.22448640887386564 4.163336342344337e-17
		 -0.22448640887405807 3.1629002921786109e-07 0.97447721996500714 3.4694469519536142e-18
		 8.5931988543883939 -0.17426179349422091 -2.3633474414308742e-06 0.99999999999999967;
	setAttr ".radi" 2;
createNode parentConstraint -n "calf_l_FK_parentConstraint1" -p "calf_l_FK";
	rename -uid "2AF95F20-443C-0C04-2ABC-C5BF033C8691";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_calf_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.5731449079039521e-07 -1.1546319456101628e-13 
		3.0994432670961025e-06 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "thigh_l_FK_parentConstraint1" -p "thigh_l_FK";
	rename -uid "87F44904-44C9-E355-13D9-A29E06C8B67C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_thigh_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.8347102200050358e-08 0 3.0994415283203392e-06 ;
	setAttr ".rst" -type "double3" 0 18.570463180542138 0 ;
	setAttr -k on ".w0";
createNode transform -n "leg_r_grp" -p "DO_NOT_TOUCH";
	rename -uid "81F83F94-4E20-93AF-512F-4683F856C201";
	setAttr ".v" no;
createNode joint -n "thigh_r_IK" -p "|rig_systems|DO_NOT_TOUCH|leg_r_grp";
	rename -uid "5BD58874-405F-1F2C-8A18-AE86E7E40EF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5932000000000013 17.538 5.9604600000000041e-07 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5932000000000013 17.538 5.9604599999999999e-07 1;
	setAttr ".radi" 2;
createNode joint -n "calf_r_IK" -p "thigh_r_IK";
	rename -uid "B3A708A2-49B3-34BF-F27B-B1B2FAF46FB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 5.8854167372700349e-14 2.1144428642205068e-29 4.2400177675005911e-28 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4743925583194078e-15 -9.217690000000001 0.25439540395400001 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 8.3203099999999992 0.25439600000000001 1;
	setAttr ".radi" 2;
createNode joint -n "foot_r_IK" -p "calf_r_IK";
	rename -uid "D0BB875B-43B3-B929-458F-39AB73E56DA2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.5102810375396984e-16 -8.4945719999999998 -0.25439526390600004 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 -0.17426200000000058 7.3609399997565106e-07 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector6" -p "calf_r_IK";
	rename -uid "8C44F101-44DA-1F0A-8103-04A6D794834C";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".hd" yes;
createNode joint -n "thigh_r_FK" -p "|rig_systems|DO_NOT_TOUCH|leg_r_grp";
	rename -uid "ECE2D1F7-452C-419A-CBE3-2BB7D93CD0E6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5932000000000013 17.538 5.9604600000000041e-07 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5932000000000013 17.538 5.9604599999999999e-07 1;
	setAttr ".radi" 2;
createNode joint -n "calf_r_FK" -p "thigh_r_FK";
	rename -uid "A18BF437-45CA-1617-AB03-5982FBC78220";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4743925583194078e-15 -9.217690000000001 0.25439540395400001 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 8.3203099999999992 0.25439600000000001 1;
	setAttr ".radi" 2;
createNode joint -n "foot_r_FK" -p "calf_r_FK";
	rename -uid "301A3D93-4B35-991E-CF17-79AE7A3E91CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.5102810375396984e-16 -8.4945719999999998 -0.25439526390600004 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 -0.17426200000000058 7.3609399997565106e-07 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "calf_r_FK_parentConstraint1" -p "calf_r_FK";
	rename -uid "CB802A98-49FE-F4B6-4CE0-E7AECD25ED7F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_calf_r_FKW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.9809328399844617e-07 3.2220457839571282e-06 
		3.042517225104735e-06 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "thigh_r_FK_parentConstraint1" -p "thigh_r_FK";
	rename -uid "4B6AF70E-49BD-BCB7-E317-1D8442BB9534";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_thigh_r_FK1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1774292022769259e-06 -4.3975830077869205e-05 
		3.0994410835003504e-06 ;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 -5.2939559203393771e-22 ;
	setAttr -k on ".w0";
createNode fosterParent -n "Player_modelRNfosterParent1";
	rename -uid "2ED237E6-4268-0214-EBDE-46AC4CC0A4DD";
createNode mesh -n "OrionShapeDeformed" -p "Player_modelRNfosterParent1";
	rename -uid "EE4B1F6D-4370-24B1-8CF7-1DA51E0A2A5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "SaucerShapeDeformed" -p "Player_modelRNfosterParent1";
	rename -uid "2B00A291-4685-C5B1-A66E-E0ABCB3F3B47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50467562116682529 0.50364474207162857 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Attribute";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8BA336D5-4554-B009-4307-3B88C59B1304";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "824D8F22-48B8-299C-3499-7C8EB7431D2B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "26A542C9-4967-3D5D-A256-488831ADE7BB";
createNode displayLayerManager -n "layerManager";
	rename -uid "FF8E8068-4127-486E-DABD-32B0125886E6";
	setAttr ".cdl" 4;
	setAttr -s 4 ".dli[1:3]"  1 4 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "45001F49-4F8E-E3E8-59E9-5B8F0576F65E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "41075DF6-48EF-0549-D060-49B505BBEFAB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EBD3F86B-40EF-1FDE-FFD1-F3B191775962";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "44AD2EC5-4404-0B9A-5396-148EAC57B98D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"flatShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2942\n            -height 1604\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2942\\n    -height 1604\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2942\\n    -height 1604\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AED9C169-4AA1-77DC-0C78-06980DF50198";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "geo";
	rename -uid "71B78E2C-4978-D432-C133-60B86D7E867A";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "788A8B9D-466A-D5AA-503C-B9948C8A4AE6";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "D0CB3099-42AD-7955-55D2-94BC4CAB5D25";
createNode dagPose -n "bindPose3";
	rename -uid "08E86C82-4346-A2B5-09A2-028C01E5246C";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.8347105752764037e-08
		 18.570463180541992 -3.0994415283203125e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.3921558067740989e-07
		 26.538120269775391 -4.5597553253173828e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7086065895455249e-08
		 37.659236907958984 -0.088007673621177673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes no no no;
	setAttr ".bp" yes;
createNode reverse -n "reverse1";
	rename -uid "8752EB38-4A18-DAF7-B2A7-46870A8712DA";
createNode reverse -n "reverse2";
	rename -uid "88468D0B-4C2C-FC2A-E8E2-6584B0C1E3F5";
createNode reverse -n "reverse3";
	rename -uid "E68D8645-45CF-02DA-FB77-DD8A18B02D42";
createNode reverse -n "reverse4";
	rename -uid "D8FF13E8-4337-12FB-EBBF-15B97E45CE49";
createNode reverse -n "reverse5";
	rename -uid "BC6D155F-4FA6-5176-4833-01A5A12F9581";
createNode multiplyDivide -n "pasted__multiplyDivide1";
	rename -uid "25B251A3-40FE-C4C1-F821-7094419A748B";
createNode dagPose -n "bindPose6";
	rename -uid "5F84C5D9-41C2-EF5F-2FC4-378EEEF5EC6D";
	setAttr -s 20 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 20 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 5.5533422341927208e-15 -2.5895457263264853e-07
		 4.7045305934283852e-14 0 -8.0261456012024314e-13 0 1.7698691599473456e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.9657974252226185e-15 5.4932659367132361e-06
		 -4.346901516533997e-08 0 6.0130314044710985e-10 -1.4210854715202004e-14 -1.2714709114129003e-12 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -4.1191008937069292e-15 8.6736173798840374e-19
		 -1.3552527156070596e-20 0 -2.4424892777468051e-15 7.1054273576010019e-15 -4.5730238172614346e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 -5.2343113640805818e-06 4.3469015165933998e-08 0 3.1763735522036263e-22
		 -7.1054273576010019e-15 -2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.0065833609398681745 -3.4152299105062422e-06
		 3.1338171659454369e-05 0 -1.0914642061266022e-06 8.0547517455897832e-07 9.6991104199431466e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.0658141036401503e-13
		 -0.46270669269255033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.0065833608297743594 -1.6130192005347953e-06
		 -3.1306000063408651e-05 0 0 8.5265128291212022e-14 1.0547118733938987e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -0.0066847743770744221 7.1098945795466363e-06
		 3.1733171129570119e-05 0 -1.0909584595708566e-06 8.0547651037932155e-07 9.6991269516191747e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1054273576010019e-15
		 1.1368683772161603e-13 2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1316282072803006e-14
		 -9.2370555648813024e-14 -1.0547118733938987e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -1.3505088041038236e-06 0 0 6.6968652845389443e-13
		 3.5527136788005009e-15 -2.2252479050893162e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7763568394002505e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7486012637846216e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 2.5895457263264853e-07 0 0 1.2470025012589758e-12
		 3.5527136788005009e-15 2.2252484158479311e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 1.0587911840678754e-22 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 20 ".m";
	setAttr -s 20 ".p";
	setAttr -s 20 ".g[0:19]" yes no no no no no no no no no no no no no 
		no no no no no no;
	setAttr ".bp" yes;
createNode displayLayer -n "controls";
	rename -uid "634A2CC1-44F2-B38C-252B-76853BC01793";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode skinCluster -n "skinCluster2";
	rename -uid "1838B309-484D-6A74-56D5-D1A151866B1F";
	setAttr -s 5 ".wl";
	setAttr ".wl[0:4].w"
		1 0 1
		1 0 1
		1 1 1
		1 2 1
		1 2 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.8347105752764037e-08 -18.570463180541992 3.0994415283203125e-06 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.3921558067740989e-07 -26.538120269775391 4.5597553253173828e-06 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.7086065895455249e-08 -37.659236907958984 0.088007673621177673 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "7E78643A-4A97-E1CA-1F4D-74922E6B4D30";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "B3BF568D-4125-C22C-E516-DCA9CF40712B";
	setAttr ".txf" -type "matrix" 0 12 0 0 -12 0 0 0 0 0 12 0 18.529869079589847 41.042758941650391 -6.139278409145188e-06 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "AB20D42F-4803-FA1D-2DD3-EA9C94D2E738";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5527136788005009e-15 0 0.088018499314782284 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "9EBBE22F-4F8D-0915-75F9-A79B393A99A5";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "6FD5E8A0-4345-4CD9-2367-6C955E0271F1";
	setAttr ".txf" -type "matrix" 25 0 0 0 0 25 0 0 0 0 25 0 0 26.538120269775391 0 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "486A7C40-4E75-968D-CEE0-BE9CF93F80AB";
	setAttr ".txf" -type "matrix" 0.90000000000000002 0 0 0 0 0.90000000000000002 0 0
		 0 0 0.90000000000000002 0 0 2.6538120269775369 0 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "AE905BAD-40EB-AC13-C5DE-39B3ECF79D1C";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "09351E2A-48E8-1B51-1A32-568AFCE842ED";
	setAttr ".txf" -type "matrix" 15 0 0 0 0 15 0 0 0 0 15 0 0 0 0 1;
createNode groupId -n "groupId6";
	rename -uid "65FCE7BF-4B4A-BC73-3EAA-3B86BD5FA60A";
	setAttr ".ihi" 0;
createNode tweak -n "tweak1";
	rename -uid "484FE676-4F30-0E5F-F9D3-94A02EC091B9";
	setAttr -s 249 ".vl[0].vt";
	setAttr ".vl[0].vt[104]" -type "float3" 0.046256829 -0.045570824 -0.013758532 ;
	setAttr ".vl[0].vt[108]" -type "float3" -0.046247989 -0.045845333 0.020907197 ;
	setAttr ".vl[0].vt[111]" -type "float3" 0.046014611 0.04694809 -0.020906068 ;
	setAttr ".vl[0].vt[116]" -type "float3" -0.04649017 0.046673592 0.013759645 ;
	setAttr ".vl[0].vt[126]" -type "float3" 0.025685294 -0.058822148 -0.0050175032 ;
	setAttr ".vl[0].vt[127]" -type "float3" 0.00028195852 -0.063677423 0.0048762299 ;
	setAttr ".vl[0].vt[128]" -type "float3" -0.025360934 -0.058973633 0.014111822 ;
	setAttr ".vl[0].vt[141]" -type "float3" 0.025377134 0.058897357 -0.014111922 ;
	setAttr ".vl[0].vt[142]" -type "float3" -4.8580267e-05 0.062574685 -0.0048773596 ;
	setAttr ".vl[0].vt[143]" -type "float3" -0.025669094 0.058745876 0.005017403 ;
	setAttr ".vl[0].vt[159]" -type "float3" 0.05892567 -0.025390502 -0.020081991 ;
	setAttr ".vl[0].vt[160]" -type "float3" 0.063233122 -0.00036406863 -0.023653142 ;
	setAttr ".vl[0].vt[161]" -type "float3" 0.058792047 0.025663512 -0.024026178 ;
	setAttr ".vl[0].vt[168]" -type "float3" -0.058909528 0.025314227 0.020081913 ;
	setAttr ".vl[0].vt[169]" -type "float3" -0.062999763 -0.00073867087 0.023652019 ;
	setAttr ".vl[0].vt[170]" -type "float3" -0.058775865 -0.025739785 0.024026085 ;
	setAttr ".vl[0].vt[171]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[172]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[173]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[174]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[175]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[176]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[177]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[178]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[179]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[180]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[181]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[182]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[183]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[184]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[185]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[186]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[187]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[188]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[189]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[190]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[191]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[192]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[193]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[194]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[195]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[196]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[197]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[198]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[199]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[200]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[201]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[202]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[203]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[204]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[205]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[206]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[207]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[208]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[209]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[210]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[211]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[212]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[213]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[214]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[215]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[216]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[217]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[218]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[219]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[220]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[221]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[222]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[223]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[224]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[225]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[226]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[227]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[228]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[229]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[230]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[231]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[232]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[233]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[234]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[235]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[236]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[237]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[238]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[239]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[240]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[241]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[242]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[243]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[244]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[245]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[246]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[247]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[248]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[249]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[250]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[251]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[252]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[253]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[254]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[255]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[256]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[257]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[258]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[259]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[260]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[261]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[262]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[263]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[264]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[265]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[266]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[267]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[268]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[269]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[270]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[271]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[272]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[273]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[274]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[275]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[276]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[277]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[278]" -type "float3" -2.6077032e-08 -2.8610229e-06 0 ;
	setAttr ".vl[0].vt[479]" -type "float3" 0 -3.8146973e-06 0 ;
	setAttr ".vl[0].vt[934]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[935]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[936]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[937]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[938]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[939]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[940]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[941]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[942]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[943]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[944]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[945]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[946]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[947]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[948]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[950]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[951]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[952]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[953]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[954]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[955]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[956]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[957]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[958]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[959]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[960]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[961]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[963]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[964]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[965]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[967]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[969]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[970]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[971]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[972]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[973]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[974]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[975]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[976]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[977]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[978]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[979]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[980]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[981]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[982]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[983]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[984]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[985]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[986]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[987]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[988]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[989]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[990]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[991]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[992]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[993]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[994]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[995]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[996]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[997]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[998]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[999]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1000]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1001]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1002]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1003]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1005]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1007]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1009]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1010]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1011]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1012]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1013]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1014]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1015]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1017]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1019]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1021]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1023]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1025]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1027]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1029]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1031]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1033]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1034]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1035]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1036]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1037]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1038]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1039]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1040]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1041]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1042]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1043]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1044]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1045]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1046]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1047]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1048]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1049]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1050]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1051]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1052]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1053]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1054]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1055]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1056]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1057]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1058]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1059]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1060]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1061]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1062]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1063]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1064]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1065]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1066]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1067]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1068]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1069]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1070]" -type "float3" 0 2.1457672e-06 0 ;
	setAttr ".vl[0].vt[1199]" -type "float3" -5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".vl[0].vt[1200]" -type "float3" 5.9604645e-08 0 -5.9604645e-08 ;
createNode geomBind -n "geomBind1";
	rename -uid "7454153D-4927-7C22-D30D-A2B8AF024B36";
	setAttr ".mi" 3;
createNode skinCluster -n "skinCluster5";
	rename -uid "2D7C4E92-4F0D-2CA1-B5F1-66B7192CE001";
	setAttr -s 1370 ".wl";
	setAttr ".wl[0:178].w"
		3 4 0.9799752623866379 5 0.01002473761336206 6 0.01
		3 4 0.9798903351408832 5 0.010109664859116825 6 0.01
		3 3 0.37261752161093997 4 0.61738247838906013 6 0.01
		3 4 0.97993251293082406 5 0.010067487069175865 6 0.01
		3 4 0.9799752623866379 5 0.01002473761336206 6 0.01
		3 4 0.9798903351408832 5 0.010109664859116825 6 0.01
		3 3 0.37261757427704345 4 0.61738242572295654 6 0.01
		3 4 0.97993251293269712 5 0.010067487067302877 6 0.01
		3 3 0.36764858740655559 4 0.6223514125934444 6 0.01
		3 3 0.31827938643661419 4 0.67172061356338586 6 0.01
		3 3 0.19710548298571756 4 0.79289451701428237 6 0.01
		3 4 0.9799436265528233 5 0.01005637344717673 6 0.01
		3 4 0.97993205783363813 5 0.010067757210546735 6 0.010000184955815112
		3 4 0.97989495938497262 5 0.010105040615027377 6 0.01
		3 4 0.97990776022926873 5 0.010092239770731294 6 0.01
		3 4 0.97991138297859959 5 0.010088617021400388 6 0.01
		3 4 0.97991755533638147 5 0.010082444663618498 6 0.01
		3 4 0.97995682725306066 5 0.010043172746939381 6 0.01
		4 3 0.2522031549849002 4 0.73779684082865171 5 4.1864480580299161e-09 
		6 0.0099999999999999985
		3 3 0.30871337287935907 4 0.68128662712064092 6 0.01
		3 3 0.3788346765659647 4 0.61116532343403529 6 0.01
		3 3 0.37822355132809132 4 0.61177644867190861 6 0.01
		3 3 0.37883467475525107 4 0.61116532524474898 6 0.01
		3 4 0.979934863438499 5 0.010065136561501009 6 0.01
		3 4 0.97993836040765103 5 0.010061639592348983 6 0.01
		3 4 0.97993486344511771 5 0.010065136554882238 6 0.01
		3 4 0.97995682725520517 5 0.010043172744794868 6 0.01
		3 3 0.25220326021230033 4 0.73779673978769966 6 0.01
		3 3 0.30871337593072745 4 0.68128662406927254 6 0.01
		3 3 0.19710549918804093 4 0.792894500811959 6 0.01
		3 3 0.31827939035299646 4 0.67172060964700353 6 0.01
		3 3 0.36764858740655559 4 0.6223514125934444 6 0.01
		3 4 0.97991755533638147 5 0.010082444663618498 6 0.01
		3 4 0.97991138297786384 5 0.01008861702213619 6 0.01
		3 4 0.97990776022926873 5 0.010092239770731294 6 0.01
		3 4 0.97989495938497262 5 0.010105040615027377 6 0.01
		3 4 0.97993205782506454 5 0.010067757219076157 6 0.010000184955859262
		3 4 0.9799436265528233 5 0.01005637344717673 6 0.01
		3 4 0.97997915687435611 5 0.01002084334916129 6 0.0099999997764825821
		3 4 0.97998224476269369 5 0.010017755237306305 6 0.01
		3 4 0.97997915687435611 5 0.01002084334916129 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881186 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881188 6 0.0099999997764825821
		3 4 0.97996801796373123 5 0.010031982259786104 6 0.0099999997764826879
		3 4 0.97996791267523564 5 0.010032087324764355 6 0.01
		3 4 0.97993558731601715 5 0.010064412683982872 6 0.01
		3 4 0.97991772921265241 5 0.010082270787347615 6 0.01
		3 3 0.2513795629420032 4 0.73862043705799674 6 0.01
		3 4 0.9799525794316013 5 0.010047420568398671 6 0.01
		3 4 0.97992294825878634 5 0.010077051741213493 6 0.01
		3 3 0.30018113145863029 4 0.68981886854136965 6 0.01
		3 4 0.97996632198812927 5 0.010033678011870701 6 0.01
		3 4 0.97993883776417534 5 0.010061162235824686 6 0.01
		3 3 0.34197943082418664 4 0.6480205691758133 6 0.01
		3 3 0.27561221441249817 4 0.71438778558750182 6 0.01
		4 3 1.642776813581575e-08 4 0.97995687841788404 5 0.010043105154347734 
		6 0.01
		3 3 0.35583345339255945 4 0.63416654660744054 6 0.01
		3 3 0.28079430319701826 4 0.70920569680298173 6 0.01
		3 4 0.97995517848521607 5 0.010044821514783952 6 0.01
		3 3 0.34197943082418664 4 0.6480205691758133 6 0.01
		3 3 0.27561221441249817 4 0.71438778558750182 6 0.01
		3 4 0.97995689424703647 5 0.010043105752963485 6 0.01
		3 3 0.30018113145863029 4 0.68981886854136965 6 0.01
		3 4 0.97996632199029121 5 0.010033678009708832 6 0.01
		3 4 0.97993883776910495 5 0.01006116223089501 6 0.01
		3 3 0.25137952306657496 4 0.73862047693342503 6 0.01
		3 4 0.9799525794316013 5 0.010047420568398671 6 0.01
		3 4 0.97992294826403992 5 0.010077051735960027 6 0.01
		3 4 0.97996791267523564 5 0.010032087324764355 6 0.01
		3 4 0.97993558731601715 5 0.010064412683982872 6 0.01
		3 4 0.97991772919668596 5 0.010082270803314017 6 0.01
		3 4 0.97994138031733857 5 0.010058619906178793 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881186 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881188 6 0.0099999997764825821
		3 4 0.97995432702009122 5 0.010045673203426168 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881186 6 0.0099999997764825821
		3 4 0.97984363541737807 5 0.010156364582621926 6 0.01
		3 4 0.97994138031733857 5 0.010058619906178793 6 0.0099999997764825821
		3 4 0.97996801796955069 5 0.010031982253966659 6 0.0099999997764826654
		3 4 0.97996801799494859 5 0.01003198222856878 6 0.0099999997764825856
		3 3 0.3703620061555663 4 0.61963799384443374 6 0.010000000000000002
		3 3 0.36952479030333452 4 0.62047520969666548 6 0.01
		3 3 0.37036200983575307 4 0.61963799016424692 6 0.01
		3 3 0.30185288656847165 4 0.68814711343152835 6 0.01
		3 3 0.26971361563716234 4 0.72028638436283765 6 0.01
		3 3 0.30185289255656256 4 0.68814710744343743 6 0.01
		3 3 0.15827265931875895 4 0.8317273406812411 6 0.01
		3 3 0.10684804494307117 4 0.88315195505692878 6 0.01
		3 3 0.15827265931875895 4 0.8317273406812411 6 0.01
		3 4 0.97991694864931622 5 0.010083051350683723 6 0.01
		3 4 0.97992476848505383 5 0.010075231514946138 6 0.01
		3 4 0.97991694864766277 5 0.010083051352337063 6 0.01
		3 4 0.97990839940795682 5 0.010091600592043155 6 0.01
		3 4 0.97990957406712531 5 0.010090425932874646 6 0.01
		3 4 0.97990839940795682 5 0.010091600592043155 6 0.01
		3 4 0.97989901115904532 5 0.010100988840954719 6 0.01
		3 4 0.97989271523511789 5 0.010107284764882069 6 0.01
		3 4 0.97989901116008826 5 0.010100988839911748 6 0.01
		3 4 9.6468194398327986e-09 5 0.011158682930091975 6 0.98884130742308851
		3 4 6.71955021485955e-11 5 0.049239068699546168 6 0.95076093123325833
		3 4 9.5716338746376386e-09 5 0.011157622302450598 6 0.98884236812591553
		2 5 0.049237668514251709 6 0.95076233148574829
		3 4 2.3426062714572803e-10 5 0.99999954439133598 6 4.5537440340765866e-07
		3 4 0.0002939061500616901 5 0.47994774817190328 6 0.51975834567803503
		3 4 2.568465895728969e-06 5 0.096488708495206743 6 0.9035087230388974
		3 4 2.3237366054953892e-08 5 0.025417025587927109 6 0.97458295117470684
		3 4 5.9961434551720247e-08 5 0.036631858123252689 6 0.96336808191531276
		3 4 6.0154116300022096e-11 5 0.040499384394674917 6 0.95950061554517097
		4 4 4.4808608289226431e-07 5 0.18951810035858332 6 0.80982223443922419 
		12 0.00065921711610954074
		3 4 0.00019928965160479156 5 0.54078406334088325 6 0.45901664700751194
		3 4 1.9970046005285508e-10 5 0.9999995525302019 6 4.4727009759117499e-07
		3 4 2.2288168989383539e-06 5 0.095970964828578351 6 0.90402680635452271
		3 4 0.00029390642949958539 5 0.47994769026926137 6 0.51975840330123901
		1 5 1
		1 5 1
		3 4 0.0001992896434119477 5 0.54078397003447498 6 0.45901674032211304
		3 5 0.18884704794585086 6 0.81047427654266357 9 0.00067867551148555509
		2 5 0.040497899055480957 6 0.95950210094451904
		3 4 5.9925430560568231e-08 5 0.036630510963088725 6 0.96336942911148071
		3 4 2.3167780429811575e-08 5 0.025416172224828212 6 0.97458380460739136
		3 4 2.0310292597836252e-13 5 0.019396666695949819 6 0.98060333330384708
		3 4 2.852744039705439e-07 5 0.030780898319216266 6 0.96921881640637986
		2 5 0.019396841526031494 6 0.98060315847396851
		2 5 0.031316280364990234 6 0.96868371963500977
		3 4 1.7533984278688982e-09 5 0.024356968834998265 6 0.9756430294116033
		2 5 0.031316628597529927 6 0.96868337140247007
		3 4 7.4952354247302064e-06 5 0.1182111968455612 6 0.8817813079190141
		3 4 3.81280547606105e-06 5 0.17217706421077822 6 0.82781912298374571
		3 4 7.103357210415357e-06 5 0.19655246508511354 6 0.80344043155767608
		3 4 0.0002642341668938307 5 0.48609625168455484 6 0.51363951414855125
		3 4 0.00022129847799284399 5 0.52578590676988624 6 0.47399279475212097
		3 4 0.0002028247261393721 5 0.54552964364048351 6 0.45426753163337708
		3 4 2.713651378569466e-10 5 0.99999947222753804 6 5.2750109680348633e-07
		3 4 2.3742750906176517e-10 5 0.99999949122347365 6 5.0853909883130655e-07
		3 4 3.4295084642254973e-10 5 0.99999926510057302 6 7.3455647608966501e-07
		1 5 1
		1 5 1
		1 5 1
		3 4 0.00026423434135210502 5 0.48609607716682662 6 0.51363968849182129
		3 4 0.00022129847799284399 5 0.52578590676988624 6 0.47399279475212097
		3 4 0.0002028247261393721 5 0.54552964364048351 6 0.45426753163337708
		3 4 7.653579960218504e-06 5 0.11899170841192211 6 0.88100063800811768
		3 4 3.7208147421935698e-06 5 0.17360988706871117 6 0.82638639211654663
		3 4 7.0902732941852245e-06 5 0.19698113470992115 6 0.80301177501678467
		2 5 0.014653682708740234 6 0.98534631729125977
		2 5 0.011473238468170166 6 0.98852676153182983
		2 5 0.010571956634521484 6 0.98942804336547852
		2 5 0.018438208494922014 6 0.98156179150507794
		2 5 0.010179421661672079 6 0.98982057833832782
		2 5 0.006683603632980253 6 0.99331639636701974
		3 4 3.4936955265655092e-13 5 0.014653838484020815 6 0.98534616151562981
		3 4 8.4295282437170167e-13 5 0.011473592347878743 6 0.9885264076512783
		2 5 0.010572410017464978 6 0.98942758998253499
		3 4 5.4229353210847864e-11 5 0.99999991589010806 6 8.4055662640208743e-08
		3 4 4.4121318204074482e-11 5 0.99999976627711595 6 2.3363464199687144e-07
		1 5 1
		3 4 0.00035177800096567146 5 0.45439035364698155 6 0.54525786835205281
		3 4 0.00042994686956859693 5 0.43038318580245727 6 0.56918686732797419
		3 4 0.00035177880813991308 5 0.45438999718139256 6 0.54525822401046753
		3 4 1.220367906334246e-06 5 0.09704138528699989 6 0.9029573943450937
		3 4 4.7329443912698645e-06 5 0.09584442343530844 6 0.90415084362030029
		3 4 5.6868353367842112e-07 5 0.096504357997984874 6 0.90349507331848145
		1 5 1
		3 4 3.282561388035149e-11 5 0.99999975898855753 6 2.4094579175230182e-07
		3 4 5.4725591282981918e-12 5 0.99999998995189343 6 1.0042634064194273e-08
		3 4 0.00026107566440736473 5 0.52064179642116393 6 0.47909712791442871
		3 4 0.00026240350326579024 5 0.51668368165449907 6 0.4830539148422352
		3 4 0.0002610748247440507 5 0.52064207015046349 6 0.47909685502479249
		3 5 0.15837001462742306 6 0.84078013896942139 9 0.00084984640315554781
		5 4 1.9567956948102678e-06 5 0.13926769130089542 6 0.86064862411920906 
		9 4.034744363590679e-05 12 4.138034056473442e-05
		3 5 0.15906229705316721 6 0.84009318954158829 12 0.00084451340524451565
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr ".wl[179:407].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		3 2 0.11851732917192424 3 0.55417205716575324 4 0.32731061366232256
		2 3 0.50643847693597577 4 0.49356152306402423
		2 3 0.57686963470679242 4 0.42313036529320763
		2 3 0.53966609168968005 4 0.46033390831032006
		2 3 0.51557421504607726 4 0.48442578495392274
		2 3 0.50008563039596232 4 0.49991436960403768
		2 3 0.72462675908129115 4 0.27537324091870885
		2 3 0.52431749867526234 4 0.47568250132473761
		2 3 0.57338613184976839 4 0.42661386815023167
		2 3 0.63917569610535385 4 0.36082430389464615
		2 3 0.52027843505070226 4 0.4797215649492978
		2 3 0.84957743943978192 4 0.15042256056021816
		2 3 0.57057077392516098 4 0.42942922607483902
		2 3 0.66401497300997447 4 0.33598502699002553
		2 3 0.76345767295574529 4 0.23654232704425474
		2 3 0.49719730260008632 4 0.50280269739991368
		2 3 0.86014777317845992 4 0.13985222682154017
		2 3 0.54246488964178452 4 0.45753511035821542
		2 3 0.64628927714687201 4 0.35371072285312799
		2 3 0.73150097432573979 4 0.26849902567426015
		2 3 0.35073221119888226 4 0.64926778880111768
		2 3 0.59664070100185351 4 0.40335929899814643
		2 3 0.36181225303451536 4 0.63818774696548464
		2 3 0.4239129585053738 4 0.5760870414946262
		2 3 0.45549778253262052 4 0.54450221746737948
		2 3 0.17535017538678876 4 0.82464982461321124
		2 3 0.40278419455013181 4 0.59721580544986819
		2 3 0.17309471474060803 4 0.826905285259392
		2 3 0.20869387827843244 4 0.79130612172156756
		2 3 0.27421309863292154 4 0.72578690136707846
		2 3 0.093465751988732873 4 0.90653424801126714
		3 2 0.10075045785601028 3 0.37265220837237778 4 0.52659733377161189
		2 3 0.10372403886986935 4 0.89627596113013064
		2 3 0.14396931250047088 4 0.85603068749952915
		2 3 0.23337112223015433 4 0.76662887776984567
		2 3 0.17535015937126505 4 0.82464984062873492
		2 3 0.40278414169132626 4 0.59721585830867374
		2 3 0.17309471220985365 4 0.82690528779014638
		2 3 0.20869387827843244 4 0.79130612172156756
		2 3 0.27421309863292154 4 0.72578690136707846
		2 3 0.35073221119888226 4 0.64926778880111768
		2 3 0.59664070100185351 4 0.40335929899814643
		2 3 0.36181225303451536 4 0.63818774696548464
		2 3 0.4239129585053738 4 0.5760870414946262
		2 3 0.45549778253262052 4 0.54450221746737948
		2 3 0.49719736833466316 4 0.5028026316653369
		2 3 0.86014747681258674 4 0.13985252318741329
		2 3 0.54246488964178452 4 0.45753511035821542
		2 3 0.64628927714687201 4 0.35371072285312799
		2 3 0.73150097432573979 4 0.26849902567426015
		2 3 0.52027843566001386 4 0.47972156433998625
		2 3 0.84957747264364414 4 0.15042252735635581
		2 3 0.57057077392516098 4 0.42942922607483902
		2 3 0.66401497300997447 4 0.33598502699002553
		2 3 0.76345763480536843 4 0.23654236519463154
		2 3 0.50008563146578011 4 0.49991436853421989
		3 2 1.7018366667006845e-09 3 0.72462685048827802 4 0.27537314780988537
		2 3 0.52431747191457401 4 0.47568252808542594
		2 3 0.57338612879056483 4 0.42661387120943517
		2 3 0.63917543718209369 4 0.36082456281790642
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 3 1.0000000057761014 4 -5.7761012315240383e-09
		3 3 0.070760552637938373 7 0.76916289042790265 8 0.16007655693415895
		3 3 0.063216073847664006 7 0.77252354497826747 8 0.16426038117406838
		3 3 0.064677206395498885 7 0.77647331480671056 8 0.15884947879779063
		3 3 0.08421020248093164 7 0.76501510638125403 8 0.15077469113781439
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.4 8 0.6
		3 7 0.033603523772987184 8 0.9 9 0.066396476227012793
		3 3 0.023151691381110798 7 0.66124841362631048 8 0.31559989499257873
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 7 0.4 8 0.6
		3 7 0.033603371782545813 8 0.9 9 0.066396628217454165
		2 7 0.4 8 0.6
		3 7 0.033603554178572373 8 0.9 9 0.066396445821427605
		3 3 0.055567546588633214 7 0.7283651825030657 8 0.216067270908301
		3 3 0.064005816303690219 7 0.76388714210331821 8 0.17210704159299156
		3 3 0.04882607023411821 7 0.76159729074685834 8 0.18957663901902344
		3 3 0.048329222692207345 7 0.74101134542388047 8 0.21065943188391228
		3 3 0.050693175458588528 7 0.74130233238013721 8 0.20800449216127423
		3 3 0.065094603933559314 7 0.75417009431166149 8 0.18073530175477942
		3 3 0.039382593781627603 7 0.7388988525939747 8 0.22171855362439774
		3 3 0.053709744108113834 7 0.75154224671722503 8 0.19474800917466115
		3 3 0.045871183015834809 7 0.75265662211835815 8 0.20147219486580689
		3 3 0.059948111747135283 7 0.75891337640283985 8 0.1811385118500248
		3 3 0.053103663950558669 7 0.74818098041383108 8 0.19871535563561032
		3 3 0.064276068165003378 7 0.75549601313230308 8 0.18022791870269345
		3 3 0.029796401167400576 7 0.69441572675774987 8 0.2757878720748495
		3 7 0.033603398376070279 8 0.9 9 0.066396601623929699
		2 7 0.4 8 0.6
		3 3 0.039247832857002951 7 0.6847381666854282 8 0.27601400045756885
		3 3 0.025642969159303138 7 0.68738636524668761 8 0.28697066559400924
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		3 3 0.014963452876798108 7 0.60639567206772627 8 0.37864087505547572
		3 3 0.021848054901248904 7 0.64123942818880908 8 0.33691251690994206
		3 3 0.027360510668505509 7 0.65815657952930329 8 0.31448290980219129
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		3 3 0.022586075469812627 7 0.60870115750433995 8 0.36871276702584738
		3 3 0.026863719121027772 7 0.64210989454866352 8 0.33102638633030868
		3 3 0.024434958785051079 7 0.65488789040954376 8 0.3206771508054051
		3 3 0.012955436836538858 7 0.61612002929038223 8 0.37092453387307894
		3 3 0.017953294936143515 7 0.64475767714856702 8 0.33728902791528947
		3 3 0.020112310720365428 7 0.65367918105005185 8 0.32620850822958264
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		2 8 0.44999999999999996 9 0.55
		3 3 0.023462786448863571 7 0.66443353315810161 8 0.31210368039303482
		3 3 0.022182464383167205 7 0.6598840282261923 8 0.31793350739064058
		3 3 0.02454819199932565 7 0.66275253120844724 8 0.31269927679222709
		3 7 0.033603408779155707 8 0.9 9 0.066396591220844278
		2 7 0.4 8 0.6
		3 7 0.033603417840096628 8 0.9 9 0.06639658215990335
		2 7 0.4 8 0.6
		3 7 0.033603477305014881 8 0.9 9 0.066396522694985097
		2 7 0.4 8 0.6
		3 7 0.033603511222036871 8 0.9 9 0.066396488777963114
		2 7 0.4 8 0.6
		3 7 0.033603511967934027 8 0.9 9 0.066396488032065951
		2 7 0.4 8 0.6
		3 7 0.033603554985282259 8 0.9 9 0.066396445014717725
		2 7 0.4 8 0.6
		3 7 0.033603316569939971 8 0.9 9 0.066396683430060013
		2 7 0.4 8 0.6
		3 7 0.033603319027589222 8 0.9 9 0.066396680972410749
		2 7 0.4 8 0.6
		3 7 0.033603370860685419 8 0.9 9 0.066396629139314559
		2 7 0.4 8 0.6
		3 7 0.033603473302992931 8 0.9 9 0.066396526697007047
		2 7 0.4 8 0.6
		3 7 0.033603412318593748 8 0.9 9 0.06639658768140623
		2 7 0.4 8 0.6
		3 7 0.033603403057222328 8 0.9 9 0.06639659694277765
		2 7 0.4 8 0.6
		3 3 0.12569111066175853 7 0.79056903613793827 8 0.083739853200303332
		3 3 0.099315037752171195 7 0.9 8 0.00068496224782878484
		3 3 0.12593243113494926 7 0.75929742377422782 8 0.11477014509082294
		3 3 0.098743405365951123 7 0.9 8 0.001256594634048854
		3 3 0.15038634022379435 7 0.75782212633099511 8 0.091791533445210766
		3 3 0.098637139565640117 7 0.9 8 0.0013628604343598656
		3 3 0.13443726815917756 7 0.76294471644106276 8 0.10261801539975962
		3 3 0.098506434506795928 7 0.9 8 0.0014935654932040541
		3 3 0.12787191270980194 7 0.75622327968478975 8 0.1159048076054085
		3 3 0.12953481389602545 7 0.75690815750335183 8 0.11355702860062283
		3 3 0.12577104789242835 7 0.77462485525909175 8 0.099604096848480109
		3 3 0.099325741192081693 7 0.9 8 0.00067425880791828876
		3 3 0.099083573232808919 7 0.9 8 0.00091642676719105366
		3 3 0.099063779095927396 7 0.9 8 0.00093622090407257633
		3 3 0.092452690518593256 7 0.77162093052268677 8 0.13592637895872006
		3 3 0.12114851670749557 7 0.75437107828382621 8 0.12448040500867819
		3 3 0.087643619594768879 7 0.77103258240694683 8 0.14132379799828435
		3 3 0.099117292287805914 7 0.9 8 0.00088270771219405855
		3 3 0.098621557812888963 7 0.9 8 0.0013784421871110178
		3 3 0.099262642608081111 7 0.9 8 0.00073735739191886499
		3 3 0.11287630898628995 7 0.76998480030588778 8 0.11713889070782223
		3 3 0.10885283153040154 7 0.76465072417416702 8 0.12649644429543166
		3 3 0.096925013730816412 7 0.78000344880466388 8 0.12307153746451971
		3 3 0.099188248973029206 7 0.9 8 0.00081175102697076957
		3 3 0.09855360013806623 7 0.9 8 0.0014463998619337495
		2 3 0.099999999999999978 7 0.9
		3 3 0.093776892216672028 7 0.80164640228756079 8 0.10457670549576742
		3 3 0.13037019860739854 7 0.78732203509100807 8 0.082307766301593574
		3 3 0.1066614540907838 7 0.77806330957200331 8 0.11527523633721311
		3 3 0.099526350160098059 7 0.9 8 0.00047364983990191302
		3 3 0.099322605173186182 7 0.9 8 0.00067739482681379245
		3 3 0.099610819574747211 7 0.9 8 0.00038918042525276788
		1 3 0.080124745470130793;
	setAttr ".wl[407:633].w"
		2 7 0.9 8 0.019875254529869192
		3 3 0.092145678238351195 7 0.9 8 0.0078543217616487832
		3 3 0.097520380959392403 7 0.9 8 0.0024796190406075739
		3 3 0.096198547362262424 7 0.9 8 0.0038014526377375584
		3 3 0.089360149588533333 7 0.9 8 0.010639850411466643
		3 3 0.073111472729142535 7 0.9 8 0.026888527270857446
		3 3 0.094823616925554188 7 0.9 8 0.0051763830744457895
		3 3 0.088979098077142313 7 0.9 8 0.011020901922857667
		3 3 0.08018817222601983 7 0.9 8 0.019811827773980144
		3 3 0.0942113350553683 7 0.9 8 0.0057886649446316782
		3 3 0.087581274498959749 7 0.9 8 0.012418725501040223
		3 3 0.077177450784187057 7 0.9 8 0.022822549215812921
		3 3 0.081497639860930629 7 0.9 8 0.018502360139069356
		3 3 0.092278204879697456 7 0.9 8 0.0077217951203025232
		3 3 0.097145713403566605 7 0.9 8 0.0028542865964333673
		3 3 0.079007631573799558 7 0.9 8 0.020992368426200413
		3 3 0.091959845455236694 7 0.9 8 0.008040154544763289
		3 3 0.097550620996627688 7 0.9 8 0.0024493790033722936
		3 3 0.078669817944807208 7 0.9 8 0.021330182055192774
		3 3 0.090782204558341198 7 0.9 8 0.0092177954416587798
		3 3 0.096558311587332954 7 0.9 8 0.0034416884126670208
		3 3 0.09617326610158429 7 0.9 8 0.0038267338984156918
		3 3 0.095864297270830512 7 0.9 8 0.0041357027291694685
		3 3 0.096157415724052203 7 0.9 8 0.003842584275947772
		3 3 0.087475836054890482 7 0.9 8 0.012524163945109497
		3 3 0.086756993295502113 7 0.9 8 0.013243006704497863
		3 3 0.087320710466962687 7 0.9 8 0.012679289533037291
		3 3 0.067613024187915691 7 0.9 8 0.032386975812084287
		3 3 0.068652188787908283 7 0.9 8 0.031347811212091695
		3 3 0.069153651196991045 7 0.9 8 0.030846348803008929
		3 3 0.097489333763861916 7 0.9 8 0.0025106662361380665
		3 3 0.097819398485386733 7 0.9 8 0.002180601514613246
		3 3 0.097950478995161711 7 0.9 8 0.0020495210048382629
		3 3 0.090632410478220252 7 0.9 8 0.0093675895217797244
		3 3 0.092147405199699453 7 0.9 8 0.007852594800300523
		3 3 0.092252214505917071 7 0.9 8 0.0077477854940829049
		3 3 0.077388729421703023 7 0.9 8 0.022611270578296951
		3 3 0.080301670441052742 7 0.9 8 0.019698329558947233
		3 3 0.078702406292360833 7 0.9 8 0.021297593707639149
		2 3 0.099999999999999978 7 0.9
		3 3 0.099738908105151153 7 0.9 8 0.00026109189484882446
		3 3 0.099716339153563191 7 0.9 8 0.00028366084643678446
		2 3 0.099999999999999978 7 0.9
		2 3 0.099999999999999978 7 0.9
		3 3 0.09981366517949572 7 0.9 8 0.00018633482050425888
		2 3 0.099999999999999978 7 0.9
		3 3 0.099884860073876688 7 0.9 8 0.00011513992612328507
		3 3 0.099855530868581788 7 0.9 8 0.00014446913141819261
		3 3 0.070129507704597013 7 0.9 8 0.029870492295402968
		3 3 0.087300695590743785 7 0.9 8 0.012699304409256198
		3 3 0.095974562582894787 7 0.9 8 0.0040254374171051904
		3 3 0.069990510000077874 7 0.9 8 0.030009489999922104
		3 3 0.086877065651045624 7 0.9 8 0.013122934348954351
		3 3 0.095635117190552635 7 0.9 8 0.0043648828094473404
		3 3 0.071191760018170208 7 0.9 8 0.02880823998182977
		3 3 0.087672135339717322 7 0.9 8 0.012327864660282654
		3 3 0.095930159547873942 7 0.9 8 0.0040698404521260353
		3 7 0.06544793450486594 8 0.17639348782614753 9 0.75815857766898664
		3 7 0.064611766896573386 8 0.17558327047638694 9 0.75980496262703967
		3 7 0.068983409376967841 8 0.1799553961630532 9 0.75106119445997899
		3 7 0.064369649904892606 8 0.1844263433664288 9 0.75120400672867871
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		3 7 0.068259234660100712 8 0.17963503584510487 9 0.75210572949479437
		3 7 0.065674127698290244 8 0.17924370033211418 9 0.75508217196959571
		3 7 0.06601179505759755 8 0.17950875131761485 9 0.75447945362478774
		3 7 0.062973093206020514 8 0.17806701166098254 9 0.75895989513299711
		3 7 0.060007618679371474 8 0.17821906580606359 9 0.76177331551456495
		3 7 0.061140779803017492 8 0.17825081827674616 9 0.76060840192023638
		3 7 0.063552812562975639 8 0.179137076012297 9 0.75731011142472737
		3 7 0.060782577356909451 8 0.18211960491013926 9 0.75709781773295126
		3 7 0.061279050098510063 8 0.18567022787107842 9 0.75305072203041146
		3 7 0.064326472587317052 8 0.18593043694085232 9 0.74974309047183074
		3 7 0.063253297879757836 8 0.18531752818856992 9 0.7514291739316723
		3 7 0.065267496912945172 8 0.18488412852614683 9 0.74984837456090814
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		3 3 0.070760848235929888 10 0.76916283346281089 11 0.16007631830125918
		3 3 0.063216297275806604 10 0.77252360951397292 11 0.16426009321022036
		3 3 0.064677257664601584 10 0.77647330585167473 11 0.15884943648372379
		3 3 0.08421020248093164 10 0.76501510638125403 11 0.15077469113781439
		2 10 0.5 11 0.5
		3 3 8.3348002782935152e-08 10 0.50000058050761853 11 0.49999933614437875
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.40000044537146096 11 0.59999955462853904
		3 10 0.10000002506928425 11 0.70241215310825511 12 0.19758782182246065
		3 3 0.023151817860422755 10 0.66124876714684266 11 0.31559941499273458
		2 11 0.4 12 0.6
		3 10 3.6617106910998014e-08 11 0.39999988178702134 12 0.6000000815958717
		2 11 0.4 12 0.6
		3 10 3.7880428172931454e-08 11 0.39999986835543871 12 0.6000000937641331
		2 10 0.40000044703483584 11 0.59999955296516416
		3 10 0.10000000154155943 11 0.70241082031656676 12 0.19758917814187385
		2 10 0.40000044537323448 11 0.59999955462676546
		3 10 0.10000037499327163 11 0.70241230292013157 12 0.19758732208659693
		3 3 0.055567546588633214 10 0.7283651825030657 11 0.216067270908301
		3 3 0.06400589420229974 10 0.76388725905144184 11 0.1721068467462584
		3 3 0.048826456992018805 10 0.76159762857869762 11 0.18957591442928351
		3 3 0.04832925874559052 10 0.74101142363070982 11 0.21065931762369985
		3 3 0.050693174894978266 10 0.74130233231076048 11 0.20800449279426117
		3 3 0.065094603933559314 10 0.75417009431166149 11 0.18073530175477942
		3 3 0.03938299780709574 10 0.73889915288807806 11 0.22171784930482619
		3 3 0.053709791762165629 10 0.75154227504033466 11 0.19474793319749964
		3 3 0.04587120533082488 10 0.75265661939805628 11 0.20147217527111866
		3 3 0.059948559437473514 10 0.75891345271243926 11 0.18113798785008717
		3 3 0.053104424744366233 10 0.74818106728393963 11 0.19871450797169429
		3 3 0.064276751121340847 10 0.75549602271931726 11 0.18022722615934189
		3 3 0.02979639459823007 10 0.6944156871250059 11 0.27578791827676397
		3 10 0.10000078678131105 11 0.70241078258188028 12 0.19758843063680875
		2 10 0.40000044703483584 11 0.59999955296516416
		3 3 0.039247853469481453 10 0.68473820245788952 11 0.27601394407262908
		3 3 0.025642956302838804 10 0.68738628689160275 11 0.2869707568055585
		3 3 8.3909463103521719e-08 10 0.50000058806014003 11 0.49999932803039693
		3 3 9.5830440511763158e-08 10 0.50000069071481834 11 0.49999921345474119
		3 3 1.0605061784063295e-07 10 0.50000070310703493 11 0.49999919084234723
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		3 3 3.2321794933346475e-08 10 0.50000022981989001 11 0.49999973785831503
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 11 0.4 12 0.6
		2 11 0.4 12 0.6
		2 11 0.4 12 0.6
		3 10 4.0316822405402223e-08 11 0.39999986711933505 12 0.60000009256384257
		2 11 0.4 12 0.6
		3 10 6.0323045615918957e-08 11 0.39999979526284046 12 0.60000014441411398
		3 3 0.014963518462191986 10 0.60639602026667827 11 0.37864046127112977
		3 3 0.021848053259831871 10 0.64123941988141031 11 0.33691252685875789
		3 3 0.02736052838199592 10 0.65815661913895485 11 0.31448285247904939
		2 11 0.4 12 0.6
		2 11 0.4 12 0.6
		3 10 8.9920259638759523e-08 11 0.39999968512190054 12 0.60000022495783989
		3 3 0.022586116752638902 10 0.60870130728750571 11 0.36871257595985535
		3 3 0.026863825940119237 10 0.64211033151327834 11 0.33102584254660244
		3 3 0.024434956949322333 10 0.65488789950834514 11 0.3206771435423324
		3 3 0.012955511869676958 10 0.61612037796938501 11 0.37092411016093796
		3 3 0.017953294936143515 10 0.64475767714856702 11 0.33728902791528947
		3 3 0.020112310720365428 10 0.65367918105005185 11 0.32620850822958264
		2 11 0.4 12 0.6
		3 10 3.0262772270361894e-07 11 0.40000091518019898 12 0.59999878219207836
		2 11 0.4 12 0.6
		3 3 0.023462901707690827 10 0.66443383162428882 11 0.31210326666802035
		3 3 0.022182542252015363 10 0.6598842506471152 11 0.31793320710086947
		3 3 0.02454819199932565 10 0.66275253120844724 11 0.31269927679222709
		3 10 0.10000078678131105 11 0.70241087471048425 12 0.19758833850820481
		2 10 0.40000044537287072 11 0.59999955462712928
		3 10 0.10000118901893984 11 0.7024108176409799 12 0.19758799334008029
		2 10 0.40000074228687482 11 0.59999925771312512
		3 10 0.1000011890181213 11 0.70241134425408813 12 0.19758746672779054
		2 10 0.40000089074301293 11 0.59999910925698707
		3 10 0.10000039633963526 11 0.70241191521714585 12 0.19758768844321897
		2 10 0.4 11 0.6
		2 10 0.10000079267886122 11 0.70241178652282543;
	setAttr ".wl[633:845].w"
		1 12 0.19758742079831335
		2 10 0.40000014845759324 11 0.59999985154240676
		3 10 0.10000079267892945 11 0.70241216747685919 12 0.19758703984421147
		2 10 0.40000014845759324 11 0.59999985154240676
		3 10 0.1 11 0.70241032669538483 12 0.19758967330461519
		2 10 0.40000014845797982 11 0.59999985154202029
		3 10 0.10000118901853058 11 0.70240994256819966 12 0.19758886841326981
		2 10 0.40000074228532867 11 0.59999925771467133
		3 10 0.1000007926793387 11 0.70241053689521527 12 0.19758867042544603
		2 10 0.40000044537277979 11 0.59999955462722021
		3 10 0.10000079267804268 11 0.70241144411289291 12 0.19758776320906435
		2 10 0.40000020265579228 11 0.59999979734420772
		3 10 0.10000079267886122 11 0.7024109040421046 12 0.19758830327903415
		2 10 0.40000014845711579 11 0.59999985154288416
		3 10 0.10000039633966937 11 0.70241095732285208 12 0.19758864633747858
		2 10 0.40000044537468971 11 0.59999955462531029
		3 3 0.12569092054406777 10 0.79056949271949928 11 0.0837395867364331
		3 3 0.099315037772586379 10 0.9 11 0.00068496222741359339
		3 3 0.12593222334223472 10 0.7592979772850148 11 0.11476979937275052
		3 3 0.098743405996111269 10 0.9 11 0.0012565940038886958
		3 3 0.15038628500212181 10 0.75782213233328544 11 0.09179158266459303
		3 3 0.098637139565640117 10 0.9 11 0.0013628604343598656
		3 3 0.13443723562699167 10 0.76294472316391737 11 0.10261804120909093
		3 3 0.09850643466935316 10 0.9 11 0.0014935653306468177
		3 3 0.12787191280891858 10 0.75622327972561165 11 0.11590480746546997
		3 3 0.12953481389602545 10 0.75690815750335183 11 0.11355702860062283
		3 3 0.12577088022271141 10 0.7746253271791943 11 0.099603792598094418
		3 3 0.099325741192081693 10 0.9 11 0.00067425880791828876
		3 3 0.099083573232808919 10 0.9 11 0.00091642676719105366
		3 3 0.09906377910418615 10 0.9 11 0.00093622089581381883
		3 3 0.092452644333402084 10 0.77162090658703042 11 0.13592644907956755
		3 3 0.12114842284626352 10 0.75437112495966885 11 0.12448045219406761
		3 3 0.087643605506439959 10 0.77103258084675419 11 0.14132381364680582
		3 3 0.099117292221551093 10 0.9 11 0.00088270777844887789
		3 3 0.098621559446491855 10 0.90000000000000013 11 0.0013784405535081413
		3 3 0.099262643292832284 10 0.9 11 0.00073735670716769234
		3 3 0.11287615804167746 10 0.76998475034650138 11 0.11713909161182116
		3 3 0.10885186781959351 10 0.76465033728918452 11 0.1264977948912222
		3 3 0.096924819367220791 10 0.78000334391521275 11 0.12307183671756643
		3 3 0.099188248973029206 10 0.9 11 0.00081175102697076957
		3 3 0.09855360039670269 10 0.9 11 0.0014463996032972996
		2 3 0.099999999999999978 10 0.9
		3 3 0.093776945479270332 10 0.80164638380021147 11 0.10457667072051839
		3 3 0.13037004335559443 10 0.7873220952141754 11 0.082307861430230334
		3 3 0.10666138404579704 10 0.77806324144050143 11 0.11527537451370171
		3 3 0.099526350555342286 10 0.9 11 0.00047364944465768663
		3 3 0.099322605809933254 10 0.9 11 0.00067739419006672354
		3 3 0.099610819280964324 10 0.9 11 0.00038918071903565224
		3 3 0.080124745470130793 10 0.9 11 0.019875254529869192
		3 3 0.092145678238351195 10 0.9 11 0.0078543217616487832
		3 3 0.097520380959392403 10 0.9 11 0.0024796190406075739
		3 3 0.096198547362262424 10 0.9 11 0.0038014526377375584
		3 3 0.08936016956094657 10 0.9 11 0.010639830439053406
		3 3 0.073111472729142535 10 0.9 11 0.026888527270857446
		3 3 0.094823616925554188 10 0.9 11 0.0051763830744457895
		3 3 0.088979098077142313 10 0.9 11 0.011020901922857667
		3 3 0.08018817222601983 10 0.9 11 0.019811827773980144
		3 3 0.094211352178555918 10 0.89999999999999991 11 0.0057886478214440725
		3 3 0.087581281738561986 10 0.9 11 0.012418718261437985
		3 3 0.077177450784187057 10 0.9 11 0.022822549215812921
		3 3 0.081497639860930629 10 0.9 11 0.018502360139069356
		3 3 0.092278215904489896 10 0.9 11 0.0077217840955100961
		3 3 0.097145714674508193 10 0.9 11 0.0028542853254917874
		3 3 0.079007631722215615 10 0.9 11 0.020992368277784355
		3 3 0.091959848332633265 10 0.9 11 0.0080401516673667128
		3 3 0.097550622816837768 10 0.9 11 0.0024493771831622124
		3 3 0.078669817944807208 10 0.9 11 0.021330182055192774
		3 3 0.090782204558341198 10 0.9 11 0.0092177954416587798
		3 3 0.096558311587332954 10 0.9 11 0.0034416884126670208
		3 3 0.09617326610459806 10 0.9 11 0.0038267338954019307
		3 3 0.095864299736013542 10 0.9 11 0.0041357002639864412
		3 3 0.096157415724052203 10 0.9 11 0.003842584275947772
		3 3 0.087475837614632818 10 0.9 11 0.012524162385367171
		3 3 0.086756993295502113 10 0.9 11 0.013243006704497863
		3 3 0.087320710466962687 10 0.9 11 0.012679289533037291
		3 3 0.067613050083388332 10 0.9 11 0.032386949916611639
		3 3 0.068652187301371403 10 0.9 11 0.031347812698628581
		3 3 0.069153657395262011 10 0.89999998263967973 11 0.030846359965058249
		3 3 0.097489333763861916 10 0.9 11 0.0025106662361380665
		3 3 0.097819401578841447 10 0.9 11 0.0021805984211585357
		3 3 0.097950481902908726 10 0.9 11 0.0020495180970912514
		3 3 0.090632411977112484 10 0.9 11 0.0093675880228874953
		3 3 0.092147405337136126 10 0.9 11 0.0078525946628638498
		3 3 0.092252214505917071 10 0.9 11 0.0077477854940829049
		3 3 0.077388764154638828 10 0.9 11 0.022611235845361136
		3 3 0.080301670441052742 10 0.9 11 0.019698329558947233
		3 3 0.078702407564031157 10 0.9 11 0.021297592435968828
		3 3 0.10000000000348941 10 0.9 11 -3.4894266057731908e-12
		3 3 0.099738908054033015 10 0.9 11 0.00026109194596696944
		3 3 0.0997163391825686 10 0.9 11 0.00028366081743136845
		2 3 0.099999999999999978 10 0.9
		3 3 0.099999999897027056 10 0.9 11 1.0297292109189207e-10
		3 3 0.099813664798692442 10 0.90000000000000013 11 0.00018633520130754755
		3 3 0.099999999670275008 10 0.9 11 3.2972495919945858e-10
		3 3 0.099884860073876688 10 0.9 11 0.00011513992612328507
		3 3 0.099855530868581788 10 0.9 11 0.00014446913141819261
		3 3 0.070129507688027198 10 0.9 11 0.029870492311972786
		3 3 0.087300707999892757 10 0.90000000000000013 11 0.012699292000107229
		3 3 0.095974563941274973 10 0.9 11 0.0040254360587250078
		3 3 0.069990572598800135 10 0.89999978217897136 11 0.030009645222228515
		3 3 0.086877073592711754 10 0.9 11 0.013122926407288231
		3 3 0.095635125966008053 10 0.9 11 0.0043648740339919303
		3 3 0.071191760018170208 10 0.9 11 0.02880823998182977
		3 3 0.087672150135328947 10 0.9 11 0.012327849864671033
		3 3 0.095930159104128179 10 0.9 11 0.0040698408958717907
		3 10 0.065447805771836648 11 0.17639392764970954 12 0.75815826657845398
		3 10 0.064611766896573386 11 0.17558327047638694 12 0.75980496262703967
		3 10 0.06898338393642077 11 0.17995533157466695 12 0.7510612844889123
		3 10 0.064369649771067045 11 0.1844263480282789 12 0.7512040022006542
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 0.068259234660100712 11 0.17963503584510487 12 0.75210572949479437
		3 10 0.065674127698290244 11 0.17924370033211418 12 0.75508217196959571
		3 10 0.06601179505759755 11 0.17950875131761485 12 0.75447945362478774
		3 10 0.062972900459903086 11 0.17806769080472215 12 0.75895940873537493
		3 10 0.060007620800444139 11 0.17821906569730597 12 0.76177331350224986
		3 10 0.061140777371517505 11 0.17825081820861274 12 0.76060840441986977
		3 10 0.063552475427164898 11 0.17913824764889244 12 0.75730927692394268
		3 10 0.060782577356909451 11 0.18211960491013926 12 0.75709781773295126
		3 10 0.061278794422389135 11 0.18567112212457371 12 0.75305008345303714
		3 10 0.064326470284533949 11 0.18593043562569281 12 0.74974309408977335
		3 10 0.063253297879757836 11 0.18531752818856992 12 0.7514291739316723
		3 10 0.065267502893057508 11 0.18488412059421261 12 0.74984837651273006
		1 12 1
		1 12 1
		1 12 1
		3 10 1.4176592205365682e-07 11 4.0617543604721136e-07 12 0.99999945205864194
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 3.9010008874455655e-09 11 1.0513871182569714e-08 12 0.99999998558512793
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 9.0484568423878435e-08 11 2.6509885051999556e-07 12 0.99999964441658107
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 1.6606439277798188e-07 11 4.7775869799182698e-07 12 0.99999935617690927
		3 10 1.2882765110796146e-08 11 3.7558621758913133e-08 12 0.99999994955861315
		3 10 5.9572275590878923e-09 11 1.5677392098562701e-08 12 0.99999997836538035
		1 12 1
		1 12 1
		3 10 1.2134897462409721e-07 11 3.3119646968218917e-07 12 0.99999954745455566
		1 12 1
		1 12 1
		3 10 3.9346095953939885e-09 11 1.0699555356360367e-08 12 0.99999998536583501
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 3.1801808223839528e-08 11 9.6356731544312674e-08 12 0.99999987184146022
		1 12 1
		1 12 1
		3 10 4.7840510225464825e-08 11 1.3484862071578637e-07 12 0.99999981731086907
		1 12 1
		1 12 1
		1 12 1
		3 3 0.39689094784833745 4 0.60300711190242773 6 0.0001019402492347811
		3 3 0.28669302542328945 4 0.70811151917423254 6 0.0051954554024779631
		3 3 0.014165332376944235 4 0.94066277980209423 6 0.045171887820961758
		3 3 0.39689095120260653 4 0.60300710862482532 6 0.0001019401725680605
		3 3 0.28669302542328945 4 0.70811151917423254 6 0.0051954554024779631
		3 3 0.014165203583531946 4 0.94066288121347885 6 0.04517191520298941
		3 3 0.33234402234838567 4 0.6640029777833687 6 0.0036529998682456139
		3 3 0.38081324124747323 4 0.6176438823560495 6 0.0015428763964773025
		3 3 0.40300682326880749 4 0.59654701653369879 6 0.00044616019749381468
		3 3 0.33563974263432206 4 0.66413910323725223 6 0.00022115412842578202
		3 3 0.018119772194760148 4 0.93684367576021277 6 0.045036552045027198
		3 3 0.06129751016555212 4 0.90474158454185538 6 0.033960905292592575
		3 3 0.13907302429162033 4 0.8401014575129625 6 0.020825518195417274
		3 3 0.22463016577328215 4 0.76440005651173204 6 0.010969777714985821
		3 3 0.30125423474833279 4 0.6935824558901259 6 0.0051633093615413321
		3 3 0.3086987522225465 4 0.68637849888923119 6 0.0049227488882223717
		3 3 0.30125423474833279 4 0.6935824558901259 6 0.0051633093615413321
		3 3 0.021181581049638281 4 0.93282087018512982 6 0.045997548765231926
		2 3 0.016625855424882912 4 0.93554376467596168;
	setAttr ".wl[845:1040].w"
		1 6 0.047830379899155569
		3 3 0.021181617433982679 4 0.93282082951935441 6 0.045997553046662906
		3 3 0.061297336145897371 4 0.90474172815208076 6 0.033960935702021952
		3 3 0.13907302720099954 4 0.84010145505149081 6 0.020825517747509729
		3 3 0.22463006149260298 4 0.76440015109014725 6 0.010969787417249879
		3 3 0.40300682326880749 4 0.59654701653369879 6 0.00044616019749381468
		3 3 0.38081323336799622 4 0.61764389018153665 6 0.0015428764504671038
		3 3 0.33234401033240474 4 0.66400298940705182 6 0.0036530002605434189
		3 3 0.018119686302931544 4 0.9368437317354702 6 0.045036581961598279
		3 3 0.33563974263432206 4 0.66413910323725223 6 0.00022115412842578202
		3 3 0.37550135534494838 4 0.62438668018479093 6 0.00011196447026074002
		3 3 0.37445361339259209 4 0.62548486433967376 6 6.1522267734167422e-05
		3 3 0.37550135150672548 4 0.62438668406611264 6 0.00011196442716194334
		3 3 0.3344783679633162 4 0.66454036160054331 6 0.00098127043614053104
		3 3 0.30214660106058455 4 0.69459778743801637 6 0.003255611501399097
		3 3 0.26008874579979757 4 0.73233779301981983 6 0.0075734611803826221
		3 3 0.16431171322230059 4 0.81938154100811733 6 0.016306745769582236
		3 3 0.074436879698594943 4 0.89404888054754073 6 0.03151423975386438
		3 3 0.21377926663970467 4 0.77298038423521809 6 0.013240349125077306
		3 3 0.13309867951690454 4 0.84301871322099453 6 0.023882607262101081
		3 3 0.069996425310928784 4 0.89497465032056067 6 0.035028924368510621
		3 3 0.20886072738936423 4 0.7778762713568157 6 0.013263001253820045
		3 3 0.12604480951030711 4 0.84934733039607324 6 0.024607860093619663
		3 3 0.064408317680286431 4 0.89931709674118543 6 0.036274585578528057
		3 3 0.21377928252520836 4 0.77298036756382327 6 0.013240349910968445
		3 3 0.13309866204145698 4 0.84301872103479125 6 0.023882616923751855
		3 3 0.069996457344935689 4 0.89497461405099443 6 0.035028928604069934
		3 3 0.26008874579979757 4 0.73233779301981983 6 0.0075734611803826221
		3 3 0.16431171322230059 4 0.81938154100811733 6 0.016306745769582236
		3 3 0.074436879698594943 4 0.89404888054754073 6 0.03151423975386438
		3 3 0.30214660106058455 4 0.69459778743801637 6 0.003255611501399097
		3 3 0.3344783679633162 4 0.66454036160054331 6 0.00098127043614053104
		3 3 0.31187302280568269 4 0.68804098253787127 6 8.5994656446050069e-05
		3 3 0.30955310663311936 4 0.69040876439729404 6 3.8128969586586832e-05
		4 3 0.3118729353335673 4 0.68804106968709133 6 8.5994487298578717e-05 
		12 4.9204281365740492e-10
		3 3 0.36544410168096236 4 0.63159802023493206 6 0.0029578780841054962
		3 3 0.38738196413409504 4 0.61027115992864178 6 0.0023468759372632154
		3 3 0.36544416649689804 4 0.63159795725579793 6 0.002957876247303994
		3 3 0.39954224618719314 4 0.59899864193736263 6 0.0014591118754442543
		3 3 0.42083822572652457 4 0.57807230898300777 6 0.0010894652904676807
		3 3 0.39954224637226354 4 0.59899864170243733 6 0.0014591119252991857
		3 3 0.39643727999193829 4 0.60294003503614924 6 0.00062268497191246834
		3 3 0.40769869881995663 4 0.59182779784234829 6 0.0004735033376949297
		3 3 0.39643727999193829 4 0.60294003503614924 6 0.00062268497191246834
		3 3 0.0099073224517778873 4 0.93974400793582913 6 0.050348669612393114
		3 3 0.0066764372717671092 4 0.94064305204336696 6 0.052680510684865844
		3 3 0.0099073390946089104 4 0.93974400205825137 6 0.0503486588471398
		3 3 0.23207310864090377 4 0.7599840099726014 6 0.0079428813864948367
		3 3 0.23207312534772626 4 0.7599839943833111 6 0.007942880268962612
		3 3 0.24845971768951894 4 0.75026218176921267 12 0.0012781005412685013
		4 3 3.3946208866896292e-08 4 0.94046786745414701 6 0.043340795613629399 
		12 0.016191302986014802
		3 4 0.94046787731927239 6 0.043340793891186953 9 0.016191328789540649
		3 3 0.24845971768951894 4 0.75026218176921267 9 0.0012781005412685013
		3 3 0.26179300785726728 4 0.73476110289978536 12 0.0034458892429473113
		3 3 0.24053388642202184 4 0.75260361666207565 12 0.006862496915902616
		3 3 0.11864351919591076 4 0.86796292665153618 6 0.013393554152553019
		3 3 0.05786641214133751 4 0.91281299352226253 6 0.029320594336400146
		3 3 0.11864351919591076 4 0.86796292665153618 6 0.013393554152553019
		3 3 0.05786641214133751 4 0.91281299352226253 6 0.029320594336400146
		3 3 0.24053387249653788 4 0.75260362767268207 9 0.0068624998307801359
		3 3 0.26179300785726728 4 0.73476110289978536 9 0.0034458892429473113
		3 3 0.2274289104708507 4 0.77211662973985995 9 0.00045445978928946321
		3 3 0.23010937721868838 4 0.7697266149487122 9 0.00016400783259941802
		3 3 0.22742892718375191 4 0.77211661314537061 12 0.00045445967087769893
		3 4 0.93110442176799246 6 0.051563021169880312 9 0.017332557062127236
		3 4 0.93445701432923611 6 0.055032805127468422 9 0.01051018054329555
		3 4 0.93110442176799246 6 0.051563021169880312 12 0.017332557062127236
		3 3 0.18740293960490245 4 0.80657352781560565 6 0.0060235325794919603
		3 3 0.18740296990601921 4 0.80657349550549484 6 0.006023534588485948
		3 3 0.26071717092074675 4 0.73701346020415859 9 0.0022693688750946711
		3 3 0.20222207234216011 4 0.79102186917144179 6 0.0067560584863981341
		3 3 0.26740215692068497 4 0.73234768827428542 9 0.00025015480502963734
		3 3 0.28698762978235109 4 0.71208098804712294 9 0.00093138217052589779
		4 3 1.9211065028479889e-07 4 0.93800930838889696 6 0.054159628943984191 
		9 0.0078308705564685728
		3 3 0.007799288010636396 4 0.9420484223631701 6 0.050152289626193544
		3 3 0.065477181365302145 4 0.90433823498741051 6 0.03018458364728736
		3 3 0.021093439945964236 4 0.9356307678758774 6 0.04327579217815835
		3 3 0.1376636215314184 4 0.84567614295462634 6 0.016660235513955186
		4 3 0.28698763868206117 4 0.71208097944974702 6 3.075408570029142e-11 
		12 0.00093138183743767726
		3 3 0.26740215692068497 4 0.73234768827428542 12 0.00025015480502963734
		3 3 0.28606422072157822 4 0.71227371147177942 9 0.0016620678066423501
		4 3 0.26071721043093027 4 0.73701341975342083 6 3.104793073081109e-09 
		12 0.0022693667108558604
		3 3 0.28606422077661769 4 0.71227371146029217 12 0.0016620677630900923
		3 3 0.20222208425409219 4 0.79102185767679545 6 0.0067560580691123362
		3 3 0.021093439945964236 4 0.9356307678758774 6 0.04327579217815835
		3 3 0.065477178719825002 4 0.90433823685259085 6 0.030184584427584194
		3 3 0.13766363116284908 4 0.8456761334509576 6 0.016660235386193243
		3 3 0.0077992549912165188 4 0.94204844298047974 6 0.050152302028303772
		3 3 0.26976065230545332 4 0.73013580026059921 9 0.00010354743394748019
		2 14 0.77678051290050409 15 0.22321948709949591
		2 14 0.7676955764188711 15 0.23230442358112896
		2 14 0.77372878511066656 15 0.22627121488933349
		2 14 0.76668268053525701 15 0.23331731946474302
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 14 0.75608289122356309 15 0.24391710877643696
		2 14 0.74832583987677981 15 0.25167416012322025
		2 14 0.76114656929000801 15 0.23885343070999193
		2 14 0.75346490151357592 15 0.24653509848642408
		2 14 0.74520657997394535 15 0.25479342002605465
		2 14 0.75599012418163358 15 0.24400987581836645
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		2 14 0.75986895716371261 15 0.24013104283628742
		2 14 0.74975884029840523 15 0.25024115970159477
		2 14 0.7571498762202562 15 0.24285012377974377
		2 14 0.76748992304810859 15 0.23251007695189138
		2 14 0.75900756092629995 15 0.24099243907370005
		2 14 0.76517636207357775 15 0.23482363792642233
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553138
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553138
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 13 0.75037469962854775 14 0.24962530037145225
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553138
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553138
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		2 13 0.40026252975785959 14 0.59973747024214041
		2 13 0.40026252975785959 14 0.59973747024214041
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 14 0.9 15 0.1
		2 14 0.9 15 0.1
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553138
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.8306307298205966 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003341346285016 13 0.83063072982059671 14 0.069335856716553151
		2 1 0.20006682692570033 13 0.79993317307429967
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		2 14 0.9 15 0.1
		2 13 0.40026252975785959 14 0.59973747024214041
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		1 1 0.050016706731425081;
	setAttr ".wl[1040:1231].w"
		2 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 1 0.050016706731425081 13 0.79050271472457223 14 0.15948057854400269
		3 13 0.19922078579853977 14 0.75 15 0.05077921420146024
		3 13 0.19916521780399377 14 0.75 15 0.050834782196006255
		3 13 0.19917916646734649 14 0.75 15 0.050820833532653521
		3 13 0.19914860870719681 14 0.75 15 0.050851391292803187
		3 13 0.19991709349366057 14 0.75 15 0.050082906506339439
		3 13 0.20084970626753945 14 0.75 15 0.049150293732460534
		3 13 0.1999404883787812 14 0.75 15 0.050059511621218807
		3 13 0.1999264317395448 14 0.75 15 0.050073568260455191
		3 13 0.20090770550861356 14 0.75 15 0.049092294491386447
		3 13 0.19998715864064376 14 0.75 15 0.050012841359356248
		3 13 0.19999047234717515 14 0.75 15 0.050009527652824855
		3 13 0.20098250376551688 14 0.75 15 0.049017496234483121
		3 13 0.200018786094455 14 0.75 15 0.049981213905545004
		3 13 0.19993130695161701 14 0.75 15 0.05006869304838299
		3 13 0.20084270958047329 14 0.75 15 0.049157290419526718
		3 13 0.19988543779857937 14 0.75 15 0.050114562201420652
		2 17 0.77678051290050409 18 0.22321948709949591
		2 17 0.7676955764188711 18 0.23230442358112896
		2 17 0.77372877797396866 18 0.22627122202603142
		2 17 0.76668266714195954 18 0.2333173328580404
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 17 0.75608289122356309 18 0.24391710877643696
		2 17 0.74832583987677981 18 0.25167416012322025
		2 17 0.76114656623330801 18 0.23885343376669202
		2 17 0.75346489314559251 18 0.24653510685440755
		2 17 0.74520657997394535 18 0.25479342002605465
		2 17 0.75599012557703227 18 0.24400987442296779
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.20006674941377137 16 0.79993319686062025 17 5.3725608427237928e-08
		2 17 0.75986858541818747 18 0.24013141458181253
		2 17 0.74975860210981393 18 0.25024139789018607
		2 17 0.7571497229469859 18 0.24285027705301404
		2 17 0.76748992304810859 18 0.23251007695189138
		2 17 0.75900756092629995 18 0.24099243907370005
		2 17 0.76517635545517215 18 0.23482364454482796
		3 16 0.40026237397857706 17 0.59973758667462163 18 3.9346801317869609e-08
		2 17 0.9 18 0.1
		3 16 0.40026237393551961 17 0.59973758667462163 18 3.9389858755354957e-08
		2 17 0.9 18 0.1
		3 16 0.40026236196082543 17 0.59973759563096629 18 4.2408208218643025e-08
		2 17 0.89999987349250032 18 0.10000012650749973
		3 1 0.20006663612710593 16 0.79993323162524255 17 1.3224765151320102e-07
		3 1 0.10003328527004456 16 0.830630626972505 17 0.069336087757450413
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		3 1 0.20006678518850782 16 0.79993318588231843 17 2.8929173768512728e-08
		3 1 0.10003332998851418 16 0.83063066284978559 17 0.069336007161700172
		3 1 0.2000667374888592 16 0.79993320052005412 17 6.1991086646812977e-08
		3 1 0.10003332998846512 16 0.83063066284974618 17 0.069336007161788574
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 17 0.9 18 0.1
		3 16 0.40026227862282859 17 0.59973765832537929 18 6.3051792082906712e-08
		2 17 0.9 18 0.1
		3 16 0.40026236318154723 17 0.59973759563096629 18 4.1187486455361464e-08
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.50000000465294581 18 0.49999999534705425
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		3 1 0.10003334787583333 16 0.83063067720064276 17 0.069335974923523835
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553138
		3 1 0.20006682811083523 16 0.79993317271061382 17 -8.2144897877748702e-10
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.20006677922605171 16 0.79993318771203548 17 3.3061912878300262e-08
		3 16 0.40026230295210763 17 0.59973764041268984 18 5.6635202491502298e-08
		3 16 0.40026237491753708 17 0.59973758641760122 18 3.8664861642050088e-08
		3 16 0.40026237568520046 17 0.59973758585797499 18 3.8456824638465187e-08
		2 17 0.89999983691050767 18 0.10000016308949236
		2 17 0.89999985677832517 18 0.10000014322167484
		2 17 0.89999975740994509 18 0.10000024259005504
		3 1 0.10003337172565763 16 0.8306306963351715 17 0.069335931939170869
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.20006675537622742 16 0.79993319503090321 17 4.9592869317450393e-08
		3 1 0.10003332998846511 16 0.83063066284974629 17 0.069336007161788588
		3 1 0.20006683288815638 16 0.79993317124458274 17 -4.1327391097875319e-09
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.2000668275182223 16 0.79993317289247068 17 -4.1069295909158023e-10
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.83063072982059671 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.83063072982059671 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		2 17 0.9 18 0.1
		3 16 0.4002623028851035 17 0.59973764041268984 18 5.6702206606821822e-08
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		3 1 0.050016578538619468 16 0.79050261187648052 17 0.15948080958489996
		3 1 0.050016706731425081 16 0.79050271472457223 17 0.15948057854400269
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016706731425081 16 0.79050271472457223 17 0.15948057854400269
		3 1 0.050016647106864327 16 0.79050266688825044 17 0.15948068600488513
		3 1 0.050016644125636292 16 0.79050266449643447 17 0.15948069137792928
		3 1 0.050016676919144708 16 0.79050269080641133 17 0.15948063227444392
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016676919144708 16 0.79050269080641133 17 0.15948063227444392
		3 1 0.05001666499423256 16 0.79050268123914702 17 0.15948065376662041
		3 1 0.050016623257040031 16 0.79050264775372192 17 0.15948072898923812
		3 1 0.050016679900372743 16 0.79050269319822741 17 0.1594806269013998
		3 1 0.050016667975460595 16 0.7905026836309631 17 0.15948064839357629
		3 1 0.050016664994232553 16 0.79050268123914713 17 0.15948065376662041
		3 1 0.050016685862828821 16 0.79050269798185957 17 0.15948061615531156
		3 16 0.19922056047747014 17 0.75000016987323759 18 0.050779269649292261
		3 16 0.1991649210246923 17 0.75000022351741791 18 0.050834855457889815
		3 16 0.19917916646734649 17 0.75 18 0.050820833532653521
		3 16 0.19914843065446561 17 0.75000013411045074 18 0.050851435235083634
		3 16 0.19991709340569283 17 0.75 18 0.050082906594307197
		3 16 0.2008495865517855 17 0.75000008940696716 18 0.049150324041247327
		3 16 0.19994034556399001 17 0.75000010728836064 18 0.050059547147649396
		3 16 0.199926192891695 17 0.75000017924357887 18 0.050073627864726092
		3 16 0.20090750193306242 17 0.75000015199184422 18 0.049092346075093399
		3 16 0.19998695604300995 17 0.75000015199184422 18 0.050012891965145877
		3 16 0.19999047234717515 17 0.75 18 0.050009527652824855
		3 16 0.20098250240534685 17 0.75000000102052478 18 0.049017496574128412
		3 16 0.200018786094455 17 0.75 18 0.049981213905545004
		3 16 0.19993105669809189 17 0.75000018775463106 18 0.050068755547277084
		3 16 0.20084254198425625 17 0.75000012516975401 18 0.049157332845989735
		3 16 0.19988525908707164 17 0.75000013411045074 18 0.050114606802477646
		3 1 0.60346758030795355 13 0.062559151089791529 16 0.33397326860225496
		3 2 0.069410386953924916 3 0.6534017741723479 4 0.27718783887372711
		2 1 0.46807997827914272 16 0.53192002172085728
		3 2 0.079108514553909548 3 0.71989526034986784 4 0.20099622509622259
		3 1 0.60346758030795355 13 0.33397326860225496 16 0.062559151089791529
		3 2 0.069410386953924916 3 0.6534017741723479 4 0.27718783887372711
		2 1 0.46807997827914272 13 0.53192002172085728
		3 2 0.079108514553909548 3 0.71989526034986784 4 0.20099622509622259
		3 1 0.21712167315767075 2 0.6 3 0.18287832684232924
		3 1 0.2072328586146609 2 0.6 16 0.19276714138533912
		3 1 0.2072328586146609 2 0.6 13 0.19276714138533912
		3 1 0.21712167315767075 2 0.6 3 0.18287832684232924
		2 1 0.40085578040583114 16 0.59914421959416897
		4 1 0.45359896153085533 13 0.043081465573640725 16 0.50331957309035069 
		17 -1.9484668677561279e-10
		3 1 0.50593975939861735 13 0.062716056007504364 16 0.43134418459387824
		3 1 1.0011678511451765e-09 2 0.4336653392343055 3 0.56633465976452657
		3 2 0.047885454025920024 3 0.95211451831188931 4 2.7662190631523831e-08
		3 2 0.062721810971173159 3 0.9 4 0.037278189028826812
		3 3 0.67866834327763703 4 0.26531943289157489 10 0.056012223830788049
		3 3 0.71550528451076056 4 0.22983216449162905 10 0.054662550997610554
		3 3 0.70891454234016116 4 0.2259104271969222 10 0.065175030462916728
		3 1 0.3789981584914377 2 0.33352842771994451 16 0.28747341378861779
		3 1 0.60000002541495245 2 5.4741116782487009e-08 16 0.3999999198439308
		1 1 0.49451995146494832;
	setAttr ".wl[1231:1369].w"
		1 16 0.50548004853505168
		2 1 0.57308171089545157 13 0.42691828910454854
		2 1 0.75001952581833053 13 0.24998047418166941
		2 1 0.573081759246721 16 0.42691824075327911
		3 2 0.10292905452252107 3 0.58140709289920678 4 0.31566385257827223
		3 2 0.10597065013994952 3 0.54207514969719051 4 0.35195420016286005
		3 2 0.10292905452252107 3 0.58140709289920678 4 0.31566385257827223
		3 1 0.37899813753435729 2 0.33352841469306449 13 0.28747344777257822
		2 1 0.6 13 0.4
		2 1 0.49451995146494832 13 0.50548004853505168
		3 1 0.50593979601637884 13 0.43134412386876997 16 0.062716080114851191
		3 1 0.45359896122529508 13 0.50331957320106424 16 0.043081465573640725
		2 1 0.40085578040583114 13 0.59914421959416897
		3 3 0.70891454234016116 4 0.2259104271969222 7 0.065175030462916728
		3 3 0.71550545647553387 4 0.22983196952105867 7 0.054662574003407571
		3 3 0.67866834327763703 4 0.26531943289157489 7 0.056012223830788049
		3 1 0.42376902372795183 2 0.35574577986294093 13 0.22048519640910733
		2 1 0.6 13 0.4
		3 1 0.57765000957392754 13 0.38511318092554386 16 0.037236809500528691
		3 1 0.63452560628776544 13 0.12317085532836657 16 0.24230353838386814
		3 1 0.6454500960991465 13 0.10007000637710492 16 0.25447989752374867
		3 1 0.63452560355196619 13 0.24230354084818947 16 0.12317085559984441
		3 2 0.088131803928674451 3 0.4420196827021477 4 0.46984851336917793
		3 2 0.086995401517750759 3 0.36286024848073012 4 0.55014435000151918
		3 2 0.088131793593439034 3 0.44201970806147772 4 0.4698484983450833
		3 1 0.57765000957392754 13 0.037236809500528691 16 0.38511318092554386
		3 1 0.59999999866783671 13 2.2194868028479034e-09 16 0.39999999911267647
		3 1 0.4237691219656593 2 0.35574556548339537 16 0.22048531255094544
		3 2 0.0629160673004589 3 0.9 4 0.037083932699541092
		3 2 0.047885453331489206 3 0.95211452121943441 4 2.5449076430044219e-08
		2 2 0.43207535381336631 3 0.56792464618663374
		3 2 0.062916068372854003 3 0.9 4 0.037083931627145975
		2 2 0.047885443016630003 3 0.95211455698337
		2 2 0.43207549670347606 3 0.567924503296524
		3 2 0.062721809828526293 3 0.9 4 0.037278190171473692
		2 2 0.047885443016630003 3 0.95211455698337
		2 2 0.43366611794355681 3 0.56633388205644319
		3 1 0.23027963148772709 2 0.6 3 0.16972036851227293
		3 1 0.22612005727974363 2 0.6 3 0.17387994272025636
		3 1 0.23027963148772709 2 0.6 3 0.16972036851227293
		3 1 0.20201806093558058 2 0.6 13 0.19798193906441941
		3 1 0.17070568922860904 2 0.6 3 0.22929431077139098
		3 1 0.20382619705749641 2 0.6 3 0.19617380294250364
		4 1 0.22633387271627434 2 0.6 3 0.17366605834482376 16 
		6.8938901919843838e-08
		3 1 0.21497385881110087 2 0.6 3 0.18502614118889912
		3 1 0.22633387954733175 2 0.6 3 0.17366612045266827
		3 1 0.20382619864244067 2 0.6 3 0.19617380135755938
		3 1 0.17070569317688125 2 0.6 3 0.22929430682311877
		3 1 0.20201808004999175 2 0.5999999685676618 16 0.19798195138234645
		2 2 0.43008665804535268 3 0.56991334195464727
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.059292144958348073 3 0.9 4 0.040707855041651905
		2 2 0.42193384728772265 3 0.57806615271227735
		2 2 0.047885443016630003 3 0.95211455698337
		4 2 0.058497555696469354 3 0.89999994677241324 4 0.041502484060855022 
		10 1.347026247109998e-08
		3 1 6.1049111805656802e-08 2 0.42975205352039714 3 0.57024788543049099
		3 2 0.047885452843784669 3 0.95211451660186452 4 3.0554350876091269e-08
		4 2 0.059317706514138813 3 0.89999999729881763 4 0.040682295265729952 
		10 9.2131370482829432e-10
		3 1 0.11033625316549667 2 0.38966374683450333 3 0.5
		3 1 7.876119721027223e-09 2 0.047885467413750271 3 0.95211452471013003
		3 2 0.064987947384486933 3 0.89999999965760635 4 0.035012052957906679
		3 1 0.1139813211229407 2 0.38601867887705932 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.065541906781654599 3 0.9 4 0.034458093218345379
		3 1 0.11033625316549667 2 0.38966374683450333 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.064987947779709981 3 0.9 4 0.035012052220289989
		2 2 0.42975199263496516 3 0.57024800736503489
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.059317707487712035 3 0.9 4 0.040682292512287943
		2 2 0.42193384728772265 3 0.57806615271227735
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.058497569766071698 3 0.9 4 0.041502430233928279
		2 2 0.43008691695251183 3 0.56991308304748811
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.059292144958348073 3 0.9 4 0.040707855041651905
		3 1 0.11043295482440138 2 0.38956704517559865 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.064851857991726963 3 0.9 4 0.035148142008273014
		3 1 0.11328236961493432 2 0.38671763038506568 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.065437627569639917 3 0.9 4 0.034562372430360061
		3 1 0.11043295482440138 2 0.38956704517559865 3 0.5
		3 2 0.047885443888002512 3 0.95211455387710031 4 2.2348971511029293e-09
		3 2 0.064851858061556147 3 0.9 4 0.035148141938443837
		2 1 0.49109259418229884 16 0.50890740581770111
		2 1 0.70353705642376851 13 0.29646294357623154
		2 1 0.49109259418229884 13 0.50890740581770111
		3 1 0.50896088439144527 13 0.10961155323751839 16 0.38142756237103648
		3 1 0.54173328975880441 13 0.20875071165565362 16 0.24951599858554202
		3 1 0.50896088415897311 13 0.38142755075844059 16 0.1096115650825864
		3 1 0.55079474338970746 13 0.14708937584193618 16 0.30211588076835638
		3 1 0.55375268983151182 13 0.15338830759802546 16 0.29285900257046271
		3 1 0.55079474338970746 13 0.30211588076835638 16 0.14708937584193618
		3 2 0.038226782360999099 3 0.53615983606867279 4 0.42561338157032819
		3 2 0.055218986961771584 3 0.47255118382768169 4 0.47222982921054668
		4 2 0.038226773247023962 3 0.53615986342925581 4 0.42561335054152361 
		10 1.2782196615684044e-08
		3 3 0.53518732229561206 4 0.4342734303166445 7 0.030539247387743527
		3 2 0.020068317677584241 3 0.38083554939682163 4 0.59909613292559416
		3 3 0.53518741860383812 4 0.43427332039463634 10 0.030539261001525705
		3 2 0.03116223594555579 3 0.44314889221790549 4 0.52568887183653867
		3 2 0.043636069721850537 3 0.31963797462446258 4 0.63672595565368695
		4 2 0.031162232230727782 3 0.44314890318974132 4 0.52568886093896883 
		10 3.640561984508458e-09
		3 1 0.6887209969199225 13 0.22489091616775439 16 0.086388086912323234
		3 1 0.64341034557840038 2 0.14119704582878939 13 0.21539260859281026
		3 1 0.48644099297463383 2 0.39767735269116272 13 0.11588165433420337
		3 1 0.70669355441981407 13 0.088597028628575825 16 0.20470941695161016
		3 1 0.73839294287001267 2 0.11633163954631848 16 0.14527541758366891
		3 1 0.53224246057136015 2 0.39888265752140639 16 0.06887488190723362
		3 1 0.6887209969199225 13 0.086388086912323234 16 0.22489091616775439
		3 1 0.64341023481926474 2 0.14119717622871972 16 0.21539258895201557
		5 1 0.48644089238133059 2 0.39767743859066557 3 7.1883234858088591e-08 
		13 1.1881413981856925e-08 16 0.11588158526335494
		2 1 0.41844106020732963 13 0.58155893979267037
		2 1 0.6 13 0.4
		3 1 0.35549193982025756 2 0.32051860508390179 13 0.32398945509584059
		3 1 0.39230512585141647 13 0.59102876587394837 14 0.016666108274635064
		2 1 0.6 13 0.4
		3 1 0.36236136328344737 2 0.33632643653452721 13 0.30131220018202542
		2 1 0.418411461067834 13 0.581588538932166
		2 1 0.6 13 0.4
		3 1 0.3860059101001348 2 0.34276685136748819 13 0.27122723853237701
		2 1 0.63548167226759911 16 0.36451832773240089
		3 1 0.64737690525269864 2 0.10204483781566773 16 0.25057825693163366
		3 1 0.46689847753977892 2 0.38816709318592774 16 0.14493442927429342
		2 1 0.76247841339614753 16 0.23752158660385247
		2 1 0.74079814012299661 16 0.2592018598770035
		3 1 0.50808735045899578 2 0.37139818766114818 16 0.12051446187985601
		2 1 0.63548168714491282 13 0.36451831285508723
		3 1 0.64737690525269864 2 0.10204483781566773 13 0.25057825693163366
		3 1 0.46689850373612946 2 0.3881671094695277 13 0.14493438679434292
		3 1 0.41841146735984935 13 7.7035663557602266e-09 16 0.58158852493658431
		2 1 0.6 16 0.4
		3 1 0.3860059101001348 2 0.34276685136748819 16 0.27122723853237701
		4 1 0.39230517760458677 13 3.5949976326881059e-08 16 0.59102869246426459 
		17 0.01666609398117214
		3 1 0.59999976737795546 2 3.2922652816245229e-07 16 0.3999999033955165
		4 1 0.36236128336746481 2 0.33632654855686261 3 9.7117789116394502e-08 
		16 0.30131207095788354
		2 1 0.41844106020732963 16 0.58155893979267037
		2 1 0.6 16 0.4
		3 1 0.35549194022970709 2 0.32051860602612192 16 0.32398945374417087;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999996647 0 -2.5895457263264561e-07 0 0 1 0 0
		 2.5895457263264561e-07 0 0.99999999999996647 0 8.0261455553705902e-13 -18.570463180542141 -1.7698899440183267e-14 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999998630007 4.34690151653385e-08 5.2343113640566811e-06 0
		 -4.3469015164684095e-08 0.99999999999999911 -2.3878686030903215e-13 0 -5.234311364056687e-06 1.1256500244902606e-14 0.99999999998630096 0
		 1.1535620852666886e-06 -26.538120269792312 -0.00010497094344287906 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999998630007 4.34690151653385e-08 5.2343113640566811e-06 0
		 -4.3469015164684095e-08 0.99999999999999911 -2.3878686030903215e-13 0 -5.234311364056687e-06 1.1256500244902606e-14 0.99999999998630096 0
		 9.3145207649939401e-07 -37.659236907959077 -0.00010497094339714883 1;
	setAttr ".pm[4]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603611396925e-06 -47.043476104736413 -0.08810954610895308 1;
	setAttr ".pm[5]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603611396927e-06 -72.609054565430881 -20.116723143418248 1;
	setAttr ".pm[6]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603611396925e-06 -72.609062194824773 -28.406041228135049 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999950866636 -3.1306000058254232e-05 1.6130192005340952e-06 0
		 3.1294702638998243e-05 0.99997832926867147 0.0065833132751183104 0 -1.8190814510027319e-06 -0.0065833132214047482 0.99997832975706014 0
		 -18.531153956651607 -41.040710888926014 -0.35823768510715481 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999950866636 -3.1306000058254232e-05 1.6130192005340952e-06 0
		 3.1294702638998243e-05 0.99997832926867147 0.0065833132751183104 0 -1.8190814510027319e-06 -0.0065833132214047482 0.99997832975706014 0
		 -29.090199362170093 -41.040710888925901 0.10437441198389316 1;
	setAttr ".pm[9]" -type "matrix" 1.0000000000000002 4.7261791478829458e-20 -1.4823076577063115e-21 0
		 -4.6525600733657871e-20 1.0000000000000002 -2.3879509480906336e-13 0 1.0587911840567654e-21 2.3879509480906336e-13 0.99999999999999989 0
		 -37.042385101318366 -41.037934228871514 5.36442782928231e-06 1;
	setAttr ".pm[10]" -type "matrix" 0.9999999994933636 -3.1788467910032817e-05 1.663123217924528e-06 0
		 -3.1776640138585574e-05 -0.99997765647259118 -0.0066847248132917356 0 1.8755832181000481e-06 0.006684724757056542 -0.99997765697609675 0
		 18.531204027823382 41.04070558327254 0.36240107461072896 1;
	setAttr ".pm[11]" -type "matrix" 0.9999999994933636 -3.1788467910032817e-05 1.663123217924528e-06 0
		 -3.1776640138585574e-05 -0.99997765647259118 -0.0066847248132917356 0 1.8755832181000481e-06 0.006684724757056542 -0.99997765697609675 0
		 29.090204027823372 41.04070558327242 -0.10021132538927099 1;
	setAttr ".pm[12]" -type "matrix" 0.9999999994933636 -3.1788467910032817e-05 1.663123217924528e-06 0
		 -3.1776640138585574e-05 -0.99997765647259118 -0.0066847248132917356 0 1.8755832181000481e-06 0.006684724757056542 -0.99997765697609675 0
		 37.043704027823395 41.035805583272513 0.27438331019073009 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999870481 0 -1.6094633767357772e-06 0
		 0 1 0 0 1.6094633767357772e-06 0 0.99999999999870481 0 -8.5931978909077298 -17.538043975830082 1.3234390849656265e-05 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999870481 0 -1.6094633767357772e-06 0
		 0 1 0 0 1.6094633767357772e-06 0 0.99999999999870481 0 -8.5931988445820533 -8.3203067779541033 -0.25438222648874748 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999870481 0 -1.6094633767357772e-06 0
		 0 1 0 0 1.6094633767357772e-06 0 0.99999999999870481 0 -8.5931989227253354 0.17426179349421919 1.3094343202852558e-05 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 -17.538000000000004 -5.9604600000000031e-07 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 -8.3203099999999992 -0.25439600000000001 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 0.17426200000000058 -7.3609399997565116e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 19 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr -s 19 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
	setAttr -s 19 ".ifcl";
createNode displayLayer -n "bones";
	rename -uid "EA492421-445E-1F2A-C8BD-738096FDC5A5";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode groupId -n "groupId46";
	rename -uid "C5826129-4077-E4C3-DF0B-11BB54B0225E";
	setAttr ".ihi" 0;
createNode multMatrix -n "multMatrix1";
	rename -uid "95E14CCC-4C7D-9C2C-93D6-CD844E3B7762";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "A934D906-47EE-DE67-3434-558485E421B4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2852.6041850240713 -2362.3492167130335 ;
	setAttr ".tgi[0].vh" -type "double2" 4300.6784878226244 -1588.6048515518901 ;
	setAttr -s 18 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 4317.14306640625;
	setAttr ".tgi[0].ni[0].y" -1875.7142333984375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 4010;
	setAttr ".tgi[0].ni[1].y" -1875.7142333984375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 4665.71435546875;
	setAttr ".tgi[0].ni[2].y" -1875.7142333984375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 4010;
	setAttr ".tgi[0].ni[3].y" -1774.2857666015625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 5605.71435546875;
	setAttr ".tgi[0].ni[4].y" -1617.142822265625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 4317.14306640625;
	setAttr ".tgi[0].ni[5].y" -1774.2857666015625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 5605.71435546875;
	setAttr ".tgi[0].ni[6].y" -1718.5714111328125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 4972.85693359375;
	setAttr ".tgi[0].ni[7].y" -1918.5714111328125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 3705.4140625;
	setAttr ".tgi[0].ni[8].y" -1913.6815185546875;
	setAttr ".tgi[0].ni[8].nvs" 18305;
	setAttr ".tgi[0].ni[9].x" 5605.71435546875;
	setAttr ".tgi[0].ni[9].y" -1910;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 3087.154296875;
	setAttr ".tgi[0].ni[10].y" -1430.272705078125;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[0].ni[11].x" 4665.71435546875;
	setAttr ".tgi[0].ni[11].y" -1774.2857666015625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 4972.85693359375;
	setAttr ".tgi[0].ni[12].y" -1817.142822265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2899.774169921875;
	setAttr ".tgi[0].ni[13].y" -1717.3802490234375;
	setAttr ".tgi[0].ni[13].nvs" 18306;
	setAttr ".tgi[0].ni[14].x" 3705.4140625;
	setAttr ".tgi[0].ni[14].y" -1583.833984375;
	setAttr ".tgi[0].ni[14].nvs" 18305;
	setAttr ".tgi[0].ni[15].x" 3264.44384765625;
	setAttr ".tgi[0].ni[15].y" -1832.114990234375;
	setAttr ".tgi[0].ni[15].nvs" 18306;
	setAttr ".tgi[0].ni[16].x" 5298.5712890625;
	setAttr ".tgi[0].ni[16].y" -1961.4285888671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 5298.5712890625;
	setAttr ".tgi[0].ni[17].y" -1860;
	setAttr ".tgi[0].ni[17].nvs" 18304;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "C4EC9727-43C7-FD87-476D-068B9A398A1C";
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "9140EB31-4F90-EBDE-2628-809E625D130B";
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "A9C5FEAE-4085-63E0-C245-E2832ABC40B2";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "C4FFED78-4DC8-BC2C-770C-E487F9C5820A";
	setAttr ".g" yes;
createNode phong -n "Material";
	rename -uid "2C34C2B7-48FA-6D25-1E32-4D98AFD3BB45";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "OrionSG";
	rename -uid "8B0C5140-4984-7808-7A70-34AE44CACC9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E8C97903-4F7B-B795-4026-B883DB9CB119";
createNode phong -n "Material1";
	rename -uid "68CFB764-4088-0792-87DD-5CAC0010B972";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "OrionSG1";
	rename -uid "019A6B50-4AF0-6792-851C-86B825C6C25F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "6BA69E8A-423B-FD40-F376-88962AFB749D";
createNode phong -n "Material2";
	rename -uid "C1ED58F6-44EA-227A-0D75-23AEA698CDC6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "OrionSG2";
	rename -uid "357D7669-4BCD-552A-3651-A887415A94BB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "7F96C54C-4406-5AA0-0D71-22ABCC027CE2";
createNode phong -n "MT_Saucer";
	rename -uid "8AEA12EB-41AC-D19F-4F77-15BD40EEFF1C";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "SaucerSG";
	rename -uid "7622FA1A-449E-F99A-086C-82A23E7D71A8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "9BDB6DFB-4B95-00D0-3A5D-EBB97DE492C2";
createNode reference -n "Player_modelRN";
	rename -uid "706E9FDD-4FEC-2796-7772-9787FB98F3F5";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "D:/Perforce/BossRushJam2025/Art/Characters/Player/Player_model.ma";
	setAttr ".fn[1]" -type "string" "D:/Perforce/BossRushJam2025/Art/Characters/Player/Player_model.mb";
	setAttr -s 6 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Player_modelRN"
		"Player_modelRN" 0
		"SK_SaucerRN" 0
		"SK_OrionRN" 0
		"SK_SaucerRN" 17
		0 "|Saucer" "|model" "-s -r "
		0 "|Player_modelRNfosterParent1|SaucerShapeDeformed" "|model|Saucer" "-s -r "
		
		2 "|model|Saucer" "visibility" " 1"
		2 "|model|Saucer|SaucerShape" "intermediateObject" " 1"
		2 "|model|Saucer|SaucerShape" "vertexColorSource" " 2"
		5 3 "Player_modelRN" "|model|Saucer|SaucerShape.outMesh" "Player_modelRN.placeHolderList[4]" 
		""
		5 3 "Player_modelRN" "|model|Saucer|SaucerShape.worldMesh" "Player_modelRN.placeHolderList[5]" 
		""
		5 4 "Player_modelRN" "SaucerSG1.dagSetMembers" "Player_modelRN.placeHolderList[6]" 
		""
		8 "|model|Saucer" "translateX"
		8 "|model|Saucer" "translateY"
		8 "|model|Saucer" "translateZ"
		8 "|model|Saucer" "rotateX"
		8 "|model|Saucer" "rotateY"
		8 "|model|Saucer" "rotateZ"
		8 "|model|Saucer" "scaleX"
		8 "|model|Saucer" "scaleY"
		8 "|model|Saucer" "scaleZ"
		"SK_OrionRN" 16
		0 "|Orion" "|model" "-s -r "
		0 "|Player_modelRNfosterParent1|OrionShapeDeformed" "|model|Orion" "-s -r "
		
		2 "|model|Orion|OrionShape" "intermediateObject" " 1"
		2 "|model|Orion|OrionShape" "vertexColorSource" " 2"
		5 3 "Player_modelRN" "|model|Orion|OrionShape.outMesh" "Player_modelRN.placeHolderList[1]" 
		""
		5 3 "Player_modelRN" "|model|Orion|OrionShape.worldMesh" "Player_modelRN.placeHolderList[2]" 
		""
		5 4 "Player_modelRN" "OrionSG5.dagSetMembers" "Player_modelRN.placeHolderList[3]" 
		""
		8 "|model|Orion" "translateX"
		8 "|model|Orion" "translateY"
		8 "|model|Orion" "translateZ"
		8 "|model|Orion" "rotateX"
		8 "|model|Orion" "rotateY"
		8 "|model|Orion" "rotateZ"
		8 "|model|Orion" "scaleX"
		8 "|model|Orion" "scaleY"
		8 "|model|Orion" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode skinCluster -n "skinCluster6";
	rename -uid "707A3840-46AB-75F4-0BAD-FD9DA0EF9A3D";
	setAttr -s 1370 ".wl";
	setAttr ".wl[0:169].w"
		3 4 0.9799752623866379 5 0.01002473761336206 6 0.01
		3 4 0.9798903351408832 5 0.010109664859116825 6 0.01
		3 3 0.37261752104314155 4 0.61738247895685849 6 0.010000000000000002
		3 4 0.97993251292345251 5 0.010067487076547359 6 0.01
		3 4 0.9799752623866379 5 0.01002473761336206 6 0.01
		3 4 0.9798903351408832 5 0.010109664859116825 6 0.01
		3 3 0.37261757427704345 4 0.61738242572295654 6 0.01
		3 4 0.97993251293269712 5 0.010067487067302877 6 0.01
		3 3 0.36764858740655559 4 0.6223514125934444 6 0.01
		3 3 0.31827938643661419 4 0.67172061356338586 6 0.01
		3 3 0.19710548793388444 4 0.79289451206611561 6 0.0099999999999999985
		3 4 0.9799436265528233 5 0.01005637344717673 6 0.01
		3 4 0.97993205783363813 5 0.010067757210546735 6 0.010000184955815112
		3 4 0.97989495938497262 5 0.010105040615027377 6 0.01
		3 4 0.97990776022926873 5 0.010092239770731294 6 0.01
		3 4 0.97991138297859959 5 0.010088617021400388 6 0.01
		3 4 0.97991755533638147 5 0.010082444663618498 6 0.01
		3 4 0.97995682725306066 5 0.010043172746939381 6 0.01
		4 3 0.2522031549849002 4 0.73779684082865171 5 4.1864480580299161e-09 
		6 0.0099999999999999985
		3 3 0.30871337287935907 4 0.68128662712064092 6 0.01
		3 3 0.3788346765659647 4 0.61116532343403529 6 0.01
		3 3 0.3782235502911182 4 0.61177644970888168 6 0.01
		3 3 0.37883467267567128 4 0.61116532732432882 6 0.01
		3 4 0.979934863438499 5 0.010065136561501009 6 0.01
		3 4 0.97993836040765103 5 0.010061639592348983 6 0.01
		3 4 0.97993486344511771 5 0.010065136554882238 6 0.01
		3 4 0.97995682725520517 5 0.010043172744794868 6 0.01
		4 3 0.25220324517981457 4 0.73779675422204127 5 5.9814407845906958e-10 
		6 0.01
		3 3 0.30871337593072745 4 0.68128662406927254 6 0.01
		3 3 0.19710548992957042 4 0.79289451007042955 6 0.01
		3 3 0.31827939035299646 4 0.67172060964700353 6 0.01
		3 3 0.36764858740655559 4 0.6223514125934444 6 0.01
		3 4 0.97991755533638147 5 0.010082444663618498 6 0.01
		3 4 0.97991138297786384 5 0.01008861702213619 6 0.01
		3 4 0.97990776022926873 5 0.010092239770731294 6 0.01
		3 4 0.97989495938497262 5 0.010105040615027377 6 0.01
		3 4 0.97993205782506454 5 0.010067757219076157 6 0.010000184955859262
		3 4 0.97994362655242173 5 0.010056373447578428 6 0.0099999999999999603
		3 4 0.97997915687435611 5 0.01002084334916129 6 0.0099999997764825821
		3 4 0.97998224476269369 5 0.010017755237306305 6 0.01
		3 4 0.97997915687435611 5 0.01002084334916129 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881186 6 0.0099999997764825821
		3 4 0.97996801798403133 5 0.010031982239486027 6 0.0099999997764826185
		3 4 0.97996801796373123 5 0.010031982259786104 6 0.0099999997764826879
		4 3 9.3987218373163968e-08 4 0.97996782347168931 5 0.010032082541092344 
		6 0.01
		3 4 0.97993558731601715 5 0.010064412683982872 6 0.01
		3 4 0.97991772920529763 5 0.010082270794702364 6 0.01
		3 3 0.2513795629420032 4 0.73862043705799674 6 0.01
		3 4 0.9799525794316013 5 0.010047420568398671 6 0.01
		3 4 0.97992294825878634 5 0.010077051741213493 6 0.01
		3 3 0.30018113145863029 4 0.68981886854136965 6 0.01
		3 4 0.97996632198812927 5 0.010033678011870701 6 0.01
		3 4 0.97993883778633883 5 0.010061162213661306 6 0.0099999999999999985
		3 3 0.34197943294373573 4 0.64802056705626421 6 0.01
		4 3 0.2756120008515251 4 0.71438799136647047 5 7.7820042971682873e-09 
		6 0.01
		4 3 1.6427756385760339e-08 4 0.97995687840183765 5 0.010043105170405936 
		6 0.010000000000000002
		3 3 0.35583345339255945 4 0.63416654660744054 6 0.01
		3 3 0.28079430319701826 4 0.70920569680298173 6 0.01
		3 4 0.97995517848374891 5 0.010044821516251162 6 0.01
		3 3 0.34197943082418664 4 0.6480205691758133 6 0.01
		3 3 0.27561221441249817 4 0.71438778558750182 6 0.01
		4 3 -5.4252115943257124e-09 4 0.97995689947455611 5 0.010043105950655511 
		6 0.01
		3 3 0.30018113145863029 4 0.68981886854136965 6 0.01
		3 4 0.97996632199029121 5 0.010033678009708832 6 0.01
		3 4 0.97993883776910495 5 0.01006116223089501 6 0.01
		3 3 0.25137952306657496 4 0.73862047693342503 6 0.01
		3 4 0.9799525794316013 5 0.010047420568398671 6 0.01
		3 4 0.97992294826403992 5 0.010077051735960027 6 0.01
		4 3 9.3987226099033801e-08 4 0.97996782347168154 5 0.010032082541092344 
		6 0.01
		3 4 0.97993558731601715 5 0.010064412683982872 6 0.01
		3 4 0.97991772919510733 5 0.010082270804892612 6 0.01
		3 4 0.97994138031733857 5 0.010058619906178793 6 0.0099999997764825821
		3 4 0.97996801799143141 5 0.010031982232085868 6 0.0099999997764825977
		3 4 0.9799680179892224 5 0.010031982234294953 6 0.009999999776482596
		3 4 0.97995432702009122 5 0.010045673203426168 6 0.0099999997764825821
		3 4 0.97996801799663624 5 0.010031982226881188 6 0.0099999997764825821
		3 4 0.97984363541737807 5 0.010156364582621926 6 0.01
		3 4 0.97994138032184186 5 0.010058619901675475 6 0.0099999997764825821
		3 4 0.97996801796955069 5 0.010031982253966659 6 0.0099999997764826654
		3 4 0.97996801799494859 5 0.01003198222856878 6 0.0099999997764825856
		3 3 0.3703620061555663 4 0.61963799384443374 6 0.010000000000000002
		3 3 0.36952479030333452 4 0.62047520969666548 6 0.01
		3 3 0.37036200811130343 4 0.6196379918886965 6 0.01
		3 3 0.30185288656847165 4 0.68814711343152835 6 0.01
		3 3 0.26971361563716234 4 0.72028638436283765 6 0.01
		3 3 0.30185289255656256 4 0.68814710744343743 6 0.01
		3 3 0.15827265931875895 4 0.8317273406812411 6 0.01
		4 3 0.1068480385744314 4 0.8831519608284637 5 5.971047423664513e-10 
		6 0.01
		4 3 0.15827265271297286 4 0.83172734724243247 5 4.4594679057499603e-11 
		6 0.01
		3 4 0.97991694864931622 5 0.010083051350683723 6 0.01
		3 4 0.97992476848505383 5 0.010075231514946138 6 0.01
		3 4 0.97991694864766277 5 0.010083051352337063 6 0.01
		3 4 0.97990839940795682 5 0.010091600592043155 6 0.01
		3 4 0.97990957406712531 5 0.010090425932874646 6 0.01
		3 4 0.97990839940795682 5 0.010091600592043155 6 0.01
		3 4 0.97989901115904532 5 0.010100988840954719 6 0.01
		3 4 0.97989271523511789 5 0.010107284764882069 6 0.01
		3 4 0.97989901115933764 5 0.010100988840662279 6 0.01
		3 4 9.6471487652904309e-09 5 0.01115871390760979 6 0.98884127644524134
		2 5 0.049239068699546168 6 0.95076093123325833
		3 4 9.5717356575787981e-09 5 0.01115764576682295 6 0.98884234466144139
		2 5 0.049237668514251709 6 0.95076233148574829
		3 4 2.3426062714572803e-10 5 0.99999954439133598 6 4.5537440340765866e-07
		3 4 0.0002939061500616901 5 0.47994774817190328 6 0.51975834567803503
		3 4 2.634216214819539e-06 5 0.096742719454148335 6 0.9032546463296367
		3 4 2.3237366054953892e-08 5 0.025417025587927109 6 0.97458295117470684
		3 4 5.9961434551720247e-08 5 0.036631858123252689 6 0.96336808191531276
		2 5 0.040499384394674917 6 0.95950061554517097
		4 4 1.5998397220910681e-06 5 0.1911362064103185 6 0.80820426138500445 
		12 0.00065793236495499544
		4 4 0.00019928952860368584 5 0.5407838482753351 6 0.45901686179179985 
		12 4.0426133316185926e-10
		3 4 1.9970046005285508e-10 5 0.9999995525302019 6 4.4727009759117499e-07
		3 4 2.2011857460149594e-06 5 0.095784020994294519 6 0.90421377781995949
		3 4 0.00029390642949958539 5 0.47994769026926137 6 0.51975840330123901
		1 5 1
		3 4 6.4065544457316112e-11 5 0.99999988511869686 6 1.1481723749058019e-07
		3 4 0.00019928961965477089 5 0.54078402477729171 6 0.45901668560305353
		4 4 9.6848005370908567e-07 5 0.19049658364970604 6 0.80883612121876136 
		9 0.00066632665147877703
		2 5 0.040497899055480957 6 0.95950210094451904
		3 4 5.9925430560568231e-08 5 0.036630510963088725 6 0.96336942911148071
		3 4 2.3167763858923702e-08 5 0.025416164526895837 6 0.9745838123053403
		3 4 2.4317318453290065e-13 5 0.019396676891550592 6 0.98060332310800313
		3 4 2.8527599458128192e-07 5 0.03078092158774608 6 0.96921879313625947
		2 5 0.019396841526031494 6 0.98060315847396851
		2 5 0.031316280364990234 6 0.96868371963500977
		3 4 1.7533984278688982e-09 5 0.024356968834998265 6 0.9756430294116033
		2 5 0.031316628597529927 6 0.96868337140247007
		3 4 7.4892860118226119e-06 5 0.11895438622244851 6 0.88103812449153973
		3 4 3.995987289830323e-06 5 0.17271508207095243 6 0.82728092194175773
		4 4 7.4587136053058165e-06 5 0.19725214141536215 6 0.80273139381228908 
		12 9.0060587436198418e-06
		3 4 0.0002642341668938307 5 0.48609625168455484 6 0.51363951414855125
		3 4 0.00022129842523123191 5 0.5257860198312152 6 0.47399268174355358
		3 4 0.0002028247261393721 5 0.54552964364048351 6 0.45426753163337708
		3 4 2.713651378569466e-10 5 0.99999947222753804 6 5.2750109680348633e-07
		3 4 2.3742750906176517e-10 5 0.99999949122347365 6 5.0853909883130655e-07
		3 4 3.5503992115416128e-10 5 0.99999923801247514 6 7.6163248490242131e-07
		1 5 1
		1 5 1
		1 5 1
		3 4 0.00026423434135210502 5 0.48609607716682662 6 0.51363968849182129
		3 4 0.00022129847799284399 5 0.52578590676988624 6 0.47399279475212097
		3 4 0.00020282471447268956 5 0.54552962286537343 6 0.45426755242015382
		3 4 7.5628549337988545e-06 5 0.11843982830368195 6 0.88155260884138431
		3 4 3.7664349238674314e-06 5 0.17290046062807449 6 0.82709577293700165
		3 4 7.465646483644938e-06 5 0.19743034118514108 6 0.8025621931683754
		2 5 0.014653682708740234 6 0.98534631729125977
		2 5 0.011473238468170166 6 0.98852676153182983
		2 5 0.010571956402757585 6 0.98942804359724246
		2 5 0.018438208494922014 6 0.98156179150507794
		2 5 0.010179421661672079 6 0.98982057833832782
		2 5 0.0066836188860299843 6 0.99331638111397003
		2 5 0.014653845458832174 6 0.98534615454081842
		2 5 0.011473592347878743 6 0.9885264076512783
		2 5 0.010572411467760601 6 0.98942758853223933
		2 5 0.99999991589010806 6 8.4055662640208743e-08
		2 5 0.99999976627711595 6 2.3363464199687144e-07
		1 5 1
		3 4 0.00035177800096567146 5 0.45439035364698155 6 0.54525786835205281
		3 4 0.00042994686956859693 5 0.43038318580245727 6 0.56918686732797419
		3 4 0.00035177880813991308 5 0.45438999718139256 6 0.54525822401046753
		3 4 1.2327150285461162e-06 5 0.09673627000702674 6 0.90326249727794383
		3 4 4.6749154378327595e-06 5 0.095629163776153575 6 0.90436616130840852
		3 4 6.202121928563343e-07 5 0.096335150171568504 6 0.90366422961623849
		3 4 2.3627062514169475e-11 5 0.99999995661860608 6 4.3357766865359122e-08
		3 4 6.0786298617886236e-11 5 0.99999964702741895 6 3.5284614405136808e-07
		3 4 1.5561272188666504e-11 5 0.99999996137993485 6 3.8599031322366215e-08
		3 4 0.00026107566440736473 5 0.52064179642116393 6 0.47909712791442871
		5 4 0.00026240344067037424 5 0.51668359673025799 6 0.48305399961464746 
		9 -6.9168116788972328e-13 12 2.1511589460386317e-10
		3 4 0.0002610748247440507 5 0.52064207015046349 6 0.47909685502479249
		4 4 9.1410639213370242e-07 5 0.16006006786898117 6 0.839094496160531 
		9 0.00084452186409570925
		5 4 3.0142969712124606e-06 5 0.14107430048385641 6 0.85883170802263942 
		9 5.0285344919569865e-05 12 4.0691851613182819e-05;
	setAttr ".wl[170:391].w"
		5 4 1.5632809506020461e-06 5 0.16094480561309671 6 0.8382236582795427 
		9 5.058560376109659e-07 12 0.00082946697037236466
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		3 2 0.11851732917192424 3 0.55417205716575324 4 0.32731061366232256
		2 3 0.50643847693597577 4 0.49356152306402423
		2 3 0.57686955044164168 4 0.42313044955835838
		2 3 0.53966605722597405 4 0.46033394277402601
		2 3 0.51557421504607726 4 0.48442578495392274
		2 3 0.50008563039596232 4 0.49991436960403768
		2 3 0.72462675908129115 4 0.27537324091870885
		2 3 0.52431749000927097 4 0.47568250999072897
		2 3 0.57338613151415163 4 0.42661386848584848
		2 3 0.63917540200308331 4 0.36082459799691669
		2 3 0.52027843505070226 4 0.4797215649492978
		2 3 0.84957743943978192 4 0.15042256056021816
		2 3 0.57057076792984696 4 0.42942923207015299
		2 3 0.66401480034901739 4 0.33598519965098261
		2 3 0.76345744727507669 4 0.23654255272492328
		2 3 0.49719731829362479 4 0.50280268170637521
		2 3 0.86014752647684078 4 0.13985247352315927
		2 3 0.54246488964178452 4 0.45753511035821542
		2 3 0.6462891286248944 4 0.35371087137510571
		2 3 0.73150078132324803 4 0.26849921867675192
		2 3 0.35073221119888226 4 0.64926778880111768
		2 3 0.59664012052048077 4 0.40335987947951918
		2 3 0.36181225303451536 4 0.63818774696548464
		2 3 0.42391284005767815 4 0.57608715994232196
		2 3 0.45549771099373632 4 0.54450228900626374
		2 3 0.17535017538678876 4 0.82464982461321124
		2 3 0.40278394323842348 4 0.59721605676157663
		2 3 0.17309471595053141 4 0.82690528404946861
		2 3 0.20869379764716356 4 0.79130620235283644
		2 3 0.27421293461242763 4 0.72578706538757243
		2 3 0.093465751988732873 4 0.90653424801126714
		3 2 0.10075027770015274 3 0.37265197292975955 4 0.52659774937008774
		2 3 0.10372403886986935 4 0.89627596113013064
		2 3 0.14396924672097935 4 0.85603075327902067
		2 3 0.23337091971627824 4 0.76662908028372179
		2 3 0.17535016982484994 4 0.82464983017515003
		2 3 0.40278389683869881 4 0.59721610316130125
		2 3 0.17309472527176692 4 0.82690527472823305
		2 3 0.20869382786910795 4 0.79130617213089205
		2 3 0.27421295173005977 4 0.72578704826994023
		2 3 0.35073221119888226 4 0.64926778880111768
		2 3 0.59664013825553786 4 0.40335986174446209
		2 3 0.36181224411458046 4 0.63818775588541954
		2 3 0.42391284477510854 4 0.57608715522489151
		2 3 0.45549772670780797 4 0.54450227329219203
		2 3 0.49719737806404329 4 0.50280262193595671
		2 3 0.86014723259508341 4 0.13985276740491659
		2 3 0.54246488964178452 4 0.45753511035821542
		2 3 0.6462892276395461 4 0.3537107723604539
		2 3 0.73150078132324803 4 0.26849921867675192
		2 3 0.52027843566001386 4 0.47972156433998625
		2 3 0.84957728785051978 4 0.15042271214948014
		2 3 0.57057075593921913 4 0.42942924406078076
		2 3 0.66401470566397636 4 0.33598529433602359
		2 3 0.76345740364283177 4 0.23654259635716829
		2 3 0.50008563146578011 4 0.49991436853421989
		3 2 1.7018296675221555e-09 3 0.72462649751284602 4 0.27537350078532424
		2 3 0.52431747191457401 4 0.47568252808542594
		2 3 0.57338603812424904 4 0.4266139618757509
		2 3 0.63917526856411433 4 0.36082473143588573
		3 2 6.3577649745185268e-08 3 0.99999976083925457 4 1.7558309572702068e-07
		2 3 0.99999985227828214 4 1.4772171785046934e-07
		2 3 0.99999991930705046 4 8.069294959556838e-08
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		3 3 0.078314628902104749 7 0.76763252432020712 8 0.15405284677768799
		3 3 0.061309076897638107 7 0.76672808749718813 8 0.17196283560517359
		3 3 0.066552667227242485 7 0.77426885464382722 8 0.15917847812893041
		3 3 0.082920749830329404 7 0.76336517762929745 8 0.15371407254037317
		2 7 0.49672112896319998 8 0.50327887103680002
		2 7 0.49353670569937996 8 0.50646329430061998
		3 3 0.00088366993112894913 7 0.50421453477264921 8 0.4949017952962218
		3 3 0.00090906672889973022 7 0.50666457369917017 8 0.49242635957193004
		3 7 0.39366695428403342 8 0.60518540387912212 9 0.0011476418368445423
		3 7 0.032712488524603997 8 0.88806776405614252 9 0.0792197474192535
		3 3 0.022298889540461251 7 0.65545379684011762 8 0.32224731361942122
		2 8 0.44999999999999996 9 0.55
		3 7 0.0086389540265513938 8 0.41599276719420242 9 0.57536827877924612
		3 7 0.0070737173178515344 8 0.42083511615268665 9 0.5720911665294619
		3 7 0.0003957875861788466 8 0.45530019387893433 9 0.54430401853488686
		2 7 0.40547097983871638 8 0.59452902016128362
		3 7 0.046994232753547305 8 0.88903576998618017 9 0.063969997260272526
		2 7 0.40647789835422343 8 0.59352210164577657
		3 7 0.039386693746424659 8 0.89526485077957907 9 0.065348455473996259
		3 3 0.056020383244313098 7 0.73038187984136271 8 0.21359773691432407
		3 3 0.061755872401730895 7 0.7610678678211521 8 0.17717625977711701
		3 3 0.049709278403555032 7 0.75945640155261263 8 0.19083432004383233
		3 3 0.049574200580448743 7 0.74371194560531007 8 0.20671385381424132
		3 3 0.05055045694142607 7 0.74128476467425863 8 0.20816477838431524
		3 3 0.064629020681216412 7 0.753754092908685 8 0.18161688641009879
		3 3 0.055314823703029828 7 0.74937445632007993 8 0.19531071997689026
		3 3 0.071176028550851866 7 0.75210503236031379 8 0.17671893908883438
		3 3 0.055155163371141264 7 0.7559676614056331 8 0.18887717522322553
		3 3 0.068947530049927139 7 0.75960968221034697 8 0.17144278773972596
		3 3 0.076744631361507901 7 0.75121407293160269 8 0.17204129570688942
		3 3 0.077114621526608709 7 0.75578592326752225 8 0.167099455205869
		3 3 0.029031004376333647 7 0.69041324562372286 8 0.28055574999994354
		3 7 0.033300282645994425 8 0.8959407944911395 9 0.070758922862866142
		3 7 0.39113619580943726 8 0.60725754895003625 9 0.0016062552405264714
		3 3 0.039322181915760035 7 0.68470246955697367 8 0.2759753485272663
		3 3 0.026614989485467443 7 0.68812369875665302 8 0.2852613117578795
		2 7 0.49239150347111682 8 0.50760849652888318
		2 7 0.49263340870975142 8 0.50736659129024864
		2 7 0.49414631899860051 8 0.50585368100139949
		2 7 0.49973507924706539 8 0.50026492075293461
		3 3 0.00024094045328720005 7 0.50194270636521221 8 0.49781635318150058
		3 3 0.00054065180711008326 7 0.50413919287814157 8 0.49532015531474832
		3 3 0.00026394454534819358 7 0.50127596433569399 8 0.49846009111895778
		2 7 0.49921076575550977 8 0.50078923424449029
		2 7 0.49608074481634395 8 0.50391925518365599
		3 3 0.00061123935284083573 7 0.5043697815195658 8 0.49501897912759335
		3 3 0.00075466594997728755 7 0.50492229361521312 8 0.49432304043480968
		3 3 0.00082188177616307587 7 0.50480244640522109 8 0.49437567181861575
		3 7 0.00029192216240194206 8 0.45390928528541985 9 0.54579879255217822
		3 7 0.0001678643506213544 8 0.45224796105676229 9 0.54758417459261644
		3 7 1.4188882861904316e-05 8 0.45019001046312035 9 0.54979580065401779
		3 7 0.015632621246644784 8 0.38626307646581637 9 0.59810430228753886
		3 7 0.020762368514407614 8 0.36312018182040351 9 0.61611744966518889
		3 7 0.014451848862811957 8 0.39054987773447314 9 0.59499827340271494
		3 3 0.01728291082445179 7 0.61951859033003387 8 0.36319849884551447
		3 3 0.022104571925315807 7 0.64115484394552158 8 0.33674058412916263
		3 3 0.02780614557655367 7 0.65912684024005741 8 0.31306701418338906
		3 7 0.0058974025844853095 8 0.42474242739043067 9 0.56936017002508399
		3 7 0.0021960187855563583 8 0.44035912123972731 9 0.55744485997471627
		3 7 0.0004266366931589039 8 0.4557133053285583 9 0.54386005797828285
		3 3 0.022918349004071709 7 0.61090505938651107 8 0.36617659160941729
		3 3 0.026255761603265121 7 0.6412393712692207 8 0.33250486712751409
		3 3 0.023563524122938943 7 0.65118947046789488 8 0.32524700540916607
		3 3 0.013065932654521061 7 0.61663338555265479 8 0.3703006817928241
		3 3 0.018578338843159539 7 0.64651563726845673 8 0.3349060238883837
		3 3 0.020787501307621362 7 0.65620357347466129 8 0.3230089252177174
		2 8 0.44999999999999996 9 0.55
		3 7 0.0047191845123746761 8 0.43070170844925237 9 0.56457910703837288
		3 7 0.0080248924041237887 8 0.41827990636563361 9 0.57369520123024254
		3 3 0.022348962832186868 7 0.65721280523216485 8 0.3204382319356483
		3 3 0.02169222160972854 7 0.65469149485232347 8 0.32361628353794802
		3 3 0.024458942267919944 7 0.66188344164441681 8 0.31365761608766313
		3 7 0.033005032938792297 8 0.89198682291162779 9 0.075008144149579806
		3 7 0.38838586476093612 8 0.60950947872267691 9 0.0021046565163869413
		3 7 0.032789688544461022 8 0.889102770812782 9 0.078107540642756892
		3 7 0.38793680114743234 8 0.60987716572288664 9 0.0021860331296811066
		3 7 0.032684492706896287 8 0.88769332206996998 9 0.079622185223133732
		3 7 0.38976906023985641 8 0.60837694082144478 9 0.0018539989386987248
		3 7 0.032884622840723542 8 0.89037303622508901 9 0.076742340934187331
		3 7 0.39839268202263317 8 0.60131604807359829 9 0.00029126990376856382
		3 7 0.033174004646433025 8 0.89424827098846438 9 0.072577724365102597
		2 7 0.40165038108825685 8 0.5983496189117431
		3 7 0.035312649984133679 8 0.89860061719455198 9 0.066086732821314401
		2 7 0.4044875053575982 8 0.59551249464240175
		3 7 0.046205823941286348 8 0.88968126308897055 9 0.064112912969743016
		2 7 0.40347896623165386 8 0.59652103376834609
		3 7 0.042914943824417816 8 0.89237578707825094 9 0.064709269097331226
		2 7 0.40061918755918774 8 0.59938081244081221
		3 7 0.037094532128238732 8 0.8971414935786598 9 0.065763974293101435
		3 7 0.39602844099804485 8 0.60325185227896128 9 0.00071970672299379393
		3 7 0.042113022908774361 8 0.89303251910633974 9 0.064854457984885955
		2 7 0.40730668151020055 8 0.59269331848979945
		3 7 0.044487524560297198 8 0.89108826217136472 9 0.064424213268338068
		2 7 0.40738013026324504 8 0.59261986973675485
		3 7 0.046261577311464019 8 0.88963567942747546 9 0.064102743261060552
		2 7 0.40676328566354714 8 0.59323671433645297
		3 3 0.12569879572663123 7 0.78903646156336416 8 0.08526474271000474
		3 3 0.09903905630970225 7 0.9 8 0.00096094369029772417
		3 3 0.12289581452076991 7 0.76738625429756879 8 0.10971793118166125
		3 3 0.098608794966858204 7 0.90000000000000013 8 0.0013912050331417751
		3 3 0.14486266042700199 7 0.75891978580263952 8 0.096217553770358719
		3 3 0.098620809958864325 7 0.89999999999999991 8 0.001379190041135648
		3 3 0.12820260816420359 7 0.77373031704001061 8 0.098067074795785802
		3 3 0.098638689455858505 7 0.9 8 0.0013613105441414757
		3 3 0.12626062852307338 7 0.76082043290657908 8 0.11291893857034783
		3 3 0.12867464093238734 7 0.75909427068256452 8 0.11223108838504828
		3 3 0.12544947496717782 7 0.77511022129999241 8 0.099440303732829874
		3 3 0.09907370735033369 7 0.9 8 0.0009262926496662842
		3 3 0.098947440749603405 7 0.9 8 0.0010525592503965583
		3 3 0.098881733450037937 7 0.9 8 0.0011182665499620188
		3 3 0.092278968658109292 7 0.77816564218483597 8 0.12955538915705478
		3 3 0.11739848844160512 7 0.76240788595377684 8 0.12019362560461808
		3 3 0.08711684009393332 7 0.77808731842354162 8 0.13479584148252499;
	setAttr ".wl[392:607].w"
		3 3 0.099092564505094419 7 0.90000000000000013 8 0.00090743549490555203
		3 2 0.056538444970066215 3 0.91544572820973724 4 0.028015826820196606
		3 3 0.09924103933198393 7 0.9 8 0.00075896066801606047
		3 3 0.10506826681720999 7 0.76652471231197772 8 0.12840702087081224
		3 3 0.095340707044354558 7 0.75963840305332553 8 0.14502088990232026
		3 3 0.096755143467930085 7 0.77684201602326175 8 0.12640284050880804
		3 3 0.099222454684389325 7 0.9 8 0.00077754531561064183
		3 3 0.098697879202425121 7 0.9 8 0.0013021207975748589
		3 3 0.099940967536822106 7 0.9 8 5.9032463177873605e-05
		3 3 0.089221047716223065 7 0.79501053612989059 8 0.11576841615388644
		3 3 0.11897082666503216 7 0.78521208408904852 8 0.095817089245919446
		3 3 0.099016247366904619 7 0.7701442663345125 8 0.13083948629858314
		3 3 0.099433725363724121 7 0.90000000000000013 8 0.00056627463627585066
		3 3 0.099294112493214071 7 0.89999999999999991 8 0.00070588750678589622
		3 3 0.099478227862327934 7 0.9 8 0.00052177213767203967
		3 3 0.081225199166432796 7 0.89753530417077998 8 0.021239496662787263
		3 3 0.091479314658137037 7 0.9 8 0.0085206853418629581
		3 3 0.096983333037192365 7 0.89999999999999991 8 0.0030166669628076208
		3 3 0.096115300041009807 7 0.89999999999999991 8 0.003884699958990173
		3 3 0.089374243237330883 7 0.9 8 0.010625756762669082
		3 3 0.073459422570041025 7 0.9 8 0.026540577429958957
		3 3 0.095056735031705294 7 0.9 8 0.0049432649682946903
		3 3 0.088969494869389987 7 0.9 8 0.011030505130610003
		3 3 0.082036146633510318 7 0.89585824700544825 8 0.022105606361041429
		3 3 0.094769407786676155 7 0.9 8 0.0052305922133238205
		3 3 0.088177442923042942 7 0.9 8 0.011822557076957032
		3 3 0.077659120786511368 7 0.9 8 0.02234087921348861
		3 3 0.081385816226192065 7 0.9 8 0.01861418377380792
		3 3 0.091808581840251202 7 0.89999999999999991 8 0.0081914181597487878
		3 3 0.096713159180539285 7 0.90000000000000013 8 0.0032868408194606956
		3 3 0.078998766179306443 7 0.9 8 0.021001233820693535
		3 3 0.091628074237915205 7 0.9 8 0.0083719257620847726
		3 3 0.097170854666104631 7 0.9 8 0.0028291453338953466
		3 3 0.078661648045367155 7 0.90000000425140458 8 0.021338347703228296
		3 3 0.090734750488958793 7 0.9 8 0.0092652495110411848
		3 3 0.096296106833876904 7 0.9 8 0.003703893166123079
		3 3 0.096197683063419193 7 0.9 8 0.0038023169365807847
		3 3 0.095975382468017595 7 0.89999999999999991 8 0.0040246175319823899
		3 3 0.09632663881874888 7 0.9 8 0.0036733611812510892
		3 3 0.087727213550941416 7 0.9 8 0.01227278644905856
		3 3 0.087204136059871248 7 0.9 8 0.012795863940128735
		3 3 0.087887643453905526 7 0.89999999999999991 8 0.012112356546094452
		3 3 0.06853824564077024 7 0.9 8 0.031461754359229745
		3 3 0.069538373602348311 7 0.9 8 0.030461626397651667
		3 3 0.070241657115715631 7 0.89999999999999991 8 0.02975834288428434
		3 3 0.097281049315323137 7 0.9 8 0.0027189506846768421
		3 3 0.097544986167868608 7 0.9 8 0.0024550138321313792
		3 3 0.097506851676173373 7 0.9 8 0.0024931483238266037
		3 3 0.090288458221637197 7 0.9 8 0.0097115417783627828
		3 3 0.091604380313799388 7 0.89999999999999991 8 0.0083956196862005894
		3 3 0.091532042901584398 7 0.9 8 0.0084679570984155829
		3 3 0.078809278182987899 7 0.89553572914538859 8 0.025654992671623623
		3 3 0.08186116011058843 7 0.89594210384615358 8 0.022196736043258069
		3 3 0.07941869485540845 7 0.89631650115391881 8 0.024264803990672861
		3 3 0.099976067165559679 7 0.9 8 2.3932834440299891e-05
		3 3 0.099741738584968945 7 0.9 8 0.00025826141503104076
		3 3 0.099678564913799436 7 0.9 8 0.00032143508620052731
		3 3 0.099999669506574518 7 0.9 8 3.3049342544474828e-07
		3 3 0.099979138280026691 7 0.9 8 2.0861719973276353e-05
		3 3 0.099764718802403479 7 0.89999999999999991 8 0.00023528119759650903
		3 3 0.099972560943332137 7 0.9 8 2.7439056667842866e-05
		3 3 0.099866397720652866 7 0.89999999999999991 8 0.00013360227934709811
		3 3 0.099807278240354652 7 0.9 8 0.00019272175964531421
		3 3 0.071057161822580844 7 0.9 8 0.028942838177419133
		3 3 0.0880367462633075 7 0.9 8 0.011963253736692483
		3 3 0.096293282586250695 7 0.9 8 0.0037067174137492588
		3 3 0.070438087883677905 7 0.9 8 0.029561912116322076
		3 3 0.087470362177831398 7 0.9 8 0.012529637822168566
		3 3 0.095896219099132832 7 0.89999999999999991 8 0.0041037809008671426
		3 3 0.072589906708330501 7 0.89670231265506228 8 0.030707780636607077
		3 3 0.08808223764342156 7 0.90000000000000013 8 0.011917762356578425
		3 3 0.096142276875256297 7 0.9 8 0.0038577231247436975
		3 7 0.06400257658098675 8 0.17277379275403132 9 0.763223630664982
		3 7 0.063204142608486696 8 0.18142203598498108 9 0.7553738214065322
		3 7 0.060238773896323768 8 0.1587190250292875 9 0.78104220107438871
		3 7 0.057682637605239541 8 0.16542003801266825 9 0.77689732438209236
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		3 7 0.068384839695112248 8 0.17969060098431092 9 0.75192455932057689
		3 7 0.066042522962824174 8 0.17929946829528146 9 0.75465800874189448
		3 7 0.06522430685585863 8 0.17745873909215806 9 0.75731695405198352
		3 7 0.048599115322331826 8 0.24112435486424275 9 0.71027652981342559
		3 7 0.040705222066519456 8 0.2657342109206986 9 0.69356056701278201
		3 7 0.047015892449581966 8 0.24234815908157795 9 0.71063594846884015
		3 7 0.062162656953345594 8 0.18394205821061882 9 0.75389528483603563
		3 7 0.060546016437165007 8 0.18391256953454294 9 0.75554141402829222
		3 7 0.061755379322116423 8 0.1854785179838481 9 0.75276610269403554
		3 7 0.059732462538445157 8 0.17269555066487907 9 0.76757198679667593
		3 7 0.058904666074161505 8 0.17257704311936051 9 0.76851829080647804
		3 7 0.060059069178011654 8 0.17030048753522231 9 0.76964044328676628
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 1
		3 7 0.0021787710305150214 8 0.0058791150316575124 9 0.9919421139378275
		1 9 0.99999999999999989
		1 9 1
		1 9 1
		1 9 1
		3 7 0.0022262340108890992 8 0.0060788524765590449 9 0.99169491351255179
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 0.99999999999999989
		1 9 1
		3 7 0.003805963570836869 8 0.010730605140836243 9 0.98546343128832692
		3 7 0.0041890704890647761 8 0.012436813387558903 9 0.98337411612337633
		3 7 0.0040808076267188596 8 0.011850402753343973 9 0.98406878961993705
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		3 7 0.00038169156595389939 8 0.0010384536547048508 9 0.9985798547793413
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 1
		1 9 1
		1 9 1
		1 9 0.99999999999999989
		1 9 1
		3 7 0.00038495509115266715 8 0.0010938267993144603 9 0.99852121810953287
		3 3 0.070760939629017403 10 0.7691628134586973 11 0.16007624691228525
		3 3 0.063216324599155299 10 0.77252363555176218 11 0.16426003984908241
		3 3 0.064677302432347428 10 0.77647329723508673 11 0.15884940033256598
		3 3 0.084210313346066101 10 0.76501510444268928 11 0.1507745822112446
		2 10 0.5 11 0.5
		3 3 8.3347893488516983e-08 10 0.50000058050685725 11 0.49999933614524927
		2 10 0.5 11 0.5
		3 3 1.926529105505137e-14 10 0.500000000000137 11 0.49999999999984374
		2 10 0.40000044537146096 11 0.59999955462853904
		3 10 0.10000002506928425 11 0.70241215310825511 12 0.19758782182246065
		3 3 0.023151817860422755 10 0.66124876714684266 11 0.31559941499273458
		3 10 9.7527376002836314e-08 11 0.39999965610952265 12 0.60000024636310134
		3 10 3.6617120142211678e-08 11 0.39999988178696888 12 0.60000008159591101
		3 10 1.3812228392114721e-07 11 0.39999953742912586 12 0.60000032444859019
		3 10 2.3193280166241262e-07 11 0.39999919407480722 12 0.60000057399239104
		2 10 0.40000075101716526 11 0.59999924898283474
		3 10 0.10000000154155943 11 0.70241082031656676 12 0.19758917814187385
		2 10 0.40000074131349828 11 0.59999925868650161
		3 10 0.10000037499352059 11 0.70241230291961965 12 0.19758732208685986
		3 3 0.055567550003103879 10 0.72836518687207708 11 0.21606726312481897
		3 3 0.064006006070773822 10 0.76388729622943519 11 0.17210669769979098
		3 3 0.048826456992018805 10 0.76159762857869762 11 0.18957591442928351
		3 3 0.048329294961937469 10 0.74101145569357052 11 0.21065924934449215
		3 3 0.050693176010423738 10 0.74130233297259118 11 0.20800449101698507
		3 3 0.065094826083383628 10 0.75417016217891264 11 0.18073501173770393
		3 3 0.03938299780709574 10 0.73889915288807806 11 0.22171784930482619
		3 3 0.053709791762165629 10 0.75154227504033466 11 0.19474793319749964
		3 3 0.045871263823305176 10 0.75265664323231807 11 0.2014720929443766
		3 3 0.059948562943375867 10 0.75891346731455334 11 0.18113796974207069
		3 3 0.053104453784206751 10 0.74818107361310116 11 0.19871447260269218
		3 3 0.064276766680075453 10 0.75549602305599639 11 0.18022721026392813
		3 3 0.029796372518723906 10 0.69441554336811817 11 0.27578808411315786
		3 10 0.10000112652739963 11 0.70241066660236795 12 0.19758820687023257
		2 10 0.40000052452052764 11 0.5999994754794723
		3 3 0.039247853469481453 10 0.68473820245788952 11 0.27601394407262908
		3 3 0.025642956302838804 10 0.68738628689160275 11 0.2869707568055585
		3 3 8.3909463103521719e-08 10 0.50000058806014003 11 0.49999932803039693
		3 3 9.5830440511763158e-08 10 0.50000069071481834 11 0.49999921345474119
		3 3 1.0605055462953891e-07 10 0.50000070310661582 11 0.49999919084282951
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		3 3 3.2321794933346475e-08 10 0.50000022981989001 11 0.49999973785831503
		2 10 0.5 11 0.5
		2 10 0.5 11 0.5
		3 10 2.1269751733602576e-07 11 0.39999922857540687 12 0.60000055872707569
		3 10 1.3995855906681079e-07 11 0.39999948273003361 12 0.60000037731140732
		3 10 1.1805225544072236e-07 11 0.39999956376623985 12 0.60000031818150457
		3 10 4.0316822405402223e-08 11 0.39999986711933505 12 0.60000009256384257
		3 10 1.2064609123183791e-07 11 0.39999959052568096 12 0.60000028882822787
		3 10 1.945183941559921e-07 11 0.3999993486793556 12 0.60000045680225023
		1 3 0.014963518462191986;
	setAttr ".wl[607:810].w"
		2 10 0.60639602026667827 11 0.37864046127112977
		3 3 0.02184805284948162 10 0.64123941780458182 11 0.33691252934593663
		3 3 0.02736052838199592 10 0.65815661913895485 11 0.31448285247904939
		3 10 1.2783752708337423e-07 11 0.39999955287511796 12 0.60000031928735498
		3 10 3.5929536470515547e-07 11 0.39999871207475196 12 0.6000009286298833
		3 10 1.9411731465745802e-07 11 0.39999931852960419 12 0.6000004873530812
		3 3 0.022586118361372497 10 0.60870131462906374 11 0.36871256700956367
		3 3 0.026863825940119237 10 0.64211033151327834 11 0.33102584254660244
		3 3 0.024434956949322333 10 0.65488789950834514 11 0.3206771435423324
		3 3 0.012955511869676958 10 0.61612037796938501 11 0.37092411016093796
		3 3 0.017953297335477618 10 0.64475768774655917 11 0.33728901491796326
		3 3 0.02011232390645204 10 0.65367926141405475 11 0.32620841467949324
		2 11 0.4 12 0.6
		3 10 3.0262754232343983e-07 11 0.40000091517965347 12 0.59999878219280423
		2 11 0.4 12 0.6
		3 3 0.023462904077177847 10 0.66443383806694167 11 0.3121032578558805
		3 3 0.022182542252015363 10 0.6598842506471152 11 0.31793320710086947
		3 3 0.024548177462506607 10 0.66275243482052015 11 0.3126993877169732
		3 10 0.10000101923916242 11 0.70241079535600837 12 0.19758818540482934
		2 10 0.40000044537287072 11 0.59999955462712928
		3 10 0.10000118901893984 11 0.7024108176409799 12 0.19758799334008029
		2 10 0.40000074228687482 11 0.59999925771312512
		3 10 0.10000118822449482 11 0.70241134452523379 12 0.19758746725027135
		3 3 1.6468838134492239e-15 10 0.400000892295727 11 0.59999910770427134
		3 10 0.10000039633963526 11 0.70241191521714585 12 0.19758768844321897
		2 10 0.39999999833254518 11 0.60000000166745482
		3 10 0.10000078767472979 11 0.70241178823163364 12 0.19758742409363655
		2 10 0.40000029580081403 11 0.59999970419918602
		3 10 0.10000078805487307 11 0.70241216905538884 12 0.19758704288973827
		2 10 0.40000044566440546 11 0.59999955433559449
		3 10 0.10000000000000203 11 0.70241032669603209 12 0.19758967330396587
		2 10 0.40000044648076127 11 0.59999955351923884
		3 10 0.10000118901853058 11 0.70240994256819966 12 0.19758886841326981
		2 10 0.40000074228532867 11 0.59999925771467133
		3 10 0.1000007926793387 11 0.70241053689521527 12 0.19758867042544603
		2 10 0.40000044537277979 11 0.59999955462722021
		3 10 0.10000079267804268 11 0.70241144411289291 12 0.19758776320906435
		3 3 9.6326455275256862e-14 10 0.40000050067909709 11 0.59999949932080654
		3 10 0.10000118606867196 11 0.70241076975026773 12 0.19758804418106032
		2 10 0.40000044647989724 11 0.5999995535201027
		3 10 0.10000039633966937 11 0.70241095732285208 12 0.19758864633747858
		2 10 0.40000074339658626 11 0.59999925660341369
		3 3 0.12569086173601796 10 0.79056949871688609 11 0.083739639547096151
		3 3 0.099315037772586379 10 0.9 11 0.00068496222741359339
		3 3 0.12593218296984865 10 0.75929798434116036 11 0.11476983268899106
		3 3 0.098743406225259983 10 0.9 11 0.0012565937747399921
		3 3 0.15038626746577777 10 0.75782213616711647 11 0.091791596367106099
		3 3 0.098637139971804177 10 0.9 11 0.0013628600281958053
		3 3 0.13443723562699167 10 0.76294472316391737 11 0.10261804120909093
		3 3 0.09850643466935316 10 0.9 11 0.0014935653306468177
		3 3 0.1278718747302911 10 0.75622327940922007 11 0.11590484586048901
		3 3 0.12953479730536951 10 0.7569081579814515 11 0.11355704471317912
		3 3 0.12577086530853662 10 0.7746253266781058 11 0.099603808013357747
		3 3 0.099325741189529804 10 0.9 11 0.00067425881047018278
		3 3 0.099083573304980591 10 0.9 11 0.00091642669501937779
		3 3 0.099063779108905431 10 0.9 11 0.00093622089109453082
		3 3 0.092452683740596064 10 0.77162088404195095 11 0.13592643221745312
		3 3 0.12114837891132334 10 0.75437114680787232 11 0.12448047428080429
		3 3 0.087643651150029256 10 0.77103256685801669 11 0.14132378199195406
		3 3 0.099117291307851504 10 0.9 11 0.0008827086921484597
		3 3 0.098621560126095298 10 0.90000000000000013 11 0.0013784398739046942
		3 3 0.099262642413966068 10 0.9 11 0.00073735758603391574
		3 3 0.11287615297951679 10 0.76998474771677528 11 0.1171390993037079
		3 3 0.10885186497596355 10 0.76465034094962647 11 0.12649779407441014
		3 3 0.096924837254534754 10 0.78000333578102854 11 0.12307182696443671
		3 3 0.099188248973029206 10 0.9 11 0.00081175102697076957
		3 3 0.09855360039670269 10 0.9 11 0.0014463996032972996
		2 3 0.099999999999999978 10 0.9
		3 3 0.093776945479270332 10 0.80164638380021147 11 0.10457667072051839
		3 3 0.13036998117716092 10 0.78732207093186501 11 0.082307947890974217
		3 3 0.10666143095752645 10 0.77806321972414738 11 0.11527534931832643
		3 3 0.099526349661641006 10 0.9 11 0.00047365033835896009
		3 3 0.099322606084296661 10 0.9 11 0.00067739391570330505
		3 3 0.099610819395303057 10 0.9 11 0.00038918060469692343
		3 3 0.080124766764048352 10 0.89999994845389619 11 0.019875284782055386
		3 3 0.092145670349724235 10 0.9 11 0.0078543296502757397
		3 3 0.09752037680890667 10 0.90000000000000013 11 0.002479623191093302
		3 3 0.096198546616928476 10 0.9 11 0.0038014533830715122
		3 3 0.08936016956094657 10 0.9 11 0.010639830439053406
		3 3 0.073111472729142535 10 0.9 11 0.026888527270857446
		3 3 0.094823617189374404 10 0.9 11 0.0051763828106255756
		3 3 0.088979097142340299 10 0.9 11 0.01102090285765968
		3 3 0.080188171153563928 10 0.9 11 0.019811828846436053
		3 3 0.094211354482617707 10 0.89999999999999991 11 0.005788645517382277
		3 3 0.087581286085574916 10 0.9 11 0.012418713914425056
		3 3 0.077177459465820136 10 0.9 11 0.022822540534179842
		3 3 0.081497653202468448 10 0.89999996011551064 11 0.01850238668202089
		3 3 0.092278215880790326 10 0.9 11 0.0077217841192096775
		3 3 0.097145714674508193 10 0.9 11 0.0028542853254917874
		3 3 0.079007653783784479 10 0.89999993878306639 11 0.020992407433149115
		3 3 0.091959848332633265 10 0.9 11 0.0080401516673667128
		3 3 0.097550622816837768 10 0.9 11 0.0024493771831622124
		3 3 0.078669824763075213 10 0.89999998108997692 11 0.021330194146947843
		3 3 0.090782187231433165 10 0.9 11 0.0092178127685668149
		3 3 0.096558311587332954 10 0.9 11 0.0034416884126670208
		3 3 0.096173261997100606 10 0.9 11 0.0038267380028993835
		3 3 0.095864299736013542 10 0.9 11 0.0041357002639864412
		3 3 0.096157415724052203 10 0.9 11 0.003842584275947772
		3 3 0.087475837614632818 10 0.9 11 0.012524162385367171
		3 3 0.086756993295502113 10 0.9 11 0.013243006704497863
		3 3 0.087320710466962687 10 0.9 11 0.012679289533037291
		3 3 0.067613054343898193 10 0.9 11 0.03238694565610177
		3 3 0.068652187301371403 10 0.9 11 0.031347812698628581
		3 3 0.069153657395262011 10 0.89999998263967973 11 0.030846359965058249
		3 3 0.097489333763861916 10 0.9 11 0.0025106662361380665
		3 3 0.097819401578841447 10 0.9 11 0.0021805984211585357
		3 3 0.097950478455574377 10 0.9 11 0.0020495215444256035
		3 3 0.090632417290269524 10 0.9 11 0.0093675827097304595
		3 3 0.092147405337136126 10 0.9 11 0.0078525946628638498
		3 3 0.092252212217226973 10 0.90000000000000013 11 0.0077477877827730034
		3 3 0.077388773697981764 10 0.9 11 0.022611226302018211
		3 3 0.080301666794975107 10 0.9 11 0.019698333205024867
		3 3 0.078702456257666323 10 0.89999989276919679 11 0.021297650973136861
		2 3 0.10000000000348941 10 0.9
		3 3 0.099738908069205642 10 0.9 11 0.00026109193079434565
		3 3 0.099716339170860355 10 0.9 11 0.00028366082913962445
		2 3 0.099999999999999978 10 0.9
		3 3 0.09999999967489831 10 0.9 11 3.251016680003499e-10
		3 3 0.099813664209334768 10 0.90000000000000013 11 0.00018633579066522314
		3 3 0.0999999996702753 10 0.9 11 3.2972466241219836e-10
		3 3 0.099884859883439883 10 0.9 11 0.00011514011656009274
		3 3 0.099855530824823943 10 0.9 11 0.00014446917517603437
		3 3 0.070129507688027198 10 0.9 11 0.029870492311972786
		3 3 0.087300719596979978 10 0.90000000000000013 11 0.012699280403020013
		3 3 0.095974565473679413 10 0.9 11 0.0040254345263205701
		3 3 0.069990572640206014 10 0.89999978217903631 11 0.030009645180757716
		3 3 0.086877085077164962 10 0.9 11 0.013122914922835018
		3 3 0.095635127879509008 10 0.9 11 0.0043648721204909815
		3 3 0.07119175980338116 10 0.89999999999996116 11 0.028808240196657769
		3 3 0.087672150135328947 10 0.9 11 0.012327849864671033
		3 3 0.095930159104128179 10 0.9 11 0.0040698408958717907
		3 10 0.065447805771836648 11 0.17639392764970954 12 0.75815826657845398
		3 10 0.064611693724506522 11 0.1755830716303961 12 0.75980523464509742
		3 10 0.06898338393642077 11 0.17995533157466695 12 0.7510612844889123
		3 10 0.064369576858893746 11 0.18442613912427477 12 0.75120428401683159
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 0.068259019026026685 11 0.17963573198820157 12 0.7521052489857718
		3 10 0.065674128160543396 11 0.17924370040209042 12 0.75508217143736633
		3 10 0.06601179505759755 11 0.17950875131761485 12 0.75447945362478774
		3 10 0.062972900459903086 11 0.17806769080472215 12 0.75895940873537493
		3 10 0.060007623670037216 11 0.17821906450744873 12 0.76177331182251407
		3 10 0.061140770082970405 11 0.1782507969594638 12 0.76060843295756575
		3 10 0.063552411030778619 11 0.17913806613187497 12 0.75730952283734643
		3 10 0.060782519390172166 11 0.18211943122747815 12 0.7570980493823497
		3 10 0.061278735928364095 11 0.18567094489294986 12 0.75305031917868603
		3 10 0.064326470384908171 11 0.18593043212931912 12 0.74974309748577284
		3 10 0.063253299990637821 11 0.18531752939413021 12 0.75142917061523207
		3 10 0.065267494625207076 11 0.18488410845354239 12 0.74984839692125071
		1 12 1
		1 12 1
		1 12 1
		3 10 1.4249618845468318e-07 11 4.0826773424733238e-07 12 0.99999944923607731
		3 10 3.7759605142243815e-15 11 1.0818554883603491e-14 12 0.99999999999998546
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 5.4613909651382613e-08 11 1.4719452921104707e-07 12 0.99999979819156115
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 9.0484401231561116e-08 11 2.6509836068518829e-07 12 0.9999996444172381
		3 10 2.2219820159479604e-13 11 6.3662303404278844e-13 12 0.99999999999914113
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		3 10 1.1200454268047501e-14 11 3.2653985519697406e-14 12 0.99999999999995615
		1 12 1
		1 12 1
		3 10 1.6606439277798188e-07 11 4.7775869799182698e-07 12 0.99999935617690927
		3 10 1.2882765110796146e-08 11 3.7558621758913133e-08 12 0.99999994955861315
		3 10 7.5122867910195226e-08 11 1.9769777872594577e-07 12 0.99999972717935337
		1 12 1;
	setAttr ".wl[811:989].w"
		1 12 1
		3 10 1.6610313684161811e-07 11 4.489741600412444e-07 12 0.99999938492270313
		1 12 1
		1 12 1
		3 10 7.0822968730234676e-08 11 1.9259198557285228e-07 12 0.99999973658504571
		3 10 4.3746060266307674e-15 11 1.1790318834971254e-14 12 0.99999999999998379
		1 12 1
		1 12 1
		1 12 1
		3 10 3.1405499548775824e-08 11 9.5155936625982191e-08 12 0.99999987343856378
		1 12 1
		1 12 1
		3 10 4.7840510225464825e-08 11 1.3484862071578637e-07 12 0.99999981731086907
		1 12 1
		1 12 1
		1 12 1
		3 3 0.39689094784833745 4 0.60300711190242773 6 0.0001019402492347811
		3 3 0.28669302542328945 4 0.70811151917423254 6 0.0051954554024779631
		3 3 0.014165336140753325 4 0.94066277559536615 6 0.045171888263880806
		3 3 0.39689095120260653 4 0.60300710862482532 6 0.0001019401725680605
		3 3 0.28669302542328945 4 0.70811151917423254 6 0.0051954554024779631
		3 3 0.014165208717746432 4 0.94066287553445671 6 0.045171915747797067
		3 3 0.33234402234838567 4 0.6640029777833687 6 0.0036529998682456139
		3 3 0.38081324124747323 4 0.6176438823560495 6 0.0015428763964773025
		3 3 0.40300682259748155 4 0.59654701715385761 6 0.00044616024866092559
		3 3 0.33563974263432206 4 0.66413910323725223 6 0.00022115412842578202
		3 3 0.018119772420353123 4 0.93684367566301907 6 0.045036551916627893
		3 3 0.06129751016555212 4 0.90474158454185538 6 0.033960905292592575
		3 3 0.13907302429162033 4 0.8401014575129625 6 0.020825518195417274
		3 3 0.22463017000027427 4 0.76440005268961242 6 0.01096977731011334
		3 3 0.30125425387842319 4 0.69358243741730585 6 0.0051633087042710453
		3 3 0.30869875260784285 4 0.68637849851670596 6 0.0049227488754512569
		3 3 0.30125425858933691 4 0.69358243286249177 6 0.0051633085481713366
		3 3 0.021181580270007765 4 0.93282087133709812 6 0.045997548392894043
		3 3 0.016625854899387341 4 0.93554376494348279 6 0.047830380157130016
		3 3 0.021181617433982679 4 0.93282082951935441 6 0.045997553046662906
		3 3 0.061297333107841537 4 0.90474173034353167 6 0.03396093654862678
		3 3 0.13907302720099954 4 0.84010145505149081 6 0.020825517747509729
		3 3 0.22463006149260298 4 0.76440015109014725 6 0.010969787417249879
		3 3 0.40300682326880749 4 0.59654701653369879 6 0.00044616019749381468
		3 3 0.38081323467063743 4 0.61764388893835886 6 0.0015428763910036289
		3 3 0.33234401033240474 4 0.66400298940705182 6 0.0036530002605434189
		3 3 0.018119731053713631 4 0.93684370255433436 6 0.045036566391951971
		3 3 0.33563974263432206 4 0.66413910323725223 6 0.00022115412842578202
		3 3 0.37550135534494838 4 0.62438668018479093 6 0.00011196447026074002
		3 3 0.37445361689342138 4 0.62548486079546139 6 6.1522311117283044e-05
		3 3 0.37550135150672548 4 0.62438668406611264 6 0.00011196442716194334
		4 3 0.33447830954181323 4 0.66454041913640205 6 0.00098126938335236081 
		12 1.9384323589870554e-09
		4 3 0.30214660599669646 4 0.69459778279191975 6 0.003255611244668897 
		12 -3.3285112084627431e-11
		3 3 0.26008874787674091 4 0.73233779111872488 6 0.0075734610045343504
		3 3 0.16431171322230059 4 0.81938154100811733 6 0.016306745769582236
		3 3 0.074436879698594943 4 0.89404888054754073 6 0.03151423975386438
		3 3 0.21377926634653691 4 0.77298038452703566 6 0.013240349126427478
		3 3 0.13309867951690454 4 0.84301871322099453 6 0.023882607262101081
		3 3 0.069996425310928784 4 0.89497465032056067 6 0.035028924368510621
		3 3 0.20886072738936423 4 0.7778762713568157 6 0.013263001253820045
		3 3 0.12604480951030711 4 0.84934733039607324 6 0.024607860093619663
		3 3 0.064408317680286431 4 0.89931709674118543 6 0.036274585578528057
		3 3 0.21377928252520836 4 0.77298036756382327 6 0.013240349910968445
		3 3 0.13309866204145698 4 0.84301872103479125 6 0.023882616923751855
		3 3 0.069996457344935689 4 0.89497461405099443 6 0.035028928604069934
		3 3 0.2600887439396754 4 0.73233779469528282 6 0.007573461365041753
		3 3 0.16431171322230059 4 0.81938154100811733 6 0.016306745769582236
		3 3 0.07443685658675743 4 0.89404889813832422 6 0.031514245274918459
		3 3 0.30214660106058455 4 0.69459778743801637 6 0.003255611501399097
		3 3 0.3344783679633162 4 0.66454036160054331 6 0.00098127043614053104
		4 3 0.31187298304563027 4 0.68804102215115315 6 8.5994579560835823e-05 
		9 2.2365582438972951e-10
		3 3 0.30955310663311936 4 0.69040876439729404 6 3.8128969586586832e-05
		4 3 0.31187293088372953 4 0.6880410739857622 6 8.5994471921566106e-05 
		12 6.5858677638546363e-10
		3 3 0.36544410168096236 4 0.63159802023493206 6 0.0029578780841054962
		3 3 0.38738196413409504 4 0.61027115992864178 6 0.0023468759372632154
		3 3 0.36544416649689804 4 0.63159795725579793 6 0.002957876247303994
		3 3 0.39954224005274475 4 0.59899864789196045 6 0.0014591120552949156
		3 3 0.42083822572652346 4 0.57807230898300876 6 0.0010894652904678162
		3 3 0.39954224637226354 4 0.59899864170243733 6 0.0014591119252991857
		3 3 0.39643727999193829 4 0.60294003503614924 6 0.00062268497191246834
		3 3 0.40769869881995663 4 0.59182779784234829 6 0.0004735033376949297
		3 3 0.39643727999193829 4 0.60294003503614924 6 0.00062268497191246834
		3 3 0.0099073224517778873 4 0.93974400793582913 6 0.050348669612393114
		3 3 0.0066764372717671092 4 0.94064305204336696 6 0.052680510684865844
		3 3 0.0099073391141590479 4 0.93974400208272046 6 0.050348658803120526
		3 3 0.23207310864090377 4 0.7599840099726014 6 0.0079428813864948367
		3 3 0.23207312534772626 4 0.7599839943833111 6 0.007942880268962612
		3 3 0.24845971768951894 4 0.75026218176921267 12 0.0012781005412685013
		4 3 4.1686496967373571e-08 4 0.94046786321975651 6 0.043340794037885641 
		12 0.016191301055861078
		4 3 3.7246905846256243e-05 4 0.94045007668476166 6 0.04333176950150322 
		9 0.016180906907888877
		3 3 0.24846079215910355 4 0.75026093260733551 9 0.001278275233560993
		3 3 0.2617930194306835 4 0.73476109217696162 12 0.0034458883923549461
		3 3 0.24053388642202184 4 0.75260361666207565 12 0.006862496915902616
		3 3 0.11864351919591076 4 0.86796292665153618 6 0.013393554152553019
		3 3 0.057866415316796774 4 0.91281298998631855 6 0.029320594696884902
		3 3 0.1186435186283769 4 0.86796292657854468 6 0.013393554793078358
		3 3 0.057866421653906146 4 0.9128129855189262 6 0.029320592827167764
		4 3 0.24051282560890183 4 0.7526250069024869 6 2.3861168338837365e-06 
		9 0.0068597813717774401
		3 3 0.26178894666327468 4 0.73476451140879528 9 0.003446541927929969
		3 3 0.22742927524918463 4 0.77211625067551704 9 0.00045447407529846648
		3 3 0.23010937258540859 4 0.76972661907993567 9 0.0001640083346557034
		4 3 0.22742892750328647 4 0.77211661286046063 9 1.9551257204940083e-11 
		12 0.00045445961670188443
		3 4 0.93111044986487157 6 0.051557727784086321 9 0.01733182235104214
		4 4 0.93445700393807152 6 0.055032794373075927 9 0.010510147967605504 
		12 5.3721247150338665e-08
		3 4 0.93110442176799246 6 0.051563021169880312 12 0.017332557062127236
		3 3 0.18740293960490245 4 0.80657352781560565 6 0.0060235325794919603
		3 3 0.18740296990601921 4 0.80657349550549484 6 0.006023534588485948
		4 3 0.26071950909100006 4 0.73701055183796915 6 1.1773067470343185e-06 
		9 0.0022687617642838196
		3 3 0.20222208425409219 4 0.79102185767679545 6 0.0067560580691123362
		3 3 0.26740146768874412 4 0.73234837083533844 9 0.00025016147591741837
		3 3 0.28698422173007287 4 0.71208433931672843 9 0.00093143895319857165
		4 3 9.6858430703931785e-06 4 0.93801309681323219 6 0.054157423306140325 
		9 0.007819794037557011
		3 3 0.007799288010636396 4 0.9420484223631701 6 0.050152289626193544
		3 3 0.06547715306890721 4 0.90433825439039306 6 0.030184592540699724
		3 3 0.021093439945964236 4 0.9356307678758774 6 0.04327579217815835
		3 3 0.1376636215314184 4 0.84567614295462634 6 0.016660235513955186
		3 3 0.28698763868206117 4 0.71208097944974702 12 0.00093138183743767726
		3 3 0.26740216042284204 4 0.73234768465031552 12 0.00025015492684252313
		3 3 0.28606080143220869 4 0.7122769749329233 9 0.001662223634868018
		4 3 0.26071721043093027 4 0.73701341975342083 6 3.104793073081109e-09 
		12 0.0022693667108558604
		4 3 0.28606421828030859 4 0.71227371389159178 6 1.0647083766675612e-11 
		12 0.0016620678174524527
		4 3 0.20222209047473699 4 0.7910218516584927 6 0.0067560578812685306 
		12 -1.4498277437257969e-11
		3 3 0.021093439945964236 4 0.9356307678758774 6 0.04327579217815835
		3 3 0.065477178719825002 4 0.90433823685259085 6 0.030184584427584194
		3 3 0.13766363116284908 4 0.8456761334509576 6 0.016660235386193243
		3 3 0.0077992549912165188 4 0.94204844298047974 6 0.050152302028303772
		4 3 0.26976039259014667 4 0.73013605956077243 9 0.00010354781563868102 
		12 3.3442124401063995e-11
		2 14 0.77678143866223526 15 0.2232185613377648
		2 14 0.76769815344216485 15 0.23230184655783523
		2 14 0.77374004453162604 15 0.22625995546837385
		2 14 0.76669478017055348 15 0.23330521982944658
		3 1 7.1990838945091886e-07 13 0.75037527720545372 14 0.24962400288615685
		3 1 6.7755753777242893e-07 13 0.75037524322769455 14 0.2496240792147677
		3 1 1.2938529683016829e-06 13 0.75037573767672883 14 0.24962296847030294
		3 1 1.1857236781723581e-06 13 0.75037565092543967 14 0.24962316335088217
		2 14 0.756059926022839 15 0.24394007397716097
		2 14 0.74830519488656833 15 0.25169480511343167
		2 14 0.7611252640908226 15 0.23887473590917735
		2 14 0.75346766944856947 15 0.24653233055143051
		2 14 0.7452094539904095 15 0.25479054600959039
		2 14 0.75599213534805976 15 0.24400786465194024
		3 1 0.10003477290329019 13 0.83063031264498888 14 0.069334914451720811
		2 1 0.20006682692570033 13 0.79993317307429967
		2 14 0.75988001582211662 15 0.24011998417788336
		2 14 0.74977047049991541 15 0.25022952950008448
		2 14 0.75716203984293196 15 0.24283796015706807
		2 14 0.7674910823621458 15 0.23250891763785408
		2 14 0.75900998181123336 15 0.2409900181887667
		2 14 0.76517943014030654 15 0.23482056985969352
		2 13 0.40026654115133642 14 0.59973345884866358
		3 13 1.1705238525016379e-06 14 0.89999912206528743 15 0.099999707410860172
		2 13 0.40026969943412588 14 0.59973030056587417
		3 13 8.2693064625870122e-06 14 0.89999379515647893 15 0.099997935537058547
		2 13 0.40026975321804653 14 0.59973024678195341
		3 13 8.9863643245775357e-06 14 0.89999325743174263 15 0.099997756203932753
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003481978111771 13 0.83063029825944801 14 0.069334881959434269
		2 14 0.89999840625353456 15 0.10000159374646549
		2 13 0.40026648857329189 14 0.59973351142670817
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003566358201325 13 0.83063003931971002 14 0.069334297098276751
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003575733129974 13 0.83063001055058228 14 0.069334232118117928
		3 1 6.352205605225196e-07 13 0.75037520926106671 14 0.24962415551837278
		3 1 6.1405496050810549e-07 13 0.75037519228007032 14 0.24962419366496919
		3 1 6.3522488206584804e-07 13 0.75037520926453383 14 0.24962415551058409
		3 1 8.2576823247383008e-07 13 0.75037536213598299 14 0.24962381209578449
		3 1 9.5280805032896344e-07 13 0.75037546405904154 14 0.24962358313290806
		3 1 1.0798545097138437e-06 13 0.75037556598742849 14 0.24962335415806169
		3 1 1.0375040219547919e-06 13 0.75037553200996143 14 0.24962343048601665
		3 1 9.3162930372484516e-07 13 0.75037544706749781 14 0.24962362130319851
		3 1 7.8341920039253102e-07 13 0.75037532815968366 14 0.24962388842111588
		3 1 1.2280775321862132e-06 13 0.75037568490560758 14 0.24962308701686023
		3 1 1.2492511839181969e-06 13 0.7503757018930638 14 0.24962304885575229
		3 1 1.2282659514753301e-06 13 0.75037568505677499 14 0.24962308667727362
		3 13 9.188473757509867e-06 14 0.89999313040934792 15 0.099997681116894555
		2 13 0.4002701329642544 14 0.59972986703574571
		3 13 8.8251072194966608e-06 14 0.89999340917092918 15 0.099997765721851276
		2 13 0.40027023300070375 14 0.59972976699929614
		3 13 8.5830076146674354e-06 14 0.89999356082826132 15 0.099997856164124085
		2 13 0.40027009959138665 14 0.59972990040861329
		2 14 0.50000543191934876 15 0.49999456808065124
		2 14 0.50000137326131033 15 0.49999862673868967;
	setAttr ".wl[990:1186].w"
		2 14 0.50003102460917592 15 0.49996897539082408
		2 14 0.5 15 0.5
		2 14 0.5 15 0.5
		2 14 0.50002644782625272 15 0.49997355217374734
		2 14 0.50000212681603895 15 0.49999787318396105
		2 14 0.50000174794932783 15 0.49999825205067217
		2 14 0.50002774150981188 15 0.49997225849018812
		2 14 0.89999382790912796 15 0.10000617209087208
		2 13 0.4002659520794315 14 0.5997340479205685
		2 14 0.89999325632531013 15 0.10000674367468983
		2 13 0.40026580424768354 14 0.59973419575231657
		2 14 0.8999939385952368 15 0.10000606140476334
		2 13 0.40026595107480006 14 0.59973404892519999
		3 1 0.10003589799398685 13 0.83062996738499717 14 0.069334134621015883
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.1000359475066821 13 0.83062995219088631 14 0.069334100302431478
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003585109860021 13 0.83062998177592662 14 0.06933416712547312
		2 1 0.20006682692570033 13 0.79993317307429967
		2 13 0.40026728845985005 14 0.59973271154014995
		2 13 0.40026801812378848 14 0.59973198187621157
		2 13 0.40026904067105279 14 0.59973095932894716
		3 13 3.1020856182865915e-06 14 0.89999768480920472 15 0.099999213105177065
		3 13 2.8750777783229384e-06 14 0.89999785423278811 15 0.099999270689433595
		3 13 4.9834163539100996e-06 14 0.89999626278877265 15 0.09999875379487351
		3 1 0.10003552290968226 13 0.83063008248825454 14 0.069334394602063212
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003524163889593 13 0.83063016880267304 14 0.069334589558430942
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003500725658176 13 0.83063024072828406 14 0.069334752015134046
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003500726167665 13 0.83063024072672076 14 0.069334752011602635
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003524165745582 13 0.8306301687969776 14 0.06933458954556658
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.100035569791058 13 0.83063006810162454 14 0.069334362107317318
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003467918639256 13 0.83063034140417724 14 0.069334979409430064
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.10003463232848961 13 0.83063035578360411 14 0.06933501188790632
		2 1 0.20006682692570033 13 0.79993317307429967
		3 1 0.100034726069133 13 0.83063032701712869 14 0.06933494691373826
		2 1 0.20006682692570033 13 0.79993317307429967
		3 13 5.1446616287038236e-06 14 0.89999614017806384 15 0.099998715160307505
		2 13 0.40026879075442634 14 0.59973120924557366
		3 13 2.9262307094726384e-06 14 0.89999781453552719 15 0.099999259233763391
		2 13 0.40026802225248914 14 0.59973197774751086
		3 13 2.4417811145225303e-06 14 0.89999817634820833 15 0.099999381870677181
		2 13 0.40026723836042694 14 0.59973276163957301
		3 1 0.050017341942296248 13 0.79050322434931752 14 0.15947943370838624
		3 1 0.050017384294148703 13 0.7905032583278796 14 0.1594793573779717
		3 1 0.050017807760678289 13 0.79050359807178516 14 0.15947859416753651
		3 1 0.05001780776322573 13 0.79050359807382897 14 0.15947859416294527
		3 1 0.050017871284544838 13 0.79050364903648962 14 0.1594784796789655
		3 1 0.050017893260184035 13 0.79050366666737426 14 0.15947844007244177
		3 1 0.050017871287274238 13 0.79050364903867953 14 0.15947847967404633
		3 1 0.050017468975563549 13 0.79050332626712061 14 0.15947920475731583
		3 1 0.050017596016154735 13 0.79050342819079966 14 0.15947897579304568
		3 1 0.050017723056063577 13 0.79050353011393104 14 0.15947874683000532
		3 1 0.050017723056518471 13 0.79050353011429619 14 0.15947874682918545
		3 1 0.050017596023342145 13 0.79050342819656605 14 0.15947897578009185
		3 1 0.05001749015044351 13 0.79050334325556226 14 0.15947916659399428
		3 1 0.050017299602862546 13 0.79050319038071892 14 0.15947951001641858
		3 1 0.050017278436307239 13 0.79050317339895615 14 0.1594795481647367
		3 1 0.05001729960163432 13 0.79050319037973349 14 0.1594795100186322
		3 13 0.19922364231352796 14 0.74999791570842089 15 0.050778441978051203
		3 13 0.19917079144923136 14 0.74999583529971015 15 0.050833373251058467
		3 13 0.19918439511282751 14 0.74999611735241045 15 0.050819487534762002
		3 13 0.1991511612964077 14 0.74999812144318623 15 0.050850717260406048
		3 13 0.199922278984865 14 0.74999611601803318 15 0.050081604997101813
		3 13 0.20085474915016488 14 0.74999619844739973 15 0.049149052402435424
		3 13 0.19994554098267442 14 0.74999621002302697 15 0.050058248994298629
		3 13 0.1999239769829903 14 0.75000182882431543 15 0.050074194192694238
		3 13 0.20090492964892909 14 0.75000205824126165 15 0.04909301210980923
		3 13 0.19998473081289236 14 0.75000178665177375 15 0.050013482535333907
		3 13 0.19999382724403109 14 0.74999755195285445 15 0.050008620803114461
		3 13 0.20098524900882198 14 0.74999785047726975 15 0.049016900513908265
		3 13 0.20002223276860887 14 0.74999734892196601 15 0.049980418309425068
		3 13 0.1999349759848264 14 0.74999721097654604 15 0.050067813038627576
		3 13 0.20084559026296839 14 0.74999777820305558 15 0.049156631533976002
		3 13 0.19988856230165117 14 0.7499976992132229 15 0.050113738485125979
		2 17 0.77678051290050409 18 0.22321948709949591
		2 17 0.7676955764188711 18 0.23230442358112896
		2 17 0.77372877797396866 18 0.22627122202603142
		2 17 0.76668269098091302 18 0.23331730901908698
		2 16 0.75037469962854775 17 0.24962530037145225
		3 1 2.0868542504380849e-08 16 0.75037471637121722 17 0.24962526276024027
		2 16 0.75037469962854775 17 0.24962530037145225
		3 1 1.7887356658935313e-08 16 0.750374713979435 17 0.24962526813320834
		2 17 0.75608289122356309 18 0.24391710877643696
		2 17 0.74832583987677981 18 0.25167416012322025
		2 17 0.76114656623330801 18 0.23885343376669202
		2 17 0.75346489314559251 18 0.24653510685440755
		2 17 0.74520658925799499 18 0.2547934107420049
		2 17 0.75599012557703227 18 0.24400987442296779
		3 1 0.10003341474493947 16 0.83063072942715799 17 0.069335855827902471
		3 1 0.20006674941378061 16 0.79993319686061737 17 5.3725602022646319e-08
		2 17 0.75986858541818747 18 0.24013141458181253
		2 17 0.74975860210981393 18 0.25024139789018607
		2 17 0.7571497229469859 18 0.24285027705301404
		2 17 0.76748992304810859 18 0.23251007695189138
		2 17 0.75900756092629995 18 0.24099243907370005
		2 17 0.76517635545517215 18 0.23482364454482796
		3 16 0.40026237397857706 17 0.59973758667462163 18 3.9346801317869609e-08
		2 17 0.9 18 0.1
		3 16 0.40026237393551112 17 0.59973758667462806 18 3.9389860819147642e-08
		2 17 0.9 18 0.1
		3 16 0.40026236196082543 17 0.59973759563096629 18 4.2408208218643025e-08
		2 17 0.89999987349250032 18 0.10000012650749973
		3 1 0.20006663612710593 16 0.79993323162524255 17 1.3224765151320102e-07
		3 1 0.10003328527004456 16 0.830630626972505 17 0.069336087757450413
		2 17 0.9 18 0.1
		2 16 0.40026255062617111 17 0.59973744937382889
		3 1 0.20006678518852275 16 0.79993318588231388 17 2.8929163422633971e-08
		3 1 0.10003330881531566 16 0.83063064586269308 17 0.069336045321991294
		3 1 0.20006664373727007 16 0.79993322928980171 17 1.2697292828042779e-07
		3 1 0.10003332998846512 16 0.83063066284974618 17 0.069336007161788574
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		3 1 2.9812255498309465e-09 16 0.75037470202036183 17 0.2496252949984126
		3 1 -6.1576344233985218e-10 16 0.75037469913452548 17 0.24962530148123793
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		3 1 1.4790217344844443e-09 16 0.75037470081515545 17 0.24962529770582287
		2 16 0.75037469962854775 17 0.24962530037145225
		2 16 0.75037469962854775 17 0.24962530037145225
		2 17 0.9 18 0.1
		3 16 0.40026227862282859 17 0.59973765832537929 18 6.3051792082906712e-08
		3 16 2.3943136519406498e-08 17 0.8999999821186172 18 0.099999993938246268
		3 16 0.40026236318154723 17 0.59973759563096629 18 4.1187486455361464e-08
		3 16 1.1971568259703249e-08 17 0.89999999105930861 18 0.099999996969123123
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.50000006570786371 18 0.49999993429213629
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		2 17 0.5 18 0.5
		3 16 2.0758776512287435e-11 17 0.89999999999999947 18 0.099999999979241805
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		3 16 1.1975020285431291e-08 17 0.89999999105931239 18 0.099999996965667373
		2 16 0.40026252975785959 17 0.59973747024214041
		3 1 0.10003334787583333 16 0.83063067720064276 17 0.069335974923523835
		3 1 0.20006682692564082 16 0.79993317307431799 17 4.1247531318091484e-14
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553138
		2 1 0.2000668279464905 16 0.79993317205350944
		3 1 0.10003341341611564 16 0.8306307298349106 17 0.069335856748973745
		3 1 0.20006677922605312 16 0.79993318771203503 17 3.3061911892978479e-08
		3 16 0.40026230278458325 17 0.59973764053838197 18 5.6677034654891024e-08
		3 16 0.40026237491753708 17 0.59973758641760122 18 3.8664861642050088e-08
		3 16 0.40026237568520046 17 0.59973758585797499 18 3.8456824638465187e-08
		2 17 0.89999983691050767 18 0.10000016308949236
		2 17 0.89999985677832517 18 0.10000014322167484
		2 17 0.89999975740994509 18 0.10000024259005504
		3 1 0.10003337172565763 16 0.8306306963351715 17 0.069335931939170869
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.20006675537622742 16 0.79993319503090321 17 4.9592869317450393e-08
		3 1 0.10003332998846511 16 0.83063066284974629 17 0.069336007161788588
		3 1 0.2000667426244124 16 0.7999331953843668 17 6.1991220899141931e-08
		3 1 0.100033410999778 16 0.83063073057644699 17 0.06933585842377489
		3 1 0.20006682743603066 16 0.7999331725639518 17 1.7625357655367202e-14
		3 1 0.10003346264365354 16 0.83063071472830274 17 0.069335822628043692
		3 1 0.20006676731779033 16 0.79993319136630447 17 4.1315905195110066e-08
		3 1 0.10003341346285016 16 0.8306307298205966 17 0.069335856716553151
		3 1 0.20006682692569572 16 0.79993317307430112 17 3.2022958056472497e-15
		3 1 0.10003341159353389 16 0.8306307303942394 17 0.069335858012226664
		2 1 0.20006682692570033 16 0.79993317307429967
		3 1 0.10003346180355914 16 0.83063071498612928 17 0.069335823210311606
		2 1 0.20006682692570033 16 0.79993317307429967
		2 17 0.9 18 0.1
		3 16 0.4002623028851035 17 0.59973764041268984 18 5.6702206606821822e-08
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		2 17 0.9 18 0.1
		2 16 0.40026252975785959 17 0.59973747024214041
		3 1 0.050016578538619468 16 0.79050261187648052 17 0.15948080958489996
		3 1 0.050016712693871201 16 0.79050271950819639 17 0.15948056779793238
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016706731425081 16 0.79050271472457223 17 0.15948057854400269
		3 1 0.050016647106864327 16 0.79050266688825044 17 0.15948068600488513
		3 1 0.050016644125636292 16 0.79050266449643447 17 0.15948069137792928
		3 1 0.050016676919144708 16 0.79050269080641133 17 0.15948063227444392
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016623257040031 16 0.79050264775372181 17 0.15948072898923812
		3 1 0.050016676919144708 16 0.79050269080641133 17 0.15948063227444392
		3 1 0.05001666499423256 16 0.79050268123914702 17 0.15948065376662041;
	setAttr ".wl[1187:1353].w"
		3 1 0.050016623257040031 16 0.79050264775372192 17 0.15948072898923812
		3 1 0.050016679900362612 16 0.7905026931982192 17 0.15948062690141807
		3 1 0.050016667975460595 16 0.7905026836309631 17 0.15948064839357629
		3 1 0.050016664994231998 16 0.79050268123914669 17 0.15948065376662141
		3 1 0.050016685862828821 16 0.79050269798185957 17 0.15948061615531156
		3 16 0.19922056047747014 17 0.75000016987323759 18 0.050779269649292261
		3 16 0.1991649210246923 17 0.75000022351741791 18 0.050834855457889815
		3 16 0.19917921314473325 17 0.74999996512311018 18 0.050820821732156615
		3 16 0.19914840691412267 17 0.75000015199182823 18 0.05085144109404912
		3 16 0.19991709327374121 17 0.75 18 0.05008290672625882
		3 16 0.2008495865517855 17 0.75000008940696716 18 0.049150324041247327
		3 16 0.19994034556399001 17 0.75000010728836064 18 0.050059547147649396
		3 16 0.199926192891695 17 0.75000017924357887 18 0.050073627864726092
		3 16 0.20090750193306242 17 0.75000015199184422 18 0.049092346075093399
		3 16 0.199986932202707 17 0.7500001698732196 18 0.050012897924073513
		3 16 0.19999047234717515 17 0.75 18 0.050009527652824855
		3 16 0.20098253803811281 17 0.74999997415151121 18 0.049017487810375994
		3 16 0.200018786094455 17 0.75 18 0.049981213905545004
		3 16 0.19993105669809189 17 0.75000018775463106 18 0.050068755547277084
		3 16 0.20084253001310787 17 0.75000013411044331 18 0.049157335876448847
		3 16 0.19988525908707164 17 0.75000013411045074 18 0.050114606802477646
		3 1 0.60346746308812738 13 0.062559341953760644 16 0.33397319495811201
		4 2 0.069410382394389569 3 0.65340174910825255 4 0.27718786849735744 
		10 4.3398880773883557e-16
		2 1 0.46807997827914272 16 0.53192002172085728
		3 2 0.079108514553909548 3 0.71989526034986784 4 0.20099622509622259
		3 1 0.60346632288201263 13 0.33397503975386028 16 0.062558637364127145
		3 2 0.069410383795942499 3 0.65340174908047055 4 0.27718786712358678
		2 1 0.46807977345634372 13 0.53192022654365634
		3 2 0.079108514553909548 3 0.71989526034986784 4 0.20099622509622259
		3 1 0.21712167315767075 2 0.6 3 0.18287832684232924
		3 1 0.2072328586146609 2 0.6 16 0.19276714138533912
		4 1 0.20723254147730163 2 0.59999976273799616 3 8.0242551316086452e-07 
		13 0.19276689335918915
		3 1 0.21712167315767075 2 0.6 3 0.18287832684232924
		2 1 0.40085578040583114 16 0.59914421959416897
		3 1 0.45359889542396314 13 0.043081411640281973 16 0.50331969293575496
		3 1 0.50593978920163252 13 0.062716177526426151 16 0.43134403327194121
		3 1 8.0381369658814761e-08 2 0.4336653987202157 3 0.56633452089841452
		4 1 1.3164634087610409e-08 2 0.047885494757539761 3 0.95211446441563874 
		4 2.766218733393374e-08
		3 2 0.062721810971173159 3 0.9 4 0.037278189028826812
		3 3 0.67866834327763703 4 0.26531943289157489 10 0.056012223830788049
		3 3 0.71550528451076056 4 0.22983216449162905 10 0.054662550997610554
		3 3 0.70891454234016116 4 0.2259104271969222 10 0.065175030462916728
		3 1 0.37899827455356683 2 0.33352824742187026 16 0.28747347802456286
		3 1 0.60000001284074778 2 5.4741110256837366e-08 16 0.39999993241814202
		2 1 0.49451995146494832 16 0.50548004853505168
		2 1 0.57308003450826817 13 0.426919965491732
		2 1 0.75001779562996151 13 0.24998220437003854
		2 1 0.573081759246721 16 0.42691824075327911
		4 2 0.10292905107068064 3 0.58140710665681505 4 0.31566384227250416 
		10 1.9141549340934727e-16
		3 2 0.10597065013994952 3 0.54207514969719051 4 0.35195420016286005
		3 2 0.10292905452252107 3 0.58140709289920678 4 0.31566385257827223
		3 1 0.37899737964245711 2 0.33352921814785436 13 0.28747340220968853
		3 1 0.5999974385028316 2 3.3577931898696471e-06 13 0.39999920370397851
		2 1 0.49452318104913923 13 0.50547681895086083
		3 1 0.50593798568430548 13 0.43134723134572128 16 0.062714782969973293
		4 1 0.45359730248833968 13 0.50332199324319638 14 4.3509932901204573e-07 
		16 0.043080269169134953
		3 1 0.40085679179315448 13 0.59914297070654687 16 2.3750029875353946e-07
		4 2 0.00010527329177503082 3 0.70926377505276172 4 0.2255877003551322 
		7 0.06504325130033127
		4 2 0.0001325846981321647 3 0.7158483434252908 4 0.2294776297596679 
		7 0.054541442116909304
		4 2 0.00044190610418802528 3 0.67941593692603774 4 0.26451703737294047 
		7 0.055625119596833618
		4 1 0.42376849596949828 2 0.35574639132775404 3 4.682551964823584e-07 
		13 0.22048464444755131
		3 1 0.59999849671883931 2 2.8580796891352399e-06 13 0.39999864520147155
		3 1 0.57765032396445215 13 0.38511339033390468 16 0.037236285701643217
		3 1 0.63452540461485951 13 0.12317092766941054 16 0.24230366771573014
		3 1 0.64545007265772858 13 0.10007031157715962 16 0.25447961576511191
		3 1 0.63452529633889532 13 0.24230430998051111 16 0.1231703936805937
		3 2 0.088131803928674451 3 0.4420196827021477 4 0.46984851336917793
		3 2 0.086995401517750759 3 0.36286024848073012 4 0.55014435000151918
		3 2 0.088131793593439034 3 0.44201970806147772 4 0.4698484983450833
		3 1 0.57764994313443041 13 0.037236793964124285 16 0.38511326290144549
		3 1 0.59999999866783671 13 2.2194868028479034e-09 16 0.39999999911267647
		3 1 0.4237691219656593 2 0.35574556548339537 16 0.22048531255094544
		3 2 0.062916067423952587 3 0.9 4 0.037083932576047439
		3 2 0.047885453331489206 3 0.95211452121943441 4 2.5449076430044219e-08
		4 1 1.4055646981300671e-08 2 0.4320752141562092 3 0.56792477178813494 
		4 8.8931278059638916e-15
		3 2 0.062916068372854003 3 0.9 4 0.037083931627145975
		2 2 0.047885443016630003 3 0.95211455698337
		2 2 0.43207548349216601 3 0.56792451650783415
		3 2 0.062721815497429348 3 0.89999978948795689 4 0.037278395014613816
		2 2 0.047885443016630003 3 0.95211455698337
		3 1 6.5823170438052046e-09 2 0.43366611531504728 3 0.56633387810263569
		3 1 0.23027963148772709 2 0.6 3 0.16972036851227293
		3 1 0.22612005727974363 2 0.6 3 0.17387994272025636
		3 1 0.23027963148772709 2 0.6 3 0.16972036851227293
		4 1 0.20201755732535245 2 0.59999964292600039 3 1.7811343933692097e-06 
		13 0.19798101861425371
		3 1 0.17070568922860904 2 0.6 3 0.22929431077139098
		3 1 0.20382619705749641 2 0.6 3 0.19617380294250364
		4 1 0.22633387203916475 2 0.6 3 0.17366605902193746 16 
		6.8938897810765077e-08
		3 1 0.21497385881110087 2 0.6 3 0.18502614118889912
		4 1 0.22633387727031259 2 0.6 3 0.17366609975005343 13 
		2.2979633973281279e-08
		3 1 0.20382619864244067 2 0.6 3 0.19617380135755938
		4 1 0.17070569314568429 2 0.60000000005681098 3 0.22929430682311877 
		16 -2.5613825305731241e-11
		3 1 0.20201808004999175 2 0.5999999685676618 16 0.19798195138234645
		3 1 2.034970440588966e-08 2 0.43008667830060149 3 0.56991330134969409
		2 2 0.047885443016630003 3 0.95211455698337
		4 2 0.059292144497524117 3 0.8999999984356174 4 0.040707856670961426 
		10 3.9589704385528317e-10
		2 2 0.42193384729913469 3 0.57806615270086537
		2 2 0.047885443016630003 3 0.95211455698337
		4 2 0.058497555696469354 3 0.89999994677241324 4 0.041502484060855022 
		10 1.347026247109998e-08
		3 1 6.1049111805656802e-08 2 0.42975205352039714 3 0.57024788543049099
		3 2 0.047885452843784669 3 0.95211451660186452 4 3.0554350876091269e-08
		4 2 0.059317706514138813 3 0.89999999729881763 4 0.040682295265729952 
		10 9.2131370482829432e-10
		3 1 0.11033626563927129 2 0.38966377190853863 3 0.49999996245219008
		3 1 7.876119721027223e-09 2 0.047885467413750271 3 0.95211452471013003
		3 2 0.064987947384486933 3 0.89999999965760635 4 0.035012052957906679
		3 1 0.11398132090567771 2 0.3860186790943223 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.065541909218587963 3 0.89999997925972053 4 0.034458111521691433
		3 1 0.11033625316549667 2 0.38966374683450333 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.064987947779709981 3 0.9 4 0.035012052220289989
		2 2 0.42975199263496516 3 0.57024800736503489
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.059317707487712035 3 0.9 4 0.040682292512287943
		2 2 0.42193384728772265 3 0.57806615271227735
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.058497569766071698 3 0.9 4 0.041502430233928279
		2 2 0.43008691695251183 3 0.56991308304748811
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.059292144958348073 3 0.9 4 0.040707855041651905
		3 1 0.11043295482440138 2 0.38956704517559865 3 0.5
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.064851857991726963 3 0.9 4 0.035148142008273014
		3 1 0.11328240323726652 2 0.38671769395408434 3 0.49999990280864914
		2 2 0.047885443016630003 3 0.95211455698337
		3 2 0.065437632641377641 3 0.89999989747752163 4 0.034562469881100767
		3 1 0.11043295482440138 2 0.38956704517559865 3 0.5
		3 2 0.047885443888002512 3 0.95211455387710031 4 2.2348971511029293e-09
		3 2 0.064851858061556147 3 0.9 4 0.035148141938443837
		2 1 0.49109258880376561 16 0.50890741119623439
		2 1 0.70353476343363597 13 0.29646523656636398
		2 1 0.49109049289246121 13 0.50890950710753879
		3 1 0.50896096108266409 13 0.10961167595356217 16 0.38142736296377383
		3 1 0.54173302950202729 13 0.2087521530269168 16 0.24951481747105592
		3 1 0.5089600691015187 13 0.38142934529512312 16 0.10961058560335823
		3 1 0.55079472436179067 13 0.14708953948826506 16 0.3021157361499443
		3 1 0.55375267766630487 13 0.153388919272963 16 0.29285840306073213
		3 1 0.55079429957821546 13 0.30211715940054157 16 0.147088541021243
		3 2 0.038226782360999099 3 0.53615983606867279 4 0.42561338157032819
		3 2 0.055218986961771584 3 0.47255118382768169 4 0.47222982921054668
		4 2 0.038226773247023962 3 0.53615986342925581 4 0.42561335054152361 
		10 1.2782196615684044e-08
		4 2 4.1166069724017946e-05 3 0.53512348893070449 4 0.43432618773263659 
		7 0.030509157266934945
		3 2 0.020068317677584241 3 0.38083554939682163 4 0.59909613292559416
		3 3 0.53518741860383812 4 0.43427332039463634 10 0.030539261001525705
		3 2 0.03116223594555579 3 0.44314889221790549 4 0.52568887183653867
		3 2 0.043636069721850537 3 0.31963797462446258 4 0.63672595565368695
		4 2 0.031162232230727782 3 0.44314890318974132 4 0.52568886093896883 
		10 3.640561984508458e-09
		4 1 0.68872037246168216 2 6.4622629650979265e-07 13 0.22489147434563653 
		16 0.086387506966385003
		3 1 0.64340985228731362 2 0.14119730815991136 13 0.21539283955277497
		5 1 0.48644077520383588 2 0.3976775241951952 3 1.4388130374199417e-07 
		13 0.11588155763501558 16 -9.1535049846203994e-10
		3 1 0.70669347933805671 13 0.088597220024802942 16 0.20470930063714046
		3 1 0.73839284829449348 2 0.11633176564335711 16 0.14527538606214957
		3 1 0.53224246057136015 2 0.39888265752140639 16 0.06887488190723362
		3 1 0.68872087850183361 13 0.086388147146462507 16 0.22489097435170394
		3 1 0.64341023481926474 2 0.14119717622871972 16 0.21539258895201557
		5 1 0.48644089238133059 2 0.39767743859066557 3 7.1883234858088591e-08 
		13 1.1881413981856925e-08 16 0.11588158526335494
		2 1 0.41844773038303856 13 0.58155226961696149
		3 1 0.59999733392469845 2 3.6317379677253978e-06 13 0.39999903433733386
		3 1 0.35549125713023699 2 0.32051997166613078 13 0.32398877120363218
		3 1 0.39231200677368477 13 0.59102247998478075 14 0.016665513241534428
		3 1 0.59999741892934622 2 3.65295099924565e-06 13 0.39999892811965465
		4 1 0.36236059013786487 2 0.33632755669233283 3 9.6598669523553621e-07 
		13 0.30131088718310706
		3 1 0.41841638556815453 13 0.58158361409622672 16 3.3561880823093757e-10
		3 1 0.59999783006195784 2 3.4757166924837367e-06 13 0.39999869422134965
		4 1 0.38600521797695408 2 0.3427678294831864 3 7.4581301869281474e-07 
		13 0.27122620672684089
		3 1 0.63548167909458719 13 1.4899997364382113e-08 16 0.36451830600541546
		3 1 0.64737690525269864 2 0.10204483781566773 16 0.25057825693163366;
	setAttr ".wl[1354:1369].w"
		3 1 0.46689847753977892 2 0.38816709318592774 16 0.14493442927429342
		2 1 0.76247841339614753 16 0.23752158660385247
		2 1 0.74079814012299661 16 0.2592018598770035
		3 1 0.50808735045899578 2 0.37139818766114818 16 0.12051446187985601
		3 1 0.63547955747526463 2 1.5398307586862342e-06 13 0.36451890269397669
		3 1 0.64737548175692028 2 0.10204536681110482 13 0.25057915143197496
		4 1 0.46689773517671324 2 0.38816708677985129 3 2.1868592022638258e-07 
		13 0.14493495935751535
		3 1 0.41841146735984935 13 7.7035663557602266e-09 16 0.58158852493658431
		2 1 0.6 16 0.4
		3 1 0.3860059101001348 2 0.34276685136748819 16 0.27122723853237701
		4 1 0.39230517760458677 13 3.5949976326881059e-08 16 0.59102869246426459 
		17 0.01666609398117214
		3 1 0.59999976737796934 2 3.2922650853902204e-07 16 0.39999990339552227
		4 1 0.36236128336746481 2 0.33632654855686261 3 9.7117789116394502e-08 
		16 0.30131207095788354
		3 1 0.41844106230290384 13 2.5678554519200757e-09 16 0.58155893512924073
		2 1 0.59999999371289914 16 0.40000000628710081
		3 1 0.35549194022970709 2 0.32051860602612192 16 0.32398945374417087;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999996647 0 -2.5895457263264561e-07 0 0 1 0 0
		 2.5895457263264561e-07 0 0.99999999999996647 0 8.0261455553705902e-13 -18.570463180542141 -1.7698899440183267e-14 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999998630007 4.34690151653385e-08 5.2343113640566811e-06 0
		 -4.3469015164684095e-08 0.99999999999999911 -2.3878686030903215e-13 0 -5.234311364056687e-06 1.1256500244902606e-14 0.99999999998630096 0
		 1.1535620852666886e-06 -26.538120269792312 -0.00010497094344287906 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999998630007 4.34690151653385e-08 5.2343113640566811e-06 0
		 -4.3469015164684095e-08 0.99999999999999911 -2.3878686030903215e-13 0 -5.234311364056687e-06 1.1256500244902606e-14 0.99999999998630096 0
		 9.3145207649939401e-07 -37.659236907959077 -0.00010497094339714883 1;
	setAttr ".pm[4]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603566988004e-06 -47.043476104736364 -0.088109546108910447 1;
	setAttr ".pm[5]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603566988006e-06 -72.609054565430839 -20.116723143418206 1;
	setAttr ".pm[6]" -type "matrix" 1 1.6360455566281859e-24 1.6940658945086005e-21 0
		 6.6174449011631371e-24 1.0000000000000002 -2.3878686031230336e-13 0 -2.5410988417628995e-21 2.3878686031230326e-13 1 0
		 -1.5917603566988004e-06 -72.60906219482473 -28.406041228135006 1;
	setAttr ".pm[7]" -type "matrix" 0.99977928141211281 0.01441599310727463 -0.015282918628667317 0
		 -0.014161816527882792 0.99976172732365953 0.016611186936624573 0 0.015518743883125397 -0.016391086649271042 0.99974521797643323 0
		 -17.942395301393535 -41.55566243488817 -0.49082407955819601 1;
	setAttr ".pm[8]" -type "matrix" 0.99985824586194139 0.014100575052857431 0.00920119367586421 0
		 -0.014248974895399365 0.99976614543809972 0.016267180157457501 0 -0.0089696653400395971 -0.016395981795050731 0.99982534318983141 0
		 -28.493980888617326 -41.546668533635561 -1.1889452438814512 1;
	setAttr ".pm[9]" -type "matrix" 1.0000000000000002 1.2468324983595733e-18 5.2041704279301255e-18 0
		 -2.8731357570845168e-18 1.0000000000000002 -2.3878121702125559e-13 0 -8.6736173798847242e-18 2.3877774757430364e-13 1 0
		 -37.042434607573142 -41.038223756538329 -0.55522579855198062 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999950477991 -3.1427157306500239e-05 1.665506055093681e-06 0
		 -3.1415321914108207e-05 -0.99997765732120136 -0.0066845995751362046 0 1.8755468056056236e-06 0.0066845995195034449 -0.99997765781328651 0
		 18.531189198526501 41.040712324173676 0.36239597871357665 1;
	setAttr ".pm[11]" -type "matrix" 0.99999999950477991 -3.1427157306500239e-05 1.665506055093681e-06 0
		 -3.1415321914108207e-05 -0.99997765732120136 -0.0066845995751362046 0 1.8755468056056236e-06 0.0066845995195034449 -0.99997765781328651 0
		 29.090189198526499 41.040712324173569 -0.10021642128642338 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999949335949 -3.1788467910330722e-05 1.6655020738732592e-06 0
		 -3.1776624236886068e-05 -0.99997765647259118 -0.0066847248133670278 0 1.8779620209011305e-06 0.0066847247570562419 -0.99997765697609231 0
		 37.043704025189662 41.035798905537256 0.27438335365926481 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999998115374 2.3842324014255181e-06 5.6575570379608468e-06 0
		 -2.3842324013838674e-06 0.99999999999715772 -1.4106338685417513e-11 0 -5.657557037978399e-06 6.1740788256807159e-13 0.99999999998399602 0
		 -8.5929581851701986 -17.538020487659182 -4.8615140230229692e-05 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999998115374 2.3842324014255181e-06 5.6575570379608468e-06 0
		 -2.3842324013838674e-06 0.99999999999715772 -1.4106338685417513e-11 0 -5.657557037978399e-06 6.1740788256807159e-13 0.99999999998399602 0
		 -8.5929591388445221 -8.3202832897833545 -0.2544440760255185 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999998115374 2.3842324014255181e-06 5.6575570379608468e-06 0
		 -2.3842324013838674e-06 0.99999999999715772 -1.4106338685417513e-11 0 -5.657557037978399e-06 6.1740788256807159e-13 0.99999999998399602 0
		 -8.5929592169878042 0.17428528166512289 -4.8755198812776175e-05 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 -17.538000000000004 -5.9604600000000031e-07 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 -8.3203099999999992 -0.25439600000000001 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5931999999999995 0.17426200000000058 -7.3609399997565116e-07 1;
	setAttr ".gm" -type "matrix" 100 0 0 0 0 -1.6292067961387602e-05 -99.999999999998678 0
		 0 99.999999999998678 -1.6292067961387602e-05 0 0 1.4901161193847656e-06 0 1;
	setAttr -s 19 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr -s 19 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
	setAttr -s 19 ".ifcl";
createNode dagPose -n "bindPose7";
	rename -uid "E60942A1-410C-68BE-745E-778575EAE372";
	setAttr -s 20 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 0.99999999999996647 0 2.5895457263264561e-07 0 0 1 0 0
		 -2.5895457263264561e-07 0 0.99999999999996647 0 -8.0261456012024314e-13 18.570463180542138 1.7698691599473456e-14 1;
	setAttr ".wm[3]" -type "matrix" 0.99999999998630007 -4.3469015164684095e-08 -5.234311364056687e-06 0
		 4.3469015165338494e-08 0.999999999999999 1.1256500244902624e-14 0 5.2343113640566819e-06 -2.3878686030903215e-13 0.99999999998630107 0
		 5.7331781845291712e-10 26.538120269792337 0.00010497094977827056 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999998630007 -4.3469015164684095e-08 -5.234311364056687e-06 0
		 4.3469015165338494e-08 0.999999999999999 1.1256500244902624e-14 0 5.2343113640566819e-06 -2.3878686030903215e-13 0.99999999998630107 0
		 7.0610731438243481e-07 37.659236907959084 0.00010497094869513224 1;
	setAttr ".wm[5]" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.5917603566988002e-06 47.043476104736335 0.088109546120143808 1;
	setAttr ".wm[6]" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.591760356698851e-06 72.609054565426021 20.116723143435543 1;
	setAttr ".wm[7]" -type "matrix" 1 -1.6360455562236649e-24 -1.6940658945086007e-21 0
		 -6.6174449005563543e-24 0.99999999999999989 2.3878686031230331e-13 0 2.541098841762901e-21 -2.3878686031230321e-13 1 0
		 1.591760356698872e-06 72.609062194817938 28.40604122815234 1;
	setAttr ".wm[8]" -type "matrix" 0.9997792814121127 -0.014161816527882787 0.015518743883125397 0
		 0.01441599310727463 0.99976172732365931 -0.016391086649271039 0 -0.015282918628667312 0.01661118693662457 0.99974521797643323 0
		 18.529999999999998 41.299817116192159 0.088000000000000106 1;
	setAttr ".wm[9]" -type "matrix" 0.99985824586194105 -0.014248974895399356 -0.0089696653400395954 0
		 0.014100575052857431 0.99976614543809939 -0.016395981795050727 0 0.00920119367586421 0.016267180157457501 0.99982534318983141 0
		 29.086713382230261 41.150283423794875 0.25195769279881269 1;
	setAttr ".wm[10]" -type "matrix" 0.99999999999999978 -1.2468324983583301e-18 -5.2041704279304213e-18 0
		 2.8731357570865868e-18 0.99999999999999989 2.3878121702125554e-13 0 8.6736173798840355e-18 -2.3877774757430359e-13 1 0
		 37.042434607573135 41.03822375653818 0.55522579856177956 1;
	setAttr ".wm[11]" -type "matrix" 0.99999999950478002 -3.1415321914108207e-05 1.8755468056056247e-06 0
		 -3.1427157306500233e-05 -0.99997765732120114 0.0066845995195034466 0 1.6655060550936802e-06 -0.0066845995751362011 -0.99997765781328651 0
		 -18.529900000000005 41.0428 0.088012400000000088 1;
	setAttr ".wm[12]" -type "matrix" 0.99999999950478002 -3.1415321914108207e-05 1.8755468056056247e-06 0
		 -3.1427157306500233e-05 -0.99997765732120114 0.0066845995195034466 0 1.6655060550936802e-06 -0.0066845995751362011 -0.99997765781328651 0
		 -29.088899224287214 41.040039335731493 -0.3746094681261028 1;
	setAttr ".wm[13]" -type "matrix" 0.99999999949335983 -3.1776624236886075e-05 1.877962020901132e-06 0
		 -3.1788467910330729e-05 -0.99997765647259118 0.0066847247570562445 0 1.6655020738732586e-06 -0.0066847248133670269 -0.99997765697609253 0
		 -37.042399998231204 41.037893322115394 -5.364433265002036e-06 1;
	setAttr ".wm[14]" -type "matrix" 0.99999999998115374 -2.3842324013838678e-06 -5.657557037978399e-06 0
		 2.3842324014255177e-06 0.99999999999715772 6.17407882568072e-13 0 5.657557037960846e-06 -1.4106338685417513e-11 0.99999999998399602 0
		 8.593 17.538000000000004 0 1;
	setAttr ".wm[15]" -type "matrix" 0.99999999998115374 -2.3842324013838678e-06 -5.657557037978399e-06 0
		 2.3842324014255177e-06 0.99999999999715772 6.17407882568072e-13 0 5.657557037960846e-06 -1.4106338685417513e-11 0.99999999998399602 0
		 8.5929804157034582 8.3202628021445157 0.25439546087013037 1;
	setAttr ".wm[16]" -type "matrix" 0.99999999998115374 -2.3842324013838678e-06 -5.657557037978399e-06 0
		 2.3842324014255177e-06 0.99999999999715772 6.17407882568072e-13 0 5.657557037960846e-06 -1.4106338685417513e-11 0.99999999998399602 0
		 8.5929588015650786 -0.17430576927641711 1.4004180926008295e-07 1;
	setAttr ".wm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 17.538000000000004 5.9604600000000031e-07 1;
	setAttr ".wm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 8.3203099999999992 0.25439600000000001 1;
	setAttr ".wm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5931999999999995 -0.17426200000000058 7.3609399997565116e-07 1;
	setAttr -s 20 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 5.5533422341927208e-15 -2.5895457263264853e-07
		 4.7045305934283852e-14 0 -8.0261456012024314e-13 0 1.7698691599473456e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.9657974252226185e-15 5.4932659367132361e-06
		 -4.346901516533997e-08 0 6.0130314044710985e-10 -1.4210854715202004e-14 -1.2714709114129003e-12 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -4.1191008937069292e-15 8.6736173798840374e-19
		 -1.3552527156070596e-20 0 -2.4424892777468051e-15 7.1054273576010019e-15 -4.5730238172614346e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 -5.2343113640805818e-06 4.3469015165933998e-08 0 -4.4406664700993013e-15
		 -5.6843418860808015e-14 -4.266031972122164e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.01639372091847649 -0.015524600637133195
		 -0.014163953412073731 0 0.00012919253303778078 0.25705809710556338 8.4634065999775188e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0.024487271757290787 0.00031548697606286976 0 3.5527136788005009e-15
		 3.5527136788005009e-14 3.6248781754011361e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.016268586423713382 -0.0092013235126670225
		 0.014101639343787822 0 0 7.1054273576010019e-14 2.7977620220553945e-14 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -0.0066846491386143812 7.1098581671118836e-06
		 3.137185290490326e-05 0 -1.0909584595708566e-06 8.0547651037932155e-07 9.6991269516191747e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5527136788005009e-15
		 1.0658141036401503e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -1.2524102910039572e-07 -3.1554436208840479e-30
		 3.6131039542204301e-07 0 -7.1054273576010019e-15 -8.5265128291212022e-14 -1.1657341758564144e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -6.1740788257795293e-13 5.916511610640492e-06
		 -2.3842324014278563e-06 0 -0.00019789091738608988 -4.3975830077869205e-05 -2.8212431051512121e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.5276668818842154e-13
		 5.6911142465310149e-12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5626389071599078e-13
		 5.2446380571780082e-12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 2.5895457263264853e-07 0 0 1.2470025012589758e-12
		 3.5527136788005009e-15 2.2252484158479311e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 1.0587911840678754e-22 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 20 ".m";
	setAttr -s 20 ".p";
	setAttr -s 20 ".g[0:19]" yes no no no no no no no no no no no no no 
		no no no no no no;
	setAttr ".bp" yes;
createNode geomBind -n "geomBind2";
	rename -uid "3DC083AB-4A36-0341-8DD7-5380ED7AAA82";
	setAttr ".mi" 3;
createNode skinCluster -n "skinCluster7";
	rename -uid "95683518-4E84-9F9D-914D-008C4D743E8A";
	setAttr -s 891 ".wl";
	setAttr ".wl[0:499].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr ".wl[500:890].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.0023419139524956116 0.99999725771575965 1.2246434408177355e-16 0
		 0.99999725771575965 0.0023419139524956116 2.8680174258022768e-19 0 2.4074124304840452e-34 1.2246467991473535e-16 -1 0
		 3.9340313999423276e-06 -0.0016798314077755983 -2.0572001566395783e-19 1;
	setAttr ".pm[1]" -type "matrix" -0.0023419139524956116 0.99999725771575965 1.2246434408177355e-16 0
		 0.99999725771575965 0.0023419139524956116 2.8680174258022768e-19 0 2.4074124304840452e-34 1.2246467991473535e-16 -1 0
		 3.9340313999423276e-06 -0.0016798314077755983 -2.0572001566395783e-19 1;
	setAttr ".gm" -type "matrix" 100 0 0 0 0 -1.6292067961387602e-05 -99.999999999998678 0
		 0 99.999999999998678 -1.6292067961387602e-05 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode dagPose -n "bindPose8";
	rename -uid "DFBA72E2-41C1-AB2E-AC07-D7A7A3764BE7";
	setAttr -s 3 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.0023419139524956112 0.99999725771575942 0 0 0.99999725771575942 0.0023419139524956112 1.224646799147353e-16 0
		 1.2246434408177358e-16 2.8680174258022797e-19 -1 0 0.0016798360143634268 0 0 1;
	setAttr ".wm[2]" -type "matrix" -0.0023419139524956112 0.99999725771575942 0 0 0.99999725771575942 0.0023419139524956112 1.224646799147353e-16 0
		 1.2246434408177358e-16 2.8680174258022797e-19 -1 0 0.0016798360143634268 0 0 1;
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0016798360143634268
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70627830422840554 0.70793428860046592 4.3348473027060961e-17 4.3247073229026869e-17 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr -s 3 ".g[0:2]" yes no no;
	setAttr ".bp" yes;
createNode geomBind -n "geomBind3";
	rename -uid "8F87DBC3-4379-9F77-B474-FAAD7FDD23BA";
	setAttr ".mi" 2;
createNode reference -n "sharedReferenceNode";
	rename -uid "1AE65D48-44A6-8935-C2E4-6982AD53CE6D";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
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
	setAttr -s 3 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "standardSurface1";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Player_modelRN.phl[4]" "skinCluster7.orggeom[0]";
connectAttr "Player_modelRN.phl[5]" "skinCluster7.ip[0].ig";
connectAttr "SaucerShapeDeformed.iog" "Player_modelRN.phl[6]";
connectAttr "Player_modelRN.phl[1]" "skinCluster6.orggeom[0]";
connectAttr "Player_modelRN.phl[2]" "skinCluster6.ip[0].ig";
connectAttr "OrionShapeDeformed.iog" "Player_modelRN.phl[3]";
connectAttr "bones.di" "skeleton.do";
connectAttr "root_parentConstraint1.ctx" "root_player.tx";
connectAttr "root_parentConstraint1.cty" "root_player.ty";
connectAttr "root_parentConstraint1.ctz" "root_player.tz";
connectAttr "root_parentConstraint1.crx" "root_player.rx";
connectAttr "root_parentConstraint1.cry" "root_player.ry";
connectAttr "root_parentConstraint1.crz" "root_player.rz";
connectAttr "root_player.s" "pelvis.is";
connectAttr "pelvis_parentConstraint1.ctx" "pelvis.tx";
connectAttr "pelvis_parentConstraint1.cty" "pelvis.ty";
connectAttr "pelvis_parentConstraint1.ctz" "pelvis.tz";
connectAttr "pelvis_parentConstraint1.crx" "pelvis.rx";
connectAttr "pelvis_parentConstraint1.cry" "pelvis.ry";
connectAttr "pelvis_parentConstraint1.crz" "pelvis.rz";
connectAttr "pelvis.s" "spine.is";
connectAttr "spine_parentConstraint1.ctx" "spine.tx";
connectAttr "spine_parentConstraint1.cty" "spine.ty";
connectAttr "spine_parentConstraint1.ctz" "spine.tz";
connectAttr "spine_parentConstraint1.crx" "spine.rx";
connectAttr "spine_parentConstraint1.cry" "spine.ry";
connectAttr "spine_parentConstraint1.crz" "spine.rz";
connectAttr "spine.s" "chest.is";
connectAttr "chest_parentConstraint1.ctx" "chest.tx";
connectAttr "chest_parentConstraint1.cty" "chest.ty";
connectAttr "chest_parentConstraint1.ctz" "chest.tz";
connectAttr "chest_parentConstraint1.crx" "chest.rx";
connectAttr "chest_parentConstraint1.cry" "chest.ry";
connectAttr "chest_parentConstraint1.crz" "chest.rz";
connectAttr "chest.s" "head.is";
connectAttr "head_parentConstraint1.crx" "head.rx";
connectAttr "head_parentConstraint1.cry" "head.ry";
connectAttr "head_parentConstraint1.crz" "head.rz";
connectAttr "head_parentConstraint1.ctx" "head.tx";
connectAttr "head_parentConstraint1.cty" "head.ty";
connectAttr "head_parentConstraint1.ctz" "head.tz";
connectAttr "head.s" "nose.is";
connectAttr "nose.s" "nose_tip.is";
connectAttr "head.ro" "head_parentConstraint1.cro";
connectAttr "head.pim" "head_parentConstraint1.cpim";
connectAttr "head.rp" "head_parentConstraint1.crp";
connectAttr "head.rpt" "head_parentConstraint1.crt";
connectAttr "head.jo" "head_parentConstraint1.cjo";
connectAttr "CTRL_head.t" "head_parentConstraint1.tg[0].tt";
connectAttr "CTRL_head.rp" "head_parentConstraint1.tg[0].trp";
connectAttr "CTRL_head.rpt" "head_parentConstraint1.tg[0].trt";
connectAttr "CTRL_head.r" "head_parentConstraint1.tg[0].tr";
connectAttr "CTRL_head.ro" "head_parentConstraint1.tg[0].tro";
connectAttr "CTRL_head.s" "head_parentConstraint1.tg[0].ts";
connectAttr "CTRL_head.pm" "head_parentConstraint1.tg[0].tpm";
connectAttr "head_parentConstraint1.w0" "head_parentConstraint1.tg[0].tw";
connectAttr "upperarm_l_parentConstraint1.crx" "upperarm_l.rx";
connectAttr "upperarm_l_parentConstraint1.cry" "upperarm_l.ry";
connectAttr "upperarm_l_parentConstraint1.crz" "upperarm_l.rz";
connectAttr "upperarm_l_parentConstraint1.ctx" "upperarm_l.tx";
connectAttr "upperarm_l_parentConstraint1.cty" "upperarm_l.ty";
connectAttr "upperarm_l_parentConstraint1.ctz" "upperarm_l.tz";
connectAttr "upperarm_l.s" "lowerarm_l.is";
connectAttr "lowerarm_l_parentConstraint1.ctx" "lowerarm_l.tx";
connectAttr "lowerarm_l_parentConstraint1.cty" "lowerarm_l.ty";
connectAttr "lowerarm_l_parentConstraint1.ctz" "lowerarm_l.tz";
connectAttr "lowerarm_l_parentConstraint1.crx" "lowerarm_l.rx";
connectAttr "lowerarm_l_parentConstraint1.cry" "lowerarm_l.ry";
connectAttr "lowerarm_l_parentConstraint1.crz" "lowerarm_l.rz";
connectAttr "lowerarm_l.s" "hand_l.is";
connectAttr "hand_l_parentConstraint1.ctx" "hand_l.tx";
connectAttr "hand_l_parentConstraint1.cty" "hand_l.ty";
connectAttr "hand_l_parentConstraint1.ctz" "hand_l.tz";
connectAttr "hand_l_parentConstraint1.crx" "hand_l.rx";
connectAttr "hand_l_parentConstraint1.cry" "hand_l.ry";
connectAttr "hand_l_parentConstraint1.crz" "hand_l.rz";
connectAttr "hand_l.ro" "hand_l_parentConstraint1.cro";
connectAttr "hand_l.pim" "hand_l_parentConstraint1.cpim";
connectAttr "hand_l.rp" "hand_l_parentConstraint1.crp";
connectAttr "hand_l.rpt" "hand_l_parentConstraint1.crt";
connectAttr "hand_l.jo" "hand_l_parentConstraint1.cjo";
connectAttr "hand_l_IK.t" "hand_l_parentConstraint1.tg[0].tt";
connectAttr "hand_l_IK.rp" "hand_l_parentConstraint1.tg[0].trp";
connectAttr "hand_l_IK.rpt" "hand_l_parentConstraint1.tg[0].trt";
connectAttr "hand_l_IK.r" "hand_l_parentConstraint1.tg[0].tr";
connectAttr "hand_l_IK.ro" "hand_l_parentConstraint1.tg[0].tro";
connectAttr "hand_l_IK.s" "hand_l_parentConstraint1.tg[0].ts";
connectAttr "hand_l_IK.pm" "hand_l_parentConstraint1.tg[0].tpm";
connectAttr "hand_l_IK.jo" "hand_l_parentConstraint1.tg[0].tjo";
connectAttr "hand_l_IK.ssc" "hand_l_parentConstraint1.tg[0].tsc";
connectAttr "hand_l_IK.is" "hand_l_parentConstraint1.tg[0].tis";
connectAttr "hand_l_parentConstraint1.w0" "hand_l_parentConstraint1.tg[0].tw";
connectAttr "hand_l_FK.t" "hand_l_parentConstraint1.tg[1].tt";
connectAttr "hand_l_FK.rp" "hand_l_parentConstraint1.tg[1].trp";
connectAttr "hand_l_FK.rpt" "hand_l_parentConstraint1.tg[1].trt";
connectAttr "hand_l_FK.r" "hand_l_parentConstraint1.tg[1].tr";
connectAttr "hand_l_FK.ro" "hand_l_parentConstraint1.tg[1].tro";
connectAttr "hand_l_FK.s" "hand_l_parentConstraint1.tg[1].ts";
connectAttr "hand_l_FK.pm" "hand_l_parentConstraint1.tg[1].tpm";
connectAttr "hand_l_FK.jo" "hand_l_parentConstraint1.tg[1].tjo";
connectAttr "hand_l_FK.ssc" "hand_l_parentConstraint1.tg[1].tsc";
connectAttr "hand_l_FK.is" "hand_l_parentConstraint1.tg[1].tis";
connectAttr "hand_l_parentConstraint1.w1" "hand_l_parentConstraint1.tg[1].tw";
connectAttr "reverse2.ox" "hand_l_parentConstraint1.w0";
connectAttr "CTRL_arm_l_IKFK.IKFK_Switch" "hand_l_parentConstraint1.w1";
connectAttr "lowerarm_l.ro" "lowerarm_l_parentConstraint1.cro";
connectAttr "lowerarm_l.pim" "lowerarm_l_parentConstraint1.cpim";
connectAttr "lowerarm_l.rp" "lowerarm_l_parentConstraint1.crp";
connectAttr "lowerarm_l.rpt" "lowerarm_l_parentConstraint1.crt";
connectAttr "lowerarm_l.jo" "lowerarm_l_parentConstraint1.cjo";
connectAttr "lowerarm_l_IK.t" "lowerarm_l_parentConstraint1.tg[0].tt";
connectAttr "lowerarm_l_IK.rp" "lowerarm_l_parentConstraint1.tg[0].trp";
connectAttr "lowerarm_l_IK.rpt" "lowerarm_l_parentConstraint1.tg[0].trt";
connectAttr "lowerarm_l_IK.r" "lowerarm_l_parentConstraint1.tg[0].tr";
connectAttr "lowerarm_l_IK.ro" "lowerarm_l_parentConstraint1.tg[0].tro";
connectAttr "lowerarm_l_IK.s" "lowerarm_l_parentConstraint1.tg[0].ts";
connectAttr "lowerarm_l_IK.pm" "lowerarm_l_parentConstraint1.tg[0].tpm";
connectAttr "lowerarm_l_IK.jo" "lowerarm_l_parentConstraint1.tg[0].tjo";
connectAttr "lowerarm_l_IK.ssc" "lowerarm_l_parentConstraint1.tg[0].tsc";
connectAttr "lowerarm_l_IK.is" "lowerarm_l_parentConstraint1.tg[0].tis";
connectAttr "lowerarm_l_parentConstraint1.w0" "lowerarm_l_parentConstraint1.tg[0].tw"
		;
connectAttr "lowerarm_l_FK.t" "lowerarm_l_parentConstraint1.tg[1].tt";
connectAttr "lowerarm_l_FK.rp" "lowerarm_l_parentConstraint1.tg[1].trp";
connectAttr "lowerarm_l_FK.rpt" "lowerarm_l_parentConstraint1.tg[1].trt";
connectAttr "lowerarm_l_FK.r" "lowerarm_l_parentConstraint1.tg[1].tr";
connectAttr "lowerarm_l_FK.ro" "lowerarm_l_parentConstraint1.tg[1].tro";
connectAttr "lowerarm_l_FK.s" "lowerarm_l_parentConstraint1.tg[1].ts";
connectAttr "lowerarm_l_FK.pm" "lowerarm_l_parentConstraint1.tg[1].tpm";
connectAttr "lowerarm_l_FK.jo" "lowerarm_l_parentConstraint1.tg[1].tjo";
connectAttr "lowerarm_l_FK.ssc" "lowerarm_l_parentConstraint1.tg[1].tsc";
connectAttr "lowerarm_l_FK.is" "lowerarm_l_parentConstraint1.tg[1].tis";
connectAttr "lowerarm_l_parentConstraint1.w1" "lowerarm_l_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse2.ox" "lowerarm_l_parentConstraint1.w0";
connectAttr "CTRL_arm_l_IKFK.IKFK_Switch" "lowerarm_l_parentConstraint1.w1";
connectAttr "upperarm_l.ro" "upperarm_l_parentConstraint1.cro";
connectAttr "upperarm_l.pim" "upperarm_l_parentConstraint1.cpim";
connectAttr "upperarm_l.rp" "upperarm_l_parentConstraint1.crp";
connectAttr "upperarm_l.rpt" "upperarm_l_parentConstraint1.crt";
connectAttr "upperarm_l.jo" "upperarm_l_parentConstraint1.cjo";
connectAttr "upperarm_l_IK.t" "upperarm_l_parentConstraint1.tg[0].tt";
connectAttr "upperarm_l_IK.rp" "upperarm_l_parentConstraint1.tg[0].trp";
connectAttr "upperarm_l_IK.rpt" "upperarm_l_parentConstraint1.tg[0].trt";
connectAttr "upperarm_l_IK.r" "upperarm_l_parentConstraint1.tg[0].tr";
connectAttr "upperarm_l_IK.ro" "upperarm_l_parentConstraint1.tg[0].tro";
connectAttr "upperarm_l_IK.s" "upperarm_l_parentConstraint1.tg[0].ts";
connectAttr "upperarm_l_IK.pm" "upperarm_l_parentConstraint1.tg[0].tpm";
connectAttr "upperarm_l_IK.jo" "upperarm_l_parentConstraint1.tg[0].tjo";
connectAttr "upperarm_l_IK.ssc" "upperarm_l_parentConstraint1.tg[0].tsc";
connectAttr "upperarm_l_IK.is" "upperarm_l_parentConstraint1.tg[0].tis";
connectAttr "upperarm_l_parentConstraint1.w0" "upperarm_l_parentConstraint1.tg[0].tw"
		;
connectAttr "upperarm_l_FK.t" "upperarm_l_parentConstraint1.tg[1].tt";
connectAttr "upperarm_l_FK.rp" "upperarm_l_parentConstraint1.tg[1].trp";
connectAttr "upperarm_l_FK.rpt" "upperarm_l_parentConstraint1.tg[1].trt";
connectAttr "upperarm_l_FK.r" "upperarm_l_parentConstraint1.tg[1].tr";
connectAttr "upperarm_l_FK.ro" "upperarm_l_parentConstraint1.tg[1].tro";
connectAttr "upperarm_l_FK.s" "upperarm_l_parentConstraint1.tg[1].ts";
connectAttr "upperarm_l_FK.pm" "upperarm_l_parentConstraint1.tg[1].tpm";
connectAttr "upperarm_l_FK.jo" "upperarm_l_parentConstraint1.tg[1].tjo";
connectAttr "upperarm_l_FK.ssc" "upperarm_l_parentConstraint1.tg[1].tsc";
connectAttr "upperarm_l_FK.is" "upperarm_l_parentConstraint1.tg[1].tis";
connectAttr "upperarm_l_parentConstraint1.w1" "upperarm_l_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse2.ox" "upperarm_l_parentConstraint1.w0";
connectAttr "CTRL_arm_l_IKFK.IKFK_Switch" "upperarm_l_parentConstraint1.w1";
connectAttr "upperarm_r_parentConstraint1.crx" "upperarm_r.rx";
connectAttr "upperarm_r_parentConstraint1.cry" "upperarm_r.ry";
connectAttr "upperarm_r_parentConstraint1.crz" "upperarm_r.rz";
connectAttr "upperarm_r_parentConstraint1.ctx" "upperarm_r.tx";
connectAttr "upperarm_r_parentConstraint1.cty" "upperarm_r.ty";
connectAttr "upperarm_r_parentConstraint1.ctz" "upperarm_r.tz";
connectAttr "upperarm_r.s" "lowerarm_r.is";
connectAttr "lowerarm_r_parentConstraint1.ctx" "lowerarm_r.tx";
connectAttr "lowerarm_r_parentConstraint1.cty" "lowerarm_r.ty";
connectAttr "lowerarm_r_parentConstraint1.ctz" "lowerarm_r.tz";
connectAttr "lowerarm_r_parentConstraint1.crx" "lowerarm_r.rx";
connectAttr "lowerarm_r_parentConstraint1.cry" "lowerarm_r.ry";
connectAttr "lowerarm_r_parentConstraint1.crz" "lowerarm_r.rz";
connectAttr "lowerarm_r.s" "hand_r.is";
connectAttr "hand_r_parentConstraint1.ctx" "hand_r.tx";
connectAttr "hand_r_parentConstraint1.cty" "hand_r.ty";
connectAttr "hand_r_parentConstraint1.ctz" "hand_r.tz";
connectAttr "hand_r_parentConstraint1.crx" "hand_r.rx";
connectAttr "hand_r_parentConstraint1.cry" "hand_r.ry";
connectAttr "hand_r_parentConstraint1.crz" "hand_r.rz";
connectAttr "hand_r.ro" "hand_r_parentConstraint1.cro";
connectAttr "hand_r.pim" "hand_r_parentConstraint1.cpim";
connectAttr "hand_r.rp" "hand_r_parentConstraint1.crp";
connectAttr "hand_r.rpt" "hand_r_parentConstraint1.crt";
connectAttr "hand_r.jo" "hand_r_parentConstraint1.cjo";
connectAttr "hand_r_IK.t" "hand_r_parentConstraint1.tg[0].tt";
connectAttr "hand_r_IK.rp" "hand_r_parentConstraint1.tg[0].trp";
connectAttr "hand_r_IK.rpt" "hand_r_parentConstraint1.tg[0].trt";
connectAttr "hand_r_IK.r" "hand_r_parentConstraint1.tg[0].tr";
connectAttr "hand_r_IK.ro" "hand_r_parentConstraint1.tg[0].tro";
connectAttr "hand_r_IK.s" "hand_r_parentConstraint1.tg[0].ts";
connectAttr "hand_r_IK.pm" "hand_r_parentConstraint1.tg[0].tpm";
connectAttr "hand_r_IK.jo" "hand_r_parentConstraint1.tg[0].tjo";
connectAttr "hand_r_IK.ssc" "hand_r_parentConstraint1.tg[0].tsc";
connectAttr "hand_r_IK.is" "hand_r_parentConstraint1.tg[0].tis";
connectAttr "hand_r_parentConstraint1.w0" "hand_r_parentConstraint1.tg[0].tw";
connectAttr "hand_r_FK.t" "hand_r_parentConstraint1.tg[1].tt";
connectAttr "hand_r_FK.rp" "hand_r_parentConstraint1.tg[1].trp";
connectAttr "hand_r_FK.rpt" "hand_r_parentConstraint1.tg[1].trt";
connectAttr "hand_r_FK.r" "hand_r_parentConstraint1.tg[1].tr";
connectAttr "hand_r_FK.ro" "hand_r_parentConstraint1.tg[1].tro";
connectAttr "hand_r_FK.s" "hand_r_parentConstraint1.tg[1].ts";
connectAttr "hand_r_FK.pm" "hand_r_parentConstraint1.tg[1].tpm";
connectAttr "hand_r_FK.jo" "hand_r_parentConstraint1.tg[1].tjo";
connectAttr "hand_r_FK.ssc" "hand_r_parentConstraint1.tg[1].tsc";
connectAttr "hand_r_FK.is" "hand_r_parentConstraint1.tg[1].tis";
connectAttr "hand_r_parentConstraint1.w1" "hand_r_parentConstraint1.tg[1].tw";
connectAttr "reverse4.ox" "hand_r_parentConstraint1.w0";
connectAttr "CTRL_arm_r_IKFK.IKFK_Switch" "hand_r_parentConstraint1.w1";
connectAttr "lowerarm_r.ro" "lowerarm_r_parentConstraint1.cro";
connectAttr "lowerarm_r.pim" "lowerarm_r_parentConstraint1.cpim";
connectAttr "lowerarm_r.rp" "lowerarm_r_parentConstraint1.crp";
connectAttr "lowerarm_r.rpt" "lowerarm_r_parentConstraint1.crt";
connectAttr "lowerarm_r.jo" "lowerarm_r_parentConstraint1.cjo";
connectAttr "lowerarm_r_IK.t" "lowerarm_r_parentConstraint1.tg[0].tt";
connectAttr "lowerarm_r_IK.rp" "lowerarm_r_parentConstraint1.tg[0].trp";
connectAttr "lowerarm_r_IK.rpt" "lowerarm_r_parentConstraint1.tg[0].trt";
connectAttr "lowerarm_r_IK.r" "lowerarm_r_parentConstraint1.tg[0].tr";
connectAttr "lowerarm_r_IK.ro" "lowerarm_r_parentConstraint1.tg[0].tro";
connectAttr "lowerarm_r_IK.s" "lowerarm_r_parentConstraint1.tg[0].ts";
connectAttr "lowerarm_r_IK.pm" "lowerarm_r_parentConstraint1.tg[0].tpm";
connectAttr "lowerarm_r_IK.jo" "lowerarm_r_parentConstraint1.tg[0].tjo";
connectAttr "lowerarm_r_IK.ssc" "lowerarm_r_parentConstraint1.tg[0].tsc";
connectAttr "lowerarm_r_IK.is" "lowerarm_r_parentConstraint1.tg[0].tis";
connectAttr "lowerarm_r_parentConstraint1.w0" "lowerarm_r_parentConstraint1.tg[0].tw"
		;
connectAttr "lowerarm_r_FK.t" "lowerarm_r_parentConstraint1.tg[1].tt";
connectAttr "lowerarm_r_FK.rp" "lowerarm_r_parentConstraint1.tg[1].trp";
connectAttr "lowerarm_r_FK.rpt" "lowerarm_r_parentConstraint1.tg[1].trt";
connectAttr "lowerarm_r_FK.r" "lowerarm_r_parentConstraint1.tg[1].tr";
connectAttr "lowerarm_r_FK.ro" "lowerarm_r_parentConstraint1.tg[1].tro";
connectAttr "lowerarm_r_FK.s" "lowerarm_r_parentConstraint1.tg[1].ts";
connectAttr "lowerarm_r_FK.pm" "lowerarm_r_parentConstraint1.tg[1].tpm";
connectAttr "lowerarm_r_FK.jo" "lowerarm_r_parentConstraint1.tg[1].tjo";
connectAttr "lowerarm_r_FK.ssc" "lowerarm_r_parentConstraint1.tg[1].tsc";
connectAttr "lowerarm_r_FK.is" "lowerarm_r_parentConstraint1.tg[1].tis";
connectAttr "lowerarm_r_parentConstraint1.w1" "lowerarm_r_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse4.ox" "lowerarm_r_parentConstraint1.w0";
connectAttr "CTRL_arm_r_IKFK.IKFK_Switch" "lowerarm_r_parentConstraint1.w1";
connectAttr "upperarm_r.ro" "upperarm_r_parentConstraint1.cro";
connectAttr "upperarm_r.pim" "upperarm_r_parentConstraint1.cpim";
connectAttr "upperarm_r.rp" "upperarm_r_parentConstraint1.crp";
connectAttr "upperarm_r.rpt" "upperarm_r_parentConstraint1.crt";
connectAttr "upperarm_r.jo" "upperarm_r_parentConstraint1.cjo";
connectAttr "upperarm_r_IK.t" "upperarm_r_parentConstraint1.tg[0].tt";
connectAttr "upperarm_r_IK.rp" "upperarm_r_parentConstraint1.tg[0].trp";
connectAttr "upperarm_r_IK.rpt" "upperarm_r_parentConstraint1.tg[0].trt";
connectAttr "upperarm_r_IK.r" "upperarm_r_parentConstraint1.tg[0].tr";
connectAttr "upperarm_r_IK.ro" "upperarm_r_parentConstraint1.tg[0].tro";
connectAttr "upperarm_r_IK.s" "upperarm_r_parentConstraint1.tg[0].ts";
connectAttr "upperarm_r_IK.pm" "upperarm_r_parentConstraint1.tg[0].tpm";
connectAttr "upperarm_r_IK.jo" "upperarm_r_parentConstraint1.tg[0].tjo";
connectAttr "upperarm_r_IK.ssc" "upperarm_r_parentConstraint1.tg[0].tsc";
connectAttr "upperarm_r_IK.is" "upperarm_r_parentConstraint1.tg[0].tis";
connectAttr "upperarm_r_parentConstraint1.w0" "upperarm_r_parentConstraint1.tg[0].tw"
		;
connectAttr "upperarm_r_FK.t" "upperarm_r_parentConstraint1.tg[1].tt";
connectAttr "upperarm_r_FK.rp" "upperarm_r_parentConstraint1.tg[1].trp";
connectAttr "upperarm_r_FK.rpt" "upperarm_r_parentConstraint1.tg[1].trt";
connectAttr "upperarm_r_FK.r" "upperarm_r_parentConstraint1.tg[1].tr";
connectAttr "upperarm_r_FK.ro" "upperarm_r_parentConstraint1.tg[1].tro";
connectAttr "upperarm_r_FK.s" "upperarm_r_parentConstraint1.tg[1].ts";
connectAttr "upperarm_r_FK.pm" "upperarm_r_parentConstraint1.tg[1].tpm";
connectAttr "upperarm_r_FK.jo" "upperarm_r_parentConstraint1.tg[1].tjo";
connectAttr "upperarm_r_FK.ssc" "upperarm_r_parentConstraint1.tg[1].tsc";
connectAttr "upperarm_r_FK.is" "upperarm_r_parentConstraint1.tg[1].tis";
connectAttr "upperarm_r_parentConstraint1.w1" "upperarm_r_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse4.ox" "upperarm_r_parentConstraint1.w0";
connectAttr "CTRL_arm_r_IKFK.IKFK_Switch" "upperarm_r_parentConstraint1.w1";
connectAttr "chest.ro" "chest_parentConstraint1.cro";
connectAttr "chest.pim" "chest_parentConstraint1.cpim";
connectAttr "chest.rp" "chest_parentConstraint1.crp";
connectAttr "chest.rpt" "chest_parentConstraint1.crt";
connectAttr "chest.jo" "chest_parentConstraint1.cjo";
connectAttr "chest_IK.t" "chest_parentConstraint1.tg[0].tt";
connectAttr "chest_IK.rp" "chest_parentConstraint1.tg[0].trp";
connectAttr "chest_IK.rpt" "chest_parentConstraint1.tg[0].trt";
connectAttr "chest_IK.r" "chest_parentConstraint1.tg[0].tr";
connectAttr "chest_IK.ro" "chest_parentConstraint1.tg[0].tro";
connectAttr "chest_IK.s" "chest_parentConstraint1.tg[0].ts";
connectAttr "chest_IK.pm" "chest_parentConstraint1.tg[0].tpm";
connectAttr "chest_IK.jo" "chest_parentConstraint1.tg[0].tjo";
connectAttr "chest_IK.ssc" "chest_parentConstraint1.tg[0].tsc";
connectAttr "chest_IK.is" "chest_parentConstraint1.tg[0].tis";
connectAttr "chest_parentConstraint1.w0" "chest_parentConstraint1.tg[0].tw";
connectAttr "chest_FK.t" "chest_parentConstraint1.tg[1].tt";
connectAttr "chest_FK.rp" "chest_parentConstraint1.tg[1].trp";
connectAttr "chest_FK.rpt" "chest_parentConstraint1.tg[1].trt";
connectAttr "chest_FK.r" "chest_parentConstraint1.tg[1].tr";
connectAttr "chest_FK.ro" "chest_parentConstraint1.tg[1].tro";
connectAttr "chest_FK.s" "chest_parentConstraint1.tg[1].ts";
connectAttr "chest_FK.pm" "chest_parentConstraint1.tg[1].tpm";
connectAttr "chest_FK.jo" "chest_parentConstraint1.tg[1].tjo";
connectAttr "chest_FK.ssc" "chest_parentConstraint1.tg[1].tsc";
connectAttr "chest_FK.is" "chest_parentConstraint1.tg[1].tis";
connectAttr "chest_parentConstraint1.w1" "chest_parentConstraint1.tg[1].tw";
connectAttr "reverse3.ox" "chest_parentConstraint1.w0";
connectAttr "CTRL_cog.IKFK_Switch" "chest_parentConstraint1.w1";
connectAttr "spine.ro" "spine_parentConstraint1.cro";
connectAttr "spine.pim" "spine_parentConstraint1.cpim";
connectAttr "spine.rp" "spine_parentConstraint1.crp";
connectAttr "spine.rpt" "spine_parentConstraint1.crt";
connectAttr "spine.jo" "spine_parentConstraint1.cjo";
connectAttr "spine_IK.t" "spine_parentConstraint1.tg[0].tt";
connectAttr "spine_IK.rp" "spine_parentConstraint1.tg[0].trp";
connectAttr "spine_IK.rpt" "spine_parentConstraint1.tg[0].trt";
connectAttr "spine_IK.r" "spine_parentConstraint1.tg[0].tr";
connectAttr "spine_IK.ro" "spine_parentConstraint1.tg[0].tro";
connectAttr "spine_IK.s" "spine_parentConstraint1.tg[0].ts";
connectAttr "spine_IK.pm" "spine_parentConstraint1.tg[0].tpm";
connectAttr "spine_IK.jo" "spine_parentConstraint1.tg[0].tjo";
connectAttr "spine_IK.ssc" "spine_parentConstraint1.tg[0].tsc";
connectAttr "spine_IK.is" "spine_parentConstraint1.tg[0].tis";
connectAttr "spine_parentConstraint1.w0" "spine_parentConstraint1.tg[0].tw";
connectAttr "spine_FK.t" "spine_parentConstraint1.tg[1].tt";
connectAttr "spine_FK.rp" "spine_parentConstraint1.tg[1].trp";
connectAttr "spine_FK.rpt" "spine_parentConstraint1.tg[1].trt";
connectAttr "spine_FK.r" "spine_parentConstraint1.tg[1].tr";
connectAttr "spine_FK.ro" "spine_parentConstraint1.tg[1].tro";
connectAttr "spine_FK.s" "spine_parentConstraint1.tg[1].ts";
connectAttr "spine_FK.pm" "spine_parentConstraint1.tg[1].tpm";
connectAttr "spine_FK.jo" "spine_parentConstraint1.tg[1].tjo";
connectAttr "spine_FK.ssc" "spine_parentConstraint1.tg[1].tsc";
connectAttr "spine_FK.is" "spine_parentConstraint1.tg[1].tis";
connectAttr "spine_parentConstraint1.w1" "spine_parentConstraint1.tg[1].tw";
connectAttr "reverse3.ox" "spine_parentConstraint1.w0";
connectAttr "CTRL_cog.IKFK_Switch" "spine_parentConstraint1.w1";
connectAttr "pelvis.s" "thigh_l.is";
connectAttr "thigh_l_parentConstraint1.ctx" "thigh_l.tx";
connectAttr "thigh_l_parentConstraint1.cty" "thigh_l.ty";
connectAttr "thigh_l_parentConstraint1.ctz" "thigh_l.tz";
connectAttr "thigh_l_parentConstraint1.crx" "thigh_l.rx";
connectAttr "thigh_l_parentConstraint1.cry" "thigh_l.ry";
connectAttr "thigh_l_parentConstraint1.crz" "thigh_l.rz";
connectAttr "thigh_l.s" "calf_l.is";
connectAttr "calf_l_parentConstraint1.ctx" "calf_l.tx";
connectAttr "calf_l_parentConstraint1.cty" "calf_l.ty";
connectAttr "calf_l_parentConstraint1.ctz" "calf_l.tz";
connectAttr "calf_l_parentConstraint1.crx" "calf_l.rx";
connectAttr "calf_l_parentConstraint1.cry" "calf_l.ry";
connectAttr "calf_l_parentConstraint1.crz" "calf_l.rz";
connectAttr "calf_l.s" "foot_l.is";
connectAttr "foot_l_parentConstraint1.ctx" "foot_l.tx";
connectAttr "foot_l_parentConstraint1.cty" "foot_l.ty";
connectAttr "foot_l_parentConstraint1.ctz" "foot_l.tz";
connectAttr "foot_l_parentConstraint1.crx" "foot_l.rx";
connectAttr "foot_l_parentConstraint1.cry" "foot_l.ry";
connectAttr "foot_l_parentConstraint1.crz" "foot_l.rz";
connectAttr "foot_l.ro" "foot_l_parentConstraint1.cro";
connectAttr "foot_l.pim" "foot_l_parentConstraint1.cpim";
connectAttr "foot_l.rp" "foot_l_parentConstraint1.crp";
connectAttr "foot_l.rpt" "foot_l_parentConstraint1.crt";
connectAttr "foot_l.jo" "foot_l_parentConstraint1.cjo";
connectAttr "foot_l_IK.t" "foot_l_parentConstraint1.tg[0].tt";
connectAttr "foot_l_IK.rp" "foot_l_parentConstraint1.tg[0].trp";
connectAttr "foot_l_IK.rpt" "foot_l_parentConstraint1.tg[0].trt";
connectAttr "foot_l_IK.r" "foot_l_parentConstraint1.tg[0].tr";
connectAttr "foot_l_IK.ro" "foot_l_parentConstraint1.tg[0].tro";
connectAttr "foot_l_IK.s" "foot_l_parentConstraint1.tg[0].ts";
connectAttr "foot_l_IK.pm" "foot_l_parentConstraint1.tg[0].tpm";
connectAttr "foot_l_IK.jo" "foot_l_parentConstraint1.tg[0].tjo";
connectAttr "foot_l_IK.ssc" "foot_l_parentConstraint1.tg[0].tsc";
connectAttr "foot_l_IK.is" "foot_l_parentConstraint1.tg[0].tis";
connectAttr "foot_l_parentConstraint1.w0" "foot_l_parentConstraint1.tg[0].tw";
connectAttr "foot_l_FK.t" "foot_l_parentConstraint1.tg[1].tt";
connectAttr "foot_l_FK.rp" "foot_l_parentConstraint1.tg[1].trp";
connectAttr "foot_l_FK.rpt" "foot_l_parentConstraint1.tg[1].trt";
connectAttr "foot_l_FK.r" "foot_l_parentConstraint1.tg[1].tr";
connectAttr "foot_l_FK.ro" "foot_l_parentConstraint1.tg[1].tro";
connectAttr "foot_l_FK.s" "foot_l_parentConstraint1.tg[1].ts";
connectAttr "foot_l_FK.pm" "foot_l_parentConstraint1.tg[1].tpm";
connectAttr "foot_l_FK.jo" "foot_l_parentConstraint1.tg[1].tjo";
connectAttr "foot_l_FK.ssc" "foot_l_parentConstraint1.tg[1].tsc";
connectAttr "foot_l_FK.is" "foot_l_parentConstraint1.tg[1].tis";
connectAttr "foot_l_parentConstraint1.w1" "foot_l_parentConstraint1.tg[1].tw";
connectAttr "reverse1.ox" "foot_l_parentConstraint1.w0";
connectAttr "CTRL_leg_l_IKFK.IKFK_Switch" "foot_l_parentConstraint1.w1";
connectAttr "calf_l.ro" "calf_l_parentConstraint1.cro";
connectAttr "calf_l.pim" "calf_l_parentConstraint1.cpim";
connectAttr "calf_l.rp" "calf_l_parentConstraint1.crp";
connectAttr "calf_l.rpt" "calf_l_parentConstraint1.crt";
connectAttr "calf_l.jo" "calf_l_parentConstraint1.cjo";
connectAttr "calf_l_IK.t" "calf_l_parentConstraint1.tg[0].tt";
connectAttr "calf_l_IK.rp" "calf_l_parentConstraint1.tg[0].trp";
connectAttr "calf_l_IK.rpt" "calf_l_parentConstraint1.tg[0].trt";
connectAttr "calf_l_IK.r" "calf_l_parentConstraint1.tg[0].tr";
connectAttr "calf_l_IK.ro" "calf_l_parentConstraint1.tg[0].tro";
connectAttr "calf_l_IK.s" "calf_l_parentConstraint1.tg[0].ts";
connectAttr "calf_l_IK.pm" "calf_l_parentConstraint1.tg[0].tpm";
connectAttr "calf_l_IK.jo" "calf_l_parentConstraint1.tg[0].tjo";
connectAttr "calf_l_IK.ssc" "calf_l_parentConstraint1.tg[0].tsc";
connectAttr "calf_l_IK.is" "calf_l_parentConstraint1.tg[0].tis";
connectAttr "calf_l_parentConstraint1.w0" "calf_l_parentConstraint1.tg[0].tw";
connectAttr "calf_l_FK.t" "calf_l_parentConstraint1.tg[1].tt";
connectAttr "calf_l_FK.rp" "calf_l_parentConstraint1.tg[1].trp";
connectAttr "calf_l_FK.rpt" "calf_l_parentConstraint1.tg[1].trt";
connectAttr "calf_l_FK.r" "calf_l_parentConstraint1.tg[1].tr";
connectAttr "calf_l_FK.ro" "calf_l_parentConstraint1.tg[1].tro";
connectAttr "calf_l_FK.s" "calf_l_parentConstraint1.tg[1].ts";
connectAttr "calf_l_FK.pm" "calf_l_parentConstraint1.tg[1].tpm";
connectAttr "calf_l_FK.jo" "calf_l_parentConstraint1.tg[1].tjo";
connectAttr "calf_l_FK.ssc" "calf_l_parentConstraint1.tg[1].tsc";
connectAttr "calf_l_FK.is" "calf_l_parentConstraint1.tg[1].tis";
connectAttr "calf_l_parentConstraint1.w1" "calf_l_parentConstraint1.tg[1].tw";
connectAttr "reverse1.ox" "calf_l_parentConstraint1.w0";
connectAttr "CTRL_leg_l_IKFK.IKFK_Switch" "calf_l_parentConstraint1.w1";
connectAttr "thigh_l.ro" "thigh_l_parentConstraint1.cro";
connectAttr "thigh_l.pim" "thigh_l_parentConstraint1.cpim";
connectAttr "thigh_l.rp" "thigh_l_parentConstraint1.crp";
connectAttr "thigh_l.rpt" "thigh_l_parentConstraint1.crt";
connectAttr "thigh_l.jo" "thigh_l_parentConstraint1.cjo";
connectAttr "thigh_l_IK.t" "thigh_l_parentConstraint1.tg[0].tt";
connectAttr "thigh_l_IK.rp" "thigh_l_parentConstraint1.tg[0].trp";
connectAttr "thigh_l_IK.rpt" "thigh_l_parentConstraint1.tg[0].trt";
connectAttr "thigh_l_IK.r" "thigh_l_parentConstraint1.tg[0].tr";
connectAttr "thigh_l_IK.ro" "thigh_l_parentConstraint1.tg[0].tro";
connectAttr "thigh_l_IK.s" "thigh_l_parentConstraint1.tg[0].ts";
connectAttr "thigh_l_IK.pm" "thigh_l_parentConstraint1.tg[0].tpm";
connectAttr "thigh_l_IK.jo" "thigh_l_parentConstraint1.tg[0].tjo";
connectAttr "thigh_l_IK.ssc" "thigh_l_parentConstraint1.tg[0].tsc";
connectAttr "thigh_l_IK.is" "thigh_l_parentConstraint1.tg[0].tis";
connectAttr "thigh_l_parentConstraint1.w0" "thigh_l_parentConstraint1.tg[0].tw";
connectAttr "thigh_l_FK.t" "thigh_l_parentConstraint1.tg[1].tt";
connectAttr "thigh_l_FK.rp" "thigh_l_parentConstraint1.tg[1].trp";
connectAttr "thigh_l_FK.rpt" "thigh_l_parentConstraint1.tg[1].trt";
connectAttr "thigh_l_FK.r" "thigh_l_parentConstraint1.tg[1].tr";
connectAttr "thigh_l_FK.ro" "thigh_l_parentConstraint1.tg[1].tro";
connectAttr "thigh_l_FK.s" "thigh_l_parentConstraint1.tg[1].ts";
connectAttr "thigh_l_FK.pm" "thigh_l_parentConstraint1.tg[1].tpm";
connectAttr "thigh_l_FK.jo" "thigh_l_parentConstraint1.tg[1].tjo";
connectAttr "thigh_l_FK.ssc" "thigh_l_parentConstraint1.tg[1].tsc";
connectAttr "thigh_l_FK.is" "thigh_l_parentConstraint1.tg[1].tis";
connectAttr "thigh_l_parentConstraint1.w1" "thigh_l_parentConstraint1.tg[1].tw";
connectAttr "reverse1.ox" "thigh_l_parentConstraint1.w0";
connectAttr "CTRL_leg_l_IKFK.IKFK_Switch" "thigh_l_parentConstraint1.w1";
connectAttr "pelvis.s" "thigh_r.is";
connectAttr "thigh_r_parentConstraint1.ctx" "thigh_r.tx";
connectAttr "thigh_r_parentConstraint1.cty" "thigh_r.ty";
connectAttr "thigh_r_parentConstraint1.ctz" "thigh_r.tz";
connectAttr "thigh_r_parentConstraint1.crx" "thigh_r.rx";
connectAttr "thigh_r_parentConstraint1.cry" "thigh_r.ry";
connectAttr "thigh_r_parentConstraint1.crz" "thigh_r.rz";
connectAttr "thigh_r.s" "calf_r.is";
connectAttr "calf_r_parentConstraint1.ctx" "calf_r.tx";
connectAttr "calf_r_parentConstraint1.cty" "calf_r.ty";
connectAttr "calf_r_parentConstraint1.ctz" "calf_r.tz";
connectAttr "calf_r_parentConstraint1.crx" "calf_r.rx";
connectAttr "calf_r_parentConstraint1.cry" "calf_r.ry";
connectAttr "calf_r_parentConstraint1.crz" "calf_r.rz";
connectAttr "calf_r.s" "foot_r.is";
connectAttr "foot_r_parentConstraint1.ctx" "foot_r.tx";
connectAttr "foot_r_parentConstraint1.cty" "foot_r.ty";
connectAttr "foot_r_parentConstraint1.ctz" "foot_r.tz";
connectAttr "foot_r_parentConstraint1.crx" "foot_r.rx";
connectAttr "foot_r_parentConstraint1.cry" "foot_r.ry";
connectAttr "foot_r_parentConstraint1.crz" "foot_r.rz";
connectAttr "foot_r.ro" "foot_r_parentConstraint1.cro";
connectAttr "foot_r.pim" "foot_r_parentConstraint1.cpim";
connectAttr "foot_r.rp" "foot_r_parentConstraint1.crp";
connectAttr "foot_r.rpt" "foot_r_parentConstraint1.crt";
connectAttr "foot_r.jo" "foot_r_parentConstraint1.cjo";
connectAttr "foot_r_IK.t" "foot_r_parentConstraint1.tg[0].tt";
connectAttr "foot_r_IK.rp" "foot_r_parentConstraint1.tg[0].trp";
connectAttr "foot_r_IK.rpt" "foot_r_parentConstraint1.tg[0].trt";
connectAttr "foot_r_IK.r" "foot_r_parentConstraint1.tg[0].tr";
connectAttr "foot_r_IK.ro" "foot_r_parentConstraint1.tg[0].tro";
connectAttr "foot_r_IK.s" "foot_r_parentConstraint1.tg[0].ts";
connectAttr "foot_r_IK.pm" "foot_r_parentConstraint1.tg[0].tpm";
connectAttr "foot_r_IK.jo" "foot_r_parentConstraint1.tg[0].tjo";
connectAttr "foot_r_IK.ssc" "foot_r_parentConstraint1.tg[0].tsc";
connectAttr "foot_r_IK.is" "foot_r_parentConstraint1.tg[0].tis";
connectAttr "foot_r_parentConstraint1.w0" "foot_r_parentConstraint1.tg[0].tw";
connectAttr "foot_r_FK.t" "foot_r_parentConstraint1.tg[1].tt";
connectAttr "foot_r_FK.rp" "foot_r_parentConstraint1.tg[1].trp";
connectAttr "foot_r_FK.rpt" "foot_r_parentConstraint1.tg[1].trt";
connectAttr "foot_r_FK.r" "foot_r_parentConstraint1.tg[1].tr";
connectAttr "foot_r_FK.ro" "foot_r_parentConstraint1.tg[1].tro";
connectAttr "foot_r_FK.s" "foot_r_parentConstraint1.tg[1].ts";
connectAttr "foot_r_FK.pm" "foot_r_parentConstraint1.tg[1].tpm";
connectAttr "foot_r_FK.jo" "foot_r_parentConstraint1.tg[1].tjo";
connectAttr "foot_r_FK.ssc" "foot_r_parentConstraint1.tg[1].tsc";
connectAttr "foot_r_FK.is" "foot_r_parentConstraint1.tg[1].tis";
connectAttr "foot_r_parentConstraint1.w1" "foot_r_parentConstraint1.tg[1].tw";
connectAttr "reverse5.ox" "foot_r_parentConstraint1.w0";
connectAttr "CTRL_leg_r_IKFK.IKFK_Switch" "foot_r_parentConstraint1.w1";
connectAttr "calf_r.ro" "calf_r_parentConstraint1.cro";
connectAttr "calf_r.pim" "calf_r_parentConstraint1.cpim";
connectAttr "calf_r.rp" "calf_r_parentConstraint1.crp";
connectAttr "calf_r.rpt" "calf_r_parentConstraint1.crt";
connectAttr "calf_r.jo" "calf_r_parentConstraint1.cjo";
connectAttr "calf_r_IK.t" "calf_r_parentConstraint1.tg[0].tt";
connectAttr "calf_r_IK.rp" "calf_r_parentConstraint1.tg[0].trp";
connectAttr "calf_r_IK.rpt" "calf_r_parentConstraint1.tg[0].trt";
connectAttr "calf_r_IK.r" "calf_r_parentConstraint1.tg[0].tr";
connectAttr "calf_r_IK.ro" "calf_r_parentConstraint1.tg[0].tro";
connectAttr "calf_r_IK.s" "calf_r_parentConstraint1.tg[0].ts";
connectAttr "calf_r_IK.pm" "calf_r_parentConstraint1.tg[0].tpm";
connectAttr "calf_r_IK.jo" "calf_r_parentConstraint1.tg[0].tjo";
connectAttr "calf_r_IK.ssc" "calf_r_parentConstraint1.tg[0].tsc";
connectAttr "calf_r_IK.is" "calf_r_parentConstraint1.tg[0].tis";
connectAttr "calf_r_parentConstraint1.w0" "calf_r_parentConstraint1.tg[0].tw";
connectAttr "calf_r_FK.t" "calf_r_parentConstraint1.tg[1].tt";
connectAttr "calf_r_FK.rp" "calf_r_parentConstraint1.tg[1].trp";
connectAttr "calf_r_FK.rpt" "calf_r_parentConstraint1.tg[1].trt";
connectAttr "calf_r_FK.r" "calf_r_parentConstraint1.tg[1].tr";
connectAttr "calf_r_FK.ro" "calf_r_parentConstraint1.tg[1].tro";
connectAttr "calf_r_FK.s" "calf_r_parentConstraint1.tg[1].ts";
connectAttr "calf_r_FK.pm" "calf_r_parentConstraint1.tg[1].tpm";
connectAttr "calf_r_FK.jo" "calf_r_parentConstraint1.tg[1].tjo";
connectAttr "calf_r_FK.ssc" "calf_r_parentConstraint1.tg[1].tsc";
connectAttr "calf_r_FK.is" "calf_r_parentConstraint1.tg[1].tis";
connectAttr "calf_r_parentConstraint1.w1" "calf_r_parentConstraint1.tg[1].tw";
connectAttr "reverse5.ox" "calf_r_parentConstraint1.w0";
connectAttr "CTRL_leg_r_IKFK.IKFK_Switch" "calf_r_parentConstraint1.w1";
connectAttr "thigh_r.ro" "thigh_r_parentConstraint1.cro";
connectAttr "thigh_r.pim" "thigh_r_parentConstraint1.cpim";
connectAttr "thigh_r.rp" "thigh_r_parentConstraint1.crp";
connectAttr "thigh_r.rpt" "thigh_r_parentConstraint1.crt";
connectAttr "thigh_r.jo" "thigh_r_parentConstraint1.cjo";
connectAttr "thigh_r_IK.t" "thigh_r_parentConstraint1.tg[0].tt";
connectAttr "thigh_r_IK.rp" "thigh_r_parentConstraint1.tg[0].trp";
connectAttr "thigh_r_IK.rpt" "thigh_r_parentConstraint1.tg[0].trt";
connectAttr "thigh_r_IK.r" "thigh_r_parentConstraint1.tg[0].tr";
connectAttr "thigh_r_IK.ro" "thigh_r_parentConstraint1.tg[0].tro";
connectAttr "thigh_r_IK.s" "thigh_r_parentConstraint1.tg[0].ts";
connectAttr "thigh_r_IK.pm" "thigh_r_parentConstraint1.tg[0].tpm";
connectAttr "thigh_r_IK.jo" "thigh_r_parentConstraint1.tg[0].tjo";
connectAttr "thigh_r_IK.ssc" "thigh_r_parentConstraint1.tg[0].tsc";
connectAttr "thigh_r_IK.is" "thigh_r_parentConstraint1.tg[0].tis";
connectAttr "thigh_r_parentConstraint1.w0" "thigh_r_parentConstraint1.tg[0].tw";
connectAttr "thigh_r_FK.t" "thigh_r_parentConstraint1.tg[1].tt";
connectAttr "thigh_r_FK.rp" "thigh_r_parentConstraint1.tg[1].trp";
connectAttr "thigh_r_FK.rpt" "thigh_r_parentConstraint1.tg[1].trt";
connectAttr "thigh_r_FK.r" "thigh_r_parentConstraint1.tg[1].tr";
connectAttr "thigh_r_FK.ro" "thigh_r_parentConstraint1.tg[1].tro";
connectAttr "thigh_r_FK.s" "thigh_r_parentConstraint1.tg[1].ts";
connectAttr "thigh_r_FK.pm" "thigh_r_parentConstraint1.tg[1].tpm";
connectAttr "thigh_r_FK.jo" "thigh_r_parentConstraint1.tg[1].tjo";
connectAttr "thigh_r_FK.ssc" "thigh_r_parentConstraint1.tg[1].tsc";
connectAttr "thigh_r_FK.is" "thigh_r_parentConstraint1.tg[1].tis";
connectAttr "thigh_r_parentConstraint1.w1" "thigh_r_parentConstraint1.tg[1].tw";
connectAttr "reverse5.ox" "thigh_r_parentConstraint1.w0";
connectAttr "CTRL_leg_r_IKFK.IKFK_Switch" "thigh_r_parentConstraint1.w1";
connectAttr "pelvis.ro" "pelvis_parentConstraint1.cro";
connectAttr "pelvis.pim" "pelvis_parentConstraint1.cpim";
connectAttr "pelvis.rp" "pelvis_parentConstraint1.crp";
connectAttr "pelvis.rpt" "pelvis_parentConstraint1.crt";
connectAttr "pelvis.jo" "pelvis_parentConstraint1.cjo";
connectAttr "pelvis_IK.t" "pelvis_parentConstraint1.tg[0].tt";
connectAttr "pelvis_IK.rp" "pelvis_parentConstraint1.tg[0].trp";
connectAttr "pelvis_IK.rpt" "pelvis_parentConstraint1.tg[0].trt";
connectAttr "pelvis_IK.r" "pelvis_parentConstraint1.tg[0].tr";
connectAttr "pelvis_IK.ro" "pelvis_parentConstraint1.tg[0].tro";
connectAttr "pelvis_IK.s" "pelvis_parentConstraint1.tg[0].ts";
connectAttr "pelvis_IK.pm" "pelvis_parentConstraint1.tg[0].tpm";
connectAttr "pelvis_IK.jo" "pelvis_parentConstraint1.tg[0].tjo";
connectAttr "pelvis_IK.ssc" "pelvis_parentConstraint1.tg[0].tsc";
connectAttr "pelvis_IK.is" "pelvis_parentConstraint1.tg[0].tis";
connectAttr "pelvis_parentConstraint1.w0" "pelvis_parentConstraint1.tg[0].tw";
connectAttr "pelvis_FK.t" "pelvis_parentConstraint1.tg[1].tt";
connectAttr "pelvis_FK.rp" "pelvis_parentConstraint1.tg[1].trp";
connectAttr "pelvis_FK.rpt" "pelvis_parentConstraint1.tg[1].trt";
connectAttr "pelvis_FK.r" "pelvis_parentConstraint1.tg[1].tr";
connectAttr "pelvis_FK.ro" "pelvis_parentConstraint1.tg[1].tro";
connectAttr "pelvis_FK.s" "pelvis_parentConstraint1.tg[1].ts";
connectAttr "pelvis_FK.pm" "pelvis_parentConstraint1.tg[1].tpm";
connectAttr "pelvis_FK.jo" "pelvis_parentConstraint1.tg[1].tjo";
connectAttr "pelvis_FK.ssc" "pelvis_parentConstraint1.tg[1].tsc";
connectAttr "pelvis_FK.is" "pelvis_parentConstraint1.tg[1].tis";
connectAttr "pelvis_parentConstraint1.w1" "pelvis_parentConstraint1.tg[1].tw";
connectAttr "reverse3.ox" "pelvis_parentConstraint1.w0";
connectAttr "CTRL_cog.IKFK_Switch" "pelvis_parentConstraint1.w1";
connectAttr "root_player.ro" "root_parentConstraint1.cro";
connectAttr "root_player.pim" "root_parentConstraint1.cpim";
connectAttr "root_player.rp" "root_parentConstraint1.crp";
connectAttr "root_player.rpt" "root_parentConstraint1.crt";
connectAttr "root_player.jo" "root_parentConstraint1.cjo";
connectAttr "CTRL_root.t" "root_parentConstraint1.tg[0].tt";
connectAttr "CTRL_root.rp" "root_parentConstraint1.tg[0].trp";
connectAttr "CTRL_root.rpt" "root_parentConstraint1.tg[0].trt";
connectAttr "CTRL_root.r" "root_parentConstraint1.tg[0].tr";
connectAttr "CTRL_root.ro" "root_parentConstraint1.tg[0].tro";
connectAttr "CTRL_root.s" "root_parentConstraint1.tg[0].ts";
connectAttr "CTRL_root.pm" "root_parentConstraint1.tg[0].tpm";
connectAttr "root_parentConstraint1.w0" "root_parentConstraint1.tg[0].tw";
connectAttr "root_parentConstraint2.ctx" "root_ship.tx";
connectAttr "root_parentConstraint2.cty" "root_ship.ty";
connectAttr "root_parentConstraint2.ctz" "root_ship.tz";
connectAttr "root_parentConstraint2.crx" "root_ship.rx";
connectAttr "root_parentConstraint2.cry" "root_ship.ry";
connectAttr "root_parentConstraint2.crz" "root_ship.rz";
connectAttr "root_ship.s" "ship.is";
connectAttr "root_ship.ro" "root_parentConstraint2.cro";
connectAttr "root_ship.pim" "root_parentConstraint2.cpim";
connectAttr "root_ship.rp" "root_parentConstraint2.crp";
connectAttr "root_ship.rpt" "root_parentConstraint2.crt";
connectAttr "root_ship.jo" "root_parentConstraint2.cjo";
connectAttr "CTRL_ship.t" "root_parentConstraint2.tg[0].tt";
connectAttr "CTRL_ship.rp" "root_parentConstraint2.tg[0].trp";
connectAttr "CTRL_ship.rpt" "root_parentConstraint2.tg[0].trt";
connectAttr "CTRL_ship.r" "root_parentConstraint2.tg[0].tr";
connectAttr "CTRL_ship.ro" "root_parentConstraint2.tg[0].tro";
connectAttr "CTRL_ship.s" "root_parentConstraint2.tg[0].ts";
connectAttr "CTRL_ship.pm" "root_parentConstraint2.tg[0].tpm";
connectAttr "root_parentConstraint2.w0" "root_parentConstraint2.tg[0].tw";
connectAttr "geo.di" "Orion_test.do";
connectAttr "groupId6.id" "Orion_testShape.iog.og[9].gid";
connectAttr "skinCluster5.og[0]" "Orion_testShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "Orion_testShapeDeformed.twl";
connectAttr "controls.di" "rig_controls.do";
connectAttr "CTRL_shipShape.wm" "CTRL_root.opm";
connectAttr "transformGeometry7.og" "CTRL_rootShape.cr";
connectAttr "CTRL_ship.wm" "|rig_controls|leg_r_grp.opm";
connectAttr "CTRL_leg_r_IKFK.IKFK_Switch" "CTRL_thigh_r_FK.v";
connectAttr "CTRL_cog.wm" "CTRL_thigh_r_FK.opm";
connectAttr "reverse5.ox" "CTRL_leg_r_pole.v";
connectAttr "reverse5.ox" "CTRL_foot_r_IK.v";
connectAttr "thigh_r_IK.msg" "ikHandle2_leg_r.hsj";
connectAttr "effector6.hp" "ikHandle2_leg_r.hee";
connectAttr "ikRPsolver.msg" "ikHandle2_leg_r.hsv";
connectAttr "ikHandle2_leg_r_poleVectorConstraint1.ctx" "ikHandle2_leg_r.pvx";
connectAttr "ikHandle2_leg_r_poleVectorConstraint1.cty" "ikHandle2_leg_r.pvy";
connectAttr "ikHandle2_leg_r_poleVectorConstraint1.ctz" "ikHandle2_leg_r.pvz";
connectAttr "ikHandle2_leg_r.pim" "ikHandle2_leg_r_poleVectorConstraint1.cpim";
connectAttr "thigh_r_IK.pm" "ikHandle2_leg_r_poleVectorConstraint1.ps";
connectAttr "thigh_r_IK.t" "ikHandle2_leg_r_poleVectorConstraint1.crp";
connectAttr "CTRL_leg_r_pole.t" "ikHandle2_leg_r_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "CTRL_leg_r_pole.rp" "ikHandle2_leg_r_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "CTRL_leg_r_pole.rpt" "ikHandle2_leg_r_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "CTRL_leg_r_pole.pm" "ikHandle2_leg_r_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle2_leg_r_poleVectorConstraint1.w0" "ikHandle2_leg_r_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "CTRL_ship.wm" "|rig_controls|leg_l_grp.opm";
connectAttr "CTRL_leg_l_IKFK.IKFK_Switch" "CTRL_thigh_l_FK.v";
connectAttr "CTRL_cog.wm" "CTRL_thigh_l_FK.opm";
connectAttr "reverse1.ox" "CTRL_foot_l_IK.v";
connectAttr "thigh_l_IK.msg" "ikHandle5_leg_l.hsj";
connectAttr "effector9.hp" "ikHandle5_leg_l.hee";
connectAttr "ikRPsolver.msg" "ikHandle5_leg_l.hsv";
connectAttr "ikHandle5_leg_l_poleVectorConstraint1.ctx" "ikHandle5_leg_l.pvx";
connectAttr "ikHandle5_leg_l_poleVectorConstraint1.cty" "ikHandle5_leg_l.pvy";
connectAttr "ikHandle5_leg_l_poleVectorConstraint1.ctz" "ikHandle5_leg_l.pvz";
connectAttr "ikHandle5_leg_l.pim" "ikHandle5_leg_l_poleVectorConstraint1.cpim";
connectAttr "thigh_l_IK.pm" "ikHandle5_leg_l_poleVectorConstraint1.ps";
connectAttr "thigh_l_IK.t" "ikHandle5_leg_l_poleVectorConstraint1.crp";
connectAttr "CTRL_leg_l_pole.t" "ikHandle5_leg_l_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "CTRL_leg_l_pole.rp" "ikHandle5_leg_l_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "CTRL_leg_l_pole.rpt" "ikHandle5_leg_l_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "CTRL_leg_l_pole.pm" "ikHandle5_leg_l_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle5_leg_l_poleVectorConstraint1.w0" "ikHandle5_leg_l_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "reverse1.ox" "CTRL_leg_l_pole.v";
connectAttr "CTRL_ship.wm" "|rig_controls|arm_r_grp.opm";
connectAttr "multMatrix1.o" "CTRL_shoulder_r.opm";
connectAttr "CTRL_arm_r_IKFK.IKFK_Switch" "CTRL_upperarm_r_FK.v";
connectAttr "CTRL_shoulder_r.wm" "CTRL_upperarm_r_FK.opm";
connectAttr "reverse4.ox" "CTRL_arm_r_ik.v";
connectAttr "upperarm_r_IK.msg" "ikHandle3_arm_r.hsj";
connectAttr "effector7.hp" "ikHandle3_arm_r.hee";
connectAttr "ikRPsolver.msg" "ikHandle3_arm_r.hsv";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "ikHandle3_arm_r.pvx";
connectAttr "ikHandle3_poleVectorConstraint1.cty" "ikHandle3_arm_r.pvy";
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "ikHandle3_arm_r.pvz";
connectAttr "ikHandle3_arm_r.pim" "ikHandle3_poleVectorConstraint1.cpim";
connectAttr "upperarm_r_IK.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "upperarm_r_IK.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "CTRL_arm_r_pole.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "CTRL_arm_r_pole.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp";
connectAttr "CTRL_arm_r_pole.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt";
connectAttr "CTRL_arm_r_pole.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "reverse4.ox" "CTRL_arm_r_pole.v";
connectAttr "CTRL_ship.wm" "|rig_controls|arm_l_grp.opm";
connectAttr "multMatrix1.o" "CTRL_shoulder_l.opm";
connectAttr "CTRL_arm_l_IKFK.IKFK_Switch" "CTRL_upperarm_l_FK.v";
connectAttr "CTRL_shoulder_l.wm" "CTRL_upperarm_l_FK.opm";
connectAttr "transformGeometry4.og" "CTRL_upperarm_l_FKShape.cr";
connectAttr "reverse2.ox" "CTRL_arm_l_ik.v";
connectAttr "upperarm_l_IK.msg" "ikHandle4_arm_l.hsj";
connectAttr "effector8.hp" "ikHandle4_arm_l.hee";
connectAttr "ikRPsolver.msg" "ikHandle4_arm_l.hsv";
connectAttr "ikHandle4_arm_l_poleVectorConstraint1.ctx" "ikHandle4_arm_l.pvx";
connectAttr "ikHandle4_arm_l_poleVectorConstraint1.cty" "ikHandle4_arm_l.pvy";
connectAttr "ikHandle4_arm_l_poleVectorConstraint1.ctz" "ikHandle4_arm_l.pvz";
connectAttr "ikHandle4_arm_l.pim" "ikHandle4_arm_l_poleVectorConstraint1.cpim";
connectAttr "upperarm_l_IK.pm" "ikHandle4_arm_l_poleVectorConstraint1.ps";
connectAttr "upperarm_l_IK.t" "ikHandle4_arm_l_poleVectorConstraint1.crp";
connectAttr "CTRL_arm_l_pole.t" "ikHandle4_arm_l_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "CTRL_arm_l_pole.rp" "ikHandle4_arm_l_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "CTRL_arm_l_pole.rpt" "ikHandle4_arm_l_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "CTRL_arm_l_pole.pm" "ikHandle4_arm_l_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle4_arm_l_poleVectorConstraint1.w0" "ikHandle4_arm_l_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "reverse2.ox" "CTRL_arm_l_pole.v";
connectAttr "head_grp_parentConstraint1.ctx" "head_grp.tx";
connectAttr "head_grp_parentConstraint1.cty" "head_grp.ty";
connectAttr "head_grp_parentConstraint1.ctz" "head_grp.tz";
connectAttr "head_grp_parentConstraint1.crx" "head_grp.rx";
connectAttr "head_grp_parentConstraint1.cry" "head_grp.ry";
connectAttr "head_grp_parentConstraint1.crz" "head_grp.rz";
connectAttr "head_grp.ro" "head_grp_parentConstraint1.cro";
connectAttr "head_grp.pim" "head_grp_parentConstraint1.cpim";
connectAttr "head_grp.rp" "head_grp_parentConstraint1.crp";
connectAttr "head_grp.rpt" "head_grp_parentConstraint1.crt";
connectAttr "CTRL_chest_IK.t" "head_grp_parentConstraint1.tg[0].tt";
connectAttr "CTRL_chest_IK.rp" "head_grp_parentConstraint1.tg[0].trp";
connectAttr "CTRL_chest_IK.rpt" "head_grp_parentConstraint1.tg[0].trt";
connectAttr "CTRL_chest_IK.r" "head_grp_parentConstraint1.tg[0].tr";
connectAttr "CTRL_chest_IK.ro" "head_grp_parentConstraint1.tg[0].tro";
connectAttr "CTRL_chest_IK.s" "head_grp_parentConstraint1.tg[0].ts";
connectAttr "CTRL_chest_IK.pm" "head_grp_parentConstraint1.tg[0].tpm";
connectAttr "head_grp_parentConstraint1.w0" "head_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL_chest_FK.t" "head_grp_parentConstraint1.tg[1].tt";
connectAttr "CTRL_chest_FK.rp" "head_grp_parentConstraint1.tg[1].trp";
connectAttr "CTRL_chest_FK.rpt" "head_grp_parentConstraint1.tg[1].trt";
connectAttr "CTRL_chest_FK.r" "head_grp_parentConstraint1.tg[1].tr";
connectAttr "CTRL_chest_FK.ro" "head_grp_parentConstraint1.tg[1].tro";
connectAttr "CTRL_chest_FK.s" "head_grp_parentConstraint1.tg[1].ts";
connectAttr "CTRL_chest_FK.pm" "head_grp_parentConstraint1.tg[1].tpm";
connectAttr "head_grp_parentConstraint1.w1" "head_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse3.ox" "head_grp_parentConstraint1.w0";
connectAttr "CTRL_cog.IKFK_Switch" "head_grp_parentConstraint1.w1";
connectAttr "CTRL_cog.wm" "torso_grp.opm";
connectAttr "reverse3.ox" "CTRL_pelvis_IK.v";
connectAttr "CTRL_cog.IKFK_Switch" "CTRL_pelvis_FK.v";
connectAttr "transformGeometry3.og" "CTRL_spine_FKShape.cr";
connectAttr "pelvis_IK.msg" "ikHandle_spine.hsj";
connectAttr "effector3.hp" "ikHandle_spine.hee";
connectAttr "ikSplineSolver.msg" "ikHandle_spine.hsv";
connectAttr "spine_ik_curveShape.ws" "ikHandle_spine.ic";
connectAttr "pelvis_ctrljnt.wm" "ikHandle_spine.dwum";
connectAttr "chest_ctrljnt.wm" "ikHandle_spine.dwue";
connectAttr "bones.di" "rig_systems.do";
connectAttr "chest_ctrljnt_parentConstraint1.ctx" "chest_ctrljnt.tx";
connectAttr "chest_ctrljnt_parentConstraint1.cty" "chest_ctrljnt.ty";
connectAttr "chest_ctrljnt_parentConstraint1.ctz" "chest_ctrljnt.tz";
connectAttr "chest_ctrljnt_parentConstraint1.crx" "chest_ctrljnt.rx";
connectAttr "chest_ctrljnt_parentConstraint1.cry" "chest_ctrljnt.ry";
connectAttr "chest_ctrljnt_parentConstraint1.crz" "chest_ctrljnt.rz";
connectAttr "chest_ctrljnt.ro" "chest_ctrljnt_parentConstraint1.cro";
connectAttr "chest_ctrljnt.pim" "chest_ctrljnt_parentConstraint1.cpim";
connectAttr "chest_ctrljnt.rp" "chest_ctrljnt_parentConstraint1.crp";
connectAttr "chest_ctrljnt.rpt" "chest_ctrljnt_parentConstraint1.crt";
connectAttr "chest_ctrljnt.jo" "chest_ctrljnt_parentConstraint1.cjo";
connectAttr "CTRL_chest_IK.t" "chest_ctrljnt_parentConstraint1.tg[0].tt";
connectAttr "CTRL_chest_IK.rp" "chest_ctrljnt_parentConstraint1.tg[0].trp";
connectAttr "CTRL_chest_IK.rpt" "chest_ctrljnt_parentConstraint1.tg[0].trt";
connectAttr "CTRL_chest_IK.r" "chest_ctrljnt_parentConstraint1.tg[0].tr";
connectAttr "CTRL_chest_IK.ro" "chest_ctrljnt_parentConstraint1.tg[0].tro";
connectAttr "CTRL_chest_IK.s" "chest_ctrljnt_parentConstraint1.tg[0].ts";
connectAttr "CTRL_chest_IK.pm" "chest_ctrljnt_parentConstraint1.tg[0].tpm";
connectAttr "chest_ctrljnt_parentConstraint1.w0" "chest_ctrljnt_parentConstraint1.tg[0].tw"
		;
connectAttr "mid_ctrljnt_parentConstraint1.ctx" "mid_ctrljnt.tx";
connectAttr "mid_ctrljnt_parentConstraint1.cty" "mid_ctrljnt.ty";
connectAttr "mid_ctrljnt_parentConstraint1.ctz" "mid_ctrljnt.tz";
connectAttr "mid_ctrljnt_parentConstraint1.crx" "mid_ctrljnt.rx";
connectAttr "mid_ctrljnt_parentConstraint1.cry" "mid_ctrljnt.ry";
connectAttr "mid_ctrljnt_parentConstraint1.crz" "mid_ctrljnt.rz";
connectAttr "mid_ctrljnt.ro" "mid_ctrljnt_parentConstraint1.cro";
connectAttr "mid_ctrljnt.pim" "mid_ctrljnt_parentConstraint1.cpim";
connectAttr "mid_ctrljnt.rp" "mid_ctrljnt_parentConstraint1.crp";
connectAttr "mid_ctrljnt.rpt" "mid_ctrljnt_parentConstraint1.crt";
connectAttr "mid_ctrljnt.jo" "mid_ctrljnt_parentConstraint1.cjo";
connectAttr "CTRL_spine_IK.t" "mid_ctrljnt_parentConstraint1.tg[0].tt";
connectAttr "CTRL_spine_IK.rp" "mid_ctrljnt_parentConstraint1.tg[0].trp";
connectAttr "CTRL_spine_IK.rpt" "mid_ctrljnt_parentConstraint1.tg[0].trt";
connectAttr "CTRL_spine_IK.r" "mid_ctrljnt_parentConstraint1.tg[0].tr";
connectAttr "CTRL_spine_IK.ro" "mid_ctrljnt_parentConstraint1.tg[0].tro";
connectAttr "CTRL_spine_IK.s" "mid_ctrljnt_parentConstraint1.tg[0].ts";
connectAttr "CTRL_spine_IK.pm" "mid_ctrljnt_parentConstraint1.tg[0].tpm";
connectAttr "mid_ctrljnt_parentConstraint1.w0" "mid_ctrljnt_parentConstraint1.tg[0].tw"
		;
connectAttr "pelvis_ctrljnt1_parentConstraint1.ctx" "pelvis_ctrljnt.tx";
connectAttr "pelvis_ctrljnt1_parentConstraint1.cty" "pelvis_ctrljnt.ty";
connectAttr "pelvis_ctrljnt1_parentConstraint1.ctz" "pelvis_ctrljnt.tz";
connectAttr "pelvis_ctrljnt1_parentConstraint1.crx" "pelvis_ctrljnt.rx";
connectAttr "pelvis_ctrljnt1_parentConstraint1.cry" "pelvis_ctrljnt.ry";
connectAttr "pelvis_ctrljnt1_parentConstraint1.crz" "pelvis_ctrljnt.rz";
connectAttr "pelvis_ctrljnt.ro" "pelvis_ctrljnt1_parentConstraint1.cro";
connectAttr "pelvis_ctrljnt.pim" "pelvis_ctrljnt1_parentConstraint1.cpim";
connectAttr "pelvis_ctrljnt.rp" "pelvis_ctrljnt1_parentConstraint1.crp";
connectAttr "pelvis_ctrljnt.rpt" "pelvis_ctrljnt1_parentConstraint1.crt";
connectAttr "pelvis_ctrljnt.jo" "pelvis_ctrljnt1_parentConstraint1.cjo";
connectAttr "CTRL_pelvis_IK.t" "pelvis_ctrljnt1_parentConstraint1.tg[0].tt";
connectAttr "CTRL_pelvis_IK.rp" "pelvis_ctrljnt1_parentConstraint1.tg[0].trp";
connectAttr "CTRL_pelvis_IK.rpt" "pelvis_ctrljnt1_parentConstraint1.tg[0].trt";
connectAttr "CTRL_pelvis_IK.r" "pelvis_ctrljnt1_parentConstraint1.tg[0].tr";
connectAttr "CTRL_pelvis_IK.ro" "pelvis_ctrljnt1_parentConstraint1.tg[0].tro";
connectAttr "CTRL_pelvis_IK.s" "pelvis_ctrljnt1_parentConstraint1.tg[0].ts";
connectAttr "CTRL_pelvis_IK.pm" "pelvis_ctrljnt1_parentConstraint1.tg[0].tpm";
connectAttr "pelvis_ctrljnt1_parentConstraint1.w0" "pelvis_ctrljnt1_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster2.og[0]" "spine_ik_curveShape.cr";
connectAttr "spine_IK_orientConstraint1.crx" "spine_IK.rx";
connectAttr "spine_IK_orientConstraint1.cry" "spine_IK.ry";
connectAttr "spine_IK_orientConstraint1.crz" "spine_IK.rz";
connectAttr "pelvis_IK.s" "spine_IK.is";
connectAttr "chest_IK_orientConstraint1.crx" "chest_IK.rx";
connectAttr "chest_IK_orientConstraint1.cry" "chest_IK.ry";
connectAttr "chest_IK_orientConstraint1.crz" "chest_IK.rz";
connectAttr "spine_IK.s" "chest_IK.is";
connectAttr "chest_IK.ro" "chest_IK_orientConstraint1.cro";
connectAttr "chest_IK.pim" "chest_IK_orientConstraint1.cpim";
connectAttr "chest_IK.jo" "chest_IK_orientConstraint1.cjo";
connectAttr "chest_IK.is" "chest_IK_orientConstraint1.is";
connectAttr "CTRL_chest_IK.r" "chest_IK_orientConstraint1.tg[0].tr";
connectAttr "CTRL_chest_IK.ro" "chest_IK_orientConstraint1.tg[0].tro";
connectAttr "CTRL_chest_IK.pm" "chest_IK_orientConstraint1.tg[0].tpm";
connectAttr "chest_IK_orientConstraint1.w0" "chest_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "chest_IK.tx" "effector3.tx";
connectAttr "chest_IK.ty" "effector3.ty";
connectAttr "chest_IK.tz" "effector3.tz";
connectAttr "chest_IK.opm" "effector3.opm";
connectAttr "spine_IK.ro" "spine_IK_orientConstraint1.cro";
connectAttr "spine_IK.pim" "spine_IK_orientConstraint1.cpim";
connectAttr "spine_IK.jo" "spine_IK_orientConstraint1.cjo";
connectAttr "spine_IK.is" "spine_IK_orientConstraint1.is";
connectAttr "CTRL_spine_IK.r" "spine_IK_orientConstraint1.tg[0].tr";
connectAttr "CTRL_spine_IK.ro" "spine_IK_orientConstraint1.tg[0].tro";
connectAttr "CTRL_spine_IK.pm" "spine_IK_orientConstraint1.tg[0].tpm";
connectAttr "spine_IK_orientConstraint1.w0" "spine_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "pelvis_FK_parentConstraint1.ctx" "pelvis_FK.tx";
connectAttr "pelvis_FK_parentConstraint1.cty" "pelvis_FK.ty";
connectAttr "pelvis_FK_parentConstraint1.ctz" "pelvis_FK.tz";
connectAttr "pelvis_FK_parentConstraint1.crx" "pelvis_FK.rx";
connectAttr "pelvis_FK_parentConstraint1.cry" "pelvis_FK.ry";
connectAttr "pelvis_FK_parentConstraint1.crz" "pelvis_FK.rz";
connectAttr "spine_FK_parentConstraint1.ctx" "spine_FK.tx";
connectAttr "spine_FK_parentConstraint1.cty" "spine_FK.ty";
connectAttr "spine_FK_parentConstraint1.ctz" "spine_FK.tz";
connectAttr "spine_FK_parentConstraint1.crx" "spine_FK.rx";
connectAttr "spine_FK_parentConstraint1.cry" "spine_FK.ry";
connectAttr "spine_FK_parentConstraint1.crz" "spine_FK.rz";
connectAttr "pelvis_FK.s" "spine_FK.is";
connectAttr "chest_FK_parentConstraint1.ctx" "chest_FK.tx";
connectAttr "chest_FK_parentConstraint1.cty" "chest_FK.ty";
connectAttr "chest_FK_parentConstraint1.ctz" "chest_FK.tz";
connectAttr "chest_FK_parentConstraint1.crx" "chest_FK.rx";
connectAttr "chest_FK_parentConstraint1.cry" "chest_FK.ry";
connectAttr "chest_FK_parentConstraint1.crz" "chest_FK.rz";
connectAttr "spine_FK.s" "chest_FK.is";
connectAttr "chest_FK.ro" "chest_FK_parentConstraint1.cro";
connectAttr "chest_FK.pim" "chest_FK_parentConstraint1.cpim";
connectAttr "chest_FK.rp" "chest_FK_parentConstraint1.crp";
connectAttr "chest_FK.rpt" "chest_FK_parentConstraint1.crt";
connectAttr "chest_FK.jo" "chest_FK_parentConstraint1.cjo";
connectAttr "CTRL_chest_FK.t" "chest_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_chest_FK.rp" "chest_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_chest_FK.rpt" "chest_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_chest_FK.r" "chest_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_chest_FK.ro" "chest_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_chest_FK.s" "chest_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_chest_FK.pm" "chest_FK_parentConstraint1.tg[0].tpm";
connectAttr "chest_FK_parentConstraint1.w0" "chest_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_FK.ro" "spine_FK_parentConstraint1.cro";
connectAttr "spine_FK.pim" "spine_FK_parentConstraint1.cpim";
connectAttr "spine_FK.rp" "spine_FK_parentConstraint1.crp";
connectAttr "spine_FK.rpt" "spine_FK_parentConstraint1.crt";
connectAttr "spine_FK.jo" "spine_FK_parentConstraint1.cjo";
connectAttr "CTRL_spine_FK.t" "spine_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_spine_FK.rp" "spine_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_spine_FK.rpt" "spine_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_spine_FK.r" "spine_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_spine_FK.ro" "spine_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_spine_FK.s" "spine_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_spine_FK.pm" "spine_FK_parentConstraint1.tg[0].tpm";
connectAttr "spine_FK_parentConstraint1.w0" "spine_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "pelvis_FK.ro" "pelvis_FK_parentConstraint1.cro";
connectAttr "pelvis_FK.pim" "pelvis_FK_parentConstraint1.cpim";
connectAttr "pelvis_FK.rp" "pelvis_FK_parentConstraint1.crp";
connectAttr "pelvis_FK.rpt" "pelvis_FK_parentConstraint1.crt";
connectAttr "pelvis_FK.jo" "pelvis_FK_parentConstraint1.cjo";
connectAttr "CTRL_pelvis_FK.t" "pelvis_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_pelvis_FK.rp" "pelvis_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_pelvis_FK.rpt" "pelvis_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_pelvis_FK.r" "pelvis_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_pelvis_FK.ro" "pelvis_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_pelvis_FK.s" "pelvis_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_pelvis_FK.pm" "pelvis_FK_parentConstraint1.tg[0].tpm";
connectAttr "pelvis_FK_parentConstraint1.w0" "pelvis_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL_shoulder_l.wm" "|rig_systems|DO_NOT_TOUCH|arm_l_grp.opm";
connectAttr "upperarm_l_IK.s" "lowerarm_l_IK.is";
connectAttr "hand_l_IK_orientConstraint1.crx" "hand_l_IK.rx";
connectAttr "hand_l_IK_orientConstraint1.cry" "hand_l_IK.ry";
connectAttr "hand_l_IK_orientConstraint1.crz" "hand_l_IK.rz";
connectAttr "lowerarm_l_IK.s" "hand_l_IK.is";
connectAttr "hand_l_IK.ro" "hand_l_IK_orientConstraint1.cro";
connectAttr "hand_l_IK.pim" "hand_l_IK_orientConstraint1.cpim";
connectAttr "hand_l_IK.jo" "hand_l_IK_orientConstraint1.cjo";
connectAttr "hand_l_IK.is" "hand_l_IK_orientConstraint1.is";
connectAttr "CTRL_arm_l_ik.r" "hand_l_IK_orientConstraint1.tg[0].tr";
connectAttr "CTRL_arm_l_ik.ro" "hand_l_IK_orientConstraint1.tg[0].tro";
connectAttr "CTRL_arm_l_ik.pm" "hand_l_IK_orientConstraint1.tg[0].tpm";
connectAttr "hand_l_IK_orientConstraint1.w0" "hand_l_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "hand_l_IK.tx" "effector8.tx";
connectAttr "hand_l_IK.ty" "effector8.ty";
connectAttr "hand_l_IK.tz" "effector8.tz";
connectAttr "hand_l_IK.opm" "effector8.opm";
connectAttr "upperarm_l_FK_parentConstraint1.ctx" "upperarm_l_FK.tx";
connectAttr "upperarm_l_FK_parentConstraint1.cty" "upperarm_l_FK.ty";
connectAttr "upperarm_l_FK_parentConstraint1.ctz" "upperarm_l_FK.tz";
connectAttr "upperarm_l_FK_parentConstraint1.crx" "upperarm_l_FK.rx";
connectAttr "upperarm_l_FK_parentConstraint1.cry" "upperarm_l_FK.ry";
connectAttr "upperarm_l_FK_parentConstraint1.crz" "upperarm_l_FK.rz";
connectAttr "lowerarm_l_FK_parentConstraint1.ctx" "lowerarm_l_FK.tx";
connectAttr "lowerarm_l_FK_parentConstraint1.cty" "lowerarm_l_FK.ty";
connectAttr "lowerarm_l_FK_parentConstraint1.ctz" "lowerarm_l_FK.tz";
connectAttr "lowerarm_l_FK_parentConstraint1.crx" "lowerarm_l_FK.rx";
connectAttr "lowerarm_l_FK_parentConstraint1.cry" "lowerarm_l_FK.ry";
connectAttr "lowerarm_l_FK_parentConstraint1.crz" "lowerarm_l_FK.rz";
connectAttr "upperarm_l_FK.s" "lowerarm_l_FK.is";
connectAttr "hand_l_FK_parentConstraint1.ctx" "hand_l_FK.tx";
connectAttr "hand_l_FK_parentConstraint1.cty" "hand_l_FK.ty";
connectAttr "hand_l_FK_parentConstraint1.ctz" "hand_l_FK.tz";
connectAttr "hand_l_FK_parentConstraint1.crx" "hand_l_FK.rx";
connectAttr "hand_l_FK_parentConstraint1.cry" "hand_l_FK.ry";
connectAttr "hand_l_FK_parentConstraint1.crz" "hand_l_FK.rz";
connectAttr "lowerarm_l_FK.s" "hand_l_FK.is";
connectAttr "hand_l_FK.ro" "hand_l_FK_parentConstraint1.cro";
connectAttr "hand_l_FK.pim" "hand_l_FK_parentConstraint1.cpim";
connectAttr "hand_l_FK.rp" "hand_l_FK_parentConstraint1.crp";
connectAttr "hand_l_FK.rpt" "hand_l_FK_parentConstraint1.crt";
connectAttr "hand_l_FK.jo" "hand_l_FK_parentConstraint1.cjo";
connectAttr "CTRL_hand_l_FK.t" "hand_l_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_hand_l_FK.rp" "hand_l_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_hand_l_FK.rpt" "hand_l_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_hand_l_FK.r" "hand_l_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_hand_l_FK.ro" "hand_l_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_hand_l_FK.s" "hand_l_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_hand_l_FK.pm" "hand_l_FK_parentConstraint1.tg[0].tpm";
connectAttr "hand_l_FK_parentConstraint1.w0" "hand_l_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "lowerarm_l_FK.ro" "lowerarm_l_FK_parentConstraint1.cro";
connectAttr "lowerarm_l_FK.pim" "lowerarm_l_FK_parentConstraint1.cpim";
connectAttr "lowerarm_l_FK.rp" "lowerarm_l_FK_parentConstraint1.crp";
connectAttr "lowerarm_l_FK.rpt" "lowerarm_l_FK_parentConstraint1.crt";
connectAttr "lowerarm_l_FK.jo" "lowerarm_l_FK_parentConstraint1.cjo";
connectAttr "CTRL_lowerarm_l_FK.t" "lowerarm_l_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_lowerarm_l_FK.rp" "lowerarm_l_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_lowerarm_l_FK.rpt" "lowerarm_l_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "CTRL_lowerarm_l_FK.r" "lowerarm_l_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_lowerarm_l_FK.ro" "lowerarm_l_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_lowerarm_l_FK.s" "lowerarm_l_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_lowerarm_l_FK.pm" "lowerarm_l_FK_parentConstraint1.tg[0].tpm";
connectAttr "lowerarm_l_FK_parentConstraint1.w0" "lowerarm_l_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "upperarm_l_FK.ro" "upperarm_l_FK_parentConstraint1.cro";
connectAttr "upperarm_l_FK.pim" "upperarm_l_FK_parentConstraint1.cpim";
connectAttr "upperarm_l_FK.rp" "upperarm_l_FK_parentConstraint1.crp";
connectAttr "upperarm_l_FK.rpt" "upperarm_l_FK_parentConstraint1.crt";
connectAttr "upperarm_l_FK.jo" "upperarm_l_FK_parentConstraint1.cjo";
connectAttr "CTRL_upperarm_l_FK.t" "upperarm_l_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_upperarm_l_FK.rp" "upperarm_l_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_upperarm_l_FK.rpt" "upperarm_l_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "CTRL_upperarm_l_FK.r" "upperarm_l_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_upperarm_l_FK.ro" "upperarm_l_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_upperarm_l_FK.s" "upperarm_l_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_upperarm_l_FK.pm" "upperarm_l_FK_parentConstraint1.tg[0].tpm";
connectAttr "upperarm_l_FK_parentConstraint1.w0" "upperarm_l_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL_shoulder_r.wm" "|rig_systems|DO_NOT_TOUCH|arm_r_grp.opm";
connectAttr "upperarm_r_IK.s" "lowerarm_r_IK.is";
connectAttr "hand_r_IK_orientConstraint1.crx" "hand_r_IK.rx";
connectAttr "hand_r_IK_orientConstraint1.cry" "hand_r_IK.ry";
connectAttr "hand_r_IK_orientConstraint1.crz" "hand_r_IK.rz";
connectAttr "lowerarm_r_IK.s" "hand_r_IK.is";
connectAttr "hand_r_IK.ro" "hand_r_IK_orientConstraint1.cro";
connectAttr "hand_r_IK.pim" "hand_r_IK_orientConstraint1.cpim";
connectAttr "hand_r_IK.jo" "hand_r_IK_orientConstraint1.cjo";
connectAttr "hand_r_IK.is" "hand_r_IK_orientConstraint1.is";
connectAttr "CTRL_arm_r_ik.r" "hand_r_IK_orientConstraint1.tg[0].tr";
connectAttr "CTRL_arm_r_ik.ro" "hand_r_IK_orientConstraint1.tg[0].tro";
connectAttr "CTRL_arm_r_ik.pm" "hand_r_IK_orientConstraint1.tg[0].tpm";
connectAttr "hand_r_IK_orientConstraint1.w0" "hand_r_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "hand_r_IK.tx" "effector7.tx";
connectAttr "hand_r_IK.ty" "effector7.ty";
connectAttr "hand_r_IK.tz" "effector7.tz";
connectAttr "hand_r_IK.opm" "effector7.opm";
connectAttr "upperarm_r_FK_parentConstraint1.ctx" "upperarm_r_FK.tx";
connectAttr "upperarm_r_FK_parentConstraint1.cty" "upperarm_r_FK.ty";
connectAttr "upperarm_r_FK_parentConstraint1.ctz" "upperarm_r_FK.tz";
connectAttr "upperarm_r_FK_parentConstraint1.crx" "upperarm_r_FK.rx";
connectAttr "upperarm_r_FK_parentConstraint1.cry" "upperarm_r_FK.ry";
connectAttr "upperarm_r_FK_parentConstraint1.crz" "upperarm_r_FK.rz";
connectAttr "lowerarm_r_FK_parentConstraint1.ctx" "lowerarm_r_FK.tx";
connectAttr "lowerarm_r_FK_parentConstraint1.cty" "lowerarm_r_FK.ty";
connectAttr "lowerarm_r_FK_parentConstraint1.ctz" "lowerarm_r_FK.tz";
connectAttr "lowerarm_r_FK_parentConstraint1.crx" "lowerarm_r_FK.rx";
connectAttr "lowerarm_r_FK_parentConstraint1.cry" "lowerarm_r_FK.ry";
connectAttr "lowerarm_r_FK_parentConstraint1.crz" "lowerarm_r_FK.rz";
connectAttr "upperarm_r_FK.s" "lowerarm_r_FK.is";
connectAttr "hand_r_FK_parentConstraint1.ctx" "hand_r_FK.tx";
connectAttr "hand_r_FK_parentConstraint1.cty" "hand_r_FK.ty";
connectAttr "hand_r_FK_parentConstraint1.ctz" "hand_r_FK.tz";
connectAttr "hand_r_FK_parentConstraint1.crx" "hand_r_FK.rx";
connectAttr "hand_r_FK_parentConstraint1.cry" "hand_r_FK.ry";
connectAttr "hand_r_FK_parentConstraint1.crz" "hand_r_FK.rz";
connectAttr "lowerarm_r_FK.s" "hand_r_FK.is";
connectAttr "hand_r_FK.ro" "hand_r_FK_parentConstraint1.cro";
connectAttr "hand_r_FK.pim" "hand_r_FK_parentConstraint1.cpim";
connectAttr "hand_r_FK.rp" "hand_r_FK_parentConstraint1.crp";
connectAttr "hand_r_FK.rpt" "hand_r_FK_parentConstraint1.crt";
connectAttr "hand_r_FK.jo" "hand_r_FK_parentConstraint1.cjo";
connectAttr "lowerarm_r_FK.ro" "lowerarm_r_FK_parentConstraint1.cro";
connectAttr "lowerarm_r_FK.pim" "lowerarm_r_FK_parentConstraint1.cpim";
connectAttr "lowerarm_r_FK.rp" "lowerarm_r_FK_parentConstraint1.crp";
connectAttr "lowerarm_r_FK.rpt" "lowerarm_r_FK_parentConstraint1.crt";
connectAttr "lowerarm_r_FK.jo" "lowerarm_r_FK_parentConstraint1.cjo";
connectAttr "upperarm_r_FK.ro" "upperarm_r_FK_parentConstraint1.cro";
connectAttr "upperarm_r_FK.pim" "upperarm_r_FK_parentConstraint1.cpim";
connectAttr "upperarm_r_FK.rp" "upperarm_r_FK_parentConstraint1.crp";
connectAttr "upperarm_r_FK.rpt" "upperarm_r_FK_parentConstraint1.crt";
connectAttr "upperarm_r_FK.jo" "upperarm_r_FK_parentConstraint1.cjo";
connectAttr "CTRL_upperarm_r_FK.t" "upperarm_r_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_upperarm_r_FK.rp" "upperarm_r_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_upperarm_r_FK.rpt" "upperarm_r_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "CTRL_upperarm_r_FK.r" "upperarm_r_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_upperarm_r_FK.ro" "upperarm_r_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_upperarm_r_FK.s" "upperarm_r_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_upperarm_r_FK.pm" "upperarm_r_FK_parentConstraint1.tg[0].tpm";
connectAttr "upperarm_r_FK_parentConstraint1.w0" "upperarm_r_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL_pelvis_IK.wm" "|rig_systems|DO_NOT_TOUCH|leg_l_grp.opm";
connectAttr "thigh_l_IK.s" "calf_l_IK.is";
connectAttr "calf_l_IK.s" "foot_l_IK.is";
connectAttr "foot_l_IK.tx" "effector9.tx";
connectAttr "foot_l_IK.ty" "effector9.ty";
connectAttr "foot_l_IK.tz" "effector9.tz";
connectAttr "foot_l_IK.opm" "effector9.opm";
connectAttr "thigh_l_FK_parentConstraint1.ctx" "thigh_l_FK.tx";
connectAttr "thigh_l_FK_parentConstraint1.cty" "thigh_l_FK.ty";
connectAttr "thigh_l_FK_parentConstraint1.ctz" "thigh_l_FK.tz";
connectAttr "thigh_l_FK_parentConstraint1.crx" "thigh_l_FK.rx";
connectAttr "thigh_l_FK_parentConstraint1.cry" "thigh_l_FK.ry";
connectAttr "thigh_l_FK_parentConstraint1.crz" "thigh_l_FK.rz";
connectAttr "calf_l_FK_parentConstraint1.ctx" "calf_l_FK.tx";
connectAttr "calf_l_FK_parentConstraint1.cty" "calf_l_FK.ty";
connectAttr "calf_l_FK_parentConstraint1.ctz" "calf_l_FK.tz";
connectAttr "calf_l_FK_parentConstraint1.crx" "calf_l_FK.rx";
connectAttr "calf_l_FK_parentConstraint1.cry" "calf_l_FK.ry";
connectAttr "calf_l_FK_parentConstraint1.crz" "calf_l_FK.rz";
connectAttr "thigh_l_FK.s" "calf_l_FK.is";
connectAttr "calf_l_FK.s" "foot_l_FK.is";
connectAttr "calf_l_FK.ro" "calf_l_FK_parentConstraint1.cro";
connectAttr "calf_l_FK.pim" "calf_l_FK_parentConstraint1.cpim";
connectAttr "calf_l_FK.rp" "calf_l_FK_parentConstraint1.crp";
connectAttr "calf_l_FK.rpt" "calf_l_FK_parentConstraint1.crt";
connectAttr "calf_l_FK.jo" "calf_l_FK_parentConstraint1.cjo";
connectAttr "CTRL_calf_l_FK.t" "calf_l_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_calf_l_FK.rp" "calf_l_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_calf_l_FK.rpt" "calf_l_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_calf_l_FK.r" "calf_l_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_calf_l_FK.ro" "calf_l_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_calf_l_FK.s" "calf_l_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_calf_l_FK.pm" "calf_l_FK_parentConstraint1.tg[0].tpm";
connectAttr "calf_l_FK_parentConstraint1.w0" "calf_l_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "thigh_l_FK.ro" "thigh_l_FK_parentConstraint1.cro";
connectAttr "thigh_l_FK.pim" "thigh_l_FK_parentConstraint1.cpim";
connectAttr "thigh_l_FK.rp" "thigh_l_FK_parentConstraint1.crp";
connectAttr "thigh_l_FK.rpt" "thigh_l_FK_parentConstraint1.crt";
connectAttr "thigh_l_FK.jo" "thigh_l_FK_parentConstraint1.cjo";
connectAttr "CTRL_thigh_l_FK.t" "thigh_l_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_thigh_l_FK.rp" "thigh_l_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_thigh_l_FK.rpt" "thigh_l_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_thigh_l_FK.r" "thigh_l_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_thigh_l_FK.ro" "thigh_l_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_thigh_l_FK.s" "thigh_l_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_thigh_l_FK.pm" "thigh_l_FK_parentConstraint1.tg[0].tpm";
connectAttr "thigh_l_FK_parentConstraint1.w0" "thigh_l_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL_pelvis_IK.wm" "|rig_systems|DO_NOT_TOUCH|leg_r_grp.opm";
connectAttr "thigh_r_IK.s" "calf_r_IK.is";
connectAttr "calf_r_IK.s" "foot_r_IK.is";
connectAttr "foot_r_IK.tx" "effector6.tx";
connectAttr "foot_r_IK.ty" "effector6.ty";
connectAttr "foot_r_IK.tz" "effector6.tz";
connectAttr "foot_r_IK.opm" "effector6.opm";
connectAttr "thigh_r_FK_parentConstraint1.ctx" "thigh_r_FK.tx";
connectAttr "thigh_r_FK_parentConstraint1.cty" "thigh_r_FK.ty";
connectAttr "thigh_r_FK_parentConstraint1.ctz" "thigh_r_FK.tz";
connectAttr "thigh_r_FK_parentConstraint1.crx" "thigh_r_FK.rx";
connectAttr "thigh_r_FK_parentConstraint1.cry" "thigh_r_FK.ry";
connectAttr "thigh_r_FK_parentConstraint1.crz" "thigh_r_FK.rz";
connectAttr "calf_r_FK_parentConstraint1.ctx" "calf_r_FK.tx";
connectAttr "calf_r_FK_parentConstraint1.cty" "calf_r_FK.ty";
connectAttr "calf_r_FK_parentConstraint1.ctz" "calf_r_FK.tz";
connectAttr "calf_r_FK_parentConstraint1.crx" "calf_r_FK.rx";
connectAttr "calf_r_FK_parentConstraint1.cry" "calf_r_FK.ry";
connectAttr "calf_r_FK_parentConstraint1.crz" "calf_r_FK.rz";
connectAttr "thigh_r_FK.s" "calf_r_FK.is";
connectAttr "calf_r_FK.s" "foot_r_FK.is";
connectAttr "calf_r_FK.ro" "calf_r_FK_parentConstraint1.cro";
connectAttr "calf_r_FK.pim" "calf_r_FK_parentConstraint1.cpim";
connectAttr "calf_r_FK.rp" "calf_r_FK_parentConstraint1.crp";
connectAttr "calf_r_FK.rpt" "calf_r_FK_parentConstraint1.crt";
connectAttr "calf_r_FK.jo" "calf_r_FK_parentConstraint1.cjo";
connectAttr "CTRL_calf_r_FK.t" "calf_r_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_calf_r_FK.rp" "calf_r_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_calf_r_FK.rpt" "calf_r_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_calf_r_FK.r" "calf_r_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_calf_r_FK.ro" "calf_r_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_calf_r_FK.s" "calf_r_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_calf_r_FK.pm" "calf_r_FK_parentConstraint1.tg[0].tpm";
connectAttr "calf_r_FK_parentConstraint1.w0" "calf_r_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "thigh_r_FK.ro" "thigh_r_FK_parentConstraint1.cro";
connectAttr "thigh_r_FK.pim" "thigh_r_FK_parentConstraint1.cpim";
connectAttr "thigh_r_FK.rp" "thigh_r_FK_parentConstraint1.crp";
connectAttr "thigh_r_FK.rpt" "thigh_r_FK_parentConstraint1.crt";
connectAttr "thigh_r_FK.jo" "thigh_r_FK_parentConstraint1.cjo";
connectAttr "CTRL_thigh_r_FK.t" "thigh_r_FK_parentConstraint1.tg[0].tt";
connectAttr "CTRL_thigh_r_FK.rp" "thigh_r_FK_parentConstraint1.tg[0].trp";
connectAttr "CTRL_thigh_r_FK.rpt" "thigh_r_FK_parentConstraint1.tg[0].trt";
connectAttr "CTRL_thigh_r_FK.r" "thigh_r_FK_parentConstraint1.tg[0].tr";
connectAttr "CTRL_thigh_r_FK.ro" "thigh_r_FK_parentConstraint1.tg[0].tro";
connectAttr "CTRL_thigh_r_FK.s" "thigh_r_FK_parentConstraint1.tg[0].ts";
connectAttr "CTRL_thigh_r_FK.pm" "thigh_r_FK_parentConstraint1.tg[0].tpm";
connectAttr "thigh_r_FK_parentConstraint1.w0" "thigh_r_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster6.og[0]" "OrionShapeDeformed.i";
connectAttr "skinCluster7.og[0]" "SaucerShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrionSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrionSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrionSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SaucerSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrionSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrionSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrionSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SaucerSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "geo.id";
connectAttr "rig_controls.msg" "bindPose3.m[0]";
connectAttr "pelvis_ctrljnt.msg" "bindPose3.m[1]";
connectAttr "mid_ctrljnt.msg" "bindPose3.m[2]";
connectAttr "chest_ctrljnt.msg" "bindPose3.m[3]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[0]" "bindPose3.p[2]";
connectAttr "bindPose3.m[0]" "bindPose3.p[3]";
connectAttr "pelvis_ctrljnt.bps" "bindPose3.wm[1]";
connectAttr "mid_ctrljnt.bps" "bindPose3.wm[2]";
connectAttr "chest_ctrljnt.bps" "bindPose3.wm[3]";
connectAttr "CTRL_leg_l_IKFK.IKFK_Switch" "reverse1.ix";
connectAttr "CTRL_arm_l_IKFK.IKFK_Switch" "reverse2.ix";
connectAttr "CTRL_cog.IKFK_Switch" "reverse3.ix";
connectAttr "CTRL_arm_r_IKFK.IKFK_Switch" "reverse4.ix";
connectAttr "CTRL_leg_r_IKFK.IKFK_Switch" "reverse5.ix";
connectAttr "skeleton.msg" "bindPose6.m[0]";
connectAttr "root_player.msg" "bindPose6.m[1]";
connectAttr "pelvis.msg" "bindPose6.m[2]";
connectAttr "spine.msg" "bindPose6.m[3]";
connectAttr "chest.msg" "bindPose6.m[4]";
connectAttr "head.msg" "bindPose6.m[5]";
connectAttr "nose.msg" "bindPose6.m[6]";
connectAttr "nose_tip.msg" "bindPose6.m[7]";
connectAttr "upperarm_l.msg" "bindPose6.m[8]";
connectAttr "lowerarm_l.msg" "bindPose6.m[9]";
connectAttr "hand_l.msg" "bindPose6.m[10]";
connectAttr "upperarm_r.msg" "bindPose6.m[11]";
connectAttr "lowerarm_r.msg" "bindPose6.m[12]";
connectAttr "hand_r.msg" "bindPose6.m[13]";
connectAttr "thigh_l.msg" "bindPose6.m[14]";
connectAttr "calf_l.msg" "bindPose6.m[15]";
connectAttr "foot_l.msg" "bindPose6.m[16]";
connectAttr "thigh_r.msg" "bindPose6.m[17]";
connectAttr "calf_r.msg" "bindPose6.m[18]";
connectAttr "foot_r.msg" "bindPose6.m[19]";
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "bindPose6.m[2]" "bindPose6.p[3]";
connectAttr "bindPose6.m[3]" "bindPose6.p[4]";
connectAttr "bindPose6.m[4]" "bindPose6.p[5]";
connectAttr "bindPose6.m[5]" "bindPose6.p[6]";
connectAttr "bindPose6.m[6]" "bindPose6.p[7]";
connectAttr "bindPose6.m[4]" "bindPose6.p[8]";
connectAttr "bindPose6.m[8]" "bindPose6.p[9]";
connectAttr "bindPose6.m[9]" "bindPose6.p[10]";
connectAttr "bindPose6.m[4]" "bindPose6.p[11]";
connectAttr "bindPose6.m[11]" "bindPose6.p[12]";
connectAttr "bindPose6.m[12]" "bindPose6.p[13]";
connectAttr "bindPose6.m[2]" "bindPose6.p[14]";
connectAttr "bindPose6.m[14]" "bindPose6.p[15]";
connectAttr "bindPose6.m[15]" "bindPose6.p[16]";
connectAttr "bindPose6.m[2]" "bindPose6.p[17]";
connectAttr "bindPose6.m[17]" "bindPose6.p[18]";
connectAttr "bindPose6.m[18]" "bindPose6.p[19]";
connectAttr "root_player.bps" "bindPose6.wm[1]";
connectAttr "pelvis.bps" "bindPose6.wm[2]";
connectAttr "spine.bps" "bindPose6.wm[3]";
connectAttr "chest.bps" "bindPose6.wm[4]";
connectAttr "head.bps" "bindPose6.wm[5]";
connectAttr "nose.bps" "bindPose6.wm[6]";
connectAttr "nose_tip.bps" "bindPose6.wm[7]";
connectAttr "upperarm_l.bps" "bindPose6.wm[8]";
connectAttr "lowerarm_l.bps" "bindPose6.wm[9]";
connectAttr "hand_l.bps" "bindPose6.wm[10]";
connectAttr "upperarm_r.bps" "bindPose6.wm[11]";
connectAttr "lowerarm_r.bps" "bindPose6.wm[12]";
connectAttr "hand_r.bps" "bindPose6.wm[13]";
connectAttr "thigh_l.bps" "bindPose6.wm[14]";
connectAttr "calf_l.bps" "bindPose6.wm[15]";
connectAttr "foot_l.bps" "bindPose6.wm[16]";
connectAttr "thigh_r.bps" "bindPose6.wm[17]";
connectAttr "calf_r.bps" "bindPose6.wm[18]";
connectAttr "foot_r.bps" "bindPose6.wm[19]";
connectAttr "layerManager.dli[3]" "controls.id";
connectAttr "spine_ik_curveShapeOrig.ws" "skinCluster2.ip[0].ig";
connectAttr "spine_ik_curveShapeOrig.l" "skinCluster2.orggeom[0]";
connectAttr "bindPose3.msg" "skinCluster2.bp";
connectAttr "pelvis_ctrljnt.wm" "skinCluster2.ma[0]";
connectAttr "mid_ctrljnt.wm" "skinCluster2.ma[1]";
connectAttr "chest_ctrljnt.wm" "skinCluster2.ma[2]";
connectAttr "pelvis_ctrljnt.liw" "skinCluster2.lw[0]";
connectAttr "mid_ctrljnt.liw" "skinCluster2.lw[1]";
connectAttr "chest_ctrljnt.liw" "skinCluster2.lw[2]";
connectAttr "pelvis_ctrljnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "mid_ctrljnt.obcc" "skinCluster2.ifcl[1]";
connectAttr "chest_ctrljnt.obcc" "skinCluster2.ifcl[2]";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "transformGeometry4.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "transformGeometry2.og" "transformGeometry3.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry7.ig";
connectAttr "Orion_testShape.w" "tweak1.ip[0].ig";
connectAttr "bindPose6.msg" "geomBind1.bp";
connectAttr "Orion_testShape.o" "skinCluster5.orggeom[0]";
connectAttr "tweak1.og[0]" "skinCluster5.ip[0].ig";
connectAttr "bindPose6.msg" "skinCluster5.bp";
connectAttr "root_player.wm" "skinCluster5.ma[0]";
connectAttr "pelvis.wm" "skinCluster5.ma[1]";
connectAttr "spine.wm" "skinCluster5.ma[2]";
connectAttr "chest.wm" "skinCluster5.ma[3]";
connectAttr "head.wm" "skinCluster5.ma[4]";
connectAttr "nose.wm" "skinCluster5.ma[5]";
connectAttr "nose_tip.wm" "skinCluster5.ma[6]";
connectAttr "upperarm_l.wm" "skinCluster5.ma[7]";
connectAttr "lowerarm_l.wm" "skinCluster5.ma[8]";
connectAttr "hand_l.wm" "skinCluster5.ma[9]";
connectAttr "upperarm_r.wm" "skinCluster5.ma[10]";
connectAttr "lowerarm_r.wm" "skinCluster5.ma[11]";
connectAttr "hand_r.wm" "skinCluster5.ma[12]";
connectAttr "thigh_l.wm" "skinCluster5.ma[13]";
connectAttr "calf_l.wm" "skinCluster5.ma[14]";
connectAttr "foot_l.wm" "skinCluster5.ma[15]";
connectAttr "thigh_r.wm" "skinCluster5.ma[16]";
connectAttr "calf_r.wm" "skinCluster5.ma[17]";
connectAttr "foot_r.wm" "skinCluster5.ma[18]";
connectAttr "root_player.liw" "skinCluster5.lw[0]";
connectAttr "pelvis.liw" "skinCluster5.lw[1]";
connectAttr "spine.liw" "skinCluster5.lw[2]";
connectAttr "chest.liw" "skinCluster5.lw[3]";
connectAttr "head.liw" "skinCluster5.lw[4]";
connectAttr "nose.liw" "skinCluster5.lw[5]";
connectAttr "nose_tip.liw" "skinCluster5.lw[6]";
connectAttr "upperarm_l.liw" "skinCluster5.lw[7]";
connectAttr "lowerarm_l.liw" "skinCluster5.lw[8]";
connectAttr "hand_l.liw" "skinCluster5.lw[9]";
connectAttr "upperarm_r.liw" "skinCluster5.lw[10]";
connectAttr "lowerarm_r.liw" "skinCluster5.lw[11]";
connectAttr "hand_r.liw" "skinCluster5.lw[12]";
connectAttr "thigh_l.liw" "skinCluster5.lw[13]";
connectAttr "calf_l.liw" "skinCluster5.lw[14]";
connectAttr "foot_l.liw" "skinCluster5.lw[15]";
connectAttr "thigh_r.liw" "skinCluster5.lw[16]";
connectAttr "calf_r.liw" "skinCluster5.lw[17]";
connectAttr "foot_r.liw" "skinCluster5.lw[18]";
connectAttr "root_player.obcc" "skinCluster5.ifcl[0]";
connectAttr "pelvis.obcc" "skinCluster5.ifcl[1]";
connectAttr "spine.obcc" "skinCluster5.ifcl[2]";
connectAttr "chest.obcc" "skinCluster5.ifcl[3]";
connectAttr "head.obcc" "skinCluster5.ifcl[4]";
connectAttr "nose.obcc" "skinCluster5.ifcl[5]";
connectAttr "nose_tip.obcc" "skinCluster5.ifcl[6]";
connectAttr "upperarm_l.obcc" "skinCluster5.ifcl[7]";
connectAttr "lowerarm_l.obcc" "skinCluster5.ifcl[8]";
connectAttr "hand_l.obcc" "skinCluster5.ifcl[9]";
connectAttr "upperarm_r.obcc" "skinCluster5.ifcl[10]";
connectAttr "lowerarm_r.obcc" "skinCluster5.ifcl[11]";
connectAttr "hand_r.obcc" "skinCluster5.ifcl[12]";
connectAttr "thigh_l.obcc" "skinCluster5.ifcl[13]";
connectAttr "calf_l.obcc" "skinCluster5.ifcl[14]";
connectAttr "foot_l.obcc" "skinCluster5.ifcl[15]";
connectAttr "thigh_r.obcc" "skinCluster5.ifcl[16]";
connectAttr "calf_r.obcc" "skinCluster5.ifcl[17]";
connectAttr "foot_r.obcc" "skinCluster5.ifcl[18]";
connectAttr "geomBind1.scs" "skinCluster5.gb";
connectAttr "nose_tip.msg" "skinCluster5.ptt";
connectAttr "layerManager.dli[2]" "bones.id";
connectAttr "CTRL_cog.wm" "multMatrix1.i[0]";
connectAttr "CTRL_ship.wim" "multMatrix1.i[1]";
connectAttr "upperarm_l_FK_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "CTRL_upperarm_l_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "upperarm_l_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "CTRL_upperarm_r_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "|rig_systems|DO_NOT_TOUCH|arm_r_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "upperarm_r_FK_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "|rig_systems|DO_NOT_TOUCH|arm_l_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "upperarm_l_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "CTRL_shoulder_l.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "skinCluster5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "CTRL_cog.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "upperarm_r_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "upperarm_r_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "CTRL_ship.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "CTRL_shoulder_r.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "multMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "upperarm_l.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "upperarm_r.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "Material.oc" "OrionSG.ss";
connectAttr "Orion_testShapeDeformed.iog" "OrionSG.dsm" -na;
connectAttr "OrionSG.msg" "materialInfo1.sg";
connectAttr "Material.msg" "materialInfo1.m";
connectAttr "Material1.oc" "OrionSG1.ss";
connectAttr "OrionSG1.msg" "materialInfo2.sg";
connectAttr "Material1.msg" "materialInfo2.m";
connectAttr "Material2.oc" "OrionSG2.ss";
connectAttr "Orion_testShape.iog" "OrionSG2.dsm" -na;
connectAttr "OrionSG2.msg" "materialInfo3.sg";
connectAttr "Material2.msg" "materialInfo3.m";
connectAttr "MT_Saucer.oc" "SaucerSG.ss";
connectAttr "SaucerSG.msg" "materialInfo4.sg";
connectAttr "MT_Saucer.msg" "materialInfo4.m";
connectAttr "Player_modelRNfosterParent1.msg" "Player_modelRN.fp";
connectAttr "sharedReferenceNode.sr" "Player_modelRN.sr";
connectAttr "bindPose7.msg" "skinCluster6.bp";
connectAttr "root_player.wm" "skinCluster6.ma[0]";
connectAttr "pelvis.wm" "skinCluster6.ma[1]";
connectAttr "spine.wm" "skinCluster6.ma[2]";
connectAttr "chest.wm" "skinCluster6.ma[3]";
connectAttr "head.wm" "skinCluster6.ma[4]";
connectAttr "nose.wm" "skinCluster6.ma[5]";
connectAttr "nose_tip.wm" "skinCluster6.ma[6]";
connectAttr "upperarm_l.wm" "skinCluster6.ma[7]";
connectAttr "lowerarm_l.wm" "skinCluster6.ma[8]";
connectAttr "hand_l.wm" "skinCluster6.ma[9]";
connectAttr "upperarm_r.wm" "skinCluster6.ma[10]";
connectAttr "lowerarm_r.wm" "skinCluster6.ma[11]";
connectAttr "hand_r.wm" "skinCluster6.ma[12]";
connectAttr "thigh_l.wm" "skinCluster6.ma[13]";
connectAttr "calf_l.wm" "skinCluster6.ma[14]";
connectAttr "foot_l.wm" "skinCluster6.ma[15]";
connectAttr "thigh_r.wm" "skinCluster6.ma[16]";
connectAttr "calf_r.wm" "skinCluster6.ma[17]";
connectAttr "foot_r.wm" "skinCluster6.ma[18]";
connectAttr "root_player.liw" "skinCluster6.lw[0]";
connectAttr "pelvis.liw" "skinCluster6.lw[1]";
connectAttr "spine.liw" "skinCluster6.lw[2]";
connectAttr "chest.liw" "skinCluster6.lw[3]";
connectAttr "head.liw" "skinCluster6.lw[4]";
connectAttr "nose.liw" "skinCluster6.lw[5]";
connectAttr "nose_tip.liw" "skinCluster6.lw[6]";
connectAttr "upperarm_l.liw" "skinCluster6.lw[7]";
connectAttr "lowerarm_l.liw" "skinCluster6.lw[8]";
connectAttr "hand_l.liw" "skinCluster6.lw[9]";
connectAttr "upperarm_r.liw" "skinCluster6.lw[10]";
connectAttr "lowerarm_r.liw" "skinCluster6.lw[11]";
connectAttr "hand_r.liw" "skinCluster6.lw[12]";
connectAttr "thigh_l.liw" "skinCluster6.lw[13]";
connectAttr "calf_l.liw" "skinCluster6.lw[14]";
connectAttr "foot_l.liw" "skinCluster6.lw[15]";
connectAttr "thigh_r.liw" "skinCluster6.lw[16]";
connectAttr "calf_r.liw" "skinCluster6.lw[17]";
connectAttr "foot_r.liw" "skinCluster6.lw[18]";
connectAttr "root_player.obcc" "skinCluster6.ifcl[0]";
connectAttr "pelvis.obcc" "skinCluster6.ifcl[1]";
connectAttr "spine.obcc" "skinCluster6.ifcl[2]";
connectAttr "chest.obcc" "skinCluster6.ifcl[3]";
connectAttr "head.obcc" "skinCluster6.ifcl[4]";
connectAttr "nose.obcc" "skinCluster6.ifcl[5]";
connectAttr "nose_tip.obcc" "skinCluster6.ifcl[6]";
connectAttr "upperarm_l.obcc" "skinCluster6.ifcl[7]";
connectAttr "lowerarm_l.obcc" "skinCluster6.ifcl[8]";
connectAttr "hand_l.obcc" "skinCluster6.ifcl[9]";
connectAttr "upperarm_r.obcc" "skinCluster6.ifcl[10]";
connectAttr "lowerarm_r.obcc" "skinCluster6.ifcl[11]";
connectAttr "hand_r.obcc" "skinCluster6.ifcl[12]";
connectAttr "thigh_l.obcc" "skinCluster6.ifcl[13]";
connectAttr "calf_l.obcc" "skinCluster6.ifcl[14]";
connectAttr "foot_l.obcc" "skinCluster6.ifcl[15]";
connectAttr "thigh_r.obcc" "skinCluster6.ifcl[16]";
connectAttr "calf_r.obcc" "skinCluster6.ifcl[17]";
connectAttr "foot_r.obcc" "skinCluster6.ifcl[18]";
connectAttr "geomBind2.scs" "skinCluster6.gb";
connectAttr "skeleton.msg" "bindPose7.m[0]";
connectAttr "root_player.msg" "bindPose7.m[1]";
connectAttr "pelvis.msg" "bindPose7.m[2]";
connectAttr "spine.msg" "bindPose7.m[3]";
connectAttr "chest.msg" "bindPose7.m[4]";
connectAttr "head.msg" "bindPose7.m[5]";
connectAttr "nose.msg" "bindPose7.m[6]";
connectAttr "nose_tip.msg" "bindPose7.m[7]";
connectAttr "upperarm_l.msg" "bindPose7.m[8]";
connectAttr "lowerarm_l.msg" "bindPose7.m[9]";
connectAttr "hand_l.msg" "bindPose7.m[10]";
connectAttr "upperarm_r.msg" "bindPose7.m[11]";
connectAttr "lowerarm_r.msg" "bindPose7.m[12]";
connectAttr "hand_r.msg" "bindPose7.m[13]";
connectAttr "thigh_l.msg" "bindPose7.m[14]";
connectAttr "calf_l.msg" "bindPose7.m[15]";
connectAttr "foot_l.msg" "bindPose7.m[16]";
connectAttr "thigh_r.msg" "bindPose7.m[17]";
connectAttr "calf_r.msg" "bindPose7.m[18]";
connectAttr "foot_r.msg" "bindPose7.m[19]";
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.m[0]" "bindPose7.p[1]";
connectAttr "bindPose7.m[1]" "bindPose7.p[2]";
connectAttr "bindPose7.m[2]" "bindPose7.p[3]";
connectAttr "bindPose7.m[3]" "bindPose7.p[4]";
connectAttr "bindPose7.m[4]" "bindPose7.p[5]";
connectAttr "bindPose7.m[5]" "bindPose7.p[6]";
connectAttr "bindPose7.m[6]" "bindPose7.p[7]";
connectAttr "bindPose7.m[4]" "bindPose7.p[8]";
connectAttr "bindPose7.m[8]" "bindPose7.p[9]";
connectAttr "bindPose7.m[9]" "bindPose7.p[10]";
connectAttr "bindPose7.m[4]" "bindPose7.p[11]";
connectAttr "bindPose7.m[11]" "bindPose7.p[12]";
connectAttr "bindPose7.m[12]" "bindPose7.p[13]";
connectAttr "bindPose7.m[2]" "bindPose7.p[14]";
connectAttr "bindPose7.m[14]" "bindPose7.p[15]";
connectAttr "bindPose7.m[15]" "bindPose7.p[16]";
connectAttr "bindPose7.m[2]" "bindPose7.p[17]";
connectAttr "bindPose7.m[17]" "bindPose7.p[18]";
connectAttr "bindPose7.m[18]" "bindPose7.p[19]";
connectAttr "bindPose7.msg" "geomBind2.bp";
connectAttr "bindPose8.msg" "skinCluster7.bp";
connectAttr "root_ship.wm" "skinCluster7.ma[0]";
connectAttr "ship.wm" "skinCluster7.ma[1]";
connectAttr "root_ship.liw" "skinCluster7.lw[0]";
connectAttr "ship.liw" "skinCluster7.lw[1]";
connectAttr "root_ship.obcc" "skinCluster7.ifcl[0]";
connectAttr "ship.obcc" "skinCluster7.ifcl[1]";
connectAttr "geomBind3.scs" "skinCluster7.gb";
connectAttr "skeleton.msg" "bindPose8.m[0]";
connectAttr "root_ship.msg" "bindPose8.m[1]";
connectAttr "ship.msg" "bindPose8.m[2]";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.msg" "geomBind3.bp";
connectAttr "OrionSG.pa" ":renderPartition.st" -na;
connectAttr "OrionSG1.pa" ":renderPartition.st" -na;
connectAttr "OrionSG2.pa" ":renderPartition.st" -na;
connectAttr "SaucerSG.pa" ":renderPartition.st" -na;
connectAttr "Material.msg" ":defaultShaderList1.s" -na;
connectAttr "Material1.msg" ":defaultShaderList1.s" -na;
connectAttr "Material2.msg" ":defaultShaderList1.s" -na;
connectAttr "MT_Saucer.msg" ":defaultShaderList1.s" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "groupId6.msg" ":defaultLastHiddenSet.gn" -na;
connectAttr "groupId46.msg" ":defaultLastHiddenSet.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of Player_rig.ma

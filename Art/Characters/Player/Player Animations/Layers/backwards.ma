//Maya ASCII 2023 scene
//Name: backwards.ma
//Last modified: Sat, Feb 01, 2025 05:56:41 PM
//Codeset: 1252
requires maya "2023";
requires "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "83FDB075-44F0-E32C-8135-63BB36864CE7";
createNode animLayer -n "Backwards";
	rename -uid "4AAB9599-48F0-61CF-C3AC-D9AE49B7564C";
	setAttr -s 122 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
	setAttr ".pref" yes;
	setAttr ".slct" yes;
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
createNode animBlendNodeBoolean -n "CTRL_ship_visibility_Backwards";
	rename -uid "E02DBE84-48E4-287C-8541-7C8057A76E40";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.visibility";
	setAttr ".ia" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateX_Backwards";
	rename -uid "42003366-40E7-F33A-1F84-77A5F81B862C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.translateX";
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateY_Backwards";
	rename -uid "B663B45D-4CD9-01A4-4315-3381283A9812";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.translateY";
	setAttr ".ia" 7.7324409022747389;
	setAttr ".o" 7.7324409022747389;
createNode animBlendNodeAdditiveDL -n "CTRL_ship_translateZ_Backwards";
	rename -uid "6C06FA5B-42A0-6923-09F9-68B0EF318A6C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.translateZ";
createNode animBlendNodeAdditiveRotation -n "CTRL_ship_rotate_Backwards";
	rename -uid "3F8F559B-4739-BEA3-2BC4-3B9A9FE26C11";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_ship.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_ship.rotateZ";
	setAttr ".ia" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
	setAttr ".o" -type "double3" 1.4535462493584719 -0.32895312696982831 0.56392364927142025 ;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleX_Backwards";
	rename -uid "474DD780-47F7-B897-B969-C78E94E0043D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.scaleX";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleY_Backwards";
	rename -uid "0FE09AA9-473F-4334-72CA-A4AB834F73C7";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.scaleY";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "CTRL_ship_scaleZ_Backwards";
	rename -uid "3C9526C3-463A-887E-E48F-038DB3D1CE99";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_ship.scaleZ";
	setAttr ".ia" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_cog_visibility_Backwards";
	rename -uid "84BAB9B2-4F1D-CFB9-BBBF-388C3ABE4A65";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateX_Backwards";
	rename -uid "D788B713-429E-646D-C508-A6BCC6597EE6";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateY_Backwards";
	rename -uid "0DD5A09C-4A70-32D7-5125-169DF9FAABC9";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.translateY";
	setAttr ".ia" 17.120646586352922;
	setAttr ".o" 17.120646586352922;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_cog_translateZ_Backwards";
	rename -uid "25A714E9-49C5-8992-F658-A284D51DE3B0";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.translateZ";
	setAttr ".ia" 42.732596728486634;
	setAttr ".o" 42.732596728486634;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_cog_rotate_Backwards";
	rename -uid "941C51AA-4A63-29D3-4BE4-C9920E474579";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_cog.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_cog.rotateZ";
	setAttr ".ia" -type "double3" -31.182622079585563 0 0 ;
	setAttr ".o" -type "double3" -31.182622079585563 0 0 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleX_Backwards";
	rename -uid "291CF39D-4D1B-4E47-6CFD-C6B05A26FD22";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleY_Backwards";
	rename -uid "812E3B12-4B5B-6ACE-D94C-DB83A16E1F38";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_cog_scaleZ_Backwards";
	rename -uid "51E02A03-444F-9474-7D5E-06853F143340";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "Player_rig:CTRL_cog_IKFK_Switch_Backwards";
	rename -uid "083E1383-463C-22CB-5D3F-38822F1ED603";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_cog.IKFK_Switch";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_pelvis_IK_visibility_Backwards";
	rename -uid "BBB5CCB7-4506-7CF1-F408-4F8C8C916BF0";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateX_Backwards";
	rename -uid "41EE1485-4FF2-88C0-9487-358CC664321F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateY_Backwards";
	rename -uid "58726F5A-4DDD-29E0-3E64-08835F19B531";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.translateY";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_pelvis_IK_translateZ_Backwards";
	rename -uid "CB1D9BC5-4F33-B91F-FB6B-5AA4F94A7432";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_pelvis_IK_rotate_Backwards";
	rename -uid "BCCBC32B-4AE9-073C-B51D-BDB7E0DC9FB3";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_pelvis_IK.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_pelvis_IK.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleX_Backwards";
	rename -uid "C6A952DA-4FAA-F166-743B-52B78BEDD62E";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleY_Backwards";
	rename -uid "317E0728-42FA-9A15-CE7C-91AC68CE28CD";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards";
	rename -uid "0FAD6822-4D3C-A046-4303-47AA1337A234";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_pelvis_IK.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_l_IK_visibility_Backwards";
	rename -uid "56508E6D-4E98-4863-4D27-B0B58C804562";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateX_Backwards";
	rename -uid "92174885-44A4-5D38-0655-15913B051880";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.translateX";
	setAttr ".ia" 3.9234979515293724;
	setAttr ".o" 3.9234979515293724;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateY_Backwards";
	rename -uid "EECDE143-4225-B0F2-07DB-66A5386C9332";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.translateY";
	setAttr ".ia" 19.480556366999902;
	setAttr ".o" 19.480556366999902;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_l_IK_translateZ_Backwards";
	rename -uid "6E634B48-41E4-CDD1-2F0A-219A976C3C16";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.translateZ";
	setAttr ".ia" 40.818313214920593;
	setAttr ".o" 40.818313214920593;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_l_IK_rotate_Backwards";
	rename -uid "70AFC2AE-4E58-004C-5A7E-53BF84A8C8E1";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_foot_l_IK.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_foot_l_IK.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleX_Backwards";
	rename -uid "21277878-437C-D13C-DA17-B0B44D222138";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleY_Backwards";
	rename -uid "7F64F49A-4ADB-D5E6-A05B-90BB5142C5DA";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards";
	rename -uid "679881B4-4F3D-AC5F-DA82-F69312BE207D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_l_IK.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_foot_r_IK_visibility_Backwards";
	rename -uid "2520E5DD-4F5E-E3F7-9286-9581C9F8B7A3";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateX_Backwards";
	rename -uid "173CF044-41D6-53B5-BB8E-4E86121E3F8C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.translateX";
	setAttr ".ia" -4.7651503572206479;
	setAttr ".o" -4.7651503572206479;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateY_Backwards";
	rename -uid "A7202B71-409C-6F80-567C-CEA2CD677E8D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.translateY";
	setAttr ".ia" 19.601910670797466;
	setAttr ".o" 19.601910670797466;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_foot_r_IK_translateZ_Backwards";
	rename -uid "797797F1-432A-1479-D02F-80AF1821966F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.translateZ";
	setAttr ".ia" 40.791937383280199;
	setAttr ".o" 40.791937383280199;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_foot_r_IK_rotate_Backwards";
	rename -uid "070A2B5C-4317-60F8-E340-FC9A39DC014A";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_foot_r_IK.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_foot_r_IK.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleX_Backwards";
	rename -uid "AC08F375-4169-8EDE-21D2-01974CEAC5D4";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleY_Backwards";
	rename -uid "55323DCC-422E-46C8-E5DB-F9807DE685E1";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards";
	rename -uid "F2062777-4397-F2E8-4047-2CB11CC5146D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_foot_r_IK.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_spine_IK_visibility_Backwards";
	rename -uid "DEE6997C-41D5-5777-6964-B18332A0147A";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateX_Backwards";
	rename -uid "E077E546-4709-C52C-B04C-85BAB1405705";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.translateX";
	setAttr ".ia" -1.4823076576950256e-21;
	setAttr ".o" -1.4823076576950256e-21;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateY_Backwards";
	rename -uid "FE1FDDE2-4263-C6BE-024C-4D8DA5537CF6";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.translateY";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_spine_IK_translateZ_Backwards";
	rename -uid "1678C342-4EBF-A134-6427-9796C11F868C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_spine_IK_rotate_Backwards";
	rename -uid "7DCE0AF7-45C5-18A9-B9A0-0CA2B84077E0";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_spine_IK.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_spine_IK.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleX_Backwards";
	rename -uid "92F69E30-42F8-3B7D-D453-B68F37E2593F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleY_Backwards";
	rename -uid "102C451F-4338-844D-F656-538F586433BF";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_spine_IK_scaleZ_Backwards";
	rename -uid "4510C7D2-463A-0D64-90CC-EAACE133EA68";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_spine_IK.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_chest_IK_visibility_Backwards";
	rename -uid "211A8FD6-4C24-52E9-A559-558B2121E27C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateX_Backwards";
	rename -uid "61033658-467B-7A23-2EBE-7887082A701D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.translateX";
	setAttr ".ia" -4.4408935808082839e-15;
	setAttr ".o" -4.4408935808082839e-15;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateY_Backwards";
	rename -uid "1CA78B96-47DA-B58D-06BE-58897B01907F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.translateY";
	setAttr ".ia" -4.9737991503207013e-14;
	setAttr ".o" -4.9737991503207013e-14;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_chest_IK_translateZ_Backwards";
	rename -uid "D631ABA8-4151-C0D7-1870-B2B8F0D84F02";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.translateZ";
	setAttr ".ia" -4.2632564145606011e-14;
	setAttr ".o" -4.2632564145606011e-14;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_chest_IK_rotate_Backwards";
	rename -uid "903883A5-4396-7202-E9AA-639691D30FDE";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_chest_IK.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_chest_IK.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleX_Backwards";
	rename -uid "5933EDE9-4479-AB36-5606-3B9247D85121";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleY_Backwards";
	rename -uid "3BE20A71-460D-3808-8C5D-1B8CED5C3567";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_chest_IK_scaleZ_Backwards";
	rename -uid "418B011F-492D-5F6B-B108-32903E284D1E";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_chest_IK.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_ik_visibility_Backwards";
	rename -uid "683218A9-4439-C4F3-8579-BBA7804641BA";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateX_Backwards";
	rename -uid "7BEEC5AC-4C35-B02E-2048-95A486EA2D04";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.translateX";
	setAttr ".ia" -15.603718582025152;
	setAttr ".o" -15.603718582025152;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateY_Backwards";
	rename -uid "2BEB58C4-44D8-8A63-5B76-D5970E7D07C1";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.translateY";
	setAttr ".ia" 16.940860047964492;
	setAttr ".o" 16.940860047964492;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_ik_translateZ_Backwards";
	rename -uid "06D1B7AE-4693-8420-DAD4-4AA0A7E3C426";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.translateZ";
	setAttr ".ia" 46.796849321356355;
	setAttr ".o" 46.796849321356355;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_ik_rotate_Backwards";
	rename -uid "EC2402D3-4A95-1F39-DD7D-72A6BC30FF10";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_arm_l_ik.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_arm_l_ik.rotateZ";
	setAttr ".ia" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
	setAttr ".o" -type "double3" 282.83927719201836 -70.896557113158821 -281.79314300218812 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleX_Backwards";
	rename -uid "35E16935-42A5-FD47-0299-8E890E665C5B";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleY_Backwards";
	rename -uid "61A3CB01-41DE-EBE4-392F-1ABF19294DCB";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards";
	rename -uid "EBD424D7-4CB7-3922-15B5-B18F2CD78703";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_ik.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_l_visibility_Backwards";
	rename -uid "FEBB63CD-4ADE-A090-671B-978AFC2D055B";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateX_Backwards";
	rename -uid "4EDD806C-46D1-A262-202C-888C938E9B85";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateY_Backwards";
	rename -uid "E9065916-479E-5D06-AEAC-C9873880EDD1";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.translateY";
	setAttr ".ia" 0.25681711619216685;
	setAttr ".o" 0.25681711619216685;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_l_translateZ_Backwards";
	rename -uid "3A934C3E-4011-7EE3-0928-FD886D7FDEB5";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_l_rotate_Backwards";
	rename -uid "E4456116-495C-F3D7-32F4-C6927E7BC74F";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_shoulder_l.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_shoulder_l.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleX_Backwards";
	rename -uid "5283C345-4F01-E829-741F-E583FB93C124";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleY_Backwards";
	rename -uid "591B41AF-421A-0DD0-2FF7-B2A61F518E50";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_l_scaleZ_Backwards";
	rename -uid "03E577B2-4DF5-1714-3C2D-DDA307A56A82";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_l.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_shoulder_r_visibility_Backwards";
	rename -uid "3211FE23-4D30-407F-FDC4-1BA2B3060D99";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateX_Backwards";
	rename -uid "C06B49EE-4655-442D-F792-3E84F362FF2C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateY_Backwards";
	rename -uid "78B1AE75-48B5-C8B6-314E-63938CE5B320";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.translateY";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_shoulder_r_translateZ_Backwards";
	rename -uid "3638397F-4F8C-B0E4-9B86-7590834B0415";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_shoulder_r_rotate_Backwards";
	rename -uid "8D23AC5B-464F-41EF-05E0-4DAE3A65982D";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_shoulder_r.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_shoulder_r.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleX_Backwards";
	rename -uid "BE28F09F-4B5C-982F-AA6A-F3A631D572BD";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleY_Backwards";
	rename -uid "DFAAFCD9-4758-3D3B-C1A1-CA8E8CC18681";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_shoulder_r_scaleZ_Backwards";
	rename -uid "E30A8EBA-4A44-88D0-DB31-8A9A525ECB3A";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_shoulder_r.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_ik_visibility_Backwards";
	rename -uid "63ED5A89-49FE-9063-10D9-3A97FA50C0AA";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateX_Backwards";
	rename -uid "291F522D-48C8-1AE1-6132-D0B10AC24A6D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.translateX";
	setAttr ".ia" 12.016799782099241;
	setAttr ".o" 12.016799782099241;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateY_Backwards";
	rename -uid "4E9FC058-4413-8739-9856-039BD40882BC";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.translateY";
	setAttr ".ia" 16.84285013492012;
	setAttr ".o" 16.84285013492012;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_ik_translateZ_Backwards";
	rename -uid "A5602753-42FA-74B4-2E6A-0797E31C9368";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.translateZ";
	setAttr ".ia" 49.012460383164104;
	setAttr ".o" 49.012460383164104;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_ik_rotate_Backwards";
	rename -uid "390B2766-4416-DB8D-363F-33885605ACC5";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_arm_r_ik.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_arm_r_ik.rotateZ";
	setAttr ".ia" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
	setAttr ".o" -type "double3" 137.59174808663093 74.805898852428697 130.54235203125586 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleX_Backwards";
	rename -uid "789E0E3E-47DE-F6E5-2B90-879A9978746A";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleY_Backwards";
	rename -uid "4C76DFE8-48C0-8518-BD34-E9B33E55F947";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards";
	rename -uid "90BC0057-495E-3B13-9F89-EDAA82D9B5F2";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_ik.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_head_visibility_Backwards";
	rename -uid "9C4C255B-46C6-7126-C37F-18AD7F247390";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateX_Backwards";
	rename -uid "B20DAD34-4707-24DA-357C-EDB5E327698F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateY_Backwards";
	rename -uid "4A1B6057-49F4-F037-B534-FD8EC364E61D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.translateY";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_head_translateZ_Backwards";
	rename -uid "0AD8F2B9-4500-D675-D3C3-CE99427E8ABA";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_head_rotate_Backwards";
	rename -uid "748BB2E1-42E7-896B-FBF9-A1A30F7A3524";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_head.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_head.rotateZ";
	setAttr ".ia" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
	setAttr ".o" -type "double3" 26.442159716050732 -1.1357852912039743 -2.0148425256581382 ;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleX_Backwards";
	rename -uid "211103B1-46D0-70EC-777D-67A7A11D3049";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleY_Backwards";
	rename -uid "78E8BF44-45CA-A046-C034-0987E4AD5ED6";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_head_scaleZ_Backwards";
	rename -uid "A78BB731-41C0-0173-CBF9-4E92A49B3AB6";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeEnum -n "Player_rig:CTRL_head_Orient_Backwards";
	rename -uid "E35C1A4E-494C-59A6-F03D-099B20D5CE50";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_head.Orient";
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_r_pole_visibility_Backwards";
	rename -uid "E50CF069-40AF-D007-5CA9-3FA0658A78CF";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateX_Backwards";
	rename -uid "A64BFED6-4061-7E1C-25D7-7F87B8717190";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.translateX";
	setAttr ".ia" 0.094454297336254517;
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateY_Backwards";
	rename -uid "7CF72DC2-4AC3-81E6-6421-5FA1236AD607";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.translateY";
	setAttr ".ia" 8.3107816815941185;
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_r_pole_translateZ_Backwards";
	rename -uid "3EBF5AAE-4D48-105F-4F43-19B457FA967D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.translateZ";
	setAttr ".ia" 7.12276893256238;
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_r_pole_rotate_Backwards";
	rename -uid "4D4FF48A-4FBD-3D19-E2A1-FCB7A60B5511";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_arm_r_pole.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_arm_r_pole.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleX_Backwards";
	rename -uid "25B3B596-411C-E366-A479-BC98DA320780";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleY_Backwards";
	rename -uid "DB35E4B7-446A-5ACE-1EF6-858374149C98";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards";
	rename -uid "DC5970CD-46AA-DAB2-714A-8898EA6C4D6D";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_r_pole.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_root_visibility_Backwards";
	rename -uid "6E855A86-4EE6-4481-D4E5-B8AEB5A6EC81";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateX_Backwards";
	rename -uid "504B9CE2-4622-464D-C4C8-35A24B7C2305";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.translateX";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateY_Backwards";
	rename -uid "8E731AB5-4269-8687-B9B4-6B940A240A16";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.translateY";
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_root_translateZ_Backwards";
	rename -uid "33B31854-4CD5-F6FD-9A8D-AAA4A503003F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.translateZ";
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_root_rotate_Backwards";
	rename -uid "E74A4347-4B00-7FC4-B116-D6B1276AFF5A";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_root.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_root.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleX_Backwards";
	rename -uid "F9BC2D98-4CF1-E2AD-0236-0B8A8A92E654";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleY_Backwards";
	rename -uid "FA32A28E-42D7-D39D-43AB-DF86A28E8D7C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_root_scaleZ_Backwards";
	rename -uid "FEC382D7-47FC-EF74-FC71-B2A2FAB7CCC3";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_root.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Player_rig:CTRL_arm_l_pole_visibility_Backwards";
	rename -uid "25506E81-4D35-3BFA-D906-64B783F4EA51";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.visibility";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateX_Backwards";
	rename -uid "09A4FD29-435C-C2F5-70B1-B39A343D871E";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.translateX";
	setAttr ".ia" 0.094454297336254517;
	setAttr ".o" 0.094454297336254517;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateY_Backwards";
	rename -uid "9FBFE935-4D37-51C2-1F33-978213D0F341";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.translateY";
	setAttr ".ia" 8.3107816815941185;
	setAttr ".o" 8.3107816815941185;
createNode animBlendNodeAdditiveDL -n "Player_rig:CTRL_arm_l_pole_translateZ_Backwards";
	rename -uid "6F5A9CC8-4CE1-02B8-8C9C-A793770DCDF0";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.translateZ";
	setAttr ".ia" 7.12276893256238;
	setAttr ".o" 7.12276893256238;
createNode animBlendNodeAdditiveRotation -n "Player_rig:CTRL_arm_l_pole_rotate_Backwards";
	rename -uid "513FE52A-4077-3930-6FE8-8F8144E5BEE6";
	setAttr -s 3 ".dp";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.rotateX";
	setAttr ".dp[1]" -type "string" "Player_rig:CTRL_arm_l_pole.rotateY";
	setAttr ".dp[2]" -type "string" "Player_rig:CTRL_arm_l_pole.rotateZ";
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleX_Backwards";
	rename -uid "AA84C0D0-4257-0C14-5F99-79B1F860861C";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.scaleX";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleY_Backwards";
	rename -uid "11AE0885-4367-8A65-B2A4-6793D385D00F";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.scaleY";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards";
	rename -uid "F39F4438-47FA-3B48-32AC-4386696899C1";
	setAttr ".dp[0]" -type "string" "Player_rig:CTRL_arm_l_pole.scaleZ";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
select -ne :time1;
	setAttr ".o" 17;
	setAttr ".unw" 17;
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
connectAttr "CTRL_ship_visibility_Backwards_inputB.o" "CTRL_ship_visibility_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateX_Backwards.wb";
connectAttr "CTRL_ship_translateX_Backwards_inputB.o" "CTRL_ship_translateX_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateY_Backwards.wb";
connectAttr "CTRL_ship_translateY_Backwards_inputB.o" "CTRL_ship_translateY_Backwards.ib"
		;
connectAttr "Backwards.bgwt" "CTRL_ship_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "CTRL_ship_translateZ_Backwards.wb";
connectAttr "CTRL_ship_translateZ_Backwards_inputB.o" "CTRL_ship_translateZ_Backwards.ib"
		;
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
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_cog_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_cog_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_cog_IKFK_Switch_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_cog_IKFK_Switch_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_pelvis_IK_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_l_IK_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_foot_r_IK_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_spine_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_spine_IK_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_chest_IK_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_chest_IK_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_ik_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_shoulder_l_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_l_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_shoulder_r_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_shoulder_r_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_ik_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_head_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_head_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_head_Orient_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_head_Orient_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_r_pole_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_visibility_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_visibility_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateX_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateY_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_translateZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_translateZ_Backwards.wb";
connectAttr "Backwards.oram" "Player_rig:CTRL_root_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_root_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_root_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_root_scaleZ_Backwards.wb";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_visibility_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_visibility_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateX_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateX_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateY_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateY_Backwards.wb"
		;
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.wa"
		;
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_translateZ_Backwards.wb"
		;
connectAttr "Backwards.oram" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_rotate_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleX_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleY_Backwards.wb";
connectAttr "Backwards.sam" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.acm";
connectAttr "Backwards.bgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.wa";
connectAttr "Backwards.fgwt" "Player_rig:CTRL_arm_l_pole_scaleZ_Backwards.wb";
// End of backwards.ma

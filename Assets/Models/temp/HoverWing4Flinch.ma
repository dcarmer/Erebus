//Maya ASCII 2017 scene
//Name: HoverWing4Flinch.ma
//Last modified: Sun, May 07, 2017 11:38:11 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "1.3.0.0";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "39D4F524-43DA-0E41-D3AF-EEAAB2B01FDC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.3749035246721202 1.9941935418601358 4.7940106250671537 ;
	setAttr ".r" -type "double3" -17.738352819139809 2486.6000000024505 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "124D2173-4274-2D4D-445F-86ACC4E83EE5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 6.4452894905864344;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "05642567-4D56-8807-962B-35A14D0ACDC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.055938388182089793 10.001000000000001 0.36762034787965109 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "429AA999-4DAF-D347-84DB-3D8F2EE2C76B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 5.9826430221407803;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "514437AE-4A85-AF0D-1C18-EB9A9D3D5A1B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6AB4FA5F-4890-AEAE-1D64-6FB67FE1E779";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 5.3121758460148305;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A4BC07B8-492C-5CDC-7B4F-73A2101AF9EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 1.4820956192974495 -1.6912404937158454 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BEE288B8-4AA1-0931-74EE-6E99B5F2E11A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 4.3386256423653426;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "HoverWing";
	rename -uid "85F959CC-4037-3661-AD96-D6ADA43C26A2";
	setAttr ".t" -type "double3" -4.0956755023460287 0 0 ;
	setAttr ".rp" -type "double3" -0.081999205483373597 0.3257865309344315 -0.015836885452142725 ;
	setAttr ".sp" -type "double3" -0.081999205483373597 0.3257865309344315 -0.015836885452142725 ;
createNode transform -n "HeadAssembly" -p "HoverWing";
	rename -uid "61FAC859-483E-6979-F4DA-7D8ED435F720";
	setAttr ".rp" -type "double3" -0.55104086284574383 -0.10094290454995433 -0.005554804003920109 ;
	setAttr ".rpt" -type "double3" 0.031045395350379711 -0.10748026184246234 0 ;
	setAttr ".sp" -type "double3" -1.4878686311093816 -0.33762404805286961 -0.016004363036264665 ;
	setAttr ".spt" -type "double3" 0.93682776826363778 0.23668114350291533 0.010449559032344555 ;
createNode transform -n "Eyes" -p "HeadAssembly";
	rename -uid "AB216A2A-439C-5FC2-39DE-6CA660397EDE";
	setAttr ".t" -type "double3" 0.94467303478359599 -0.61955286010288602 -0.0032193445585520322 ;
	setAttr ".r" -type "double3" -9.2952769451271529 -90 0 ;
	setAttr ".s" -type "double3" 1.4205576086348066 1.6377208170711495 1.3405310598500773 ;
	setAttr ".sh" -type "double3" 0 0 0.084021063906381671 ;
	setAttr ".rp" -type "double3" -0.012785018477713239 0.67911230574913617 1.777285591944902 ;
	setAttr ".rpt" -type "double3" -1.6314711998505729 0.27815416062457488 -1.7900706104226145 ;
	setAttr ".sp" -type "double3" -0.0089999999999999854 0.32348790705114794 1.3258070962888924 ;
	setAttr ".spt" -type "double3" -0.0037850184777132542 0.35562439869798818 0.45147849565600984 ;
createNode transform -n "SmallLeft" -p "Eyes";
	rename -uid "A6C2F2E9-4454-CDE5-1A83-33A50B9141D8";
	setAttr ".t" -type "double3" 0.15 0.25 1.5 ;
createNode mesh -n "SmallLeftShape" -p "SmallLeft";
	rename -uid "F2B9098F-4BC6-5871-C4CC-929FC8A36625";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SmallRight" -p "Eyes";
	rename -uid "5775517F-40FD-85B3-F87E-5395307FE82A";
	setAttr ".t" -type "double3" -0.15 0.25 1.5 ;
createNode mesh -n "SmallRightShape" -p "SmallRight";
	rename -uid "96611BB8-4816-D4D9-CDA6-A998FC39DC53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "BigEyes" -p "Eyes";
	rename -uid "5178485D-4F57-4A71-1E89-CE87FE0AFCC4";
	setAttr ".s" -type "double3" 1.4228236647844386 1.4228236647844386 1.4228236647844386 ;
	setAttr ".rp" -type "double3" -0.0090000000000000566 0.32348790705114783 1.3258070962888924 ;
	setAttr ".sp" -type "double3" -0.0090000000000000566 0.32348790705114783 1.3258070962888924 ;
createNode transform -n "BigLeft" -p "BigEyes";
	rename -uid "DED4CBF8-4DB0-A70A-D309-B7ACDD3E2E7E";
	setAttr ".t" -type "double3" 0.4 0.36510863061211324 1.3245491260942612 ;
	setAttr ".r" -type "double3" -1.6888441067189413 7.5904593595005707 12.269136760224299 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "BigLeftShape" -p "BigLeft";
	rename -uid "7183CC3A-4149-C30E-B86E-8B91B7DE7E06";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.80000007152557373 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt";
	setAttr ".pt[41]" -type "float3" 0.00023638377 -0.0022895273 7.1157876e-005 ;
	setAttr ".pt[44]" -type "float3" -0.00019190955 0 -2.444589e-005 ;
	setAttr ".pt[50]" -type "float3" -0.0098400963 -0.031386558 -0.0014172754 ;
	setAttr ".pt[51]" -type "float3" -0.0078748073 -0.071785837 0.0056360983 ;
	setAttr ".pt[52]" -type "float3" -0.0071110851 -0.060319036 0.0034663877 ;
	setAttr ".pt[53]" -type "float3" -0.0096072722 -0.070313327 0.0011917986 ;
	setAttr ".pt[54]" -type "float3" -0.012194251 -0.068075366 0.00023316234 ;
	setAttr ".pt[55]" -type "float3" -0.014268861 -0.054459982 0.00090760848 ;
	setAttr ".pt[56]" -type "float3" -0.016584856 -0.034667779 0.0027605633 ;
	setAttr ".pt[57]" -type "float3" -0.017762076 -0.016258715 0.0051473831 ;
	setAttr ".pt[58]" -type "float3" -0.016684182 -0.0062644253 0.0072413087 ;
	setAttr ".pt[59]" -type "float3" -0.013762896 -0.0085023846 0.0082425289 ;
	setAttr ".pt[60]" -type "float3" -0.026573826 -0.039272122 -0.0070870291 ;
	setAttr ".pt[61]" -type "float3" -0.024902064 -0.073637806 -0.0010870697 ;
	setAttr ".pt[62]" -type "float3" -0.047568269 -0.10589927 0.0022706857 ;
	setAttr ".pt[63]" -type "float3" -0.042076916 -0.12373375 0.0072878487 ;
	setAttr ".pt[64]" -type "float3" -0.037618779 -0.12032907 0.0085968347 ;
	setAttr ".pt[65]" -type "float3" -0.035896704 -0.096985705 0.0056976574 ;
	setAttr ".pt[66]" -type "float3" -0.010475207 -0.062620029 0.0031489003 ;
	setAttr ".pt[67]" -type "float3" -0.014902256 -0.030358555 -0.0036600565 ;
	setAttr ".pt[68]" -type "float3" -0.020393617 -0.012524091 -0.0086772228 ;
	setAttr ".pt[69]" -type "float3" -0.024851754 -0.015928764 -0.0099862097 ;
	setAttr ".pt[70]" -type "float3" -0.038662083 -0.056942783 -0.01049776 ;
	setAttr ".pt[71]" -type "float3" -0.037447467 -0.081910886 -0.0061385348 ;
	setAttr ".pt[72]" -type "float3" -0.034231029 -0.097807989 -0.0011915371 ;
	setAttr ".pt[73]" -type "float3" -0.030241329 -0.11076552 0.0024536476 ;
	setAttr ".pt[74]" -type "float3" -0.027002294 -0.10829186 0.0034046825 ;
	setAttr ".pt[75]" -type "float3" -0.02575114 -0.091331884 0.0012983033 ;
	setAttr ".pt[76]" -type "float3" -0.026965747 -0.066363767 -0.0030609213 ;
	setAttr ".pt[77]" -type "float3" -0.030182192 -0.05046669 -0.0080079176 ;
	setAttr ".pt[78]" -type "float3" -0.03417189 -0.037509184 -0.011653101 ;
	setAttr ".pt[79]" -type "float3" -0.037410922 -0.039982822 -0.012604136 ;
	setAttr ".pt[80]" -type "float3" -0.044921562 -0.088239625 -0.011315601 ;
	setAttr ".pt[81]" -type "float3" -0.04428301 -0.10136612 -0.009023821 ;
	setAttr ".pt[82]" -type "float3" -0.042592019 -0.11368891 -0.00642303 ;
	setAttr ".pt[83]" -type "float3" -0.040494513 -0.12050107 -0.0045066439 ;
	setAttr ".pt[84]" -type "float3" -0.038791653 -0.1192006 -0.0040066536 ;
	setAttr ".pt[85]" -type "float3" -0.038133882 -0.11028422 -0.0051140441 ;
	setAttr ".pt[86]" -type "float3" -0.038772441 -0.097157694 -0.0074058245 ;
	setAttr ".pt[87]" -type "float3" -0.040463429 -0.084834926 -0.010006615 ;
	setAttr ".pt[88]" -type "float3" -0.042560931 -0.078022771 -0.011923001 ;
	setAttr ".pt[89]" -type "float3" -0.044263791 -0.079323247 -0.012422988 ;
	setAttr ".pt[91]" -type "float3" -0.044739559 -0.10470723 -0.0094604995 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "BigRight" -p "BigEyes";
	rename -uid "1D37C995-434B-8C3D-EDDC-589E51A32006";
	setAttr ".t" -type "double3" -0.418 0.36510863061211324 1.3270650664835235 ;
	setAttr ".r" -type "double3" 178.31115589328107 -7.5904593595005645 167.73086323977572 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "BigRightShape" -p "BigRight";
	rename -uid "1B6CA3E7-46D8-D4E7-15E7-8F8F0CAE028B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.80000007152557373 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt";
	setAttr ".pt[41]" -type "float3" 0.00023638377 -0.0022895273 7.1157876e-005 ;
	setAttr ".pt[44]" -type "float3" -0.00019190955 0 -2.444589e-005 ;
	setAttr ".pt[50]" -type "float3" -0.0098400963 -0.031386558 -0.0014172754 ;
	setAttr ".pt[51]" -type "float3" -0.0078748073 -0.071785837 0.0056360983 ;
	setAttr ".pt[52]" -type "float3" -0.0071110851 -0.060319036 0.0034663877 ;
	setAttr ".pt[53]" -type "float3" -0.0096072722 -0.070313327 0.0011917986 ;
	setAttr ".pt[54]" -type "float3" -0.012194251 -0.068075366 0.00023316234 ;
	setAttr ".pt[55]" -type "float3" -0.014268861 -0.054459982 0.00090760848 ;
	setAttr ".pt[56]" -type "float3" -0.016584856 -0.034667779 0.0027605633 ;
	setAttr ".pt[57]" -type "float3" -0.017762076 -0.016258715 0.0051473831 ;
	setAttr ".pt[58]" -type "float3" -0.016684182 -0.0062644253 0.0072413087 ;
	setAttr ".pt[59]" -type "float3" -0.013762896 -0.0085023846 0.0082425289 ;
	setAttr ".pt[60]" -type "float3" -0.026573826 -0.039272122 -0.0070870291 ;
	setAttr ".pt[61]" -type "float3" -0.024902064 -0.073637806 -0.0010870697 ;
	setAttr ".pt[62]" -type "float3" -0.047568269 -0.10589927 0.0022706857 ;
	setAttr ".pt[63]" -type "float3" -0.042076916 -0.12373375 0.0072878487 ;
	setAttr ".pt[64]" -type "float3" -0.037618779 -0.12032907 0.0085968347 ;
	setAttr ".pt[65]" -type "float3" -0.035896704 -0.096985705 0.0056976574 ;
	setAttr ".pt[66]" -type "float3" -0.010475207 -0.062620029 0.0031489003 ;
	setAttr ".pt[67]" -type "float3" -0.014902256 -0.030358555 -0.0036600565 ;
	setAttr ".pt[68]" -type "float3" -0.020393617 -0.012524091 -0.0086772228 ;
	setAttr ".pt[69]" -type "float3" -0.024851754 -0.015928764 -0.0099862097 ;
	setAttr ".pt[70]" -type "float3" -0.038662083 -0.056942783 -0.01049776 ;
	setAttr ".pt[71]" -type "float3" -0.037447467 -0.081910886 -0.0061385348 ;
	setAttr ".pt[72]" -type "float3" -0.034231029 -0.097807989 -0.0011915371 ;
	setAttr ".pt[73]" -type "float3" -0.030241329 -0.11076552 0.0024536476 ;
	setAttr ".pt[74]" -type "float3" -0.027002294 -0.10829186 0.0034046825 ;
	setAttr ".pt[75]" -type "float3" -0.02575114 -0.091331884 0.0012983033 ;
	setAttr ".pt[76]" -type "float3" -0.026965747 -0.066363767 -0.0030609213 ;
	setAttr ".pt[77]" -type "float3" -0.030182192 -0.05046669 -0.0080079176 ;
	setAttr ".pt[78]" -type "float3" -0.03417189 -0.037509184 -0.011653101 ;
	setAttr ".pt[79]" -type "float3" -0.037410922 -0.039982822 -0.012604136 ;
	setAttr ".pt[80]" -type "float3" -0.044921562 -0.088239625 -0.011315601 ;
	setAttr ".pt[81]" -type "float3" -0.04428301 -0.10136612 -0.009023821 ;
	setAttr ".pt[82]" -type "float3" -0.042592019 -0.11368891 -0.00642303 ;
	setAttr ".pt[83]" -type "float3" -0.040494513 -0.12050107 -0.0045066439 ;
	setAttr ".pt[84]" -type "float3" -0.038791653 -0.1192006 -0.0040066536 ;
	setAttr ".pt[85]" -type "float3" -0.038133882 -0.11028422 -0.0051140441 ;
	setAttr ".pt[86]" -type "float3" -0.038772441 -0.097157694 -0.0074058245 ;
	setAttr ".pt[87]" -type "float3" -0.040463429 -0.084834926 -0.010006615 ;
	setAttr ".pt[88]" -type "float3" -0.042560931 -0.078022771 -0.011923001 ;
	setAttr ".pt[89]" -type "float3" -0.044263791 -0.079323247 -0.012422988 ;
	setAttr ".pt[91]" -type "float3" -0.044739559 -0.10470723 -0.0094604995 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth" -p "HeadAssembly";
	rename -uid "28E15486-4B31-34AD-A94A-4C9E6C632F23";
	setAttr ".t" -type "double3" 1.0699183955495233 0.28986751425649004 -0.020426725368398405 ;
	setAttr ".r" -type "double3" 20.694864177376637 -89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.8811751098634897 3.2383755644300836 2.7887600214506958 ;
	setAttr ".sh" -type "double3" 0 0 -0.16562915124193203 ;
	setAttr ".rp" -type "double3" 0.021175593185652392 0.319298729253984 2.621191206589145 ;
	setAttr ".rpt" -type "double3" -2.5860735968102553 -0.94690788390836933 -2.6000156134034915 ;
	setAttr ".sp" -type "double3" 0.007349637692328841 0.23266121827248826 0.93991278791554722 ;
	setAttr ".spt" -type "double3" 0.013825955493323551 0.086637510981495927 1.6812784186735976 ;
createNode joint -n "MandibleRightjoint1" -p "Mouth";
	rename -uid "E7271194-4DCA-4093-705E-EAA167AD3FAB";
	setAttr ".t" -type "double3" -0.15763718754546094 0.18778865171282147 0.67327180841030299 ;
	setAttr ".r" -type "double3" 0.22481723347602045 0.037262259302700211 7.310494039932827e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -86.378515295882664 0 ;
	setAttr ".radi" 2;
createNode joint -n "MandibleRightjoint2" -p "MandibleRightjoint1";
	rename -uid "9F1E33C3-417E-0EE2-DC1D-AD8FFA740C54";
	setAttr ".t" -type "double3" 0.5149984273764564 0.085358478051282563 8.9762514216845074e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 86.378515295882664 0 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector3" -p "MandibleRightjoint1";
	rename -uid "012E2A90-4D27-9DF8-6943-298524018F96";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "MandibleRight" -p "MandibleRightjoint1";
	rename -uid "26F7506A-4FB3-AA6F-CE9E-7CAA647C914D";
	setAttr ".t" -type "double3" -0.60509362694707469 -0.10982194886921857 -0.3420524797395435 ;
	setAttr ".r" -type "double3" 9.8086706208740804 -86.378515295882664 179.99999999999989 ;
	setAttr ".s" -type "double3" 0.71108620939564515 0.49304799412279415 0.49304799412279399 ;
	setAttr ".rp" -type "double3" 0.35800336046432502 4.7020720962635767e-009 0.90332509553876816 ;
	setAttr ".rpt" -type "double3" 0.50772638244936252 0.15388920722847646 -0.48981239075224225 ;
	setAttr ".sp" -type "double3" 0.50345985582900465 9.5367431818260682e-009 1.8321240656214781 ;
	setAttr ".spt" -type "double3" -0.14545649536467969 -4.8346710855624923e-009 -0.92879897008270984 ;
createNode transform -n "pCylinder2" -p "MandibleRight";
	rename -uid "155B5066-4B82-8DB3-1FC0-A5B925E22DD6";
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "F41733E6-48A8-5DD5-EEC2-8EB0C18A3349";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.43781328201293945 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  0.044490699 -3.5527137e-016 
		-0.0050972742 0.037846051 -3.5527137e-016 -0.0096956007 0.027496763 -3.5527137e-016 
		-0.013344849 0.014455909 -3.5527137e-016 -0.015687812 4.4613144e-009 -3.5527137e-016 
		-0.016495137 -0.014455898 -3.5527137e-016 -0.015687816 -0.027496755 -3.5527137e-016 
		-0.013344847 -0.03784604 -3.5527137e-016 -0.0096955998 -0.044490691 -3.5527137e-016 
		-0.0050972761 -0.046780273 -3.5527137e-016 3.146198e-009 -0.044490691 -3.5527137e-016 
		0.0050972826 -0.03784604 -3.5527137e-016 0.0096955989 -0.027496753 -3.5527137e-016 
		0.013344849 -0.014455892 -3.5527137e-016 0.015687812 3.067153e-009 -3.5527137e-016 
		0.016495137 0.014455898 -3.5527137e-016 0.015687816 0.02749675 -3.5527137e-016 0.013344849 
		0.03784604 -3.5527137e-016 0.0096956007 0.044490691 -3.5527137e-016 0.0050972821 
		0.046780273 -3.5527137e-016 3.146198e-009 0.079655617 0.0097087966 5.0576517e-005 
		0.078066066 0.0085577182 -2.8802837e-005 0.075444989 0.0067202337 -0.00015314783 
		0.072048947 0.0043762065 -0.00031028691 0.068210408 0.0017550887 -0.000484838 0.064305067 
		-0.00088654802 -0.00065971503 0.060715213 -0.00329012 -0.00081779965 0.05779225 -0.0052203536 
		-0.0009436176 0.055822339 -0.0064882962 -0.0010248527 0.054998264 -0.0069698393 -0.0010535534 
		0.055400666 -0.0066178464 -0.0010269103 0.056990214 -0.0054667694 -0.00094753102 
		0.059611306 -0.0036292844 -0.00082318601 0.063007332 -0.0012852597 -0.0006660471 
		0.066845872 0.0013358586 -0.00049149594 0.07075122 0.0039774938 -0.00031661906 0.074341066 
		0.0063810633 -0.00015853459 0.077264011 0.0083112977 -3.2716565e-005 0.079233944 
		0.0095792422 4.8518712e-005 0.080058008 0.010060783 7.7219309e-005 0.0082811937 0.057221934 
		0.0028067445 0.010676241 0.052859772 0.0024786303 0.013995553 0.045749478 0.0019549474 
		0.017914211 0.036587071 0.0012869585 0.022048652 0.026269419 0.00054005033 0.025994144 
		0.015806489 -0.00021266412 0.029364482 0.0062224632 -0.00089750416 0.031829741 -0.0015445085 
		-0.0014474331 0.033148631 -0.0067341281 -0.0018086194 0.033192035 -0.0088384142 -0.0019457084 
		0.031955697 -0.0076513845 -0.001845281 0.029560657 -0.0032892274 -0.0015171664 0.026241336 
		0.0038210594 -0.00099348405 0.022322666 0.012983463 -0.00032549567 0.018188244 0.023301113 
		0.00042141232 0.014242752 0.033764038 0.0011741264 0.01087242 0.043348059 0.0018589662 
		0.0084071569 0.051115032 0.0024088949 0.0070882682 0.056304649 0.0027700819 0.007044869 
		0.058408942 0.0029071704 -0.21187672 -0.025477523 0.01520971 -0.20487934 -0.025563292 
		0.028880224 -0.19398703 -0.025702134 0.039725333 -0.18026602 -0.025880467 0.046683453 
		-0.16505942 -0.02608083 0.049073469 -0.14985576 -0.026283646 0.046661425 -0.13614328 
		-0.026468987 0.039683435 -0.12526426 -0.026618779 0.028822556 -0.11828361 -0.026718341 
		0.015141922 -0.11588462 -0.026757937 -1.9305695e-005 -0.11830214 -0.026733652 -0.015177046 
		-0.12529951 -0.026647897 -0.028847551 -0.13619183 -0.026509069 -0.039692655 -0.14991285 
		-0.026330741 -0.046650779 -0.16511944 -0.026130356 -0.049040791 -0.18032306 -0.025927572 
		-0.046628747 -0.19403554 -0.025742173 -0.039650768 -0.20491457 -0.025592403 -0.028789889 
		-0.21189526 -0.025492828 -0.01510926 -0.21429422 -0.025453264 5.1964569e-005 4.4613144e-009 
		-3.5527137e-016 3.146198e-009 -0.16508941 -0.026105605 1.6329446e-005;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "LegLeft31" -p "MandibleRight";
	rename -uid "EBEAE989-4384-1D05-44D2-3CA25C4B00D4";
	setAttr ".t" -type "double3" 0.44750584449068503 2.5618709027248829e-016 1.8980480736190324 ;
	setAttr ".r" -type "double3" 89.999999999999986 -55.207761072367077 5.5740302825811895e-015 ;
	setAttr ".s" -type "double3" 1.1366307266454831 1.1366307266454829 1.019024331074937 ;
createNode mesh -n "LegLeft30Shape31" -p "LegLeft31";
	rename -uid "213889C3-48C3-C04B-FCE9-EDAD6653729F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".pt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".pt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".pt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".pt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".pt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".pt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".pt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".pt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".pt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".pt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".pt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".pt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".pt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".pt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".pt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".pt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".pt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".pt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".pt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".pt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "MandibleLeftjoint1" -p "Mouth";
	rename -uid "94D6150D-43A9-5F42-6F88-2AA55E35BC72";
	setAttr ".t" -type "double3" 0.16603381474500914 0.1877886517128215 0.67815127075639059 ;
	setAttr ".r" -type "double3" -0.17788774900904752 -0.11752390418101576 0.13489432631254347 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 263.99099404250546 0 ;
	setAttr ".radi" 2;
createNode joint -n "MandibleLeftjoint2" -p "MandibleLeftjoint1";
	rename -uid "A2ABA454-4E17-EFAF-F105-CAA78E7CEBE8";
	setAttr ".t" -type "double3" 0.52825798429309512 0.087492440002564606 -3.581994507647901e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 96.00900595749448 0 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector4" -p "MandibleLeftjoint1";
	rename -uid "AABC975D-4AC4-825B-619C-2198416D9299";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "MandibleLeft" -p "MandibleLeftjoint1";
	rename -uid "70A5B0AD-49BF-79E9-7F95-88813F900A4E";
	setAttr ".t" -type "double3" -0.59342385306691903 -0.10982195813589429 0.38407861597240706 ;
	setAttr ".r" -type "double3" 170.19132937912607 83.990994042505477 180 ;
	setAttr ".s" -type "double3" 0.71108620939564549 0.49304799412279415 0.49304799412279421 ;
	setAttr ".rp" -type "double3" 0.35800336046432513 4.7020720962635767e-009 0.90332509553876861 ;
	setAttr ".rpt" -type "double3" 0.4897487316592139 0.1538892164951515 -1.3525434525026732 ;
	setAttr ".sp" -type "double3" 0.50345985582900465 9.5367431818260682e-009 1.8321240656214781 ;
	setAttr ".spt" -type "double3" -0.14545649536467956 -4.8346710855624923e-009 -0.92879897008270951 ;
createNode transform -n "pCylinder1" -p "MandibleLeft";
	rename -uid "DB08AE58-4A67-89B7-FC5F-A79F49C1401D";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8D534A8C-49BF-5A4C-1F7B-21A74B03187C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.43781328201293945 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  0.044490699 -3.5527137e-016 
		-0.0050972742 0.037846051 -3.5527137e-016 -0.0096956007 0.027496763 -3.5527137e-016 
		-0.013344849 0.014455909 -3.5527137e-016 -0.015687812 4.4613144e-009 -3.5527137e-016 
		-0.016495137 -0.014455898 -3.5527137e-016 -0.015687816 -0.027496755 -3.5527137e-016 
		-0.013344847 -0.03784604 -3.5527137e-016 -0.0096955998 -0.044490691 -3.5527137e-016 
		-0.0050972761 -0.046780273 -3.5527137e-016 3.146198e-009 -0.044490691 -3.5527137e-016 
		0.0050972826 -0.03784604 -3.5527137e-016 0.0096955989 -0.027496753 -3.5527137e-016 
		0.013344849 -0.014455892 -3.5527137e-016 0.015687812 3.067153e-009 -3.5527137e-016 
		0.016495137 0.014455898 -3.5527137e-016 0.015687816 0.02749675 -3.5527137e-016 0.013344849 
		0.03784604 -3.5527137e-016 0.0096956007 0.044490691 -3.5527137e-016 0.0050972821 
		0.046780273 -3.5527137e-016 3.146198e-009 0.079655617 0.0097087966 5.0576517e-005 
		0.078066066 0.0085577182 -2.8802837e-005 0.075444989 0.0067202337 -0.00015314783 
		0.072048947 0.0043762065 -0.00031028691 0.068210408 0.0017550887 -0.000484838 0.064305067 
		-0.00088654802 -0.00065971503 0.060715213 -0.00329012 -0.00081779965 0.05779225 -0.0052203536 
		-0.0009436176 0.055822339 -0.0064882962 -0.0010248527 0.054998264 -0.0069698393 -0.0010535534 
		0.055400666 -0.0066178464 -0.0010269103 0.056990214 -0.0054667694 -0.00094753102 
		0.059611306 -0.0036292844 -0.00082318601 0.063007332 -0.0012852597 -0.0006660471 
		0.066845872 0.0013358586 -0.00049149594 0.07075122 0.0039774938 -0.00031661906 0.074341066 
		0.0063810633 -0.00015853459 0.077264011 0.0083112977 -3.2716565e-005 0.079233944 
		0.0095792422 4.8518712e-005 0.080058008 0.010060783 7.7219309e-005 0.0082811937 0.057221934 
		0.0028067445 0.010676241 0.052859772 0.0024786303 0.013995553 0.045749478 0.0019549474 
		0.017914211 0.036587071 0.0012869585 0.022048652 0.026269419 0.00054005033 0.025994144 
		0.015806489 -0.00021266412 0.029364482 0.0062224632 -0.00089750416 0.031829741 -0.0015445085 
		-0.0014474331 0.033148631 -0.0067341281 -0.0018086194 0.033192035 -0.0088384142 -0.0019457084 
		0.031955697 -0.0076513845 -0.001845281 0.029560657 -0.0032892274 -0.0015171664 0.026241336 
		0.0038210594 -0.00099348405 0.022322666 0.012983463 -0.00032549567 0.018188244 0.023301113 
		0.00042141232 0.014242752 0.033764038 0.0011741264 0.01087242 0.043348059 0.0018589662 
		0.0084071569 0.051115032 0.0024088949 0.0070882682 0.056304649 0.0027700819 0.007044869 
		0.058408942 0.0029071704 -0.21187672 -0.025477523 0.01520971 -0.20487934 -0.025563292 
		0.028880224 -0.19398703 -0.025702134 0.039725333 -0.18026602 -0.025880467 0.046683453 
		-0.16505942 -0.02608083 0.049073469 -0.14985576 -0.026283646 0.046661425 -0.13614328 
		-0.026468987 0.039683435 -0.12526426 -0.026618779 0.028822556 -0.11828361 -0.026718341 
		0.015141922 -0.11588462 -0.026757937 -1.9305695e-005 -0.11830214 -0.026733652 -0.015177046 
		-0.12529951 -0.026647897 -0.028847551 -0.13619183 -0.026509069 -0.039692655 -0.14991285 
		-0.026330741 -0.046650779 -0.16511944 -0.026130356 -0.049040791 -0.18032306 -0.025927572 
		-0.046628747 -0.19403554 -0.025742173 -0.039650768 -0.20491457 -0.025592403 -0.028789889 
		-0.21189526 -0.025492828 -0.01510926 -0.21429422 -0.025453264 5.1964569e-005 4.4613144e-009 
		-3.5527137e-016 3.146198e-009 -0.16508941 -0.026105605 1.6329446e-005;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "LegLeft30" -p "MandibleLeft";
	rename -uid "8BA5CF8D-488B-9BFD-45F3-1CAD3D3D86DB";
	setAttr ".t" -type "double3" 0.44750584449068503 2.5618709027248829e-016 1.8980480736190324 ;
	setAttr ".r" -type "double3" 89.999999999999986 -55.207761072367077 5.5740302825811895e-015 ;
	setAttr ".s" -type "double3" 1.1366307266454831 1.1366307266454829 1.019024331074937 ;
createNode mesh -n "LegLeft30Shape" -p "LegLeft30";
	rename -uid "2C19FD7B-4847-168D-0865-3C87F271042E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".pt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".pt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".pt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".pt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".pt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".pt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".pt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".pt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".pt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".pt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".pt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".pt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".pt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".pt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".pt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".pt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".pt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".pt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".pt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".pt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode ikHandle -n "MandibleRightikHandle" -p "Mouth";
	rename -uid "BD2513C2-4021-9C8B-C25D-079F6E6B7318";
	setAttr ".roc" yes;
createNode ikHandle -n "MandibleLeftikHandle" -p "Mouth";
	rename -uid "72739CFE-4929-CB48-9FDC-A8AC59B0631C";
	setAttr ".roc" yes;
createNode transform -n "Head" -p "HeadAssembly";
	rename -uid "2AD107DA-4BE8-8E15-5E6F-80AC96478C7E";
	setAttr ".t" -type "double3" 0 -5.6843418860808016e-016 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "HeadShape" -p "Head";
	rename -uid "5B7EE774-41EB-FC36-7686-D28BC42EE017";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.47500006109476089 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 258 ".pt";
	setAttr ".pt[0]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[1]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[2]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[3]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[4]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[5]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[6]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[7]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[8]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[9]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[10]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[11]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[12]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[13]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[14]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[15]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[16]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[17]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[18]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[19]" -type "float3" 0.01381078 0.13463695 0 ;
	setAttr ".pt[20]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[21]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[22]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[23]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[24]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[25]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[26]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[27]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[28]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[29]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[30]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[31]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[32]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[33]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[34]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[35]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[36]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[37]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[38]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[39]" -type "float3" 0.01381078 0.12352009 0 ;
	setAttr ".pt[40]" -type "float3" 0.014141524 0.08640179 3.5527136e-017 ;
	setAttr ".pt[41]" -type "float3" 0.014141524 0.08640179 0 ;
	setAttr ".pt[42]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[43]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[44]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[45]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[46]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[47]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[48]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[49]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[50]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[51]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[52]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[53]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[54]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[55]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[56]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[57]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[58]" -type "float3" 0.01381078 0.1052964 0 ;
	setAttr ".pt[59]" -type "float3" 0.014141524 0.08640179 2.5589975e-017 ;
	setAttr ".pt[60]" -type "float3" -0.073721722 0.034929968 0 ;
	setAttr ".pt[65]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[66]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[67]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[68]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[69]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[70]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[71]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[72]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[73]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[74]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[75]" -type "float3" 0.01381078 0.080414601 0 ;
	setAttr ".pt[77]" -type "float3" -0.038192622 0.042402383 0 ;
	setAttr ".pt[78]" -type "float3" -0.073721573 0.034930002 0 ;
	setAttr ".pt[79]" -type "float3" -0.085963994 0.032355197 -2.2595782e-016 ;
	setAttr ".pt[80]" -type "float3" -0.11174738 0.02397652 0 ;
	setAttr ".pt[81]" -type "float3" -0.069005959 0.032965794 0 ;
	setAttr ".pt[87]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[88]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[89]" -type "float3" 0.33287767 -0.099700235 0 ;
	setAttr ".pt[90]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[91]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[92]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[93]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[94]" -type "float3" 0.01381078 0.049487352 0 ;
	setAttr ".pt[97]" -type "float3" -0.069005795 0.032965828 0 ;
	setAttr ".pt[98]" -type "float3" -0.11174723 0.023976555 0 ;
	setAttr ".pt[99]" -type "float3" -0.12647487 0.020879062 -2.2595782e-016 ;
	setAttr ".pt[100]" -type "float3" -0.14097214 0.014369023 0 ;
	setAttr ".pt[101]" -type "float3" -0.092070758 0.024653861 0 ;
	setAttr ".pt[109]" -type "float3" 0.33287767 -0.13591142 0 ;
	setAttr ".pt[110]" -type "float3" 0.01381078 0.013276205 0 ;
	setAttr ".pt[111]" -type "float3" 0.01381078 0.013276205 0 ;
	setAttr ".pt[112]" -type "float3" 0.01381078 0.013276205 0 ;
	setAttr ".pt[116]" -type "float3" -0.015904848 0.040672921 0 ;
	setAttr ".pt[117]" -type "float3" -0.092070557 0.024653904 0 ;
	setAttr ".pt[118]" -type "float3" -0.14097194 0.014369066 0 ;
	setAttr ".pt[119]" -type "float3" -0.15782222 0.01082515 -2.2595782e-016 ;
	setAttr ".pt[120]" -type "float3" -0.16067643 0.0063440539 0 ;
	setAttr ".pt[121]" -type "float3" -0.10681913 0.017671211 0 ;
	setAttr ".pt[128]" -type "float3" -0.065198347 0.051857315 0.12456484 ;
	setAttr ".pt[129]" -type "float3" 0.30740482 -0.077203616 0 ;
	setAttr ".pt[130]" -type "float3" -0.065198347 0.051857315 -0.12456484 ;
	setAttr ".pt[136]" -type "float3" -0.02293421 0.035313707 0 ;
	setAttr ".pt[137]" -type "float3" -0.10681894 0.017671254 0 ;
	setAttr ".pt[138]" -type "float3" -0.1606762 0.0063440949 0 ;
	setAttr ".pt[139]" -type "float3" -0.17923416 0.0024410312 -2.2595782e-016 ;
	setAttr ".pt[140]" -type "float3" -0.17037505 9.9220277e-005 0 ;
	setAttr ".pt[141]" -type "float3" -0.11288793 0.012189779 0 ;
	setAttr ".pt[148]" -type "float3" -0.0907382 0.031543761 0.13295992 ;
	setAttr ".pt[149]" -type "float3" 0.30740482 -0.077203616 0 ;
	setAttr ".pt[150]" -type "float3" -0.0907382 0.031543761 -0.13295992 ;
	setAttr ".pt[156]" -type "float3" -0.02334955 0.031021303 0 ;
	setAttr ".pt[157]" -type "float3" -0.11288773 0.012189817 0 ;
	setAttr ".pt[158]" -type "float3" -0.17037478 9.9270794e-005 0 ;
	setAttr ".pt[159]" -type "float3" -0.19018352 -0.0040668403 -2.2595782e-016 ;
	setAttr ".pt[160]" -type "float3" -0.1698291 -0.0042117224 0 ;
	setAttr ".pt[161]" -type "float3" -0.11012778 0.008344519 0 ;
	setAttr ".pt[168]" -type "float3" -0.11830484 0.017409824 0.13808118 ;
	setAttr ".pt[169]" -type "float3" 0.30740482 -0.077203616 0 ;
	setAttr ".pt[170]" -type "float3" -0.11830484 0.017409824 -0.13808118 ;
	setAttr ".pt[176]" -type "float3" -0.017140659 0.027901385 0 ;
	setAttr ".pt[177]" -type "float3" -0.11012754 0.0083445664 0 ;
	setAttr ".pt[178]" -type "float3" -0.16982885 -0.0042116679 0 ;
	setAttr ".pt[179]" -type "float3" -0.19040065 -0.0085382368 -2.2595782e-016 ;
	setAttr ".pt[180]" -type "float3" -0.15905216 -0.0064826058 0 ;
	setAttr ".pt[181]" -type "float3" -0.098606586 0.0062301429 0 ;
	setAttr ".pt[188]" -type "float3" -0.14721949 0.0098035596 0.13980238 ;
	setAttr ".pt[189]" -type "float3" 0.30740482 -0.077203616 0 ;
	setAttr ".pt[190]" -type "float3" -0.14721949 0.0098035596 -0.13980238 ;
	setAttr ".pt[196]" -type "float3" -0.0044603758 0.026030781 0 ;
	setAttr ".pt[197]" -type "float3" -0.09860637 0.006230189 0 ;
	setAttr ".pt[198]" -type "float3" -0.15905191 -0.0064825509 0 ;
	setAttr ".pt[199]" -type "float3" -0.17988002 -0.010863062 -2.2595782e-016 ;
	setAttr ".pt[200]" -type "float3" -0.13830946 -0.0066575455 0 ;
	setAttr ".pt[201]" -type "float3" -0.078608133 0.0058986987 0 ;
	setAttr ".pt[208]" -type "float3" -0.1767702 0.0089122271 0.13808118 ;
	setAttr ".pt[209]" -type "float3" 0.30740482 -0.077203616 0 ;
	setAttr ".pt[210]" -type "float3" -0.1767702 0.0089122271 -0.13808118 ;
	setAttr ".pt[216]" -type "float3" 0.014378992 0.025455557 0 ;
	setAttr ".pt[217]" -type "float3" -0.078607909 0.0058987462 0 ;
	setAttr ".pt[218]" -type "float3" -0.13830921 -0.0066574891 0 ;
	setAttr ".pt[219]" -type "float3" -0.15888093 -0.010984064 -2.2595782e-016 ;
	setAttr ".pt[220]" -type "float3" -0.10811181 -0.0047322051 0 ;
	setAttr ".pt[221]" -type "float3" -0.050624706 0.0073583503 0 ;
	setAttr ".pt[228]" -type "float3" 0.09652362 0.069189563 0 ;
	setAttr ".pt[229]" -type "float3" -0.020921087 0.098685361 5.682116e-033 ;
	setAttr ".pt[230]" -type "float3" 0.09652362 0.069189563 0 ;
	setAttr ".pt[236]" -type "float3" 0.038913671 0.02618988 0 ;
	setAttr ".pt[237]" -type "float3" -0.050624512 0.0073583941 0 ;
	setAttr ".pt[238]" -type "float3" -0.10811155 -0.0047321562 0 ;
	setAttr ".pt[239]" -type "float3" -0.1279203 -0.0088982629 -2.2595782e-016 ;
	setAttr ".pt[240]" -type "float3" -0.069202818 -0.0007540044 0 ;
	setAttr ".pt[241]" -type "float3" -0.015345468 0.010573152 0 ;
	setAttr ".pt[248]" -type "float3" 0.09652362 0.069189563 0.06915465 ;
	setAttr ".pt[249]" -type "float3" -0.020921087 0.098685361 5.682116e-033 ;
	setAttr ".pt[250]" -type "float3" 0.09652362 0.069189563 -0.06915465 ;
	setAttr ".pt[256]" -type "float3" 0.068539441 0.028215641 0 ;
	setAttr ".pt[257]" -type "float3" -0.015345278 0.010573195 0 ;
	setAttr ".pt[258]" -type "float3" -0.069202572 -0.00075395836 0 ;
	setAttr ".pt[259]" -type "float3" -0.087760516 -0.0046570268 -2.2595782e-016 ;
	setAttr ".pt[260]" -type "float3" -0.022540461 0.0051791072 0 ;
	setAttr ".pt[268]" -type "float3" 0.09652362 0.069189563 0.062791087 ;
	setAttr ".pt[269]" -type "float3" -0.020921087 0.098685361 5.682116e-033 ;
	setAttr ".pt[270]" -type "float3" 0.09652362 0.069189563 -0.062791087 ;
	setAttr ".pt[277]" -type "float3" 0.026361125 0.015463986 0 ;
	setAttr ".pt[278]" -type "float3" -0.022540271 0.0051791463 0 ;
	setAttr ".pt[279]" -type "float3" -0.039390527 0.001635232 -2.2595782e-016 ;
	setAttr ".pt[280]" -type "float3" 0.030726159 0.012921034 0 ;
	setAttr ".pt[284]" -type "float3" 0.037788689 -0.058368064 0 ;
	setAttr ".pt[285]" -type "float3" 0.038418725 -0.078907818 0 ;
	setAttr ".pt[288]" -type "float3" 0.09652362 0.069189563 0.054881435 ;
	setAttr ".pt[289]" -type "float3" 0.023033468 0.043825593 5.682116e-033 ;
	setAttr ".pt[290]" -type "float3" 0.09652362 0.069189563 -0.054881435 ;
	setAttr ".pt[298]" -type "float3" 0.030726315 0.01292107 0 ;
	setAttr ".pt[299]" -type "float3" 0.015998662 0.0098235784 -2.2595782e-016 ;
	setAttr ".pt[300]" -type "float3" 0.032162651 -0.042392045 0 ;
	setAttr ".pt[301]" -type "float3" 0.032403372 -0.050240003 0 ;
	setAttr ".pt[302]" -type "float3" 0.032778319 -0.062463459 0 ;
	setAttr ".pt[303]" -type "float3" 0.033250775 -0.077865921 0 ;
	setAttr ".pt[304]" -type "float3" 0.033774491 -0.094939679 0 ;
	setAttr ".pt[305]" -type "float3" 0.034298215 -0.11201343 0 ;
	setAttr ".pt[306]" -type "float3" 0.034770668 -0.12741588 0 ;
	setAttr ".pt[307]" -type "float3" 0.035145611 -0.13963936 0 ;
	setAttr ".pt[308]" -type "float3" 0.12890631 -0.094053842 0 ;
	setAttr ".pt[309]" -type "float3" 0.011544574 -0.06726227 7.9936061e-017 ;
	setAttr ".pt[310]" -type "float3" 0.12890631 -0.094053842 0 ;
	setAttr ".pt[311]" -type "float3" 0.035145611 -0.13963933 0 ;
	setAttr ".pt[312]" -type "float3" 0.034770668 -0.12741588 0 ;
	setAttr ".pt[313]" -type "float3" 0.034298211 -0.11201341 0 ;
	setAttr ".pt[314]" -type "float3" 0.033774491 -0.094939679 0 ;
	setAttr ".pt[315]" -type "float3" 0.033250775 -0.077865936 0 ;
	setAttr ".pt[316]" -type "float3" 0.032778323 -0.062463485 0 ;
	setAttr ".pt[317]" -type "float3" 0.032403376 -0.050240029 0 ;
	setAttr ".pt[318]" -type "float3" 0.032162651 -0.042392083 0 ;
	setAttr ".pt[319]" -type "float3" 0.0320797 -0.039687864 7.9936061e-017 ;
	setAttr ".pt[320]" -type "float3" 0.02930001 -0.083775893 0 ;
	setAttr ".pt[321]" -type "float3" 0.029485941 -0.089837447 0 ;
	setAttr ".pt[322]" -type "float3" 0.029775536 -0.099278539 0 ;
	setAttr ".pt[323]" -type "float3" 0.030140452 -0.11117502 0 ;
	setAttr ".pt[324]" -type "float3" 0.030544959 -0.12436234 0 ;
	setAttr ".pt[325]" -type "float3" 0.030949468 -0.1375497 0 ;
	setAttr ".pt[326]" -type "float3" 0.03131438 -0.14944616 0 ;
	setAttr ".pt[327]" -type "float3" 0.031603977 -0.15888724 0 ;
	setAttr ".pt[328]" -type "float3" 0.03178991 -0.16494876 0 ;
	setAttr ".pt[329]" -type "float3" 0.11151826 -0.18707636 7.9936061e-017 ;
	setAttr ".pt[330]" -type "float3" 0.03178991 -0.16494876 0 ;
	setAttr ".pt[331]" -type "float3" 0.031603977 -0.15888724 0 ;
	setAttr ".pt[332]" -type "float3" 0.03131438 -0.14944616 0 ;
	setAttr ".pt[333]" -type "float3" 0.030949468 -0.1375497 0 ;
	setAttr ".pt[334]" -type "float3" 0.030544959 -0.12436234 0 ;
	setAttr ".pt[335]" -type "float3" 0.030140452 -0.11117502 0 ;
	setAttr ".pt[336]" -type "float3" 0.029775536 -0.099278554 0 ;
	setAttr ".pt[337]" -type "float3" 0.029485941 -0.089837462 0 ;
	setAttr ".pt[338]" -type "float3" 0.02930001 -0.08377593 0 ;
	setAttr ".pt[339]" -type "float3" 0.029235942 -0.081687257 7.9936061e-017 ;
	setAttr ".pt[340]" -type "float3" 0.042718954 -0.17836326 0 ;
	setAttr ".pt[341]" -type "float3" 0.04284551 -0.18248914 0 ;
	setAttr ".pt[342]" -type "float3" 0.04304263 -0.18891543 0 ;
	setAttr ".pt[343]" -type "float3" 0.043291017 -0.19701296 0 ;
	setAttr ".pt[344]" -type "float3" 0.04356635 -0.20598918 0 ;
	setAttr ".pt[345]" -type "float3" 0.043841686 -0.21496536 0 ;
	setAttr ".pt[346]" -type "float3" 0.04409007 -0.22306293 0 ;
	setAttr ".pt[347]" -type "float3" 0.04428719 -0.22948919 0 ;
	setAttr ".pt[348]" -type "float3" 0.044413749 -0.23361507 0 ;
	setAttr ".pt[349]" -type "float3" 0.044457354 -0.23503678 7.9936061e-017 ;
	setAttr ".pt[350]" -type "float3" 0.044413749 -0.23361507 0 ;
	setAttr ".pt[351]" -type "float3" 0.04428719 -0.22948919 0 ;
	setAttr ".pt[352]" -type "float3" 0.04409007 -0.22306293 0 ;
	setAttr ".pt[353]" -type "float3" 0.043841686 -0.21496536 0 ;
	setAttr ".pt[354]" -type "float3" 0.04356635 -0.20598918 0 ;
	setAttr ".pt[355]" -type "float3" 0.043291017 -0.19701298 0 ;
	setAttr ".pt[356]" -type "float3" 0.04304263 -0.18891545 0 ;
	setAttr ".pt[357]" -type "float3" 0.04284551 -0.18248917 0 ;
	setAttr ".pt[358]" -type "float3" 0.042718954 -0.17836328 0 ;
	setAttr ".pt[359]" -type "float3" 0.042675342 -0.17694154 7.9936061e-017 ;
	setAttr ".pt[360]" -type "float3" 0.041694451 -0.20514961 7.9936061e-017 ;
	setAttr ".pt[361]" -type "float3" 0.041758519 -0.20723829 0 ;
	setAttr ".pt[362]" -type "float3" 0.041858304 -0.21049146 0 ;
	setAttr ".pt[363]" -type "float3" 0.041984044 -0.2145907 0 ;
	setAttr ".pt[364]" -type "float3" 0.042123426 -0.21913475 0 ;
	setAttr ".pt[365]" -type "float3" 0.042262811 -0.22367874 0 ;
	setAttr ".pt[366]" -type "float3" 0.042388555 -0.22777808 0 ;
	setAttr ".pt[367]" -type "float3" 0.04248834 -0.23103122 0 ;
	setAttr ".pt[368]" -type "float3" 0.042552408 -0.2331199 7.9936061e-017 ;
	setAttr ".pt[369]" -type "float3" 0.042574488 -0.23383959 7.9936061e-017 ;
	setAttr ".pt[370]" -type "float3" 0.042552408 -0.2331199 7.9936061e-017 ;
	setAttr ".pt[371]" -type "float3" 0.04248834 -0.23103122 0 ;
	setAttr ".pt[372]" -type "float3" 0.042388555 -0.22777808 0 ;
	setAttr ".pt[373]" -type "float3" 0.042262811 -0.22367874 0 ;
	setAttr ".pt[374]" -type "float3" 0.042123426 -0.21913475 0 ;
	setAttr ".pt[375]" -type "float3" 0.041984044 -0.2145907 0 ;
	setAttr ".pt[376]" -type "float3" 0.041858304 -0.21049146 0 ;
	setAttr ".pt[377]" -type "float3" 0.041758519 -0.20723832 0 ;
	setAttr ".pt[378]" -type "float3" 0.041694451 -0.20514964 7.9936061e-017 ;
	setAttr ".pt[379]" -type "float3" 0.041672371 -0.20442989 7.9936061e-017 ;
	setAttr ".pt[380]" -type "float3" 0.041808583 0.14276786 0 ;
	setAttr ".pt[381]" -type "float3" 0.04163849 -0.22355309 7.9936061e-017 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "TailAssembly" -p "HoverWing";
	rename -uid "F1DCFF2F-4534-AC20-369B-FC98C0DB9751";
	setAttr ".t" -type "double3" 5.1563902798452146 0.71511966832751972 0 ;
	setAttr ".r" -type "double3" 0 0 -42.732734932862151 ;
	setAttr ".s" -type "double3" 0.3557228542501491 0.14838037677873434 0.13778329310480117 ;
	setAttr ".rp" -type "double3" 0.50761864893927677 -0.085398191607806956 -6.5747288850399503e-009 ;
	setAttr ".rpt" -type "double3" -0.19270849211018751 -0.32178866599776279 0 ;
	setAttr ".sp" -type "double3" 1.4270060044618682 -0.57553561637839223 -4.7717896247689848e-008 ;
	setAttr ".spt" -type "double3" -0.91938735552259143 0.49013742477058531 4.1143167362649907e-008 ;
createNode transform -n "Stinger" -p "TailAssembly";
	rename -uid "589A6395-4771-7EA2-C02E-D986A26C9612";
	setAttr ".t" -type "double3" 1.427005999538471 -0.57553564025608583 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -101.65067116422625 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.21303563545561074 0.76107613103050054 0.3127240048545718 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".sh" -type "double3" 0.65326792864012362 0 0 ;
createNode mesh -n "StingerShape" -p "Stinger";
	rename -uid "BD15936E-4BF3-7642-1413-91A9A7DAAD7F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "StingerShapeOrig" -p "Stinger";
	rename -uid "895B7FB1-4977-0253-7A80-F6B47AF9DC0F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Tail" -p "TailAssembly";
	rename -uid "F8BA0830-42A7-A59D-AA91-B180AD27D43D";
	setAttr ".t" -type "double3" -1.4210854715202004e-016 -1.1368683772161603e-015 
		6.1475736873992951e-023 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "TailShape" -p "Tail";
	rename -uid "AB091A10-408C-C1C6-70D9-97868CA451E8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "TailShapeOrig" -p "Tail";
	rename -uid "1AE06A98-4C63-56A9-5CBA-C5BEB8D94DD8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Thorax" -p "TailAssembly";
	rename -uid "75469882-4DEA-30FE-2D1F-CD8CA6C0A66E";
	setAttr ".t" -type "double3" -1.382364878785848 -1.0207842143874575 6.1475736873992951e-023 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 48.876945393974836 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1.8310095379470113 0.89845056433766435 1.4965326385259192 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".sh" -type "double3" 0.77027591806934348 0 0 ;
createNode mesh -n "ThoraxShape" -p "Thorax";
	rename -uid "2DCC3530-4BD6-A92A-973C-47886D386EC1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "ThoraxShapeOrig" -p "Thorax";
	rename -uid "201843B5-4128-192A-E8B2-10AADE40ADBB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "AbdomenAssembly" -p "HoverWing";
	rename -uid "A7E99F91-4EC7-05EA-786A-DE81C9163B9F";
	setAttr ".rp" -type "double3" 4.1669981765730588 0.44923871346244576 -0.10498165309116708 ;
	setAttr ".sp" -type "double3" 4.1669981765730588 0.44923871346244576 -0.10498165309116708 ;
createNode transform -n "Abdomen" -p "AbdomenAssembly";
	rename -uid "018101DF-4265-97E8-E1C9-EDA5AE411C8A";
	setAttr ".t" -type "double3" 3.9451672392466532 1.0008565380770296 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.61042055632356151 0.27812251497323032 0.32792241036541075 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "AbdomenShape" -p "Abdomen";
	rename -uid "5AA9E9CD-4324-E030-E8B8-8FA09B51B922";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "AbdomenShapeOrig" -p "Abdomen";
	rename -uid "EDF7BD07-4ACB-BDCD-1A2B-40A365082AE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Legs1" -p "AbdomenAssembly";
	rename -uid "10407EDC-4A32-9699-B7A0-A582BECFCCBB";
	setAttr ".rp" -type "double3" -0.081999205483372223 0.25295326561118514 -0.015836885452142589 ;
	setAttr ".rpt" -type "double3" 0.097836090935514763 0 -0.066162320031229627 ;
	setAttr ".sp" -type "double3" -0.081999205483372181 0.25295326561118503 -0.015836885452142582 ;
	setAttr ".spt" -type "double3" -3.5527136788005029e-017 7.1054273576010032e-017 
		-6.6613381477509421e-018 ;
createNode joint -n "LegLeftBackjoint1" -p "Legs1";
	rename -uid "4E73183D-407E-4FBD-8272-88899B7B21E8";
	setAttr ".t" -type "double3" 0.18002611731025561 0.047058220045961198 -0.31396339721027139 ;
	setAttr ".r" -type "double3" -80.759095906518411 -172.77406075845826 100.41385348693342 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 64.447434515531825 0 ;
	setAttr ".radi" 2;
createNode transform -n "Upper" -p "LegLeftBackjoint1";
	rename -uid "13FCD2FE-4ED0-371F-391B-E39102E98DF0";
	setAttr ".t" -type "double3" 0.20304944783961992 0.027503875803701412 -0.016046684698816732 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -175.75492373344559 -13.259523061742096 96.767164857654521 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.49304799412282596 0.49304799412282618 0.49304799412282602 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "UpperShape" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper";
	rename -uid "8EB69F88-41B6-A8D0-79C3-30A0E8C98F27";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[1].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "UpperShapeOrig" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper";
	rename -uid "0A53F232-4C09-DC68-66A8-00A2F3592E5E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "LegLeftMiddlejoint1" -p "Legs1";
	rename -uid "E4010E77-4BC9-5A5A-9847-EEBBD803CAB9";
	setAttr ".t" -type "double3" 0.15935900555068047 -0.028930194202349532 -0.130260469880845 ;
	setAttr ".r" -type "double3" 87.707647094446912 13.984007796192955 -87.445725798550669 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 26.219379476607333 0 ;
	setAttr ".radi" 2;
createNode transform -n "Upper" -p "LegLeftMiddlejoint1";
	rename -uid "87BBC602-4E7D-5DE8-EB56-44B1C9D6BB8D";
	setAttr ".t" -type "double3" -0.43507612769902154 -0.039855406820605344 -0.18621066195316963 ;
	setAttr ".r" -type "double3" -0.72907284068007339 -26.01222920375093 0.34735211768066782 ;
	setAttr ".s" -type "double3" 0.49304799412282596 0.49304799412282602 0.49304799412282596 ;
	setAttr ".rp" -type "double3" 0.65389526226540018 0.19961578773616651 -0.083250628658737086 ;
	setAttr ".rpt" -type "double3" -0.029832779017877255 0.0027115620722654179 0.29293087193686196 ;
	setAttr ".sp" -type "double3" 1.326230448272556 0.40486076429800688 -0.16884893489293468 ;
	setAttr ".spt" -type "double3" -0.67233518600715581 -0.2052449765618404 0.085598306234197605 ;
createNode transform -n "LegLeft5" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftMiddlejoint1|Upper";
	rename -uid "9C65FB54-46EA-6EDF-FCC4-AAA5CAC2C2A6";
	setAttr ".t" -type "double3" 1.0143673385146361 0.00077413930456152972 -0.17924476108152479 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -145.15303098520448 -12.935483293792505 86.100649762266656 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeftShape5" -p "LegLeft5";
	rename -uid "D110C0C3-4C0D-1946-D4C5-9499DC13DB64";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeftShape5Orig" -p "LegLeft5";
	rename -uid "70E1C870-4D48-F017-CEE2-259544E7B55B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft8" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftMiddlejoint1|Upper";
	rename -uid "FF4CABB6-4A8D-DA64-CF6F-1A92137E657D";
	setAttr ".t" -type "double3" 1.6535955707013614 0.76487440806651474 -0.39538098381029096 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -30.966947272150069 21.122238525603674 -80.737259896168183 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape8" -p "LegLeft8";
	rename -uid "8AF3A565-47A5-67E4-E335-DF8312C29437";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3Shape8Orig" -p "LegLeft8";
	rename -uid "FCB2A709-4622-ABD2-9BC8-508932C7C1BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft9" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftMiddlejoint1|Upper";
	rename -uid "4845CD69-4490-1F19-43CC-81A4248D6DE9";
	setAttr ".t" -type "double3" 1.574008273350884 0.81087546049338299 -0.3502054465610952 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -24.080822314073746 28.824475585550662 -64.552727154166675 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999944 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape9" -p "LegLeft9";
	rename -uid "8EDDD5AC-463D-D8BA-E55B-C4BDD807FA67";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4Shape9Orig" -p "LegLeft9";
	rename -uid "640CE245-418B-2D7D-61B3-A7A9AEEE2AF7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "LegLeftFrontJoint1" -p "Legs1";
	rename -uid "0735893A-4E98-CFEB-D8B8-209C0EEBF754";
	setAttr ".t" -type "double3" 0.19970192876658904 0.01960968060429738 0.090180372611041074 ;
	setAttr ".r" -type "double3" -4.8936605861611815 -1.0244403293559643 -85.264619539235397 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -65.556045219583467 0 ;
	setAttr ".radi" 1.9720700745738649;
createNode transform -n "Upper" -p "LegLeftFrontJoint1";
	rename -uid "C6E37E1C-41E9-9CC0-D6E9-E4857274A947";
	setAttr ".t" -type "double3" 0.080827836834537412 0.015794748529430011 0.0070708066183024342 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 175.25655365090208 9.4137398829969499 101.49186262005317 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.49304799412282591 0.49304799412282591 0.49304799412282596 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "UpperShape" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper";
	rename -uid "3116904C-4E9A-63CB-6F1D-F38EDE25345D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "UpperShapeOrig" -p "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper";
	rename -uid "9418B2F4-4663-ADBD-2AB5-6DA112B0C4BF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "LegRightFrontjoint1" -p "Legs1";
	rename -uid "2F2C7C88-44C0-2DF0-F4C2-8CBD93765E55";
	setAttr ".t" -type "double3" -0.12122814909526426 0.16274880183228604 0.011299737476014211 ;
	setAttr ".r" -type "double3" -178.32111999521203 179.65308785086899 93.25368926054594 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 243.30846827889468 0 ;
	setAttr ".radi" 1.9511244531190284;
createNode transform -n "Upper" -p "LegRightFrontjoint1";
	rename -uid "8312EA4F-4D32-41BB-8158-D78CF311AC14";
	setAttr ".t" -type "double3" 0.078805492342670369 0.013786952533069439 -0.0030739512697765649 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -175.60582485873917 -9.1683240393458316 101.18695964287375 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.49304799412282602 0.49304799412282585 0.49304799412282602 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "UpperShape" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper";
	rename -uid "5AE2915E-424D-E4EF-B8B5-A8AA61C7BFE6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "UpperShapeOrig" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper";
	rename -uid "83BDA7AE-4B86-FE26-E8B6-B2BED92FFBCF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "LegRightMiddlejoint1" -p "Legs1";
	rename -uid "BC9FCA4A-4775-D2F5-618E-DB80500E143C";
	setAttr ".t" -type "double3" -0.071389718087139564 0.10126996099635811 -0.24650564165280806 ;
	setAttr ".r" -type "double3" -79.465566389525151 346.14789218919628 -97.06755803494481 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 160.22917772166292 0 ;
	setAttr ".radi" 2;
createNode transform -n "Upper" -p "LegRightMiddlejoint1";
	rename -uid "EE83E562-494E-8134-B0AF-BDA07B209FFE";
	setAttr ".t" -type "double3" -0.49372926104392711 -0.040211601692790103 -0.054095554463452551 ;
	setAttr ".r" -type "double3" 0 19.770822278337072 0 ;
	setAttr ".s" -type "double3" 0.49304799412282607 0.49304799412282596 0.49304799412282607 ;
	setAttr ".rp" -type "double3" 0.66834532441080741 0.22825975260199458 0.30223828687862941 ;
	setAttr ".rpt" -type "double3" 0.062837887983043419 0 -0.2438896396747309 ;
	setAttr ".sp" -type "double3" 1.3555380660250935 0.46295645722702505 0.61299972919743195 ;
	setAttr ".spt" -type "double3" -0.68719274161428612 -0.23469670462503048 -0.31076144231880248 ;
createNode transform -n "LegLeft38" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightMiddlejoint1|Upper";
	rename -uid "7DBFE2C0-4780-5A87-62AA-2B8FA05135BF";
	setAttr ".t" -type "double3" 1.0496401906132233 0.07286205311788195 0.49095050674439089 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 153.91581696261801 2.4684403827064281 87.282217876828952 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeftShape38" -p "LegLeft38";
	rename -uid "2643B032-46B7-6BA2-6A34-359073FBE7CE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeftShape38Orig" -p "LegLeft38";
	rename -uid "45B09029-4201-C64D-9583-2EB564F722FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft41" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightMiddlejoint1|Upper";
	rename -uid "B14BFC85-4213-AC9F-4BD2-59A2B0BBD11F";
	setAttr ".t" -type "double3" 1.7108927978444974 0.79247165880454351 0.78092261774033478 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 24.723652806978947 -8.9339877315901539 -79.107714289081827 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999967 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape41" -p "LegLeft41";
	rename -uid "294D5001-45F5-93C0-EC5B-35B616AF0832";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3Shape41Orig" -p "LegLeft41";
	rename -uid "32F99A5D-4EC7-2FCD-9766-F983CB0A9583";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft42" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightMiddlejoint1|Upper";
	rename -uid "5C1D7AF3-41D3-D299-653D-DBA631BA544A";
	setAttr ".t" -type "double3" 1.6425466936740054 0.84291572604019016 0.72369264294453284 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 21.409831944539231 -15.457984095914767 -63.539010643370105 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape42" -p "LegLeft42";
	rename -uid "A9F208A8-4415-7984-C415-BBA2E7FFB4A4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4Shape42Orig" -p "LegLeft42";
	rename -uid "8B5A4B94-45FE-4C39-3E23-70A237CBB0FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "LegRightBackjoint1" -p "Legs1";
	rename -uid "81B18579-4EBA-0041-D159-F3B3817D3A51";
	setAttr ".t" -type "double3" -0.066775395241521235 0.14088118582993292 -0.34576520811353761 ;
	setAttr ".r" -type "double3" 96.060628095749507 164.66477669013238 99.198217720715519 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 118.31548097244467 0 ;
	setAttr ".radi" 2;
createNode transform -n "Upper" -p "LegRightBackjoint1";
	rename -uid "B8E8DF05-46BB-F771-A3FD-08A0C2022DB4";
	setAttr ".t" -type "double3" 0.21432531571330507 0.024829279945982812 0.020637820167586477 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 173.22254551773435 19.147387673592995 94.209151299785134 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.49304799412282574 0.49304799412282568 0.49304799412282552 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "UpperShape" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper";
	rename -uid "17E768B6-49C8-01D4-7689-8BB1D8614DC2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "UpperShapeOrig" -p "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper";
	rename -uid "EDF8EDA4-42ED-1EE1-6D8C-E2832F30225A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore" -p "Legs1";
	rename -uid "704C9348-46D1-E60A-8387-D1B5A5F11697";
	setAttr ".t" -type "double3" 0.44392292728677463 0.49221627990049172 -0.17915906653479105 ;
	setAttr ".r" -type "double3" 34.779724057388243 -34.281759932727915 -129.7454462303665 ;
	setAttr ".s" -type "double3" 0.49304799412282607 0.49304799412282607 0.49304799412282613 ;
	setAttr ".rp" -type "double3" 0.54745885245280901 -0.017699941649845535 -0.89377720655236959 ;
	setAttr ".rpt" -type "double3" -0.72387124184434348 -0.96909574321077019 0.58722358444760625 ;
	setAttr ".sp" -type "double3" 1.1103561093008485 -0.035899023747850797 -1.8127590360497752 ;
	setAttr ".spt" -type "double3" -0.56289725684803971 0.018199082098005262 0.91898182949740559 ;
createNode transform -n "LegLeft11" -p "Fore";
	rename -uid "BD4C0347-4EC6-D42F-0D8D-2BAADEAE4D56";
	setAttr ".t" -type "double3" 1.0936294385513337 -0.11010932923940611 -1.7988301976658088 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -110.02084527087979 16.622764256878302 70.68059949553826 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape11" -p "LegLeft11";
	rename -uid "4BC71F38-47E6-90CB-0400-71B76E281991";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1Shape11Orig" -p "LegLeft11";
	rename -uid "4CA471BE-4840-93FF-A9B6-95865C577517";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft12" -p "Fore";
	rename -uid "86BB0F84-453F-D1E2-CD00-A59127FD8EAC";
	setAttr ".t" -type "double3" 1.216570879836453 -0.35571933853565624 -2.3067830683285169 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -117.2612260744536 44.258316052703513 56.852327454201955 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape12" -p "LegLeft12";
	rename -uid "E67C26D8-4697-4475-973E-539B5C95F64B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape12Orig" -p "LegLeft12";
	rename -uid "A5AD57A8-48A9-BDE3-069D-9A8924B2BC95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft13" -p "Fore";
	rename -uid "90F24AA9-48AA-00A7-4BD1-088B990C3BE8";
	setAttr ".t" -type "double3" 1.1695781269658387 -0.33019029451465542 -2.1581332650532796 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -127.06424519254847 57.023248205963306 44.272120752511455 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape13" -p "LegLeft13";
	rename -uid "7A6ABAAF-4698-F4C8-C0F5-51A350801372";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3Shape13Orig" -p "LegLeft13";
	rename -uid "5D776804-4518-3053-854C-79A96E38A495";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft14" -p "Fore";
	rename -uid "8BA2737A-428F-2B01-FEA1-98B000B4A291";
	setAttr ".t" -type "double3" 1.1372693137721541 -0.24601156063461233 -2.0115726374200178 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -151.59230674399802 68.101404268047617 16.870847166754871 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape14" -p "LegLeft14";
	rename -uid "235586D2-4875-EE7A-CF9E-45A6771C1ED6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4Shape14Orig" -p "LegLeft14";
	rename -uid "5BF89E46-4615-ADF7-AEF2-1B9A036DC330";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore1" -p "Legs1";
	rename -uid "EE9CFDF3-42CD-98BF-01C3-1D83745B3D2B";
	setAttr ".t" -type "double3" 0.33353060529658557 0.41246504038313786 -0.14997345287743172 ;
	setAttr ".r" -type "double3" 57.355756936444855 -0.070145071260994465 -116.33021781089469 ;
	setAttr ".s" -type "double3" 0.49304799412282602 0.49304799412282596 0.49304799412282618 ;
	setAttr ".rp" -type "double3" 0.89921588444889777 0.06306201514405492 -0.24871814597276726 ;
	setAttr ".rpt" -type "double3" -1.0799116602704049 -0.97705424275004404 0.16875574723762882 ;
	setAttr ".sp" -type "double3" 1.8237897632028273 0.12790238657445013 -0.50445017308154294 ;
	setAttr ".spt" -type "double3" -0.9245738787539296 -0.064840371430395213 0.25573202710877568 ;
createNode transform -n "LegLeft6" -p "Fore1";
	rename -uid "5D7B2E88-40A0-D4D9-65B8-6CB8538520AB";
	setAttr ".t" -type "double3" 1.7356727207163891 -0.17727184758686956 -0.73150833152927064 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -36.608319504520011 -4.851880809451024 -118.21832769396663 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape6" -p "LegLeft6";
	rename -uid "1BA8EA74-492A-E4FC-D56E-C2B23BBE156B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1Shape6Orig" -p "LegLeft6";
	rename -uid "F7BC3A2D-45B8-917D-D17A-6AA9DDFB1172";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft7" -p "Fore1";
	rename -uid "36D0B1FB-4B30-8328-CA25-2791BE7686E1";
	setAttr ".t" -type "double3" 2.2448135793709842 -0.43599313373238635 -0.76022105846318189 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -38.162779577078851 -2.7455627888117888 -114.32845768522931 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999967 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape7" -p "LegLeft7";
	rename -uid "0AD3F5E3-4F86-CC59-8F10-5FB627A67C75";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape7Orig" -p "LegLeft7";
	rename -uid "F2F30175-4C70-729B-D152-E8AC474A5E7A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft32" -p "Fore1";
	rename -uid "7D248FEB-4410-A51C-ACDE-FF86D996BD7B";
	setAttr ".t" -type "double3" 2.1381037528132003 -0.26371374567727723 -0.71050961379971855 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -38.162779577078851 -2.7455627888117888 -114.32845768522931 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999967 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape32" -p "LegLeft32";
	rename -uid "8461ED3E-49D9-700B-C641-428A47FD6340";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape32Orig" -p "LegLeft32";
	rename -uid "EF766745-4D48-1243-356C-A4A21F4E88AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore2" -p "Legs1";
	rename -uid "BB8BBEE1-462B-0E20-620D-499CF24D853E";
	setAttr ".t" -type "double3" 0.1543966746993205 0.52230881553475283 0.39304943669410319 ;
	setAttr ".r" -type "double3" 90.251881267584068 30.819276909036883 -33.015959646346587 ;
	setAttr ".s" -type "double3" 0.49304799412282602 0.49304799412282591 0.49304799412282607 ;
	setAttr ".rp" -type "double3" 0.57491573470022372 0.022093910904479461 0.82773089618913642 ;
	setAttr ".rpt" -type "double3" -0.60404168237673084 -0.99040859624752942 -1.1064297098427991 ;
	setAttr ".sp" -type "double3" 1.1660441611227879 0.044810872709839134 1.678803901558791 ;
	setAttr ".spt" -type "double3" -0.59112842642256413 -0.022716961805359672 -0.85107300536965458 ;
createNode transform -n "LegLeft1" -p "Fore2";
	rename -uid "C47D40CA-4D36-DB09-298A-4883C4E2978D";
	setAttr ".t" -type "double3" 1.1503654364093507 -0.025674732633073488 1.6538300722500052 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 108.25022884911161 -14.277077412883907 76.703583904204493 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape" -p "LegLeft1";
	rename -uid "B40D8B33-4627-7AEB-1E21-4388633E3D4E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1ShapeOrig" -p "LegLeft1";
	rename -uid "2339BEEC-4F77-8AA8-793B-85AFD1A10D52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft2" -p "Fore2";
	rename -uid "68E735D3-4D5F-530B-717C-27BDE5833657";
	setAttr ".t" -type "double3" 1.2817638808027578 -0.2542781479685346 2.1695784763974202 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 114.24935793860585 -42.357515407935516 64.469926376632145 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape" -p "LegLeft2";
	rename -uid "49B99A3B-48F0-E840-F16F-B9935ED09B8D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2ShapeOrig" -p "LegLeft2";
	rename -uid "CBE1FEB9-42ED-FE4C-40B6-4BB572356E46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft3" -p "Fore2";
	rename -uid "2ECD8276-41F5-7F4B-C5E8-D5AE301F79CD";
	setAttr ".t" -type "double3" 1.2338429208041142 -0.17042021622610898 1.9812556635479897 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 122.49867274450773 -55.606495351892292 53.623199026505027 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape" -p "LegLeft3";
	rename -uid "3F12AC52-4426-450B-139D-28BF5D6CF0C4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3ShapeOrig" -p "LegLeft3";
	rename -uid "CEEAED2E-417D-C779-C3BC-D3B334E39845";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft4" -p "Fore2";
	rename -uid "D17C311F-4F81-D282-3309-F0896C502E4C";
	setAttr ".t" -type "double3" 1.2014314469312355 -0.12310699114725662 1.8583221504752334 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 143.85402703811118 -67.923904880351245 29.598997471422425 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape" -p "LegLeft4";
	rename -uid "47967CB2-45E4-225D-DAF1-62B1FDADE5EF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4ShapeOrig" -p "LegLeft4";
	rename -uid "923B3DD6-4792-1FC2-B042-9CA3B67ABFC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore3" -p "Legs1";
	rename -uid "FF426054-4FBF-0009-6816-78BABD0C6193";
	setAttr ".t" -type "double3" 0.12369884699334335 0.41530409591155576 0.20379860135224165 ;
	setAttr ".r" -type "double3" 100.36812074248338 25.930281905009998 -148.25955712161547 ;
	setAttr ".s" -type "double3" 0.49304799412282596 0.49304799412282596 0.49304799412282585 ;
	setAttr ".rp" -type "double3" 0.58287592569173141 0.020162011981235479 -0.5644454805798178 ;
	setAttr ".rpt" -type "double3" -0.7836438498240843 -0.79296067167859885 0.41876080659298881 ;
	setAttr ".sp" -type "double3" 1.1821890214333326 0.040892595085201398 -1.1448083904773083 ;
	setAttr ".spt" -type "double3" -0.59931309574160141 -0.02073058310396592 0.58036290989749062 ;
createNode transform -n "LegLeft34" -p "Fore3";
	rename -uid "AA48D23C-4687-E485-DF36-D08B7E3DEE77";
	setAttr ".t" -type "double3" 1.167489976123643 -0.029331259709131745 -1.1202312897719422 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -110.98741681959201 14.04558318888172 76.033801421227651 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape34" -p "LegLeft34";
	rename -uid "F4D9A3BC-46BE-9930-1F6D-5CAF7F17D3E4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1Shape34Orig" -p "LegLeft34";
	rename -uid "1CC7534E-4882-CA4A-6C9E-CB9EB161179A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft35" -p "Fore3";
	rename -uid "0A2C54A2-49D1-1C60-2364-A79BC652C953";
	setAttr ".t" -type "double3" 1.3224123697383399 -0.26151219563051681 -1.6277867586854529 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -117.65561026474737 41.533029634522507 62.192687653953278 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape35" -p "LegLeft35";
	rename -uid "BEC1EADC-485E-96D3-3D9D-CBA9C6CA2EBB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape35Orig" -p "LegLeft35";
	rename -uid "C042C3B1-4EC1-B0B5-C55A-828F8E4FEDCD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft36" -p "Fore3";
	rename -uid "4A3FF887-4FCB-6CE3-B56F-08B4545B6E0D";
	setAttr ".t" -type "double3" 1.2659017636039915 -0.1763479510922587 -1.4424555529768963 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -126.54146472415745 54.298589436721265 50.312791195578733 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape36" -p "LegLeft36";
	rename -uid "48B9F86B-4320-F5AC-7CD9-BAA68CF7B39F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3Shape36Orig" -p "LegLeft36";
	rename -uid "17B67D5B-433A-26B6-7441-67B7C30CFD2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft37" -p "Fore3";
	rename -uid "3455E769-4F1C-050F-5617-61918A186D78";
	setAttr ".t" -type "double3" 1.2278831338080651 -0.1281819901247811 -1.3214749035535136 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -147.87561370198677 65.778276572025263 25.900321335163309 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape37" -p "LegLeft37";
	rename -uid "8EFFC3ED-4DC4-E271-2EA5-0D942F560E1D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4Shape37Orig" -p "LegLeft37";
	rename -uid "37269E40-4C19-62A5-B961-29BFE8E42C3E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore4" -p "Legs1";
	rename -uid "5BCD19E0-4425-7ACE-F60E-E8B4613F6BE2";
	setAttr ".t" -type "double3" -0.0486639142982353 0.55964549783837447 -0.27751055555143456 ;
	setAttr ".r" -type "double3" 117.27961854775634 -5.4347451407551599 -65.332100404029916 ;
	setAttr ".s" -type "double3" 0.49304799412282602 0.49304799412282585 0.49304799412282591 ;
	setAttr ".rp" -type "double3" 0.86970144332353361 0.080539040985697211 0.49408002526508576 ;
	setAttr ".rpt" -type "double3" -0.93483410302785019 -1.0793303403280756 -0.56588452377099496 ;
	setAttr ".sp" -type "double3" 1.7639285702212533 0.16334929245373558 1.0020931656848051 ;
	setAttr ".spt" -type "double3" -0.89422712689771988 -0.082810251468038387 -0.50801314041971946 ;
createNode transform -n "LegLeft43" -p "Fore4";
	rename -uid "28CE13C1-4F4D-ADA7-1E14-0DACBE1512AD";
	setAttr ".t" -type "double3" 2.0051599285954591 -0.24122002083018906 1.2676835335993593 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 23.443773208722085 8.1200587468262135 -116.12865096996354 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape43" -p "LegLeft43";
	rename -uid "34D0CBA2-4F38-74F6-744D-929E0C8D7ED8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape43Orig" -p "LegLeft43";
	rename -uid "771E2C43-4ED8-836D-4806-1CB89C91BCCD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft40" -p "Fore4";
	rename -uid "847321F5-42E9-E032-E08C-329341503EAD";
	setAttr ".t" -type "double3" 2.064710985593559 -0.41144424675565455 1.372639652437897 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 23.443773208722085 8.1200587468262135 -116.12865096996354 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape40" -p "LegLeft40";
	rename -uid "28571BC2-49AC-AABA-526E-129706A7C51B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape40Orig" -p "LegLeft40";
	rename -uid "36BE8DD0-443C-DEA7-CB04-D7BD67B9A509";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft39" -p "Fore4";
	rename -uid "EB6E2943-4ED3-6A4D-D71B-05BE4362329E";
	setAttr ".t" -type "double3" 1.8385629829542123 -0.19667856672775855 0.89335025955641467 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 24.130657318682665 10.506245561026658 -119.89418492477797 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 0.99999999999999967 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape39" -p "LegLeft39";
	rename -uid "6A20593A-412B-BA13-371E-8E8EE5B9317B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1Shape39Orig" -p "LegLeft39";
	rename -uid "FE75CBD1-4AF9-2B83-500F-5C9BAC8510CC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fore5" -p "Legs1";
	rename -uid "373FADAC-4726-2651-4CAE-7889BB87A346";
	setAttr ".t" -type "double3" -0.12393623190118039 0.69980652169777047 -0.2161120291561148 ;
	setAttr ".r" -type "double3" 149.81775386688264 -46.043695359688066 -69.144986522098989 ;
	setAttr ".s" -type "double3" 0.49304799412282579 0.49304799412282579 0.49304799412282585 ;
	setAttr ".rp" -type "double3" 0.52559882639308897 -0.026227905777642141 1.0514889604932409 ;
	setAttr ".rpt" -type "double3" -0.63221832999732053 -1.1151396132072016 -1.3131825436090687 ;
	setAttr ".sp" -type "double3" 1.0660196018608166 -0.05319544160057646 2.1326300340475539 ;
	setAttr ".spt" -type "double3" -0.5404207754677276 0.026967535822934319 -1.0811410735543134 ;
createNode transform -n "LegLeft45" -p "Fore5";
	rename -uid "AA9F042B-4DE8-7FAB-DBDA-80B056DAFC44";
	setAttr ".t" -type "double3" 1.0197783363351167 -0.12284766003575935 2.1204401252884795 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 109.45055616339326 -15.873313895907733 64.98640138557785 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999922 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft1Shape45" -p "LegLeft45";
	rename -uid "80CDD9A3-499F-8709-CEB1-39963F3C032D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft1Shape45Orig" -p "LegLeft45";
	rename -uid "62AC2F71-4171-CA84-5897-DC9C42FDDDD7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft46" -p "Fore5";
	rename -uid "8FB815F9-48BD-53ED-7040-AEB0FC615B15";
	setAttr ".t" -type "double3" 1.1154441287348216 -0.37160558118429499 2.6327120709351721 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 116.27762469352943 -43.658199406212589 51.681329345594008 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft2Shape46" -p "LegLeft46";
	rename -uid "654E32B5-4C84-A52F-836A-CC8A4EDB62FF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft2Shape46Orig" -p "LegLeft46";
	rename -uid "C3AA6117-4383-B40D-E8E0-0A964C0F7FD6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft47" -p "Fore5";
	rename -uid "73CB7645-44E5-64FF-AEFA-CFA14F292972";
	setAttr ".t" -type "double3" 1.0717628837494404 -0.34378496320847535 2.4834647025271428 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 125.5672054771735 -56.587656767370873 39.671131139685315 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999933 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft3Shape47" -p "LegLeft47";
	rename -uid "5049340F-4905-0CEA-5187-7796ED10AE55";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft3Shape47Orig" -p "LegLeft47";
	rename -uid "38A027C7-472A-6F62-B284-6C845EB5231F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegLeft48" -p "Fore5";
	rename -uid "3E109BD9-4E6F-CC5C-7FB2-70A249992F2D";
	setAttr ".t" -type "double3" 1.0486654964217772 -0.25909156345162321 2.3354664763345654 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 149.10504597866671 -68.083357677703248 13.324777530731957 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999911 0.99999999999999922 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegLeft4Shape48" -p "LegLeft48";
	rename -uid "3EBF7630-4A75-815D-D5EB-4B92C1E3B1B8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "LegLeft4Shape48Orig" -p "LegLeft48";
	rename -uid "230C464A-48DA-4BDB-16BA-31B99BACC3BB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LeftWings" -p "HoverWing";
	rename -uid "83C0257A-489F-985D-CE09-F28D79A1C4BB";
	setAttr ".t" -type "double3" 4.0956755023460287 1.2207691997560288 0 ;
	setAttr ".rp" -type "double3" 0.036179351806640628 0 1.3974453988711024 ;
	setAttr ".sp" -type "double3" 0.036179351806640628 0 1.3974453988711024 ;
createNode transform -n "Rear" -p "LeftWings";
	rename -uid "33F15653-420F-21CE-10C4-E2AAF3A96793";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.49342965358690211 0 0.97659236200410027 ;
	setAttr ".sp" -type "double3" 0.49342965358690211 0 0.97659236200410027 ;
createNode mesh -n "RearShape" -p "|HoverWing|LeftWings|Rear";
	rename -uid "38F5653C-4FA9-3F7E-AE38-75B990584CB9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35000002384185791 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "RearShapeOrig" -p "|HoverWing|LeftWings|Rear";
	rename -uid "30BD4312-4AC6-C86B-F646-C795A98CD7D8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Front" -p "LeftWings";
	rename -uid "23FD99D2-4306-1CF8-6323-8C947A492219";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.37982910156249999 0.01147869884967804 1.4535841622988368 ;
	setAttr ".sp" -type "double3" -0.37982910156249999 0.01147869884967804 1.4535841622988368 ;
createNode mesh -n "FrontShape" -p "|HoverWing|LeftWings|Front";
	rename -uid "643F170C-4A96-B4BA-B304-1283801771EB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "FrontShapeOrig" -p "|HoverWing|LeftWings|Front";
	rename -uid "DEC86D66-4099-D1BD-9684-EC979754383C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RightWings" -p "HoverWing";
	rename -uid "85CA565B-48EB-45DB-1A37-A58B996497D0";
	setAttr ".t" -type "double3" 4.0956755023460287 1.2207691997560288 0.064178583114104418 ;
	setAttr ".rp" -type "double3" 0.036179351806640628 0 -1.5309150709302202 ;
	setAttr ".sp" -type "double3" 0.036179351806640628 0 -1.5309150709302202 ;
createNode transform -n "Rear" -p "RightWings";
	rename -uid "D26E9DDA-465A-DB93-7F2C-C5B4F83AE8CF";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.49342965358690211 5.1539632451061763e-017 -1.1100620340632179 ;
	setAttr ".sp" -type "double3" 0.49342965358690211 5.1539632451061763e-017 -1.1100620340632179 ;
createNode mesh -n "RearShape" -p "|HoverWing|RightWings|Rear";
	rename -uid "19A024A5-4B07-E681-31EB-E485D30BAF4D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35000002384185791 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "RearShapeOrig" -p "|HoverWing|RightWings|Rear";
	rename -uid "D2EA9BA3-4BC8-1079-9FC1-EBBCD6981FA3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Front" -p "RightWings";
	rename -uid "CE09BC9E-49C9-EDB0-EF1B-36A61C57BE6F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.37982910156249999 -0.011478698849678046 -1.5870538343579546 ;
	setAttr ".sp" -type "double3" -0.37982910156249999 -0.011478698849678046 -1.5870538343579546 ;
createNode mesh -n "FrontShape" -p "|HoverWing|RightWings|Front";
	rename -uid "58F98DD9-4997-4523-1D14-C69C5819C026";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "FrontShapeOrig" -p "|HoverWing|RightWings|Front";
	rename -uid "8BAA709A-4DC1-E525-3A62-6496A23418C3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "WingJoints" -p "HoverWing";
	rename -uid "A0812614-4AC6-BA56-95C1-A79DA619601A";
	setAttr ".t" -type "double3" 4.0956755023460287 0 0 ;
	setAttr ".rp" -type "double3" -0.14836613222602238 1.5345817397214367 -0.027073113122395114 ;
	setAttr ".sp" -type "double3" -0.14836613222602238 1.5345817397214367 -0.027073113122395114 ;
createNode joint -n "WingRightFrontjoint" -p "WingJoints";
	rename -uid "FC89BEB1-43D3-5952-F4D4-8A90331D49FF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.20976895568284046 1.2097251597222003 -0.18955041034334116 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 259.73321116729301 0 ;
	setAttr ".bps" -type "matrix" -0.17823188183752703 0 0.98398851431134804 0 0 1 0 0
		 -0.98398851431134804 0 -0.17823188183752703 0 -20.976895568284046 120.97251597222004 -18.955041034334116 1;
	setAttr ".radi" 2;
createNode joint -n "joint2" -p "WingRightFrontjoint";
	rename -uid "E9A4B0A3-49C0-B96C-4A98-09A607C3F300";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.4293900952643641 -0.0077787513135556966 0.92325373185883874 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 100.26678883270706 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 0 2.4980018054066022e-016 0 0 1 0 0
		 -2.4980018054066022e-016 0 1.0000000000000002 0 -68.52452552306103 120.19464084086447 -274.45956109079475 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector7" -p "WingRightFrontjoint";
	rename -uid "5E31CE5B-4419-F0D0-C41B-3B86212B73F3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "WingRightRearjoint" -p "WingJoints";
	rename -uid "B6839AC1-47C0-FDCA-74F6-538B6EFC4122";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.079246049924627776 1.2097251597221996 -0.21664324604475491 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 98.530765609948119 0 ;
	setAttr ".bps" -type "matrix" -0.14834045293024456 0 -0.98893635286829773 0 0 1 0 0
		 0.98893635286829773 0 -0.14834045293024456 0 7.9246049924627773 120.97251597221997 -21.664324604475489 1;
	setAttr ".radi" 2;
createNode joint -n "joint4" -p "WingRightRearjoint";
	rename -uid "5C373FE6-4F40-FED5-AB0D-5AADE114F804";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.3543059589100919 0.0087590251540640915 0.64539423193149181 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 261.46923439005189 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 0 2.4980018054066022e-016 0 0 1 0 0
		 -2.4980018054066022e-016 0 1.0000000000000002 0 36.826105553209672 121.84841848762638 -264.06400672686863 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector8" -p "WingRightRearjoint";
	rename -uid "2960D61B-4204-A592-B8A1-17B4BB7C5B34";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "WingLeftRearjoint" -p "WingJoints";
	rename -uid "6AF63553-46AE-CC3D-F73C-9B8E0CA5CC10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.069922985227613366 1.2210310023364261 0.20038584473572982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 262.54975093134385 0 ;
	setAttr ".bps" -type "matrix" -0.12966525414066421 0 0.99155782578155127 0 0 1 0 0
		 -0.99155782578155127 0 -0.12966525414066421 0 6.9922985227613363 122.10310023364262 20.038584473572982 1;
	setAttr ".radi" 2;
createNode joint -n "joint6" -p "WingLeftRearjoint";
	rename -uid "127C90CD-448F-C049-345F-E7B719C642FD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.2977206766175593 -1.9895196601282807e-015 -0.62015418484716822 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 97.450249068656163 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 0 0 0 0 1 0 0 0 0 1.0000000000000002 0
		 38.690718492612696 122.10310023364242 255.91212130805565 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector5" -p "WingLeftRearjoint";
	rename -uid "CF6A0446-48C8-28F7-B92E-91A75573FC80";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "WingLeftFrontjoint" -p "WingJoints";
	rename -uid "71563D3D-487A-B8F6-DA9B-DD8143109738";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.22841508507687022 1.209725159722201 0.19988012904111924 ;
	setAttr ".r" -type "double3" -1.3070559421435782e-014 -1.2515141759334072e-016 -5.1070197820229651e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -79.01934998982648 0 ;
	setAttr ".bps" -type "matrix" 0.19047746835531953 0 0.98169156767741894 0 0 1 0 0
		 -0.98169156767741894 0 0.19047746835531953 0 -22.841508507687021 120.97251597222009 19.988012904111923 1;
	setAttr ".radi" 2;
createNode joint -n "joint8" -p "WingLeftFrontjoint";
	rename -uid "AEA84085-49D8-ECA3-16F7-E69AAFE29B7D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.3658203771769557 0.022652876929607508 0.92438977379504739 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 79.019349989826495 0 ;
	setAttr ".bps" -type "matrix" 1 0 2.7755575615628914e-017 0 0 1 0 0 -2.7755575615628914e-017 0 1 0
		 -68.524525523061101 123.23780366518085 269.84614678411748 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector6" -p "WingLeftFrontjoint";
	rename -uid "1359B11E-424E-C0E2-479E-609B1DDBCB03";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "WingTransforms";
	rename -uid "753894F2-4B74-C929-7865-B2BF71EA0A6A";
	setAttr ".rp" -type "double3" 0.024243927001953127 0.01147869884967804 -5.2010269165039062 ;
	setAttr ".sp" -type "double3" 0.024243927001953127 0.01147869884967804 -5.2010269165039062 ;
createNode transform -n "pSphere1" -p "WingTransforms";
	rename -uid "82983CCB-4C56-CCB5-9A3C-DAB6074C189A";
	setAttr ".t" -type "double3" -0.3494221191874935 0.011478699975768603 -5.1709472514168837 ;
	setAttr ".r" -type "double3" 0 -19.326123494345488 0 ;
	setAttr ".s" -type "double3" 1 0.027424510443129834 0.25992985759693282 ;
createNode transform -n "transform1" -p "pSphere1";
	rename -uid "A108758C-49D4-4295-C7A2-84B915EA6920";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform1";
	rename -uid "0C2C554A-4EBA-5593-1632-AA9CCFD0ABCD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4" -p "pSphere1";
	rename -uid "A2A09DBB-423A-78D3-9ADA-FFBA0CD09F40";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform4";
	rename -uid "2E6994E4-4A23-AAE0-169F-509F905DE84A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2" -p "WingTransforms";
	rename -uid "3E9643B9-45C9-7356-1E7C-E68DB3699552";
	setAttr ".t" -type "double3" 0.25477618577469141 0.011478699975768603 -5.0538245825511661 ;
	setAttr ".r" -type "double3" 0 -3.264286034692641 0 ;
	setAttr ".s" -type "double3" 1 0.027424510443129834 0.25992985759693282 ;
createNode transform -n "transform2" -p "pSphere2";
	rename -uid "3A1D1CF1-41B3-9C24-43AB-9DB03EAAA406";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform2";
	rename -uid "8CD7D9AE-4DF3-3038-018A-EFA69E4F8CA5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "pSphere2";
	rename -uid "6B3EE945-41AF-363A-FF89-C5A075120608";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform3";
	rename -uid "039E90D7-43EB-5354-4668-C6B668F05609";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode ikHandle -n "WingLeftRearikHandle";
	rename -uid "ECCD967D-4843-9846-DD40-D2A1EC6091AC";
	setAttr ".roc" yes;
createNode ikHandle -n "WingLeftFrontikHandle";
	rename -uid "15DFA513-495B-6215-E9B9-ABA668E5D3F7";
	setAttr ".roc" yes;
createNode ikHandle -n "WingRightFrontikHandle";
	rename -uid "F37E68F9-40E7-9E66-8AE2-F38B6B02B7FC";
	setAttr ".roc" yes;
createNode ikHandle -n "WingRightReadikHandle";
	rename -uid "71016D6C-4657-579B-2F5D-F9A09B3C0F54";
	setAttr ".roc" yes;
createNode joint -n "TailJoints";
	rename -uid "CF095BCA-4EEC-5B7E-F56C-B6A727BD3057";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.1836704132098412 0.97428120729644008 -0.064720924955931167 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.7243290197403448 0 ;
	setAttr ".bps" -type "matrix" 0.9999200919144301 0 -0.012641589529709642 0 0 1 0 0
		 0.012641589529709642 0 0.9999200919144301 0 -18.367041320984121 97.428120729644007 -6.4720924955931167 1;
	setAttr ".radi" 2;
createNode joint -n "joint10" -p "TailJoints";
	rename -uid "80E68570-48BF-D3EA-0611-83932B720B47";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.48321299504529341 0.045081894284377685 -0.0027282837928579717 ;
	setAttr ".r" -type "double3" 0.25420004227320409 0.51911908927974582 8.8627826385452124 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -1.8345109274763471 0 ;
	setAttr ".bps" -type "matrix" 0.99981228479901285 0 0.019375117160357731 0 0 1 0 0
		 -0.019375117160357731 0 0.99981228479901285 0 29.946947936626579 101.93631015808178 -7.3557571075638579 1;
	setAttr ".radi" 2;
createNode joint -n "joint11" -p "joint10";
	rename -uid "42D0DAE1-4139-17A2-B492-E5BC595DC904";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.63761427763750866 -0.1947991102307807 -1.6324049125828393e-016 ;
	setAttr ".r" -type "double3" -2.3166304694132629 -1.1347636413606434 -21.924520756443876 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -5.1306958112730632 0 ;
	setAttr ".bps" -type "matrix" 0.9940736587360961 0 0.10870860594742049 0 0 1 0 0
		 -0.10870860594742049 0 0.9940736587360961 0 93.696406711149535 82.456399135003707 -6.1203719743295153 1;
	setAttr ".radi" 2;
createNode joint -n "joint12" -p "joint11";
	rename -uid "D050FC14-40B4-7D06-C47F-DA8A52E12E6B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.53585401562958268 -0.73689326446937142 -0.018480497712245806 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.2408777190090694 0 ;
	setAttr ".bps" -type "matrix" 1 0 -5.5511151231257827e-017 0 0 1 0 0 5.5511151231257827e-017 0 1 0
		 147.16514181203365 8.7670726880665626 -2.1322752688952189 1;
	setAttr ".radi" 2;
createNode ikEffector -n "effector9" -p "joint11";
	rename -uid "1B3BFAE7-475E-6BC2-70C9-F9808F278C8A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "TailikHandle1";
	rename -uid "136828CC-4BA8-5335-7D3A-19BD56B08CBB";
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FB8F5BCC-4FD4-5DB7-D5B9-BAB1020B06E9";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F939EF92-424E-46F3-19C8-B38BC2C1FB08";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E7A10E38-4003-3001-C98C-3FAAEE354313";
createNode displayLayerManager -n "layerManager";
	rename -uid "6F8C53C5-4295-D89C-919C-E9A96CC5DA76";
createNode displayLayer -n "defaultLayer";
	rename -uid "CD628ACC-4C72-A848-C946-B9BB5E6169E2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A85D5042-453C-801A-3A2C-DEAC17279BB4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3A8437DE-46EB-C394-8F00-7BBB568372A2";
	setAttr ".g" yes;
createNode polySphere -n "polySphere3";
	rename -uid "A28FED19-4CED-5694-FACC-7DAF47740982";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C11171EA-4AB9-A32E-7570-B9B659EEB61F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 440\n                -height 321\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 440\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 439\n                -height 321\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 439\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 440\n                -height 321\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 440\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1041\n                -height 687\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1041\n            -height 687\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n"
		+ "            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1041\\n    -height 687\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1041\\n    -height 687\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CF61C8B0-40DF-5E1E-FD5A-6D98B4126B81";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere4";
	rename -uid "7D6EE40E-4276-0899-63D3-88B5F1F7AB1F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polySphere -n "polySphere5";
	rename -uid "12415AA9-45FA-CFF3-38CA-71A8332BE31F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polySphere -n "polySphere6";
	rename -uid "72D3179D-4FA8-A5D0-4930-C897BA385BD4";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polyCone -n "polyCone1";
	rename -uid "F5977BDE-4515-2955-F482-C7B22A98D135";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".cuv" 3;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "C9A4ACEE-434A-A514-86CE-F3A83DAAD0F1";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "7B60DBAA-4FE3-AF59-D920-E881AED40933";
	setAttr ".g" yes;
createNode blinn -n "Eyes1";
	rename -uid "AF351E4E-48BA-2C81-630E-6892550634DA";
	setAttr ".c" -type "float3" 0.48199999 0 0 ;
	setAttr ".it" -type "float3" 0.02739726 0.02739726 0.02739726 ;
	setAttr ".ambc" -type "float3" 0.26027396 0.26027396 0.26027396 ;
	setAttr ".sc" -type "float3" 0.39726028 0 0 ;
	setAttr ".rfl" 0.075342468917369843;
	setAttr ".rc" -type "float3" 0.48199999 0 0 ;
	setAttr ".ec" 0.5410417914390564;
	setAttr ".sro" 1;
createNode shadingEngine -n "blinn1SG";
	rename -uid "6C5C2EC8-46D0-CD78-7AF1-79A7891013BB";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7E3029F7-453D-8EE3-61A1-D0842845913E";
createNode blinn -n "Legs";
	rename -uid "B95C7F88-4AC4-B8BC-A62B-7F8EF41B492D";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "EBC1B75B-476F-B52A-9EFF-C495BE2D0495";
	setAttr ".ihi" 0;
	setAttr -s 41 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "D7DD83F5-4806-00AC-5557-EFB02D2C39D1";
createNode blinn -n "Wings";
	rename -uid "43A7028E-4139-5A5D-A5DD-EBBCE6A6C4A1";
createNode shadingEngine -n "blinn3SG";
	rename -uid "9411E424-48DF-CA5E-8092-B29E3652D9FB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F8E69E03-4518-D7A8-652D-47B9912AEBD0";
createNode file -n "file1";
	rename -uid "1778866C-4716-6F9C-49B7-15AACC7587ED";
	setAttr ".ftn" -type "string" "C:/Users/David/Documents/My Models/Erebus/Textures/BeetleTexturesRed.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "85F8C08D-493E-8086-1875-9B937AF3E535";
createNode animLayer -n "BaseAnimation";
	rename -uid "B912C062-4A75-D677-144B-DB9591305449";
	setAttr -s 3 ".cdly";
	setAttr -s 3 ".chsl";
	setAttr ".ovrd" yes;
createNode animLayer -n "AnimPinch";
	rename -uid "BF2D8146-45A9-C810-6425-A4AA52F1B93B";
	setAttr ".lo" yes;
createNode animLayer -n "AnimCrawl";
	rename -uid "D4A30579-46D6-0FB4-BFE5-599F11E5FE0A";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode blinn -n "Body";
	rename -uid "935ED46B-485E-4349-87A9-929BC406CA1A";
createNode shadingEngine -n "blinn4SG";
	rename -uid "73D907EA-4BFE-7A15-6C8B-CCB1C20A6698";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "A1840EAC-4944-9849-FC8E-9B95EA10E108";
createNode file -n "file2";
	rename -uid "B60562B2-47A8-B7EC-D8BF-EBA7BBB21201";
	setAttr ".ftn" -type "string" "C:/Users/David/Documents/My Models/Erebus/Textures/BeetleTexturesUVTexture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "737B4681-457C-B78C-30AC-8784FB90990C";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "BA19F166-4C9A-113A-9A03-CE88A065331F";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1033.6875089773198 -18345.681677217683 ;
	setAttr ".tgi[0].vh" -type "double2" 63841.536303798559 18600.478993526754 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1962.857177734375;
	setAttr ".tgi[0].ni[0].y" 104.28571319580078;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1348.5714111328125;
	setAttr ".tgi[0].ni[1].y" 81.428573608398438;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 30714.28515625;
	setAttr ".tgi[0].ni[2].y" 97.142860412597656;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 31328.572265625;
	setAttr ".tgi[0].ni[3].y" 74.285713195800781;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 2270;
	setAttr ".tgi[0].ni[4].y" 81.428573608398438;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 30407.142578125;
	setAttr ".tgi[0].ni[5].y" 74.285713195800781;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[6].y" 104.28571319580078;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 31021.427734375;
	setAttr ".tgi[0].ni[7].y" 97.142860412597656;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode renderLayerManager -n "renderLayerManager2";
	rename -uid "1B34BB35-4653-AE47-F5F0-C4904E68E9DC";
createNode renderLayer -n "defaultRenderLayer2";
	rename -uid "993B856B-47E4-6B09-245B-5BA70894876C";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "19D6E7DA-455A-B4D4-89B6-D59FA6E7323E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "F08EDF29-44DD-ECEE-B0E3-DAB45894FE78";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "FD99FFB8-4894-D43F-4A93-CE8E3CB2A95E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "A53885EF-4FE4-3058-B5BA-80A8793F473B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "39D09DDD-4F8D-AE8D-3A07-8E8EE85411E0";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder6";
	rename -uid "B65FFD57-4E8E-5CAE-290D-E682CCC0A4DB";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder7";
	rename -uid "11640FE6-4535-C983-F179-729675B74EE2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder8";
	rename -uid "C7C602B6-42D7-83E3-2200-EB89BEC62589";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder9";
	rename -uid "0C213CFC-4EB9-3CA7-993A-2F863E6AFAAF";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder10";
	rename -uid "8EA51514-41D1-FDA4-F3BA-0CA4A765A280";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder12";
	rename -uid "7B5F06F2-40C4-159D-8211-82BBF64960A7";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder13";
	rename -uid "EF73A190-4FC2-1F29-5605-94AF719833F0";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder14";
	rename -uid "B94573CE-4B29-CF32-1A5E-78A72B3D3C7B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder15";
	rename -uid "B2C55C5D-41D1-38C6-622E-45BDBB238985";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere8";
	rename -uid "65D506F2-4947-A066-D4CA-638537ED08DE";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.25;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polySphere -n "polySphere9";
	rename -uid "A514EE48-4DED-A8D1-CC43-27A6D55B8536";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.1;
createNode polySphere -n "polySphere10";
	rename -uid "696350F6-4AE5-148C-901F-8D995884818D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.1;
createNode polySphere -n "polySphere11";
	rename -uid "2B9AF371-4752-6850-7FAD-B584DC50384E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.25;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyCylinder -n "polyCylinder31";
	rename -uid "9D5BB7CA-4D1C-D699-2A91-11854F47BB7D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder32";
	rename -uid "132692D3-4B24-601B-27BD-7F9A3AA98FEC";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder33";
	rename -uid "82B577FC-4765-032C-FDB1-99AD7DAC72A6";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder34";
	rename -uid "6D7ED2E4-4437-04AE-1CED-3CAAFCAE19B3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder35";
	rename -uid "3A988750-4CD6-66C6-B9AA-60B9FE8AB838";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder36";
	rename -uid "1B636E4B-4C8D-C780-5EE9-0AA1DFB7602B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder37";
	rename -uid "41AEDCD1-4F9E-1167-C096-2E9C05EAE55C";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder38";
	rename -uid "DE462552-424C-97EC-C818-E9924ADFAC1C";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder39";
	rename -uid "5C1AD042-4835-BCA6-C4A9-E48F971E9F45";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder40";
	rename -uid "68CAA41A-4938-1C0A-282F-929583AC5F6C";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder47";
	rename -uid "0011CF2D-46AF-AE57-61CC-98AA119FF05F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder48";
	rename -uid "864314BA-4F16-3A2C-6823-50ABD1E14E98";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder49";
	rename -uid "CC3B2233-4A35-933B-EED3-C5B78525E8F2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder50";
	rename -uid "C8882A1C-4ACB-C221-5D7B-D38BAB502197";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder51";
	rename -uid "11C09D3B-4779-6E92-2112-44930F63325D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder41";
	rename -uid "66923585-4587-B2B5-19DE-FFB1E864519B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder44";
	rename -uid "4658DF40-45D9-CCBB-5EB4-059908B96E96";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder45";
	rename -uid "3F4160E1-49E6-69CE-CE57-758F9018AE3E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "EA412221-4437-D080-00A2-FE80C56BC77F";
createNode animCurveTU -n "pCylinder2_visibility";
	rename -uid "99484857-4FA5-35A5-4B7E-D297122E8D4F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCylinder2_translateX";
	rename -uid "8ABC5E5D-4195-16A1-E35F-01BF3D7858DB";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 0.48923819489764875 24 0.48923819489764875;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "pCylinder2_translateY";
	rename -uid "EE43A4BC-4D91-DFC8-7E15-9599D0B97370";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.6154398799467718e-017 24 1.6154398799467718e-017;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "pCylinder2_translateZ";
	rename -uid "CED164DD-4AF1-7032-83FB-B9B7DEC3214C";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.8491103262845889 24 1.8491103262845889;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder2_rotateX";
	rename -uid "B56AA716-43ED-C96D-2D4B-71888E4968E6";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 89.999999999999972 24 89.999999999999972;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder2_rotateY";
	rename -uid "D0D5EB79-4617-CFFF-4A6A-C199B698AA7A";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 4.7922389276329582 24 4.7922389276329582;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder2_rotateZ";
	rename -uid "C61A8A9F-43A4-F8CD-8DBE-09B30EE751D6";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 3.9896403973903859e-016 24 3.9896403973903859e-016;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder2_scaleX";
	rename -uid "701B26A8-41D9-E5DD-FF3F-C692D7F4FC7A";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.1366307266454831 24 1.1366307266454831;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder2_scaleY";
	rename -uid "0A6D5D7E-4CD3-97C1-4772-09A86C21BE34";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.1366307266454831 24 1.1366307266454831;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder2_scaleZ";
	rename -uid "AD2D8975-4779-A4A1-9986-2E8803F83F32";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.019024331074937 24 1.019024331074937;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder1_visibility";
	rename -uid "8AF2E76F-4B38-6331-E497-A99F4D26A9D0";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCylinder1_translateX";
	rename -uid "A057564B-46EB-DEAF-EB23-78A78E232596";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 0.48923819489764875 24 0.48923819489764875;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "pCylinder1_translateY";
	rename -uid "64F28926-41C5-0CC8-67E2-2D86B6AC876E";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.6154398799467718e-017 24 1.6154398799467718e-017;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "pCylinder1_translateZ";
	rename -uid "66F9D900-4F4A-27B4-2215-54BCB27A1811";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.8491103262845889 24 1.8491103262845889;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder1_rotateX";
	rename -uid "C71BA3D0-4374-86D6-05D6-31A9C21BA715";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 89.999999999999972 24 89.999999999999972;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder1_rotateY";
	rename -uid "6DE02C31-4BF4-820D-051D-4EB8D76DF921";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 4.7922389276329582 24 4.7922389276329582;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "pCylinder1_rotateZ";
	rename -uid "37C5DE5C-400F-AC13-6C8A-0299661A8789";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 3.9896403973903859e-016 24 3.9896403973903859e-016;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder1_scaleX";
	rename -uid "21BF5009-469E-FCD2-B568-FEACF8CA8E65";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.1366307266454831 24 1.1366307266454831;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder1_scaleY";
	rename -uid "EFFE4A1E-48A7-4451-2F6C-509A594D8CBA";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.1366307266454831 24 1.1366307266454831;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "pCylinder1_scaleZ";
	rename -uid "F401EFD2-4A7F-B6B9-54BC-99B56808DEE5";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 1.019024331074937 24 1.019024331074937;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "MandibleRightikHandle_visibility";
	rename -uid "748CF0E7-4D8D-6F71-011D-5F9312DD06F6";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleRightikHandle_translateX";
	rename -uid "0C45DD8E-4AB4-EE21-9125-C99173EE6092";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.12510743857154441 5 -0.37427730863263597
		 9 -0.3131637018781287 13 -0.38258173134227813 24 -0.12510743857154441;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleRightikHandle_translateY";
	rename -uid "5ED77896-4FCE-D18C-24EC-5DACB25E9A66";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.27314712976410399 5 0.26560084596567618
		 9 0.26942948167903541 13 0.26496577374041425 24 0.27314712976410399;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleRightikHandle_translateZ";
	rename -uid "067D4639-4737-9A4B-F634-EFAD93857643";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.1872418421981856 5 1.141803312512583
		 9 1.1648567229443161 13 1.1379793444230457 24 1.1872418421981856;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleRightikHandle_rotateX";
	rename -uid "1B629C20-4004-038B-BD99-5B8184DFC381";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleRightikHandle_rotateY";
	rename -uid "EED24E6B-4E49-0ECD-9FA6-A3A88565A358";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleRightikHandle_rotateZ";
	rename -uid "E4BFE743-4149-AB07-1D45-F4A2FCF213B1";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_scaleX";
	rename -uid "EE65DC1A-407E-2766-6287-E68F21A2EBFE";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_scaleY";
	rename -uid "47D9EC8C-4394-AA0B-DD3D-2BA33AB62373";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_scaleZ";
	rename -uid "DFEE1A1B-4C7D-92B2-E072-E0A83679DF02";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_poleVectorX";
	rename -uid "95FD4D41-4500-B225-F731-7A925C56FEF8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.024390469964425301 5 0.024390469964424861
		 9 0.0243904297584112 13 0.024390409935305564 24 0.024390469964425301;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_poleVectorY";
	rename -uid "8BB6D4BC-4198-E814-F950-E9AE0CAD0E5B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -1.9829427299974827 5 -1.9829427299974829
		 9 -1.9829427321107826 13 -1.9829427337299292 24 -1.9829427299974827;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "MandibleRightikHandle_poleVectorZ";
	rename -uid "E52161E9-4411-D039-A703-59BCDB385084";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.25950575046624813 5 0.25950575046624813
		 9 0.259505738096931 13 0.25950572758779622 24 0.25950575046624813;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_offset";
	rename -uid "BCE84D91-4D34-7480-21C3-7EA77F230A0E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleRightikHandle_roll";
	rename -uid "259CD0A3-472A-B438-DC81-D3839C6706E3";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleRightikHandle_twist";
	rename -uid "BBDC659C-4503-D19E-9B70-5785EF6F5EE2";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleRightikHandle_ikBlend";
	rename -uid "74A08C15-446B-30D8-8062-F1AE4897BECB";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_visibility";
	rename -uid "EE4A1365-4768-2D6F-A319-9093BE5FCFA1";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleLeftikHandle_translateX";
	rename -uid "C0E45345-4955-7838-0680-1EB4874107FA";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.11073324148935072 5 0.30702325620810156
		 9 0.25325093962916051 13 0.28396415539902903 24 0.11073324148935072;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleLeftikHandle_translateY";
	rename -uid "7DFA22A6-446B-B494-935B-FE855316DB2E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.27528109171538612 5 0.27386632024802976
		 9 0.27582335281587761 13 0.27482399641632993 24 0.27528109171538612;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "MandibleLeftikHandle_translateZ";
	rename -uid "C785710E-46F0-4B5E-748A-C8812AFCCD68";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.195859585368547 5 1.1874881311959964
		 9 1.1990682406811994 13 1.1931548712802846 24 1.195859585368547;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleLeftikHandle_rotateX";
	rename -uid "5AD67C2F-4F6B-5695-D4A6-E6B2688E0DC7";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleLeftikHandle_rotateY";
	rename -uid "10318DBD-4801-A3B2-789E-0BB1A3D49E8D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleLeftikHandle_rotateZ";
	rename -uid "E062DF9E-437B-B1BC-A0B7-DFB9416ACC7A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_scaleX";
	rename -uid "40BD3162-4F8C-C2B1-7164-D4A2F32211A0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_scaleY";
	rename -uid "DB7ACB57-4235-40BA-5F13-879DAFBE8B71";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_scaleZ";
	rename -uid "BC3FF292-4A1D-E981-4508-84AA38C19D59";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_poleVectorX";
	rename -uid "57FBD968-42D9-A075-882C-B98D026D375F";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.032636889651108225 5 -0.032636889651108704
		 9 -0.032636889651108662 13 -0.032636889651109072 24 -0.032636889651108225;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_poleVectorY";
	rename -uid "5C422274-4429-581B-6730-18BB66B01CC7";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -1.9844953367789866 5 -1.9844953367789866
		 9 -1.9844953367789864 13 -1.9844953367789859 24 -1.9844953367789866;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "MandibleLeftikHandle_poleVectorZ";
	rename -uid "D09DE8BE-4B98-697F-EB49-338AFAD50FB0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.24640026732201153 5 0.24640026732201156
		 9 0.24640026732201145 13 0.24640026732201134 24 0.24640026732201153;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_offset";
	rename -uid "AA0BD7E0-4F9A-56A3-C287-1D86DB6CD451";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleLeftikHandle_roll";
	rename -uid "55F01B2D-47E8-86CF-61A4-15B233C090DB";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTA -n "MandibleLeftikHandle_twist";
	rename -uid "063D2644-4FBC-E00A-BCB3-14A9D01D4B88";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 24 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animCurveTU -n "MandibleLeftikHandle_ikBlend";
	rename -uid "42F02F79-43A8-A108-F531-E498DBF0EA14";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 24 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr ".pst" 3;
createNode animLayer -n "BaseAnimation1";
	rename -uid "4E3A018F-481D-521D-11B7-2AADE1309ECA";
	setAttr -s 2 ".cdly";
	setAttr -s 2 ".chsl";
	setAttr ".ovrd" yes;
createNode animLayer -n "AnimPinch1";
	rename -uid "0DC97545-4AF5-FA35-2B72-9A8F9FAAA997";
	setAttr -s 34 ".dsm";
	setAttr -s 30 ".bnds";
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "MandibleRightikHandle_visibility_AnimPinch1";
	rename -uid "025DA1F5-4B3B-7659-780A-2589DEE0D3F5";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "MandibleRightikHandle_translateX_AnimPinch1";
	rename -uid "7A456F23-4E10-5683-E39D-BDB4CF46918A";
	setAttr ".o" -0.12510743857154441;
createNode animBlendNodeAdditiveDL -n "MandibleRightikHandle_translateY_AnimPinch1";
	rename -uid "DDAE1589-4357-93B8-B1F8-349097F26DD0";
	setAttr ".o" 0.27314712976410399;
createNode animBlendNodeAdditiveDL -n "MandibleRightikHandle_translateZ_AnimPinch1";
	rename -uid "762B08BE-400D-AEB4-1779-24A0DA22727F";
	setAttr ".o" 1.1872418421981856;
createNode animBlendNodeAdditiveRotation -n "MandibleRightikHandle_rotate_AnimPinch1";
	rename -uid "9727AC57-41CF-61BD-EA1D-7C83756B663D";
createNode animBlendNodeAdditiveScale -n "MandibleRightikHandle_scaleX_AnimPinch1";
	rename -uid "85E8C137-4960-E451-E3C0-D9A22E210771";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "MandibleRightikHandle_scaleY_AnimPinch1";
	rename -uid "6F165607-4010-9444-1C79-25B5522E4E36";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "MandibleRightikHandle_scaleZ_AnimPinch1";
	rename -uid "85C12136-44BD-1F8C-CBC2-F0AA4328D5EC";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "MandibleRightikHandle_poleVectorX_AnimPinch1";
	rename -uid "64068094-4B3E-E0CA-7DBF-FE97DEBD1F85";
	setAttr ".o" 0.024390469964425301;
createNode animBlendNodeAdditive -n "MandibleRightikHandle_poleVectorY_AnimPinch1";
	rename -uid "32955B9B-4EC9-FF08-5831-A1BFDD6C0E76";
	setAttr ".o" -1.9829427299974827;
createNode animBlendNodeAdditive -n "MandibleRightikHandle_poleVectorZ_AnimPinch1";
	rename -uid "6E1416EC-479C-18D9-0F51-C980203DF467";
	setAttr ".o" 0.25950575046624813;
createNode animBlendNodeAdditive -n "MandibleRightikHandle_offset_AnimPinch1";
	rename -uid "C1235208-475B-B5BF-13C6-6AB115D86723";
createNode animBlendNodeAdditiveDA -n "MandibleRightikHandle_roll_AnimPinch1";
	rename -uid "256F49A0-4353-E4C3-E1D1-0B88FFF70092";
createNode animBlendNodeAdditiveDA -n "MandibleRightikHandle_twist_AnimPinch1";
	rename -uid "D128CEF4-4226-ECF4-85E1-50B64EC539FD";
createNode animBlendNodeAdditive -n "MandibleRightikHandle_ikBlend_AnimPinch1";
	rename -uid "0754C7A7-4DDA-B7B8-9301-AF86296434C2";
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "MandibleLeftikHandle_visibility_AnimPinch1";
	rename -uid "E8AEAC93-4BE4-FFCF-BA06-E2B0929F6769";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "MandibleLeftikHandle_translateX_AnimPinch1";
	rename -uid "25169AC8-4A7B-A2D8-6B83-DCADA3085837";
	setAttr ".o" 0.11073324148935072;
createNode animBlendNodeAdditiveDL -n "MandibleLeftikHandle_translateY_AnimPinch1";
	rename -uid "66B2FF0B-499C-BF5D-87CA-7EB7977FCF2E";
	setAttr ".o" 0.27528109171538612;
createNode animBlendNodeAdditiveDL -n "MandibleLeftikHandle_translateZ_AnimPinch1";
	rename -uid "BFF3308C-40ED-B568-C3A7-5FA9C0B1E307";
	setAttr ".o" 1.195859585368547;
createNode animBlendNodeAdditiveRotation -n "MandibleLeftikHandle_rotate_AnimPinch1";
	rename -uid "C470E035-465B-5440-9F38-E1830A62651D";
createNode animBlendNodeAdditiveScale -n "MandibleLeftikHandle_scaleX_AnimPinch1";
	rename -uid "100E12FE-44A8-21CC-89A7-B38AE9F7C7EE";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "MandibleLeftikHandle_scaleY_AnimPinch1";
	rename -uid "01BD209E-4F4C-1584-5CD1-3DB2B8645513";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "MandibleLeftikHandle_scaleZ_AnimPinch1";
	rename -uid "53D1DB57-4ABA-84F5-5C9D-5C92FE076D4F";
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditive -n "MandibleLeftikHandle_poleVectorX_AnimPinch1";
	rename -uid "009B2312-4AD7-1952-B347-D3AE6B6CEDE2";
	setAttr ".o" -0.032636889651108225;
createNode animBlendNodeAdditive -n "MandibleLeftikHandle_poleVectorY_AnimPinch1";
	rename -uid "3492AD4B-4E5A-AAA0-AE67-218A87914956";
	setAttr ".o" -1.9844953367789866;
createNode animBlendNodeAdditive -n "MandibleLeftikHandle_poleVectorZ_AnimPinch1";
	rename -uid "2214B86C-41CB-E705-9210-358A437071E6";
	setAttr ".o" 0.24640026732201153;
createNode animBlendNodeAdditive -n "MandibleLeftikHandle_offset_AnimPinch1";
	rename -uid "186742A0-4AB7-5F6E-5D9A-C787E257630E";
createNode animBlendNodeAdditiveDA -n "MandibleLeftikHandle_roll_AnimPinch1";
	rename -uid "4C95F622-4F6E-CB37-D090-8B838C644A5C";
createNode animBlendNodeAdditiveDA -n "MandibleLeftikHandle_twist_AnimPinch1";
	rename -uid "E71520C5-4502-8F21-0D88-EFAFD250A1D1";
createNode animBlendNodeAdditive -n "MandibleLeftikHandle_ikBlend_AnimPinch1";
	rename -uid "C2D5DAE0-4481-1446-0E28-8E8085903427";
	setAttr ".o" 1;
createNode animLayer -n "AnimCrawl1";
	rename -uid "32632089-41EF-78C1-B924-129360A87EA8";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "0F775C6F-4F7B-A7C0-E58D-38B20190EFAE";
createNode blinn -n "Membrane";
	rename -uid "B59C903C-4CF1-8DF2-8424-C3BF65CB6903";
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".ec" 0.51607739925384521;
	setAttr ".sro" 1;
createNode shadingEngine -n "blinn5SG";
	rename -uid "0854814A-4909-04FE-53EB-6FA852AAB692";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "A6A7A07A-403F-81E2-AC2A-B6ACFBEC642D";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5FB67057-4284-C8AB-F1C7-AC94FC2D1DDF";
	setAttr ".version" -type "string" "1.3.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "72191941-4BFD-7FC5-BF01-0C97E1F2CA9E";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B9CC98DD-45BB-23D2-CCB8-068AE37F4706";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5886B404-4C4B-F5C0-22A9-80806B84F14F";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blinn -n "blinn6";
	rename -uid "E15BBF1F-4B20-78B2-D68E-2CA58E403AAB";
createNode shadingEngine -n "blinn6SG";
	rename -uid "79762454-427A-F8EF-8526-4EA7DB84A8BF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "2D1FF231-46ED-6FEF-EFE7-3DB856E057BA";
createNode file -n "file3";
	rename -uid "0179922A-4154-AD32-9F33-BEB7A7D50F0D";
	setAttr ".ftn" -type "string" "C:/Users/David/Documents/My Models/Erebus/Textures/Wing.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "BA754DB0-4F5F-6C35-BB50-3CB5EC0479D9";
createNode polySphere -n "polySphere12";
	rename -uid "95C921C7-4840-7B9A-C703-7CB2940F825F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polySphere -n "polySphere13";
	rename -uid "75F083C0-4EDA-36C9-A858-47BCF5DD5266";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "77D30E6D-476F-4D07-B071-909E28B5DF13";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 36 -38 ;
createNode groupId -n "groupId1";
	rename -uid "5F349AEB-4E03-5571-0D3F-1FB11F4047E3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "81BFA3D2-4839-A8B9-E82F-31B5C482A7CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId2";
	rename -uid "984E155D-4FB7-11E5-3778-2DB4EEFE31FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "EFB6CE93-4849-6A4D-29D6-7BAAE7F8641A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A0EF92BA-4EB0-2AF8-F5BD-1C96EECBE7D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId4";
	rename -uid "64D94A9C-46C3-074D-BFE1-F5AAA3FE552E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "22E40C7D-4D2B-1F79-BC27-5C812FB208BD";
	setAttr ".ihi" 0;
createNode polySphere -n "polySphere14";
	rename -uid "1A063044-4112-24B1-CA91-3CAC47C772A0";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "8637EB78-43CA-4D8B-1CC6-4C8C7886841F";
	setAttr ".uopa" yes;
	setAttr -s 189 ".tk";
	setAttr ".tk[58]" -type "float3" 8.6539993 0 -15.666561 ;
	setAttr ".tk[59]" -type "float3" 7.9574013 0 -15.666561 ;
	setAttr ".tk[60]" -type "float3" 4.6647887 0 -15.666561 ;
	setAttr ".tk[61]" -type "float3" 9.6147079 0 -35.113541 ;
	setAttr ".tk[67]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[68]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[69]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[77]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[78]" -type "float3" 4.6647992 0 -15.666561 ;
	setAttr ".tk[79]" -type "float3" 3.7629097 0 -15.666561 ;
	setAttr ".tk[80]" -type "float3" 1.1071181 0 -15.666561 ;
	setAttr ".tk[81]" -type "float3" 16.647539 0 -41.717571 ;
	setAttr ".tk[82]" -type "float3" 0 5.6843419e-014 -22.315308 ;
	setAttr ".tk[86]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[87]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[88]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[89]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[90]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[92]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[93]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[96]" -type "float3" 9.1601086 0 -15.666561 ;
	setAttr ".tk[97]" -type "float3" 4.2558551 0 -15.666561 ;
	setAttr ".tk[98]" -type "float3" 0.37082711 -1.9073486e-006 -8.5766525 ;
	setAttr ".tk[99]" -type "float3" 0.022155028 0 -15.666561 ;
	setAttr ".tk[100]" -type "float3" 0.40110999 0 -35.113541 ;
	setAttr ".tk[101]" -type "float3" 14.062804 0 -41.717571 ;
	setAttr ".tk[102]" -type "float3" 28.964289 0 -41.717571 ;
	setAttr ".tk[103]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[106]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[107]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[108]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[109]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[110]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[112]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[113]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[116]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[117]" -type "float3" -1.5013962 4.7683716e-007 -10.018391 ;
	setAttr ".tk[118]" -type "float3" -3.1584749 0 -4.8103633 ;
	setAttr ".tk[119]" -type "float3" -3.1727529 0 -15.666561 ;
	setAttr ".tk[120]" -type "float3" -2.0434783 0 -35.113541 ;
	setAttr ".tk[121]" -type "float3" 11.983315 0 -41.717571 ;
	setAttr ".tk[122]" -type "float3" 27.453453 0 -41.717571 ;
	setAttr ".tk[123]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[126]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[127]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[128]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[129]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[130]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[131]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[132]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[133]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[136]" -type "float3" 2.6588943 0 2.5072553 ;
	setAttr ".tk[137]" -type "float3" -4.1728787 -4.7683716e-007 -7.5161209 ;
	setAttr ".tk[138]" -type "float3" -5.9978929 1.7881393e-006 -1.7802818 ;
	setAttr ".tk[139]" -type "float3" -5.7431421 0 -15.666561 ;
	setAttr ".tk[140]" -type "float3" -3.8339186 0 -35.113541 ;
	setAttr ".tk[141]" -type "float3" 10.460276 0 -41.717571 ;
	setAttr ".tk[142]" -type "float3" 26.346899 0 -41.717571 ;
	setAttr ".tk[143]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[146]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[147]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[148]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[149]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[150]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[151]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[152]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[153]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[156]" -type "float3" 1.5523407 0 2.5072553 ;
	setAttr ".tk[157]" -type "float3" -6.1295009 -3.5762787e-007 -5.6834254 ;
	setAttr ".tk[158]" -type "float3" -8.0775108 -1.1920929e-006 0.43898529 ;
	setAttr ".tk[159]" -type "float3" -7.6257215 0 -15.666561 ;
	setAttr ".tk[160]" -type "float3" -4.9261274 0 -35.113541 ;
	setAttr ".tk[161]" -type "float3" 9.5311861 0 -41.717571 ;
	setAttr ".tk[162]" -type "float3" 25.671875 0 -41.717571 ;
	setAttr ".tk[163]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[166]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[167]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[168]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[169]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[170]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[171]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[172]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[173]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[176]" -type "float3" 0.87731761 0 2.5072553 ;
	setAttr ".tk[177]" -type "float3" -7.3230844 4.4703484e-008 3.6317575 ;
	setAttr ".tk[178]" -type "float3" -9.3461246 4.7683716e-007 1.7927823 ;
	setAttr ".tk[179]" -type "float3" -8.7741346 0 -15.666561 ;
	setAttr ".tk[180]" -type "float3" -5.2932067 0 -35.113541 ;
	setAttr ".tk[181]" -type "float3" 9.2189274 0 -41.717571 ;
	setAttr ".tk[182]" -type "float3" 25.445005 0 -41.717571 ;
	setAttr ".tk[183]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[186]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[187]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[188]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[189]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[190]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[191]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[192]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[193]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[196]" -type "float3" 0.65044945 0 2.5072553 ;
	setAttr ".tk[197]" -type "float3" -7.724237 -2.9802322e-008 4.0074978 ;
	setAttr ".tk[198]" -type "float3" -9.7724962 1.9073486e-006 2.2477794 ;
	setAttr ".tk[199]" -type "float3" -9.1601086 0 -15.666561 ;
	setAttr ".tk[200]" -type "float3" -4.9261274 0 -35.113541 ;
	setAttr ".tk[201]" -type "float3" 9.5311861 0 -41.717571 ;
	setAttr ".tk[202]" -type "float3" 25.671875 0 -41.717571 ;
	setAttr ".tk[203]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[206]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[207]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[208]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[209]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[210]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[211]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[212]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[213]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[216]" -type "float3" 0.87731761 0 2.5072553 ;
	setAttr ".tk[217]" -type "float3" -7.3230853 1.4901161e-008 3.6317575 ;
	setAttr ".tk[218]" -type "float3" -9.3461256 -4.7683716e-007 1.7927814 ;
	setAttr ".tk[219]" -type "float3" -8.7741346 0 -15.666561 ;
	setAttr ".tk[220]" -type "float3" -3.8339186 0 -35.113541 ;
	setAttr ".tk[221]" -type "float3" 10.460276 0 -41.717571 ;
	setAttr ".tk[222]" -type "float3" 26.346899 0 -41.717571 ;
	setAttr ".tk[223]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[226]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[227]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[228]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[229]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[230]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[231]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[232]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[233]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[236]" -type "float3" 1.5523407 0 2.5072553 ;
	setAttr ".tk[237]" -type "float3" -6.1295009 -3.5762787e-007 -5.6834254 ;
	setAttr ".tk[238]" -type "float3" -8.0775118 -4.2915344e-006 0.43898338 ;
	setAttr ".tk[239]" -type "float3" -7.6257215 0 -15.666561 ;
	setAttr ".tk[240]" -type "float3" -2.0434783 0 -35.113541 ;
	setAttr ".tk[241]" -type "float3" 11.983315 0 -41.717571 ;
	setAttr ".tk[242]" -type "float3" 27.453453 0 -41.717571 ;
	setAttr ".tk[243]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[246]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[247]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[248]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[249]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[250]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[251]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[252]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[253]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[256]" -type "float3" 2.6588943 0 2.5072553 ;
	setAttr ".tk[257]" -type "float3" -4.1728787 1.1920929e-006 -7.5161209 ;
	setAttr ".tk[258]" -type "float3" -5.9978905 -1.0728836e-006 -1.7802818 ;
	setAttr ".tk[259]" -type "float3" -5.7431421 0 -15.666561 ;
	setAttr ".tk[260]" -type "float3" 0.40110999 0 -35.113541 ;
	setAttr ".tk[261]" -type "float3" 14.062804 0 -41.717571 ;
	setAttr ".tk[262]" -type "float3" 28.964289 0 -41.717571 ;
	setAttr ".tk[263]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[266]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[267]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[268]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[269]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[270]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[272]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[273]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[276]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[277]" -type "float3" -1.5013959 -2.8610229e-006 -10.018391 ;
	setAttr ".tk[278]" -type "float3" -3.1584749 -1.1920929e-006 -4.8103633 ;
	setAttr ".tk[279]" -type "float3" -3.1727529 0 -15.666561 ;
	setAttr ".tk[280]" -type "float3" 3.4396489 0 -35.113541 ;
	setAttr ".tk[281]" -type "float3" 16.647539 0 -41.717571 ;
	setAttr ".tk[282]" -type "float3" 0 -5.6843419e-014 -18.341293 ;
	setAttr ".tk[286]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[287]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[288]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[289]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[290]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[293]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[296]" -type "float3" 9.1601086 0 -15.666561 ;
	setAttr ".tk[297]" -type "float3" 4.2558551 0 -15.666561 ;
	setAttr ".tk[298]" -type "float3" 0.37082711 2.3841858e-006 -8.5766525 ;
	setAttr ".tk[299]" -type "float3" 0.022155028 0 -15.666561 ;
	setAttr ".tk[300]" -type "float3" 4.6647887 0 -15.666561 ;
	setAttr ".tk[301]" -type "float3" 9.6147079 0 -35.113541 ;
	setAttr ".tk[307]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[308]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[309]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[317]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[318]" -type "float3" 4.6647992 0 -15.666561 ;
	setAttr ".tk[319]" -type "float3" 3.7629097 0 -15.666561 ;
	setAttr ".tk[338]" -type "float3" 8.6539993 0 -15.666561 ;
	setAttr ".tk[339]" -type "float3" 7.9574013 0 -15.666561 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "8DD680E2-43E7-A035-65FE-B7A7CC76A6CF";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.04519155242307539 0 0 0 0 0.40734908217622845 0
		 45.703238867364306 0 -429.76885104755979 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "135525DB-42D7-E41E-946D-E8ADC67780B2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -652.52641171563312 -268.23727111331283 ;
	setAttr ".tgi[0].vh" -type "double2" 963.90866578381315 282.68254930784673 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -405.71429443359375;
	setAttr ".tgi[0].ni[0].y" 121.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 515.71429443359375;
	setAttr ".tgi[0].ni[1].y" 121.42857360839844;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 208.57142639160156;
	setAttr ".tgi[0].ni[2].y" 144.28572082519531;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -128.57142639160156;
	setAttr ".tgi[0].ni[3].y" 540;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -98.571426391601563;
	setAttr ".tgi[0].ni[4].y" 144.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 178.57142639160156;
	setAttr ".tgi[0].ni[5].y" 540;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode polyTweak -n "polyTweak2";
	rename -uid "D8ED4B0C-492E-4C3B-E6CB-4B8484880205";
	setAttr ".uopa" yes;
	setAttr -s 196 ".tk";
	setAttr ".tk[53]" -type "float3" 8.8406677 0 0.17802122 ;
	setAttr ".tk[63]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[71]" -type "float3" 8.8406677 0 1.1143699e-005 ;
	setAttr ".tk[72]" -type "float3" 8.8406677 0 4.1086802 ;
	setAttr ".tk[77]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[78]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[79]" -type "float3" 8.8406677 0 -3.8327017 ;
	setAttr ".tk[85]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[94]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[95]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[96]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[105]" -type "float3" 8.8406677 0 -4.0889158 ;
	setAttr ".tk[106]" -type "float3" 8.8406677 0 4.1583471 ;
	setAttr ".tk[107]" -type "float3" 8.8406677 0 -0.10858844 ;
	setAttr ".tk[118]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[119]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[120]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[125]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[127]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[130]" -type "float3" 8.8406677 0 4.1750288 ;
	setAttr ".tk[131]" -type "float3" 8.8406677 0 -0.14509831 ;
	setAttr ".tk[143]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[144]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[145]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[148]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[149]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[150]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[153]" -type "float3" 8.8406677 0 -4.1750288 ;
	setAttr ".tk[154]" -type "float3" 8.8406677 0 4.1583471 ;
	setAttr ".tk[155]" -type "float3" 8.8406677 0 -0.10858844 ;
	setAttr ".tk[157]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[159]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[160]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[161]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[162]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[163]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[164]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[166]" -type "float3" 8.8406677 0 -4.0889158 ;
	setAttr ".tk[167]" -type "float3" 8.8406677 0 4.1086802 ;
	setAttr ".tk[168]" -type "float3" 8.8406677 0 1.1143699e-005 ;
	setAttr ".tk[169]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[170]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[171]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[172]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[173]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[174]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[175]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[176]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[177]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[179]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[181]" -type "float3" 8.8406677 0 -3.8327017 ;
	setAttr ".tk[183]" -type "float3" 8.8406677 0 0.17802122 ;
	setAttr ".tk[184]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[185]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[186]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[187]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[188]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[189]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[190]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[194]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[195]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[196]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[197]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[198]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[199]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[201]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[202]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[203]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[205]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[208]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[209]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[210]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[211]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[212]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[218]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[219]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[221]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[222]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[223]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[224]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[231]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[232]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[233]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[243]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[244]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[245]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[257]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[261]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[269]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[270]" -type "float3" 0 0 -4.8643608 ;
	setAttr ".tk[276]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[277]" -type "float3" 0 0 -4.6798368 ;
	setAttr ".tk[287]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[288]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[289]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[299]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[300]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[301]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[309]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[310]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[311]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[317]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[318]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[319]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[328]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[329]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[337]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[338]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[339]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[341]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[369]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[370]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[374]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[375]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[378]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[379]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[382]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[383]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[386]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[390]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[391]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[395]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[396]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[401]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[402]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[404]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[405]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[409]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[410]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[413]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[414]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[417]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[418]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[421]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[422]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[424]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[425]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[430]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[431]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[433]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[434]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[435]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[436]" -type "float3" 0 0 5.1199327 ;
	setAttr ".tk[437]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[438]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[439]" -type "float3" 0 0 5.1199327 ;
	setAttr ".tk[440]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[463]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[471]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[481]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[487]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[488]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[491]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[505]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[516]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[520]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[533]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[539]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[544]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[557]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[558]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[564]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[565]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[566]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[567]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[568]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[576]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[577]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[584]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[586]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[588]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[589]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[594]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[596]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[597]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[598]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[604]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[607]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[608]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[609]" -type "float3" 0 0 -2.8496921 ;
	setAttr ".tk[612]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[615]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[616]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[617]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[628]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[629]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[631]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[638]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[640]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[650]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[653]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[664]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[677]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[678]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[692]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[703]" -type "float3" 0 0 -2.7485394 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "C095F071-4113-D00F-71CB-4ABAC5C2C0B8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.84437815508626901 0 0 0 0 1 0 0 0.1786336292196018 0 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "3B09A0CB-4127-6FE6-3D18-E0B089DB6047";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.84437815508626901 0 0 0 0 1 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "72AB0636-4472-1F58-6571-92B1A65067B4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.84437815508626901 0 0 0 0 1 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "AD668D24-4A55-3783-2A26-DB85566A324A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.04519155242307539 0 0 0 0 0.40734908217622845 0
		 45.703238867364306 0 -429.76885104755979 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "E4B07182-4FD6-65EA-5BCB-269BED6779F3";
	setAttr ".uopa" yes;
	setAttr -s 189 ".tk";
	setAttr ".tk[58]" -type "float3" 8.6539993 0 -15.666561 ;
	setAttr ".tk[59]" -type "float3" 7.9574013 0 -15.666561 ;
	setAttr ".tk[60]" -type "float3" 4.6647887 0 -15.666561 ;
	setAttr ".tk[61]" -type "float3" 9.6147079 0 -35.113541 ;
	setAttr ".tk[67]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[68]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[69]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[77]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[78]" -type "float3" 4.6647992 0 -15.666561 ;
	setAttr ".tk[79]" -type "float3" 3.7629097 0 -15.666561 ;
	setAttr ".tk[80]" -type "float3" 1.1071181 0 -15.666561 ;
	setAttr ".tk[81]" -type "float3" 16.647539 0 -41.717571 ;
	setAttr ".tk[82]" -type "float3" 0 5.6843419e-014 -22.315308 ;
	setAttr ".tk[86]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[87]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[88]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[89]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[90]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[92]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[93]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[96]" -type "float3" 9.1601086 0 -15.666561 ;
	setAttr ".tk[97]" -type "float3" 4.2558551 0 -15.666561 ;
	setAttr ".tk[98]" -type "float3" 0.37082711 -1.9073486e-006 -8.5766525 ;
	setAttr ".tk[99]" -type "float3" 0.022155028 0 -15.666561 ;
	setAttr ".tk[100]" -type "float3" 0.40110999 0 -35.113541 ;
	setAttr ".tk[101]" -type "float3" 14.062804 0 -41.717571 ;
	setAttr ".tk[102]" -type "float3" 28.964289 0 -41.717571 ;
	setAttr ".tk[103]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[106]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[107]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[108]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[109]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[110]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[112]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[113]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[116]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[117]" -type "float3" -1.5013962 4.7683716e-007 -10.018391 ;
	setAttr ".tk[118]" -type "float3" -3.1584749 0 -4.8103633 ;
	setAttr ".tk[119]" -type "float3" -3.1727529 0 -15.666561 ;
	setAttr ".tk[120]" -type "float3" -2.0434783 0 -35.113541 ;
	setAttr ".tk[121]" -type "float3" 11.983315 0 -41.717571 ;
	setAttr ".tk[122]" -type "float3" 27.453453 0 -41.717571 ;
	setAttr ".tk[123]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[126]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[127]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[128]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[129]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[130]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[131]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[132]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[133]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[136]" -type "float3" 2.6588943 0 2.5072553 ;
	setAttr ".tk[137]" -type "float3" -4.1728787 -4.7683716e-007 -7.5161209 ;
	setAttr ".tk[138]" -type "float3" -5.9978929 1.7881393e-006 -1.7802818 ;
	setAttr ".tk[139]" -type "float3" -5.7431421 0 -15.666561 ;
	setAttr ".tk[140]" -type "float3" -3.8339186 0 -35.113541 ;
	setAttr ".tk[141]" -type "float3" 10.460276 0 -41.717571 ;
	setAttr ".tk[142]" -type "float3" 26.346899 0 -41.717571 ;
	setAttr ".tk[143]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[146]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[147]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[148]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[149]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[150]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[151]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[152]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[153]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[156]" -type "float3" 1.5523407 0 2.5072553 ;
	setAttr ".tk[157]" -type "float3" -6.1295009 -3.5762787e-007 -5.6834254 ;
	setAttr ".tk[158]" -type "float3" -8.0775108 -1.1920929e-006 0.43898529 ;
	setAttr ".tk[159]" -type "float3" -7.6257215 0 -15.666561 ;
	setAttr ".tk[160]" -type "float3" -4.9261274 0 -35.113541 ;
	setAttr ".tk[161]" -type "float3" 9.5311861 0 -41.717571 ;
	setAttr ".tk[162]" -type "float3" 25.671875 0 -41.717571 ;
	setAttr ".tk[163]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[166]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[167]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[168]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[169]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[170]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[171]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[172]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[173]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[176]" -type "float3" 0.87731761 0 2.5072553 ;
	setAttr ".tk[177]" -type "float3" -7.3230844 4.4703484e-008 3.6317575 ;
	setAttr ".tk[178]" -type "float3" -9.3461246 4.7683716e-007 1.7927823 ;
	setAttr ".tk[179]" -type "float3" -8.7741346 0 -15.666561 ;
	setAttr ".tk[180]" -type "float3" -5.2932067 0 -35.113541 ;
	setAttr ".tk[181]" -type "float3" 9.2189274 0 -41.717571 ;
	setAttr ".tk[182]" -type "float3" 25.445005 0 -41.717571 ;
	setAttr ".tk[183]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[186]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[187]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[188]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[189]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[190]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[191]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[192]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[193]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[196]" -type "float3" 0.65044945 0 2.5072553 ;
	setAttr ".tk[197]" -type "float3" -7.724237 -2.9802322e-008 4.0074978 ;
	setAttr ".tk[198]" -type "float3" -9.7724962 1.9073486e-006 2.2477794 ;
	setAttr ".tk[199]" -type "float3" -9.1601086 0 -15.666561 ;
	setAttr ".tk[200]" -type "float3" -4.9261274 0 -35.113541 ;
	setAttr ".tk[201]" -type "float3" 9.5311861 0 -41.717571 ;
	setAttr ".tk[202]" -type "float3" 25.671875 0 -41.717571 ;
	setAttr ".tk[203]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[206]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[207]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[208]" -type "float3" -68.801239 0 0 ;
	setAttr ".tk[209]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[210]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[211]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[212]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[213]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[216]" -type "float3" 0.87731761 0 2.5072553 ;
	setAttr ".tk[217]" -type "float3" -7.3230853 1.4901161e-008 3.6317575 ;
	setAttr ".tk[218]" -type "float3" -9.3461256 -4.7683716e-007 1.7927814 ;
	setAttr ".tk[219]" -type "float3" -8.7741346 0 -15.666561 ;
	setAttr ".tk[220]" -type "float3" -3.8339186 0 -35.113541 ;
	setAttr ".tk[221]" -type "float3" 10.460276 0 -41.717571 ;
	setAttr ".tk[222]" -type "float3" 26.346899 0 -41.717571 ;
	setAttr ".tk[223]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[226]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[227]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[228]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[229]" -type "float3" -62.353424 0 0 ;
	setAttr ".tk[230]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[231]" -type "float3" -18.900806 0 10.658912 ;
	setAttr ".tk[232]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[233]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[236]" -type "float3" 1.5523407 0 2.5072553 ;
	setAttr ".tk[237]" -type "float3" -6.1295009 -3.5762787e-007 -5.6834254 ;
	setAttr ".tk[238]" -type "float3" -8.0775118 -4.2915344e-006 0.43898338 ;
	setAttr ".tk[239]" -type "float3" -7.6257215 0 -15.666561 ;
	setAttr ".tk[240]" -type "float3" -2.0434783 0 -35.113541 ;
	setAttr ".tk[241]" -type "float3" 11.983315 0 -41.717571 ;
	setAttr ".tk[242]" -type "float3" 27.453453 0 -41.717571 ;
	setAttr ".tk[243]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[246]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[247]" -type "float3" -56.506458 0 -11.038379 ;
	setAttr ".tk[248]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[249]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[250]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[251]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[252]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[253]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[256]" -type "float3" 2.6588943 0 2.5072553 ;
	setAttr ".tk[257]" -type "float3" -4.1728787 1.1920929e-006 -7.5161209 ;
	setAttr ".tk[258]" -type "float3" -5.9978905 -1.0728836e-006 -1.7802818 ;
	setAttr ".tk[259]" -type "float3" -5.7431421 0 -15.666561 ;
	setAttr ".tk[260]" -type "float3" 0.40110999 0 -35.113541 ;
	setAttr ".tk[261]" -type "float3" 14.062804 0 -41.717571 ;
	setAttr ".tk[262]" -type "float3" 28.964289 0 -41.717571 ;
	setAttr ".tk[263]" -type "float3" 0 0 -8.433814 ;
	setAttr ".tk[266]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[267]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[268]" -type "float3" -52.190739 0 0 ;
	setAttr ".tk[269]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[270]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[272]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[273]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[276]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[277]" -type "float3" -1.5013959 -2.8610229e-006 -10.018391 ;
	setAttr ".tk[278]" -type "float3" -3.1584749 -1.1920929e-006 -4.8103633 ;
	setAttr ".tk[279]" -type "float3" -3.1727529 0 -15.666561 ;
	setAttr ".tk[280]" -type "float3" 3.4396489 0 -35.113541 ;
	setAttr ".tk[281]" -type "float3" 16.647539 0 -41.717571 ;
	setAttr ".tk[282]" -type "float3" 0 -5.6843419e-014 -18.341293 ;
	setAttr ".tk[286]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[287]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[288]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[289]" -type "float3" -38.956074 0 0 ;
	setAttr ".tk[290]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[293]" -type "float3" 0 0 10.658912 ;
	setAttr ".tk[296]" -type "float3" 9.1601086 0 -15.666561 ;
	setAttr ".tk[297]" -type "float3" 4.2558551 0 -15.666561 ;
	setAttr ".tk[298]" -type "float3" 0.37082711 2.3841858e-006 -8.5766525 ;
	setAttr ".tk[299]" -type "float3" 0.022155028 0 -15.666561 ;
	setAttr ".tk[300]" -type "float3" 4.6647887 0 -15.666561 ;
	setAttr ".tk[301]" -type "float3" 9.6147079 0 -35.113541 ;
	setAttr ".tk[307]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[308]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[309]" -type "float3" -18.900806 0 0 ;
	setAttr ".tk[317]" -type "float3" 7.2821879 0 -15.666561 ;
	setAttr ".tk[318]" -type "float3" 4.6647992 0 -15.666561 ;
	setAttr ".tk[319]" -type "float3" 3.7629097 0 -15.666561 ;
	setAttr ".tk[338]" -type "float3" 8.6539993 0 -15.666561 ;
	setAttr ".tk[339]" -type "float3" 7.9574013 0 -15.666561 ;
createNode polySphere -n "polySphere15";
	rename -uid "BB524D06-485C-5D79-EA01-2BA82BE7EDD1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "E580A296-4DE3-501F-539B-0884FF8BE21A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.84437815508626901 0 0 0 0 1 0 0 0.1786336292196018 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "357A6FFB-4584-8E0D-6798-489AF9D0DF1E";
	setAttr ".uopa" yes;
	setAttr -s 196 ".tk";
	setAttr ".tk[53]" -type "float3" 8.8406677 0 0.17802122 ;
	setAttr ".tk[63]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[71]" -type "float3" 8.8406677 0 1.1143699e-005 ;
	setAttr ".tk[72]" -type "float3" 8.8406677 0 4.1086802 ;
	setAttr ".tk[77]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[78]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[79]" -type "float3" 8.8406677 0 -3.8327017 ;
	setAttr ".tk[85]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[94]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[95]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[96]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[105]" -type "float3" 8.8406677 0 -4.0889158 ;
	setAttr ".tk[106]" -type "float3" 8.8406677 0 4.1583471 ;
	setAttr ".tk[107]" -type "float3" 8.8406677 0 -0.10858844 ;
	setAttr ".tk[118]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[119]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[120]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[125]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[127]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[130]" -type "float3" 8.8406677 0 4.1750288 ;
	setAttr ".tk[131]" -type "float3" 8.8406677 0 -0.14509831 ;
	setAttr ".tk[143]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[144]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[145]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[148]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[149]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[150]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[153]" -type "float3" 8.8406677 0 -4.1750288 ;
	setAttr ".tk[154]" -type "float3" 8.8406677 0 4.1583471 ;
	setAttr ".tk[155]" -type "float3" 8.8406677 0 -0.10858844 ;
	setAttr ".tk[157]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[159]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[160]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[161]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[162]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[163]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[164]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[166]" -type "float3" 8.8406677 0 -4.0889158 ;
	setAttr ".tk[167]" -type "float3" 8.8406677 0 4.1086802 ;
	setAttr ".tk[168]" -type "float3" 8.8406677 0 1.1143699e-005 ;
	setAttr ".tk[169]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[170]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[171]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[172]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[173]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[174]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[175]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[176]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[177]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[179]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[181]" -type "float3" 8.8406677 0 -3.8327017 ;
	setAttr ".tk[183]" -type "float3" 8.8406677 0 0.17802122 ;
	setAttr ".tk[184]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[185]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[186]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[187]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[188]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[189]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[190]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[194]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[195]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[196]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[197]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[198]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[199]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[201]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[202]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[203]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[205]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[208]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[209]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[210]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[211]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[212]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[218]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[219]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[221]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[222]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[223]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[224]" -type "float3" 6.4245448 0 2.0235054 ;
	setAttr ".tk[231]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[232]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[233]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[243]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[244]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[245]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[257]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[261]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[269]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[270]" -type "float3" 0 0 -4.8643608 ;
	setAttr ".tk[276]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[277]" -type "float3" 0 0 -4.6798368 ;
	setAttr ".tk[287]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[288]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[289]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[299]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[300]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[301]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[309]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[310]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[311]" -type "float3" 0 0 -1.1184953 ;
	setAttr ".tk[317]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[318]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[319]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[328]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[329]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[337]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[338]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[339]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[341]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[369]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[370]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[374]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[375]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[378]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[379]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[382]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[383]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[386]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[390]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[391]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[395]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[396]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[401]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[402]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[404]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[405]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[409]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[410]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[413]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[414]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[417]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[418]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[421]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[422]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[424]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[425]" -type "float3" 0 0 2.2713382 ;
	setAttr ".tk[430]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[431]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[433]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[434]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[435]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[436]" -type "float3" 0 0 5.1199327 ;
	setAttr ".tk[437]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[438]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[439]" -type "float3" 0 0 5.1199327 ;
	setAttr ".tk[440]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[463]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[471]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[481]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[487]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[488]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[491]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[505]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[516]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[520]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[533]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[539]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[544]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[557]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[558]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[564]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[565]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[566]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[567]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[568]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[576]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[577]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[584]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[586]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[588]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[589]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[594]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[596]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[597]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[598]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[604]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[607]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[608]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[609]" -type "float3" 0 0 -2.8496921 ;
	setAttr ".tk[612]" -type "float3" 0 0 1.7244425 ;
	setAttr ".tk[615]" -type "float3" 0 0 2.8485839 ;
	setAttr ".tk[616]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[617]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[628]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[629]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[631]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[638]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[640]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[650]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[653]" -type "float3" 0 0 -6.015954 ;
	setAttr ".tk[664]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[677]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[678]" -type "float3" 0 0 -2.7485394 ;
	setAttr ".tk[692]" -type "float3" 0 0 -2.7713094 ;
	setAttr ".tk[703]" -type "float3" 0 0 -2.7485394 ;
createNode polyCBoolOp -n "polyCBoolOp2";
	rename -uid "E2AC0DD3-4A13-18BF-2F93-DF8C47E60D9A";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 0 ;
createNode groupParts -n "groupParts3";
	rename -uid "08FC9074-448E-E34A-FE6E-7AB1CB83F131";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySphere -n "polySphere16";
	rename -uid "97A2A2BC-4A1D-6C0D-7263-BAACA68999C3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode groupId -n "groupId6";
	rename -uid "D1714639-48B2-3922-A1EB-92B0132D27BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "8C92981F-46E4-AC22-8312-9DA7BBBEAC26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "E4E79FD9-49F7-CAF3-3E70-8CACA10038B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySphere -n "polySphere17";
	rename -uid "E32E1619-4851-7DC6-8F1F-1985502F1153";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode groupId -n "groupId8";
	rename -uid "9A3417C0-4F82-20AC-FD7D-F7A2F5B2B494";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "F075EF39-4896-71C1-CB0B-CD926280AC5C";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "628F609A-4DDC-EC17-E5DC-238C0315045D";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 479.11181640625 0 143.36247506777443 1;
createNode transformGeometry -n "transformGeometry8";
	rename -uid "50A8D624-4B03-3919-EAB1-03BB81A5A5D2";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 479.11181640625 0 143.36247506777443 1;
createNode transformGeometry -n "transformGeometry9";
	rename -uid "9CD73C0F-40BE-F543-5B8C-42903724B128";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 479.11181640625 0 -149.47357191235784 1;
createNode transformGeometry -n "transformGeometry10";
	rename -uid "9AA5C493-4640-2026-C76D-FF9656A0A679";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 479.11181640625 0 -149.47357191235784 1;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "05CBE86B-4FBF-68F0-A601-48B254BBA31C";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 0 -1.8748302413811372e-014 -306.18301418604403 1;
createNode transformGeometry -n "transformGeometry12";
	rename -uid "60B792A6-487C-403D-416A-2C818B3D79AA";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 0 -1.8748302413811372e-014 -306.18301418604403 1;
createNode polyCylinder -n "polyCylinder46";
	rename -uid "B528867F-48FE-4A9A-47A7-439A08A97F9B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder43";
	rename -uid "9B106838-4E80-6CA6-E6E6-87969317F998";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 0.25;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder42";
	rename -uid "8CB237B8-4A8D-D9AE-1395-2B931D99C6DA";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "6FFEA53F-46A1-0809-3DE5-86B42A0F4D00";
	setAttr -s 735 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.9999803010091487 1.9698990851298383e-005;
	setAttr -s 2 ".wl[1].w[0:1]"  0.9999845587737175 1.5441226282532666e-005;
	setAttr -s 2 ".wl[2].w[0:1]"  0.99999798177742538 2.0182225747006567e-006;
	setAttr -s 2 ".wl[3].w[0:1]"  0.9999957946189787 4.2053810213072935e-006;
	setAttr -s 2 ".wl[4].w[0:1]"  0.99997190359917432 2.8096400825666505e-005;
	setAttr -s 2 ".wl[5].w[0:1]"  0.99998971960286798 1.0280397132114186e-005;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99992657600144741 7.3423998552614935e-005;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99998580449806773 1.4195501932279139e-005;
	setAttr -s 2 ".wl[8].w[0:1]"  0.99999858955264265 1.4104473573818582e-006;
	setAttr -s 2 ".wl[9].w[0:1]"  0.99999989272578416 1.0727421587294339e-007;
	setAttr -s 2 ".wl[10].w[0:1]"  0.99999938053289894 6.1946710113539964e-007;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99995746242246741 4.2537577532627478e-005;
	setAttr -s 2 ".wl[12].w[0:1]"  0.999974586133624 2.5413866376040644e-005;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99999643396888838 3.5660311116255865e-006;
	setAttr -s 2 ".wl[14].w[0:1]"  0.99998427888188435 1.5721118115671328e-005;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99999829551421393 1.7044857860779146e-006;
	setAttr -s 2 ".wl[16].w[0:1]"  0.99999995577846956 4.4221530408676873e-008;
	setAttr -s 2 ".wl[17].w[0:1]"  0.99999998691060454 1.3089395486361442e-008;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99999995165147137 4.8348528631275061e-008;
	setAttr -s 2 ".wl[19].w[0:1]"  0.99993464145368538 6.5358546314628254e-005;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99994096880836147 5.9031191638545247e-005;
	setAttr -s 2 ".wl[21].w[0:1]"  0.99998425671710611 1.5743282893855109e-005;
	setAttr -s 2 ".wl[22].w[0:1]"  0.99999883966997083 1.1603300292404472e-006;
	setAttr -s 2 ".wl[23].w[0:1]"  0.99997919597487095 2.0804025129045081e-005;
	setAttr -s 2 ".wl[24].w[0:1]"  0.99999647597362107 3.5240263789530593e-006;
	setAttr -s 2 ".wl[25].w[0:1]"  0.9999998437419616 1.5625803840634283e-007;
	setAttr -s 2 ".wl[26].w[0:1]"  0.9999999963986993 3.6013007281435562e-009;
	setAttr -s 2 ".wl[27].w[0:1]"  0.99990157730034046 9.8422699659564362e-005;
	setAttr -s 2 ".wl[28].w[0:1]"  0.99987510473419317 0.00012489526580683558;
	setAttr -s 2 ".wl[29].w[0:1]"  0.99994592194170806 5.4078058291931523e-005;
	setAttr -s 2 ".wl[30].w[0:1]"  0.99998982929805724 1.0170701942731524e-005;
	setAttr -s 2 ".wl[31].w[0:1]"  0.99999964966043842 3.5033956157339868e-007;
	setAttr -s 2 ".wl[32].w[0:1]"  0.99996849344097816 3.1506559021766221e-005;
	setAttr -s 2 ".wl[33].w[0:1]"  0.99999994028963846 5.9710361595328196e-008;
	setAttr -s 2 ".wl[34].w[0:1]"  0.99999991413646883 8.5863531127426525e-008;
	setAttr -s 2 ".wl[35].w[0:1]"  0.99999918974705915 8.102529408967692e-007;
	setAttr -s 2 ".wl[36].w[0:1]"  0.9999999868009235 1.3199076496839324e-008;
	setAttr -s 2 ".wl[37].w[0:1]"  0.99985851187039765 0.00014148812960230127;
	setAttr -s 2 ".wl[38].w[0:1]"  0.99976277607095443 0.00023722392904567159;
	setAttr -s 2 ".wl[39].w[0:1]"  0.99984852386476197 0.0001514761352380721;
	setAttr -s 2 ".wl[40].w[0:1]"  0.99994978039020799 5.0219609792061018e-005;
	setAttr -s 2 ".wl[41].w[0:1]"  0.99999310328067503 6.8967193249552666e-006;
	setAttr -s 2 ".wl[42].w[0:1]"  0.99999990254515769 9.7454842281070444e-008;
	setAttr -s 2 ".wl[43].w[0:1]"  0.99998973733932084 1.0262660679194919e-005;
	setAttr -s 2 ".wl[44].w[0:1]"  0.99999976086858644 2.3913141350977311e-007;
	setAttr -s 2 ".wl[45].w[0:1]"  0.99999901578181205 9.8421818795954819e-007;
	setAttr -s 2 ".wl[46].w[0:1]"  0.99999993335902648 6.6640973586517696e-008;
	setAttr -s 2 ".wl[47].w[0:1]"  0.9998097858854158 0.00019021411458420637;
	setAttr -s 2 ".wl[48].w[0:1]"  0.99960017586022898 0.00039982413977105737;
	setAttr -s 2 ".wl[49].w[0:1]"  0.9996425062880171 0.00035749371198293877;
	setAttr -s 2 ".wl[50].w[0:1]"  0.99982309783718648 0.00017690216281347364;
	setAttr -s 2 ".wl[51].w[0:1]"  0.99995275736327149 4.7242636728477106e-005;
	setAttr -s 2 ".wl[52].w[0:1]"  0.99999505595216731 4.9440478326670989e-006;
	setAttr -s 2 ".wl[53].w[0:1]"  0.99999999758626434 2.4137356986213168e-009;
	setAttr -s 2 ".wl[54].w[0:1]"  0.9999487749305338 5.1225069466212505e-005;
	setAttr -s 2 ".wl[55].w[0:1]"  0.99996708721321015 3.2912786789879497e-005;
	setAttr -s 2 ".wl[56].w[0:1]"  0.99999986116643447 1.3883356558187611e-007;
	setAttr -s 2 ".wl[57].w[0:1]"  0.99999614690195349 3.8530980465375156e-006;
	setAttr -s 2 ".wl[58].w[0:1]"  0.99999791244582892 2.0875541711649554e-006;
	setAttr -s 2 ".wl[59].w[0:1]"  0.99941095974089844 0.00058904025910155302;
	setAttr -s 2 ".wl[60].w[0:1]"  0.99927938169676156 0.0007206183032384643;
	setAttr -s 2 ".wl[61].w[0:1]"  0.99950505205569706 0.00049494794430285339;
	setAttr -s 2 ".wl[62].w[0:1]"  0.99979991768308663 0.00020008231691337971;
	setAttr -s 2 ".wl[63].w[0:1]"  0.99995247386293595 4.7526137063992526e-005;
	setAttr -s 2 ".wl[64].w[0:1]"  0.99999622449342307 3.7755065769383573e-006;
	setAttr -s 2 ".wl[65].w[0:1]"  0.99991631883137511 8.3681168624928569e-005;
	setAttr -s 2 ".wl[66].w[0:1]"  0.99999782137972471 2.1786202753649117e-006;
	setAttr -s 2 ".wl[67].w[0:1]"  0.99990333488025862 9.6665119741463256e-005;
	setAttr -s 2 ".wl[68].w[0:1]"  0.99998089039311389 1.9109606886208635e-005;
	setAttr -s 2 ".wl[69].w[0:1]"  0.99999994251596813 5.7484031854650599e-008;
	setAttr -s 2 ".wl[70].w[0:1]"  0.99999837695697646 1.6230430235349429e-006;
	setAttr -s 2 ".wl[71].w[0:1]"  0.99999999988676769 1.1323230853713683e-010;
	setAttr -s 2 ".wl[72].w[0:1]"  0.99999998974230608 1.0257693895781303e-008;
	setAttr -s 2 ".wl[73].w[0:1]"  0.99876539095930017 0.0012346090406997897;
	setAttr -s 2 ".wl[74].w[0:1]"  0.99976491536123691 0.0002350846387631181;
	setAttr -s 2 ".wl[75].w[0:1]"  0.99884831631835524 0.0011516836816447744;
	setAttr -s 2 ".wl[76].w[0:1]"  0.99936075138981906 0.00063924861018097631;
	setAttr -s 2 ".wl[77].w[0:1]"  0.99978017160291999 0.0002198283970800071;
	setAttr -s 2 ".wl[78].w[0:1]"  0.99995420030297888 4.5799697021079296e-005;
	setAttr -s 2 ".wl[79].w[0:1]"  0.9999998553190329 1.4468096712045252e-007;
	setAttr -s 2 ".wl[80].w[0:1]"  0.99987003974601196 0.00012996025398800455;
	setAttr -s 2 ".wl[81].w[0:1]"  0.99976569110402402 0.0002343088959759323;
	setAttr -s 2 ".wl[82].w[0:1]"  0.99996170044826105 3.8299551738967807e-005;
	setAttr -s 2 ".wl[83].w[0:1]"  0.99989607553378212 0.00010392446621792523;
	setAttr -s 2 ".wl[84].w[0:1]"  0.9999997531317818 2.4686821821118155e-007;
	setAttr -s 2 ".wl[85].w[0:1]"  0.99999828954210901 1.7104578910319759e-006;
	setAttr -s 2 ".wl[86].w[0:1]"  0.99999129884821358 8.7011517864238604e-006;
	setAttr -s 2 ".wl[87].w[0:1]"  0.99999342630524646 6.5736947534326384e-006;
	setAttr -s 2 ".wl[88].w[0:1]"  0.99999636043262086 3.63956737913573e-006;
	setAttr -s 2 ".wl[89].w[0:1]"  0.99824289184245152 0.001757108157548485;
	setAttr -s 2 ".wl[90].w[0:1]"  0.99775281366083812 0.0022471863391619233;
	setAttr -s 2 ".wl[91].w[0:1]"  0.99973683471807795 0.00026316528192204191;
	setAttr -s 2 ".wl[92].w[0:1]"  0.99925710708047033 0.00074289291952969478;
	setAttr -s 2 ".wl[93].w[0:1]"  0.99833178700893277 0.0016682129910672444;
	setAttr -s 2 ".wl[94].w[0:1]"  0.99904859804249013 0.00095140195750987016;
	setAttr -s 2 ".wl[95].w[0:1]"  0.99976442614864347 0.00023557385135656203;
	setAttr -s 2 ".wl[96].w[0:1]"  0.99995537763223385 4.4622367766091087e-005;
	setAttr -s 2 ".wl[97].w[0:1]"  0.99981544796260025 0.00018455203739974047;
	setAttr -s 2 ".wl[98].w[0:1]"  0.99955279261826135 0.00044720738173865358;
	setAttr -s 2 ".wl[99].w[0:1]"  0.99974971863236983 0.0002502813676302724;
	setAttr -s 2 ".wl[100].w[0:1]"  0.9998838196509704 0.00011618034902965147;
	setAttr -s 2 ".wl[101].w[0:1]"  0.99998097549856357 1.9024501436506964e-005;
	setAttr -s 2 ".wl[102].w[0:1]"  0.99998546922779674 1.4530772203318306e-005;
	setAttr -s 2 ".wl[103].w[0:1]"  0.99999596409749469 4.0359025052919416e-006;
	setAttr -s 2 ".wl[104].w[0:1]"  0.99998577594818039 1.4224051819632877e-005;
	setAttr -s 2 ".wl[105].w[0:1]"  0.99999990538943329 9.4610566635355628e-008;
	setAttr -s 2 ".wl[106].w[0:1]"  0.99999997718476652 2.2815233533413136e-008;
	setAttr -s 2 ".wl[107].w[0:1]"  0.99999999846401078 1.5359893285943322e-009;
	setAttr -s 2 ".wl[108].w[0:1]"  0.99734978236432337 0.0026502176356766761;
	setAttr -s 2 ".wl[109].w[0:1]"  0.99722651007724772 0.0027734899227523676;
	setAttr -s 2 ".wl[110].w[0:1]"  0.99707117576832838 0.0029288242316715968;
	setAttr -s 2 ".wl[111].w[0:1]"  0.9997364107760438 0.00026358922395623621;
	setAttr -s 2 ".wl[112].w[0:1]"  0.99921886190718401 0.00078113809281597953;
	setAttr -s 2 ".wl[113].w[0:1]"  0.99656683473225793 0.0034331652677420743;
	setAttr -s 2 ".wl[114].w[0:1]"  0.99741361813062013 0.0025863818693798524;
	setAttr -s 2 ".wl[115].w[0:1]"  0.99787317927160679 0.0021268207283932456;
	setAttr -s 2 ".wl[116].w[0:1]"  0.99795460657227386 0.0020453934277261687;
	setAttr -s 2 ".wl[117].w[0:1]"  0.99801502843759304 0.001984971562406962;
	setAttr -s 2 ".wl[118].w[0:1]"  0.99891027665076149 0.0010897233492385406;
	setAttr -s 2 ".wl[119].w[0:1]"  0.99975286113979722 0.00024713886020277321;
	setAttr -s 2 ".wl[120].w[0:1]"  0.9999560617428026 4.393825719741816e-005;
	setAttr -s 2 ".wl[121].w[0:1]"  0.99976570422825861 0.00023429577174133542;
	setAttr -s 2 ".wl[122].w[0:1]"  0.99933481377739564 0.00066518622260431433;
	setAttr -s 2 ".wl[123].w[0:1]"  0.99954624754034593 0.00045375245965403882;
	setAttr -s 2 ".wl[124].w[0:1]"  0.99972989939491419 0.00027010060508584884;
	setAttr -s 2 ".wl[125].w[0:1]"  0.99999987431023418 1.2568976586309375e-007;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99999994325644292 5.6743557104984582e-008;
	setAttr -s 2 ".wl[127].w[0:1]"  0.99999249151257907 7.5084874209051571e-006;
	setAttr -s 2 ".wl[128].w[0:1]"  0.9999846838917964 1.5316108203613784e-005;
	setAttr -s 2 ".wl[129].w[0:1]"  0.99999510302994676 4.896970053181085e-006;
	setAttr -s 2 ".wl[130].w[0:1]"  0.99999997089182713 2.9108172905706589e-008;
	setAttr -s 2 ".wl[131].w[0:1]"  0.99999998650813082 1.3491869201154129e-008;
	setAttr -s 2 ".wl[132].w[0:1]"  0.99789097105541658 0.0021090289445834186;
	setAttr -s 2 ".wl[133].w[0:1]"  0.99815400968627865 0.0018459903137214497;
	setAttr -s 2 ".wl[134].w[0:1]"  0.99850010425208036 0.0014998957479196863;
	setAttr -s 2 ".wl[135].w[0:1]"  0.99868484893404774 0.0013151510659523196;
	setAttr -s 2 ".wl[136].w[0:1]"  0.99689359281915957 0.0031064071808403803;
	setAttr -s 2 ".wl[137].w[0:1]"  0.99668078010488792 0.00331921989511205;
	setAttr -s 2 ".wl[138].w[0:1]"  0.99775464747237619 0.0022453525276238291;
	setAttr -s 2 ".wl[139].w[0:1]"  0.99771218912709392 0.0022878108729060842;
	setAttr -s 2 ".wl[140].w[0:1]"  0.99764017518949433 0.0023598248105056196;
	setAttr -s 2 ".wl[141].w[0:1]"  0.99786077630572123 0.0021392236942787981;
	setAttr -s 2 ".wl[142].w[0:1]"  0.99857855857425148 0.0014214414257485435;
	setAttr -s 2 ".wl[143].w[0:1]"  0.99880307476260166 0.0011969252373983316;
	setAttr -s 2 ".wl[144].w[0:1]"  0.99974580388379242 0.0002541961162076282;
	setAttr -s 2 ".wl[145].w[0:1]"  0.99995628564916494 4.371435083506614e-005;
	setAttr -s 2 ".wl[146].w[0:1]"  0.99923993838534297 0.0007600616146569843;
	setAttr -s 2 ".wl[147].w[0:1]"  0.99951385046367225 0.00048614953632784076;
	setAttr -s 2 ".wl[148].w[0:1]"  0.99999976688491365 2.3311508624774419e-007;
	setAttr -s 2 ".wl[149].w[0:1]"  0.99999898920802743 1.0107919726271921e-006;
	setAttr -s 2 ".wl[150].w[0:1]"  0.99999647892671428 3.521073285809102e-006;
	setAttr -s 2 ".wl[151].w[0:1]"  0.99997436786368321 2.5632136316815754e-005;
	setAttr -s 2 ".wl[152].w[0:1]"  0.99998143492430092 1.8565075699154877e-005;
	setAttr -s 2 ".wl[153].w[0:1]"  0.99999991858364567 8.141635421904851e-008;
	setAttr -s 2 ".wl[154].w[0:1]"  0.99999997696230369 2.3037696283896625e-008;
	setAttr -s 2 ".wl[155].w[0:1]"  0.99999999839091736 1.6090826462722479e-009;
	setAttr -s 2 ".wl[156].w[0:1]"  0.99917652978224225 0.0008234702177577582;
	setAttr -s 2 ".wl[157].w[0:1]"  0.99841708863921197 0.0015829113607880871;
	setAttr -s 2 ".wl[158].w[0:1]"  0.99861526759393804 0.0013847324060620235;
	setAttr -s 2 ".wl[159].w[0:1]"  0.99854062110746666 0.0014593788925333652;
	setAttr -s 2 ".wl[160].w[0:1]"  0.99847767167616475 0.0015223283238352853;
	setAttr -s 2 ".wl[161].w[0:1]"  0.99873533854588759 0.0012646614541125159;
	setAttr -s 2 ".wl[162].w[0:1]"  0.99974344747336341 0.00025655252663654016;
	setAttr -s 2 ".wl[163].w[0:1]"  0.9999981392110594 1.8607889406306986e-006;
	setAttr -s 2 ".wl[164].w[0:1]"  0.99998129431744942 1.8705682550580706e-005;
	setAttr -s 2 ".wl[165].w[0:1]"  0.99999462343145828 5.3765685417636752e-006;
	setAttr -s 2 ".wl[166].w[0:1]"  0.99999990491697233 9.5083027708723317e-008;
	setAttr -s 2 ".wl[167].w[0:1]"  0.99999998953247871 1.0467521380669637e-008;
	setAttr -s 2 ".wl[168].w[0:1]"  0.9999999998498571 1.5014288805358876e-010;
	setAttr -s 2 ".wl[169].w[0:1]"  0.99855148289244255 0.0014485171075575409;
	setAttr -s 2 ".wl[170].w[0:1]"  0.99860814483634486 0.001391855163655192;
	setAttr -s 2 ".wl[171].w[0:1]"  0.99871230321669513 0.0012876967833048729;
	setAttr -s 2 ".wl[172].w[0:1]"  0.99974585838173702 0.00025414161826298068;
	setAttr -s 2 ".wl[173].w[0:1]"  0.99995606274356452 4.3937256435446001e-005;
	setAttr -s 2 ".wl[174].w[0:1]"  0.99999777759189779 2.222408102197648e-006;
	setAttr -s 2 ".wl[175].w[0:1]"  0.9999916519938562 8.3480061437883695e-006;
	setAttr -s 2 ".wl[176].w[0:1]"  0.99999149707530288 8.5029246970721118e-006;
	setAttr -s 2 ".wl[177].w[0:1]"  0.99998960766256983 1.0392337430182713e-005;
	setAttr -s 2 ".wl[178].w[0:1]"  0.99996606700275847 3.3932997241579265e-005;
	setAttr -s 2 ".wl[179].w[0:1]"  0.99996717516744327 3.2824832556712268e-005;
	setAttr -s 2 ".wl[180].w[0:1]"  0.99997980381519436 2.019618480562967e-005;
	setAttr -s 2 ".wl[181].w[0:1]"  0.99999985448114603 1.4551885393838433e-007;
	setAttr -s 2 ".wl[182].w[0:1]"  0.99999510751347465 4.8924865253306676e-006;
	setAttr -s 2 ".wl[183].w[0:1]"  0.99999999745597212 2.5440278985796876e-009;
	setAttr -s 2 ".wl[184].w[0:1]"  0.99860990903623503 0.0013900909637650377;
	setAttr -s 2 ".wl[185].w[0:1]"  0.99862986672131793 0.0013701332786820507;
	setAttr -s 2 ".wl[186].w[0:1]"  0.99862659184199443 0.0013734081580055635;
	setAttr -s 2 ".wl[187].w[0:1]"  0.99873574033844492 0.0012642596615550794;
	setAttr -s 2 ".wl[188].w[0:1]"  0.99999095757188095 9.0424281190612482e-006;
	setAttr -s 2 ".wl[189].w[0:1]"  0.999990859255241 9.1407447590263417e-006;
	setAttr -s 2 ".wl[190].w[0:1]"  0.9999553856062644 4.4614393735592731e-005;
	setAttr -s 2 ".wl[191].w[0:1]"  0.99999622880268135 3.7711973186986084e-006;
	setAttr -s 2 ".wl[192].w[0:1]"  0.99999637008419939 3.6299158005991957e-006;
	setAttr -s 2 ".wl[193].w[0:1]"  0.99999993419418054 6.5805819489397987e-008;
	setAttr -s 2 ".wl[194].w[0:1]"  0.99862871529290143 0.0013712847070985826;
	setAttr -s 2 ".wl[195].w[0:1]"  0.99860859534407853 0.0013914046559214276;
	setAttr -s 2 ".wl[196].w[0:1]"  0.99861152906741113 0.0013884709325888785;
	setAttr -s 2 ".wl[197].w[0:1]"  0.99880388196682324 0.0011961180331768149;
	setAttr -s 2 ".wl[198].w[0:1]"  0.99975298206177743 0.00024701793822260652;
	setAttr -s 2 ".wl[199].w[0:1]"  0.99998347613485894 1.6523865141083614e-005;
	setAttr -s 2 ".wl[200].w[0:1]"  0.9999629237968416 3.7076203158403148e-005;
	setAttr -s 2 ".wl[201].w[0:1]"  0.99995531686487671 4.4683135123326291e-005;
	setAttr -s 2 ".wl[202].w[0:1]"  0.99998025517552047 1.9744824479493896e-005;
	setAttr -s 2 ".wl[203].w[0:1]"  0.99997893824867601 2.1061751324027153e-005;
	setAttr -s 2 ".wl[204].w[0:1]"  0.99998146408175059 1.8535918249386268e-005;
	setAttr -s 2 ".wl[205].w[0:1]"  0.99995422775593445 4.5772244065628013e-005;
	setAttr -s 2 ".wl[206].w[0:1]"  0.99999990441168685 9.5588313170759664e-008;
	setAttr -s 2 ".wl[207].w[0:1]"  0.99999507317037284 4.9268296271681674e-006;
	setAttr -s 2 ".wl[208].w[0:1]"  0.99860251549137635 0.0013974845086236331;
	setAttr -s 2 ".wl[209].w[0:1]"  0.99854163818805652 0.0014583618119435467;
	setAttr -s 2 ".wl[210].w[0:1]"  0.99997872613583993 2.1273864160029258e-005;
	setAttr -s 2 ".wl[211].w[0:1]"  0.99976463620311007 0.00023536379688995923;
	setAttr -s 2 ".wl[212].w[0:1]"  0.99995254100139297 4.7458998607035061e-005;
	setAttr -s 2 ".wl[213].w[0:1]"  0.99999792709270441 2.072907295617138e-006;
	setAttr -s 2 ".wl[214].w[0:1]"  0.99998583059028556 1.4169409714420813e-005;
	setAttr -s 2 ".wl[215].w[0:1]"  0.9999996588692025 3.4113079747790596e-007;
	setAttr -s 2 ".wl[216].w[0:1]"  0.99999314985874932 6.8501412506931332e-006;
	setAttr -s 2 ".wl[217].w[0:1]"  0.9999999878375142 1.2162485755898476e-008;
	setAttr -s 2 ".wl[218].w[0:1]"  0.99851606635420365 0.0014839336457963988;
	setAttr -s 2 ".wl[219].w[0:1]"  0.9989114916072519 0.001088508392748091;
	setAttr -s 2 ".wl[220].w[0:1]"  0.99996616078173151 3.3839218268479536e-005;
	setAttr -s 2 ".wl[221].w[0:1]"  0.9999507604431257 4.9239556874276747e-005;
	setAttr -s 2 ".wl[222].w[0:1]"  0.99996959332400737 3.0406675992647702e-005;
	setAttr -s 2 ".wl[223].w[0:1]"  0.99996800430124466 3.1995698755350661e-005;
	setAttr -s 2 ".wl[224].w[0:1]"  0.9997805018900322 0.00021949810996775961;
	setAttr -s 2 ".wl[225].w[0:1]"  0.99995293845269151 4.7061547308549991e-005;
	setAttr -s 2 ".wl[226].w[0:1]"  0.99999136995236326 8.6300476366689324e-006;
	setAttr -s 2 ".wl[227].w[0:1]"  0.9999999974842898 2.5157101816716449e-009;
	setAttr -s 2 ".wl[228].w[0:1]"  0.99999887336494764 1.1266350523073722e-006;
	setAttr -s 2 ".wl[229].w[0:1]"  0.99998993701798378 1.0062982016266669e-005;
	setAttr -s 2 ".wl[230].w[0:1]"  0.99858043436100463 0.0014195656389954091;
	setAttr -s 2 ".wl[231].w[0:1]"  0.99847909482366903 0.001520905176331015;
	setAttr -s 2 ".wl[232].w[0:1]"  0.99996774454150217 3.2255458497818436e-005;
	setAttr -s 2 ".wl[233].w[0:1]"  0.99905021273756056 0.00094978726243942068;
	setAttr -s 2 ".wl[234].w[0:1]"  0.99980053003675462 0.00019946996324535945;
	setAttr -s 2 ".wl[235].w[0:1]"  0.99995008942278074 4.9910577219244009e-005;
	setAttr -s 2 ".wl[236].w[0:1]"  0.99999920624606475 7.9375393526750487e-007;
	setAttr -s 2 ".wl[237].w[0:1]"  0.9999745337874355 2.5466212564529749e-005;
	setAttr -s 2 ".wl[238].w[0:1]"  0.99999985578569073 1.4421430933152558e-007;
	setAttr -s 2 ".wl[239].w[0:1]"  0.99999995930780816 4.0692191904324988e-008;
	setAttr -s 2 ".wl[240].w[0:1]"  0.99999653813506606 3.4618649339344633e-006;
	setAttr -s 2 ".wl[241].w[0:1]"  0.99998448591675237 1.5514083247581958e-005;
	setAttr -s 2 ".wl[242].w[0:1]"  0.99801902954568256 0.0019809704543173926;
	setAttr -s 2 ".wl[243].w[0:1]"  0.99995554857008095 4.4451429919087349e-005;
	setAttr -s 2 ".wl[244].w[0:1]"  0.99996428164318152 3.5718356818438775e-005;
	setAttr -s 2 ".wl[245].w[0:1]"  0.99996363584801007 3.6364151989925494e-005;
	setAttr -s 2 ".wl[246].w[0:1]"  0.99936257591169042 0.00063742408830953876;
	setAttr -s 2 ".wl[247].w[0:1]"  0.999823929162863 0.00017607083713702164;
	setAttr -s 2 ".wl[248].w[0:1]"  0.99994642279674029 5.3577203259679493e-005;
	setAttr -s 2 ".wl[249].w[0:1]"  0.99998488161103349 1.5118388966502597e-005;
	setAttr -s 2 ".wl[250].w[0:1]"  0.99999621853096654 3.7814690334871099e-006;
	setAttr -s 2 ".wl[251].w[0:1]"  0.99999999195394418 8.046055873789033e-009;
	setAttr -s 2 ".wl[252].w[0:1]"  0.99999942751735038 5.7248264968867821e-007;
	setAttr -s 2 ".wl[253].w[0:1]"  0.99999000694500018 9.9930549998439218e-006;
	setAttr -s 2 ".wl[254].w[0:1]"  0.99997504972716367 2.4950272836405988e-005;
	setAttr -s 2 ".wl[255].w[0:1]"  0.99833663104966031 0.0016633689503397029;
	setAttr -s 2 ".wl[256].w[0:1]"  0.9978777341555094 0.0021222658444906791;
	setAttr -s 2 ".wl[257].w[0:1]"  0.99996402403967877 3.597596032126994e-005;
	setAttr -s 2 ".wl[258].w[0:1]"  0.99950713286071757 0.00049286713928238957;
	setAttr -s 2 ".wl[259].w[0:1]"  0.99984960008034895 0.00015039991965111056;
	setAttr -s 2 ".wl[260].w[0:1]"  0.99994174877895581 5.8251221044114506e-005;
	setAttr -s 2 ".wl[261].w[0:1]"  0.99996756705292578 3.2432947074181513e-005;
	setAttr -s 2 ".wl[262].w[0:1]"  0.99999906756457702 9.3243542303194164e-007;
	setAttr -s 2 ".wl[263].w[0:1]"  0.99999991581850989 8.418149014625462e-008;
	setAttr -s 2 ".wl[264].w[0:1]"  0.9999959880319651 4.0119680349001578e-006;
	setAttr -s 2 ".wl[265].w[0:1]"  0.99997263206722009 2.7367932779934094e-005;
	setAttr -s 2 ".wl[266].w[0:1]"  0.99995836872540289 4.1631274597106794e-005;
	setAttr -s 2 ".wl[267].w[0:1]"  0.99742154784322556 0.0025784521567744616;
	setAttr -s 2 ".wl[268].w[0:1]"  0.99771894555138918 0.0022810544486108301;
	setAttr -s 2 ".wl[269].w[0:1]"  0.9999678271989717 3.2172801028365948e-005;
	setAttr -s 2 ".wl[270].w[0:1]"  0.99992888193474871 7.1118065251265456e-005;
	setAttr -s 2 ".wl[271].w[0:1]"  0.99885310476702915 0.0011468952329709312;
	setAttr -s 2 ".wl[272].w[0:1]"  0.99964473382923469 0.00035526617076532324;
	setAttr -s 2 ".wl[273].w[0:1]"  0.99987643268670712 0.00012356731329291672;
	setAttr -s 2 ".wl[274].w[0:1]"  0.99993581782777063 6.4182172229319514e-005;
	setAttr -s 2 ".wl[275].w[0:1]"  0.99999360475868693 6.3952413130762216e-006;
	setAttr -s 2 ".wl[276].w[0:1]"  0.99998172789221584 1.8272107784139474e-005;
	setAttr -s 2 ".wl[277].w[0:1]"  0.99993481921609384 6.5180783906195256e-005;
	setAttr -s 2 ".wl[278].w[0:1]"  0.99999993435311885 6.5646881112288746e-008;
	setAttr -s 2 ".wl[279].w[0:1]"  0.99999813279565886 1.8672043411102211e-006;
	setAttr -s 2 ".wl[280].w[0:1]"  0.99998092668318117 1.9073316818851076e-005;
	setAttr -s 2 ".wl[281].w[0:1]"  0.99992830271454469 7.1697285455295118e-005;
	setAttr -s 2 ".wl[282].w[0:1]"  0.99776278231214277 0.0022372176878573216;
	setAttr -s 2 ".wl[283].w[0:1]"  0.99657812775475907 0.0034218722452409715;
	setAttr -s 2 ".wl[284].w[0:1]"  0.99928372350881356 0.0007162764911864541;
	setAttr -s 2 ".wl[285].w[0:1]"  0.9997650036382838 0.00023499636171621664;
	setAttr -s 2 ".wl[286].w[0:1]"  0.99990313461534286 9.6865384657159899e-005;
	setAttr -s 2 ".wl[287].w[0:1]"  0.99997991077714321 2.0089222856820583e-005;
	setAttr -s 2 ".wl[288].w[0:1]"  0.9999795627471475 2.0437252852514515e-005;
	setAttr -s 2 ".wl[289].w[0:1]"  0.99997871737627375 2.1282623726205383e-005;
	setAttr -s 2 ".wl[290].w[0:1]"  0.99999849104035676 1.5089596432655435e-006;
	setAttr -s 2 ".wl[291].w[0:1]"  0.99999997419417386 2.5805826111873462e-008;
	setAttr -s 2 ".wl[292].w[0:1]"  0.9999987396915313 1.2603084687089185e-006;
	setAttr -s 2 ".wl[293].w[0:1]"  0.99998514657027138 1.4853429728572174e-005;
	setAttr -s 2 ".wl[294].w[0:1]"  0.9987731664804419 0.0012268335195580933;
	setAttr -s 2 ".wl[295].w[0:1]"  0.99708527521712509 0.0029147247828749338;
	setAttr -s 2 ".wl[296].w[0:1]"  0.99694881959337278 0.0030511804066273031;
	setAttr -s 2 ".wl[297].w[0:1]"  0.99960376429054321 0.00039623570945683485;
	setAttr -s 2 ".wl[298].w[0:1]"  0.99986057038473031 0.00013942961526974482;
	setAttr -s 2 ".wl[299].w[0:1]"  0.99999284476592409 7.1552340759548363e-006;
	setAttr -s 2 ".wl[300].w[0:1]"  0.99998411309403312 1.588690596683093e-005;
	setAttr -s 2 ".wl[301].w[0:1]"  0.99999022875309995 9.7712469000865727e-006;
	setAttr -s 2 ".wl[302].w[0:1]"  0.99999990034361719 9.9656382831730965e-008;
	setAttr -s 2 ".wl[303].w[0:1]"  0.99999996916653455 3.0833465452258043e-008;
	setAttr -s 2 ".wl[304].w[0:1]"  0.99998641936381194 1.3580636188075926e-005;
	setAttr -s 2 ".wl[305].w[0:1]"  0.99825530215223224 0.0017446978477677958;
	setAttr -s 2 ".wl[306].w[0:1]"  0.99736530942994372 0.0026346905700562607;
	setAttr -s 2 ".wl[307].w[0:1]"  0.99941636995503269 0.00058363004496727038;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99981244916193157 0.00018755083806840759;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99999111500721349 8.8849927865494554e-006;
	setAttr -s 2 ".wl[310].w[0:1]"  0.99999848812283043 1.5118771696603644e-006;
	setAttr -s 2 ".wl[311].w[0:1]"  0.9999999118800782 8.8119921901091519e-008;
	setAttr -s 2 ".wl[312].w[0:1]"  0.99999849953791098 1.5004620890584356e-006;
	setAttr -s 2 ".wl[313].w[0:1]"  0.9999849983664737 1.5001633526289559e-005;
	setAttr -s 2 ".wl[314].w[0:1]"  0.99926453540934645 0.0007354645906535865;
	setAttr -s 2 ".wl[315].w[0:1]"  0.99816806937291591 0.0018319306270840072;
	setAttr -s 2 ".wl[316].w[0:1]"  0.99976822508756458 0.00023177491243543514;
	setAttr -s 2 ".wl[317].w[0:1]"  0.99999691096878673 3.0890312133084907e-006;
	setAttr -s 2 ".wl[318].w[0:1]"  0.9999913822248121 8.6177751879325017e-006;
	setAttr -s 2 ".wl[319].w[0:1]"  0.99999145710540582 8.5428945940734823e-006;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99999998844069804 1.1559302006268197e-008;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99999984592596891 1.5407403109736065e-007;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99999684604497874 3.1539550212735158e-006;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99998012413540716 1.9875864592875303e-005;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99922787997218887 0.00077212002781113257;
	setAttr -s 2 ".wl[325].w[0:1]"  0.99869766471647792 0.001302335283522094;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99851319165343422 0.0014868083465658234;
	setAttr -s 2 ".wl[327].w[0:1]"  0.9997407168268686 0.00025928317313144881;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99999223410206106 7.7658979390329901e-006;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99999796102213179 2.0389778682126468e-006;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99999986953648001 1.3046351993625005e-007;
	setAttr -s 2 ".wl[331].w[0:1]"  0.9999905304056691 9.4695943308622011e-006;
	setAttr -s 2 ".wl[332].w[0:1]"  0.99996977069947701 3.0229300523011951e-005;
	setAttr -s 2 ".wl[333].w[0:1]"  0.99974064213353486 0.0002593578664650959;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99934420462969942 0.00065579537030062169;
	setAttr -s 2 ".wl[335].w[0:1]"  0.9992503040183297 0.00074969598167027728;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99918715390393387 0.00081284609606614028;
	setAttr -s 2 ".wl[337].w[0:1]"  0.99999847897416827 1.5210258317612102e-006;
	setAttr -s 2 ".wl[338].w[0:1]"  0.99999904217684576 9.5782315419385163e-007;
	setAttr -s 2 ".wl[339].w[0:1]"  0.99999986029230326 1.397076967412244e-007;
	setAttr -s 2 ".wl[340].w[0:1]"  0.99999664711225766 3.3528877423772366e-006;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99999996137147262 3.8628527369292805e-008;
	setAttr -s 2 ".wl[342].w[0:1]"  0.99999819822850211 1.8017714979731656e-006;
	setAttr -s 2 ".wl[343].w[0:1]"  0.99996881944006999 3.1180559930042758e-005;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99995057076278626 4.9429237213778694e-005;
	setAttr -s 2 ".wl[345].w[0:1]"  0.9997699377975291 0.00023006220247084991;
	setAttr -s 2 ".wl[346].w[0:1]"  0.99956095945982171 0.00043904054017824564;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99955451168589837 0.00044548831410173726;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99952233818257241 0.00047766181742761452;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99999388780793153 6.1121920685544383e-006;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99998241625302808 1.7583746971943651e-005;
	setAttr -s 2 ".wl[351].w[0:1]"  0.99990678102959496 9.321897040509386e-005;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99991879034468101 8.1209655319047129e-005;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99981930966969967 0.00018069033030028043;
	setAttr -s 2 ".wl[354].w[0:1]"  0.99977153030463328 0.00022846969536671928;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99975593675486152 0.00024406324513854909;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99973633098329284 0.00026366901670716019;
	setAttr -s 2 ".wl[357].w[0:1]"  0.99998685977178392 1.314022821614008e-005;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99990005617172184 9.9943828278153938e-005;
	setAttr -s 2 ".wl[359].w[0:1]"  0.99996404858364696 3.5951416353023315e-005;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99987325484565515 0.0001267451543448845;
	setAttr -s 2 ".wl[361].w[0:1]"  0.99988802137542632 0.00011197862457363809;
	setAttr -s 2 ".wl[362].w[0:1]"  0.9999750334371833 2.496656281670547e-005;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99998258044600485 1.7419553995126006e-005;
	setAttr -s 2 ".wl[364].w[0:1]"  0.98509143072502658 0.014908569274973521;
	setAttr -s 2 ".wl[365].w[0:1]"  0.98433913661307582 0.015660863386924205;
	setAttr -s 2 ".wl[366].w[0:1]"  0.98432919118932871 0.015670808810671268;
	setAttr -s 2 ".wl[367].w[0:1]"  0.98610119336599178 0.013898806634008214;
	setAttr -s 2 ".wl[368].w[0:1]"  0.98413084118255623 0.015869158817443857;
	setAttr -s 2 ".wl[369].w[0:1]"  0.98897731207949779 0.011022687920502256;
	setAttr -s 2 ".wl[370].w[0:1]"  0.98681134804931536 0.013188651950684634;
	setAttr -s 2 ".wl[371].w[0:1]"  0.97569731813372684 0.024302681866273101;
	setAttr -s 2 ".wl[372].w[0:1]"  0.97445268477088398 0.025547315229116054;
	setAttr -s 2 ".wl[373].w[0:1]"  0.98341325784215616 0.016586742157843861;
	setAttr -s 2 ".wl[374].w[0:1]"  0.98808296232742632 0.011917037672573664;
	setAttr -s 2 ".wl[375].w[0:1]"  0.98226586589885923 0.017734134101140719;
	setAttr -s 2 ".wl[376].w[0:1]"  0.96521766465898662 0.034782335341013444;
	setAttr -s 2 ".wl[377].w[0:1]"  0.96751054219272026 0.032489457807279749;
	setAttr -s 2 ".wl[378].w[0:1]"  0.98796189911477261 0.01203810088522736;
	setAttr -s 2 ".wl[379].w[0:1]"  0.98687437271806822 0.01312562728193185;
	setAttr -s 2 ".wl[380].w[0:1]"  0.96677324203636106 0.033226757963638894;
	setAttr -s 2 ".wl[381].w[0:1]"  0.96190666148586979 0.038093338514130291;
	setAttr -s 2 ".wl[382].w[0:1]"  0.98625448479707223 0.013745515202927827;
	setAttr -s 2 ".wl[383].w[0:1]"  0.97742196337087739 0.022578036629122594;
	setAttr -s 2 ".wl[384].w[0:1]"  0.95109429887464192 0.048905701125358074;
	setAttr -s 2 ".wl[385].w[0:1]"  0.95395849510884123 0.046041504891158817;
	setAttr -s 2 ".wl[386].w[0:1]"  0.98553620914460605 0.014463790855394031;
	setAttr -s 2 ".wl[387].w[0:1]"  0.95996034006809761 0.040039659931902435;
	setAttr -s 2 ".wl[388].w[0:1]"  0.95143064896809759 0.048569351031902359;
	setAttr -s 2 ".wl[389].w[0:1]"  0.95257080223378765 0.047429197766212461;
	setAttr -s 2 ".wl[390].w[0:1]"  0.98485026246256191 0.015149737537438052;
	setAttr -s 2 ".wl[391].w[0:1]"  0.97394305340803577 0.026056946591964142;
	setAttr -s 2 ".wl[392].w[0:1]"  0.94731168881793404 0.052688311182066003;
	setAttr -s 2 ".wl[393].w[0:1]"  0.94809178175850273 0.051908218241497328;
	setAttr -s 2 ".wl[394].w[0:1]"  0.94836310365461884 0.051636896345381121;
	setAttr -s 2 ".wl[395].w[0:1]"  0.98477962705262589 0.015220372947374085;
	setAttr -s 2 ".wl[396].w[0:1]"  0.9844850904382586 0.015514909561741454;
	setAttr -s 2 ".wl[397].w[0:1]"  0.95741157363398299 0.042588426366017063;
	setAttr -s 2 ".wl[398].w[0:1]"  0.95113878935889584 0.048861210641104151;
	setAttr -s 2 ".wl[399].w[0:1]"  0.95147532559904036 0.048524674400959596;
	setAttr -s 2 ".wl[400].w[0:1]"  0.95114555357947084 0.04885444642052917;
	setAttr -s 2 ".wl[401].w[0:1]"  0.98396943001496784 0.01603056998503221;
	setAttr -s 2 ".wl[402].w[0:1]"  0.97267948526689396 0.027320514733106149;
	setAttr -s 2 ".wl[403].w[0:1]"  0.95401244038247546 0.045987559617524612;
	setAttr -s 2 ".wl[404].w[0:1]"  0.98394433790450198 0.016055662095498007;
	setAttr -s 2 ".wl[405].w[0:1]"  0.9838608400737191 0.016139159926280875;
	setAttr -s 2 ".wl[406].w[0:1]"  0.95998580712359516 0.040014192876404849;
	setAttr -s 2 ".wl[407].w[0:1]"  0.96086688088918426 0.039133119110815746;
	setAttr -s 2 ".wl[408].w[0:1]"  0.95984659349539991 0.04015340650460008;
	setAttr -s 2 ".wl[409].w[0:1]"  0.98367135544192197 0.016328644558077938;
	setAttr -s 2 ".wl[410].w[0:1]"  0.97395479068638946 0.026045209313610568;
	setAttr -s 2 ".wl[411].w[0:1]"  0.96681798463958912 0.033182015360410856;
	setAttr -s 2 ".wl[412].w[0:1]"  0.9619767337406816 0.038023266259318449;
	setAttr -s 2 ".wl[413].w[0:1]"  0.98369822101675319 0.016301778983246841;
	setAttr -s 2 ".wl[414].w[0:1]"  0.98378322229282988 0.016216777707170147;
	setAttr -s 2 ".wl[415].w[0:1]"  0.9709061993789635 0.029093800621036531;
	setAttr -s 2 ".wl[416].w[0:1]"  0.9700258078229117 0.029974192177088365;
	setAttr -s 2 ".wl[417].w[0:1]"  0.98397594068470007 0.016024059315299943;
	setAttr -s 2 ".wl[418].w[0:1]"  0.97744325509723462 0.02255674490276538;
	setAttr -s 2 ".wl[419].w[0:1]"  0.97575080926077273 0.024249190739227273;
	setAttr -s 2 ".wl[420].w[0:1]"  0.97452051979788135 0.025479480202118664;
	setAttr -s 2 ".wl[421].w[0:1]"  0.98405549721974528 0.015944502780254756;
	setAttr -s 2 ".wl[422].w[0:1]"  0.98435376283150156 0.015646237168498431;
	setAttr -s 2 ".wl[423].w[0:1]"  0.9787980159960431 0.02120198400395688;
	setAttr -s 2 ".wl[424].w[0:1]"  0.98486323723034552 0.015136762769654519;
	setAttr -s 2 ".wl[425].w[0:1]"  0.9822928471739244 0.017707152826075698;
	setAttr -s 2 ".wl[426].w[0:1]"  0.98439022615479999 0.015609773845199985;
	setAttr -s 2 ".wl[427].w[0:1]"  0.98438074623820726 0.015619253761792766;
	setAttr -s 2 ".wl[428].w[0:1]"  0.98416357063566506 0.015836429364334919;
	setAttr -s 2 ".wl[429].w[0:1]"  0.98346590484710483 0.016534095152895126;
	setAttr -s 2 ".wl[430].w[0:1]"  0.98566111987710658 0.014338880122893376;
	setAttr -s 2 ".wl[431].w[0:1]"  0.98683975320500994 0.013160246794990029;
	setAttr -s 2 ".wl[432].w[0:1]"  0.98514168174083416 0.014858318259165827;
	setAttr -s 2 ".wl[433].w[0:1]"  0.98627377238113001 0.013726227618870027;
	setAttr -s 2 ".wl[434].w[0:1]"  0.98643769731327147 0.013562302686728528;
	setAttr -s 2 ".wl[435].w[0:1]"  0.98779355250557044 0.012206447494429631;
	setAttr -s 2 ".wl[436].w[0:1]"  0.98472610736822963 0.015273892631770343;
	setAttr -s 2 ".wl[437].w[0:1]"  0.98810819413497453 0.011891805865025487;
	setAttr -s 2 ".wl[438].w[0:1]"  0.98900473991134497 0.010995260088654996;
	setAttr -s 2 ".wl[439].w[0:1]"  0.98489841074170892 0.015101589258291092;
	setAttr -s 2 ".wl[440].w[0:1]"  0.98829153710689277 0.011708462893107233;
	setAttr -s 2 ".wl[441].w[0:1]"  0.99964680395626515 0.00035319604373487462;
	setAttr -s 2 ".wl[442].w[0:1]"  0.99974371405522056 0.00025628594477951155;
	setAttr -s 2 ".wl[443].w[0:1]"  0.99972459105134959 0.00027540894865036913;
	setAttr -s 2 ".wl[444].w[0:1]"  0.99951613661600458 0.00048386338399545822;
	setAttr -s 2 ".wl[445].w[0:1]"  0.99951388853748613 0.00048611146251393759;
	setAttr -s 2 ".wl[446].w[0:1]"  0.99951844852986327 0.00048155147013676799;
	setAttr -s 2 ".wl[447].w[0:1]"  0.99985496171533716 0.00014503828466283365;
	setAttr -s 2 ".wl[448].w[0:1]"  0.99935253472340335 0.00064746527659665276;
	setAttr -s 2 ".wl[449].w[0:1]"  0.99920187532884563 0.00079812467115436916;
	setAttr -s 2 ".wl[450].w[0:1]"  0.99981027961610958 0.00018972038389047189;
	setAttr -s 2 ".wl[451].w[0:1]"  0.99992800643252877 7.1993567471292762e-005;
	setAttr -s 2 ".wl[452].w[0:1]"  0.99916434658896847 0.00083565341103155179;
	setAttr -s 2 ".wl[453].w[0:1]"  0.99877723943503294 0.0012227605649669539;
	setAttr -s 2 ".wl[454].w[0:1]"  0.99985140818591445 0.00014859181408550837;
	setAttr -s 2 ".wl[455].w[0:1]"  0.99997378841793239 2.6211582067649854e-005;
	setAttr -s 2 ".wl[456].w[0:1]"  0.99825179849188417 0.0017482015081158164;
	setAttr -s 2 ".wl[457].w[0:1]"  0.99987125214556272 0.00012874785443725214;
	setAttr -s 2 ".wl[458].w[0:1]"  0.99996440384709018 3.5596152909818402e-005;
	setAttr -s 2 ".wl[459].w[0:1]"  0.99743654015518435 0.0025634598448157284;
	setAttr -s 2 ".wl[460].w[0:1]"  0.99897066333107221 0.0010293366689276967;
	setAttr -s 2 ".wl[461].w[0:1]"  0.99987129038897393 0.00012870961102611327;
	setAttr -s 2 ".wl[462].w[0:1]"  0.9999941693424087 5.8306575913865553e-006;
	setAttr -s 2 ".wl[463].w[0:1]"  0.99999981483500433 1.8516499572930893e-007;
	setAttr -s 2 ".wl[464].w[0:1]"  0.99660063820807476 0.0033993617919252138;
	setAttr -s 2 ".wl[465].w[0:1]"  0.99768156057087309 0.0023184394291268545;
	setAttr -s 2 ".wl[466].w[0:1]"  0.99620482238671526 0.003795177613284783;
	setAttr -s 2 ".wl[467].w[0:1]"  0.99880269638589225 0.0011973036141077894;
	setAttr -s 2 ".wl[468].w[0:1]"  0.99984839722735563 0.00015160277264441582;
	setAttr -s 2 ".wl[469].w[0:1]"  0.99997988742120458 2.0112578795397213e-005;
	setAttr -s 2 ".wl[470].w[0:1]"  0.99999866223989786 1.3377601021613543e-006;
	setAttr -s 2 ".wl[471].w[0:1]"  0.99999912233031074 8.7766968925259807e-007;
	setAttr -s 2 ".wl[472].w[0:1]"  0.99449238203029211 0.0055076179697079721;
	setAttr -s 2 ".wl[473].w[0:1]"  0.99580810691431554 0.0041918930856845024;
	setAttr -s 2 ".wl[474].w[0:1]"  0.99484340203440824 0.0051565979655917304;
	setAttr -s 2 ".wl[475].w[0:1]"  0.99719039068820348 0.0028096093117965884;
	setAttr -s 2 ".wl[476].w[0:1]"  0.99870044608168806 0.0012995539183119763;
	setAttr -s 2 ".wl[477].w[0:1]"  0.99979290262123899 0.00020709737876103065;
	setAttr -s 2 ".wl[478].w[0:1]"  0.99997773853744187 2.2261462558111255e-005;
	setAttr -s 2 ".wl[479].w[0:1]"  0.99998379919526537 1.6200804734671011e-005;
	setAttr -s 2 ".wl[480].w[0:1]"  0.99999935711642263 6.4288357744334991e-007;
	setAttr -s 2 ".wl[481].w[0:1]"  0.99048481468281258 0.0095151853171875061;
	setAttr -s 2 ".wl[482].w[0:1]"  0.99167440178211497 0.0083255982178850833;
	setAttr -s 2 ".wl[483].w[0:1]"  0.99870125597639003 0.0012987440236100058;
	setAttr -s 2 ".wl[484].w[0:1]"  0.99968867848148357 0.00031132151851647963;
	setAttr -s 2 ".wl[485].w[0:1]"  0.99994869126501484 5.1308734985173164e-005;
	setAttr -s 2 ".wl[486].w[0:1]"  0.99999895350377599 1.04649622411391e-006;
	setAttr -s 2 ".wl[487].w[0:1]"  0.99996336463608937 3.663536391066765e-005;
	setAttr -s 2 ".wl[488].w[0:1]"  0.99999638141234226 3.61858765782776e-006;
	setAttr -s 2 ".wl[489].w[0:1]"  0.98788989795252002 0.012110102047479943;
	setAttr -s 2 ".wl[490].w[0:1]"  0.99510775442257493 0.0048922455774249689;
	setAttr -s 2 ".wl[491].w[0:1]"  0.98853233272339858 0.011467667276601473;
	setAttr -s 2 ".wl[492].w[0:1]"  0.99376928504573359 0.0062307149542664133;
	setAttr -s 2 ".wl[493].w[0:1]"  0.98855144995324806 0.011448550046751969;
	setAttr -s 2 ".wl[494].w[0:1]"  0.99697216248407561 0.0030278375159244124;
	setAttr -s 2 ".wl[495].w[0:1]"  0.99882071884358714 0.0011792811564129146;
	setAttr -s 2 ".wl[496].w[0:1]"  0.9995203404019587 0.00047965959804126984;
	setAttr -s 2 ".wl[497].w[0:1]"  0.99984186103265815 0.0001581389673418566;
	setAttr -s 2 ".wl[498].w[0:1]"  0.9999938026397901 6.1973602099519796e-006;
	setAttr -s 2 ".wl[499].w[0:1]"  0.99999791832145124 2.0816785487227e-006;
	setAttr -s 2 ".wl[500].w[0:1]"  0.9999916711870992 8.3288129008177963e-006;
	setAttr -s 2 ".wl[501].w[0:1]"  0.99991212032860899 8.7879671390979586e-005;
	setAttr -s 2 ".wl[502].w[0:1]"  0.98108936288678428 0.018910637113215722;
	setAttr -s 2 ".wl[503].w[0:1]"  0.98386132466414866 0.016138675335851334;
	setAttr -s 2 ".wl[504].w[0:1]"  0.99453423106473937 0.0054657689352607128;
	setAttr -s 2 ".wl[505].w[0:1]"  0.9868629561135549 0.013137043886445043;
	setAttr -s 2 ".wl[506].w[0:1]"  0.99747014176947202 0.0025298582305279655;
	setAttr -s 2 ".wl[507].w[0:1]"  0.99372724272873902 0.0062727572712610704;
	setAttr -s 2 ".wl[508].w[0:1]"  0.98664683480262638 0.013353165197373632;
	setAttr -s 2 ".wl[509].w[0:1]"  0.99721886824689066 0.0027811317531093774;
	setAttr -s 2 ".wl[510].w[0:1]"  0.99903629786950632 0.00096370213049364723;
	setAttr -s 2 ".wl[511].w[0:1]"  0.99929061557263688 0.00070938442736312478;
	setAttr -s 2 ".wl[512].w[0:1]"  0.99952051134508046 0.00047948865491957016;
	setAttr -s 2 ".wl[513].w[0:1]"  0.9999467384072076 5.3261592792472651e-005;
	setAttr -s 2 ".wl[514].w[0:1]"  0.99997242926171315 2.7570738286834298e-005;
	setAttr -s 2 ".wl[515].w[0:1]"  0.99997083951930066 2.9160480699319456e-005;
	setAttr -s 2 ".wl[516].w[0:1]"  0.99988724905781035 0.00011275094218963712;
	setAttr -s 2 ".wl[517].w[0:1]"  0.97369260911933286 0.026307390880667185;
	setAttr -s 2 ".wl[518].w[0:1]"  0.97178056827882375 0.028219431721176271;
	setAttr -s 2 ".wl[519].w[0:1]"  0.99411079657419033 0.0058892034258096315;
	setAttr -s 2 ".wl[520].w[0:1]"  0.98559100529261368 0.014408994707386269;
	setAttr -s 2 ".wl[521].w[0:1]"  0.99532646711201744 0.0046735328879825488;
	setAttr -s 2 ".wl[522].w[0:1]"  0.98879731889193268 0.011202681108067358;
	setAttr -s 2 ".wl[523].w[0:1]"  0.99794334759976255 0.0020566524002374425;
	setAttr -s 2 ".wl[524].w[0:1]"  0.99884576078541454 0.0011542392145855373;
	setAttr -s 2 ".wl[525].w[0:1]"  0.99951529951085993 0.0004847004891400263;
	setAttr -s 2 ".wl[526].w[0:1]"  0.9996240968228628 0.00037590317713724424;
	setAttr -s 2 ".wl[527].w[0:1]"  0.99962688019883994 0.00037311980116002367;
	setAttr -s 2 ".wl[528].w[0:1]"  0.97243719304123499 0.027562806958765094;
	setAttr -s 2 ".wl[529].w[0:1]"  0.95314171357997124 0.046858286420028789;
	setAttr -s 2 ".wl[530].w[0:1]"  0.96177561066222728 0.038224389337772773;
	setAttr -s 2 ".wl[531].w[0:1]"  0.99726715472332816 0.0027328452766717925;
	setAttr -s 2 ".wl[532].w[0:1]"  0.99385196155765188 0.006148038442348209;
	setAttr -s 2 ".wl[533].w[0:1]"  0.98479727218783331 0.015202727812166665;
	setAttr -s 2 ".wl[534].w[0:1]"  0.99786220040317553 0.0021377995968244559;
	setAttr -s 2 ".wl[535].w[0:1]"  0.99530427419365708 0.0046957258063429035;
	setAttr -s 2 ".wl[536].w[0:1]"  0.99949291697013898 0.00050708302986109794;
	setAttr -s 2 ".wl[537].w[0:1]"  0.99998173722323347 1.8262776766517904e-005;
	setAttr -s 2 ".wl[538].w[0:1]"  0.99938048803131507 0.00061951196868494812;
	setAttr -s 2 ".wl[539].w[0:1]"  0.99976805873379959 0.00023194126620035288;
	setAttr -s 2 ".wl[540].w[0:1]"  0.93447993702226084 0.065520062977739227;
	setAttr -s 2 ".wl[541].w[0:1]"  0.92609844081013182 0.073901559189868238;
	setAttr -s 2 ".wl[542].w[0:1]"  0.95276546086868641 0.047234539131313612;
	setAttr -s 2 ".wl[543].w[0:1]"  0.99712182322884479 0.002878176771155217;
	setAttr -s 2 ".wl[544].w[0:1]"  0.98452941655155957 0.015470583448440408;
	setAttr -s 2 ".wl[545].w[0:1]"  0.98712199845339776 0.012878001546602237;
	setAttr -s 2 ".wl[546].w[0:1]"  0.99983512892080373 0.00016487107919624987;
	setAttr -s 2 ".wl[547].w[0:1]"  0.99802502906662005 0.0019749709333799844;
	setAttr -s 2 ".wl[548].w[0:1]"  0.99905567593504574 0.00094432406495430807;
	setAttr -s 2 ".wl[549].w[0:1]"  0.95425690678161634 0.045743093218383678;
	setAttr -s 2 ".wl[550].w[0:1]"  0.86359125120473856 0.13640874879526146;
	setAttr -s 2 ".wl[551].w[0:1]"  0.89796593667832603 0.10203406332167407;
	setAttr -s 2 ".wl[552].w[0:1]"  0.99703472332575716 0.0029652766742428471;
	setAttr -s 2 ".wl[553].w[0:1]"  0.99376559035166223 0.0062344096483378068;
	setAttr -s 2 ".wl[554].w[0:1]"  0.99940547339257157 0.00059452660742847856;
	setAttr -s 2 ".wl[555].w[0:1]"  0.99546597374457935 0.0045340262554206881;
	setAttr -s 2 ".wl[556].w[0:1]"  0.99428321075702708 0.005716789242972916;
	setAttr -s 2 ".wl[557].w[0:1]"  0.99963494795330365 0.00036505204669634562;
	setAttr -s 2 ".wl[558].w[0:1]"  0.97548663337488339 0.024513366625116655;
	setAttr -s 2 ".wl[559].w[0:1]"  0.9989300861708198 0.0010699138291803069;
	setAttr -s 2 ".wl[560].w[0:1]"  0.81713373810161594 0.18286626189838406;
	setAttr -s 2 ".wl[561].w[0:1]"  0.77300027976277697 0.22699972023722303;
	setAttr -s 2 ".wl[562].w[0:1]"  0.94650166042056039 0.053498339579439669;
	setAttr -s 2 ".wl[563].w[0:1]"  0.87668514700559641 0.12331485299440365;
	setAttr -s 2 ".wl[564].w[0:1]"  0.99845931569764812 0.0015406843023518643;
	setAttr -s 2 ".wl[565].w[0:1]"  0.99843891107857508 0.0015610889214249075;
	setAttr -s 2 ".wl[566].w[0:1]"  0.98480325984382866 0.015196740156171326;
	setAttr -s 2 ".wl[567].w[0:1]"  0.89316225640364211 0.10683774359635792;
	setAttr -s 2 ".wl[568].w[0:1]"  0.95823005137593131 0.041769948624068631;
	setAttr -s 2 ".wl[569].w[0:1]"  0.99830071692265188 0.0016992830773481823;
	setAttr -s 2 ".wl[570].w[0:1]"  0.98968878922729886 0.010311210772701192;
	setAttr -s 2 ".wl[571].w[0:1]"  0.56178185725813345 0.43821814274186655;
	setAttr -s 2 ".wl[572].w[0:1]"  0.70224159684224585 0.29775840315775415;
	setAttr -s 2 ".wl[573].w[0:1]"  0.99700599343318874 0.0029940065668112555;
	setAttr -s 2 ".wl[574].w[0:1]"  0.99385420295060767 0.0061457970493923163;
	setAttr -s 2 ".wl[575].w[0:1]"  0.93010120571370314 0.069898794286296917;
	setAttr -s 2 ".wl[576].w[0:1]"  0.99953080557691287 0.00046919442308702232;
	setAttr -s 2 ".wl[577].w[0:1]"  0.94355624072074262 0.056443759279257343;
	setAttr -s 2 ".wl[578].w[0:1]"  0.99764319175070726 0.0023568082492927273;
	setAttr -s 2 ".wl[579].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[580].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[581].w[0:1]"  0.86883589093197688 0.13116410906802314;
	setAttr -s 2 ".wl[582].w[0:1]"  0.94427424396524862 0.055725756034751488;
	setAttr -s 2 ".wl[583].w[0:1]"  0.67721655606368047 0.32278344393631953;
	setAttr -s 2 ".wl[584].w[0:1]"  0.99843232152223527 0.0015676784777647809;
	setAttr -s 2 ".wl[585].w[0:1]"  0.99411539778745339 0.0058846022125466201;
	setAttr -s 2 ".wl[586].w[0:1]"  0.98560299209256286 0.014397007907437186;
	setAttr -s 2 ".wl[587].w[0:1]"  0.67042179605254082 0.32957820394745918;
	setAttr -s 2 ".wl[588].w[0:1]"  0.80025853319425289 0.19974146680574717;
	setAttr -s 2 ".wl[589].w[0:1]"  0.9908030933349119 0.0091969066650881472;
	setAttr -s 2 ".wl[590].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[591].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[592].w[0:1]"  0.99703567760944056 0.0029643223905595024;
	setAttr -s 2 ".wl[593].w[0:1]"  0.99454141051429856 0.0054585894857014294;
	setAttr -s 2 ".wl[594].w[0:1]"  0.98688091039545234 0.013119089604547617;
	setAttr -s 2 ".wl[595].w[0:1]"  0.51912334276049499 0.48087665723950496;
	setAttr -s 2 ".wl[596].w[0:1]"  0.99949233143370675 0.00050766856629328231;
	setAttr -s 2 ".wl[597].w[0:1]"  0.73017448115618078 0.26982551884381922;
	setAttr -s 2 ".wl[598].w[0:1]"  0.9378531464407589 0.062146853559241148;
	setAttr -s 2 ".wl[599].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[600].w[0:1]"  0.70273613751300712 0.29726386248699294;
	setAttr -s 2 ".wl[601].w[0:1]"  0.87686072843716845 0.12313927156283161;
	setAttr -s 2 ".wl[602].w[0:1]"  0.94655256411517985 0.053447435884820128;
	setAttr -s 2 ".wl[603].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[604].w[0:1]"  0.99843939356813372 0.0015606064318662582;
	setAttr -s 2 ".wl[605].w[0:1]"  0.99712384020444489 0.0028761597955551566;
	setAttr -s 2 ".wl[606].w[0:1]"  0.99511778851189436 0.0048822114881056653;
	setAttr -s 2 ".wl[607].w[0:1]"  0.9885560702756917 0.011443929724308332;
	setAttr -s 2 ".wl[608].w[0:1]"  0.99953361548351138 0.00046638451648859015;
	setAttr -s 2 ".wl[609].w[0:1]"  0.9954269949060528 0.0045730050939472335;
	setAttr -s 2 ".wl[610].w[0:1]"  0.50192662875340399 0.49807337124659606;
	setAttr -s 2 ".wl[611].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[612].w[0:1]"  0.9984603659627892 0.0015396340372108505;
	setAttr -s 2 ".wl[613].w[0:1]"  0.99727045019290617 0.0027295498070938041;
	setAttr -s 2 ".wl[614].w[0:1]"  0.99582125398671328 0.0041787460132867724;
	setAttr -s 2 ".wl[615].w[0:1]"  0.99051383842188079 0.0094861615781191566;
	setAttr -s 2 ".wl[616].w[0:1]"  0.70600745290494848 0.29399254709505157;
	setAttr -s 2 ".wl[617].w[0:1]"  0.94370177853233439 0.056298221467665589;
	setAttr -s 2 ".wl[618].w[0:1]"  0.51934921566712411 0.48065078433287595;
	setAttr -s 2 ".wl[619].w[0:1]"  0.56375185485735246 0.43624814514264754;
	setAttr -s 2 ".wl[620].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[621].w[0:1]"  0.89828763759058583 0.10171236240941421;
	setAttr -s 2 ".wl[622].w[0:1]"  0.77409671307905903 0.22590328692094097;
	setAttr -s 2 ".wl[623].w[0:1]"  0.95286056580587031 0.047139434194129713;
	setAttr -s 2 ".wl[624].w[0:1]"  0.99747503433692641 0.0025249656630735901;
	setAttr -s 2 ".wl[625].w[0:1]"  0.98794859132110679 0.012051408678893306;
	setAttr -s 2 ".wl[626].w[0:1]"  0.99661701306410311 0.0033829869358968671;
	setAttr -s 2 ".wl[627].w[0:1]"  0.99452269661968984 0.0054773033803102427;
	setAttr -s 2 ".wl[628].w[0:1]"  0.99963988990819774 0.00036011009180230037;
	setAttr -s 2 ".wl[629].w[0:1]"  0.95848009342854446 0.041519906571455586;
	setAttr -s 2 ".wl[630].w[0:1]"  0.99832519378425955 0.0016748062157404286;
	setAttr -s 2 ".wl[631].w[0:1]"  0.73054304329130904 0.26945695670869096;
	setAttr -s 2 ".wl[632].w[0:1]"  0.67478755275118041 0.32521244724881959;
	setAttr -s 2 ".wl[633].w[0:1]"  0.99998133617860041 1.8663821399653929e-005;
	setAttr -s 2 ".wl[634].w[0:1]"  0.86503372055780214 0.13496627944219786;
	setAttr -s 2 ".wl[635].w[0:1]"  0.99173284827613861 0.0082671517238613774;
	setAttr -s 2 ".wl[636].w[0:1]"  0.98391504914027372 0.016084950859726371;
	setAttr -s 2 ".wl[637].w[0:1]"  0.99623662212992747 0.0037633778700726268;
	setAttr -s 2 ".wl[638].w[0:1]"  0.97576415217856594 0.024235847821433964;
	setAttr -s 2 ".wl[639].w[0:1]"  0.99908163467843336 0.00091836532156671757;
	setAttr -s 2 ".wl[640].w[0:1]"  0.80110770286568289 0.19889229713431716;
	setAttr -s 2 ".wl[641].w[0:1]"  0.93649558471677197 0.063504415283227991;
	setAttr -s 2 ".wl[642].w[0:1]"  0.82432246796233577 0.1756775320376642;
	setAttr -s 2 ".wl[643].w[0:1]"  0.92650010979086761 0.073499890209132362;
	setAttr -s 2 ".wl[644].w[0:1]"  0.96190186164350944 0.038098138356490507;
	setAttr -s 2 ".wl[645].w[0:1]"  0.9812238765377902 0.018776123462209828;
	setAttr -s 2 ".wl[646].w[0:1]"  0.98866601951115296 0.011333980488847123;
	setAttr -s 2 ".wl[647].w[0:1]"  0.99489643136757677 0.0051035686324232242;
	setAttr -s 2 ".wl[648].w[0:1]"  0.97192025810851457 0.028079741891485464;
	setAttr -s 2 ".wl[649].w[0:1]"  0.99745592288880547 0.0025440771111946061;
	setAttr -s 2 ".wl[650].w[0:1]"  0.99977393002440029 0.00022606997559970079;
	setAttr -s 2 ".wl[651].w[0:1]"  0.99813074955947911 0.0018692504405209164;
	setAttr -s 2 ".wl[652].w[0:1]"  0.9996469224572071 0.00035307754279288115;
	setAttr -s 2 ".wl[653].w[0:1]"  0.89433978541771908 0.10566021458228099;
	setAttr -s 2 ".wl[654].w[0:1]"  0.99984347458192258 0.00015652541807745381;
	setAttr -s 2 ".wl[655].w[0:1]"  0.99667130929917402 0.003328690700825932;
	setAttr -s 2 ".wl[656].w[0:1]"  0.9575999026022296 0.042400097397770363;
	setAttr -s 2 ".wl[657].w[0:1]"  0.93567095155531699 0.064329048444682999;
	setAttr -s 2 ".wl[658].w[0:1]"  0.97400934402565875 0.025990655974341241;
	setAttr -s 2 ".wl[659].w[0:1]"  0.98686456915915566 0.013135430840844339;
	setAttr -s 2 ".wl[660].w[0:1]"  0.99385631373488026 0.0061436862651197428;
	setAttr -s 2 ".wl[661].w[0:1]"  0.99723384743247712 0.0027661525675229154;
	setAttr -s 2 ".wl[662].w[0:1]"  0.99827337348520417 0.0017266265147958117;
	setAttr -s 2 ".wl[663].w[0:1]"  0.99771227338998147 0.0022877266100185204;
	setAttr -s 2 ".wl[664].w[0:1]"  0.99989263406444995 0.00010736593555009417;
	setAttr -s 2 ".wl[665].w[0:1]"  0.99992287642714617 7.7123572853834925e-005;
	setAttr -s 2 ".wl[666].w[0:1]"  0.99475105595682878 0.0052489440431712168;
	setAttr -s 2 ".wl[667].w[0:1]"  0.99971771905798845 0.00028228094201153886;
	setAttr -s 2 ".wl[668].w[0:1]"  0.99994515759238178 5.4842407618220001e-005;
	setAttr -s 2 ".wl[669].w[0:1]"  0.98820158674982961 0.011798413250170418;
	setAttr -s 2 ".wl[670].w[0:1]"  0.95353524187523087 0.046464758124769176;
	setAttr -s 2 ".wl[671].w[0:1]"  0.98915528390092944 0.01084471609907065;
	setAttr -s 2 ".wl[672].w[0:1]"  0.99386017499211288 0.0061398250078871751;
	setAttr -s 2 ".wl[673].w[0:1]"  0.99703142645361242 0.002968573546387682;
	setAttr -s 2 ".wl[674].w[0:1]"  0.99879262268566615 0.0012073773143338683;
	setAttr -s 2 ".wl[675].w[0:1]"  0.99899273204265715 0.0010072679573428858;
	setAttr -s 2 ".wl[676].w[0:1]"  0.99882933742921354 0.0011706625707864646;
	setAttr -s 2 ".wl[677].w[0:1]"  0.99999689148316351 3.1085168364830329e-006;
	setAttr -s 2 ".wl[678].w[0:1]"  0.99996709172516129 3.2908274838764795e-005;
	setAttr -s 2 ".wl[679].w[0:1]"  0.99966938215330747 0.00033061784669255657;
	setAttr -s 2 ".wl[680].w[0:1]"  0.99950341133464027 0.00049658866535979033;
	setAttr -s 2 ".wl[681].w[0:1]"  0.99964317498492128 0.00035682501507879001;
	setAttr -s 2 ".wl[682].w[0:1]"  0.99999853180167941 1.4681983204816513e-006;
	setAttr -s 2 ".wl[683].w[0:1]"  0.97314590097948095 0.026854099020519072;
	setAttr -s 2 ".wl[684].w[0:1]"  0.99568727381199884 0.0043127261880011036;
	setAttr -s 2 ".wl[685].w[0:1]"  0.99549740482402926 0.0045025951759707101;
	setAttr -s 2 ".wl[686].w[0:1]"  0.99729339987277588 0.0027066001272241266;
	setAttr -s 2 ".wl[687].w[0:1]"  0.99921315745837513 0.00078684254162487944;
	setAttr -s 2 ".wl[688].w[0:1]"  0.99918259417764521 0.00081740582235477022;
	setAttr -s 2 ".wl[689].w[0:1]"  0.99873750430485719 0.0012624956951427662;
	setAttr -s 2 ".wl[690].w[0:1]"  0.99873206926565128 0.0012679307343487684;
	setAttr -s 2 ".wl[691].w[0:1]"  0.99953828610941686 0.00046171389058312481;
	setAttr -s 2 ".wl[692].w[0:1]"  0.99999943184761797 5.6815238205439643e-007;
	setAttr -s 2 ".wl[693].w[0:1]"  0.9999948715520669 5.1284479330517156e-006;
	setAttr -s 2 ".wl[694].w[0:1]"  0.99999981053347919 1.8946652087768391e-007;
	setAttr -s 2 ".wl[695].w[0:1]"  0.99998897983495239 1.1020165047677622e-005;
	setAttr -s 2 ".wl[696].w[0:1]"  0.99959835398317798 0.0004016460168220562;
	setAttr -s 2 ".wl[697].w[0:1]"  0.99996981002748575 3.0189972514234248e-005;
	setAttr -s 2 ".wl[698].w[0:1]"  0.99801881351872646 0.0019811864812735178;
	setAttr -s 2 ".wl[699].w[0:1]"  0.99802478584165966 0.0019752141583404279;
	setAttr -s 2 ".wl[700].w[0:1]"  0.99886004588346855 0.0011399541165315252;
	setAttr -s 2 ".wl[701].w[0:1]"  0.99952245410346929 0.00047754589653073665;
	setAttr -s 2 ".wl[702].w[0:1]"  0.99936777460751358 0.00063222539248646427;
	setAttr -s 2 ".wl[703].w[0:1]"  0.99999996084980902 3.9150191032051715e-008;
	setAttr -s 2 ".wl[704].w[0:1]"  0.99999944148569375 5.5851430632622896e-007;
	setAttr -s 2 ".wl[705].w[0:1]"  0.99998147970260798 1.8520297391987947e-005;
	setAttr -s 2 ".wl[706].w[0:1]"  0.99999873846381448 1.2615361855157916e-006;
	setAttr -s 2 ".wl[707].w[0:1]"  0.99957000211343328 0.00042999788656676721;
	setAttr -s 2 ".wl[708].w[0:1]"  0.99986849975865566 0.00013150024134437994;
	setAttr -s 2 ".wl[709].w[0:1]"  0.99891798812876631 0.0010820118712337179;
	setAttr -s 2 ".wl[710].w[0:1]"  0.99907591085695768 0.00092408914304227714;
	setAttr -s 2 ".wl[711].w[0:1]"  0.99973132275448851 0.00026867724551160339;
	setAttr -s 2 ".wl[712].w[0:1]"  0.9995291103865549 0.00047088961344512716;
	setAttr -s 2 ".wl[713].w[0:1]"  0.99999545400545831 4.5459945417345145e-006;
	setAttr -s 2 ".wl[714].w[0:1]"  0.99999983333569087 1.6666430911515254e-007;
	setAttr -s 2 ".wl[715].w[0:1]"  0.99999973943381504 2.605661849355357e-007;
	setAttr -s 2 ".wl[716].w[0:1]"  0.99996140363856034 3.8596361439687304e-005;
	setAttr -s 2 ".wl[717].w[0:1]"  0.99955122001960794 0.00044877998039207206;
	setAttr -s 2 ".wl[718].w[0:1]"  0.99971299822360227 0.00028700177639771137;
	setAttr -s 2 ".wl[719].w[0:1]"  0.99932716754165474 0.00067283245834529482;
	setAttr -s 2 ".wl[720].w[0:1]"  0.9998604143156975 0.00013958568430250289;
	setAttr -s 2 ".wl[721].w[0:1]"  0.99965814375758488 0.00034185624241516794;
	setAttr -s 2 ".wl[722].w[0:1]"  0.99997585532284183 2.4144677158128718e-005;
	setAttr -s 2 ".wl[723].w[0:1]"  0.99996834468101348 3.1655318986471488e-005;
	setAttr -s 2 ".wl[724].w[0:1]"  0.99998364053156452 1.6359468435494079e-005;
	setAttr -s 2 ".wl[725].w[0:1]"  0.9999843036057483 1.5696394251682868e-005;
	setAttr -s 2 ".wl[726].w[0:1]"  0.99981142329863837 0.00018857670136160736;
	setAttr -s 2 ".wl[727].w[0:1]"  0.99993254736582837 6.7452634171597171e-005;
	setAttr -s 2 ".wl[728].w[0:1]"  0.99975396003915962 0.00024603996084036054;
	setAttr -s 2 ".wl[729].w[0:1]"  0.99998812530164427 1.1874698355771278e-005;
	setAttr -s 2 ".wl[730].w[0:1]"  0.99986267659360906 0.00013732340639091727;
	setAttr -s 2 ".wl[731].w[0:1]"  0.99981992853496271 0.00018007146503727346;
	setAttr -s 2 ".wl[732].w[0:1]"  0.99986098389497269 0.00013901610502720994;
	setAttr -s 2 ".wl[733].w[0:1]"  0.99988139938694809 0.00011860061305196035;
	setAttr -s 2 ".wl[734].w[0:1]"  0.99988289061453584 0.00011710938546420886;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.178231881837527 0 -0.98398851431134782 0 0 1 0 0
		 0.98398851431134782 0 -0.178231881837527 0 14.912791093840514 -120.97251597222002 -24.019416938957029 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 0 -2.4980018054066012e-016 0
		 0 1 0 0 2.4980018054066012e-016 0 0.99999999999999978 0 68.524525523061087 -120.19464084086447 274.45956109079469 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 122.07691997560288 6.4178583114104413 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "7E6E0759-470B-8006-689D-7A9574CE1B87";
createNode objectSet -n "skinCluster1Set";
	rename -uid "357F1639-42F9-DB7A-67DB-1AA8F34B8BA9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "58B08C25-4A5A-39D2-F038-E0A180536B9F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "5B3AF2AE-4065-093E-3DAF-D889A473E8AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "8A7D4FE9-447A-4ADC-1F62-6B98D58CE27F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	rename -uid "5A639867-4BEB-26F8-71A8-B7979D6D9098";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "0E3FC742-4D57-0EAD-3506-00AFE7F2379B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "BBFE6EB6-474A-7C63-4FC7-1097DD0C7E74";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.976895568284046 120.97251597222004
		 -18.955041034334116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.76753888560695316 0 -0.64100238617437033 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -242.93900952643642 -0.77787513135556952
		 92.325373185883876 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.76753888560695305 0 0.64100238617437044 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "C3741B3F-468A-DB7F-2ED7-479017E7DBA0";
	setAttr -s 382 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.99895046161085266 0.001049538389147329;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99914909835301946 0.00085090164698052259;
	setAttr -s 2 ".wl[2].w[0:1]"  0.9992805357742961 0.00071946422570392274;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99935015266389182 0.0006498473361081481;
	setAttr -s 2 ".wl[4].w[0:1]"  0.99936008605578142 0.00063991394421858546;
	setAttr -s 2 ".wl[5].w[0:1]"  0.99930603939799734 0.00069396060200273399;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99917588557790615 0.0008241144220938934;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99895205223010786 0.0010479477698921104;
	setAttr -s 2 ".wl[8].w[0:1]"  0.99862106256773553 0.0013789374322644434;
	setAttr -s 2 ".wl[9].w[0:1]"  0.99819105089850468 0.0018089491014953265;
	setAttr -s 2 ".wl[10].w[0:1]"  0.99770887418665122 0.0022911258133486764;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99725972946935848 0.0027402705306415281;
	setAttr -s 2 ".wl[12].w[0:1]"  0.99694006449309736 0.0030599355069027318;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99681789674363708 0.0031821032563629633;
	setAttr -s 2 ".wl[14].w[0:1]"  0.9969072643036736 0.0030927356963264137;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99717068556089239 0.0028293144391076607;
	setAttr -s 2 ".wl[16].w[0:1]"  0.99754168300248247 0.0024583169975175654;
	setAttr -s 2 ".wl[17].w[0:1]"  0.99795056557627926 0.0020494344237208324;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99834180642884007 0.0016581935711599465;
	setAttr -s 2 ".wl[19].w[0:1]"  0.99868045502385816 0.001319544976141836;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99925418040645919 0.0007458195935408637;
	setAttr -s 2 ".wl[21].w[0:1]"  0.99952190841599176 0.00047809158400828454;
	setAttr -s 2 ".wl[22].w[0:1]"  0.99967961971311747 0.00032038028688253665;
	setAttr -s 2 ".wl[23].w[0:1]"  0.99976063808536697 0.00023936191463303096;
	setAttr -s 2 ".wl[24].w[0:1]"  0.99978472287305253 0.00021527712694745707;
	setAttr -s 2 ".wl[25].w[0:1]"  0.99975256531947587 0.00024743468052413454;
	setAttr -s 2 ".wl[26].w[0:1]"  0.99963532651101161 0.00036467348898839463;
	setAttr -s 2 ".wl[27].w[0:1]"  0.9993565529800208 0.00064344701997924396;
	setAttr -s 2 ".wl[28].w[0:1]"  0.99878603723254578 0.0012139627674542205;
	setAttr -s 2 ".wl[29].w[0:1]"  0.99780637207622924 0.0021936279237707991;
	setAttr -s 2 ".wl[30].w[0:1]"  0.9964774703065209 0.0035225296934790549;
	setAttr -s 2 ".wl[31].w[0:1]"  0.99513652444586231 0.0048634755541377261;
	setAttr -s 2 ".wl[32].w[0:1]"  0.99423360436024144 0.0057663956397586589;
	setAttr -s 2 ".wl[33].w[0:1]"  0.9940355110572392 0.0059644889427608082;
	setAttr -s 2 ".wl[34].w[0:1]"  0.99450343866538826 0.0054965613346117763;
	setAttr -s 2 ".wl[35].w[0:1]"  0.99539627963746158 0.0046037203625385169;
	setAttr -s 2 ".wl[36].w[0:1]"  0.99643721394868678 0.0035627860513132424;
	setAttr -s 2 ".wl[37].w[0:1]"  0.99741859954982204 0.0025814004501779333;
	setAttr -s 2 ".wl[38].w[0:1]"  0.99822902005515413 0.0017709799448458207;
	setAttr -s 2 ".wl[39].w[0:1]"  0.99883567392785777 0.0011643260721422776;
	setAttr -s 2 ".wl[40].w[0:1]"  0.99945059879296194 0.00054940120703801589;
	setAttr -s 2 ".wl[41].w[0:1]"  0.99972653491693364 0.00027346508306639;
	setAttr -s 2 ".wl[42].w[0:1]"  0.99986488598787693 0.00013511401212304007;
	setAttr -s 2 ".wl[43].w[0:1]"  0.99992646711221822 7.3532887781820592e-005;
	setAttr -s 2 ".wl[44].w[0:1]"  0.9999471559200821 5.284407991787053e-005;
	setAttr -s 2 ".wl[45].w[0:1]"  0.99993890184325318 6.1098156746877851e-005;
	setAttr -s 2 ".wl[46].w[0:1]"  0.99987977874967471 0.00012022125032525542;
	setAttr -s 2 ".wl[47].w[0:1]"  0.99966060027757198 0.00033939972242807824;
	setAttr -s 2 ".wl[48].w[0:1]"  0.99896381044275018 0.0010361895572498384;
	setAttr -s 2 ".wl[49].w[0:1]"  0.99727726772949088 0.0027227322705091666;
	setAttr -s 2 ".wl[50].w[0:1]"  0.99449381545612026 0.0055061845438797328;
	setAttr -s 2 ".wl[51].w[0:1]"  0.9915584692203061 0.0084415307796938607;
	setAttr -s 2 ".wl[52].w[0:1]"  0.98981889698577419 0.010181103014225821;
	setAttr -s 2 ".wl[53].w[0:1]"  0.98983707187583347 0.010162928124166569;
	setAttr -s 2 ".wl[54].w[0:1]"  0.99122324658090255 0.008776753419097524;
	setAttr -s 2 ".wl[55].w[0:1]"  0.99322835720613134 0.0067716427938686848;
	setAttr -s 2 ".wl[56].w[0:1]"  0.99523446204917465 0.0047655379508253883;
	setAttr -s 2 ".wl[57].w[0:1]"  0.99690441347056125 0.0030955865294387567;
	setAttr -s 2 ".wl[58].w[0:1]"  0.99906291225722066 0.00093708774277933139;
	setAttr -s 2 ".wl[59].w[0:1]"  0.99951565428658784 0.000484345713412195;
	setAttr -s 2 ".wl[60].w[0:1]"  0.999829918694219 0.00017008130578096179;
	setAttr -s 2 ".wl[61].w[0:1]"  0.99999408602507855 5.9139749214781878e-006;
	setAttr -s 2 ".wl[62].w[0:1]"  0.99994587143168823 5.4128568311845698e-005;
	setAttr -s 2 ".wl[63].w[0:1]"  0.99998228214636087 1.7717853639156408e-005;
	setAttr -s 2 ".wl[64].w[0:1]"  0.99999209802431277 7.9019756872157278e-006;
	setAttr -s 2 ".wl[65].w[0:1]"  0.99999180704242008 8.1929575799563134e-006;
	setAttr -s 2 ".wl[66].w[0:1]"  0.99997525645444363 2.4743545556401605e-005;
	setAttr -s 2 ".wl[67].w[0:1]"  0.99985894811652554 0.00014105188347454778;
	setAttr -s 2 ".wl[68].w[0:1]"  0.9988803809135538 0.0011196190864462502;
	setAttr -s 2 ".wl[69].w[0:1]"  0.99467193768023898 0.0053280623197609987;
	setAttr -s 2 ".wl[70].w[0:1]"  0.99135313773135758 0.0086468622686424555;
	setAttr -s 2 ".wl[71].w[0:1]"  0.9858607652121234 0.014139234787876612;
	setAttr -s 2 ".wl[72].w[0:1]"  0.98323707658765791 0.016762923412342094;
	setAttr -s 2 ".wl[73].w[0:1]"  0.98413829791050322 0.015861702089496818;
	setAttr -s 2 ".wl[74].w[0:1]"  0.98719427340781329 0.012805726592186652;
	setAttr -s 2 ".wl[75].w[0:1]"  0.99081342670217931 0.0091865732978206344;
	setAttr -s 2 ".wl[76].w[0:1]"  0.99401513334025327 0.0059848666597467392;
	setAttr -s 2 ".wl[77].w[0:1]"  0.9979875666666066 0.0020124333333934492;
	setAttr -s 2 ".wl[78].w[0:1]"  0.99894977767385706 0.0010502223261429882;
	setAttr -s 2 ".wl[79].w[0:1]"  0.99953421083871008 0.00046578916128987797;
	setAttr -s 2 ".wl[80].w[0:1]"  0.99986607061623389 0.00013392938376615454;
	setAttr -s 2 ".wl[81].w[0:1]"  0.99999900622879767 9.9377120228434033e-007;
	setAttr -s 2 ".wl[82].w[0:1]"  0.99999946500449899 5.3499550100220647e-007;
	setAttr -s 2 ".wl[83].w[0:1]"  0.9999969700752992 3.0299247009006266e-006;
	setAttr -s 2 ".wl[84].w[0:1]"  0.99999941885892296 5.8114107706545052e-007;
	setAttr -s 2 ".wl[85].w[0:1]"  0.9999994641655463 5.3583445366496338e-007;
	setAttr -s 2 ".wl[86].w[0:1]"  0.99999858518131457 1.4148186854123302e-006;
	setAttr -s 2 ".wl[87].w[0:1]"  0.99996628926237352 3.3710737626448102e-005;
	setAttr -s 2 ".wl[88].w[0:1]"  0.99858434175499322 0.0014156582450067952;
	setAttr -s 2 ".wl[89].w[0:1]"  0.98324407766656374 0.016755922333436344;
	setAttr -s 2 ".wl[90].w[0:1]"  0.97647756797446805 0.023522432025531996;
	setAttr -s 2 ".wl[91].w[0:1]"  0.97748078071063771 0.022519219289362357;
	setAttr -s 2 ".wl[92].w[0:1]"  0.96606466200281138 0.033935337997188682;
	setAttr -s 2 ".wl[93].w[0:1]"  0.97058311910409223 0.029416880895907809;
	setAttr -s 2 ".wl[94].w[0:1]"  0.982706756311167 0.017293243688833001;
	setAttr -s 2 ".wl[95].w[0:1]"  0.98833738959431305 0.011662610405687;
	setAttr -s 2 ".wl[96].w[0:1]"  0.9957548169241397 0.0042451830758603515;
	setAttr -s 2 ".wl[97].w[0:1]"  0.99760015617365227 0.0023998438263477737;
	setAttr -s 2 ".wl[98].w[0:1]"  0.99850161966015472 0.0014983803398453551;
	setAttr -s 2 ".wl[99].w[0:1]"  0.99954953240322575 0.00045046759677429705;
	setAttr -s 2 ".wl[100].w[0:1]"  0.99997662244985408 2.3377550145977981e-005;
	setAttr -s 2 ".wl[101].w[0:1]"  0.99999968448119314 3.1551880685907169e-007;
	setAttr -s 2 ".wl[102].w[0:1]"  0.99999987624421605 1.2375578405491034e-007;
	setAttr -s 2 ".wl[103].w[0:1]"  0.99999991752449824 8.2475501758821381e-008;
	setAttr -s 2 ".wl[104].w[0:1]"  0.99999980929963028 1.9070036972621132e-007;
	setAttr -s 2 ".wl[105].w[0:1]"  0.9999992057298388 7.9427016124746526e-007;
	setAttr -s 2 ".wl[106].w[0:1]"  0.99999628218929015 3.7178107099304238e-006;
	setAttr -s 2 ".wl[107].w[0:1]"  0.99999453515250647 5.464847493551526e-006;
	setAttr -s 2 ".wl[108].w[0:1]"  0.99801591604068673 0.0019840839593131712;
	setAttr -s 2 ".wl[109].w[0:1]"  0.97090875663870002 0.029091243361300038;
	setAttr -s 2 ".wl[110].w[0:1]"  0.90719607688590231 0.092803923114097728;
	setAttr -s 2 ".wl[111].w[0:1]"  0.96639912557087038 0.033600874429129658;
	setAttr -s 2 ".wl[112].w[0:1]"  0.95320818641359895 0.046791813586401075;
	setAttr -s 2 ".wl[113].w[0:1]"  0.9616431859651553 0.038356814034844769;
	setAttr -s 2 ".wl[114].w[0:1]"  0.97816801366134887 0.021831986338651209;
	setAttr -s 2 ".wl[115].w[0:1]"  0.98599606652331395 0.01400393347668609;
	setAttr -s 2 ".wl[116].w[0:1]"  0.9948957468817321 0.0051042531182678525;
	setAttr -s 2 ".wl[117].w[0:1]"  0.99666343195578944 0.0033365680442105933;
	setAttr -s 2 ".wl[118].w[0:1]"  0.99819049262365711 0.0018095073763428867;
	setAttr -s 2 ".wl[119].w[0:1]"  0.99956186077205966 0.00043813922794034324;
	setAttr -s 2 ".wl[120].w[0:1]"  0.99998100025180658 1.8999748193459643e-005;
	setAttr -s 2 ".wl[121].w[0:1]"  0.99999990062707877 9.9372921205614922e-008;
	setAttr -s 2 ".wl[122].w[0:1]"  0.99999962487818062 3.751218194741715e-007;
	setAttr -s 2 ".wl[123].w[0:1]"  0.99999978074255391 2.1925744604774406e-007;
	setAttr -s 2 ".wl[124].w[0:1]"  0.99999877119134828 1.2288086517549206e-006;
	setAttr -s 2 ".wl[125].w[0:1]"  0.99999375598773277 6.2440122672626958e-006;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99996927804141333 3.0721958586692533e-005;
	setAttr -s 2 ".wl[127].w[0:1]"  0.99293102224626439 0.0070689777537356578;
	setAttr -s 2 ".wl[128].w[0:1]"  0.99850913282737785 0.0014908671726221062;
	setAttr -s 2 ".wl[129].w[0:1]"  0.83706353960341151 0.16293646039658843;
	setAttr -s 2 ".wl[130].w[0:1]"  0.84959042060433987 0.15040957939566016;
	setAttr -s 2 ".wl[131].w[0:1]"  0.91801402213921135 0.081985977860788664;
	setAttr -s 2 ".wl[132].w[0:1]"  0.94007213708957327 0.059927862910426677;
	setAttr -s 2 ".wl[133].w[0:1]"  0.9531372410332718 0.046862758966728243;
	setAttr -s 2 ".wl[134].w[0:1]"  0.97403257619885686 0.025967423801143176;
	setAttr -s 2 ".wl[135].w[0:1]"  0.98397123670880537 0.016028763291194636;
	setAttr -s 2 ".wl[136].w[0:1]"  0.99072414606377579 0.0092758539362242723;
	setAttr -s 2 ".wl[137].w[0:1]"  0.99605687250157893 0.0039431274984210365;
	setAttr -s 2 ".wl[138].w[0:1]"  0.99792208540987892 0.0020779145901210368;
	setAttr -s 2 ".wl[139].w[0:1]"  0.99957140786740883 0.00042859213259116368;
	setAttr -s 2 ".wl[140].w[0:1]"  0.99998331397659035 1.6686023409674863e-005;
	setAttr -s 2 ".wl[141].w[0:1]"  0.99999979395609695 2.0604390303440596e-007;
	setAttr -s 2 ".wl[142].w[0:1]"  0.99999919663737358 8.0336262638146167e-007;
	setAttr -s 2 ".wl[143].w[0:1]"  0.99999925263567457 7.4736432538518972e-007;
	setAttr -s 2 ".wl[144].w[0:1]"  0.99999553416695086 4.4658330492319968e-006;
	setAttr -s 2 ".wl[145].w[0:1]"  0.99997903375518005 2.0966244820047185e-005;
	setAttr -s 2 ".wl[146].w[0:1]"  0.99924400467778074 0.00075599532221927955;
	setAttr -s 2 ".wl[147].w[0:1]"  0.9775148515991624 0.022485148400837551;
	setAttr -s 2 ".wl[148].w[0:1]"  0.9933764535821088 0.0066235464178911888;
	setAttr -s 2 ".wl[149].w[0:1]"  0.5008170005012248 0.4991829994987752;
	setAttr -s 2 ".wl[150].w[0:1]"  0.61904085473395176 0.38095914526604829;
	setAttr -s 2 ".wl[151].w[0:1]"  0.86710295193299869 0.13289704806700128;
	setAttr -s 2 ".wl[152].w[0:1]"  0.92865171307259331 0.071348286927406648;
	setAttr -s 2 ".wl[153].w[0:1]"  0.9461247640122008 0.053875235987799239;
	setAttr -s 2 ".wl[154].w[0:1]"  0.97072975247187709 0.029270247528122982;
	setAttr -s 2 ".wl[155].w[0:1]"  0.98241450022500965 0.017585499774990385;
	setAttr -s 2 ".wl[156].w[0:1]"  0.98997106935669665 0.010028930643303414;
	setAttr -s 2 ".wl[157].w[0:1]"  0.99558143825458278 0.0044185617454172649;
	setAttr -s 2 ".wl[158].w[0:1]"  0.99771630189926541 0.0022836981007346231;
	setAttr -s 2 ".wl[159].w[0:1]"  0.9995782548726535 0.00042174512734654559;
	setAttr -s 2 ".wl[160].w[0:1]"  0.99998299153458836 1.7008465411668227e-005;
	setAttr -s 2 ".wl[161].w[0:1]"  0.99999946459340971 5.354065903372977e-007;
	setAttr -s 2 ".wl[162].w[0:1]"  0.99999867923248809 1.3207675119384749e-006;
	setAttr -s 2 ".wl[163].w[0:1]"  0.99999856071370041 1.4392862996139376e-006;
	setAttr -s 2 ".wl[164].w[0:1]"  0.9999914440294182 8.5559705818060914e-006;
	setAttr -s 2 ".wl[165].w[0:1]"  0.99996117667156403 3.8823328435985525e-005;
	setAttr -s 2 ".wl[166].w[0:1]"  0.99866635584582375 0.0013336441541762761;
	setAttr -s 2 ".wl[167].w[0:1]"  0.95715325128719853 0.042846748712801523;
	setAttr -s 2 ".wl[168].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[169].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[170].w[0:1]"  0.57051952502172631 0.42948047497827374;
	setAttr -s 2 ".wl[171].w[0:1]"  0.84857261374033188 0.15142738625966812;
	setAttr -s 2 ".wl[172].w[0:1]"  0.92088481869319738 0.079115181306802604;
	setAttr -s 2 ".wl[173].w[0:1]"  0.94151776573792056 0.058482234262079449;
	setAttr -s 2 ".wl[174].w[0:1]"  0.96860458519202708 0.031395414807972991;
	setAttr -s 2 ".wl[175].w[0:1]"  0.98143783133939189 0.018562168660608089;
	setAttr -s 2 ".wl[176].w[0:1]"  0.98950249257085787 0.010497507429142128;
	setAttr -s 2 ".wl[177].w[0:1]"  0.99423463165704873 0.0057653683429512706;
	setAttr -s 2 ".wl[178].w[0:1]"  0.99758777556550204 0.0024122244344979091;
	setAttr -s 2 ".wl[179].w[0:1]"  0.99957739643850896 0.00042260356149107767;
	setAttr -s 2 ".wl[180].w[0:1]"  0.99998265118399621 1.7348816003804289e-005;
	setAttr -s 2 ".wl[181].w[0:1]"  0.99999928815416195 7.1184583809146691e-007;
	setAttr -s 2 ".wl[182].w[0:1]"  0.99999845023118372 1.5497688162554701e-006;
	setAttr -s 2 ".wl[183].w[0:1]"  0.99999828457023943 1.7154297605732404e-006;
	setAttr -s 2 ".wl[184].w[0:1]"  0.99998970098772866 1.0299012271429725e-005;
	setAttr -s 2 ".wl[185].w[0:1]"  0.99995342865527181 4.6571344728177087e-005;
	setAttr -s 2 ".wl[186].w[0:1]"  0.99840952717706422 0.0015904728229357832;
	setAttr -s 2 ".wl[187].w[0:1]"  0.94751528163990484 0.052484718360095058;
	setAttr -s 2 ".wl[188].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[189].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[190].w[0:1]"  0.55625225854518678 0.44374774145481327;
	setAttr -s 2 ".wl[191].w[0:1]"  0.84196192438276951 0.15803807561723049;
	setAttr -s 2 ".wl[192].w[0:1]"  0.91814758958071618 0.08185241041928383;
	setAttr -s 2 ".wl[193].w[0:1]"  0.93992275082532628 0.060077249174673733;
	setAttr -s 2 ".wl[194].w[0:1]"  0.96787802944362122 0.032121970556378769;
	setAttr -s 2 ".wl[195].w[0:1]"  0.98110936704347218 0.018890632956527823;
	setAttr -s 2 ".wl[196].w[0:1]"  0.98934633702855812 0.01065366297144185;
	setAttr -s 2 ".wl[197].w[0:1]"  0.99412058166714079 0.005879418332859215;
	setAttr -s 2 ".wl[198].w[0:1]"  0.9975453573517965 0.0024546426482035112;
	setAttr -s 2 ".wl[199].w[0:1]"  0.99957587527716552 0.00042412472283443251;
	setAttr -s 2 ".wl[200].w[0:1]"  0.99998334053922355 1.6659460776475204e-005;
	setAttr -s 2 ".wl[201].w[0:1]"  0.9999995243194385 4.7568056149096222e-007;
	setAttr -s 2 ".wl[202].w[0:1]"  0.99999877746494614 1.2225350539431072e-006;
	setAttr -s 2 ".wl[203].w[0:1]"  0.99999869946090181 1.3005390981529039e-006;
	setAttr -s 2 ".wl[204].w[0:1]"  0.99999186925905503 8.1307409449408954e-006;
	setAttr -s 2 ".wl[205].w[0:1]"  0.99996236743940803 3.7632560591992276e-005;
	setAttr -s 2 ".wl[206].w[0:1]"  0.9997981488670542 0.00020185113294580542;
	setAttr -s 2 ".wl[207].w[0:1]"  0.95747343726547252 0.042526562734527519;
	setAttr -s 2 ".wl[208].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[209].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[210].w[0:1]"  0.57063271326960097 0.42936728673039909;
	setAttr -s 2 ".wl[211].w[0:1]"  0.84866293410001648 0.1513370658999835;
	setAttr -s 2 ".wl[212].w[0:1]"  0.92093162003043605 0.079068379969563979;
	setAttr -s 2 ".wl[213].w[0:1]"  0.94155035381673025 0.058449646183269748;
	setAttr -s 2 ".wl[214].w[0:1]"  0.96862554078003804 0.031374459219961973;
	setAttr -s 2 ".wl[215].w[0:1]"  0.98145177060843158 0.018548229391568489;
	setAttr -s 2 ".wl[216].w[0:1]"  0.98951180355346802 0.010488196446532018;
	setAttr -s 2 ".wl[217].w[0:1]"  0.99424127616380487 0.0057587238361951941;
	setAttr -s 2 ".wl[218].w[0:1]"  0.99759194853846112 0.0024080514615388601;
	setAttr -s 2 ".wl[219].w[0:1]"  0.99957912720252196 0.00042087279747808664;
	setAttr -s 2 ".wl[220].w[0:1]"  0.99998400653405051 1.5993465949457218e-005;
	setAttr -s 2 ".wl[221].w[0:1]"  0.99999986347626113 1.365237389208256e-007;
	setAttr -s 2 ".wl[222].w[0:1]"  0.99999934537737334 6.5462262670806117e-007;
	setAttr -s 2 ".wl[223].w[0:1]"  0.9999994429840362 5.5701596383490906e-007;
	setAttr -s 2 ".wl[224].w[0:1]"  0.99999612904914348 3.8709508565452549e-006;
	setAttr -s 2 ".wl[225].w[0:1]"  0.99998072740887956 1.9272591120456882e-005;
	setAttr -s 2 ".wl[226].w[0:1]"  0.99989920181717451 0.00010079818282546896;
	setAttr -s 2 ".wl[227].w[0:1]"  0.97795963329285884 0.022040366707141195;
	setAttr -s 2 ".wl[228].w[0:1]"  0.99669622605767338 0.0033037739423267074;
	setAttr -s 2 ".wl[229].w[0:1]"  0.50084970157194286 0.49915029842805719;
	setAttr -s 2 ".wl[230].w[0:1]"  0.61935792540755674 0.38064207459244331;
	setAttr -s 2 ".wl[231].w[0:1]"  0.86727529497539624 0.13272470502460387;
	setAttr -s 2 ".wl[232].w[0:1]"  0.92874044292190705 0.071259557078093005;
	setAttr -s 2 ".wl[233].w[0:1]"  0.94618727575224093 0.053812724247759118;
	setAttr -s 2 ".wl[234].w[0:1]"  0.97077018297456918 0.029229817025430829;
	setAttr -s 2 ".wl[235].w[0:1]"  0.98244165553365204 0.017558344466347936;
	setAttr -s 2 ".wl[236].w[0:1]"  0.98998925150123063 0.010010748498769385;
	setAttr -s 2 ".wl[237].w[0:1]"  0.9955931672201328 0.004406832779867218;
	setAttr -s 2 ".wl[238].w[0:1]"  0.9977244188899056 0.0022755811100944262;
	setAttr -s 2 ".wl[239].w[0:1]"  0.99958173652250459 0.00041826347749545701;
	setAttr -s 2 ".wl[240].w[0:1]"  0.99998210902214302 1.7890977857009578e-005;
	setAttr -s 2 ".wl[241].w[0:1]"  0.99999996478569719 3.5214302825320764e-008;
	setAttr -s 2 ".wl[242].w[0:1]"  0.99999976715974215 2.3284025789324528e-007;
	setAttr -s 2 ".wl[243].w[0:1]"  0.99999991467219473 8.5327805239087122e-008;
	setAttr -s 2 ".wl[244].w[0:1]"  0.99999920154143096 7.9845856903240961e-007;
	setAttr -s 2 ".wl[245].w[0:1]"  0.99999504983469745 4.950165302585953e-006;
	setAttr -s 2 ".wl[246].w[0:1]"  0.99997428073505101 2.571926494905786e-005;
	setAttr -s 2 ".wl[247].w[0:1]"  0.99325773588830946 0.0067422641116905782;
	setAttr -s 2 ".wl[248].w[0:1]"  0.99880497690634651 0.0011950230936534616;
	setAttr -s 2 ".wl[249].w[0:1]"  0.83869951967112655 0.16130048032887345;
	setAttr -s 2 ".wl[250].w[0:1]"  0.85015970954509201 0.14984029045490802;
	setAttr -s 2 ".wl[251].w[0:1]"  0.9182469376422554 0.081753062357744627;
	setAttr -s 2 ".wl[252].w[0:1]"  0.94019313631756452 0.059806863682435506;
	setAttr -s 2 ".wl[253].w[0:1]"  0.9532243799897735 0.046775620010226546;
	setAttr -s 2 ".wl[254].w[0:1]"  0.97408955287539079 0.025910447124609177;
	setAttr -s 2 ".wl[255].w[0:1]"  0.98401015820629067 0.015989841793709346;
	setAttr -s 2 ".wl[256].w[0:1]"  0.99075032330328494 0.0092496766967150625;
	setAttr -s 2 ".wl[257].w[0:1]"  0.99607346875376135 0.0039265312462386497;
	setAttr -s 2 ".wl[258].w[0:1]"  0.99793369105030116 0.0020663089496988107;
	setAttr -s 2 ".wl[259].w[0:1]"  0.99957667026931096 0.00042332973068898361;
	setAttr -s 2 ".wl[260].w[0:1]"  0.99997825336613722 2.1746633862784954e-005;
	setAttr -s 2 ".wl[261].w[0:1]"  0.9999998461784454 1.5382155460384969e-007;
	setAttr -s 2 ".wl[262].w[0:1]"  0.99999996745094633 3.2549053640547315e-008;
	setAttr -s 2 ".wl[263].w[0:1]"  0.99999999701711284 2.9828871991430175e-009;
	setAttr -s 2 ".wl[264].w[0:1]"  0.9999999752687756 2.4731224494312043e-008;
	setAttr -s 2 ".wl[265].w[0:1]"  0.99999970493914114 2.9506085896679317e-007;
	setAttr -s 2 ".wl[266].w[0:1]"  0.99999816295624488 1.8370437551914277e-006;
	setAttr -s 2 ".wl[267].w[0:1]"  0.99999880065443236 1.1993455677018364e-006;
	setAttr -s 2 ".wl[268].w[0:1]"  0.99828496022006652 0.0017150397799334861;
	setAttr -s 2 ".wl[269].w[0:1]"  0.9714559521790167 0.028544047820983291;
	setAttr -s 2 ".wl[270].w[0:1]"  0.90778335581582059 0.092216644184179464;
	setAttr -s 2 ".wl[271].w[0:1]"  0.96655970767650556 0.03344029232349445;
	setAttr -s 2 ".wl[272].w[0:1]"  0.95334786406970018 0.046652135930299848;
	setAttr -s 2 ".wl[273].w[0:1]"  0.96174727648664415 0.038252723513355888;
	setAttr -s 2 ".wl[274].w[0:1]"  0.97823727096570767 0.02176272903429239;
	setAttr -s 2 ".wl[275].w[0:1]"  0.98604458311946364 0.013955416880536387;
	setAttr -s 2 ".wl[276].w[0:1]"  0.99492174062810734 0.005078259371892652;
	setAttr -s 2 ".wl[277].w[0:1]"  0.99668373304449476 0.0033162669555051993;
	setAttr -s 2 ".wl[278].w[0:1]"  0.99820491258257504 0.0017950874174249745;
	setAttr -s 2 ".wl[279].w[0:1]"  0.99956893920845391 0.00043106079154612848;
	setAttr -s 2 ".wl[280].w[0:1]"  0.99997228894984913 2.7711050150892001e-005;
	setAttr -s 2 ".wl[281].w[0:1]"  0.99999938091978957 6.1908021039951381e-007;
	setAttr -s 2 ".wl[282].w[0:1]"  0.99999925304155068 7.469584492708237e-007;
	setAttr -s 2 ".wl[283].w[0:1]"  0.99999788692980573 2.1130701942136406e-006;
	setAttr -s 2 ".wl[284].w[0:1]"  0.99999981939633742 1.8060366255074343e-007;
	setAttr -s 2 ".wl[285].w[0:1]"  0.99999989515654464 1.0484345536593608e-007;
	setAttr -s 2 ".wl[286].w[0:1]"  0.99999969447478854 3.0552521147103598e-007;
	setAttr -s 2 ".wl[287].w[0:1]"  0.99997507782766148 2.4922172338539723e-005;
	setAttr -s 2 ".wl[288].w[0:1]"  0.99869776988186687 0.0013022301181331399;
	setAttr -s 2 ".wl[289].w[0:1]"  0.98362411597694932 0.016375884023050648;
	setAttr -s 2 ".wl[290].w[0:1]"  0.97672043908415418 0.023279560915845869;
	setAttr -s 2 ".wl[291].w[0:1]"  0.97763128284324596 0.022368717156753981;
	setAttr -s 2 ".wl[292].w[0:1]"  0.9745068866088421 0.025493113391157889;
	setAttr -s 2 ".wl[293].w[0:1]"  0.97069483010699553 0.029305169893004492;
	setAttr -s 2 ".wl[294].w[0:1]"  0.98278295625865231 0.017217043741347741;
	setAttr -s 2 ".wl[295].w[0:1]"  0.98839264763386903 0.011607352366130985;
	setAttr -s 2 ".wl[296].w[0:1]"  0.99578423094748214 0.004215769052517894;
	setAttr -s 2 ".wl[297].w[0:1]"  0.9976213450004866 0.0023786549995134;
	setAttr -s 2 ".wl[298].w[0:1]"  0.99851797761646943 0.0014820223835306679;
	setAttr -s 2 ".wl[299].w[0:1]"  0.99955847535357611 0.00044152464642384023;
	setAttr -s 2 ".wl[300].w[0:1]"  0.99983656807780052 0.00016343192219954672;
	setAttr -s 2 ".wl[301].w[0:1]"  0.99999529757540806 4.7024245919187987e-006;
	setAttr -s 2 ".wl[302].w[0:1]"  0.99995021886275515 4.9781137244838747e-005;
	setAttr -s 2 ".wl[303].w[0:1]"  0.99998500707464499 1.4992925354979248e-005;
	setAttr -s 2 ".wl[304].w[0:1]"  0.99999412277401722 5.8772259828082353e-006;
	setAttr -s 2 ".wl[305].w[0:1]"  0.99999419195177075 5.8080482292806479e-006;
	setAttr -s 2 ".wl[306].w[0:1]"  0.99998027019506541 1.9729804934578467e-005;
	setAttr -s 2 ".wl[307].w[0:1]"  0.99987719905992811 0.00012280094007190959;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99893918024235384 0.0010608197576462109;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99480103575327994 0.0051989642467200952;
	setAttr -s 2 ".wl[310].w[0:1]"  0.9914683595999646 0.008531640400035425;
	setAttr -s 2 ".wl[311].w[0:1]"  0.9859882627333435 0.01401173726665645;
	setAttr -s 2 ".wl[312].w[0:1]"  0.98335500612284488 0.01664499387715512;
	setAttr -s 2 ".wl[313].w[0:1]"  0.98423659162564991 0.015763408374350137;
	setAttr -s 2 ".wl[314].w[0:1]"  0.98727148954311705 0.01272851045688296;
	setAttr -s 2 ".wl[315].w[0:1]"  0.99087199622099953 0.0091280037790005038;
	setAttr -s 2 ".wl[316].w[0:1]"  0.9940585597146836 0.0059414402853163609;
	setAttr -s 2 ".wl[317].w[0:1]"  0.99801069448912427 0.0019893055108757053;
	setAttr -s 2 ".wl[318].w[0:1]"  0.99896614104765225 0.0010338589523477585;
	setAttr -s 2 ".wl[319].w[0:1]"  0.99954507178330565 0.00045492821669432872;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99946509757581592 0.00053490242418413646;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99973720593110904 0.00026279406889096748;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99987287945739489 0.00012712054260513434;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99993287394752584 6.712605247415914e-005;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99995316369677223 4.6836303227843398e-005;
	setAttr -s 2 ".wl[325].w[0:1]"  0.99994616673404324 5.3833265956813279e-005;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99989131636220507 0.00010868363779494867;
	setAttr -s 2 ".wl[327].w[0:1]"  0.99968219652349699 0.00031780347650298298;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99900412916337455 0.00099587083662546491;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99734310902493872 0.0026568909750612638;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99458267585009152 0.0054173241499084653;
	setAttr -s 2 ".wl[331].w[0:1]"  0.99165843323122616 0.0083415667687739073;
	setAttr -s 2 ".wl[332].w[0:1]"  0.98991661307656609 0.010083386923433879;
	setAttr -s 2 ".wl[333].w[0:1]"  0.98992385026016716 0.010076149739832835;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99129567287644782 0.0087043271235522045;
	setAttr -s 2 ".wl[335].w[0:1]"  0.99328644471511895 0.0067135552848810827;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99527984287567206 0.0047201571243279759;
	setAttr -s 2 ".wl[337].w[0:1]"  0.99693921743670666 0.0030607825632933995;
	setAttr -s 2 ".wl[338].w[0:1]"  0.9990808155593468 0.00091918444065315467;
	setAttr -s 2 ".wl[339].w[0:1]"  0.9995284845956941 0.00047151540430594825;
	setAttr -s 2 ".wl[340].w[0:1]"  0.9992737960999265 0.00072620390007346772;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99953812749037063 0.0004618725096294027;
	setAttr -s 2 ".wl[342].w[0:1]"  0.99969355240678681 0.00030644759321319596;
	setAttr -s 2 ".wl[343].w[0:1]"  0.9997734531129967 0.00022654688700335588;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99979779612210029 0.0002022038778997336;
	setAttr -s 2 ".wl[345].w[0:1]"  0.999767729136806 0.00023227086319404695;
	setAttr -s 2 ".wl[346].w[0:1]"  0.99965519396013047 0.00034480603986953174;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99938464568831598 0.00061535431168401533;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99882609121366184 0.001173908786338204;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99786045782955302 0.0021395421704469885;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99654405172795202 0.0034559482720479978;
	setAttr -s 2 ".wl[351].w[0:1]"  0.9952105017201357 0.0047894982798643753;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99430853350895476 0.0056914664910452228;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99410600086139012 0.0058939991386099877;
	setAttr -s 2 ".wl[354].w[0:1]"  0.99456622233067005 0.0054337776693299845;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99545007563931387 0.0045499243606861471;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99648210055309405 0.0035178994469059802;
	setAttr -s 2 ".wl[357].w[0:1]"  0.9974554022874913 0.0025445977125087395;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99825888358413384 0.0017411164158661673;
	setAttr -s 2 ".wl[359].w[0:1]"  0.99885981927367484 0.0011401807263252055;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99897706030240052 0.0010229396975994622;
	setAttr -s 2 ".wl[361].w[0:1]"  0.99917349410497347 0.00082650589502649969;
	setAttr -s 2 ".wl[362].w[0:1]"  0.99930358395957097 0.00069641604042907865;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99937281119481636 0.00062718880518358863;
	setAttr -s 2 ".wl[364].w[0:1]"  0.9993834406403691 0.00061655935963084499;
	setAttr -s 2 ".wl[365].w[0:1]"  0.99933131836197009 0.00066868163802993928;
	setAttr -s 2 ".wl[366].w[0:1]"  0.99920442033665224 0.0007955796633477548;
	setAttr -s 2 ".wl[367].w[0:1]"  0.99898512460883826 0.0010148753911617811;
	setAttr -s 2 ".wl[368].w[0:1]"  0.99865960792770492 0.0013403920722951433;
	setAttr -s 2 ".wl[369].w[0:1]"  0.99823528898948788 0.0017647110105121653;
	setAttr -s 2 ".wl[370].w[0:1]"  0.99775806182286664 0.0022419381771333238;
	setAttr -s 2 ".wl[371].w[0:1]"  0.99731222779031881 0.0026877722096812014;
	setAttr -s 2 ".wl[372].w[0:1]"  0.99699372834983924 0.0030062716501607833;
	setAttr -s 2 ".wl[373].w[0:1]"  0.99687058751137092 0.003129412488629065;
	setAttr -s 2 ".wl[374].w[0:1]"  0.99695725351584286 0.0030427464841572358;
	setAttr -s 2 ".wl[375].w[0:1]"  0.99721684060436322 0.0027831593956368088;
	setAttr -s 2 ".wl[376].w[0:1]"  0.99758346256946329 0.002416537430536712;
	setAttr -s 2 ".wl[377].w[0:1]"  0.99798791068004855 0.0020120893199514376;
	setAttr -s 2 ".wl[378].w[0:1]"  0.99837500443766614 0.0016249955623338337;
	setAttr -s 2 ".wl[379].w[0:1]"  0.99871002193696401 0.0012899780630359807;
	setAttr -s 2 ".wl[380].w[0:1]"  0.99847250300160517 0.0015274969983947921;
	setAttr -s 2 ".wl[381].w[0:1]"  0.99850866578614939 0.0014913342138507056;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.1483404529302445 0 0.98893635286829729 0 0 1 0 0
		 -0.98893635286829729 0 -0.1483404529302445 0 -20.249098667829699 -120.97251597221995 -11.050625683423773 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 0 -2.4980018054066012e-016 0
		 0 1 0 0 2.4980018054066012e-016 0 0.99999999999999978 0 -36.826105553209601 -121.84841848762638 264.06400672686857 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 122.07691997560288 6.4178583114104413 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "FDDB77F6-401C-FCD2-1939-DC9B0C36D8E9";
createNode objectSet -n "skinCluster2Set";
	rename -uid "E9EDC2C8-48E1-8FC7-D0EE-6B8F2983ACCA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "2F00CA5D-4F26-C4A2-9C52-EEB1CC3EDBC1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "D0601077-4C13-5356-0287-A0B33A305C50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "7B892F15-4AFC-B14A-DFE5-C1B25C298A0C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId13";
	rename -uid "74CE2147-4E49-7471-A4DE-448ED7B83B3D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "B1BC3861-4941-30E7-E93A-AFA3710A2014";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "AF76EC37-4EAC-A8BA-DD37-CEBBE6039152";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.9246049924627773 120.97251597221997
		 -21.664324604475489 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.75774021040533557 0 0.65255633744135666 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 235.43059589100918 0.87590251540640907
		 64.539423193149176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.75774021040533568 0 -0.65255633744135655 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	rename -uid "8F4F0234-459B-CA03-93D8-479506C19ACA";
	setAttr -s 382 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.9988568229753072 0.0011431770246926923;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99907420731168406 0.00092579268831597511;
	setAttr -s 2 ".wl[2].w[0:1]"  0.99922029864487094 0.000779701355129109;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99930048111712155 0.00069951888287840818;
	setAttr -s 2 ".wl[4].w[0:1]"  0.9993172226994731 0.00068277730052694662;
	setAttr -s 2 ".wl[5].w[0:1]"  0.9992665515478607 0.00073344845213932223;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99913635379703525 0.00086364620296476959;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99890848476385263 0.0010915152361474182;
	setAttr -s 2 ".wl[8].w[0:1]"  0.99856820228615184 0.0014317977138482304;
	setAttr -s 2 ".wl[9].w[0:1]"  0.99812210185943939 0.0018778981405605895;
	setAttr -s 2 ".wl[10].w[0:1]"  0.99761645634763518 0.0023835436523648467;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99713833570784272 0.0028616642921573082;
	setAttr -s 2 ".wl[12].w[0:1]"  0.99678891355320631 0.003211086446793679;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99664230693641398 0.0033576930635860593;
	setAttr -s 2 ".wl[14].w[0:1]"  0.99671757221214197 0.0032824277878580723;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99697939908726763 0.0030206009127323945;
	setAttr -s 2 ".wl[16].w[0:1]"  0.9973603786453995 0.0026396213546004735;
	setAttr -s 2 ".wl[17].w[0:1]"  0.99778773267382437 0.0022122673261755791;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99820201658054886 0.0017979834194511775;
	setAttr -s 2 ".wl[19].w[0:1]"  0.99856463963084208 0.0014353603691579495;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99916774290484223 0.00083225709515782171;
	setAttr -s 2 ".wl[21].w[0:1]"  0.9994658666397247 0.00053413336027526796;
	setAttr -s 2 ".wl[22].w[0:1]"  0.99964409963236966 0.00035590036763034032;
	setAttr -s 2 ".wl[23].w[0:1]"  0.99973794629075297 0.00026205370924710283;
	setAttr -s 2 ".wl[24].w[0:1]"  0.99976960110376534 0.00023039889623464315;
	setAttr -s 2 ".wl[25].w[0:1]"  0.99974189884484999 0.00025810115515003784;
	setAttr -s 2 ".wl[26].w[0:1]"  0.99962761252935695 0.00037238747064305828;
	setAttr -s 2 ".wl[27].w[0:1]"  0.99935074314247507 0.00064925685752492679;
	setAttr -s 2 ".wl[28].w[0:1]"  0.99877795966354255 0.0012220403364575009;
	setAttr -s 2 ".wl[29].w[0:1]"  0.99778183347120497 0.002218166528795053;
	setAttr -s 2 ".wl[30].w[0:1]"  0.99640897651777227 0.0035910234822278371;
	setAttr -s 2 ".wl[31].w[0:1]"  0.99499464225739842 0.0050053577426016262;
	setAttr -s 2 ".wl[32].w[0:1]"  0.99400727666023547 0.0059927233397645977;
	setAttr -s 2 ".wl[33].w[0:1]"  0.99374119543411121 0.006258804565888846;
	setAttr -s 2 ".wl[34].w[0:1]"  0.99417643749775109 0.0058235625022490115;
	setAttr -s 2 ".wl[35].w[0:1]"  0.99507498264662098 0.0049250173533789826;
	setAttr -s 2 ".wl[36].w[0:1]"  0.99615127430878248 0.0038487256912175271;
	setAttr -s 2 ".wl[37].w[0:1]"  0.99718436657967147 0.0028156334203285381;
	setAttr -s 2 ".wl[38].w[0:1]"  0.99805046632622552 0.001949533673774482;
	setAttr -s 2 ".wl[39].w[0:1]"  0.99870796224154212 0.0012920377584579265;
	setAttr -s 2 ".wl[40].w[0:1]"  0.99937198033643859 0.0006280196635613961;
	setAttr -s 2 ".wl[41].w[0:1]"  0.99968506857639328 0.00031493142360679196;
	setAttr -s 2 ".wl[42].w[0:1]"  0.99984493258137874 0.00015506741862120901;
	setAttr -s 2 ".wl[43].w[0:1]"  0.99991755758982859 8.2442410171376933e-005;
	setAttr -s 2 ".wl[44].w[0:1]"  0.99994350031324319 5.6499686756793166e-005;
	setAttr -s 2 ".wl[45].w[0:1]"  0.99993827684587167 6.1723154128370052e-005;
	setAttr -s 2 ".wl[46].w[0:1]"  0.99988325066699213 0.00011674933300788261;
	setAttr -s 2 ".wl[47].w[0:1]"  0.99967430410072533 0.00032569589927465027;
	setAttr -s 2 ".wl[48].w[0:1]"  0.99899766294978842 0.0010023370502115806;
	setAttr -s 2 ".wl[49].w[0:1]"  0.997321603967813 0.0026783960321869506;
	setAttr -s 2 ".wl[50].w[0:1]"  0.99448444870401365 0.0055155512959863123;
	setAttr -s 2 ".wl[51].w[0:1]"  0.99140586659180874 0.0085941334081913543;
	setAttr -s 2 ".wl[52].w[0:1]"  0.98948902531967997 0.010510974680320053;
	setAttr -s 2 ".wl[53].w[0:1]"  0.98937526396116893 0.010624736038831054;
	setAttr -s 2 ".wl[54].w[0:1]"  0.99071328488801669 0.0092867151119834165;
	setAttr -s 2 ".wl[55].w[0:1]"  0.99274727881614788 0.0072527211838521542;
	setAttr -s 2 ".wl[56].w[0:1]"  0.99483111486172227 0.0051688851382777935;
	setAttr -s 2 ".wl[57].w[0:1]"  0.99659781999095165 0.0034021800090483847;
	setAttr -s 2 ".wl[58].w[0:1]"  0.99893249513232618 0.0010675048676737878;
	setAttr -s 2 ".wl[59].w[0:1]"  0.99943797023694636 0.00056202976305364633;
	setAttr -s 2 ".wl[60].w[0:1]"  0.99979376193055081 0.00020623806944917967;
	setAttr -s 2 ".wl[61].w[0:1]"  0.99999184368551353 8.1563144865685662e-006;
	setAttr -s 2 ".wl[62].w[0:1]"  0.99993516818500694 6.4831814993070429e-005;
	setAttr -s 2 ".wl[63].w[0:1]"  0.99997950370225497 2.0496297745095582e-005;
	setAttr -s 2 ".wl[64].w[0:1]"  0.99999181538116177 8.1846188382700768e-006;
	setAttr -s 2 ".wl[65].w[0:1]"  0.99999258186417972 7.4181358202999285e-006;
	setAttr -s 2 ".wl[66].w[0:1]"  0.99997866072463892 2.133927536104618e-005;
	setAttr -s 2 ".wl[67].w[0:1]"  0.99989209508687027 0.00010790491312980974;
	setAttr -s 2 ".wl[68].w[0:1]"  0.9990506095260171 0.00094939047398291481;
	setAttr -s 2 ".wl[69].w[0:1]"  0.99512718551869872 0.0048728144813013274;
	setAttr -s 2 ".wl[70].w[0:1]"  0.99146048427394495 0.0085395157260550955;
	setAttr -s 2 ".wl[71].w[0:1]"  0.98571077070726132 0.014289229292738695;
	setAttr -s 2 ".wl[72].w[0:1]"  0.98276672407869481 0.01723327592130517;
	setAttr -s 2 ".wl[73].w[0:1]"  0.98345853856495358 0.016541461435046385;
	setAttr -s 2 ".wl[74].w[0:1]"  0.98646395191368841 0.013536048086311613;
	setAttr -s 2 ".wl[75].w[0:1]"  0.99015436507645815 0.0098456349235418704;
	setAttr -s 2 ".wl[76].w[0:1]"  0.99349051381826092 0.0065094861817390796;
	setAttr -s 2 ".wl[77].w[0:1]"  0.99773963833048063 0.0022603616695193599;
	setAttr -s 2 ".wl[78].w[0:1]"  0.99879673704234251 0.0012032629576574614;
	setAttr -s 2 ".wl[79].w[0:1]"  0.99945279835865353 0.00054720164134649174;
	setAttr -s 2 ".wl[80].w[0:1]"  0.99983381276172045 0.00016618723827957092;
	setAttr -s 2 ".wl[81].w[0:1]"  0.9999983906404053 1.6093595946854538e-006;
	setAttr -s 2 ".wl[82].w[0:1]"  0.99999932932842539 6.7067157464147161e-007;
	setAttr -s 2 ".wl[83].w[0:1]"  0.99999639760653181 3.6023934682245112e-006;
	setAttr -s 2 ".wl[84].w[0:1]"  0.99999955367309146 4.4632690851435531e-007;
	setAttr -s 2 ".wl[85].w[0:1]"  0.9999997253227082 2.7467729179195494e-007;
	setAttr -s 2 ".wl[86].w[0:1]"  0.99999938038121383 6.1961878615489472e-007;
	setAttr -s 2 ".wl[87].w[0:1]"  0.99998091010296652 1.9089897033501678e-005;
	setAttr -s 2 ".wl[88].w[0:1]"  0.99907925272409681 0.00092074727590320206;
	setAttr -s 2 ".wl[89].w[0:1]"  0.98584082886123647 0.014159171138763598;
	setAttr -s 2 ".wl[90].w[0:1]"  0.97752447991544633 0.022475520084553668;
	setAttr -s 2 ".wl[91].w[0:1]"  0.97734010196342658 0.022659898036573447;
	setAttr -s 2 ".wl[92].w[0:1]"  0.96510606826774037 0.034893931732259735;
	setAttr -s 2 ".wl[93].w[0:1]"  0.9693563442953258 0.030643655704674234;
	setAttr -s 2 ".wl[94].w[0:1]"  0.98173506640274266 0.018264933597257324;
	setAttr -s 2 ".wl[95].w[0:1]"  0.98749631031910756 0.012503689680892469;
	setAttr -s 2 ".wl[96].w[0:1]"  0.99531090622880003 0.0046890937712000024;
	setAttr -s 2 ".wl[97].w[0:1]"  0.99730105537288127 0.0026989446271187718;
	setAttr -s 2 ".wl[98].w[0:1]"  0.9982884870761779 0.0017115129238221508;
	setAttr -s 2 ".wl[99].w[0:1]"  0.99946505444871969 0.0005349455512803792;
	setAttr -s 2 ".wl[100].w[0:1]"  0.99996755567513063 3.2444324869353793e-005;
	setAttr -s 2 ".wl[101].w[0:1]"  0.99999939284280515 6.0715719489156182e-007;
	setAttr -s 2 ".wl[102].w[0:1]"  0.99999998349560337 1.6504396601662525e-008;
	setAttr -s 2 ".wl[103].w[0:1]"  0.9999999750639551 2.49360448896863e-008;
	setAttr -s 2 ".wl[104].w[0:1]"  0.99999994104781154 5.8952188450190915e-008;
	setAttr -s 2 ".wl[105].w[0:1]"  0.99999950834487961 4.9165512037962971e-007;
	setAttr -s 2 ".wl[106].w[0:1]"  0.99999551696183675 4.4830381632717e-006;
	setAttr -s 2 ".wl[107].w[0:1]"  0.99999399049314319 6.0095068568095646e-006;
	setAttr -s 2 ".wl[108].w[0:1]"  0.99920903106744252 0.0007909689325574351;
	setAttr -s 2 ".wl[109].w[0:1]"  0.97581901546829852 0.024180984531701533;
	setAttr -s 2 ".wl[110].w[0:1]"  0.91137623857569583 0.08862376142430417;
	setAttr -s 2 ".wl[111].w[0:1]"  0.96625379510334397 0.033746204896655987;
	setAttr -s 2 ".wl[112].w[0:1]"  0.95194530198681815 0.048054698013181907;
	setAttr -s 2 ".wl[113].w[0:1]"  0.96008685181997655 0.039913148180023519;
	setAttr -s 2 ".wl[114].w[0:1]"  0.97695545251522864 0.023044547484771388;
	setAttr -s 2 ".wl[115].w[0:1]"  0.98498325731125946 0.015016742688740498;
	setAttr -s 2 ".wl[116].w[0:1]"  0.9943649974740113 0.0056350025259887379;
	setAttr -s 2 ".wl[117].w[0:1]"  0.99626682759993401 0.0037331724000660357;
	setAttr -s 2 ".wl[118].w[0:1]"  0.99793333517150051 0.0020666648284994901;
	setAttr -s 2 ".wl[119].w[0:1]"  0.99947486926322648 0.00052513073677355358;
	setAttr -s 2 ".wl[120].w[0:1]"  0.999971314094946 2.8685905053967213e-005;
	setAttr -s 2 ".wl[121].w[0:1]"  0.99999895406845918 1.0459315407931641e-006;
	setAttr -s 2 ".wl[122].w[0:1]"  0.99999982847016811 1.7152983188499426e-007;
	setAttr -s 2 ".wl[123].w[0:1]"  0.99999994263752667 5.7362473334839274e-008;
	setAttr -s 2 ".wl[124].w[0:1]"  0.9999992741568674 7.2584313267333431e-007;
	setAttr -s 2 ".wl[125].w[0:1]"  0.99999432485736295 5.6751426370198753e-006;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99995766011547826 4.2339884521783003e-005;
	setAttr -s 2 ".wl[127].w[0:1]"  0.98732876111700008 0.012671238882999933;
	setAttr -s 2 ".wl[128].w[0:1]"  0.99967198338404528 0.00032801661595470557;
	setAttr -s 2 ".wl[129].w[0:1]"  0.85369390584086735 0.14630609415913268;
	setAttr -s 2 ".wl[130].w[0:1]"  0.85373290390839285 0.14626709609160712;
	setAttr -s 2 ".wl[131].w[0:1]"  0.91824810306608462 0.081751896933915366;
	setAttr -s 2 ".wl[132].w[0:1]"  0.93849009284081708 0.061509907159183017;
	setAttr -s 2 ".wl[133].w[0:1]"  0.95127089208239335 0.048729107917606658;
	setAttr -s 2 ".wl[134].w[0:1]"  0.9726022940736353 0.027397705926364695;
	setAttr -s 2 ".wl[135].w[0:1]"  0.98280970927264344 0.017190290727356516;
	setAttr -s 2 ".wl[136].w[0:1]"  0.98985980210857749 0.010140197891422552;
	setAttr -s 2 ".wl[137].w[0:1]"  0.99559225778201133 0.0044077422179887261;
	setAttr -s 2 ".wl[138].w[0:1]"  0.99762673727007056 0.0023732627299295102;
	setAttr -s 2 ".wl[139].w[0:1]"  0.99948174194167971 0.0005182580583202712;
	setAttr -s 2 ".wl[140].w[0:1]"  0.99996795831716068 3.2041682839279553e-005;
	setAttr -s 2 ".wl[141].w[0:1]"  0.99999712175967281 2.8782403271455089e-006;
	setAttr -s 2 ".wl[142].w[0:1]"  0.99999901908362721 9.8091637287975351e-007;
	setAttr -s 2 ".wl[143].w[0:1]"  0.99999967511583698 3.248841631015864e-007;
	setAttr -s 2 ".wl[144].w[0:1]"  0.9999966670856153 3.3329143846867082e-006;
	setAttr -s 2 ".wl[145].w[0:1]"  0.99997922407291584 2.0775927084064939e-005;
	setAttr -s 2 ".wl[146].w[0:1]"  0.99890999207765696 0.0010900079223429356;
	setAttr -s 2 ".wl[147].w[0:1]"  0.96310388850984163 0.036896111490158416;
	setAttr -s 2 ".wl[148].w[0:1]"  0.99703996245533189 0.0029600375446681626;
	setAttr -s 2 ".wl[149].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[150].w[0:1]"  0.61276575908725395 0.38723424091274611;
	setAttr -s 2 ".wl[151].w[0:1]"  0.86600123860196621 0.13399876139803374;
	setAttr -s 2 ".wl[152].w[0:1]"  0.92678242540404621 0.073217574595953849;
	setAttr -s 2 ".wl[153].w[0:1]"  0.9440029487763244 0.055997051223675647;
	setAttr -s 2 ".wl[154].w[0:1]"  0.96912516407926463 0.030874835920735443;
	setAttr -s 2 ".wl[155].w[0:1]"  0.98113744003959269 0.018862559960407314;
	setAttr -s 2 ".wl[156].w[0:1]"  0.9890355268031269 0.010964473196873084;
	setAttr -s 2 ".wl[157].w[0:1]"  0.99506321551814236 0.004936784481857648;
	setAttr -s 2 ".wl[158].w[0:1]"  0.99739117152791668 0.0026088284720834241;
	setAttr -s 2 ".wl[159].w[0:1]"  0.99946890207622341 0.00053109792377655917;
	setAttr -s 2 ".wl[160].w[0:1]"  0.99996291830172646 3.7081698273593725e-005;
	setAttr -s 2 ".wl[161].w[0:1]"  0.99999472803579348 5.2719642065990425e-006;
	setAttr -s 2 ".wl[162].w[0:1]"  0.99999778460475475 2.2153952453204038e-006;
	setAttr -s 2 ".wl[163].w[0:1]"  0.99999923253292355 7.6746707643663125e-007;
	setAttr -s 2 ".wl[164].w[0:1]"  0.99999305954970752 6.9404502925402871e-006;
	setAttr -s 2 ".wl[165].w[0:1]"  0.99996031956544751 3.9680434552474462e-005;
	setAttr -s 2 ".wl[166].w[0:1]"  0.99811459533815017 0.0018854046618498003;
	setAttr -s 2 ".wl[167].w[0:1]"  0.93381878052699008 0.066181219473009895;
	setAttr -s 2 ".wl[168].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[169].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[170].w[0:1]"  0.56222556102933774 0.43777443897066226;
	setAttr -s 2 ".wl[171].w[0:1]"  0.84705495954557164 0.15294504045442833;
	setAttr -s 2 ".wl[172].w[0:1]"  0.91880933497055972 0.081190665029440223;
	setAttr -s 2 ".wl[173].w[0:1]"  0.93922377308103999 0.060776226918960057;
	setAttr -s 2 ".wl[174].w[0:1]"  0.96688469203170802 0.033115307968291999;
	setAttr -s 2 ".wl[175].w[0:1]"  0.98008573303052915 0.01991426696947091;
	setAttr -s 2 ".wl[176].w[0:1]"  0.98852081633021027 0.011479183669789774;
	setAttr -s 2 ".wl[177].w[0:1]"  0.99358723598378829 0.006412764016211759;
	setAttr -s 2 ".wl[178].w[0:1]"  0.99724316158612325 0.0027568384138768011;
	setAttr -s 2 ".wl[179].w[0:1]"  0.99944912119040408 0.00055087880959594159;
	setAttr -s 2 ".wl[180].w[0:1]"  0.9999606586123998 3.9341387600255163e-005;
	setAttr -s 2 ".wl[181].w[0:1]"  0.99999361085187743 6.3891481225509672e-006;
	setAttr -s 2 ".wl[182].w[0:1]"  0.99999717971652002 2.8202834800220391e-006;
	setAttr -s 2 ".wl[183].w[0:1]"  0.99999900915351991 9.9084648012161694e-007;
	setAttr -s 2 ".wl[184].w[0:1]"  0.99999134622407537 8.6537759246150463e-006;
	setAttr -s 2 ".wl[185].w[0:1]"  0.99995161415261324 4.8385847386789595e-005;
	setAttr -s 2 ".wl[186].w[0:1]"  0.99775707768234267 0.0022429223176573462;
	setAttr -s 2 ".wl[187].w[0:1]"  0.92054554945558431 0.079454450544415661;
	setAttr -s 2 ".wl[188].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[189].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[190].w[0:1]"  0.54772528100158424 0.4522747189984157;
	setAttr -s 2 ".wl[191].w[0:1]"  0.84025650784055839 0.15974349215944164;
	setAttr -s 2 ".wl[192].w[0:1]"  0.91598349094181564 0.084016509058184391;
	setAttr -s 2 ".wl[193].w[0:1]"  0.93755846820445754 0.062441531795542494;
	setAttr -s 2 ".wl[194].w[0:1]"  0.96611166925854597 0.033888330741454059;
	setAttr -s 2 ".wl[195].w[0:1]"  0.97972717041081447 0.020272829589185516;
	setAttr -s 2 ".wl[196].w[0:1]"  0.98834595006873827 0.011654049931261802;
	setAttr -s 2 ".wl[197].w[0:1]"  0.99345797313995876 0.0065420268600412858;
	setAttr -s 2 ".wl[198].w[0:1]"  0.99719266300364939 0.0028073369963506119;
	setAttr -s 2 ".wl[199].w[0:1]"  0.99944048476303238 0.00055951523696760072;
	setAttr -s 2 ".wl[200].w[0:1]"  0.99996293062448238 3.7069375517594728e-005;
	setAttr -s 2 ".wl[201].w[0:1]"  0.99999473263561456 5.2673643854240565e-006;
	setAttr -s 2 ".wl[202].w[0:1]"  0.99999778769704373 2.2123029561638917e-006;
	setAttr -s 2 ".wl[203].w[0:1]"  0.99999923551992431 7.644800756837975e-007;
	setAttr -s 2 ".wl[204].w[0:1]"  0.9999930722178112 6.9277821888485408e-006;
	setAttr -s 2 ".wl[205].w[0:1]"  0.99996036537361166 3.9634626388287133e-005;
	setAttr -s 2 ".wl[206].w[0:1]"  0.99972030789592026 0.0002796921040797741;
	setAttr -s 2 ".wl[207].w[0:1]"  0.93384596568893796 0.066154034311061982;
	setAttr -s 2 ".wl[208].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[209].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[210].w[0:1]"  0.56223158864340128 0.43776841135659877;
	setAttr -s 2 ".wl[211].w[0:1]"  0.84705931968149839 0.15294068031850158;
	setAttr -s 2 ".wl[212].w[0:1]"  0.91881112745215676 0.081188872547843266;
	setAttr -s 2 ".wl[213].w[0:1]"  0.93922486529924232 0.060775134700757627;
	setAttr -s 2 ".wl[214].w[0:1]"  0.96688532992641452 0.033114670073585477;
	setAttr -s 2 ".wl[215].w[0:1]"  0.98008611901106868 0.019913880988931355;
	setAttr -s 2 ".wl[216].w[0:1]"  0.98852105544019375 0.011478944559806225;
	setAttr -s 2 ".wl[217].w[0:1]"  0.99358740310395988 0.0064125968960401427;
	setAttr -s 2 ".wl[218].w[0:1]"  0.99724326560969301 0.0027567343903070552;
	setAttr -s 2 ".wl[219].w[0:1]"  0.9994491676346321 0.00055083236536790467;
	setAttr -s 2 ".wl[220].w[0:1]"  0.99996798139999443 3.2018600005572147e-005;
	setAttr -s 2 ".wl[221].w[0:1]"  0.99999712859073009 2.8714092698005577e-006;
	setAttr -s 2 ".wl[222].w[0:1]"  0.99999902320260892 9.767973911224713e-007;
	setAttr -s 2 ".wl[223].w[0:1]"  0.99999967900253084 3.2099746919047061e-007;
	setAttr -s 2 ".wl[224].w[0:1]"  0.99999668448333534 3.3155166646879514e-006;
	setAttr -s 2 ".wl[225].w[0:1]"  0.99997928881823139 2.0711181768654797e-005;
	setAttr -s 2 ".wl[226].w[0:1]"  0.99985341628130198 0.00014658371869796872;
	setAttr -s 2 ".wl[227].w[0:1]"  0.9631442762241007 0.036855723775899317;
	setAttr -s 2 ".wl[228].w[0:1]"  0.9974135875981367 0.0025864124018633509;
	setAttr -s 2 ".wl[229].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[230].w[0:1]"  0.61278573036374517 0.38721426963625483;
	setAttr -s 2 ".wl[231].w[0:1]"  0.86600954233468297 0.133990457665317;
	setAttr -s 2 ".wl[232].w[0:1]"  0.92678582082407535 0.073214179175924737;
	setAttr -s 2 ".wl[233].w[0:1]"  0.94400505025365156 0.055994949746348464;
	setAttr -s 2 ".wl[234].w[0:1]"  0.96912640152421969 0.030873598475780317;
	setAttr -s 2 ".wl[235].w[0:1]"  0.98113819785059664 0.018861802149403306;
	setAttr -s 2 ".wl[236].w[0:1]"  0.98903599718820923 0.01096400281179081;
	setAttr -s 2 ".wl[237].w[0:1]"  0.99506351511982483 0.0049364848801752024;
	setAttr -s 2 ".wl[238].w[0:1]"  0.99739137559698621 0.0026086244030137794;
	setAttr -s 2 ".wl[239].w[0:1]"  0.99946899405074607 0.0005310059492539919;
	setAttr -s 2 ".wl[240].w[0:1]"  0.99997134724923264 2.8652750767383184e-005;
	setAttr -s 2 ".wl[241].w[0:1]"  0.99999896029053914 1.0397094608064596e-006;
	setAttr -s 2 ".wl[242].w[0:1]"  0.99999983105201096 1.6894798900265481e-007;
	setAttr -s 2 ".wl[243].w[0:1]"  0.99999994507468337 5.4925316627154085e-008;
	setAttr -s 2 ".wl[244].w[0:1]"  0.99999928612279654 7.1387720347759556e-007;
	setAttr -s 2 ".wl[245].w[0:1]"  0.99999437357956933 5.6264204306261071e-006;
	setAttr -s 2 ".wl[246].w[0:1]"  0.99995795578852342 4.2044211476610542e-005;
	setAttr -s 2 ".wl[247].w[0:1]"  0.9873606600698599 0.012639339930140183;
	setAttr -s 2 ".wl[248].w[0:1]"  0.99968591729808842 0.0003140827019115897;
	setAttr -s 2 ".wl[249].w[0:1]"  0.85385264518520454 0.14614735481479546;
	setAttr -s 2 ".wl[250].w[0:1]"  0.85377119628258225 0.1462288037174177;
	setAttr -s 2 ".wl[251].w[0:1]"  0.91825964059940401 0.081740359400595985;
	setAttr -s 2 ".wl[252].w[0:1]"  0.93849471054253775 0.061505289457462302;
	setAttr -s 2 ".wl[253].w[0:1]"  0.95127383404870913 0.048726165951290902;
	setAttr -s 2 ".wl[254].w[0:1]"  0.97260405315223131 0.027395946847768724;
	setAttr -s 2 ".wl[255].w[0:1]"  0.98281080937094123 0.017189190629058857;
	setAttr -s 2 ".wl[256].w[0:1]"  0.98986048761051459 0.0101395123894854;
	setAttr -s 2 ".wl[257].w[0:1]"  0.99559268742203177 0.0044073125779683165;
	setAttr -s 2 ".wl[258].w[0:1]"  0.99762703317870538 0.0023729668212946757;
	setAttr -s 2 ".wl[259].w[0:1]"  0.99948188004975458 0.00051811995024537592;
	setAttr -s 2 ".wl[260].w[0:1]"  0.9999676034186844 3.2396581315553711e-005;
	setAttr -s 2 ".wl[261].w[0:1]"  0.99999939922037673 6.0077962334026342e-007;
	setAttr -s 2 ".wl[262].w[0:1]"  0.99999998455164041 1.544835958849175e-008;
	setAttr -s 2 ".wl[263].w[0:1]"  0.99999997718739242 2.2812607601510466e-008;
	setAttr -s 2 ".wl[264].w[0:1]"  0.99999994542699788 5.457300211206354e-008;
	setAttr -s 2 ".wl[265].w[0:1]"  0.99999952627449695 4.7372550309985797e-007;
	setAttr -s 2 ".wl[266].w[0:1]"  0.9999956304705292 4.3695294707745682e-006;
	setAttr -s 2 ".wl[267].w[0:1]"  0.99999436976020328 5.6302397967472676e-006;
	setAttr -s 2 ".wl[268].w[0:1]"  0.99922399267749495 0.00077600732250500805;
	setAttr -s 2 ".wl[269].w[0:1]"  0.97585625701446688 0.024143742985533102;
	setAttr -s 2 ".wl[270].w[0:1]"  0.9114137337155529 0.088586266284447004;
	setAttr -s 2 ".wl[271].w[0:1]"  0.96626079660617104 0.033739203393828965;
	setAttr -s 2 ".wl[272].w[0:1]"  0.95195060074430138 0.048049399255698733;
	setAttr -s 2 ".wl[273].w[0:1]"  0.96009038226298193 0.039909617737018059;
	setAttr -s 2 ".wl[274].w[0:1]"  0.97695761513700186 0.023042384862998151;
	setAttr -s 2 ".wl[275].w[0:1]"  0.98498465262915536 0.01501534737084468;
	setAttr -s 2 ".wl[276].w[0:1]"  0.99436569477525882 0.0056343052247411545;
	setAttr -s 2 ".wl[277].w[0:1]"  0.9962673629194474 0.0037326370805525876;
	setAttr -s 2 ".wl[278].w[0:1]"  0.99793371005850806 0.0020662899414919879;
	setAttr -s 2 ".wl[279].w[0:1]"  0.99947505789774049 0.00052494210225946135;
	setAttr -s 2 ".wl[280].w[0:1]"  0.9999598828434948 4.011715650522391e-005;
	setAttr -s 2 ".wl[281].w[0:1]"  0.99999840377004501 1.5962299550863323e-006;
	setAttr -s 2 ".wl[282].w[0:1]"  0.9999983612299308 1.6387700692367608e-006;
	setAttr -s 2 ".wl[283].w[0:1]"  0.99999643024633789 3.5697536621279468e-006;
	setAttr -s 2 ".wl[284].w[0:1]"  0.99999956841473769 4.3158526230290934e-007;
	setAttr -s 2 ".wl[285].w[0:1]"  0.99999974076773968 2.5923226037661125e-007;
	setAttr -s 2 ".wl[286].w[0:1]"  0.99999942522201191 5.7477798817224751e-007;
	setAttr -s 2 ".wl[287].w[0:1]"  0.99998127019231309 1.8729807686978107e-005;
	setAttr -s 2 ".wl[288].w[0:1]"  0.99908534924769787 0.00091465075230213186;
	setAttr -s 2 ".wl[289].w[0:1]"  0.98586416854772496 0.01413583145227513;
	setAttr -s 2 ".wl[290].w[0:1]"  0.97753690920523439 0.022463090794765616;
	setAttr -s 2 ".wl[291].w[0:1]"  0.97734644844081453 0.02265355155918556;
	setAttr -s 2 ".wl[292].w[0:1]"  0.97372701049250565 0.026272989507494338;
	setAttr -s 2 ".wl[293].w[0:1]"  0.96936014770925416 0.030639852290745843;
	setAttr -s 2 ".wl[294].w[0:1]"  0.98173747759886676 0.01826252240113321;
	setAttr -s 2 ".wl[295].w[0:1]"  0.98749793403665553 0.012502065963344446;
	setAttr -s 2 ".wl[296].w[0:1]"  0.99531171154931242 0.0046882884506875997;
	setAttr -s 2 ".wl[297].w[0:1]"  0.99730162415737145 0.0026983758426285054;
	setAttr -s 2 ".wl[298].w[0:1]"  0.99828892293259353 0.0017110770674064477;
	setAttr -s 2 ".wl[299].w[0:1]"  0.99946529761742697 0.00053470238257306922;
	setAttr -s 2 ".wl[300].w[0:1]"  0.99979395288826289 0.00020604711173721483;
	setAttr -s 2 ".wl[301].w[0:1]"  0.99999188304046283 8.1169595372589901e-006;
	setAttr -s 2 ".wl[302].w[0:1]"  0.99993530670253516 6.469329746480493e-005;
	setAttr -s 2 ".wl[303].w[0:1]"  0.9999795967536167 2.0403246383259404e-005;
	setAttr -s 2 ".wl[304].w[0:1]"  0.99999188832311081 8.1116768892026282e-006;
	setAttr -s 2 ".wl[305].w[0:1]"  0.99999267037952511 7.3296204749372111e-006;
	setAttr -s 2 ".wl[306].w[0:1]"  0.99997885348378468 2.1146516215385197e-005;
	setAttr -s 2 ".wl[307].w[0:1]"  0.99989288027929801 0.00010711972070205582;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99905336824168323 0.00094663175831677599;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99513348281191139 0.0048665171880886158;
	setAttr -s 2 ".wl[310].w[0:1]"  0.99146543329340975 0.0085345667065903578;
	setAttr -s 2 ".wl[311].w[0:1]"  0.98571593768344945 0.014284062316550543;
	setAttr -s 2 ".wl[312].w[0:1]"  0.98277114878943628 0.017228851210563667;
	setAttr -s 2 ".wl[313].w[0:1]"  0.98346193981871377 0.016538060181286146;
	setAttr -s 2 ".wl[314].w[0:1]"  0.98646643061205541 0.013533569387944677;
	setAttr -s 2 ".wl[315].w[0:1]"  0.99015612961857258 0.0098438703814274185;
	setAttr -s 2 ".wl[316].w[0:1]"  0.99349176039903564 0.0065082396009643979;
	setAttr -s 2 ".wl[317].w[0:1]"  0.9977402760177182 0.0022597239822818378;
	setAttr -s 2 ".wl[318].w[0:1]"  0.99879718696706865 0.0012028130329313721;
	setAttr -s 2 ".wl[319].w[0:1]"  0.99945310088876915 0.00054689911123087184;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99937240827948326 0.00062759172051675828;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99968539473922957 0.00031460526077045956;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99984518823107449 0.00015481176892550785;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99991777285128758 8.2227148712393661e-005;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99994371160223683 5.6288397763126432e-005;
	setAttr -s 2 ".wl[325].w[0:1]"  0.9999385426213766 6.1457378623400134e-005;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99988368910926739 0.00011631089073262721;
	setAttr -s 2 ".wl[327].w[0:1]"  0.99967515695731946 0.00032484304268052736;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99899930390543079 0.0010006960945692879;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99732430942519168 0.0026756905748082744;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99448803808018049 0.005511961919819528;
	setAttr -s 2 ".wl[331].w[0:1]"  0.99140974330199727 0.0085902566980026827;
	setAttr -s 2 ".wl[332].w[0:1]"  0.98949261016552659 0.010507389834473481;
	setAttr -s 2 ".wl[333].w[0:1]"  0.98937826005452734 0.010621739945472735;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99071564406164958 0.0092843559383504054;
	setAttr -s 2 ".wl[335].w[0:1]"  0.99274907793771028 0.0072509220622897826;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99483246661891267 0.0051675333810873034;
	setAttr -s 2 ".wl[337].w[0:1]"  0.9965988307431185 0.0034011692568815316;
	setAttr -s 2 ".wl[338].w[0:1]"  0.99893300289976517 0.0010669971002347403;
	setAttr -s 2 ".wl[339].w[0:1]"  0.9994383376900281 0.00056166230997197245;
	setAttr -s 2 ".wl[340].w[0:1]"  0.99916834583827829 0.0008316541617216759;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99946637676130867 0.00053362323869129112;
	setAttr -s 2 ".wl[342].w[0:1]"  0.99964455109722594 0.00035544890277401382;
	setAttr -s 2 ".wl[343].w[0:1]"  0.99973837563012635 0.00026162436987363418;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99977005411024944 0.00022994588975051636;
	setAttr -s 2 ".wl[345].w[0:1]"  0.9997424413396665 0.00025755866033348637;
	setAttr -s 2 ".wl[346].w[0:1]"  0.9996283442407512 0.00037165575924887431;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99935180320210248 0.00064819679789756255;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99877949505129882 0.0012205049487012019;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99778391297431179 0.0022160870256881602;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99641150625580732 0.0035884937441926575;
	setAttr -s 2 ".wl[351].w[0:1]"  0.99499738220642608 0.0050026177935738889;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99400995593644015 0.0059900440635598127;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99374361778636999 0.006256382213630075;
	setAttr -s 2 ".wl[354].w[0:1]"  0.9941785116770655 0.0058214883229344679;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99507669865233794 0.0049233013476620707;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99615266691674031 0.0038473330832596037;
	setAttr -s 2 ".wl[357].w[0:1]"  0.99718548756077019 0.0028145124392298763;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99805136884584256 0.0019486311541575103;
	setAttr -s 2 ".wl[359].w[0:1]"  0.99870869426335229 0.0012913057366478174;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99885767906743395 0.0011423209325661023;
	setAttr -s 2 ".wl[361].w[0:1]"  0.9990750015814569 0.0009249984185431575;
	setAttr -s 2 ".wl[362].w[0:1]"  0.99922106051378268 0.00077893948621732918;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99930124327947034 0.00069875672052973964;
	setAttr -s 2 ".wl[364].w[0:1]"  0.99931802267966097 0.00068197732033904311;
	setAttr -s 2 ".wl[365].w[0:1]"  0.99926743264201656 0.00073256735798343656;
	setAttr -s 2 ".wl[366].w[0:1]"  0.99913736356834182 0.00086263643165818897;
	setAttr -s 2 ".wl[367].w[0:1]"  0.99890966861669594 0.0010903313833041332;
	setAttr -s 2 ".wl[368].w[0:1]"  0.99856959090821329 0.001430409091786694;
	setAttr -s 2 ".wl[369].w[0:1]"  0.99812369600972572 0.0018763039902743074;
	setAttr -s 2 ".wl[370].w[0:1]"  0.99761821790714067 0.0023817820928592921;
	setAttr -s 2 ".wl[371].w[0:1]"  0.99714019318282487 0.0028598068171751265;
	setAttr -s 2 ".wl[372].w[0:1]"  0.99679078092999807 0.0032092190700019193;
	setAttr -s 2 ".wl[373].w[0:1]"  0.99664410558020067 0.0033558944197992846;
	setAttr -s 2 ".wl[374].w[0:1]"  0.99671924550514901 0.0032807544948509873;
	setAttr -s 2 ".wl[375].w[0:1]"  0.99698091652234788 0.0030190834776521363;
	setAttr -s 2 ".wl[376].w[0:1]"  0.99736173229661529 0.0026382677033847299;
	setAttr -s 2 ".wl[377].w[0:1]"  0.99778893063496443 0.0022110693650355946;
	setAttr -s 2 ".wl[378].w[0:1]"  0.99820307668499375 0.0017969233150062259;
	setAttr -s 2 ".wl[379].w[0:1]"  0.99856558490555569 0.001434415094444355;
	setAttr -s 2 ".wl[380].w[0:1]"  0.99837504003361532 0.0016249599663847238;
	setAttr -s 2 ".wl[381].w[0:1]"  0.99837626504441845 0.001623734955581596;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.12966525414066418 0 -0.99155782578155105 0 0 1 0 0
		 0.99155782578155105 0 -0.12966525414066418 0 -18.962757087374733 -122.10310023364262 9.5315764688297904 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 0 0 0 0 1 0 0 0 0 0.99999999999999978 0
		 -38.690718492612689 -122.10310023364242 -255.91212130805559 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 122.07691997560288 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "6913F593-49BE-07D1-384D-87821386EB1F";
createNode objectSet -n "skinCluster3Set";
	rename -uid "287B2220-4013-DDF6-4B76-E694F3DFB777";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "E618A578-4B02-6010-594D-6AA0D4811912";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "46A33554-4D01-5FE6-C4A6-BEB7385ADF94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "699AFF5E-4EA9-B8EB-0250-6092F32AB7E4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId15";
	rename -uid "04C9EBA4-4E47-4913-659E-8BA2EB4075EA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "4D9F2386-4016-7413-155D-769B6E8A7C50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "91892CB2-4972-7790-202C-5DA32613ACEE";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.9922985227613363 122.10310023364262
		 20.038584473572982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.75155347585539911 0 -0.65967217080127605 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 229.77206766175593 -1.9895196601282805e-013
		 -62.015418484716825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.75155347585539911 0 0.65967217080127605 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster4";
	rename -uid "CFEB1617-4708-38B8-61A5-A189F759A828";
	setAttr -s 735 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.99998220729672682 1.7792703273123105e-005;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99998626802747037 1.3731972529736077e-005;
	setAttr -s 2 ".wl[2].w[0:1]"  0.99999836509396711 1.6349060328464299e-006;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99999630815103002 3.6918489699550271e-006;
	setAttr -s 2 ".wl[4].w[0:1]"  0.99997427716660503 2.5722833394969861e-005;
	setAttr -s 2 ".wl[5].w[0:1]"  0.99999053628182266 9.4637181773496441e-006;
	setAttr -s 2 ".wl[6].w[0:1]"  0.99993314253064636 6.6857469353726349e-005;
	setAttr -s 2 ".wl[7].w[0:1]"  0.99998754612531893 1.2453874681029955e-005;
	setAttr -s 2 ".wl[8].w[0:1]"  0.99999895167275099 1.0483272489998222e-006;
	setAttr -s 2 ".wl[9].w[0:1]"  0.99999995310499357 4.6895006473975721e-008;
	setAttr -s 2 ".wl[10].w[0:1]"  0.99999950652744285 4.9347255713594349e-007;
	setAttr -s 2 ".wl[11].w[0:1]"  0.99996068233961122 3.931766038874269e-005;
	setAttr -s 2 ".wl[12].w[0:1]"  0.99997609306890178 2.3906931098250324e-005;
	setAttr -s 2 ".wl[13].w[0:1]"  0.99999669119890111 3.3088010988682477e-006;
	setAttr -s 2 ".wl[14].w[0:1]"  0.99998630965799407 1.3690342005952714e-005;
	setAttr -s 2 ".wl[15].w[0:1]"  0.99999876622362349 1.2337763765097116e-006;
	setAttr -s 2 ".wl[16].w[0:1]"  0.99999999503818016 4.9618198669842072e-009;
	setAttr ".wl[17].w[0]"  1;
	setAttr -s 2 ".wl[18].w[0:1]"  0.99999997586881872 2.4131181306091e-008;
	setAttr -s 2 ".wl[19].w[0:1]"  0.99993925965395125 6.0740346048828418e-005;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99994406509288702 5.5934907113053831e-005;
	setAttr -s 2 ".wl[21].w[0:1]"  0.99998487406899605 1.5125931003843659e-005;
	setAttr -s 2 ".wl[22].w[0:1]"  0.99999890507641997 1.0949235800965784e-006;
	setAttr -s 2 ".wl[23].w[0:1]"  0.9999818787466086 1.8121253391408138e-005;
	setAttr -s 2 ".wl[24].w[0:1]"  0.99999732700516963 2.6729948303674024e-006;
	setAttr -s 2 ".wl[25].w[0:1]"  0.99999992105346092 7.8946539078749905e-008;
	setAttr ".wl[26].w[0]"  1;
	setAttr -s 2 ".wl[27].w[0:1]"  0.99990834702955245 9.1652970447645647e-005;
	setAttr -s 2 ".wl[28].w[0:1]"  0.99988166515745391 0.00011833484254613526;
	setAttr -s 2 ".wl[29].w[0:1]"  0.99994781542721733 5.218457278267709e-005;
	setAttr -s 2 ".wl[30].w[0:1]"  0.99998997599046024 1.0024009539784513e-005;
	setAttr -s 2 ".wl[31].w[0:1]"  0.99999965469143759 3.453085623793375e-007;
	setAttr -s 2 ".wl[32].w[0:1]"  0.99997239111957847 2.7608880421542007e-005;
	setAttr -s 2 ".wl[33].w[0:1]"  0.99999999427574615 5.7242538924568535e-009;
	setAttr -s 2 ".wl[34].w[0:1]"  0.99999997815015984 2.1849840227387033e-008;
	setAttr -s 2 ".wl[35].w[0:1]"  0.9999993971502481 6.0284975191557445e-007;
	setAttr -s 2 ".wl[36].w[0:1]"  0.99999999593349354 4.066506411103079e-009;
	setAttr -s 2 ".wl[37].w[0:1]"  0.9998683153591823 0.00013168464081769477;
	setAttr -s 2 ".wl[38].w[0:1]"  0.99977610419470098 0.0002238958052990752;
	setAttr -s 2 ".wl[39].w[0:1]"  0.99985450730685821 0.00014549269314181204;
	setAttr -s 2 ".wl[40].w[0:1]"  0.99995070941332054 4.9290586679409654e-005;
	setAttr -s 2 ".wl[41].w[0:1]"  0.9999929936658809 7.006334119130825e-006;
	setAttr -s 2 ".wl[42].w[0:1]"  0.99999989205560114 1.0794439882234435e-007;
	setAttr -s 2 ".wl[43].w[0:1]"  0.99999169471567273 8.3052843273796329e-006;
	setAttr -s 2 ".wl[44].w[0:1]"  0.99999992022986051 7.9770139589838335e-008;
	setAttr -s 2 ".wl[45].w[0:1]"  0.99999931386853136 6.8613146868111507e-007;
	setAttr -s 2 ".wl[46].w[0:1]"  0.99999995461719626 4.5382803685603823e-008;
	setAttr -s 2 ".wl[47].w[0:1]"  0.99982338639598956 0.00017661360401041135;
	setAttr -s 2 ".wl[48].w[0:1]"  0.99962488350762546 0.00037511649237462663;
	setAttr -s 2 ".wl[49].w[0:1]"  0.99965930710108941 0.0003406928989105884;
	setAttr -s 2 ".wl[50].w[0:1]"  0.99982820898948832 0.0001717910105117291;
	setAttr -s 2 ".wl[51].w[0:1]"  0.99995289975278134 4.7100247218621794e-005;
	setAttr -s 2 ".wl[52].w[0:1]"  0.99999479885761622 5.2011423838742686e-006;
	setAttr -s 2 ".wl[53].w[0:1]"  0.99999999454570121 5.4542988220201159e-009;
	setAttr -s 2 ".wl[54].w[0:1]"  0.99995472786699557 4.5272133004396846e-005;
	setAttr -s 2 ".wl[55].w[0:1]"  0.99997208081446287 2.7919185537185128e-005;
	setAttr -s 2 ".wl[56].w[0:1]"  0.99999995988564205 4.0114357935502252e-008;
	setAttr -s 2 ".wl[57].w[0:1]"  0.99999683619569213 3.1638043078514411e-006;
	setAttr -s 2 ".wl[58].w[0:1]"  0.99999826898927568 1.7310107242812611e-006;
	setAttr -s 2 ".wl[59].w[0:1]"  0.9994513481367675 0.00054865186323254126;
	setAttr -s 2 ".wl[60].w[0:1]"  0.99931960038145695 0.00068039961854307488;
	setAttr -s 2 ".wl[61].w[0:1]"  0.99952494209429354 0.00047505790570642617;
	setAttr -s 2 ".wl[62].w[0:1]"  0.99980394603841649 0.00019605396158352788;
	setAttr -s 2 ".wl[63].w[0:1]"  0.99995171622064105 4.8283779358949852e-005;
	setAttr -s 2 ".wl[64].w[0:1]"  0.99999587267634837 4.1273236516666215e-006;
	setAttr -s 2 ".wl[65].w[0:1]"  0.99992539730583707 7.460269416293521e-005;
	setAttr -s 2 ".wl[66].w[0:1]"  0.9999985793968762 1.4206031237779678e-006;
	setAttr -s 2 ".wl[67].w[0:1]"  0.9999156539505204 8.4346049479628181e-005;
	setAttr -s 2 ".wl[68].w[0:1]"  0.99998471037780812 1.52896221919317e-005;
	setAttr -s 2 ".wl[69].w[0:1]"  0.99999999786845517 2.1315448614104985e-009;
	setAttr -s 2 ".wl[70].w[0:1]"  0.99999882942415097 1.1705758490376085e-006;
	setAttr -s 2 ".wl[71].w[0:1]"  0.9999996319711637 3.6802883638762166e-007;
	setAttr -s 2 ".wl[72].w[0:1]"  0.99999998331357809 1.6686421923908023e-008;
	setAttr -s 2 ".wl[73].w[0:1]"  0.99884615780506592 0.0011538421949341836;
	setAttr -s 2 ".wl[74].w[0:1]"  0.999782524989977 0.00021747501002306711;
	setAttr -s 2 ".wl[75].w[0:1]"  0.99890788960887911 0.0010921103911209289;
	setAttr -s 2 ".wl[76].w[0:1]"  0.99938307549374283 0.00061692450625719624;
	setAttr -s 2 ".wl[77].w[0:1]"  0.99978207814214592 0.00021792185785403048;
	setAttr -s 2 ".wl[78].w[0:1]"  0.99995290271779025 4.7097282209756974e-005;
	setAttr -s 2 ".wl[79].w[0:1]"  0.9999997389940678 2.6100593221023791e-007;
	setAttr -s 2 ".wl[80].w[0:1]"  0.99988321724394413 0.00011678275605581451;
	setAttr -s 2 ".wl[81].w[0:1]"  0.99979200148037017 0.00020799851962986879;
	setAttr -s 2 ".wl[82].w[0:1]"  0.99996831829578903 3.168170421100644e-005;
	setAttr -s 2 ".wl[83].w[0:1]"  0.99991021396844137 8.9786031558646535e-005;
	setAttr -s 2 ".wl[84].w[0:1]"  0.99999993841705692 6.1582943110204778e-008;
	setAttr -s 2 ".wl[85].w[0:1]"  0.99999880735229141 1.1926477086335697e-006;
	setAttr -s 2 ".wl[86].w[0:1]"  0.99999243380194924 7.5661980507945745e-006;
	setAttr -s 2 ".wl[87].w[0:1]"  0.99999448807013647 5.5119298635732348e-006;
	setAttr -s 2 ".wl[88].w[0:1]"  0.99999682941781975 3.1705821803255744e-006;
	setAttr -s 2 ".wl[89].w[0:1]"  0.9983757499113477 0.0016242500886523138;
	setAttr -s 2 ".wl[90].w[0:1]"  0.99789580778769449 0.002104192212305552;
	setAttr -s 2 ".wl[91].w[0:1]"  0.99975766287093271 0.00024233712906730041;
	setAttr -s 2 ".wl[92].w[0:1]"  0.9993136156852559 0.00068638431474410063;
	setAttr -s 2 ".wl[93].w[0:1]"  0.99841304638328254 0.0015869536167174415;
	setAttr -s 2 ".wl[94].w[0:1]"  0.99907794277977646 0.0009220572202235898;
	setAttr -s 2 ".wl[95].w[0:1]"  0.99976509828023497 0.00023490171976508486;
	setAttr -s 2 ".wl[96].w[0:1]"  0.99995361179573594 4.6388204264076347e-005;
	setAttr -s 2 ".wl[97].w[0:1]"  0.9998329875419727 0.00016701245802731699;
	setAttr -s 2 ".wl[98].w[0:1]"  0.99959817737965106 0.00040182262034895014;
	setAttr -s 2 ".wl[99].w[0:1]"  0.99977809850597865 0.0002219014940213217;
	setAttr -s 2 ".wl[100].w[0:1]"  0.99989920188164516 0.0001007981183549024;
	setAttr -s 2 ".wl[101].w[0:1]"  0.9999849377361083 1.5062263891662512e-005;
	setAttr -s 2 ".wl[102].w[0:1]"  0.99998874564118501 1.1254358814887774e-005;
	setAttr -s 2 ".wl[103].w[0:1]"  0.9999973049438915 2.6950561085042636e-006;
	setAttr -s 2 ".wl[104].w[0:1]"  0.99998726972393392 1.2730276066120598e-005;
	setAttr -s 2 ".wl[105].w[0:1]"  0.9999993326604989 6.6733950110333758e-007;
	setAttr -s 2 ".wl[106].w[0:1]"  0.99999974556747651 2.5443252355683245e-007;
	setAttr -s 2 ".wl[107].w[0:1]"  0.99999796823763476 2.0317623652634716e-006;
	setAttr -s 2 ".wl[108].w[0:1]"  0.99755055756171707 0.0024494424382829399;
	setAttr -s 2 ".wl[109].w[0:1]"  0.99743020235990132 0.002569797640098652;
	setAttr -s 2 ".wl[110].w[0:1]"  0.99727823309599084 0.0027217669040091427;
	setAttr -s 2 ".wl[111].w[0:1]"  0.9997585452211496 0.00024145477885041721;
	setAttr -s 2 ".wl[112].w[0:1]"  0.99928451383651862 0.00071548616348142522;
	setAttr -s 2 ".wl[113].w[0:1]"  0.99678158244469928 0.0032184175553007436;
	setAttr -s 2 ".wl[114].w[0:1]"  0.9975599063359738 0.0024400936640262324;
	setAttr -s 2 ".wl[115].w[0:1]"  0.99797246374335102 0.0020275362566490548;
	setAttr -s 2 ".wl[116].w[0:1]"  0.99804785876868396 0.0019521412313160801;
	setAttr -s 2 ".wl[117].w[0:1]"  0.99810385289099524 0.0018961471090047644;
	setAttr -s 2 ".wl[118].w[0:1]"  0.9989403892472799 0.0010596107527201185;
	setAttr -s 2 ".wl[119].w[0:1]"  0.99975232720525986 0.00024767279474019276;
	setAttr -s 2 ".wl[120].w[0:1]"  0.99995388221891501 4.6117781085011163e-005;
	setAttr -s 2 ".wl[121].w[0:1]"  0.99978661994598561 0.0002133800540145003;
	setAttr -s 2 ".wl[122].w[0:1]"  0.99939629532324525 0.00060370467675481337;
	setAttr -s 2 ".wl[123].w[0:1]"  0.99959234528218865 0.00040765471781129204;
	setAttr -s 2 ".wl[124].w[0:1]"  0.99976000716915125 0.00023999283084872477;
	setAttr -s 2 ".wl[125].w[0:1]"  0.99999998813000024 1.1869999789466324e-008;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99999999953258323 4.6741682135894817e-010;
	setAttr -s 2 ".wl[127].w[0:1]"  0.99999371850719521 6.2814928048023084e-006;
	setAttr -s 2 ".wl[128].w[0:1]"  0.99998647016273945 1.3529837260645087e-005;
	setAttr -s 2 ".wl[129].w[0:1]"  0.99999560136528254 4.3986347175448507e-006;
	setAttr -s 2 ".wl[130].w[0:1]"  0.99999947661181765 5.2338818232753171e-007;
	setAttr -s 2 ".wl[131].w[0:1]"  0.99999678985157603 3.2101484239239101e-006;
	setAttr -s 2 ".wl[132].w[0:1]"  0.99805595607132525 0.0019440439286747776;
	setAttr -s 2 ".wl[133].w[0:1]"  0.99830124285382971 0.0016987571461703518;
	setAttr -s 2 ".wl[134].w[0:1]"  0.99862330561416268 0.0013766943858373659;
	setAttr -s 2 ".wl[135].w[0:1]"  0.99879665137681772 0.0012033486231823166;
	setAttr -s 2 ".wl[136].w[0:1]"  0.99710372388819513 0.0028962761118049162;
	setAttr -s 2 ".wl[137].w[0:1]"  0.9968940642070554 0.0031059357929446611;
	setAttr -s 2 ".wl[138].w[0:1]"  0.99787150794328749 0.0021284920567125006;
	setAttr -s 2 ".wl[139].w[0:1]"  0.99783546850840421 0.0021645314915958204;
	setAttr -s 2 ".wl[140].w[0:1]"  0.99776893869211325 0.0022310613078867299;
	setAttr -s 2 ".wl[141].w[0:1]"  0.99796187595903163 0.0020381240409683568;
	setAttr -s 2 ".wl[142].w[0:1]"  0.99862770320475946 0.0013722967952404875;
	setAttr -s 2 ".wl[143].w[0:1]"  0.99883291621717063 0.0011670837828294152;
	setAttr -s 2 ".wl[144].w[0:1]"  0.99974414390881383 0.00025585609118613552;
	setAttr -s 2 ".wl[145].w[0:1]"  0.99995373420755007 4.6265792449890943e-005;
	setAttr -s 2 ".wl[146].w[0:1]"  0.99931059486551699 0.0006894051344830095;
	setAttr -s 2 ".wl[147].w[0:1]"  0.99956249154652133 0.00043750845347870931;
	setAttr -s 2 ".wl[148].w[0:1]"  0.99999993865728565 6.1342714366563279e-008;
	setAttr -s 2 ".wl[149].w[0:1]"  0.99999938543976563 6.1456023431878029e-007;
	setAttr -s 2 ".wl[150].w[0:1]"  0.99999728302114388 2.7169788561894164e-006;
	setAttr -s 2 ".wl[151].w[0:1]"  0.99997676410847569 2.3235891524393667e-005;
	setAttr -s 2 ".wl[152].w[0:1]"  0.99998307354754534 1.6926452454636759e-005;
	setAttr -s 2 ".wl[153].w[0:1]"  0.99999897602273058 1.0239772694243354e-006;
	setAttr -s 2 ".wl[154].w[0:1]"  0.99999969402747357 3.0597252647108112e-007;
	setAttr -s 2 ".wl[155].w[0:1]"  0.99999783231650086 2.167683499181719e-006;
	setAttr -s 2 ".wl[156].w[0:1]"  0.99925168930290065 0.00074831069709932658;
	setAttr -s 2 ".wl[157].w[0:1]"  0.99846823792688189 0.0015317620731181269;
	setAttr -s 2 ".wl[158].w[0:1]"  0.99866190489593964 0.0013380951040604066;
	setAttr -s 2 ".wl[159].w[0:1]"  0.99858179018102233 0.0014182098189777107;
	setAttr -s 2 ".wl[160].w[0:1]"  0.9985248846774194 0.0014751153225806804;
	setAttr -s 2 ".wl[161].w[0:1]"  0.99876393326413671 0.0012360667358632877;
	setAttr -s 2 ".wl[162].w[0:1]"  0.99974078195787974 0.00025921804212025501;
	setAttr -s 2 ".wl[163].w[0:1]"  0.99999868860792063 1.3113920793788844e-006;
	setAttr -s 2 ".wl[164].w[0:1]"  0.99998338578323398 1.6614216766006421e-005;
	setAttr -s 2 ".wl[165].w[0:1]"  0.99999504783957249 4.9521604274754238e-006;
	setAttr -s 2 ".wl[166].w[0:1]"  0.99999925099217979 7.4900782019036286e-007;
	setAttr -s 2 ".wl[167].w[0:1]"  0.99999994799178715 5.2008212899532539e-008;
	setAttr -s 2 ".wl[168].w[0:1]"  0.99999950733148235 4.9266851759876007e-007;
	setAttr -s 2 ".wl[169].w[0:1]"  0.99859145201793231 0.0014085479820677379;
	setAttr -s 2 ".wl[170].w[0:1]"  0.99864191328670304 0.0013580867132969214;
	setAttr -s 2 ".wl[171].w[0:1]"  0.99873878347656075 0.0012612165234392849;
	setAttr -s 2 ".wl[172].w[0:1]"  0.99974233658496547 0.00025766341503451483;
	setAttr -s 2 ".wl[173].w[0:1]"  0.99995317203103762 4.6827968962466718e-005;
	setAttr -s 2 ".wl[174].w[0:1]"  0.99999837766100974 1.6223389903225246e-006;
	setAttr -s 2 ".wl[175].w[0:1]"  0.99999283153483176 7.1684651682749392e-006;
	setAttr -s 2 ".wl[176].w[0:1]"  0.99999268816211595 7.3118378841054834e-006;
	setAttr -s 2 ".wl[177].w[0:1]"  0.99999096513651309 9.034863486894446e-006;
	setAttr -s 2 ".wl[178].w[0:1]"  0.99996872740834131 3.1272591658722193e-005;
	setAttr -s 2 ".wl[179].w[0:1]"  0.99997000095551403 2.9999044485972339e-005;
	setAttr -s 2 ".wl[180].w[0:1]"  0.99998130748100345 1.8692518996548547e-005;
	setAttr -s 2 ".wl[181].w[0:1]"  0.99999962866269942 3.7133730057927582e-007;
	setAttr -s 2 ".wl[182].w[0:1]"  0.99999536916064735 4.6308393526949941e-006;
	setAttr -s 2 ".wl[183].w[0:1]"  0.99999995143170795 4.8568292136975454e-008;
	setAttr -s 2 ".wl[184].w[0:1]"  0.99864334874640959 0.0013566512535905131;
	setAttr -s 2 ".wl[185].w[0:1]"  0.9986595647448423 0.0013404352551576874;
	setAttr -s 2 ".wl[186].w[0:1]"  0.99865690669944129 0.0013430933005586538;
	setAttr -s 2 ".wl[187].w[0:1]"  0.99875937425295847 0.0012406257470415304;
	setAttr -s 2 ".wl[188].w[0:1]"  0.99999218827878322 7.8117212168588211e-006;
	setAttr -s 2 ".wl[189].w[0:1]"  0.99999209708805537 7.9029119447070509e-006;
	setAttr -s 2 ".wl[190].w[0:1]"  0.99995218205676839 4.7817943231568778e-005;
	setAttr -s 2 ".wl[191].w[0:1]"  0.99999522463836465 4.7753616353823328e-006;
	setAttr -s 2 ".wl[192].w[0:1]"  0.99999642819719836 3.5718028016979371e-006;
	setAttr -s 2 ".wl[193].w[0:1]"  0.99999986449039391 1.3550960612725085e-007;
	setAttr -s 2 ".wl[194].w[0:1]"  0.99865834683460741 0.0013416531653925505;
	setAttr -s 2 ".wl[195].w[0:1]"  0.99863708127517692 0.0013629187248230552;
	setAttr -s 2 ".wl[196].w[0:1]"  0.99864018063876159 0.001359819361238451;
	setAttr -s 2 ".wl[197].w[0:1]"  0.99882409059584443 0.0011759094041556017;
	setAttr -s 2 ".wl[198].w[0:1]"  0.99974877220285085 0.00025122779714911774;
	setAttr -s 2 ".wl[199].w[0:1]"  0.99998508840615752 1.491159384254676e-005;
	setAttr -s 2 ".wl[200].w[0:1]"  0.99996537067248126 3.4629327518832838e-005;
	setAttr -s 2 ".wl[201].w[0:1]"  0.99995842399209878 4.1576007901251942e-005;
	setAttr -s 2 ".wl[202].w[0:1]"  0.99998200053355191 1.7999466448138064e-005;
	setAttr -s 2 ".wl[203].w[0:1]"  0.99998073571107793 1.9264288922080068e-005;
	setAttr -s 2 ".wl[204].w[0:1]"  0.99998257415411984 1.7425845880221546e-005;
	setAttr -s 2 ".wl[205].w[0:1]"  0.99995073460542405 4.9265394575986559e-005;
	setAttr -s 2 ".wl[206].w[0:1]"  0.99999971722317216 2.8277682782887211e-007;
	setAttr -s 2 ".wl[207].w[0:1]"  0.99999381923770059 6.1807622994477525e-006;
	setAttr -s 2 ".wl[208].w[0:1]"  0.99863115467523367 0.0013688453247663029;
	setAttr -s 2 ".wl[209].w[0:1]"  0.99857183634687097 0.0014281636531290557;
	setAttr -s 2 ".wl[210].w[0:1]"  0.99998052609606791 1.9473903932106302e-005;
	setAttr -s 2 ".wl[211].w[0:1]"  0.99975991518732843 0.00024008481267154567;
	setAttr -s 2 ".wl[212].w[0:1]"  0.99994878131646636 5.1218683533635925e-005;
	setAttr -s 2 ".wl[213].w[0:1]"  0.99999781063489168 2.1893651083548986e-006;
	setAttr -s 2 ".wl[214].w[0:1]"  0.99998639732806327 1.3602671936726542e-005;
	setAttr -s 2 ".wl[215].w[0:1]"  0.99999928962296347 7.1037703660154494e-007;
	setAttr -s 2 ".wl[216].w[0:1]"  0.99999156265398037 8.4373460196047543e-006;
	setAttr -s 2 ".wl[217].w[0:1]"  0.999999926477807 7.3522192988195127e-008;
	setAttr -s 2 ".wl[218].w[0:1]"  0.99854735379786319 0.0014526462021367541;
	setAttr -s 2 ".wl[219].w[0:1]"  0.99892786659519905 0.0010721334048009567;
	setAttr -s 2 ".wl[220].w[0:1]"  0.99996794920819432 3.2050791805660155e-005;
	setAttr -s 2 ".wl[221].w[0:1]"  0.99995350340130573 4.6496598694277656e-005;
	setAttr -s 2 ".wl[222].w[0:1]"  0.99997147297182321 2.852702817684427e-005;
	setAttr -s 2 ".wl[223].w[0:1]"  0.99996989388672364 3.0106113276333628e-005;
	setAttr -s 2 ".wl[224].w[0:1]"  0.99977544678877239 0.00022455321122763334;
	setAttr -s 2 ".wl[225].w[0:1]"  0.99994915336846391 5.0846631536141539e-005;
	setAttr -s 2 ".wl[226].w[0:1]"  0.99999141341830444 8.5865816955061829e-006;
	setAttr -s 2 ".wl[227].w[0:1]"  0.99999993027634648 6.9723653539131317e-008;
	setAttr -s 2 ".wl[228].w[0:1]"  0.99999816622799642 1.8337720036678672e-006;
	setAttr -s 2 ".wl[229].w[0:1]"  0.9999879142874738 1.2085712526283157e-005;
	setAttr -s 2 ".wl[230].w[0:1]"  0.99861261705024273 0.0013873829497571576;
	setAttr -s 2 ".wl[231].w[0:1]"  0.99851197949484283 0.0014880205051571512;
	setAttr -s 2 ".wl[232].w[0:1]"  0.99996960293716186 3.0397062838044803e-005;
	setAttr -s 2 ".wl[233].w[0:1]"  0.99906253809681267 0.00093746190318731964;
	setAttr -s 2 ".wl[234].w[0:1]"  0.99979586816681731 0.00020413183318265747;
	setAttr -s 2 ".wl[235].w[0:1]"  0.99994610254122507 5.3897458774993773e-005;
	setAttr -s 2 ".wl[236].w[0:1]"  0.9999990099989633 9.9000103678938515e-007;
	setAttr -s 2 ".wl[237].w[0:1]"  0.99997542009004192 2.4579909958071241e-005;
	setAttr -s 2 ".wl[238].w[0:1]"  0.99999969326337312 3.0673662696414854e-007;
	setAttr -s 2 ".wl[239].w[0:1]"  0.99999978063993411 2.1936006592359334e-007;
	setAttr -s 2 ".wl[240].w[0:1]"  0.99999524846827548 4.7515317244992527e-006;
	setAttr -s 2 ".wl[241].w[0:1]"  0.99998191729920316 1.8082700796873671e-005;
	setAttr -s 2 ".wl[242].w[0:1]"  0.99807914891257776 0.0019208510874222319;
	setAttr -s 2 ".wl[243].w[0:1]"  0.99995735021614252 4.2649783857531195e-005;
	setAttr -s 2 ".wl[244].w[0:1]"  0.99996572705359987 3.4272946400163465e-005;
	setAttr -s 2 ".wl[245].w[0:1]"  0.99996500500883378 3.4994991166272054e-005;
	setAttr -s 2 ".wl[246].w[0:1]"  0.99936747843756191 0.00063252156243811077;
	setAttr -s 2 ".wl[247].w[0:1]"  0.99981920150651493 0.00018079849348512893;
	setAttr -s 2 ".wl[248].w[0:1]"  0.9999422870744239 5.7712925576059046e-005;
	setAttr -s 2 ".wl[249].w[0:1]"  0.99998492787111726 1.5072128882803092e-005;
	setAttr -s 2 ".wl[250].w[0:1]"  0.99999593292205236 4.067077947685564e-006;
	setAttr -s 2 ".wl[251].w[0:1]"  0.9999998883936404 1.1160635964218465e-007;
	setAttr -s 2 ".wl[252].w[0:1]"  0.99999885843561009 1.1415643899278425e-006;
	setAttr -s 2 ".wl[253].w[0:1]"  0.99998781873839915 1.2181261600857022e-005;
	setAttr -s 2 ".wl[254].w[0:1]"  0.99997185497004415 2.8145029955804607e-005;
	setAttr -s 2 ".wl[255].w[0:1]"  0.99838520272576303 0.0016147972742369791;
	setAttr -s 2 ".wl[256].w[0:1]"  0.99794569153545454 0.0020543084645454606;
	setAttr -s 2 ".wl[257].w[0:1]"  0.99996531240350295 3.4687596497103679e-005;
	setAttr -s 2 ".wl[258].w[0:1]"  0.99950884310098753 0.00049115689901250894;
	setAttr -s 2 ".wl[259].w[0:1]"  0.99984493747323422 0.00015506252676579686;
	setAttr -s 2 ".wl[260].w[0:1]"  0.99993754606668217 6.2453933317857169e-005;
	setAttr -s 2 ".wl[261].w[0:1]"  0.99996818363110007 3.1816368899940145e-005;
	setAttr -s 2 ".wl[262].w[0:1]"  0.99999873860311161 1.2613968884559894e-006;
	setAttr -s 2 ".wl[263].w[0:1]"  0.99999964534967367 3.5465032640792194e-007;
	setAttr -s 2 ".wl[264].w[0:1]"  0.99999452559912183 5.4744008782076557e-006;
	setAttr -s 2 ".wl[265].w[0:1]"  0.99996933067324556 3.0669326754443145e-005;
	setAttr -s 2 ".wl[266].w[0:1]"  0.99995460398790892 4.5396012091075561e-005;
	setAttr -s 2 ".wl[267].w[0:1]"  0.99752291922387493 0.0024770807761251459;
	setAttr -s 2 ".wl[268].w[0:1]"  0.99780179521650647 0.0021982047834934763;
	setAttr -s 2 ".wl[269].w[0:1]"  0.99996832197715591 3.1678022844125345e-005;
	setAttr -s 2 ".wl[270].w[0:1]"  0.99993101379733262 6.8986202667389591e-005;
	setAttr -s 2 ".wl[271].w[0:1]"  0.99888114852785337 0.0011188514721466474;
	setAttr -s 2 ".wl[272].w[0:1]"  0.99964380369369743 0.00035619630630255795;
	setAttr -s 2 ".wl[273].w[0:1]"  0.99987194489010467 0.00012805510989537448;
	setAttr -s 2 ".wl[274].w[0:1]"  0.99993167689266227 6.832310733772183e-005;
	setAttr -s 2 ".wl[275].w[0:1]"  0.99999315909035968 6.8409096403327978e-006;
	setAttr -s 2 ".wl[276].w[0:1]"  0.99998137011185884 1.862988814117819e-005;
	setAttr -s 2 ".wl[277].w[0:1]"  0.99993660031643961 6.3399683560356438e-005;
	setAttr -s 2 ".wl[278].w[0:1]"  0.99999975295015331 2.4704984673109436e-007;
	setAttr -s 2 ".wl[279].w[0:1]"  0.99999708330191639 2.9166980836199369e-006;
	setAttr -s 2 ".wl[280].w[0:1]"  0.99997802988974505 2.197011025498148e-005;
	setAttr -s 2 ".wl[281].w[0:1]"  0.99992442760034528 7.5572399654727309e-005;
	setAttr -s 2 ".wl[282].w[0:1]"  0.99785462832202665 0.002145371677973316;
	setAttr -s 2 ".wl[283].w[0:1]"  0.99673599731147933 0.0032640026885207125;
	setAttr -s 2 ".wl[284].w[0:1]"  0.99929605296876278 0.00070394703123720023;
	setAttr -s 2 ".wl[285].w[0:1]"  0.99976219461061344 0.0002378053893866472;
	setAttr -s 2 ".wl[286].w[0:1]"  0.99989891347814763 0.00010108652185237686;
	setAttr -s 2 ".wl[287].w[0:1]"  0.99997926283576011 2.0737164239864115e-005;
	setAttr -s 2 ".wl[288].w[0:1]"  0.99997893412198335 2.1065878016686472e-005;
	setAttr -s 2 ".wl[289].w[0:1]"  0.9999781596112286 2.1840388771375194e-005;
	setAttr -s 2 ".wl[290].w[0:1]"  0.99999801318241743 1.986817582676996e-006;
	setAttr -s 2 ".wl[291].w[0:1]"  0.99999977846557186 2.2153442817999005e-007;
	setAttr -s 2 ".wl[292].w[0:1]"  0.99999783825313771 2.1617468623048318e-006;
	setAttr -s 2 ".wl[293].w[0:1]"  0.99998251556072748 1.7484439272577267e-005;
	setAttr -s 2 ".wl[294].w[0:1]"  0.99881289574747656 0.0011871042525234223;
	setAttr -s 2 ".wl[295].w[0:1]"  0.99722842258042266 0.0027715774195773558;
	setAttr -s 2 ".wl[296].w[0:1]"  0.99709621148956118 0.0029037885104387924;
	setAttr -s 2 ".wl[297].w[0:1]"  0.99960595762237658 0.00039404237762346781;
	setAttr -s 2 ".wl[298].w[0:1]"  0.99985677821161179 0.00014322178838818228;
	setAttr -s 2 ".wl[299].w[0:1]"  0.99999206333646795 7.9366635320463581e-006;
	setAttr -s 2 ".wl[300].w[0:1]"  0.99998324853660081 1.6751463399165445e-005;
	setAttr -s 2 ".wl[301].w[0:1]"  0.99998912421286168 1.0875787138297571e-005;
	setAttr -s 2 ".wl[302].w[0:1]"  0.99999966068734303 3.3931265697685635e-007;
	setAttr -s 2 ".wl[303].w[0:1]"  0.99999974422091509 2.5577908489767984e-007;
	setAttr -s 2 ".wl[304].w[0:1]"  0.99998388021842399 1.6119781576030332e-005;
	setAttr -s 2 ".wl[305].w[0:1]"  0.99833284224020702 0.0016671577597930302;
	setAttr -s 2 ".wl[306].w[0:1]"  0.99749959137575561 0.0025004086242443641;
	setAttr -s 2 ".wl[307].w[0:1]"  0.99942714979754099 0.00057285020245903388;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99980968282755811 0.00019031717244193789;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99999001772648421 9.9822735158043898e-006;
	setAttr -s 2 ".wl[310].w[0:1]"  0.99999785128308127 2.1487169187799031e-006;
	setAttr -s 2 ".wl[311].w[0:1]"  0.99999962960103028 3.7039896970620292e-007;
	setAttr -s 2 ".wl[312].w[0:1]"  0.99999750254975295 2.4974502470211202e-006;
	setAttr -s 2 ".wl[313].w[0:1]"  0.99998236822708719 1.7631772912818045e-005;
	setAttr -s 2 ".wl[314].w[0:1]"  0.9992849896385706 0.0007150103614293929;
	setAttr -s 2 ".wl[315].w[0:1]"  0.99825599579792712 0.001744004202072861;
	setAttr -s 2 ".wl[316].w[0:1]"  0.99976688834343219 0.0002331116565677877;
	setAttr -s 2 ".wl[317].w[0:1]"  0.99999592392508851 4.076074911451505e-006;
	setAttr -s 2 ".wl[318].w[0:1]"  0.99999028012598445 9.7198740155017012e-006;
	setAttr -s 2 ".wl[319].w[0:1]"  0.99999035373508238 9.6462649175990276e-006;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99999979286425356 2.0713574645718975e-007;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99999943641369926 5.6358630075399787e-007;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99999545191756267 4.5480824374245052e-006;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99997723937474192 2.2760625258119893e-005;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99925377283537342 0.00074622716462656208;
	setAttr -s 2 ".wl[325].w[0:1]"  0.99875674536944481 0.0012432546305551726;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99858159318843054 0.0014184068115695413;
	setAttr -s 2 ".wl[327].w[0:1]"  0.99974069436587898 0.00025930563412110414;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99999113134910012 8.8686508998931651e-006;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99999708374562668 2.9162543733235428e-006;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99999946762966352 5.3237033652681791e-007;
	setAttr -s 2 ".wl[331].w[0:1]"  0.99998836790543855 1.1632094561442833e-005;
	setAttr -s 2 ".wl[332].w[0:1]"  0.99996654788558226 3.3452114417735416e-005;
	setAttr -s 2 ".wl[333].w[0:1]"  0.99974118905442699 0.00025881094557303176;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99936693932263521 0.0006330606773647851;
	setAttr -s 2 ".wl[335].w[0:1]"  0.99927912260662144 0.0007208773933786494;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99921914746851825 0.00078085253148182747;
	setAttr -s 2 ".wl[337].w[0:1]"  0.99999766754475139 2.3324552486237453e-006;
	setAttr -s 2 ".wl[338].w[0:1]"  0.99999833920537051 1.6607946295244398e-006;
	setAttr -s 2 ".wl[339].w[0:1]"  0.99999946961686259 5.3038313743152629e-007;
	setAttr -s 2 ".wl[340].w[0:1]"  0.99999531002911557 4.689970884443934e-006;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99999967600252371 3.2399747636562182e-007;
	setAttr -s 2 ".wl[342].w[0:1]"  0.99999709305711015 2.9069428898505072e-006;
	setAttr -s 2 ".wl[343].w[0:1]"  0.99996585930537363 3.4140694626409799e-005;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99994711624591948 5.2883754080513562e-005;
	setAttr -s 2 ".wl[345].w[0:1]"  0.99976999834399682 0.00023000165600312923;
	setAttr -s 2 ".wl[346].w[0:1]"  0.99957369802950113 0.00042630197049883085;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99956767403408608 0.00043232596591391635;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99953701681641693 0.00046298318358302203;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99999222331342552 7.7766865744958694e-006;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99998001773092382 1.9982269076162321e-005;
	setAttr -s 2 ".wl[351].w[0:1]"  0.99990457873970662 9.5421260293417618e-005;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99991550230759374 8.449769240624161e-005;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99981812342130316 0.00018187657869679871;
	setAttr -s 2 ".wl[354].w[0:1]"  0.99977434799898479 0.00022565200101520153;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99975979156056671 0.00024020843943331976;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99974099184436549 0.0002590081556346031;
	setAttr -s 2 ".wl[357].w[0:1]"  0.99998473225749818 1.5267742501823542e-005;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99989864491796743 0.00010135508203255879;
	setAttr -s 2 ".wl[359].w[0:1]"  0.99996152534381988 3.8474656180130486e-005;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99987076165350064 0.00012923834649941336;
	setAttr -s 2 ".wl[361].w[0:1]"  0.99988694245541776 0.00011305754458222889;
	setAttr -s 2 ".wl[362].w[0:1]"  0.99997258642036313 2.7413579636848945e-005;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99998029294844715 1.9707051552946387e-005;
	setAttr -s 2 ".wl[364].w[0:1]"  0.98648314773345458 0.013516852266545389;
	setAttr -s 2 ".wl[365].w[0:1]"  0.98580344549240184 0.014196554507598234;
	setAttr -s 2 ".wl[366].w[0:1]"  0.98580054437059061 0.014199455629409337;
	setAttr -s 2 ".wl[367].w[0:1]"  0.98737029884441285 0.012629701155587172;
	setAttr -s 2 ".wl[368].w[0:1]"  0.98562282608951979 0.014377173910480224;
	setAttr -s 2 ".wl[369].w[0:1]"  0.98979272228320636 0.010207277716793653;
	setAttr -s 2 ".wl[370].w[0:1]"  0.98778906328351845 0.012210936716481626;
	setAttr -s 2 ".wl[371].w[0:1]"  0.97799103031794243 0.022008969682057667;
	setAttr -s 2 ".wl[372].w[0:1]"  0.97710878304382964 0.022891216956170444;
	setAttr -s 2 ".wl[373].w[0:1]"  0.98498009678615273 0.015019903213847297;
	setAttr -s 2 ".wl[374].w[0:1]"  0.98894088854597972 0.011059111454020372;
	setAttr -s 2 ".wl[375].w[0:1]"  0.98359053003421404 0.01640946996578603;
	setAttr -s 2 ".wl[376].w[0:1]"  0.96904315084461401 0.030956849155385987;
	setAttr -s 2 ".wl[377].w[0:1]"  0.97104213834753395 0.028957861652466114;
	setAttr -s 2 ".wl[378].w[0:1]"  0.98882523832962554 0.011174761670374464;
	setAttr -s 2 ".wl[379].w[0:1]"  0.98778514702255449 0.012214852977445621;
	setAttr -s 2 ".wl[380].w[0:1]"  0.96990978322592347 0.030090216774076563;
	setAttr -s 2 ".wl[381].w[0:1]"  0.96615967069553876 0.033840329304461216;
	setAttr -s 2 ".wl[382].w[0:1]"  0.98719138002114559 0.012808619978854392;
	setAttr -s 2 ".wl[383].w[0:1]"  0.9791008289370976 0.020899171062902382;
	setAttr -s 2 ".wl[384].w[0:1]"  0.95669296957380401 0.043307030426196005;
	setAttr -s 2 ".wl[385].w[0:1]"  0.95923499759105235 0.040765002408947662;
	setAttr -s 2 ".wl[386].w[0:1]"  0.98650038227402637 0.013499617725973686;
	setAttr -s 2 ".wl[387].w[0:1]"  0.96371885243286015 0.036281147567139807;
	setAttr -s 2 ".wl[388].w[0:1]"  0.95701183372628029 0.042988166273719722;
	setAttr -s 2 ".wl[389].w[0:1]"  0.95801457541617829 0.04198542458382179;
	setAttr -s 2 ".wl[390].w[0:1]"  0.98583973019104476 0.014160269808955255;
	setAttr -s 2 ".wl[391].w[0:1]"  0.975865870011286 0.024134129988713966;
	setAttr -s 2 ".wl[392].w[0:1]"  0.95329847172124516 0.046701528278754845;
	setAttr -s 2 ".wl[393].w[0:1]"  0.95404030016642039 0.045959699833579622;
	setAttr -s 2 ".wl[394].w[0:1]"  0.95428179769894916 0.045718202301050864;
	setAttr -s 2 ".wl[395].w[0:1]"  0.98577119370023936 0.014228806299760623;
	setAttr -s 2 ".wl[396].w[0:1]"  0.98548529117280981 0.014514708827190199;
	setAttr -s 2 ".wl[397].w[0:1]"  0.96137646230112095 0.03862353769887901;
	setAttr -s 2 ".wl[398].w[0:1]"  0.95663294063677851 0.04336705936322157;
	setAttr -s 2 ".wl[399].w[0:1]"  0.95695183370153969 0.043048166298460276;
	setAttr -s 2 ".wl[400].w[0:1]"  0.95666806961882855 0.043331930381171405;
	setAttr -s 2 ".wl[401].w[0:1]"  0.98498445834117443 0.015015541658825614;
	setAttr -s 2 ".wl[402].w[0:1]"  0.97467583332641761 0.0253241666735824;
	setAttr -s 2 ".wl[403].w[0:1]"  0.95916142453786868 0.040838575462131273;
	setAttr -s 2 ".wl[404].w[0:1]"  0.98495925296208475 0.015040747037915263;
	setAttr -s 2 ".wl[405].w[0:1]"  0.98487538357131565 0.015124616428684384;
	setAttr -s 2 ".wl[406].w[0:1]"  0.96367241213252608 0.036327587867473886;
	setAttr -s 2 ".wl[407].w[0:1]"  0.96509595715423224 0.034904042845767751;
	setAttr -s 2 ".wl[408].w[0:1]"  0.96421169726470268 0.035788302735297275;
	setAttr -s 2 ".wl[409].w[0:1]"  0.98468507975429831 0.015314920245701734;
	setAttr -s 2 ".wl[410].w[0:1]"  0.97583440413947153 0.024165595860528449;
	setAttr -s 2 ".wl[411].w[0:1]"  0.96982652100609346 0.030173478993906617;
	setAttr -s 2 ".wl[412].w[0:1]"  0.96605813767813975 0.033941862321860278;
	setAttr -s 2 ".wl[413].w[0:1]"  0.9847095195193396 0.015290480480660359;
	setAttr -s 2 ".wl[414].w[0:1]"  0.98478683023197722 0.015213169768022745;
	setAttr -s 2 ".wl[415].w[0:1]"  0.97383453847509283 0.026165461524907254;
	setAttr -s 2 ".wl[416].w[0:1]"  0.973066042664951 0.02693395733504898;
	setAttr -s 2 ".wl[417].w[0:1]"  0.98496203983135766 0.015037960168642348;
	setAttr -s 2 ".wl[418].w[0:1]"  0.97904305948403358 0.020956940515966496;
	setAttr -s 2 ".wl[419].w[0:1]"  0.97788756395615239 0.022112436043847702;
	setAttr -s 2 ".wl[420].w[0:1]"  0.97699478493897596 0.023005215061024046;
	setAttr -s 2 ".wl[421].w[0:1]"  0.98503687549904928 0.014963124500950791;
	setAttr -s 2 ".wl[422].w[0:1]"  0.98531736548979598 0.014682634510204039;
	setAttr -s 2 ".wl[423].w[0:1]"  0.98075217755023991 0.01924782244976015;
	setAttr -s 2 ".wl[424].w[0:1]"  0.98579618366151889 0.014203816338481114;
	setAttr -s 2 ".wl[425].w[0:1]"  0.9835156625786966 0.016484337421303352;
	setAttr -s 2 ".wl[426].w[0:1]"  0.98569833740782242 0.014301662592177569;
	setAttr -s 2 ".wl[427].w[0:1]"  0.98569509826460644 0.01430490173539355;
	setAttr -s 2 ".wl[428].w[0:1]"  0.98550011108839475 0.014499888911605223;
	setAttr -s 2 ".wl[429].w[0:1]"  0.98487400826724281 0.015125991732757237;
	setAttr -s 2 ".wl[430].w[0:1]"  0.98655061884740558 0.013449381152594383;
	setAttr -s 2 ".wl[431].w[0:1]"  0.98770667852107441 0.012293321478925621;
	setAttr -s 2 ".wl[432].w[0:1]"  0.986379079367388 0.013620920632611952;
	setAttr -s 2 ".wl[433].w[0:1]"  0.98712928397732735 0.012870716022672691;
	setAttr -s 2 ".wl[434].w[0:1]"  0.98728451452952715 0.012715485470472859;
	setAttr -s 2 ".wl[435].w[0:1]"  0.98856689864189817 0.011433101358101912;
	setAttr -s 2 ".wl[436].w[0:1]"  0.98575473305743755 0.014245266942562437;
	setAttr -s 2 ".wl[437].w[0:1]"  0.98886408289982386 0.011135917100176194;
	setAttr -s 2 ".wl[438].w[0:1]"  0.98971163094427106 0.010288369055728998;
	setAttr -s 2 ".wl[439].w[0:1]"  0.98591057329949661 0.014089426700503491;
	setAttr -s 2 ".wl[440].w[0:1]"  0.98903751251779659 0.010962487482203369;
	setAttr -s 2 ".wl[441].w[0:1]"  0.99969588704948931 0.00030411295051073413;
	setAttr -s 2 ".wl[442].w[0:1]"  0.99978308280995287 0.00021691719004709127;
	setAttr -s 2 ".wl[443].w[0:1]"  0.99975587812123068 0.00024412187876933782;
	setAttr -s 2 ".wl[444].w[0:1]"  0.99957880447926795 0.00042119552073212579;
	setAttr -s 2 ".wl[445].w[0:1]"  0.99956279228349287 0.00043720771650717591;
	setAttr -s 2 ".wl[446].w[0:1]"  0.99959921321656886 0.00040078678343113532;
	setAttr -s 2 ".wl[447].w[0:1]"  0.99987513258713789 0.00012486741286217381;
	setAttr -s 2 ".wl[448].w[0:1]"  0.99943324045478177 0.00056675954521830379;
	setAttr -s 2 ".wl[449].w[0:1]"  0.99927817903089233 0.00072182096910766334;
	setAttr -s 2 ".wl[450].w[0:1]"  0.99984320962378925 0.00015679037621072785;
	setAttr -s 2 ".wl[451].w[0:1]"  0.99994129715166569 5.8702848334355733e-005;
	setAttr -s 2 ".wl[452].w[0:1]"  0.99926774580702471 0.00073225419297539803;
	setAttr -s 2 ".wl[453].w[0:1]"  0.99889493339800817 0.0011050666019918147;
	setAttr -s 2 ".wl[454].w[0:1]"  0.99988077326966418 0.00011922673033583902;
	setAttr -s 2 ".wl[455].w[0:1]"  0.99997908302747196 2.0916972528092801e-005;
	setAttr -s 2 ".wl[456].w[0:1]"  0.99842913441251635 0.0015708655874836102;
	setAttr -s 2 ".wl[457].w[0:1]"  0.99989987092688326 0.00010012907311674464;
	setAttr -s 2 ".wl[458].w[0:1]"  0.9999736397509853 2.6360249014739399e-005;
	setAttr -s 2 ".wl[459].w[0:1]"  0.99765403184767432 0.0023459681523256559;
	setAttr -s 2 ".wl[460].w[0:1]"  0.99910064692773037 0.00089935307226958938;
	setAttr -s 2 ".wl[461].w[0:1]"  0.99990243618927876 9.756381072120687e-005;
	setAttr -s 2 ".wl[462].w[0:1]"  0.99999652558792862 3.4744120714190954e-006;
	setAttr -s 2 ".wl[463].w[0:1]"  0.99999999243697579 7.5630242199074207e-009;
	setAttr -s 2 ".wl[464].w[0:1]"  0.99684895883880109 0.0031510411611988943;
	setAttr -s 2 ".wl[465].w[0:1]"  0.99793843838995144 0.0020615616100485338;
	setAttr -s 2 ".wl[466].w[0:1]"  0.99657165206815612 0.0034283479318439301;
	setAttr -s 2 ".wl[467].w[0:1]"  0.99896068373559754 0.001039316264402432;
	setAttr -s 2 ".wl[468].w[0:1]"  0.99988651541436568 0.0001134845856342797;
	setAttr -s 2 ".wl[469].w[0:1]"  0.99998716482337568 1.2835176624408501e-005;
	setAttr -s 2 ".wl[470].w[0:1]"  0.99999970479815159 2.9520184844292351e-007;
	setAttr -s 2 ".wl[471].w[0:1]"  0.99999956581494409 4.3418505595583227e-007;
	setAttr -s 2 ".wl[472].w[0:1]"  0.99496884526474938 0.005031154735250681;
	setAttr -s 2 ".wl[473].w[0:1]"  0.99607795703813373 0.0039220429618662496;
	setAttr -s 2 ".wl[474].w[0:1]"  0.99542964143527402 0.0045703585647259379;
	setAttr -s 2 ".wl[475].w[0:1]"  0.99754008601757282 0.0024599139824271875;
	setAttr -s 2 ".wl[476].w[0:1]"  0.99888309159261179 0.001116908407388203;
	setAttr -s 2 ".wl[477].w[0:1]"  0.99984443780278243 0.000155562197217587;
	setAttr -s 2 ".wl[478].w[0:1]"  0.99998849363737985 1.1506362620213958e-005;
	setAttr -s 2 ".wl[479].w[0:1]"  0.99999116733168913 8.832668310838603e-006;
	setAttr -s 2 ".wl[480].w[0:1]"  0.99999988076646917 1.1923353084896189e-007;
	setAttr -s 2 ".wl[481].w[0:1]"  0.99120676248539563 0.0087932375146043962;
	setAttr -s 2 ".wl[482].w[0:1]"  0.99255533623516423 0.0074446637648357683;
	setAttr -s 2 ".wl[483].w[0:1]"  0.9988985504243012 0.0011014495756988788;
	setAttr -s 2 ".wl[484].w[0:1]"  0.99976236149673303 0.0002376385032670194;
	setAttr -s 2 ".wl[485].w[0:1]"  0.99997114213829752 2.8857861702481612e-005;
	setAttr -s 2 ".wl[486].w[0:1]"  0.99999992799500292 7.2004997122444612e-008;
	setAttr -s 2 ".wl[487].w[0:1]"  0.99996910544289141 3.0894557108533309e-005;
	setAttr -s 2 ".wl[488].w[0:1]"  0.99999723566722154 2.7643327785634917e-006;
	setAttr -s 2 ".wl[489].w[0:1]"  0.98909777083804495 0.010902229161955075;
	setAttr -s 2 ".wl[490].w[0:1]"  0.99539098072117316 0.0046090192788268503;
	setAttr -s 2 ".wl[491].w[0:1]"  0.98934244235182234 0.010657557648177645;
	setAttr -s 2 ".wl[492].w[0:1]"  0.99462511409129717 0.0053748859087028164;
	setAttr -s 2 ".wl[493].w[0:1]"  0.99007807930368896 0.0099219206963111119;
	setAttr -s 2 ".wl[494].w[0:1]"  0.99740496196132078 0.0025950380386793128;
	setAttr -s 2 ".wl[495].w[0:1]"  0.99901636190492271 0.0009836380950773529;
	setAttr -s 2 ".wl[496].w[0:1]"  0.99962552894801004 0.00037447105198992368;
	setAttr -s 2 ".wl[497].w[0:1]"  0.99989883875507757 0.00010116124492238279;
	setAttr -s 2 ".wl[498].w[0:1]"  0.99999914346226226 8.5653773777024334e-007;
	setAttr -s 2 ".wl[499].w[0:1]"  0.99999982503358686 1.749664131101524e-007;
	setAttr -s 2 ".wl[500].w[0:1]"  0.99999495232375346 5.0476762465938078e-006;
	setAttr -s 2 ".wl[501].w[0:1]"  0.9999254364799699 7.4563520030122341e-005;
	setAttr -s 2 ".wl[502].w[0:1]"  0.98354667080109559 0.016453329198904496;
	setAttr -s 2 ".wl[503].w[0:1]"  0.98539375965300702 0.014606240346993061;
	setAttr -s 2 ".wl[504].w[0:1]"  0.99482420147352102 0.0051757985264789729;
	setAttr -s 2 ".wl[505].w[0:1]"  0.98773872319369971 0.012261276806300304;
	setAttr -s 2 ".wl[506].w[0:1]"  0.99758914567382329 0.0024108543261767918;
	setAttr -s 2 ".wl[507].w[0:1]"  0.9947936782148038 0.0052063217851962282;
	setAttr -s 2 ".wl[508].w[0:1]"  0.98896345074763714 0.011036549252362847;
	setAttr -s 2 ".wl[509].w[0:1]"  0.99768342657612596 0.0023165734238741057;
	setAttr -s 2 ".wl[510].w[0:1]"  0.99921192493958344 0.00078807506041658943;
	setAttr -s 2 ".wl[511].w[0:1]"  0.99943278432628069 0.00056721567371929523;
	setAttr -s 2 ".wl[512].w[0:1]"  0.99965985928766621 0.00034014071233384274;
	setAttr -s 2 ".wl[513].w[0:1]"  0.99997915921604497 2.0840783955030518e-005;
	setAttr -s 2 ".wl[514].w[0:1]"  0.99998603189336466 1.3968106635239236e-005;
	setAttr -s 2 ".wl[515].w[0:1]"  0.99998038483898155 1.9615161018441867e-005;
	setAttr -s 2 ".wl[516].w[0:1]"  0.99989897082637735 0.00010102917362264306;
	setAttr -s 2 ".wl[517].w[0:1]"  0.97832084512592121 0.021679154874078874;
	setAttr -s 2 ".wl[518].w[0:1]"  0.97535650207442182 0.024643497925578177;
	setAttr -s 2 ".wl[519].w[0:1]"  0.99440233157418545 0.0055976684258145651;
	setAttr -s 2 ".wl[520].w[0:1]"  0.98650919452343588 0.013490805476564062;
	setAttr -s 2 ".wl[521].w[0:1]"  0.99633323297489218 0.0036667670251077735;
	setAttr -s 2 ".wl[522].w[0:1]"  0.99142124205320503 0.0085787579467949127;
	setAttr -s 2 ".wl[523].w[0:1]"  0.99835051860996871 0.0016494813900313212;
	setAttr -s 2 ".wl[524].w[0:1]"  0.99912029848583639 0.00087970151416357628;
	setAttr -s 2 ".wl[525].w[0:1]"  0.99970500129787965 0.00029499870212034666;
	setAttr -s 2 ".wl[526].w[0:1]"  0.99967962620758521 0.00032037379241469429;
	setAttr -s 2 ".wl[527].w[0:1]"  0.99966560249148839 0.00033439750851166648;
	setAttr -s 2 ".wl[528].w[0:1]"  0.9793813876059938 0.020618612394006246;
	setAttr -s 2 ".wl[529].w[0:1]"  0.96138479160316392 0.038615208396836125;
	setAttr -s 2 ".wl[530].w[0:1]"  0.96650129350373271 0.03349870649626728;
	setAttr -s 2 ".wl[531].w[0:1]"  0.99738064185272879 0.0026193581472712703;
	setAttr -s 2 ".wl[532].w[0:1]"  0.99414104594982056 0.0058589540501794773;
	setAttr -s 2 ".wl[533].w[0:1]"  0.98573488745325821 0.014265112546741843;
	setAttr -s 2 ".wl[534].w[0:1]"  0.99846331998521487 0.001536680014785029;
	setAttr -s 2 ".wl[535].w[0:1]"  0.99686298118896288 0.0031370188110371629;
	setAttr -s 2 ".wl[536].w[0:1]"  0.99976384958605002 0.00023615041394997805;
	setAttr -s 2 ".wl[537].w[0:1]"  0.99999806027575167 1.9397242483671461e-006;
	setAttr -s 2 ".wl[538].w[0:1]"  0.9995056968378998 0.00049430316210017321;
	setAttr -s 2 ".wl[539].w[0:1]"  0.99978735223880766 0.00021264776119237489;
	setAttr -s 2 ".wl[540].w[0:1]"  0.95165744042440603 0.048342559575593982;
	setAttr -s 2 ".wl[541].w[0:1]"  0.93887794014223902 0.061122059857760966;
	setAttr -s 2 ".wl[542].w[0:1]"  0.95847479109530875 0.041525208904691205;
	setAttr -s 2 ".wl[543].w[0:1]"  0.99722962872397392 0.0027703712760260941;
	setAttr -s 2 ".wl[544].w[0:1]"  0.9854641647987229 0.01453583520127719;
	setAttr -s 2 ".wl[545].w[0:1]"  0.99215886239602857 0.0078411376039714941;
	setAttr -s 2 ".wl[546].w[0:1]"  0.99991834528795998 8.1654712040030996e-005;
	setAttr -s 2 ".wl[547].w[0:1]"  0.99827155269319157 0.0017284473068083894;
	setAttr -s 2 ".wl[548].w[0:1]"  0.99914112089393603 0.00085887910606402258;
	setAttr -s 2 ".wl[549].w[0:1]"  0.97495410392443937 0.025045896075560587;
	setAttr -s 2 ".wl[550].w[0:1]"  0.89845079909351244 0.10154920090648752;
	setAttr -s 2 ".wl[551].w[0:1]"  0.91510450743423755 0.084895492565762398;
	setAttr -s 2 ".wl[552].w[0:1]"  0.99713721989989101 0.0028627801001089351;
	setAttr -s 2 ".wl[553].w[0:1]"  0.99404899323911133 0.0059510067608885718;
	setAttr -s 2 ".wl[554].w[0:1]"  0.99983589904231807 0.00016410095768196545;
	setAttr -s 2 ".wl[555].w[0:1]"  0.99695453404459766 0.0030454659554023317;
	setAttr -s 2 ".wl[556].w[0:1]"  0.99534330598885756 0.0046566940111423937;
	setAttr -s 2 ".wl[557].w[0:1]"  0.99966125214674295 0.00033874785325700116;
	setAttr -s 2 ".wl[558].w[0:1]"  0.97860119452175653 0.021398805478243448;
	setAttr -s 2 ".wl[559].w[0:1]"  0.99990002803674105 9.9971963258998223e-005;
	setAttr -s 2 ".wl[560].w[0:1]"  0.90256216745709339 0.097437832542906583;
	setAttr -s 2 ".wl[561].w[0:1]"  0.82528986246870351 0.17471013753129641;
	setAttr -s 2 ".wl[562].w[0:1]"  0.95285194473524149 0.047148055264758591;
	setAttr -s 2 ".wl[563].w[0:1]"  0.89681051159035508 0.10318948840964494;
	setAttr -s 2 ".wl[564].w[0:1]"  0.99850332138320252 0.0014966786167974879;
	setAttr -s 2 ".wl[565].w[0:1]"  0.9984781540696761 0.0015218459303238539;
	setAttr -s 2 ".wl[566].w[0:1]"  0.98571339518568302 0.014286604814316881;
	setAttr -s 2 ".wl[567].w[0:1]"  0.91203121372482399 0.087968786275176014;
	setAttr -s 2 ".wl[568].w[0:1]"  0.96359617136633491 0.036403828633665106;
	setAttr -s 2 ".wl[569].w[0:1]"  0.99844527660515492 0.0015547233948450976;
	setAttr -s 2 ".wl[570].w[0:1]"  0.99964773871682555 0.0003522612831744852;
	setAttr -s 2 ".wl[571].w[0:1]"  0.69327191417385026 0.3067280858261498;
	setAttr -s 2 ".wl[572].w[0:1]"  0.76237654563851009 0.23762345436148993;
	setAttr -s 2 ".wl[573].w[0:1]"  0.99710385969951953 0.0028961403004804822;
	setAttr -s 2 ".wl[574].w[0:1]"  0.9941290517145932 0.0058709482854068188;
	setAttr -s 2 ".wl[575].w[0:1]"  0.95623633299319155 0.043763667006808511;
	setAttr -s 2 ".wl[576].w[0:1]"  0.99956084734884854 0.00043915265115147486;
	setAttr -s 2 ".wl[577].w[0:1]"  0.95077194348638217 0.0492280565136178;
	setAttr -s 2 ".wl[578].w[0:1]"  0.99783419794778216 0.0021658020522178365;
	setAttr -s 2 ".wl[579].w[0:1]"  0.83574978177576942 0.16425021822423055;
	setAttr -s 2 ".wl[580].w[0:1]"  0.52449147898009418 0.47550852101990576;
	setAttr -s 2 ".wl[581].w[0:1]"  0.88990692112136671 0.11009307887863333;
	setAttr -s 2 ".wl[582].w[0:1]"  0.95081063152092238 0.049189368479077594;
	setAttr -s 2 ".wl[583].w[0:1]"  0.7383815173696745 0.26161848263032544;
	setAttr -s 2 ".wl[584].w[0:1]"  0.99846811866183161 0.0015318813381683812;
	setAttr -s 2 ".wl[585].w[0:1]"  0.99437879629571801 0.0056212037042820363;
	setAttr -s 2 ".wl[586].w[0:1]"  0.98646735865067692 0.013532641349323079;
	setAttr -s 2 ".wl[587].w[0:1]"  0.77108090929485174 0.22891909070514826;
	setAttr -s 2 ".wl[588].w[0:1]"  0.83258221013542077 0.16741778986457928;
	setAttr -s 2 ".wl[589].w[0:1]"  0.99160149260223829 0.0083985073977617154;
	setAttr -s 2 ".wl[590].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[591].w[0:1]"  0.5013367621995366 0.49866323780046334;
	setAttr -s 2 ".wl[592].w[0:1]"  0.99712970482565622 0.002870295174343832;
	setAttr -s 2 ".wl[593].w[0:1]"  0.9947900568360607 0.0052099431639393672;
	setAttr -s 2 ".wl[594].w[0:1]"  0.98767885131043653 0.012321148689563412;
	setAttr -s 2 ".wl[595].w[0:1]"  0.59069805154979282 0.40930194845020718;
	setAttr -s 2 ".wl[596].w[0:1]"  0.99952093456527924 0.0004790654347207952;
	setAttr -s 2 ".wl[597].w[0:1]"  0.76897248166505117 0.23102751833494886;
	setAttr -s 2 ".wl[598].w[0:1]"  0.94569834015691345 0.054301659843086568;
	setAttr -s 2 ".wl[599].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[600].w[0:1]"  0.76212862100367162 0.2378713789963284;
	setAttr -s 2 ".wl[601].w[0:1]"  0.89668090735429795 0.1033190926457021;
	setAttr -s 2 ".wl[602].w[0:1]"  0.95278724599904563 0.047212754000954336;
	setAttr -s 2 ".wl[603].w[0:1]"  0.52428880410523648 0.47571119589476363;
	setAttr -s 2 ".wl[604].w[0:1]"  0.99847303022605483 0.0015269697739451809;
	setAttr -s 2 ".wl[605].w[0:1]"  0.99721475697475637 0.0027852430252436325;
	setAttr -s 2 ".wl[606].w[0:1]"  0.99534768493670667 0.0046523150632934111;
	setAttr -s 2 ".wl[607].w[0:1]"  0.9892680043362545 0.010731995663745504;
	setAttr -s 2 ".wl[608].w[0:1]"  0.99955555893479331 0.00044444106520671607;
	setAttr -s 2 ".wl[609].w[0:1]"  0.99577964769399352 0.004220352306006498;
	setAttr -s 2 ".wl[610].w[0:1]"  0.54591345339910813 0.45408654660089182;
	setAttr -s 2 ".wl[611].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[612].w[0:1]"  0.99849308783325696 0.0015069121667431035;
	setAttr -s 2 ".wl[613].w[0:1]"  0.99735874749307829 0.0026412525069217721;
	setAttr -s 2 ".wl[614].w[0:1]"  0.99602755883204008 0.0039724411679599933;
	setAttr -s 2 ".wl[615].w[0:1]"  0.99112235043148089 0.0088776495685190665;
	setAttr -s 2 ".wl[616].w[0:1]"  0.74596426129613413 0.25403573870386587;
	setAttr -s 2 ".wl[617].w[0:1]"  0.95067298721849391 0.049327012781506134;
	setAttr -s 2 ".wl[618].w[0:1]"  0.59040261342824951 0.40959738657175054;
	setAttr -s 2 ".wl[619].w[0:1]"  0.69228893959333593 0.30771106040666418;
	setAttr -s 2 ".wl[620].w[0:1]"  0.83303738290837082 0.16696261709162918;
	setAttr -s 2 ".wl[621].w[0:1]"  0.91486770909850568 0.085132290901494337;
	setAttr -s 2 ".wl[622].w[0:1]"  0.82481284722593551 0.17518715277406444;
	setAttr -s 2 ".wl[623].w[0:1]"  0.95835399601589077 0.041646003984109128;
	setAttr -s 2 ".wl[624].w[0:1]"  0.99756077450724856 0.0024392254927514856;
	setAttr -s 2 ".wl[625].w[0:1]"  0.9889832692311501 0.011016730768849931;
	setAttr -s 2 ".wl[626].w[0:1]"  0.99679416192334025 0.003205838076659849;
	setAttr -s 2 ".wl[627].w[0:1]"  0.99489094508480369 0.005109054915196312;
	setAttr -s 2 ".wl[628].w[0:1]"  0.99965200449334679 0.00034799550665318195;
	setAttr -s 2 ".wl[629].w[0:1]"  0.9634256568345867 0.036574343165413289;
	setAttr -s 2 ".wl[630].w[0:1]"  0.99841822385010537 0.0015817761498946857;
	setAttr -s 2 ".wl[631].w[0:1]"  0.76876866373468333 0.23123133626531675;
	setAttr -s 2 ".wl[632].w[0:1]"  0.77015461516495853 0.22984538483504149;
	setAttr -s 2 ".wl[633].w[0:1]"  0.99948389980726193 0.00051610019273815879;
	setAttr -s 2 ".wl[634].w[0:1]"  0.8978690337641857 0.10213096623581425;
	setAttr -s 2 ".wl[635].w[0:1]"  0.99244476321083941 0.0075552367891606837;
	setAttr -s 2 ".wl[636].w[0:1]"  0.98528583561728045 0.014714164382719597;
	setAttr -s 2 ".wl[637].w[0:1]"  0.99649725340594542 0.0035027465940546099;
	setAttr -s 2 ".wl[638].w[0:1]"  0.97840797839915172 0.021592021600848305;
	setAttr -s 2 ".wl[639].w[0:1]"  0.99911177903627579 0.00088822096372417469;
	setAttr -s 2 ".wl[640].w[0:1]"  0.83217632172617262 0.16782367827382733;
	setAttr -s 2 ".wl[641].w[0:1]"  0.95542246882185511 0.044577531178144843;
	setAttr -s 2 ".wl[642].w[0:1]"  0.90141923015812719 0.098580769841872834;
	setAttr -s 2 ".wl[643].w[0:1]"  0.93857864073511355 0.061421359264886531;
	setAttr -s 2 ".wl[644].w[0:1]"  0.96634061727229215 0.033659382727707764;
	setAttr -s 2 ".wl[645].w[0:1]"  0.98337082546500365 0.016629174534996374;
	setAttr -s 2 ".wl[646].w[0:1]"  0.98992362120783939 0.01007637879216066;
	setAttr -s 2 ".wl[647].w[0:1]"  0.99533226636755678 0.0046677336324431676;
	setAttr -s 2 ".wl[648].w[0:1]"  0.97517721856073847 0.024822781439261525;
	setAttr -s 2 ".wl[649].w[0:1]"  0.9975982258499001 0.002401774150099878;
	setAttr -s 2 ".wl[650].w[0:1]"  0.99977645574111085 0.00022354425888917832;
	setAttr -s 2 ".wl[651].w[0:1]"  0.9981975232036262 0.0018024767963738168;
	setAttr -s 2 ".wl[652].w[0:1]"  0.99964210899641293 0.00035789100358709486;
	setAttr -s 2 ".wl[653].w[0:1]"  0.91152550963113532 0.088474490368864719;
	setAttr -s 2 ".wl[654].w[0:1]"  0.99983651743506141 0.00016348256493862144;
	setAttr -s 2 ".wl[655].w[0:1]"  0.99672174782254097 0.0032782521774590723;
	setAttr -s 2 ".wl[656].w[0:1]"  0.97432499348052815 0.025675006519471914;
	setAttr -s 2 ".wl[657].w[0:1]"  0.95114726069348599 0.048852739306514008;
	setAttr -s 2 ".wl[658].w[0:1]"  0.97805513693051704 0.021944863069483046;
	setAttr -s 2 ".wl[659].w[0:1]"  0.98875958896607408 0.011240411033926026;
	setAttr -s 2 ".wl[660].w[0:1]"  0.99450250421638497 0.0054974957836150589;
	setAttr -s 2 ".wl[661].w[0:1]"  0.99746241076698883 0.0025375892330111766;
	setAttr -s 2 ".wl[662].w[0:1]"  0.99837632838857215 0.0016236716114278926;
	setAttr -s 2 ".wl[663].w[0:1]"  0.99787342273542645 0.0021265772645735906;
	setAttr -s 2 ".wl[664].w[0:1]"  0.99988905961238883 0.00011094038761119644;
	setAttr -s 2 ".wl[665].w[0:1]"  0.99991209833057482 8.7901669425216239e-005;
	setAttr -s 2 ".wl[666].w[0:1]"  0.99516265860481845 0.0048373413951815205;
	setAttr -s 2 ".wl[667].w[0:1]"  0.99977721981772372 0.00022278018227632772;
	setAttr -s 2 ".wl[668].w[0:1]"  0.99988182150635119 0.00011817849364885429;
	setAttr -s 2 ".wl[669].w[0:1]"  0.99184165416534964 0.008158345834650374;
	setAttr -s 2 ".wl[670].w[0:1]"  0.96107913802412703 0.038920861975872988;
	setAttr -s 2 ".wl[671].w[0:1]"  0.99119152584479553 0.0088084741552045577;
	setAttr -s 2 ".wl[672].w[0:1]"  0.99465127364144457 0.005348726358555469;
	setAttr -s 2 ".wl[673].w[0:1]"  0.99731661640863878 0.0026833835913612734;
	setAttr -s 2 ".wl[674].w[0:1]"  0.9988528666554104 0.0011471333445896394;
	setAttr -s 2 ".wl[675].w[0:1]"  0.99905519155098599 0.00094480844901402442;
	setAttr -s 2 ".wl[676].w[0:1]"  0.99890984350695777 0.0010901564930422152;
	setAttr -s 2 ".wl[677].w[0:1]"  0.99999578745930551 4.2125406945081871e-006;
	setAttr -s 2 ".wl[678].w[0:1]"  0.99996226884497741 3.7731155022624425e-005;
	setAttr -s 2 ".wl[679].w[0:1]"  0.99964345319504866 0.00035654680495132978;
	setAttr -s 2 ".wl[680].w[0:1]"  0.9994437721253091 0.00055622787469086527;
	setAttr -s 2 ".wl[681].w[0:1]"  0.99970917847824747 0.00029082152175252923;
	setAttr -s 2 ".wl[682].w[0:1]"  0.99999124256475169 8.7574352483505812e-006;
	setAttr -s 2 ".wl[683].w[0:1]"  0.9790204681528405 0.020979531847159481;
	setAttr -s 2 ".wl[684].w[0:1]"  0.99668931817761242 0.0033106818223876343;
	setAttr -s 2 ".wl[685].w[0:1]"  0.99619224670111151 0.0038077532988885117;
	setAttr -s 2 ".wl[686].w[0:1]"  0.9975906025344401 0.0024093974655599072;
	setAttr -s 2 ".wl[687].w[0:1]"  0.9992451536076955 0.0007548463923044734;
	setAttr -s 2 ".wl[688].w[0:1]"  0.99922790152014263 0.00077209847985742661;
	setAttr -s 2 ".wl[689].w[0:1]"  0.99884077176691333 0.001159228233086642;
	setAttr -s 2 ".wl[690].w[0:1]"  0.99882782599248066 0.0011721740075194193;
	setAttr -s 2 ".wl[691].w[0:1]"  0.99956513470570219 0.00043486529429781945;
	setAttr -s 2 ".wl[692].w[0:1]"  0.9999986959855256 1.3040144744618559e-006;
	setAttr -s 2 ".wl[693].w[0:1]"  0.99999059916813515 9.4008318648875087e-006;
	setAttr -s 2 ".wl[694].w[0:1]"  0.9999989653547956 1.0346452043851553e-006;
	setAttr -s 2 ".wl[695].w[0:1]"  0.99997469677519868 2.5303224801353806e-005;
	setAttr -s 2 ".wl[696].w[0:1]"  0.9996555096124623 0.00034449038753776195;
	setAttr -s 2 ".wl[697].w[0:1]"  0.99996521913420822 3.4780865791773143e-005;
	setAttr -s 2 ".wl[698].w[0:1]"  0.99835879282356155 0.0016412071764384949;
	setAttr -s 2 ".wl[699].w[0:1]"  0.99826410005969946 0.0017358999403006051;
	setAttr -s 2 ".wl[700].w[0:1]"  0.99895892878545456 0.0010410712145454476;
	setAttr -s 2 ".wl[701].w[0:1]"  0.9995372260574078 0.00046277394259220935;
	setAttr -s 2 ".wl[702].w[0:1]"  0.99939875685882529 0.00060124314117475754;
	setAttr -s 2 ".wl[703].w[0:1]"  0.99999956534947809 4.3465052194852055e-007;
	setAttr -s 2 ".wl[704].w[0:1]"  0.99999834318870651 1.6568112935704709e-006;
	setAttr -s 2 ".wl[705].w[0:1]"  0.9999702463218193 2.9753678180665557e-005;
	setAttr -s 2 ".wl[706].w[0:1]"  0.99999553098562399 4.4690143760082903e-006;
	setAttr -s 2 ".wl[707].w[0:1]"  0.99961577898415388 0.00038422101584610141;
	setAttr -s 2 ".wl[708].w[0:1]"  0.99987468216179387 0.00012531783820616242;
	setAttr -s 2 ".wl[709].w[0:1]"  0.99905223625638095 0.00094776374361911573;
	setAttr -s 2 ".wl[710].w[0:1]"  0.99915819508053005 0.00084180491946997003;
	setAttr -s 2 ".wl[711].w[0:1]"  0.99973639976492068 0.00026360023507935714;
	setAttr -s 2 ".wl[712].w[0:1]"  0.9995491569326288 0.00045084306737118077;
	setAttr -s 2 ".wl[713].w[0:1]"  0.99999366930666223 6.3306933377541779e-006;
	setAttr -s 2 ".wl[714].w[0:1]"  0.9999987128832889 1.2871167110655549e-006;
	setAttr -s 2 ".wl[715].w[0:1]"  0.99999793395432268 2.0660456772827999e-006;
	setAttr -s 2 ".wl[716].w[0:1]"  0.99995851551040893 4.1484489591157483e-005;
	setAttr -s 2 ".wl[717].w[0:1]"  0.9995866350149013 0.00041336498509873722;
	setAttr -s 2 ".wl[718].w[0:1]"  0.99973142113458602 0.00026857886541401904;
	setAttr -s 2 ".wl[719].w[0:1]"  0.99938569941303035 0.0006143005869696733;
	setAttr -s 2 ".wl[720].w[0:1]"  0.99986055661796658 0.00013944338203338651;
	setAttr -s 2 ".wl[721].w[0:1]"  0.99967040494072734 0.00032959505927270742;
	setAttr -s 2 ".wl[722].w[0:1]"  0.99997337309856982 2.6626901430132926e-005;
	setAttr -s 2 ".wl[723].w[0:1]"  0.99996565928834491 3.4340711655072762e-005;
	setAttr -s 2 ".wl[724].w[0:1]"  0.9999808251277551 1.9174872244940243e-005;
	setAttr -s 2 ".wl[725].w[0:1]"  0.99998091016032054 1.9089839679488338e-005;
	setAttr -s 2 ".wl[726].w[0:1]"  0.99981987558242069 0.00018012441757933595;
	setAttr -s 2 ".wl[727].w[0:1]"  0.99993054771755818 6.9452282441801757e-005;
	setAttr -s 2 ".wl[728].w[0:1]"  0.99976101146724528 0.00023898853275475937;
	setAttr -s 2 ".wl[729].w[0:1]"  0.99998514743138822 1.4852568611808139e-005;
	setAttr -s 2 ".wl[730].w[0:1]"  0.99986624920755418 0.00013375079244586709;
	setAttr -s 2 ".wl[731].w[0:1]"  0.99982372260112906 0.00017627739887093906;
	setAttr -s 2 ".wl[732].w[0:1]"  0.99986294954759936 0.00013705045240064778;
	setAttr -s 2 ".wl[733].w[0:1]"  0.99988264107697167 0.00011735892302833132;
	setAttr -s 2 ".wl[734].w[0:1]"  0.99988449968950999 0.00011550031048999275;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.19047746835531948 0 -0.98169156767741872 0 0 1 0 0
		 0.98169156767741872 0 0.19047746835531948 0 -15.271271008633393 -120.97251597222008 -26.230582390457066 1;
	setAttr ".pm[1]" -type "matrix" 1 0 -2.7755575615628914e-017 0 0 1 0 0 2.7755575615628914e-017 0 1 0
		 68.524525523061087 -123.23780366518085 -269.84614678411748 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 122.07691997560288 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "B3AF4621-4B16-BDC0-1EC1-26BCE950F280";
createNode objectSet -n "skinCluster4Set";
	rename -uid "4A61B72B-4A2D-2D04-45CA-00B6EEADF579";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "A4446547-4ED1-FDB3-2545-EF9B32EC9250";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "74B475B4-452F-97B7-6850-0EB975B26944";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "C7748F6C-4EE7-A734-061E-DBAABEB733A5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId17";
	rename -uid "93F5435D-482F-538F-3412-E9BB161ADA36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "51437854-41A4-5857-A443-738915080EB3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	rename -uid "88062147-4D1A-C51C-72AD-30BBAAD52C9B";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.841508507687021 120.97251597222009
		 19.988012904111923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.6362085081341966 0 0.77151716389051239 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 236.58203771769558 2.2652876929607508
		 92.43897737950472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.63620850813419672 0 0.77151716389051239 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode animCurveTU -n "WingLeftRearikHandle_visibility";
	rename -uid "FDF29A80-4FA6-58BF-46D7-3F9C073C5514";
	setAttr ".tan" 5;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftRearikHandle_translateX";
	rename -uid "D3B5C41A-4876-FCBA-261C-28AEE0BD3E0A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.38690718492612697 2 0.38262691424427725
		 3 0.38690718492612697 4 0.38350381619139773 5 0.38690718492612697;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftRearikHandle_translateY";
	rename -uid "A8F26CEA-43B8-8283-2721-E0BC4B6868BE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2210310023364241 2 1.6108173760695488
		 3 1.2210310023364241 4 0.87321646784891704 5 1.2210310023364241;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.034572768956422806 0.041666667908430099 
		0.041666664183139801 0.041666671633720398 0.036937400698661804;
	setAttr -s 5 ".kiy[0:4]"  37.682693481445313 0 -40.374336242675781 
		0 34.991092681884766;
	setAttr -s 5 ".kox[0:4]"  0.034572772681713104 0.041666664183139801 
		0.041666667908430099 0.041666656732559204 0.036937423050403595;
	setAttr -s 5 ".koy[0:4]"  37.682701110839844 0 -40.374324798583984 
		0 34.991096496582031;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftRearikHandle_translateZ";
	rename -uid "D9A98E3D-4ACD-87CF-63B0-2B9821170E3E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 2.5591212130805565 2 2.5272709635950243
		 3 2.5591212130805565 4 2.5337961457309519 5 2.5591212130805565;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftRearikHandle_rotateX";
	rename -uid "32640534-4E09-C866-2CEF-2E8F1A7E595F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftRearikHandle_rotateY";
	rename -uid "4846E8F3-4F5D-CD81-7950-DABF0EA413C6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftRearikHandle_rotateZ";
	rename -uid "125F04B6-4F6A-C8E7-D86D-D9B47F2D79CA";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_scaleX";
	rename -uid "6B1AA0C9-4815-47F1-DA2C-7E86A0FA5032";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_scaleY";
	rename -uid "A850D599-48AD-7717-6BF1-278B82DB8142";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_scaleZ";
	rename -uid "0C0D704F-48B4-3988-CF81-AD8D473F16A6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_poleVectorX";
	rename -uid "F0E993DE-46F7-5DA4-9683-2A8A95C43A96";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -1.9821810370068769 2 -1.9821810370068771
		 3 -1.9821810370068769 4 -1.9821810370068771 5 -1.9821810370068769;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_poleVectorY";
	rename -uid "D26EC809-4D29-E871-2037-118CE9F65EBC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -2.9662719845742427e-016 2 -2.5493393149739108e-016
		 3 -2.9662719845742427e-016 4 -2.5357879119231759e-016 5 -2.9662719845742427e-016;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_poleVectorZ";
	rename -uid "733581CC-4163-B7A6-6A55-1AB937872098";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.2663800603092239 2 0.2663800603092239
		 3 0.2663800603092239 4 0.2663800603092239 5 0.2663800603092239;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_offset";
	rename -uid "C7E22DD6-40B0-5723-2EDC-1489D8D09369";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftRearikHandle_roll";
	rename -uid "A7BA559B-4BB9-8026-4B14-C1A68261035A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftRearikHandle_twist";
	rename -uid "5C4288B8-4E28-8158-A7BE-A797F1504179";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftRearikHandle_ikBlend";
	rename -uid "3D4F1164-4E9E-9477-A46C-2CAC2E4CB520";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_visibility";
	rename -uid "B375DE60-4E87-6CB0-B49E-81A4F1B70592";
	setAttr ".tan" 5;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftFrontikHandle_translateX";
	rename -uid "57694063-409D-16AC-73C0-2C83193095DC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.68524525523061097 2 -0.68351835786341864
		 3 -0.68524525523061097 4 -0.68132841046191417 5 -0.68524525523061097;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftFrontikHandle_translateY";
	rename -uid "F10190E9-4FCA-DDCE-0CDD-07ADF4D54507";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2323780366518085 2 0.98792047811582995
		 3 1.2323780366518085 4 1.5423968805363231 5 1.2323780366518085;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.058219101279973984 0.041666667908430099 
		0.051125198602676392 0.041666671633720398 0.036937400698661804;
	setAttr -s 5 ".kiy[0:4]"  -29.607828140258789 0 45.757568359375 0 
		-34.991077423095703;
	setAttr -s 5 ".kox[0:4]"  0.058219097554683685 0.041666664183139801 
		0.05112520232796669 0.041666656732559204 0.036937404423952103;
	setAttr -s 5 ".koy[0:4]"  -29.607839584350586 0 45.757579803466797 
		0 -34.991081237792969;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingLeftFrontikHandle_translateZ";
	rename -uid "A6E93B36-41FB-0893-A8F2-6EAD2DF4B1B5";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 2.6984614678411747 2 2.6890163965267364
		 3 2.6984614678411747 4 2.6770387250246293 5 2.6984614678411747;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftFrontikHandle_rotateX";
	rename -uid "5428DBED-4B51-8DBA-2C96-3D94BECE2054";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftFrontikHandle_rotateY";
	rename -uid "9472280A-4741-31A1-0CBE-AA9D662461D3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftFrontikHandle_rotateZ";
	rename -uid "FFA533E9-43AB-EBA9-9678-6184482090CB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_scaleX";
	rename -uid "59E713B7-441C-F741-3DFA-FBA8D1EE07A8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_scaleY";
	rename -uid "243EA30B-4156-E530-EF69-F3848673598E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_scaleZ";
	rename -uid "44E6FF68-4270-4E04-C02B-1EA5ED8A10E6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_poleVectorX";
	rename -uid "1EEF8949-4893-32A7-B2DE-6C9C8A8E1269";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -1.9673864980915725 2 -1.9673864980915725
		 3 -1.9673864980915725 4 -1.9673864980915725 5 -1.9673864980915725;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_poleVectorY";
	rename -uid "795A5377-4591-01EF-F459-5C9E06EAC844";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.9137987666038306e-015 2 2.3266624240391601e-015
		 3 1.9137987666038306e-015 4 2.3266624240391601e-015 5 1.9137987666038306e-015 24 1.9137987666038306e-015;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_poleVectorZ";
	rename -uid "F69E4E8B-487B-D8E3-A58C-B4B8064E9F1F";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.35970872539733884 2 -0.35970872539733884
		 3 -0.35970872539733884 4 -0.35970872539733884 5 -0.35970872539733884;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_offset";
	rename -uid "EE868B3C-45FD-371C-73DB-1DB9B02227D6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftFrontikHandle_roll";
	rename -uid "3966899A-4FE9-637E-4036-73BD9846A458";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingLeftFrontikHandle_twist";
	rename -uid "EB0E3E61-44FC-BCCE-6735-2A8855216B67";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingLeftFrontikHandle_ikBlend";
	rename -uid "ACDE6992-45E1-8228-B946-EE95DDD55963";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_visibility";
	rename -uid "7EF0AA5E-4061-76A4-D966-CB973425D3E3";
	setAttr ".tan" 5;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightFrontikHandle_translateX";
	rename -uid "53ED726A-4014-BB67-0744-EF8A6DCB7084";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.68524525523061031 2 -0.68005284506834696
		 3 -0.68524525523061031 4 -0.6807658827930112 5 -0.68524525523061031;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightFrontikHandle_translateY";
	rename -uid "CEAB21F1-4F91-8B5A-2EEB-D381C7433072";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2019464084086446 2 1.592838196509792
		 3 1.2019464084086446 4 0.85374249847469341 5 1.2019464084086446;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.053489822894334793 0.041666667908430099 
		0.048760563135147095 0.041666671633720398 0.051125206053256989;
	setAttr -s 5 ".kiy[0:4]"  56.524059295654297 0 -43.065944671630859 
		0 51.140815734863281;
	setAttr -s 5 ".kox[0:4]"  0.053489834070205688 0.041666664183139801 
		0.048760578036308289 0.041666656732559204 0.05112520232796669;
	setAttr -s 5 ".koy[0:4]"  56.524055480957031 0 -43.065940856933594 
		0 51.140815734863281;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightFrontikHandle_translateZ";
	rename -uid "AA7305EF-4F8F-C4B5-35A5-87B2A1074B41";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -2.7445956109079477 2 -2.7166933943788112
		 3 -2.7445956109079477 4 -2.7205250125224678 5 -2.7445956109079477;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightFrontikHandle_rotateX";
	rename -uid "79E94227-4DDC-5998-AAB2-5AB1B69D91D4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightFrontikHandle_rotateY";
	rename -uid "A1369764-4C41-D1CD-E002-FEAF1E7ADBF3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightFrontikHandle_rotateZ";
	rename -uid "A2D40230-4413-FEC7-F58F-9F84826951BE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_scaleX";
	rename -uid "F0DDAC18-4FFE-86A3-55E5-3B998FC223D2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_scaleY";
	rename -uid "6787EDBC-4ABF-1749-4138-AFA8D12A3036";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_scaleZ";
	rename -uid "F3C6CF14-4C56-C89A-92A2-0EB992A7A0CC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_poleVectorX";
	rename -uid "30469216-4ADD-0F00-7890-6180A3F64102";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.966243622091465 2 1.9662436220914645
		 3 1.966243622091465 4 1.9662436220914645 5 1.966243622091465;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_poleVectorY";
	rename -uid "27EA2380-4696-9654-41CD-278BA3C3DC02";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -4.2718601665907372e-019 2 4.8407989089807139e-016
		 3 -4.2718601665907372e-019 4 -4.2718601665907372e-019 5 -4.2718601665907372e-019
		 24 -4.2718601665907372e-019;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_poleVectorZ";
	rename -uid "ED5DF1C8-4FC7-6481-90FE-EEA8AF774A29";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.36590438448402496 2 -0.36590438448402501
		 3 -0.36590438448402496 4 -0.36590438448402501 5 -0.36590438448402496;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_offset";
	rename -uid "2E239D0D-4902-3CA7-87B1-74B7A4E718C5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightFrontikHandle_roll";
	rename -uid "0F9BDCAF-4380-8975-6528-01A4069D42E3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightFrontikHandle_twist";
	rename -uid "8C25C8B3-42FD-DD63-8037-AC8C7FBBB3A8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightFrontikHandle_ikBlend";
	rename -uid "7676C39F-434B-2264-0AAF-C4BB473B0D9C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_visibility";
	rename -uid "8E562329-416B-A82D-2E43-EAA7F3A0278A";
	setAttr ".tan" 5;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightReadikHandle_translateX";
	rename -uid "296135D4-4D6E-C694-6A51-758A60EF8EAC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.3682610555320967 2 0.36691561876009382
		 3 0.3682610555320967 4 0.36578624453161468 5 0.3682610555320967;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightReadikHandle_translateY";
	rename -uid "0E55427B-4E50-2A68-E637-9FA3A93BAA14";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2184841848762638 2 0.97428613795555574
		 3 1.2184841848762638 4 1.5286257075401539 5 1.2184841848762638;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.041666667908430099 0.041666667908430099 
		0.041666664183139801 0.041666671633720398 0.044031299650669098;
	setAttr -s 5 ".kiy[0:4]"  -37.682701110839844 0 37.682708740234375 
		0 -29.607839584350586;
	setAttr -s 5 ".kox[0:4]"  0.041666664183139801 0.041666664183139801 
		0.041666667908430099 0.041666656732559204 0.044031299650669098;
	setAttr -s 5 ".koy[0:4]"  -37.682708740234375 0 37.682701110839844 
		0 -29.607839584350586;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "WingRightReadikHandle_translateZ";
	rename -uid "A0A03D75-4FA7-D7A3-593B-919BE1768AE1";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -2.6406400672686865 2 -2.6293557588583387
		 3 -2.6406400672686865 4 -2.6198835879098077 5 -2.6406400672686865;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightReadikHandle_rotateX";
	rename -uid "F202A985-4B69-F713-CEC1-8ABD9E9F6ED7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightReadikHandle_rotateY";
	rename -uid "66E549F4-413A-B8F5-843A-648E6D9C2D17";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightReadikHandle_rotateZ";
	rename -uid "FF842C16-4E24-F795-BB97-BAB851AB6193";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 4 0 5 0 24 0;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_scaleX";
	rename -uid "E9FE1B34-4F11-DE89-D92D-4F9C6E53378D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 4 1 5 1 24 1;
	setAttr -s 6 ".kit[2:5]"  1 18 1 18;
	setAttr -s 6 ".kot[2:5]"  1 18 1 18;
	setAttr -s 6 ".kix[2:5]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099 0.79166668653488159;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_scaleY";
	rename -uid "EFE09737-465A-8DA7-64EF-28AE8CD41708";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_scaleZ";
	rename -uid "C41D6481-4F67-30AB-1B71-48A1FB84F052";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_poleVectorX";
	rename -uid "7CC6CA15-47EC-A55A-5653-10990E47C998";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.9859338206072441 2 1.9859338202669523
		 3 1.9859338206072441 4 1.9859338206072443 5 1.9859338206072441;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_poleVectorY";
	rename -uid "044CB34F-45E0-D38A-8F0E-C7B6E7F94A97";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 7.3099681722314988e-017 2 -2.9663394351806729e-008
		 3 7.3099681722314988e-017 4 -1.3527826063821553e-016 5 7.3099681722314988e-017;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_poleVectorZ";
	rename -uid "EE755666-4C30-D9BF-E445-B99CC26C4EA9";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.23678441707240239 2 0.23678441992646349
		 3 0.23678441707240239 4 0.23678441707240233 5 0.23678441707240239;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_offset";
	rename -uid "79DCDEC9-4A73-3BC2-0095-52B46FCE672B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightReadikHandle_roll";
	rename -uid "3D2E83F9-4731-A635-FF2D-D6A3F8719FD8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "WingRightReadikHandle_twist";
	rename -uid "5FF2CEB5-4BC7-0BD3-2681-979D012D792D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 3 0 4 0 5 0;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "WingRightReadikHandle_ikBlend";
	rename -uid "8875D2C5-497D-3DF0-D114-A19CDED88901";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 3 1 4 1 5 1;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  0.041666667908430099 0.041666671633720398 
		0.041666667908430099;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.041666667908430099 0.041666656732559204 
		0.041666667908430099;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode tweak -n "tweak9";
	rename -uid "1F0FD0A3-4768-14E5-8AAE-DD9B2F2BF1AA";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[2]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[4]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[6]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[7]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[8]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[9]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[16]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[18]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[19]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
createNode objectSet -n "tweakSet9";
	rename -uid "D511264C-4E6C-9DFD-E4E9-969CC37207F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId27";
	rename -uid "AA4A6404-420A-EE7C-1B04-CA965C55247C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "B3BA0E03-4E53-ADAA-5E43-988ECCF5FEA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak10";
	rename -uid "623FD805-4947-8462-F410-7980F694E4D1";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet10";
	rename -uid "A0849C36-4EA0-55AB-ACEA-DA960EA42CC6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId29";
	rename -uid "9D77E7F1-4FB3-DB9C-6B6C-4C9ED271F52C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "CD787E6F-496F-1369-1E75-E8A454DA48C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak11";
	rename -uid "00FA6968-40C3-9A58-3F12-BF9603A037F3";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet11";
	rename -uid "4336ADAE-483D-A1AD-71C4-ACB435C61AB6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId31";
	rename -uid "F08EC6A9-433F-9F1F-80FD-6F8D14493AF6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "2C0BBEF7-4045-29AB-6980-DF9C2DC632D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak12";
	rename -uid "AA1DDE13-4D07-491B-D37A-5EB61F2D443A";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet12";
	rename -uid "E548C608-4596-8878-605E-F38CB5465AEB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId33";
	rename -uid "2F492413-4AF7-520B-08F7-818F0598F723";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "EBDA8F5D-4043-7F5F-144E-70818045FF95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak14";
	rename -uid "D1911C74-4E15-E525-9097-B1BB03268073";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-0.65057153 -0.30953491 -3.0517577e-007 -4.2632563e-016 -0.13247633 0.30817717;
createNode objectSet -n "tweakSet14";
	rename -uid "345FFDAD-40EC-73B6-66EB-348A468D7821";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId37";
	rename -uid "6DAC9B48-4652-D6D1-A390-93B1F2AFA126";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "080023AB-4A06-7DD9-DFD3-BDA4F395A6DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak15";
	rename -uid "DBC273D8-45F5-67BA-1815-3AA4B8D0CC30";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet15";
	rename -uid "1DF06842-4F23-ABE2-9FAD-469B5A00D0AE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId39";
	rename -uid "7F314E86-4A43-E3CF-DAA1-42B802379B7D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "F34A081F-49F2-CEC2-1053-3C9B7AF83233";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak16";
	rename -uid "449AA612-446F-CC5E-214D-AAB6B902E497";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet16";
	rename -uid "A326C8B5-4B62-76C1-2F59-7182F4EEA6DD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId41";
	rename -uid "AFDB4553-416B-3C4C-7B3D-F3BC28E768AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "E6104218-46C7-9DBE-4107-A5A8F6AC6007";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak17";
	rename -uid "7F7D8082-4485-11EA-C3DA-6F8BABAE9A70";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.157346 0.36483106 
		-0.065854557 0.14346932 0.36483106 -0.079339832 0.12185587 0.36483106 -0.090041682 
		0.094621398 0.36483106 -0.09691269 0.064431675 0.36483106 -0.099280328 0.034241885 
		0.36483106 -0.09691269 0.0070073567 0.36483106 -0.090041675 -0.014605985 0.36483106 
		-0.07933972 -0.028482711 0.36483106 -0.065854557 -0.033264272 0.36483106 -0.050906163 
		-0.028482711 0.36483106 -0.035957657 -0.014605985 0.36483106 -0.022472592 0.0070073758 
		0.36483106 -0.011770687 0.034241885 0.36483106 -0.0048997137 0.064431608 0.36483106 
		-0.0025320863 0.094621398 0.36483106 -0.0048997235 0.12185581 0.36483106 -0.011770687 
		0.14346926 0.36483106 -0.022472586 0.157346 0.36483106 -0.035957675 0.16212767 0.36483106 
		-0.050906163 0.72764748 5.6061739e-010 -0.004265266 0.72568643 5.6061739e-010 -0.0081130229 
		0.72263283 5.6061739e-010 -0.011166621 0.71878517 5.6061739e-010 -0.013127148 0.71452004 
		5.6061739e-010 -0.013802698 0.71025491 5.6061739e-010 -0.013127147 0.70640725 5.6061739e-010 
		-0.011166615 0.70335364 5.6061739e-010 -0.008113021 0.70139259 5.6061739e-010 -0.0042652646 
		0.70071757 5.6061739e-010 4.8017683e-009 0.70139259 5.6061739e-010 0.0042652744 0.70335364 
		5.6061739e-010 0.0081130276 0.70640725 5.6061739e-010 0.011166623 0.71025491 5.6061739e-010 
		0.013127152 0.71452004 5.6061739e-010 0.013802703 0.71878517 5.6061739e-010 0.013127152 
		0.72263283 5.6061739e-010 0.011166623 0.72568643 5.6061739e-010 0.0081130276 0.72764748 
		5.6061739e-010 0.004265273 0.72832251 5.6061739e-010 4.8017683e-009 0.064431675 0.36483106 
		-0.050906163 0.71452004 5.6061739e-010 4.8017683e-009;
createNode objectSet -n "tweakSet17";
	rename -uid "53867085-4701-99AF-B76B-719132D7864C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId43";
	rename -uid "62E0FC50-4912-26B9-6E62-578D84B3E9C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "959447D3-49BE-ACD4-9D09-DBB3C84A6EB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak18";
	rename -uid "0B90BABC-4FCA-7D87-AA73-908414DEDC20";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet18";
	rename -uid "16272104-4C71-7CC6-35D1-8B9FEE664647";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId45";
	rename -uid "50D40833-400A-35BE-2E15-62BAA592C7F0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "D284C74A-4CF5-2213-1463-88939D2B211F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak19";
	rename -uid "010200C9-4E70-F7B8-579D-2D898A2C2E0B";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet19";
	rename -uid "1D2DC00B-4158-ED6E-6EC4-48B9718591D8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId47";
	rename -uid "BEFD1429-4D5A-11A3-3F61-D8BBA13385BF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "3EB37C9E-4F61-73F7-76B0-2A849497939D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak20";
	rename -uid "A9266825-4389-4CFF-6A9B-069AC3273483";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[2]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[4]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[6]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[7]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[8]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[9]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[16]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[18]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[19]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0.2766934 -0.1208153 0 ;
createNode objectSet -n "tweakSet20";
	rename -uid "6411EC73-46CB-24DD-CA21-559E18A7B9A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId49";
	rename -uid "8DBA3CC2-4260-D934-0515-31B8FB7A0310";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "6BB673DD-4188-D050-2CB2-84B2986A54F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak21";
	rename -uid "BFC51B34-401C-642E-4497-8E96E4BCD4CD";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet21";
	rename -uid "CCFB8E95-4538-3D05-E591-8A9BA57E7131";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId51";
	rename -uid "DF9FB972-4115-DD91-14FC-A2A7DC4F2423";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "9BB86A10-495E-2666-9289-08BEAA0302C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak22";
	rename -uid "EF0F7391-4AF5-851A-29F5-F991B70A1ACA";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet22";
	rename -uid "CB3CEC3C-43BF-BE18-5E3F-57A8248820FB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId53";
	rename -uid "9C5BD74B-4F97-BDCB-FEC0-D6AE1CF2A84A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "1C840E81-4ADD-AB57-9FB9-B8A0FEB2C0BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak23";
	rename -uid "EF71191B-46D2-A64F-E0D9-BE99F12A683D";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet23";
	rename -uid "FED26A7E-483D-5B24-2581-54AF34659CCD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId55";
	rename -uid "5D99F017-4E5C-D33E-B384-EBB70F84A7E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "3EAC553A-438C-6922-888B-FBBDB1B76CC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak24";
	rename -uid "E6E96597-4509-7ED9-A2B0-50A51BE2EA03";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.047356643 0.32680646 
		-0.0034002659 0.041449357 0.32680646 -0.0064676893 0.03224859 0.32680646 -0.0089020133 
		0.020654943 0.32680646 -0.010464942 0.0078032864 0.32680646 -0.011003491 -0.0050483607 
		0.32680646 -0.010464942 -0.016642008 0.32680646 -0.0089020114 -0.02584275 0.32680646 
		-0.0064676879 -0.031750046 0.32680646 -0.0034002643 -0.033785541 0.32680646 2.0987485e-009 
		-0.031750046 0.32680646 0.003400268 -0.02584275 0.32680646 0.0064676907 -0.016641999 
		0.32680646 0.0089020133 -0.0050483514 0.32680646 0.010464942 0.0078032864 0.32680646 
		0.011003491 0.020654943 0.32680646 0.010464942 0.032248572 0.32680646 0.0089020133 
		0.041449346 0.32680646 0.0064676893 0.047356635 0.32680646 0.0034002669 0.049392127 
		0.32680646 2.0987485e-009 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.0078032864 0.32680646 2.0987485e-009 0.28792942 0 -7.1054272e-017;
createNode objectSet -n "tweakSet24";
	rename -uid "21728217-4A8E-9A87-31FD-97B27EEDB618";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId57";
	rename -uid "D565EBA5-44B4-B1C9-25F6-868D3D8E51F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "694C034B-4EC8-59FA-7025-E19FD0C9374F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak25";
	rename -uid "DD606B0B-41F6-97AD-8E76-3DA2BE091CC3";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[2]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[4]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[6]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[7]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[8]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[9]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[16]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[18]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[19]" -type "float3" 0.2766934 -0.1208153 0 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0.2766934 -0.1208153 0 ;
createNode objectSet -n "tweakSet25";
	rename -uid "6ABED700-42F0-8AD4-F21E-B9A6EBB84480";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId59";
	rename -uid "B49D32EC-480B-685F-F88E-27965D69B211";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "2C7020BF-4202-AF2D-8335-3EAC240D3A98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak26";
	rename -uid "500EA164-4C46-74E2-1A3A-708FA7935900";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet26";
	rename -uid "A95C3FE5-48BB-2964-C7C1-688E32F5F24F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	rename -uid "76A42F06-4557-A9CC-8C63-9C99139BC137";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "F6E877C4-40CE-88AB-D8D2-D98D0513106A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak27";
	rename -uid "075E23B7-407E-9D72-157E-29A4EBF20026";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet27";
	rename -uid "E3BCE632-4802-0A31-6CB8-C0B3304B5938";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId63";
	rename -uid "7C2116B7-483E-45DD-3A69-CEBD0AB242D7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "C768A0E0-4FCC-40A8-3938-4DBF6AFAB5D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak28";
	rename -uid "97318322-4004-1B8C-34DD-F18EBF89C4BF";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet28";
	rename -uid "255BF71F-432D-8562-0410-2FB15F273884";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId65";
	rename -uid "D3151467-4A20-1A15-75A7-B4BD467A1CE5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "D3A9BD0D-427E-2F22-CD5C-838AE5CF5558";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak29";
	rename -uid "B7797599-4A64-E89C-7162-689E7A16049A";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.047356643 0.32680646 
		-0.0034002659 0.041449357 0.32680646 -0.0064676893 0.03224859 0.32680646 -0.0089020133 
		0.020654943 0.32680646 -0.010464942 0.0078032864 0.32680646 -0.011003491 -0.0050483607 
		0.32680646 -0.010464942 -0.016642008 0.32680646 -0.0089020114 -0.02584275 0.32680646 
		-0.0064676879 -0.031750046 0.32680646 -0.0034002643 -0.033785541 0.32680646 2.0987485e-009 
		-0.031750046 0.32680646 0.003400268 -0.02584275 0.32680646 0.0064676907 -0.016641999 
		0.32680646 0.0089020133 -0.0050483514 0.32680646 0.010464942 0.0078032864 0.32680646 
		0.011003491 0.020654943 0.32680646 0.010464942 0.032248572 0.32680646 0.0089020133 
		0.041449346 0.32680646 0.0064676893 0.047356635 0.32680646 0.0034002669 0.049392127 
		0.32680646 2.0987485e-009 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 0.28792942 0 -7.1054272e-017 
		0.0078032864 0.32680646 2.0987485e-009 0.28792942 0 -7.1054272e-017;
createNode objectSet -n "tweakSet29";
	rename -uid "50F70F35-4B72-519A-3903-9C9219C5CA69";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId67";
	rename -uid "73F0725C-4EF6-34E0-0A30-A3AE97A0A289";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "34E6D854-4EDD-77F4-EC4F-88BF73BDA237";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak30";
	rename -uid "59D3EEB4-4DD0-AE0F-5164-E8833BADA4DD";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet30";
	rename -uid "81A79235-4DF4-15E9-4C06-D3BC57F95966";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId69";
	rename -uid "DAC775AF-4967-D123-F792-7AAFB4E340EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "270498F3-48F4-D3E0-E426-E8B092CC2EF3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak31";
	rename -uid "59AA2C0B-4848-9633-23F1-C4BDE6185CBC";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet31";
	rename -uid "CB111E51-45D1-8D3F-5FFA-64BC2426EE3D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId71";
	rename -uid "CA173DF7-4A5F-21C0-98F0-2F9CC6A1BD4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "D7D260E1-4B52-CC2D-CCB2-2F913F967344";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak32";
	rename -uid "19C94B2D-4808-15E3-A2E0-9E8118D0064A";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 
		-3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 
		-0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 -0.30953491 -3.0517577e-007 -0.65057153 
		-0.30953491 -3.0517577e-007 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 
		-0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 
		0.30817717 -4.2632563e-016 -0.13247633 0.30817717 -4.2632563e-016 -0.13247633 0.30817717 
		-0.65057153 -0.30953491 -3.0517577e-007 -4.2632563e-016 -0.13247633 0.30817717;
createNode objectSet -n "tweakSet32";
	rename -uid "4492ECBE-47D5-A448-C313-C5A05B7D9CAE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId73";
	rename -uid "1ECC7BC5-4BAF-4BB4-6062-0D98EF3FBCC1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "0E74B995-4989-9FF3-7501-B7A7817ECD74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak33";
	rename -uid "E12E9CA1-4B17-12AF-E599-E1B5B17F9A3A";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.157346 0.36483106 
		-0.065854557 0.14346932 0.36483106 -0.079339832 0.12185587 0.36483106 -0.090041682 
		0.094621398 0.36483106 -0.09691269 0.064431675 0.36483106 -0.099280328 0.034241885 
		0.36483106 -0.09691269 0.0070073567 0.36483106 -0.090041675 -0.014605985 0.36483106 
		-0.07933972 -0.028482711 0.36483106 -0.065854557 -0.033264272 0.36483106 -0.050906163 
		-0.028482711 0.36483106 -0.035957657 -0.014605985 0.36483106 -0.022472592 0.0070073758 
		0.36483106 -0.011770687 0.034241885 0.36483106 -0.0048997137 0.064431608 0.36483106 
		-0.0025320863 0.094621398 0.36483106 -0.0048997235 0.12185581 0.36483106 -0.011770687 
		0.14346926 0.36483106 -0.022472586 0.157346 0.36483106 -0.035957675 0.16212767 0.36483106 
		-0.050906163 0.72764748 5.6061739e-010 -0.004265266 0.72568643 5.6061739e-010 -0.0081130229 
		0.72263283 5.6061739e-010 -0.011166621 0.71878517 5.6061739e-010 -0.013127148 0.71452004 
		5.6061739e-010 -0.013802698 0.71025491 5.6061739e-010 -0.013127147 0.70640725 5.6061739e-010 
		-0.011166615 0.70335364 5.6061739e-010 -0.008113021 0.70139259 5.6061739e-010 -0.0042652646 
		0.70071757 5.6061739e-010 4.8017683e-009 0.70139259 5.6061739e-010 0.0042652744 0.70335364 
		5.6061739e-010 0.0081130276 0.70640725 5.6061739e-010 0.011166623 0.71025491 5.6061739e-010 
		0.013127152 0.71452004 5.6061739e-010 0.013802703 0.71878517 5.6061739e-010 0.013127152 
		0.72263283 5.6061739e-010 0.011166623 0.72568643 5.6061739e-010 0.0081130276 0.72764748 
		5.6061739e-010 0.004265273 0.72832251 5.6061739e-010 4.8017683e-009 0.064431675 0.36483106 
		-0.050906163 0.71452004 5.6061739e-010 4.8017683e-009;
createNode objectSet -n "tweakSet33";
	rename -uid "8DCCD9C1-4092-9B42-447D-0CA15746DD7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId75";
	rename -uid "5453A33F-4F14-D30A-BD61-9A8EE7B2CBEB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "859D94E1-457E-8CD3-256F-729D3DAE6E8E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak34";
	rename -uid "6CC71A09-459A-58B6-FFD1-EF87F3108C76";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet34";
	rename -uid "9DEDEB36-4608-B164-BE70-1EAAA46E4147";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId77";
	rename -uid "BD07948F-4593-7B8E-8394-BBA21270ABA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "501A2D17-4385-04FF-5A26-30B8CB95A4BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak35";
	rename -uid "23C012D8-469F-5FCC-6A3F-658F99CE9B8F";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet35";
	rename -uid "0027B723-4A30-75AF-7C71-5382FE533EBE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId79";
	rename -uid "833399A3-4AF3-D0E6-14DC-6D9CE93B2CEE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "16336FFD-4AEE-20D1-DA10-7196A2D6A384";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak36";
	rename -uid "294ACCAE-4DBF-D3BD-9BCB-AE8854FF15F3";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[2]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[4]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[6]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[7]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[8]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[9]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[15]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[16]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[18]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[19]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0.25984883 -0.14452522 0.016406558 ;
createNode objectSet -n "tweakSet36";
	rename -uid "8449B1F0-47AE-97BC-1F0F-E59B7FF24C64";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId81";
	rename -uid "D3244B4E-4A5C-46E8-53FE-A287F52EDD18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "EBCF9765-49DC-5892-199B-2790C658ACAD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak37";
	rename -uid "D6F5EF3C-4B6A-3763-66A9-F1A38D307017";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet37";
	rename -uid "CC6181F8-4F6D-8A1B-D20D-60A1D9AE937F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId83";
	rename -uid "628FB821-436F-4588-196E-90A6142A7907";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "93ED35BA-4933-7AB5-F783-A1A5952D9D8C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak38";
	rename -uid "E4C1EF48-4C6B-CFAF-C711-85A874E041E8";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet38";
	rename -uid "160EDDE2-47E2-55A0-068F-3CAE954EF076";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId85";
	rename -uid "7D605DD1-48C0-E3A0-3EC3-2EA2F6D21117";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "B6AFD859-43E7-D170-B832-71B6F18B634C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak39";
	rename -uid "0FBB2BE3-4ED2-11F3-CB43-CBBDDB29844C";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[20]" -type "float3" -0.04613848 0 0.01154703 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.039247729 0 0.02196376 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.028515132 0 0.030230537 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.014991293 0 0.035538126 ;
	setAttr ".vl[0].vt[24]" -type "float3" -4.6265445e-009 0 0.037366983 ;
	setAttr ".vl[0].vt[25]" -type "float3" 0.014991283 0 0.035538122 ;
	setAttr ".vl[0].vt[26]" -type "float3" 0.028515115 0 0.030230528 ;
	setAttr ".vl[0].vt[27]" -type "float3" 0.039247703 0 0.021963753 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0.046138454 0 0.011547029 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[30]" -type "float3" 0.046138454 0 -0.011547035 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.039247699 0 -0.021963764 ;
	setAttr ".vl[0].vt[32]" -type "float3" 0.028515108 0 -0.030230537 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.014991279 0 -0.035538126 ;
	setAttr ".vl[0].vt[34]" -type "float3" -3.1807486e-009 0 -0.037366983 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.014991283 0 -0.035538122 ;
	setAttr ".vl[0].vt[36]" -type "float3" -0.028515112 0 -0.030230537 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.039247699 0 -0.02196376 ;
	setAttr ".vl[0].vt[38]" -type "float3" -0.046138454 0 -0.011547034 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.048512854 0 -7.1271855e-009 ;
	setAttr ".vl[0].vt[41]" -type "float3" -4.6265445e-009 0 -7.1271855e-009 ;
createNode objectSet -n "tweakSet39";
	rename -uid "C8CB072C-40EB-EBD5-051D-FC8BCF96A2E2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId87";
	rename -uid "55B10AC3-4978-12F1-9839-D68F40303173";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "7660950E-40B0-EB11-51AA-E4ACCACD5AA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak40";
	rename -uid "A61D852B-4B5E-1E54-6EB8-978FE6C3DBC3";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.016056333 0.075000092 
		-0.0034002659 0.010149045 0.075000092 -0.0064676893 0.00094829081 0.075000092 -0.0089020133 
		-0.010645356 0.075000092 -0.010464942 -0.023497004 0.075000092 -0.011003491 -0.036348663 
		0.075000092 -0.010464942 -0.047942296 0.075000092 -0.0089020114 -0.057143047 0.075000092 
		-0.0064676879 -0.063050345 0.075000092 -0.0034002643 -0.065085843 0.075000092 2.0987476e-009 
		-0.063050345 0.075000092 0.003400268 -0.057143047 0.075000092 0.0064676907 -0.047942296 
		0.075000092 0.0089020133 -0.036348652 0.075000092 0.010464942 -0.023497004 0.075000092 
		0.011003491 -0.010645356 0.075000092 0.010464942 0.00094827177 0.075000092 0.0089020133 
		0.010149026 0.075000092 0.0064676893 0.016056323 0.075000092 0.0034002669 0.018091816 
		0.075000092 2.0987476e-009 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 -0.023497004 0.075000092 2.0987476e-009 0.27702191 
		-2.8421709e-016 -1.4210854e-016;
createNode objectSet -n "tweakSet40";
	rename -uid "77965B5A-4D23-1844-BFD7-B991D0017C3D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId89";
	rename -uid "04E24D3B-4562-7610-B81D-5889D488DC7E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "59D614F6-4651-35A3-8DCD-0A8A1FC86529";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak13";
	rename -uid "3C69EF21-4A10-B461-2198-7392016FB73C";
	setAttr -s 42 ".vl[0].vt[0:41]" -type "float3"  0.016056333 0.075000092 
		-0.0034002659 0.010149045 0.075000092 -0.0064676893 0.00094829081 0.075000092 -0.0089020133 
		-0.010645356 0.075000092 -0.010464942 -0.023497004 0.075000092 -0.011003491 -0.036348663 
		0.075000092 -0.010464942 -0.047942296 0.075000092 -0.0089020114 -0.057143047 0.075000092 
		-0.0064676879 -0.063050345 0.075000092 -0.0034002643 -0.065085843 0.075000092 2.0987476e-009 
		-0.063050345 0.075000092 0.003400268 -0.057143047 0.075000092 0.0064676907 -0.047942296 
		0.075000092 0.0089020133 -0.036348652 0.075000092 0.010464942 -0.023497004 0.075000092 
		0.011003491 -0.010645356 0.075000092 0.010464942 0.00094827177 0.075000092 0.0089020133 
		0.010149026 0.075000092 0.0064676893 0.016056323 0.075000092 0.0034002669 0.018091816 
		0.075000092 2.0987476e-009 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 0.27702191 -2.8421709e-016 -1.4210854e-016 0.27702191 
		-2.8421709e-016 -1.4210854e-016 -0.023497004 0.075000092 2.0987476e-009 0.27702191 
		-2.8421709e-016 -1.4210854e-016;
createNode groupParts -n "groupParts30";
	rename -uid "7382F4FE-4AA1-5E74-5426-5897E50F7A97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId35";
	rename -uid "157E5F0D-4D8A-1F27-31AC-0E96364CA94A";
	setAttr ".ihi" 0;
createNode objectSet -n "tweakSet13";
	rename -uid "C7E59472-4F52-DA44-8A35-13A94120888B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode polyCylinder -n "polyCylinder11";
	rename -uid "C7AA840E-4BDF-9696-951D-468956C5B1F0";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.05;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode skinCluster -n "skinCluster5";
	rename -uid "C36BDE3F-4D77-1AA0-AC82-69980FC38275";
	setAttr -s 21 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  1.281181892739413e-005 0.00072435104950650179 
		0.99926283713156616;
	setAttr -s 3 ".wl[1].w[0:2]"  1.5765677431682719e-005 0.00089469936987977762 
		0.9990895349526886;
	setAttr -s 3 ".wl[2].w[0:2]"  1.214688683527033e-005 0.00068774142470775981 
		0.99930011168845689;
	setAttr -s 3 ".wl[3].w[0:2]"  1.2374157954819235e-005 0.00069999512674653549 
		0.99928763071529869;
	setAttr -s 3 ".wl[4].w[0:2]"  1.342653151365374e-005 0.00075953065688136561 
		0.9992270428116049;
	setAttr -s 3 ".wl[5].w[0:2]"  1.4597514301044465e-005 0.0008262455782346059 
		0.99915915690746437;
	setAttr -s 3 ".wl[6].w[0:2]"  1.5705266967643467e-005 0.00088987938865140793 
		0.99909441534438093;
	setAttr -s 3 ".wl[7].w[0:2]"  1.6706494939771136e-005 0.00094807401013567933 
		0.99903521949492458;
	setAttr -s 3 ".wl[8].w[0:2]"  1.7562434237422511e-005 0.00099843847084765246 
		0.99898399909491487;
	setAttr -s 3 ".wl[9].w[0:2]"  1.8237118279558448e-005 0.0010384250386339352 
		0.99894333784308642;
	setAttr -s 3 ".wl[10].w[0:2]"  1.8702495812678113e-005 0.0010659375969452043 
		0.99891535990724223;
	setAttr -s 3 ".wl[11].w[0:2]"  1.8942159721209805e-005 0.0010798614420111262 
		0.99890119639826758;
	setAttr -s 3 ".wl[12].w[0:2]"  1.8955278963383705e-005 0.0010802989610993183 
		0.99890074575993748;
	setAttr -s 3 ".wl[13].w[0:2]"  1.8755939860955575e-005 0.001068169420903558 
		0.9989130746392354;
	setAttr -s 3 ".wl[14].w[0:2]"  1.83623132194336e-005 0.0010443368248214552 
		0.99893730086195909;
	setAttr -s 3 ".wl[15].w[0:2]"  1.7778883049137073e-005 0.0010089723217571755 
		0.99897324879519356;
	setAttr -s 3 ".wl[16].w[0:2]"  1.6986726772660668e-005 0.0009615788559135392 
		0.99902143441731373;
	setAttr -s 3 ".wl[17].w[0:2]"  1.5952776054401028e-005 0.00090124493974108675 
		0.99908280228420454;
	setAttr -s 3 ".wl[18].w[0:2]"  1.467041837081227e-005 0.00082805970512368559 
		0.99915726987650544;
	setAttr -s 3 ".wl[19].w[0:2]"  1.3347391860900998e-005 0.00075358235889603901 
		0.99923307024924302;
	setAttr -s 3 ".wl[20].w[0:2]"  2.8088806638625872e-005 0.0015856946529727418 
		0.99838621654038862;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.9999200919144301 -0 0.012641589529709642 -0 -0 1 -0 0
		 -0.012641589529709642 -0 0.9999200919144301 -0 18.283756109146978 -97.428120729644007 6.7037639203272601 1;
	setAttr ".pm[1]" -type "matrix" 0.99981228479901285 -0 -0.019375117160357731 -0 -0 1 -0 0
		 0.019375117160357731 -0 0.99981228479901285 -0 -29.798807783513517 -101.93631015808178 7.9346019450072722 1;
	setAttr ".pm[2]" -type "matrix" 0.9940736587360961 -0 -0.10870860594742049 -0 -0 1 -0 0
		 0.10870860594742049 -0 0.9940736587360961 -0 -92.475792724568706 -82.456399135003693 16.269706317199205 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 5.5511151231257827e-017 -0 -0 1 -0 0 -5.5511151231257827e-017 -0 1 -0
		 -147.16514181203365 -8.7670726880665626 2.1322752688952109 1;
	setAttr ".gm" -type "matrix" -0.032249121317314909 -0.012355503530312143 0 0 0.10402416522606099 -0.22551487040012375 0 0
		 0 0 0.043088143221784732 0 137.56249306376566 30.793280930797486 -8.4703294725430034e-022 1;
	setAttr -s 3 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak41";
	rename -uid "443E2D45-43BA-956E-C0AB-799E7E688706";
createNode objectSet -n "skinCluster5Set";
	rename -uid "92222651-4E10-B0AC-E777-AE9423801977";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "FB326F03-47AC-8F66-6419-F8B3CC1CB428";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "807AF6E4-490B-AF46-3DCD-55BD9BFCD3AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet41";
	rename -uid "1D6156A5-46A8-C7D6-BFCF-61AC38DFEE87";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId91";
	rename -uid "DD7E18CE-4EFE-B135-6F07-5CB7778C6D61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "AE683D29-4FD2-1818-3AF1-61AB4B4BEDDA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	rename -uid "973EA351-4165-135C-1EE3-F4A5DB3B2C3F";
	setAttr -s 3 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.367041320984121 97.428120729644007
		 -6.4720924955931167 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.0063209210392909491 0 0.99998002277906284 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 48.321299504529335 4.5081894284377455
		 -0.2728283792858015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.016008444097193982 0 0.99987185664843425 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 63.761427763750866 -19.479911023078017
		 -1.6875389974302379e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.044758809322741858 0 0.99899782231394796 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 53.585401562958296 -73.68932644693713
		 -1.8480497712245807 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.054435012923227562 0 0.99851731550737166 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster6";
	rename -uid "8F1E5D9B-4E4D-D857-543E-28AD06E7B44A";
	setAttr -s 382 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  1.2905204016998164e-008 0.001344976836017109 
		0.99865501025877901;
	setAttr -s 3 ".wl[1].w[0:2]"  1.1736777875951815e-008 0.0013862024591525851 
		0.99861378580406956;
	setAttr -s 3 ".wl[2].w[0:2]"  1.1642564326942011e-008 0.0014941398571813262 
		0.99850584850025437;
	setAttr -s 3 ".wl[3].w[0:2]"  1.271432313864504e-008 0.0017372709669482634 
		0.99826271631872854;
	setAttr -s 3 ".wl[4].w[0:2]"  1.4559775135161809e-008 0.002339691931272897 
		0.9976602935089518;
	setAttr -s 3 ".wl[5].w[0:2]"  1.8404254294990942e-008 0.0042032496022798918 
		0.99579673199346586;
	setAttr -s 3 ".wl[6].w[0:2]"  2.9055732358016709e-008 0.010733963548262964 
		0.98926600739600468;
	setAttr -s 3 ".wl[7].w[0:2]"  5.0029994235616266e-008 0.02771368921811029 
		0.9722862607518955;
	setAttr -s 3 ".wl[8].w[0:2]"  7.8543591711178448e-008 0.052644236977522199 
		0.94735568447888618;
	setAttr -s 3 ".wl[9].w[0:2]"  1.0783898304580734e-007 0.070404627266249076 
		0.92959526489476785;
	setAttr -s 3 ".wl[10].w[0:2]"  1.4027379331884686e-007 0.072807691214110584 
		0.92719216851209618;
	setAttr -s 3 ".wl[11].w[0:2]"  1.812931612809809e-007 0.063829848883876883 
		0.93616996982296186;
	setAttr -s 3 ".wl[12].w[0:2]"  1.968875397329442e-007 0.046126036985829837 
		0.95387376612663022;
	setAttr -s 3 ".wl[13].w[0:2]"  1.5518484458407089e-007 0.025377213385144533 
		0.97462263143001082;
	setAttr -s 3 ".wl[14].w[0:2]"  9.4840925561009801e-008 0.011308349387710004 
		0.98869155577136436;
	setAttr -s 3 ".wl[15].w[0:2]"  5.478756034274091e-008 0.0050311403505351659 
		0.99496880486190442;
	setAttr -s 3 ".wl[16].w[0:2]"  3.2359995272393714e-008 0.0025196233465257182 
		0.99748034429347898;
	setAttr -s 3 ".wl[17].w[0:2]"  2.0543483677085927e-008 0.0016077992482723487 
		0.99839218020824405;
	setAttr -s 3 ".wl[18].w[0:2]"  1.6069553367195785e-008 0.0013800816051163579 
		0.99861990232533027;
	setAttr -s 3 ".wl[19].w[0:2]"  1.4389635353915028e-008 0.0013409004664934104 
		0.99865908514387125;
	setAttr -s 3 ".wl[20].w[0:2]"  4.6424978009377715e-009 0.00026773543485778044 
		0.99973225992264436;
	setAttr -s 3 ".wl[21].w[0:2]"  4.0429383922868282e-009 0.00029939177552021834 
		0.99970060418154139;
	setAttr -s 3 ".wl[22].w[0:2]"  4.5595821794302102e-009 0.00041249681094774991 
		0.99958749862947005;
	setAttr -s 3 ".wl[23].w[0:2]"  6.0920854277855568e-009 0.00077861974944539282 
		0.99922137415846923;
	setAttr -s 3 ".wl[24].w[0:2]"  9.2989107096595231e-009 0.0022438153519008528 
		0.99775617534918848;
	setAttr -s 3 ".wl[25].w[0:2]"  1.9604381880614121e-008 0.0092036611758062447 
		0.99079631921981193;
	setAttr -s 3 ".wl[26].w[0:2]"  4.7199900546433998e-008 0.036690095155183497 
		0.96330985764491583;
	setAttr -s 3 ".wl[27].w[0:2]"  9.4587263279286615e-008 0.098606119553441049 
		0.90139378585929564;
	setAttr -s 3 ".wl[28].w[0:2]"  1.51025437961551e-007 0.17005727565824849 
		0.8299425733163136;
	setAttr -s 3 ".wl[29].w[0:2]"  2.1613440535784827e-007 0.20818902557668809 
		0.79181075828890646;
	setAttr -s 3 ".wl[30].w[0:2]"  3.1210823160311281e-007 0.20663968350195505 
		0.79336000438981347;
	setAttr -s 3 ".wl[31].w[0:2]"  4.0656004569789693e-007 0.17179263287362845 
		0.82820696056632581;
	setAttr -s 3 ".wl[32].w[0:2]"  3.943382345580897e-007 0.1092523829170142 
		0.89074722274475127;
	setAttr -s 3 ".wl[33].w[0:2]"  2.7166025674749696e-007 0.049785863640021057 
		0.95021386469972235;
	setAttr -s 3 ".wl[34].w[0:2]"  1.4828093572986715e-007 0.017682271735366049 
		0.98231757998369817;
	setAttr -s 3 ".wl[35].w[0:2]"  7.3811166802319737e-008 0.0057038153485582926 
		0.99429611084027492;
	setAttr -s 3 ".wl[36].w[0:2]"  3.4286821571320104e-008 0.0016991537378937722 
		0.99830081197528475;
	setAttr -s 3 ".wl[37].w[0:2]"  1.5687996075771342e-008 0.00057534355092080157 
		0.99942464076108317;
	setAttr -s 3 ".wl[38].w[0:2]"  8.689624591195142e-009 0.00032810183222209633 
		0.99967188947815333;
	setAttr -s 3 ".wl[39].w[0:2]"  6.0884290380998736e-009 0.00027762807479188669 
		0.9997223658367792;
	setAttr -s 3 ".wl[40].w[0:2]"  1.2091697565289703e-009 5.3027790860698164e-005 
		0.99994697099996954;
	setAttr -s 3 ".wl[41].w[0:2]"  1.2777418204497191e-009 7.9787835637558973e-005 
		0.99992021088662053;
	setAttr -s 3 ".wl[42].w[0:2]"  1.9526494562390715e-009 0.00018976211594112869 
		0.9998102359314095;
	setAttr -s 3 ".wl[43].w[0:2]"  3.5061517011736693e-009 0.00077655673058654956 
		0.99922343976326189;
	setAttr -s 3 ".wl[44].w[0:2]"  8.9934522904235515e-009 0.004622736655151778 
		0.9953772543513959;
	setAttr -s 3 ".wl[45].w[0:2]"  2.9300353474224764e-008 0.028338241861544541 
		0.97166172883810187;
	setAttr -s 3 ".wl[46].w[0:2]"  7.5677046154771096e-008 0.11267134845264543 
		0.88732857587030833;
	setAttr -s 3 ".wl[47].w[0:2]"  1.3917753475227773e-007 0.26232022216698236 
		0.73767963865548292;
	setAttr -s 3 ".wl[48].w[0:2]"  2.1174135621918209e-007 0.39751735544358707 
		0.60248243281505665;
	setAttr -s 3 ".wl[49].w[0:2]"  3.2855244285151537e-007 0.45390348000553349 
		0.5460961914420237;
	setAttr -s 3 ".wl[50].w[0:2]"  5.0835960950459171e-007 0.43258828049501341 
		0.56741121114537718;
	setAttr -s 3 ".wl[51].w[0:2]"  6.5615286329976344e-007 0.33716149140480672 
		0.66283785244233007;
	setAttr -s 3 ".wl[52].w[0:2]"  6.3203818738127979e-007 0.20015832842019171 
		0.79984103954162089;
	setAttr -s 3 ".wl[53].w[0:2]"  4.4762271936004633e-007 0.090043478140217265 
		0.90995607423706337;
	setAttr -s 3 ".wl[54].w[0:2]"  2.4505905765699281e-007 0.031904742318373751 
		0.96809501262256847;
	setAttr -s 3 ".wl[55].w[0:2]"  1.1113226025264754e-007 0.0086667257739211478 
		0.99133316309381858;
	setAttr -s 3 ".wl[56].w[0:2]"  4.295874611525924e-008 0.0018307245205992089 
		0.99816923252065481;
	setAttr -s 3 ".wl[57].w[0:2]"  1.3844809448858387e-008 0.00036481289357700406 
		0.99963517326161355;
	setAttr -s 3 ".wl[58].w[0:2]"  4.1696031590244068e-009 9.2259437589664914e-005 
		0.99990773639280717;
	setAttr -s 3 ".wl[59].w[0:2]"  1.807582702484239e-009 5.3893651229366285e-005 
		0.99994610454118771;
	setAttr -s 3 ".wl[60].w[0:2]"  2.7038915935555513e-010 9.4235730665904e-006 
		0.99999057615654419;
	setAttr -s 3 ".wl[61].w[0:2]"  4.1528843210581987e-010 2.5227609464963371e-005 
		0.99997477197524665;
	setAttr -s 3 ".wl[62].w[0:2]"  8.6512715733669872e-010 0.00013372732681491006 
		0.99986627180805787;
	setAttr -s 3 ".wl[63].w[0:2]"  2.4677847516206927e-009 0.0011250525963668451 
		0.9988749449358485;
	setAttr -s 3 ".wl[64].w[0:2]"  1.0196783278300749e-008 0.011104395135143136 
		0.98889559466807364;
	setAttr -s 3 ".wl[65].w[0:2]"  3.5495342369027345e-008 0.072162786019543151 
		0.92783717848511438;
	setAttr -s 3 ".wl[66].w[0:2]"  7.9687336765032937e-008 0.24762876536038916 
		0.75237115495227413;
	setAttr -s 3 ".wl[67].w[0:2]"  1.2657393612565931e-007 0.48943244975752137 
		0.51056742366854246;
	setAttr -s 3 ".wl[68].w[0:2]"  1.9451170191762681e-007 0.6610197857938428 
		0.33898001969445518;
	setAttr -s 3 ".wl[69].w[0:2]"  3.4221831230387886e-007 0.70987158152758889 
		0.2901280762540987;
	setAttr -s 3 ".wl[70].w[0:2]"  5.984554902712429e-007 0.64870000361247981 
		0.35129939793203002;
	setAttr -s 3 ".wl[71].w[0:2]"  8.7111681271345004e-007 0.49336605568448244 
		0.50663307319870476;
	setAttr -s 3 ".wl[72].w[0:2]"  9.1843870485528619e-007 0.30435356689669296 
		0.69564551466460212;
	setAttr -s 3 ".wl[73].w[0:2]"  6.7368674703419684e-007 0.14907189296422171 
		0.85092743334903109;
	setAttr -s 3 ".wl[74].w[0:2]"  3.6328978220181796e-007 0.052834177106230409 
		0.94716545960398735;
	setAttr -s 3 ".wl[75].w[0:2]"  1.5583102238866579e-007 0.012376486171844343 
		0.9876233579971333;
	setAttr -s 3 ".wl[76].w[0:2]"  5.2448125677967875e-008 0.0020813947155985902 
		0.99791855283627584;
	setAttr -s 3 ".wl[77].w[0:2]"  1.2599511740841666e-008 0.00029365299877692113 
		0.99970633440171142;
	setAttr -s 3 ".wl[78].w[0:2]"  2.2537268126146707e-009 3.3972591954330998e-005 
		0.99996602515431887;
	setAttr -s 3 ".wl[79].w[0:2]"  5.0008695214927728e-010 8.5032822695161373e-006 
		0.99999149621764361;
	setAttr -s 3 ".wl[80].w[0:2]"  1.029906002236512e-010 1.7873125853980619e-006 
		0.99999821258442401;
	setAttr -s 3 ".wl[81].w[0:2]"  1.3957263495883238e-010 9.9664480842549734e-006 
		0.99999003341234316;
	setAttr -s 3 ".wl[82].w[0:2]"  4.1322129636517105e-010 0.0001227724631398164 
		0.99987722712363902;
	setAttr -s 3 ".wl[83].w[0:2]"  1.9633093597539762e-009 0.0020437571878028611 
		0.99795624084888779;
	setAttr -s 3 ".wl[84].w[0:2]"  9.3362239469601372e-009 0.024670132160209964 
		0.97532985850356613;
	setAttr -s 3 ".wl[85].w[0:2]"  2.8051178510790485e-008 0.14042548443736771 
		0.85957448751145371;
	setAttr -s 3 ".wl[86].w[0:2]"  5.1127799915018761e-008 0.40565334145311649 
		0.59434660741908352;
	setAttr -s 3 ".wl[87].w[0:2]"  7.4358895417010745e-008 0.69562470259337117 
		0.30437522304773351;
	setAttr -s 3 ".wl[88].w[0:2]"  1.3199937680877192e-007 0.85447531002161758 
		0.14552455797900551;
	setAttr -s 3 ".wl[89].w[0:2]"  3.0092348967135517e-007 0.87290476545997864 
		0.12709493361653165;
	setAttr -s 3 ".wl[90].w[0:2]"  6.7296062512588694e-007 0.78759551745445699 
		0.21240380958491789;
	setAttr -s 3 ".wl[91].w[0:2]"  1.1027615059197497e-006 0.62239994937736698 
		0.37759894786112719;
	setAttr -s 3 ".wl[92].w[0:2]"  1.1793999374673328e-006 0.41603460945176379 
		0.58396421114829888;
	setAttr -s 3 ".wl[93].w[0:2]"  8.5602376698828783e-007 0.211833666029348 
		0.78816547794688496;
	setAttr -s 3 ".wl[94].w[0:2]"  4.61551158413679e-007 0.071439290099255578 
		0.92856024834958595;
	setAttr -s 3 ".wl[95].w[0:2]"  1.8984147158947236e-007 0.015130754544168996 
		0.98486905561435933;
	setAttr -s 3 ".wl[96].w[0:2]"  5.5645613710122843e-008 0.0022208810138520454 
		0.99777906334053446;
	setAttr -s 3 ".wl[97].w[0:2]"  1.1197386573161989e-008 0.00025533173523279226 
		0.99974465706738069;
	setAttr -s 3 ".wl[98].w[0:2]"  1.7916753809134186e-009 2.2154333165770242e-005 
		0.99997784387515876;
	setAttr -s 3 ".wl[99].w[0:2]"  3.2961323086103926e-010 2.434312369675076e-006 
		0.99999756535801698;
	setAttr -s 3 ".wl[100].w[0:2]"  1.5656100781976974e-010 7.2733282264847896e-007 
		0.99999927251061638;
	setAttr -s 3 ".wl[101].w[0:2]"  9.3990324580681316e-011 5.5533329697651718e-006 
		0.99999444657303993;
	setAttr -s 3 ".wl[102].w[0:2]"  2.560604058529739e-010 0.00013195194865712364 
		0.99986804779528249;
	setAttr -s 3 ".wl[103].w[0:2]"  1.4639832723485345e-009 0.0038691092774302779 
		0.99613088925858639;
	setAttr -s 3 ".wl[104].w[0:2]"  6.1033122036461554e-009 0.043656043454778824 
		0.95634395044190901;
	setAttr -s 3 ".wl[105].w[0:2]"  1.4387908072329022e-008 0.21171659225196859 
		0.78828339336012321;
	setAttr -s 3 ".wl[106].w[0:2]"  2.149856814760106e-008 0.53236724468768026 
		0.46763273381375153;
	setAttr -s 3 ".wl[107].w[0:2]"  3.2807338054487557e-008 0.82154434564395784 
		0.17845562154870401;
	setAttr -s 3 ".wl[108].w[0:2]"  8.5446046575792316e-008 0.94427869473333548 
		0.055721219820617882;
	setAttr -s 3 ".wl[109].w[0:2]"  3.0343248236259343e-007 0.94297630724187576 
		0.057023389325641945;
	setAttr -s 3 ".wl[110].w[0:2]"  8.204769185685366e-007 0.86790870343689908 
		0.13209047608618224;
	setAttr -s 3 ".wl[111].w[0:2]"  1.3696723313630647e-006 0.72265841885485549 
		0.27734021147281329;
	setAttr -s 3 ".wl[112].w[0:2]"  1.4477918144617343e-006 0.50243283443474152 
		0.49756571777344405;
	setAttr -s 3 ".wl[113].w[0:2]"  1.0650274439373837e-006 0.2529120501762136 
		0.74708688479634233;
	setAttr -s 3 ".wl[114].w[0:2]"  5.7183378959532095e-007 0.082606320476408521 
		0.91739310768980198;
	setAttr -s 3 ".wl[115].w[0:2]"  2.186015158578093e-007 0.017479411828621439 
		0.98252036956986266;
	setAttr -s 3 ".wl[116].w[0:2]"  5.9268177186009493e-008 0.002628611475424065 
		0.99737132925639882;
	setAttr -s 3 ".wl[117].w[0:2]"  1.2331655509294562e-008 0.00029045392008385668 
		0.99970953374826055;
	setAttr -s 3 ".wl[118].w[0:2]"  2.3058516181820626e-009 2.3048956198194209e-005 
		0.99997694873795018;
	setAttr -s 3 ".wl[119].w[0:2]"  5.1933031000456556e-010 2.5743111349549869e-006 
		0.99999742516953483;
	setAttr -s 3 ".wl[120].w[0:2]"  5.1903015451782193e-010 1.4084368676092513e-006 
		0.99999859104410216;
	setAttr -s 3 ".wl[121].w[0:2]"  2.3723203708815302e-010 4.769182801117889e-006 
		0.99999523057996687;
	setAttr -s 3 ".wl[122].w[0:2]"  2.4331428811082422e-010 0.0001460907640810154 
		0.99985390899260462;
	setAttr -s 3 ".wl[123].w[0:2]"  9.6128091500570616e-010 0.0059401592224130519 
		0.99405983981630597;
	setAttr -s 3 ".wl[124].w[0:2]"  2.9304710784382482e-009 0.060785412663533739 
		0.93921458440599526;
	setAttr -s 3 ".wl[125].w[0:2]"  5.2169399038303561e-009 0.26377932140491828 
		0.7362206733781419;
	setAttr -s 3 ".wl[126].w[0:2]"  6.6633856082309669e-009 0.60458639553786431 
		0.39541359779875002;
	setAttr -s 3 ".wl[127].w[0:2]"  1.4011941498997988e-008 0.87218629580564699 
		0.12781369018241151;
	setAttr -s 3 ".wl[128].w[0:2]"  9.0267934565833305e-008 0.97032546829435296 
		0.029674441437712373;
	setAttr -s 3 ".wl[129].w[0:2]"  4.5650581344019652e-007 0.96939121540200301 
		0.030608328092183473;
	setAttr -s 3 ".wl[130].w[0:2]"  1.2506611609155025e-006 0.91276129831924346 
		0.087237451019595583;
	setAttr -s 3 ".wl[131].w[0:2]"  1.9757175595418362e-006 0.78001594450777756 
		0.21998207977466289;
	setAttr -s 3 ".wl[132].w[0:2]"  2.0301261497382554e-006 0.54422147910509067 
		0.45577649076875965;
	setAttr -s 3 ".wl[133].w[0:2]"  1.473018904442538e-006 0.27159947173215487 
		0.72839905524894066;
	setAttr -s 3 ".wl[134].w[0:2]"  7.5232970333265932e-007 0.091512556757979216 
		0.90848669091231737;
	setAttr -s 3 ".wl[135].w[0:2]"  2.7472679280072257e-007 0.021649797712288976 
		0.97834992756091832;
	setAttr -s 3 ".wl[136].w[0:2]"  7.9053537940667188e-008 0.0037021848588550013 
		0.99629773608760697;
	setAttr -s 3 ".wl[137].w[0:2]"  1.8988481789710243e-008 0.00041316709232276633 
		0.99958681391919557;
	setAttr -s 3 ".wl[138].w[0:2]"  4.2986001952550737e-009 3.5756499180018672e-005 
		0.99996423920221988;
	setAttr -s 3 ".wl[139].w[0:2]"  1.2081378096995946e-009 4.9025582722739852e-006 
		0.99999509623359006;
	setAttr -s 3 ".wl[140].w[0:2]"  1.4391897749737238e-009 3.7992724132871213e-006 
		0.99999619928839689;
	setAttr -s 3 ".wl[141].w[0:2]"  6.2694323155805375e-010 5.958307095983685e-006 
		0.9999940410659609;
	setAttr -s 3 ".wl[142].w[0:2]"  3.6627808156271502e-010 0.00015074619866470656 
		0.99984925343505715;
	setAttr -s 3 ".wl[143].w[0:2]"  7.151232826653502e-010 0.0075173176468928734 
		0.99248268163798381;
	setAttr -s 3 ".wl[144].w[0:2]"  1.4706654878739093e-009 0.072103471889200604 
		0.92789652664013389;
	setAttr -s 3 ".wl[145].w[0:2]"  1.9383095544038802e-009 0.29062562613118431 
		0.70937437193050612;
	setAttr -s 3 ".wl[146].w[0:2]"  2.1820592735966327e-009 0.62868302690711986 
		0.37131697091082089;
	setAttr -s 3 ".wl[147].w[0:2]"  1.7909877515914232e-008 0.87951976665873455 
		0.12048021543138786;
	setAttr -s 3 ".wl[148].w[0:2]"  1.904924115035749e-007 0.97312779163348162 
		0.026872017874106837;
	setAttr -s 3 ".wl[149].w[0:2]"  8.6922703452448174e-007 0.97849541888114477 
		0.021503711891820636;
	setAttr -s 3 ".wl[150].w[0:2]"  2.0836204901677924e-006 0.9310658841191165 
		0.068932032260393336;
	setAttr -s 3 ".wl[151].w[0:2]"  3.0110884503219048e-006 0.79917730541574727 
		0.20081968349580251;
	setAttr -s 3 ".wl[152].w[0:2]"  2.9638579821349564e-006 0.55436929963414949 
		0.44562773650786852;
	setAttr -s 3 ".wl[153].w[0:2]"  2.0567462871707077e-006 0.28138620213389931 
		0.71861174111981352;
	setAttr -s 3 ".wl[154].w[0:2]"  9.9950012417346573e-007 0.10336301017525457 
		0.89663599032462116;
	setAttr -s 3 ".wl[155].w[0:2]"  3.675725689072472e-007 0.027946203808310529 
		0.97205342861912047;
	setAttr -s 3 ".wl[156].w[0:2]"  1.1344734924232407e-007 0.0051252256379469511 
		0.99487466091470378;
	setAttr -s 3 ".wl[157].w[0:2]"  3.0860495201967802e-008 0.00058831720044035776 
		0.99941165193906456;
	setAttr -s 3 ".wl[158].w[0:2]"  8.1163504054441294e-009 6.2165250118495982e-005 
		0.99993782663353115;
	setAttr -s 3 ".wl[159].w[0:2]"  2.8573135938083251e-009 1.0292667696430644e-005 
		0.9999897044749898;
	setAttr -s 3 ".wl[160].w[0:2]"  3.3879545144156941e-009 9.1410621901703577e-006 
		0.99999085554985523;
	setAttr -s 3 ".wl[161].w[0:2]"  1.5708324217442932e-009 1.0900320548819026e-005 
		0.9999890981086188;
	setAttr -s 3 ".wl[162].w[0:2]"  7.9178440305971326e-010 0.00018145498237450518 
		0.99981854422584115;
	setAttr -s 3 ".wl[163].w[0:2]"  1.0437646279463689e-009 0.0086459391373436105 
		0.99135405981889158;
	setAttr -s 3 ".wl[164].w[0:2]"  1.6649067212222761e-009 0.077207589505370058 
		0.92279240882972324;
	setAttr -s 3 ".wl[165].w[0:2]"  1.830698342368509e-009 0.29535237531326602 
		0.70464762285603577;
	setAttr -s 3 ".wl[166].w[0:2]"  3.4187019323715065e-009 0.62309267451782369 
		0.37690732206347449;
	setAttr -s 3 ".wl[167].w[0:2]"  4.8495310857760651e-008 0.86991402020788422 
		0.13008593129680496;
	setAttr -s 3 ".wl[168].w[0:2]"  3.9413913816896534e-007 0.96831131818173855 
		0.031688287679123295;
	setAttr -s 3 ".wl[169].w[0:2]"  1.5125643271431568e-006 0.97815257322588767 
		0.021845914209785027;
	setAttr -s 3 ".wl[170].w[0:2]"  3.3029784908912634e-006 0.93176819965953683 
		0.068228497361972396;
	setAttr -s 3 ".wl[171].w[0:2]"  4.51030453140491e-006 0.79358625083041912 
		0.20640923886504939;
	setAttr -s 3 ".wl[172].w[0:2]"  4.1759753322878322e-006 0.54775271077927734 
		0.45224311324539046;
	setAttr -s 3 ".wl[173].w[0:2]"  2.680349733167388e-006 0.2894523201841695 
		0.71054499946609739;
	setAttr -s 3 ".wl[174].w[0:2]"  1.2282104185283663e-006 0.11670481679899325 
		0.88329395499058816;
	setAttr -s 3 ".wl[175].w[0:2]"  4.4866389954241523e-007 0.033942686725232547 
		0.96605686461086793;
	setAttr -s 3 ".wl[176].w[0:2]"  1.4908714762705332e-007 0.0063985489381137373 
		0.99360130197473862;
	setAttr -s 3 ".wl[177].w[0:2]"  4.555961483842317e-008 0.00080783153951017629 
		0.99919212290087489;
	setAttr -s 3 ".wl[178].w[0:2]"  1.3684957210910803e-008 9.7593119023140477e-005 
		0.99990239319601959;
	setAttr -s 3 ".wl[179].w[0:2]"  6.0221242974969829e-009 1.9935108854261181e-005 
		0.99998005886902142;
	setAttr -s 3 ".wl[180].w[0:2]"  7.2281019095669332e-009 2.0215913720159863e-005 
		0.99997977685817785;
	setAttr -s 3 ".wl[181].w[0:2]"  3.4037127445097803e-009 2.343633686629182e-005 
		0.99997656025942094;
	setAttr -s 3 ".wl[182].w[0:2]"  1.6907554348427624e-009 0.00029315442641136244 
		0.99970684388283315;
	setAttr -s 3 ".wl[183].w[0:2]"  1.9554302015109324e-009 0.0095229001283110883 
		0.9904770979162586;
	setAttr -s 3 ".wl[184].w[0:2]"  2.5941856156694403e-009 0.078355720039447019 
		0.92164427736636723;
	setAttr -s 3 ".wl[185].w[0:2]"  2.986846320144901e-009 0.29032853332576086 
		0.70967146368739287;
	setAttr -s 3 ".wl[186].w[0:2]"  1.1523363311787934e-008 0.60752636008131067 
		0.39247362839532601;
	setAttr -s 3 ".wl[187].w[0:2]"  1.2298390775978264e-007 0.85246650435958304 
		0.14753337265650923;
	setAttr -s 3 ".wl[188].w[0:2]"  7.6482916182927784e-007 0.9559071237543405 
		0.04409211141649759;
	setAttr -s 3 ".wl[189].w[0:2]"  2.5862262515307974e-006 0.96830924653103934 
		0.031688167242709245;
	setAttr -s 3 ".wl[190].w[0:2]"  5.1568086042842293e-006 0.91621586128878074 
		0.083778981902614999;
	setAttr -s 3 ".wl[191].w[0:2]"  6.3701139352341729e-006 0.76928580870017249 
		0.23070782118589228;
	setAttr -s 3 ".wl[192].w[0:2]"  5.212918890460095e-006 0.5330069876796184 
		0.46698779940149121;
	setAttr -s 3 ".wl[193].w[0:2]"  2.957964654956092e-006 0.29556169996891962 
		0.70443534206642544;
	setAttr -s 3 ".wl[194].w[0:2]"  1.2511886665944828e-006 0.12618594839583205 
		0.87381280041550136;
	setAttr -s 3 ".wl[195].w[0:2]"  4.730908382902103e-007 0.037748234240061136 
		0.9622512926691007;
	setAttr -s 3 ".wl[196].w[0:2]"  1.7617762291444381e-007 0.0074111242403375908 
		0.99258869958203955;
	setAttr -s 3 ".wl[197].w[0:2]"  5.8656179825899204e-008 0.0010222283713189613 
		0.99897771297250115;
	setAttr -s 3 ".wl[198].w[0:2]"  2.1088237395005195e-008 0.0001381105889753956 
		0.99986186832278723;
	setAttr -s 3 ".wl[199].w[0:2]"  1.1693445448150993e-008 3.6934436165751637e-005 
		0.99996305387038886;
	setAttr -s 3 ".wl[200].w[0:2]"  1.2114076167846834e-008 3.751589723814379e-005 
		0.9999624719886856;
	setAttr -s 3 ".wl[201].w[0:2]"  5.7245030541541502e-009 4.5435805293722427e-005 
		0.99995455847020331;
	setAttr -s 3 ".wl[202].w[0:2]"  3.3152500055165722e-009 0.00049828172139163398 
		0.99950171496335838;
	setAttr -s 3 ".wl[203].w[0:2]"  3.5957609015418579e-009 0.01068205879789611 
		0.98931793760634312;
	setAttr -s 3 ".wl[204].w[0:2]"  4.2705420537912999e-009 0.079764492749500496 
		0.92023550297995738;
	setAttr -s 3 ".wl[205].w[0:2]"  6.5990931176728469e-009 0.28344673889115612 
		0.71655325450975071;
	setAttr -s 3 ".wl[206].w[0:2]"  3.9704485081755562e-008 0.58470404797293551 
		0.41529591232257956;
	setAttr -s 3 ".wl[207].w[0:2]"  2.9491090680303476e-007 0.82390180708273331 
		0.1760978980063598;
	setAttr -s 3 ".wl[208].w[0:2]"  1.3962085940062243e-006 0.93107733589529929 
		0.068921267896106711;
	setAttr -s 3 ".wl[209].w[0:2]"  3.9580001214440799e-006 0.94289368576873811 
		0.057102356231140398;
	setAttr -s 3 ".wl[210].w[0:2]"  6.7373792625786586e-006 0.88258888376964384 
		0.11740437885109367;
	setAttr -s 3 ".wl[211].w[0:2]"  7.1005981303029033e-006 0.7343820468874841 
		0.26561085251438549;
	setAttr -s 3 ".wl[212].w[0:2]"  4.9446210772682089e-006 0.51569716621544837 
		0.48429788916347438;
	setAttr -s 3 ".wl[213].w[0:2]"  2.4625847594985808e-006 0.29528372481827414 
		0.7047138125969663;
	setAttr -s 3 ".wl[214].w[0:2]"  1.0404428924429942e-006 0.12872856875724883 
		0.8712703907998588;
	setAttr -s 3 ".wl[215].w[0:2]"  4.5321341327091201e-007 0.038918716832190753 
		0.96108082995439581;
	setAttr -s 3 ".wl[216].w[0:2]"  1.8660980694274157e-007 0.0078132427800191966 
		0.9921865706101739;
	setAttr -s 3 ".wl[217].w[0:2]"  6.9235501149093854e-008 0.0011589455293506482 
		0.99884098523514808;
	setAttr -s 3 ".wl[218].w[0:2]"  3.0857826163079394e-008 0.00019271052445449545 
		0.99980725861771935;
	setAttr -s 3 ".wl[219].w[0:2]"  1.9609020245810556e-008 6.3873746349741507e-005 
		0.99993610664463006;
	setAttr -s 3 ".wl[220].w[0:2]"  1.6722311108981481e-008 6.4757606057176521e-005 
		0.99993522567163162;
	setAttr -s 3 ".wl[221].w[0:2]"  9.4111363426753689e-009 8.7275455991791141e-005 
		0.99991271513287183;
	setAttr -s 3 ".wl[222].w[0:2]"  7.3305249661807624e-009 0.00082565850700299346 
		0.99917433416247203;
	setAttr -s 3 ".wl[223].w[0:2]"  7.6526117570591298e-009 0.01238266161912132 
		0.98761733072826707;
	setAttr -s 3 ".wl[224].w[0:2]"  8.4150887305507229e-009 0.080758333889277834 
		0.91924165769563349;
	setAttr -s 3 ".wl[225].w[0:2]"  1.6179623900620333e-008 0.27168277964306703 
		0.72831720417730916;
	setAttr -s 3 ".wl[226].w[0:2]"  9.4489148413271743e-008 0.55346662812680314 
		0.44653327738404841;
	setAttr -s 3 ".wl[227].w[0:2]"  5.0589449366045131e-007 0.78223152653223194 
		0.21776796757327443;
	setAttr -s 3 ".wl[228].w[0:2]"  1.8725157236338928e-006 0.88650980486841224 
		0.11348832261586399;
	setAttr -s 3 ".wl[229].w[0:2]"  4.3820758040554322e-006 0.89619252933530502 
		0.1038030885888909;
	setAttr -s 3 ".wl[230].w[0:2]"  6.2131211785726885e-006 0.83326704728052414 
		0.16672673959829737;
	setAttr -s 3 ".wl[231].w[0:2]"  5.4866591246216695e-006 0.6915794288609004 
		0.30841508447997501;
	setAttr -s 3 ".wl[232].w[0:2]"  3.3042382592547096e-006 0.49026566159476948 
		0.50973103416697141;
	setAttr -s 3 ".wl[233].w[0:2]"  1.6347381686335147e-006 0.28445820703689256 
		0.71554015822493877;
	setAttr -s 3 ".wl[234].w[0:2]"  8.3531831023676286e-007 0.12416722004524872 
		0.87583194463644098;
	setAttr -s 3 ".wl[235].w[0:2]"  4.2598700115394887e-007 0.037174520934997533 
		0.96282505307800137;
	setAttr -s 3 ".wl[236].w[0:2]"  1.9352499231589681e-007 0.0076190358689710953 
		0.99238077060603658;
	setAttr -s 3 ".wl[237].w[0:2]"  8.2588631553001736e-008 0.0013202152892592964 
		0.99867970212210921;
	setAttr -s 3 ".wl[238].w[0:2]"  4.1582105611312286e-008 0.0002751528249388513 
		0.9997248055929554;
	setAttr -s 3 ".wl[239].w[0:2]"  2.6969479268830267e-008 0.00010267824054041523 
		0.99989729478998035;
	setAttr -s 3 ".wl[240].w[0:2]"  2.4104475537826721e-008 0.00013005173352478427 
		0.99986992416199971;
	setAttr -s 3 ".wl[241].w[0:2]"  1.7825083709002912e-008 0.00019431684657038385 
		0.99980566532834592;
	setAttr -s 3 ".wl[242].w[0:2]"  1.6818945251336777e-008 0.0013150799106459985 
		0.99868490327040882;
	setAttr -s 3 ".wl[243].w[0:2]"  1.6456013448503111e-008 0.013790415075477711 
		0.98620956846850882;
	setAttr -s 3 ".wl[244].w[0:2]"  1.6875931132874839e-008 0.079065160026866893 
		0.92093482309720209;
	setAttr -s 3 ".wl[245].w[0:2]"  3.0700362225113379e-008 0.25596280594882198 
		0.74403716335081582;
	setAttr -s 3 ".wl[246].w[0:2]"  1.3366694859467878e-007 0.51394949607604445 
		0.4860503702570072;
	setAttr -s 3 ".wl[247].w[0:2]"  5.4341273728904544e-007 0.7194468815308348 
		0.28055257505642789;
	setAttr -s 3 ".wl[248].w[0:2]"  1.6556257027889523e-006 0.81496527187991474 
		0.18503307249438242;
	setAttr -s 3 ".wl[249].w[0:2]"  3.2560740261596823e-006 0.82524551527492729 
		0.1747512286510465;
	setAttr -s 3 ".wl[250].w[0:2]"  3.8794057895422021e-006 0.76291515862697268 
		0.23708096196723782;
	setAttr -s 3 ".wl[251].w[0:2]"  2.9914875887590537e-006 0.63169457014504204 
		0.36830243836736914;
	setAttr -s 3 ".wl[252].w[0:2]"  1.8627569265991068e-006 0.45329648009937873 
		0.54670165714369467;
	setAttr -s 3 ".wl[253].w[0:2]"  1.2041754045448243e-006 0.26592082063153327 
		0.73407797519306228;
	setAttr -s 3 ".wl[254].w[0:2]"  7.6188472238639707e-007 0.11493334720879769 
		0.8850658909064798;
	setAttr -s 3 ".wl[255].w[0:2]"  4.2817275803888882e-007 0.034284508468729782 
		0.9657150633585122;
	setAttr -s 3 ".wl[256].w[0:2]"  2.1735369616830893e-007 0.0077406702453284432 
		0.99225911240097531;
	setAttr -s 3 ".wl[257].w[0:2]"  1.0248577858479315e-007 0.0016707879792412627 
		0.99832910953498033;
	setAttr -s 3 ".wl[258].w[0:2]"  5.4979242091357159e-008 0.00042886200682081606 
		0.99957108301393705;
	setAttr -s 3 ".wl[259].w[0:2]"  3.6138812823882786e-008 0.00018492530903506561 
		0.99981503855215226;
	setAttr -s 3 ".wl[260].w[0:2]"  3.7131013146988411e-008 0.00029955883972113795 
		0.99970040402926574;
	setAttr -s 3 ".wl[261].w[0:2]"  3.3656067593781708e-008 0.00046812442738951429 
		0.99953184191654276;
	setAttr -s 3 ".wl[262].w[0:2]"  3.3147542064910292e-008 0.0020364049549624632 
		0.99796356189749547;
	setAttr -s 3 ".wl[263].w[0:2]"  3.1975747258143061e-008 0.014889435387139336 
		0.98511053263711346;
	setAttr -s 3 ".wl[264].w[0:2]"  3.2095677729230766e-008 0.076461753285337636 
		0.92353821461898467;
	setAttr -s 3 ".wl[265].w[0:2]"  4.6333524328959086e-008 0.23587464991748283 
		0.76412530374899279;
	setAttr -s 3 ".wl[266].w[0:2]"  1.2782929702351889e-007 0.45754482035848659 
		0.54245505181221643;
	setAttr -s 3 ".wl[267].w[0:2]"  3.9994246510972551e-007 0.63252048324806054 
		0.36747911680947432;
	setAttr -s 3 ".wl[268].w[0:2]"  1.0306163392892052e-006 0.72019340673568122 
		0.27980556264797951;
	setAttr -s 3 ".wl[269].w[0:2]"  1.7401406191613608e-006 0.72907431557129587 
		0.27092394428808508;
	setAttr -s 3 ".wl[270].w[0:2]"  1.8720392875183957e-006 0.67190832962836011 
		0.32808979833235241;
	setAttr -s 3 ".wl[271].w[0:2]"  1.5723145395063653e-006 0.56466759856427828 
		0.43533082912118215;
	setAttr -s 3 ".wl[272].w[0:2]"  1.3573769437590059e-006 0.41555164467062083 
		0.58444699795243538;
	setAttr -s 3 ".wl[273].w[0:2]"  1.101288425978867e-006 0.24353490136617389 
		0.75646399734540015;
	setAttr -s 3 ".wl[274].w[0:2]"  7.4522919205537149e-007 0.10281910784149588 
		0.89718014692931192;
	setAttr -s 3 ".wl[275].w[0:2]"  4.5403834109135629e-007 0.031667175640954864 
		0.96833237032070418;
	setAttr -s 3 ".wl[276].w[0:2]"  2.5073843007348736e-007 0.0084308888574795814 
		0.99156886040409031;
	setAttr -s 3 ".wl[277].w[0:2]"  1.3198650989936656e-007 0.0022958072827590254 
		0.99770406073073115;
	setAttr -s 3 ".wl[278].w[0:2]"  7.8089570708524169e-008 0.00077752355783576946 
		0.99922239835259352;
	setAttr -s 3 ".wl[279].w[0:2]"  5.1409175591487845e-008 0.00038424623448993038 
		0.99961570235633457;
	setAttr -s 3 ".wl[280].w[0:2]"  5.8674200734368272e-008 0.00074676443967322678 
		0.99925317688612592;
	setAttr -s 3 ".wl[281].w[0:2]"  5.8439756151626634e-008 0.0011461247404559664 
		0.99885381681978802;
	setAttr -s 3 ".wl[282].w[0:2]"  5.9475273992947772e-008 0.0034177733771850231 
		0.99658216714754078;
	setAttr -s 3 ".wl[283].w[0:2]"  5.9037553175286205e-008 0.016825964347039063 
		0.98317397661540784;
	setAttr -s 3 ".wl[284].w[0:2]"  5.7541959531931883e-008 0.0729073803819901 
		0.92709256207605029;
	setAttr -s 3 ".wl[285].w[0:2]"  6.9070050530444939e-008 0.20728162839248804 
		0.79271830253746123;
	setAttr -s 3 ".wl[286].w[0:2]"  1.214140879392381e-007 0.38937744819712433 
		0.61062243038878761;
	setAttr -s 3 ".wl[287].w[0:2]"  2.7815182348765771e-007 0.53938974717155708 
		0.46060997467661957;
	setAttr -s 3 ".wl[288].w[0:2]"  5.9105488526330165e-007 0.61776226410833734 
		0.38223714483677734;
	setAttr -s 3 ".wl[289].w[0:2]"  9.0061044884457147e-007 0.6276711862382589 
		0.37232791315129227;
	setAttr -s 3 ".wl[290].w[0:2]"  1.0521577790454729e-006 0.589741126464983 
		0.41025782137723787;
	setAttr -s 3 ".wl[291].w[0:2]"  1.1697271177460774e-006 0.50969433428424793 
		0.49030449598863435;
	setAttr -s 3 ".wl[292].w[0:2]"  1.1997717233722701e-006 0.37498988473338707 
		0.62500891549488957;
	setAttr -s 3 ".wl[293].w[0:2]"  9.9114085036140024e-007 0.21021759178805022 
		0.7897814170710995;
	setAttr -s 3 ".wl[294].w[0:2]"  7.0035400896486669e-007 0.086047263509264005 
		0.91395203613672704;
	setAttr -s 3 ".wl[295].w[0:2]"  4.5780628928147887e-007 0.028840513470357411 
		0.97115902872335336;
	setAttr -s 3 ".wl[296].w[0:2]"  2.7855308887243832e-007 0.0094807870805215487 
		0.99051893436638949;
	setAttr -s 3 ".wl[297].w[0:2]"  1.7182501961990091e-007 0.0034450793912016962 
		0.99655474878377892;
	setAttr -s 3 ".wl[298].w[0:2]"  1.0991089394877843e-007 0.0015421834769411369 
		0.99845770661216482;
	setAttr -s 3 ".wl[299].w[0:2]"  7.2739136935191426e-008 0.00086829613293980994 
		0.99913163112792325;
	setAttr -s 3 ".wl[300].w[0:2]"  9.6217828626605163e-008 0.0020719739946324857 
		0.99792792978753897;
	setAttr -s 3 ".wl[301].w[0:2]"  9.9945763791676923e-008 0.0029718560792822077 
		0.99702804397495404;
	setAttr -s 3 ".wl[302].w[0:2]"  1.0438249310724614e-007 0.0062933578283946873 
		0.99370653778911222;
	setAttr -s 3 ".wl[303].w[0:2]"  1.0035685068439384e-007 0.01992252096186415 
		0.98007737868128531;
	setAttr -s 3 ".wl[304].w[0:2]"  9.6684409167159499e-008 0.068038046942142327 
		0.93196185637344842;
	setAttr -s 3 ".wl[305].w[0:2]"  1.1009004076273975e-007 0.17663275936534586 
		0.8233671305446133;
	setAttr -s 3 ".wl[306].w[0:2]"  1.5036969475830724e-007 0.32449208875192725 
		0.67550776087837805;
	setAttr -s 3 ".wl[307].w[0:2]"  2.5832484101747644e-007 0.45132590253328492 
		0.54867383914187406;
	setAttr -s 3 ".wl[308].w[0:2]"  4.4261653335368771e-007 0.52331078196937275 
		0.47668877541409399;
	setAttr -s 3 ".wl[309].w[0:2]"  6.3347047890009184e-007 0.54450641972221669 
		0.4554929468073044;
	setAttr -s 3 ".wl[310].w[0:2]"  8.2715382475540822e-007 0.52371363611395871 
		0.47628553673221635;
	setAttr -s 3 ".wl[311].w[0:2]"  9.9325023452464393e-007 0.44767840060635333 
		0.55232060614341216;
	setAttr -s 3 ".wl[312].w[0:2]"  9.8441418720042743e-007 0.30984054571687158 
		0.69015846986894136;
	setAttr -s 3 ".wl[313].w[0:2]"  8.0972108291813351e-007 0.16157030551432774 
		0.83842888476458932;
	setAttr -s 3 ".wl[314].w[0:2]"  6.0684799310651702e-007 0.067076696423482601 
		0.93292269672852435;
	setAttr -s 3 ".wl[315].w[0:2]"  4.3391478851272382e-007 0.02669699023494216 
		0.97330257585026914;
	setAttr -s 3 ".wl[316].w[0:2]"  3.0904663594888236e-007 0.01152868648827471 
		0.9884710044650894;
	setAttr -s 3 ".wl[317].w[0:2]"  2.2192082572734118e-007 0.0057051646167432532 
		0.99429461346243109;
	setAttr -s 3 ".wl[318].w[0:2]"  1.5170138881344446e-007 0.0032466377622720408 
		0.99675321053633903;
	setAttr -s 3 ".wl[319].w[0:2]"  1.0814794040979809e-007 0.0021865038778054076 
		0.99781338797425423;
	setAttr -s 3 ".wl[320].w[0:2]"  1.6137918546624152e-007 0.0060391247990200757 
		0.99396071382179441;
	setAttr -s 3 ".wl[321].w[0:2]"  1.6541459235319014e-007 0.0076616114784845805 
		0.99233822310692321;
	setAttr -s 3 ".wl[322].w[0:2]"  1.6303732860210668e-007 0.011978751079960817 
		0.98802108588271065;
	setAttr -s 3 ".wl[323].w[0:2]"  1.5131017021793467e-007 0.025248871082040297 
		0.97475097760778939;
	setAttr -s 3 ".wl[324].w[0:2]"  1.4967303923506027e-007 0.064585289124920342 
		0.93541456120204036;
	setAttr -s 3 ".wl[325].w[0:2]"  1.6109283702330965e-007 0.14646946202729735 
		0.85353037687986555;
	setAttr -s 3 ".wl[326].w[0:2]"  1.9224498938889014e-007 0.2566332445342478 
		0.74336656322076278;
	setAttr -s 3 ".wl[327].w[0:2]"  2.7560373342879608e-007 0.35777566959668761 
		0.642224054799579;
	setAttr -s 3 ".wl[328].w[0:2]"  3.9551867647234872e-007 0.42530685083313263 
		0.57469275364819072;
	setAttr -s 3 ".wl[329].w[0:2]"  5.3537660995959828e-007 0.45163136424186456 
		0.54836810038152539;
	setAttr -s 3 ".wl[330].w[0:2]"  6.9971141846143429e-007 0.42836775635418917 
		0.57163154393439242;
	setAttr -s 3 ".wl[331].w[0:2]"  7.9424410504569368e-007 0.34275116117313725 
		0.65724804458275765;
	setAttr -s 3 ".wl[332].w[0:2]"  7.4544608780517797e-007 0.21694102533029239 
		0.78305822922361989;
	setAttr -s 3 ".wl[333].w[0:2]"  6.2530097884083025e-007 0.10994392980259204 
		0.89005544489642918;
	setAttr -s 3 ".wl[334].w[0:2]"  5.0864192593802941e-007 0.051906543096053359 
		0.94809294826202062;
	setAttr -s 3 ".wl[335].w[0:2]"  4.1561635729954122e-007 0.026765714897498953 
		0.97323386948614365;
	setAttr -s 3 ".wl[336].w[0:2]"  3.4633687396573069e-007 0.015429035077766174 
		0.98457061858535977;
	setAttr -s 3 ".wl[337].w[0:2]"  2.7832166028298339e-007 0.0099867524215484071 
		0.99001296925679128;
	setAttr -s 3 ".wl[338].w[0:2]"  2.0895511476706464e-007 0.0071231384125467019 
		0.9928766526323386;
	setAttr -s 3 ".wl[339].w[0:2]"  1.6831309342504685e-007 0.0058556818333888325 
		0.99414414985351784;
	setAttr -s 3 ".wl[340].w[0:2]"  2.4379361919436414e-007 0.014744173906792836 
		0.98525558229958798;
	setAttr -s 3 ".wl[341].w[0:2]"  2.3249225055158772e-007 0.016706319428272831 
		0.98329344807947661;
	setAttr -s 3 ".wl[342].w[0:2]"  2.1579989744166689e-007 0.021511896716827371 
		0.9784878874832752;
	setAttr -s 3 ".wl[343].w[0:2]"  2.0136967694851893e-007 0.033462394745645559 
		0.96653740388467746;
	setAttr -s 3 ".wl[344].w[0:2]"  1.9748950557410242e-007 0.061163425865127387 
		0.93883637664536701;
	setAttr -s 3 ".wl[345].w[0:2]"  1.9762019492801635e-007 0.11215052013832516 
		0.88784928224147974;
	setAttr -s 3 ".wl[346].w[0:2]"  2.2036378228710021e-007 0.18193030793788389 
		0.81806947169833399;
	setAttr -s 3 ".wl[347].w[0:2]"  2.7947877298718705e-007 0.25215088366739263 
		0.7478488368538343;
	setAttr -s 3 ".wl[348].w[0:2]"  3.5675618034173591e-007 0.30146649110032053 
		0.6985331521434992;
	setAttr -s 3 ".wl[349].w[0:2]"  4.6314863553160337e-007 0.3156521559512343 
		0.68434738090013014;
	setAttr -s 3 ".wl[350].w[0:2]"  5.734528946027171e-007 0.28457015561116655 
		0.715429270935939;
	setAttr -s 3 ".wl[351].w[0:2]"  6.008540924421809e-007 0.21119553223262563 
		0.78880386691328197;
	setAttr -s 3 ".wl[352].w[0:2]"  5.4610908164743806e-007 0.12883334721442607 
		0.87116610667649219;
	setAttr -s 3 ".wl[353].w[0:2]"  4.7938454886170967e-007 0.072052238421625059 
		0.92794728219382594;
	setAttr -s 3 ".wl[354].w[0:2]"  4.2922040027485636e-007 0.043538943811716614 
		0.95646062696788314;
	setAttr -s 3 ".wl[355].w[0:2]"  3.9376388460962502e-007 0.029386043415197204 
		0.97061356282091826;
	setAttr -s 3 ".wl[356].w[0:2]"  3.6794725790458609e-007 0.021688541314222785 
		0.9783110907385193;
	setAttr -s 3 ".wl[357].w[0:2]"  3.2527130886334551e-007 0.017386034848198326 
		0.98261363988049288;
	setAttr -s 3 ".wl[358].w[0:2]"  2.7435202137963889e-007 0.014887456995015726 
		0.98511226865296286;
	setAttr -s 3 ".wl[359].w[0:2]"  2.5068423958171241e-007 0.014118199007736008 
		0.98588155030802438;
	setAttr -s 3 ".wl[360].w[0:2]"  2.9241215017741081e-007 0.028172751765947537 
		0.97182695582190215;
	setAttr -s 3 ".wl[361].w[0:2]"  2.7056837007383278e-007 0.029940295230202554 
		0.97005943420142748;
	setAttr -s 3 ".wl[362].w[0:2]"  2.5083306692349957e-007 0.034285984949955363 
		0.96571376421697774;
	setAttr -s 3 ".wl[363].w[0:2]"  2.3829175098984971e-007 0.043082891675851845 
		0.95691687003239723;
	setAttr -s 3 ".wl[364].w[0:2]"  2.3049036331487199e-007 0.0585520179961104 
		0.94144775151352633;
	setAttr -s 3 ".wl[365].w[0:2]"  2.2790957210633275e-007 0.084583728325516611 
		0.91541604376491126;
	setAttr -s 3 ".wl[366].w[0:2]"  2.4585157292760879e-007 0.12142205215531797 
		0.87857770199310903;
	setAttr -s 3 ".wl[367].w[0:2]"  2.8095518992636109e-007 0.15830388231993578 
		0.84169583672487425;
	setAttr -s 3 ".wl[368].w[0:2]"  3.2939779083784264e-007 0.18107409152303003 
		0.81892557907917918;
	setAttr -s 3 ".wl[369].w[0:2]"  3.980171811541599e-007 0.18092707890672866 
		0.81907252307609024;
	setAttr -s 3 ".wl[370].w[0:2]"  4.4742652339028448e-007 0.1554071838509713 
		0.84459236872250532;
	setAttr -s 3 ".wl[371].w[0:2]"  4.414389976396882e-007 0.11445426333420751 
		0.88554529522679493;
	setAttr -s 3 ".wl[372].w[0:2]"  4.0908392268104503e-007 0.077364649163363886 
		0.92263494175271343;
	setAttr -s 3 ".wl[373].w[0:2]"  3.8314699829792722e-007 0.054639154970073614 
		0.9453604618829281;
	setAttr -s 3 ".wl[374].w[0:2]"  3.6668225188039843e-007 0.042794810517835964 
		0.95720482279991215;
	setAttr -s 3 ".wl[375].w[0:2]"  3.6306114468753976e-007 0.035848974903839911 
		0.96415066203501554;
	setAttr -s 3 ".wl[376].w[0:2]"  3.6208197784879731e-007 0.031656984999771952 
		0.96834265291825017;
	setAttr -s 3 ".wl[377].w[0:2]"  3.4117579710547587e-007 0.029070971052368291 
		0.97092868777183472;
	setAttr -s 3 ".wl[378].w[0:2]"  3.1858152397736612e-007 0.02772911162207304 
		0.97227056979640292;
	setAttr -s 3 ".wl[379].w[0:2]"  3.0804213906717318e-007 0.027587438376406734 
		0.97241225358145422;
	setAttr -s 3 ".wl[380].w[0:2]"  4.6136191948369218e-008 0.011044668166663621 
		0.98895528569714442;
	setAttr -s 3 ".wl[381].w[0:2]"  3.1603307526385403e-007 0.064858564353005632 
		0.93514111961391899;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.9999200919144301 -0 0.012641589529709642 -0 -0 1 -0 0
		 -0.012641589529709642 -0 0.9999200919144301 -0 18.283756109146978 -97.428120729644007 6.7037639203272601 1;
	setAttr ".pm[1]" -type "matrix" 0.99981228479901285 -0 -0.019375117160357731 -0 -0 1 -0 0
		 0.019375117160357731 -0 0.99981228479901285 -0 -29.798807783513517 -101.93631015808178 7.9346019450072722 1;
	setAttr ".pm[2]" -type "matrix" 0.9940736587360961 -0 -0.10870860594742049 -0 -0 1 -0 0
		 0.10870860594742049 -0 0.9940736587360961 -0 -92.475792724568706 -82.456399135003693 16.269706317199205 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 5.5511151231257827e-017 -0 -0 1 -0 0 -5.5511151231257827e-017 -0 1 -0
		 -147.16514181203365 -8.7670726880665626 2.1322752688952109 1;
	setAttr ".gm" -type "matrix" 0.26128804831357227 -0.24138621510839658 0 0 0.10068787292983296 0.10898939607991674 0 0
		 0 0 0.13778329310480117 0 106.07147774991857 71.511966832751966 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak42";
	rename -uid "E0965C20-4086-64E1-8994-4FA6E9C7AC2E";
createNode objectSet -n "skinCluster6Set";
	rename -uid "B7FFCA9F-43A0-1F07-7AA7-28920E305675";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "1658850C-4CE3-F04B-879A-399A7BB3DFA3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "3D9150CA-400E-2088-2F8A-4C9B99240746";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet42";
	rename -uid "BC8A7590-4A36-C8E8-A20A-208148B06D4D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId93";
	rename -uid "5E999934-497F-BB29-C795-4EA57A8A7673";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "A3EB4AAE-420B-7980-48AD-6989BAA54FB1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "3C43E74F-4C4D-4CE2-0992-89BE560B868F";
	setAttr -s 382 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.0011423894087199905 0.98907129345639666 
		0.009786317134883378;
	setAttr -s 3 ".wl[1].w[0:2]"  0.001129196760335362 0.99181516900424727 
		0.0070556342354173148;
	setAttr -s 3 ".wl[2].w[0:2]"  0.0011949592131888639 0.99482593702337985 
		0.0039791037634313731;
	setAttr -s 3 ".wl[3].w[0:2]"  0.0013690074150550847 0.99678073983242088 
		0.0018502527525239615;
	setAttr -s 3 ".wl[4].w[0:2]"  0.0016965807967141303 0.99734901755162497 
		0.00095440165166092554;
	setAttr -s 3 ".wl[5].w[0:2]"  0.0023866603365824907 0.99697713361940454 
		0.00063620604401295664;
	setAttr -s 3 ".wl[6].w[0:2]"  0.0040458555745706152 0.99546486682241198 
		0.00048927760301748337;
	setAttr -s 3 ".wl[7].w[0:2]"  0.0077827196069090365 0.99179246452913961 
		0.00042481586395144255;
	setAttr -s 3 ".wl[8].w[0:2]"  0.015070465307774396 0.98452346769800181 
		0.00040606699422389262;
	setAttr -s 3 ".wl[9].w[0:2]"  0.025066973544084815 0.97452330056565606 
		0.00040972589025912461;
	setAttr -s 3 ".wl[10].w[0:2]"  0.031858714669683055 0.96770800393580869 
		0.00043328139450826009;
	setAttr -s 3 ".wl[11].w[0:2]"  0.029888076755279297 0.96962454018426025 
		0.00048738306046055782;
	setAttr -s 3 ".wl[12].w[0:2]"  0.021346469474379164 0.97806148564146145 
		0.00059204488415936249;
	setAttr -s 3 ".wl[13].w[0:2]"  0.012325730228929939 0.9868658137377545 
		0.00080845603331559327;
	setAttr -s 3 ".wl[14].w[0:2]"  0.0063461568857310444 0.99238592246277957 
		0.0012679206514894443;
	setAttr -s 3 ".wl[15].w[0:2]"  0.0034396782304192148 0.99440771859901311 
		0.0021526031705677465;
	setAttr -s 3 ".wl[16].w[0:2]"  0.0021291075875856536 0.99402537562685733 
		0.003845516785557015;
	setAttr -s 3 ".wl[17].w[0:2]"  0.0015253007406176506 0.99178967091411796 
		0.0066850283452643267;
	setAttr -s 3 ".wl[18].w[0:2]"  0.0013088833438354723 0.98893772138515967 
		0.0097533952710048503;
	setAttr -s 3 ".wl[19].w[0:2]"  0.0012106879969865595 0.98779224175049207 
		0.010997070252521376;
	setAttr -s 3 ".wl[20].w[0:2]"  0.00035207429670023075 0.97114433670165257 
		0.028503589001647352;
	setAttr -s 3 ".wl[21].w[0:2]"  0.00036041011350218869 0.97882851204719956 
		0.020811077839298229;
	setAttr -s 3 ".wl[22].w[0:2]"  0.00045426454204281402 0.98930918764434661 
		0.010236547813610471;
	setAttr -s 3 ".wl[23].w[0:2]"  0.00069672515818340727 0.99602289285875478 
		0.0032803819830617498;
	setAttr -s 3 ".wl[24].w[0:2]"  0.0012593300787988836 0.99788579087468354 
		0.00085487904651752736;
	setAttr -s 3 ".wl[25].w[0:2]"  0.0028106395989790493 0.99687829435274677 
		0.00031106604827415847;
	setAttr -s 3 ".wl[26].w[0:2]"  0.0076265159502713264 0.9922110304627435 
		0.00016245358698515811;
	setAttr -s 3 ".wl[27].w[0:2]"  0.021994462220031517 0.97789114893069451 
		0.00011438884927392784;
	setAttr -s 3 ".wl[28].w[0:2]"  0.051271466925776291 0.94862508360900089 
		0.00010344946522279211;
	setAttr -s 3 ".wl[29].w[0:2]"  0.084035574495720591 0.9158551419801817 
		0.00010928352409763961;
	setAttr -s 3 ".wl[30].w[0:2]"  0.096927725448882021 0.9029358551276353 
		0.00013641942348265577;
	setAttr -s 3 ".wl[31].w[0:2]"  0.082719302771657774 0.91707760582929498 
		0.00020309139904715518;
	setAttr -s 3 ".wl[32].w[0:2]"  0.054433212061047974 0.94520440675360651 
		0.00036238118534546066;
	setAttr -s 3 ".wl[33].w[0:2]"  0.027515078350643405 0.97169180677092948 
		0.00079311487842721631;
	setAttr -s 3 ".wl[34].w[0:2]"  0.011093602094363213 0.98708012119670663 
		0.0018262767089300526;
	setAttr -s 3 ".wl[35].w[0:2]"  0.0041962121849468187 0.99176464592520963 
		0.0040391418898435916;
	setAttr -s 3 ".wl[36].w[0:2]"  0.0016367716302162847 0.98972147538511424 
		0.0086417529846694562;
	setAttr -s 3 ".wl[37].w[0:2]"  0.000766063981687126 0.983153223971582 
		0.01608071204673087;
	setAttr -s 3 ".wl[38].w[0:2]"  0.00051581735503207645 0.97544595866617512 
		0.024038223978792749;
	setAttr -s 3 ".wl[39].w[0:2]"  0.0004074514277819181 0.97047790630169606 
		0.029114642270522073;
	setAttr -s 3 ".wl[40].w[0:2]"  9.3707923170138765e-005 0.90602931769582595 
		0.093876974381003786;
	setAttr -s 3 ".wl[41].w[0:2]"  0.00011665307246645293 0.93371310811549146 
		0.066170238812042106;
	setAttr -s 3 ".wl[42].w[0:2]"  0.00020944312739489023 0.96938982208797009 
		0.030400734784634915;
	setAttr -s 3 ".wl[43].w[0:2]"  0.00047561427499478152 0.99102896513306027 
		0.0084954205919450781;
	setAttr -s 3 ".wl[44].w[0:2]"  0.0013387121610117785 0.99722194910977158 
		0.001439338729216634;
	setAttr -s 3 ".wl[45].w[0:2]"  0.0049888973130222348 0.99480156683862186 
		0.00020953584835577171;
	setAttr -s 3 ".wl[46].w[0:2]"  0.021747522806734212 0.97818897858247866 
		6.3498610787004748e-005;
	setAttr -s 3 ".wl[47].w[0:2]"  0.072050230429467912 0.92791688864672683 
		3.2880923805249444e-005;
	setAttr -s 3 ".wl[48].w[0:2]"  0.15391622630754392 0.84605526463914482 
		2.8509053311308141e-005;
	setAttr -s 3 ".wl[49].w[0:2]"  0.21993409390382557 0.78003076537835225 
		3.5140717822058283e-005;
	setAttr -s 3 ".wl[50].w[0:2]"  0.2288510860462358 0.77108958057235788 
		5.933338140627185e-005;
	setAttr -s 3 ".wl[51].w[0:2]"  0.18540896370810889 0.81446250187329283 
		0.00012853441859818612;
	setAttr -s 3 ".wl[52].w[0:2]"  0.11752307387293816 0.88211417040183782 
		0.0003627557252240106;
	setAttr -s 3 ".wl[53].w[0:2]"  0.056475976438390633 0.94240881493937434 
		0.0011152086222349547;
	setAttr -s 3 ".wl[54].w[0:2]"  0.020968103574650811 0.97593836334019712 
		0.0030935330851522094;
	setAttr -s 3 ".wl[55].w[0:2]"  0.0063109161934634698 0.98561203611065962 
		0.0080770476958768045;
	setAttr -s 3 ".wl[56].w[0:2]"  0.0015707862136648161 0.97901717099120422 
		0.019412042795130913;
	setAttr -s 3 ".wl[57].w[0:2]"  0.00040788404925408281 0.96011480491402545 
		0.039477311036720447;
	setAttr -s 3 ".wl[58].w[0:2]"  0.00017235379850759163 0.93218766860291158 
		0.0676399775985808;
	setAttr -s 3 ".wl[59].w[0:2]"  0.00010987914016626252 0.90724915040555065 
		0.092640970454283045;
	setAttr -s 3 ".wl[60].w[0:2]"  2.2483640233877254e-005 0.75977811022056596 
		0.24019940613920024;
	setAttr -s 3 ".wl[61].w[0:2]"  4.1522821592383177e-005 0.83784970267266168 
		0.16210877450574593;
	setAttr -s 3 ".wl[62].w[0:2]"  0.00011789590626365873 0.9265424204539191 
		0.073339683639817257;
	setAttr -s 3 ".wl[63].w[0:2]"  0.00041254200480387389 0.97910032784292178 
		0.020487130152274411;
	setAttr -s 3 ".wl[64].w[0:2]"  0.0019570553790653894 0.99501499386939019 
		0.003027950751544444;
	setAttr -s 3 ".wl[65].w[0:2]"  0.01286784087253948 0.98693993202712582 
		0.00019222710033467994;
	setAttr -s 3 ".wl[66].w[0:2]"  0.063642149240333568 0.93632781182309488 
		3.0038936571541664e-005;
	setAttr -s 3 ".wl[67].w[0:2]"  0.18368381032806969 0.8163063147597126 
		9.8749122176778541e-006;
	setAttr -s 3 ".wl[68].w[0:2]"  0.33074454019246519 0.66924725964823029 
		8.2001593045811599e-006;
	setAttr -s 3 ".wl[69].w[0:2]"  0.4170644810869949 0.58292267102782802 
		1.2847885177065102e-005;
	setAttr -s 3 ".wl[70].w[0:2]"  0.40552236237450212 0.59444676018455966 
		3.0877440938158669e-005;
	setAttr -s 3 ".wl[71].w[0:2]"  0.31770751914992995 0.6821857418788666 
		0.00010673897120340734;
	setAttr -s 3 ".wl[72].w[0:2]"  0.19829546012006044 0.80126655500564692 
		0.000437984874292636;
	setAttr -s 3 ".wl[73].w[0:2]"  0.095991397505736431 0.90240938169035245 
		0.0015992208039110724;
	setAttr -s 3 ".wl[74].w[0:2]"  0.034907661069459264 0.95993815224176615 
		0.0051541866887745884;
	setAttr -s 3 ".wl[75].w[0:2]"  0.0090235015970761678 0.97501482773049652 
		0.01596167067242717;
	setAttr -s 3 ".wl[76].w[0:2]"  0.0016371257215550884 0.95435566065038413 
		0.04400721362806076;
	setAttr -s 3 ".wl[77].w[0:2]"  0.00024431065358523793 0.89764239637464005 
		0.10211329297177478;
	setAttr -s 3 ".wl[78].w[0:2]"  5.0315728762640032e-005 0.81261722789478696 
		0.18733245637645032;
	setAttr -s 3 ".wl[79].w[0:2]"  2.3799021546607452e-005 0.74915366256969429 
		0.25082253840875901;
	setAttr -s 3 ".wl[80].w[0:2]"  5.6042554006288888e-006 0.55695197396033158 
		0.44304242178426784;
	setAttr -s 3 ".wl[81].w[0:2]"  1.718406562719993e-005 0.70385326412397442 
		0.29612955181039846;
	setAttr -s 3 ".wl[82].w[0:2]"  7.9094895521425161e-005 0.86392842069241582 
		0.13599248441206274;
	setAttr -s 3 ".wl[83].w[0:2]"  0.00046037703711168031 0.96145489838119036 
		0.038084724581698044;
	setAttr -s 3 ".wl[84].w[0:2]"  0.004330123157375459 0.99037364860473587 
		0.0052962282378886168;
	setAttr -s 3 ".wl[85].w[0:2]"  0.033985332005325976 0.96574133651803939 
		0.0002733314766346421;
	setAttr -s 3 ".wl[86].w[0:2]"  0.14399634551819945 0.85598535640432305 
		1.8298077477542418e-005;
	setAttr -s 3 ".wl[87].w[0:2]"  0.34650897647921453 0.65348799200293395 
		3.0315178515027845e-006;
	setAttr -s 3 ".wl[88].w[0:2]"  0.54246273081048801 0.45753518051248288 
		2.0886770291204134e-006;
	setAttr -s 3 ".wl[89].w[0:2]"  0.62654398603150696 0.37345148178857129 
		4.532179921813304e-006;
	setAttr -s 3 ".wl[90].w[0:2]"  0.58080398363307961 0.41917720779358153 
		1.8808573338789192e-005;
	setAttr -s 3 ".wl[91].w[0:2]"  0.44710430761908598 0.55279129539111971 
		0.00010439698979423053;
	setAttr -s 3 ".wl[92].w[0:2]"  0.28260522879580879 0.7168576090060278 
		0.00053716219816334391;
	setAttr -s 3 ".wl[93].w[0:2]"  0.1388995009117423 0.85885500788694114 
		0.0022454912013165646;
	setAttr -s 3 ".wl[94].w[0:2]"  0.048237564054422248 0.94314340955450759 
		0.0086190263910702024;
	setAttr -s 3 ".wl[95].w[0:2]"  0.010921342618369384 0.95777076613059808 
		0.031307891251032588;
	setAttr -s 3 ".wl[96].w[0:2]"  0.0016261579781669336 0.90210948953183923 
		0.096264352489993793;
	setAttr -s 3 ".wl[97].w[0:2]"  0.00017778326828235875 0.77088487509093639 
		0.22893734164078122;
	setAttr -s 3 ".wl[98].w[0:2]"  2.001382752256735e-005 0.60683789572457036 
		0.39314209044790716;
	setAttr -s 3 ".wl[99].w[0:2]"  5.6323495261871059e-006 0.51470522294791343 
		0.4852891447025604;
	setAttr -s 3 ".wl[100].w[0:2]"  1.5006101861088422e-006 0.37315555677034234 
		0.62684294261947171;
	setAttr -s 3 ".wl[101].w[0:2]"  7.8896605954940594e-006 0.57489608958326066 
		0.42509602075614394;
	setAttr -s 3 ".wl[102].w[0:2]"  6.3826631369149448e-005 0.80333346637793857 
		0.19660270699069224;
	setAttr -s 3 ".wl[103].w[0:2]"  0.00077321250017920687 0.94491768441979584 
		0.054309103080024859;
	setAttr -s 3 ".wl[104].w[0:2]"  0.010218676310032548 0.98206021940220134 
		0.0077211042877660925;
	setAttr -s 3 ".wl[105].w[0:2]"  0.070085001932194482 0.92942952593428618 
		0.00048547213351934296;
	setAttr -s 3 ".wl[106].w[0:2]"  0.2494187516478211 0.75056704762448057 
		1.4200727698408919e-005;
	setAttr -s 3 ".wl[107].w[0:2]"  0.52288697292275266 0.4771120079523738 
		1.0191248735633993e-006;
	setAttr -s 3 ".wl[108].w[0:2]"  0.73826058277780404 0.26173900404428074 
		4.131779151335392e-007;
	setAttr -s 3 ".wl[109].w[0:2]"  0.79664946103519918 0.20334873159662958 
		1.807368171295553e-006;
	setAttr -s 3 ".wl[110].w[0:2]"  0.71750093947646887 0.28248510499067131 
		1.3955532859846065e-005;
	setAttr -s 3 ".wl[111].w[0:2]"  0.55386307700631932 0.44603041940849231 
		0.00010650358518837399;
	setAttr -s 3 ".wl[112].w[0:2]"  0.35422529584749712 0.645133881240888 
		0.00064082291161488296;
	setAttr -s 3 ".wl[113].w[0:2]"  0.17054313418059677 0.82639252864915924 
		0.0030643371702440596;
	setAttr -s 3 ".wl[114].w[0:2]"  0.055148939693924447 0.93094287929114738 
		0.013908181014928349;
	setAttr -s 3 ".wl[115].w[0:2]"  0.011289149046930718 0.93243755145858076 
		0.056273299494488442;
	setAttr -s 3 ".wl[116].w[0:2]"  0.0015137264353026342 0.82350166740600694 
		0.17498460615869044;
	setAttr -s 3 ".wl[117].w[0:2]"  0.00015087999167618841 0.6146958325179509 
		0.38515328749037281;
	setAttr -s 3 ".wl[118].w[0:2]"  1.3509847832387455e-005 0.40168575247164107 
		0.5983007376805265;
	setAttr -s 3 ".wl[119].w[0:2]"  1.9625278566616074e-006 0.30529939123527083 
		0.6946986462368725;
	setAttr -s 3 ".wl[120].w[0:2]"  4.7511282605291235e-007 0.25795407984284269 
		0.74204544504433134;
	setAttr -s 3 ".wl[121].w[0:2]"  4.1631678334989201e-006 0.49017774902208844 
		0.50981808781007798;
	setAttr -s 3 ".wl[122].w[0:2]"  5.6901585169191243e-005 0.7640576271047701 
		0.23588547131006055;
	setAttr -s 3 ".wl[123].w[0:2]"  0.0014358223055754146 0.93225538833074073 
		0.066308789363683882;
	setAttr -s 3 ".wl[124].w[0:2]"  0.019111505573541632 0.97048552910055441 
		0.010402965325903896;
	setAttr -s 3 ".wl[125].w[0:2]"  0.11382793840249368 0.88537607412414743 
		0.0007959874733587816;
	setAttr -s 3 ".wl[126].w[0:2]"  0.35648004661450838 0.64350228541970789 
		1.7667965783754916e-005;
	setAttr -s 3 ".wl[127].w[0:2]"  0.67019341188926507 0.3298059259510181 
		6.6215971699889057e-007;
	setAttr -s 3 ".wl[128].w[0:2]"  0.86826637370929005 0.13173351278935896 
		1.1350135104722756e-007;
	setAttr -s 3 ".wl[129].w[0:2]"  0.89499218548710258 0.10500682075578403 
		9.937571135054958e-007;
	setAttr -s 3 ".wl[130].w[0:2]"  0.80044731497278077 0.19954199960182989 
		1.0685425389359729e-005;
	setAttr -s 3 ".wl[131].w[0:2]"  0.62197988483602107 0.37791513973223267 
		0.00010497543174622143;
	setAttr -s 3 ".wl[132].w[0:2]"  0.39495574008113693 0.60433667251787782 
		0.00070758740098529431;
	setAttr -s 3 ".wl[133].w[0:2]"  0.18412004066303683 0.81190793963159269 
		0.0039720197053705209;
	setAttr -s 3 ".wl[134].w[0:2]"  0.05722486719847434 0.92181479693848989 
		0.020960335863035733;
	setAttr -s 3 ".wl[135].w[0:2]"  0.011463932560647752 0.90146811652750636 
		0.087067950911845868;
	setAttr -s 3 ".wl[136].w[0:2]"  0.0015818702602039567 0.74675046839593973 
		0.25166766134385632;
	setAttr -s 3 ".wl[137].w[0:2]"  0.00017235244243103719 0.50105071615135199 
		0.49877693140621693;
	setAttr -s 3 ".wl[138].w[0:2]"  1.2704140050305817e-005 0.28174389680654699 
		0.71824339905340262;
	setAttr -s 3 ".wl[139].w[0:2]"  1.1215896539802778e-006 0.18653762435906224 
		0.81346125405128367;
	setAttr -s 3 ".wl[140].w[0:2]"  2.2064010734935052e-007 0.21092927703436343 
		0.78907050232552911;
	setAttr -s 3 ".wl[141].w[0:2]"  2.4906454006472703e-006 0.45287527726107962 
		0.54712223209351984;
	setAttr -s 3 ".wl[142].w[0:2]"  4.8033705199764732e-005 0.74261681562082626 
		0.25733515067397394;
	setAttr -s 3 ".wl[143].w[0:2]"  0.0023316988325391237 0.92164614551692425 
		0.076022155650536646;
	setAttr -s 3 ".wl[144].w[0:2]"  0.029368951304088401 0.95750265643004506 
		0.013128392265866436;
	setAttr -s 3 ".wl[145].w[0:2]"  0.15604132634754186 0.84283031110568873 
		0.0011283625467695289;
	setAttr -s 3 ".wl[146].w[0:2]"  0.43743109125946245 0.56254097670989966 
		2.7932030637992092e-005;
	setAttr -s 3 ".wl[147].w[0:2]"  0.7505196381742294 0.24947945393471596 
		9.0789105459461519e-007;
	setAttr -s 3 ".wl[148].w[0:2]"  0.91974235084989797 0.080257559196471609 
		8.9953630442411906e-008;
	setAttr -s 3 ".wl[149].w[0:2]"  0.93211895395251421 0.067880487200128931 
		5.588473569958758e-007;
	setAttr -s 3 ".wl[150].w[0:2]"  0.83622717188208096 0.16376499008085921 
		7.8380370597662633e-006;
	setAttr -s 3 ".wl[151].w[0:2]"  0.65007377621424622 0.34983195980033921 
		9.4263985414660598e-005;
	setAttr -s 3 ".wl[152].w[0:2]"  0.40995278065818025 0.58930840285446018 
		0.00073881648735966629;
	setAttr -s 3 ".wl[153].w[0:2]"  0.19062132718821875 0.8041874964730481 
		0.0051911763387332416;
	setAttr -s 3 ".wl[154].w[0:2]"  0.060246720988511825 0.91025655054125432 
		0.029496728470233897;
	setAttr -s 3 ".wl[155].w[0:2]"  0.012767473866819362 0.87184614502602342 
		0.11538638110715727;
	setAttr -s 3 ".wl[156].w[0:2]"  0.0019871051256811455 0.69682224914394464 
		0.30119064573037418;
	setAttr -s 3 ".wl[157].w[0:2]"  0.00022612923509253094 0.45176599920813693 
		0.54800787155677066;
	setAttr -s 3 ".wl[158].w[0:2]"  1.3814805208494731e-005 0.24265042604931092 
		0.75733575914548057;
	setAttr -s 3 ".wl[159].w[0:2]"  1.0750185276196006e-006 0.14467369532860389 
		0.8553252296528685;
	setAttr -s 3 ".wl[160].w[0:2]"  1.4197650369893291e-007 0.21049814133007383 
		0.78950171669342251;
	setAttr -s 3 ".wl[161].w[0:2]"  1.7179072272069483e-006 0.44741582227453075 
		0.55258245981824206;
	setAttr -s 3 ".wl[162].w[0:2]"  5.2691015046201597e-005 0.73482189164703271 
		0.26512541733792122;
	setAttr -s 3 ".wl[163].w[0:2]"  0.0034214433920377457 0.9153770570980635 
		0.081201499509898717;
	setAttr -s 3 ".wl[164].w[0:2]"  0.038569117859967771 0.9468472166267583 
		0.014583665513273782;
	setAttr -s 3 ".wl[165].w[0:2]"  0.18270696085821136 0.81601955437915408 
		0.0012734847626345563;
	setAttr -s 3 ".wl[166].w[0:2]"  0.46901139325766145 0.53095603467489483 
		3.2572067443792026e-005;
	setAttr -s 3 ".wl[167].w[0:2]"  0.76388304187898193 0.23611593707892203 
		1.0210420959400016e-006;
	setAttr -s 3 ".wl[168].w[0:2]"  0.91957872025417364 0.080421199673837179 
		8.0071989158038696e-008;
	setAttr -s 3 ".wl[169].w[0:2]"  0.93354058211081925 0.066459075572244425 
		3.4231693640522698e-007;
	setAttr -s 3 ".wl[170].w[0:2]"  0.84004913249344226 0.1599448849346729 
		5.9825718849152413e-006;
	setAttr -s 3 ".wl[171].w[0:2]"  0.65335081714145371 0.3465665458860584 
		8.2636972487863051e-005;
	setAttr -s 3 ".wl[172].w[0:2]"  0.41591891899292033 0.58321639619095911 
		0.00086468481612054712;
	setAttr -s 3 ".wl[173].w[0:2]"  0.19775492560804095 0.79527530528932544 
		0.0069697691026335308;
	setAttr -s 3 ".wl[174].w[0:2]"  0.064879986183993016 0.89731799691556235 
		0.037802016900444525;
	setAttr -s 3 ".wl[175].w[0:2]"  0.014655526082175739 0.85008391760561341 
		0.13526055631221084;
	setAttr -s 3 ".wl[176].w[0:2]"  0.0023741031631517445 0.67255209037709585 
		0.32507380645975237;
	setAttr -s 3 ".wl[177].w[0:2]"  0.00025132164314655157 0.44126739078696692 
		0.55848128756988658;
	setAttr -s 3 ".wl[178].w[0:2]"  1.6899804374757582e-005 0.24602382473469056 
		0.75395927546093455;
	setAttr -s 3 ".wl[179].w[0:2]"  1.2872584925144448e-006 0.14922939535025662 
		0.85076931739125106;
	setAttr -s 3 ".wl[180].w[0:2]"  1.6177365750852965e-007 0.24902279427591889 
		0.75097704395042364;
	setAttr -s 3 ".wl[181].w[0:2]"  1.9912900007789273e-006 0.47635105780471404 
		0.52364695090528512;
	setAttr -s 3 ".wl[182].w[0:2]"  8.3471211119978109e-005 0.74822253560122076 
		0.25169399318765928;
	setAttr -s 3 ".wl[183].w[0:2]"  0.0042948596060162292 0.91858576682755055 
		0.077119373566433183;
	setAttr -s 3 ".wl[184].w[0:2]"  0.042406546803256992 0.94410196186783868 
		0.013491491328904228;
	setAttr -s 3 ".wl[185].w[0:2]"  0.18528504088191369 0.81363404156937691 
		0.0010809175487092597;
	setAttr -s 3 ".wl[186].w[0:2]"  0.45577394100193414 0.54420052368672789 
		2.5535311337952586e-005;
	setAttr -s 3 ".wl[187].w[0:2]"  0.73131408093063643 0.26868504845722563 
		8.7061213784712152e-007;
	setAttr -s 3 ".wl[188].w[0:2]"  0.88579075553378239 0.11420916890669204 
		7.5559525602221096e-008;
	setAttr -s 3 ".wl[189].w[0:2]"  0.90760482589305214 0.092394868874359978 
		3.0523258781090138e-007;
	setAttr -s 3 ".wl[190].w[0:2]"  0.81833625358828621 0.18165846421070073 
		5.2822010129479255e-006;
	setAttr -s 3 ".wl[191].w[0:2]"  0.6399655824647118 0.35994319586472062 
		9.1221670567399866e-005;
	setAttr -s 3 ".wl[192].w[0:2]"  0.41450270240901543 0.58436256509236328 
		0.0011347324986213652;
	setAttr -s 3 ".wl[193].w[0:2]"  0.20181809662300043 0.78953743946217514 
		0.0086444639148242908;
	setAttr -s 3 ".wl[194].w[0:2]"  0.068256887574410424 0.88823623021692244 
		0.043506882208667212;
	setAttr -s 3 ".wl[195].w[0:2]"  0.015683618814618428 0.83779828091434927 
		0.14651810027103229;
	setAttr -s 3 ".wl[196].w[0:2]"  0.0024063671189743178 0.66495246430360122 
		0.33264116857742443;
	setAttr -s 3 ".wl[197].w[0:2]"  0.00024641032085771965 0.4527080517760787 
		0.54704553790306354;
	setAttr -s 3 ".wl[198].w[0:2]"  2.1694967783887032e-005 0.27665994194235166 
		0.72331836308986441;
	setAttr -s 3 ".wl[199].w[0:2]"  1.6274348797213981e-006 0.18769454746243971 
		0.81230382510268051;
	setAttr -s 3 ".wl[200].w[0:2]"  2.7632767070897934e-007 0.33441357708544045 
		0.66558614658688897;
	setAttr -s 3 ".wl[201].w[0:2]"  2.8451627193767398e-006 0.54441687655596693 
		0.4555802782813137;
	setAttr -s 3 ".wl[202].w[0:2]"  0.00011121089592648511 0.78322169615247805 
		0.21666709295159547;
	setAttr -s 3 ".wl[203].w[0:2]"  0.0043720585630110812 0.93093530474535191 
		0.064692636691637023;
	setAttr -s 3 ".wl[204].w[0:2]"  0.040200056777007165 0.94931027307281268 
		0.010489670150180187;
	setAttr -s 3 ".wl[205].w[0:2]"  0.1709097541740533 0.82836342341890457 
		0.00072682240704212485;
	setAttr -s 3 ".wl[206].w[0:2]"  0.41495960415668476 0.58502077373365802 
		1.9622109657361502e-005;
	setAttr -s 3 ".wl[207].w[0:2]"  0.66757444412608358 0.33242459551077247 
		9.6036314398416967e-007;
	setAttr -s 3 ".wl[208].w[0:2]"  0.8216122127660872 0.17838766616791987 
		1.2106599298688905e-007;
	setAttr -s 3 ".wl[209].w[0:2]"  0.84924685861526261 0.1507527728809967 
		3.6850374047637134e-007;
	setAttr -s 3 ".wl[210].w[0:2]"  0.76629984760006631 0.2336946368017542 
		5.5155981795594259e-006;
	setAttr -s 3 ".wl[211].w[0:2]"  0.60427279210533236 0.39561030141425713 
		0.00011690648041042929;
	setAttr -s 3 ".wl[212].w[0:2]"  0.39867216647312304 0.60000012525847768 
		0.0013277082683993246;
	setAttr -s 3 ".wl[213].w[0:2]"  0.19861245822107296 0.79199412586625306 
		0.0093934159126741416;
	setAttr -s 3 ".wl[214].w[0:2]"  0.068347604709480897 0.88547936342611322 
		0.046173031864405835;
	setAttr -s 3 ".wl[215].w[0:2]"  0.015460727892617964 0.83477113702560213 
		0.14976813508177994;
	setAttr -s 3 ".wl[216].w[0:2]"  0.0022758804775701177 0.672610745511659 
		0.32511337401077078;
	setAttr -s 3 ".wl[217].w[0:2]"  0.00024939778194481798 0.48317791140099242 
		0.51657269081706259;
	setAttr -s 3 ".wl[218].w[0:2]"  2.6885528750915469e-005 0.33069748976601288 
		0.66927562470523627;
	setAttr -s 3 ".wl[219].w[0:2]"  2.2637803621856615e-006 0.26193365828213283 
		0.73806407793750506;
	setAttr -s 3 ".wl[220].w[0:2]"  5.4256906961726608e-007 0.45387071595716266 
		0.54612874147376766;
	setAttr -s 3 ".wl[221].w[0:2]"  3.1230956453946665e-006 0.63005727094176489 
		0.36993960596258968;
	setAttr -s 3 ".wl[222].w[0:2]"  0.00010466874911684857 0.82582403450948649 
		0.17407129674139663;
	setAttr -s 3 ".wl[223].w[0:2]"  0.0038704300833288033 0.9468099879951708 
		0.049319581921500363;
	setAttr -s 3 ".wl[224].w[0:2]"  0.035752151646794059 0.95709710360664824 
		0.0071507447465578152;
	setAttr -s 3 ".wl[225].w[0:2]"  0.15091574577877059 0.84861685549921839 
		0.00046739872201095975;
	setAttr -s 3 ".wl[226].w[0:2]"  0.36266236013994829 0.63731480083949432 
		2.2839020557404984e-005;
	setAttr -s 3 ".wl[227].w[0:2]"  0.586477044990936 0.41352138873556316 
		1.5662735007996012e-006;
	setAttr -s 3 ".wl[228].w[0:2]"  0.73022086468418135 0.26977886756516872 
		2.6775064990362303e-007;
	setAttr -s 3 ".wl[229].w[0:2]"  0.75566763681342097 0.2443318278514332 
		5.3533514582589343e-007;
	setAttr -s 3 ".wl[230].w[0:2]"  0.68210774461955137 0.31788563997250507 
		6.6154079434393322e-006;
	setAttr -s 3 ".wl[231].w[0:2]"  0.54534941816488047 0.4545201303031699 
		0.00013045153194968053;
	setAttr -s 3 ".wl[232].w[0:2]"  0.368012932628971 0.63066975670805359 
		0.0013173106629753529;
	setAttr -s 3 ".wl[233].w[0:2]"  0.18630814778628438 0.80423204717587726 
		0.009459805037838236;
	setAttr -s 3 ".wl[234].w[0:2]"  0.063801845604984503 0.89004317803580157 
		0.046154976359213944;
	setAttr -s 3 ".wl[235].w[0:2]"  0.01412279350685788 0.84127282621986554 
		0.14460438027327652;
	setAttr -s 3 ".wl[236].w[0:2]"  0.0020985192750934919 0.69328121989593217 
		0.30462026082897442;
	setAttr -s 3 ".wl[237].w[0:2]"  0.00025691796506178765 0.5280967557541284 
		0.47164632628080971;
	setAttr -s 3 ".wl[238].w[0:2]"  3.2068468569868953e-005 0.40834280627400082 
		0.59162512525742927;
	setAttr -s 3 ".wl[239].w[0:2]"  3.292472195485171e-006 0.37386336702609935 
		0.6261333405017051;
	setAttr -s 3 ".wl[240].w[0:2]"  1.3921941716774192e-006 0.56339312007832676 
		0.43660548772750168;
	setAttr -s 3 ".wl[241].w[0:2]"  3.6084610872270597e-006 0.70550250807873072 
		0.29449388346018218;
	setAttr -s 3 ".wl[242].w[0:2]"  8.3842298955791127e-005 0.86768958861720036 
		0.13222656908384389;
	setAttr -s 3 ".wl[243].w[0:2]"  0.0034474788915884102 0.96284134985211767 
		0.03371117125629404;
	setAttr -s 3 ".wl[244].w[0:2]"  0.031731449643911537 0.9638128840950565 
		0.0044556662610320706;
	setAttr -s 3 ".wl[245].w[0:2]"  0.12937631025460131 0.87025749839843569 
		0.00036619134696295493;
	setAttr -s 3 ".wl[246].w[0:2]"  0.30523631967407233 0.69473419400693881 
		2.9486318989005917e-005;
	setAttr -s 3 ".wl[247].w[0:2]"  0.49687333355653468 0.50312372806806938 
		2.9383753957738043e-006;
	setAttr -s 3 ".wl[248].w[0:2]"  0.62150879076971088 0.3784906088911652 
		6.0033912393187509e-007;
	setAttr -s 3 ".wl[249].w[0:2]"  0.64244110652364605 0.35755798265860839 
		9.108177454992081e-007;
	setAttr -s 3 ".wl[250].w[0:2]"  0.58606837316704408 0.41392236536808624 
		9.2614648697397076e-006;
	setAttr -s 3 ".wl[251].w[0:2]"  0.47944604768731136 0.52042644080593103 
		0.0001275115067576031;
	setAttr -s 3 ".wl[252].w[0:2]"  0.32672259103952661 0.67203439642046225 
		0.001243012540011126;
	setAttr -s 3 ".wl[253].w[0:2]"  0.16151112931499761 0.82938289710976376 
		0.0091059735752388044;
	setAttr -s 3 ".wl[254].w[0:2]"  0.052761283219174122 0.90398853311222216 
		0.043250183668603774;
	setAttr -s 3 ".wl[255].w[0:2]"  0.011335853791996057 0.85639522187522066 
		0.13226892433278326;
	setAttr -s 3 ".wl[256].w[0:2]"  0.0017732873159358826 0.72557290799821916 
		0.27265380468584482;
	setAttr -s 3 ".wl[257].w[0:2]"  0.00025483284624409463 0.5902849983350843 
		0.40946016881867153;
	setAttr -s 3 ".wl[258].w[0:2]"  3.6967547921153294e-005 0.50663624669045082 
		0.49332678576162803;
	setAttr -s 3 ".wl[259].w[0:2]"  5.2534820221878126e-006 0.49500530623060474 
		0.50498944028737303;
	setAttr -s 3 ".wl[260].w[0:2]"  3.9930224347606648e-006 0.64852324029424846 
		0.35147276668331662;
	setAttr -s 3 ".wl[261].w[0:2]"  7.4166163169052188e-006 0.77762104838530288 
		0.22237153499838036;
	setAttr -s 3 ".wl[262].w[0:2]"  8.1848016256013604e-005 0.91188959624443533 
		0.088028555739308623;
	setAttr -s 3 ".wl[263].w[0:2]"  0.0031203423495776857 0.97720192836415565 
		0.019677729286266675;
	setAttr -s 3 ".wl[264].w[0:2]"  0.026269321091861406 0.97100520542705482 
		0.002725473481083734;
	setAttr -s 3 ".wl[265].w[0:2]"  0.10210458079647934 0.89757331328209733 
		0.00032210592142324401;
	setAttr -s 3 ".wl[266].w[0:2]"  0.24359319752732975 0.75637106130253551 
		3.5741170134899945e-005;
	setAttr -s 3 ".wl[267].w[0:2]"  0.4072517065431977 0.59274287950173798 
		5.4139550643594145e-006;
	setAttr -s 3 ".wl[268].w[0:2]"  0.51554565197460611 0.48445291920958677 
		1.4288158071654332e-006;
	setAttr -s 3 ".wl[269].w[0:2]"  0.54165128143091612 0.458346760780588 
		1.9577884958463659e-006;
	setAttr -s 3 ".wl[270].w[0:2]"  0.50663588364294532 0.49334991063803313 
		1.4205719021466162e-005;
	setAttr -s 3 ".wl[271].w[0:2]"  0.4159293518117676 0.58394456923042892 
		0.00012607895780351655;
	setAttr -s 3 ".wl[272].w[0:2]"  0.26939580987206135 0.72945118391969366 
		0.0011530062082449422;
	setAttr -s 3 ".wl[273].w[0:2]"  0.12135834636885778 0.87050399219382235 
		0.0081376614373199208;
	setAttr -s 3 ".wl[274].w[0:2]"  0.036440652575918289 0.92599640433707553 
		0.037562943087006168;
	setAttr -s 3 ".wl[275].w[0:2]"  0.0077885307354908792 0.88025269750083368 
		0.11195877176367541;
	setAttr -s 3 ".wl[276].w[0:2]"  0.0013963493320321614 0.77402703207517098 
		0.22457661859279676;
	setAttr -s 3 ".wl[277].w[0:2]"  0.00024775095954203825 0.66832146426762906 
		0.33143078477282889;
	setAttr -s 3 ".wl[278].w[0:2]"  4.4416548771621355e-005 0.60184661366536929 
		0.39810896978585919;
	setAttr -s 3 ".wl[279].w[0:2]"  9.8183519191952856e-006 0.58988593532343925 
		0.4101042463246416;
	setAttr -s 3 ".wl[280].w[0:2]"  1.0662945240188178e-005 0.74484193706253676 
		0.25514739999222308;
	setAttr -s 3 ".wl[281].w[0:2]"  1.7326753212528386e-005 0.86038655774579476 
		0.1395961155009928;
	setAttr -s 3 ".wl[282].w[0:2]"  9.9300914911273317e-005 0.95314714302958703 
		0.046753556055501709;
	setAttr -s 3 ".wl[283].w[0:2]"  0.002387720427429203 0.98774964346162253 
		0.0098626361109484008;
	setAttr -s 3 ".wl[284].w[0:2]"  0.018115216158397108 0.98018994230814982 
		0.0016948415334529718;
	setAttr -s 3 ".wl[285].w[0:2]"  0.072420108078123074 0.92730870939513388 
		0.00027118252674299695;
	setAttr -s 3 ".wl[286].w[0:2]"  0.18466932421068255 0.81528388083174685 
		4.6794957570538568e-005;
	setAttr -s 3 ".wl[287].w[0:2]"  0.32217375037191409 0.67781470672853261 
		1.1542899553242231e-005;
	setAttr -s 3 ".wl[288].w[0:2]"  0.42161118146729304 0.5783840490272939 
		4.7695054130299687e-006;
	setAttr -s 3 ".wl[289].w[0:2]"  0.45846019095729268 0.5415339902742089 
		5.818768498557207e-006;
	setAttr -s 3 ".wl[290].w[0:2]"  0.42991087159928532 0.57006667983917536 
		2.2448561539258146e-005;
	setAttr -s 3 ".wl[291].w[0:2]"  0.3308367338198957 0.66903081194785829 
		0.00013245423224592044;
	setAttr -s 3 ".wl[292].w[0:2]"  0.18862925977077499 0.81035441395885444 
		0.0010163262703705804;
	setAttr -s 3 ".wl[293].w[0:2]"  0.074336249298168081 0.91903363992643317 
		0.0066301107753986548;
	setAttr -s 3 ".wl[294].w[0:2]"  0.021154518466950028 0.94980631688864048 
		0.02903916464440957;
	setAttr -s 3 ".wl[295].w[0:2]"  0.0050260353892629932 0.91211680095136427 
		0.082857163659372776;
	setAttr -s 3 ".wl[296].w[0:2]"  0.0011472435961615906 0.83457957159255691 
		0.16427318481128148;
	setAttr -s 3 ".wl[297].w[0:2]"  0.00025910949008879478 0.75065295291504275 
		0.24908793759486858;
	setAttr -s 3 ".wl[298].w[0:2]"  6.1513622414666796e-005 0.6898619915531049 
		0.3100764948244803;
	setAttr -s 3 ".wl[299].w[0:2]"  1.9176130845558717e-005 0.68039929720124581 
		0.31958152666790857;
	setAttr -s 3 ".wl[300].w[0:2]"  3.3800283834989835e-005 0.85696328648582443 
		0.14300291323034059;
	setAttr -s 3 ".wl[301].w[0:2]"  4.7885804055694299e-005 0.93433719196092058 
		0.065614922235023757;
	setAttr -s 3 ".wl[302].w[0:2]"  0.00014281818470857785 0.98023277161081945 
		0.019624410204472035;
	setAttr -s 3 ".wl[303].w[0:2]"  0.0014703528044918805 0.99381193290987535 
		0.0047177142856327488;
	setAttr -s 3 ".wl[304].w[0:2]"  0.010764651899017005 0.98812287773832741 
		0.0011124703626555514;
	setAttr -s 3 ".wl[305].w[0:2]"  0.047334741718847433 0.9523916288751092 
		0.00027362940604339249;
	setAttr -s 3 ".wl[306].w[0:2]"  0.12821704683035431 0.87169799241239754 
		8.4960757248068897e-005;
	setAttr -s 3 ".wl[307].w[0:2]"  0.23329787131927845 0.76666880254726322 
		3.3326133458319312e-005;
	setAttr -s 3 ".wl[308].w[0:2]"  0.31892528788596686 0.68105530964610461 
		1.9402467928521758e-005;
	setAttr -s 3 ".wl[309].w[0:2]"  0.35127611202845815 0.64870402188507637 
		1.986608646558789e-005;
	setAttr -s 3 ".wl[310].w[0:2]"  0.31200154079194159 0.68795818106419626 
		4.0278143862087942e-005;
	setAttr -s 3 ".wl[311].w[0:2]"  0.2117420081436524 0.78810485824326004 
		0.00015313361308762376;
	setAttr -s 3 ".wl[312].w[0:2]"  0.10388739490366528 0.89523417262293126 
		0.00087843247340347339;
	setAttr -s 3 ".wl[313].w[0:2]"  0.037890431583679288 0.95727221079812419 
		0.0048373576181965361;
	setAttr -s 3 ".wl[314].w[0:2]"  0.011898909873120403 0.96914586856874063 
		0.018955221558139019;
	setAttr -s 3 ".wl[315].w[0:2]"  0.0036597869640072308 0.94478482857643353 
		0.05155538445955922;
	setAttr -s 3 ".wl[316].w[0:2]"  0.0011026420040516655 0.89504649091185962 
		0.10385086708408878;
	setAttr -s 3 ".wl[317].w[0:2]"  0.0003193287966137555 0.83559892646010459 
		0.1640817447432816;
	setAttr -s 3 ".wl[318].w[0:2]"  9.990095829300234e-005 0.79252939959346114 
		0.20737069944824593;
	setAttr -s 3 ".wl[319].w[0:2]"  4.4491375077234962e-005 0.79637261209959642 
		0.20358289652532624;
	setAttr -s 3 ".wl[320].w[0:2]"  0.00013919251884471785 0.94281642852230574 
		0.057044378958849486;
	setAttr -s 3 ".wl[321].w[0:2]"  0.00017137039161892238 0.97647863556545567 
		0.023349994042925475;
	setAttr -s 3 ".wl[322].w[0:2]"  0.00030265639716599995 0.99199414715916523 
		0.0077031964436687621;
	setAttr -s 3 ".wl[323].w[0:2]"  0.0011063524639907272 0.99628420404475759 
		0.0026094434912516916;
	setAttr -s 3 ".wl[324].w[0:2]"  0.0063706967551885735 0.99268046853780234 
		0.00094883470700903873;
	setAttr -s 3 ".wl[325].w[0:2]"  0.027288850048746264 0.9723125578940468 
		0.00039859205720700993;
	setAttr -s 3 ".wl[326].w[0:2]"  0.074658752812771151 0.92515809424580941 
		0.00018315294141940609;
	setAttr -s 3 ".wl[327].w[0:2]"  0.14052645732747418 0.85937455880866553 
		9.8983863860356211e-005;
	setAttr -s 3 ".wl[328].w[0:2]"  0.19590040384073334 0.80402867144370771 
		7.0924715559012041e-005;
	setAttr -s 3 ".wl[329].w[0:2]"  0.2091686485248534 0.79076267974083392 
		6.8671734312764288e-005;
	setAttr -s 3 ".wl[330].w[0:2]"  0.16968365932701104 0.83021667930345344 
		9.966136953540589e-005;
	setAttr -s 3 ".wl[331].w[0:2]"  0.10198004838180388 0.89778440034015383 
		0.00023555127804220116;
	setAttr -s 3 ".wl[332].w[0:2]"  0.047046640155440383 0.95210668615866001 
		0.00084667368589963206;
	setAttr -s 3 ".wl[333].w[0:2]"  0.019311273926001842 0.97739094089077472 
		0.0032977851832234352;
	setAttr -s 3 ".wl[334].w[0:2]"  0.0079907410854961128 0.98141193052250275 
		0.010597328392001146;
	setAttr -s 3 ".wl[335].w[0:2]"  0.0032323314667435008 0.96997887356203338 
		0.02678879497122302;
	setAttr -s 3 ".wl[336].w[0:2]"  0.0012169796134299396 0.94519072080411348 
		0.053592299582456565;
	setAttr -s 3 ".wl[337].w[0:2]"  0.00045158992085567271 0.91474175150042181 
		0.084806658578722563;
	setAttr -s 3 ".wl[338].w[0:2]"  0.00020933779404222835 0.89556868612078544 
		0.10422197608517231;
	setAttr -s 3 ".wl[339].w[0:2]"  0.0001463190891389658 0.90618234163868672 
		0.093671339272174178;
	setAttr -s 3 ".wl[340].w[0:2]"  0.00051998017918784844 0.9817465603670934 
		0.01773345945371874;
	setAttr -s 3 ".wl[341].w[0:2]"  0.00058089923269579661 0.99120901333610034 
		0.0082100874312039003;
	setAttr -s 3 ".wl[342].w[0:2]"  0.00080723225124442247 0.99535663911262851 
		0.0038361286361271534;
	setAttr -s 3 ".wl[343].w[0:2]"  0.0015539765590611412 0.99650573615668214 
		0.001940287284256536;
	setAttr -s 3 ".wl[344].w[0:2]"  0.0043685612760432681 0.99454008402969785 
		0.0010913546942588166;
	setAttr -s 3 ".wl[345].w[0:2]"  0.013697465267186992 0.98567140914468554 
		0.00063112558812744861;
	setAttr -s 3 ".wl[346].w[0:2]"  0.035031434176712888 0.96458605542165621 
		0.00038251040163098923;
	setAttr -s 3 ".wl[347].w[0:2]"  0.065706792438708084 0.93401844590091032 
		0.00027476166038159521;
	setAttr -s 3 ".wl[348].w[0:2]"  0.089913813431892253 0.90985210326489274 
		0.00023408330321502552;
	setAttr -s 3 ".wl[349].w[0:2]"  0.090914449620610571 0.90884941803592723 
		0.00023613234346219248;
	setAttr -s 3 ".wl[350].w[0:2]"  0.068764012926047918 0.93093877144385972 
		0.00029721563009251981;
	setAttr -s 3 ".wl[351].w[0:2]"  0.040930107879337818 0.95857979837296448 
		0.00049009374769765188;
	setAttr -s 3 ".wl[352].w[0:2]"  0.021955121419310421 0.97698877723876876 
		0.0010561013419209011;
	setAttr -s 3 ".wl[353].w[0:2]"  0.01191543674401337 0.9855538913407379 
		0.0025306719152487188;
	setAttr -s 3 ".wl[354].w[0:2]"  0.0063019439250395015 0.98789059500333187 
		0.005807461071628584;
	setAttr -s 3 ".wl[355].w[0:2]"  0.003074016821376487 0.98488290569996961 
		0.012043077478653946;
	setAttr -s 3 ".wl[356].w[0:2]"  0.0014474947026230493 0.97688799671338067 
		0.021664508583996323;
	setAttr -s 3 ".wl[357].w[0:2]"  0.00078369211567117143 0.9667249806970758 
		0.032491327187252957;
	setAttr -s 3 ".wl[358].w[0:2]"  0.00057314945732446672 0.96173651891888801 
		0.037690331623787529;
	setAttr -s 3 ".wl[359].w[0:2]"  0.00051806100972302783 0.96853312730077934 
		0.030948811689497646;
	setAttr -s 3 ".wl[360].w[0:2]"  0.0016954665717076589 0.99183425733316954 
		0.0064702760951228467;
	setAttr -s 3 ".wl[361].w[0:2]"  0.0017924301133658831 0.9941478235013701 
		0.0040597463852640979;
	setAttr -s 3 ".wl[362].w[0:2]"  0.0021262147209954595 0.99524879153678103 
		0.0026249937422234493;
	setAttr -s 3 ".wl[363].w[0:2]"  0.002864862450602473 0.99528431803022333 
		0.0018508195191742388;
	setAttr -s 3 ".wl[364].w[0:2]"  0.0043542863775078364 0.99426820289077544 
		0.001377510731716739;
	setAttr -s 3 ".wl[365].w[0:2]"  0.0079691498928395194 0.99098991552571647 
		0.0010409345814440076;
	setAttr -s 3 ".wl[366].w[0:2]"  0.01584138400229123 0.98330926633365767 
		0.00084934966405107964;
	setAttr -s 3 ".wl[367].w[0:2]"  0.026809078571925327 0.97243194123930032 
		0.00075898018877434156;
	setAttr -s 3 ".wl[368].w[0:2]"  0.034367345320058737 0.96490910399783159 
		0.00072355068210967332;
	setAttr -s 3 ".wl[369].w[0:2]"  0.033239096190392475 0.966022504569513 
		0.0007383992400945053;
	setAttr -s 3 ".wl[370].w[0:2]"  0.025839432216894904 0.97333210911168733 
		0.00082845867141788973;
	setAttr -s 3 ".wl[371].w[0:2]"  0.018088156320646257 0.98085202894629409 
		0.001059814733059669;
	setAttr -s 3 ".wl[372].w[0:2]"  0.012407550218491548 0.9860313413051327 
		0.0015611084763757633;
	setAttr -s 3 ".wl[373].w[0:2]"  0.0082563764937801602 0.98927498155927396 
		0.0024686419469457858;
	setAttr -s 3 ".wl[374].w[0:2]"  0.0052290236128219201 0.99093319775700683 
		0.0038377786301711991;
	setAttr -s 3 ".wl[375].w[0:2]"  0.003296006712534643 0.99100118689274908 
		0.005702806394716267;
	setAttr -s 3 ".wl[376].w[0:2]"  0.0022906001032306058 0.98947414125881716 
		0.0082352586379522696;
	setAttr -s 3 ".wl[377].w[0:2]"  0.0018806078726106969 0.98707503443850908 
		0.011044357688880195;
	setAttr -s 3 ".wl[378].w[0:2]"  0.0017411933690479088 0.98628964398218699 
		0.011969162648765127;
	setAttr -s 3 ".wl[379].w[0:2]"  0.0016933836110365088 0.98855611583518255 
		0.0097505005537809157;
	setAttr -s 3 ".wl[380].w[0:2]"  0.0053336808316821593 0.99246036811937244 
		0.0022059510489453953;
	setAttr -s 3 ".wl[381].w[0:2]"  0.0075502682609582721 0.98962768431221493 
		0.0028220474268268038;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.9999200919144301 -0 0.012641589529709642 -0 -0 1 -0 0
		 -0.012641589529709642 -0 0.9999200919144301 -0 18.283756109146978 -97.428120729644007 6.7037639203272601 1;
	setAttr ".pm[1]" -type "matrix" 0.99981228479901285 -0 -0.019375117160357731 -0 -0 1 -0 0
		 0.019375117160357731 -0 0.99981228479901285 -0 -29.798807783513517 -101.93631015808178 7.9346019450072722 1;
	setAttr ".pm[2]" -type "matrix" 0.9940736587360961 -0 -0.10870860594742049 -0 -0 1 -0 0
		 0.10870860594742049 -0 0.9940736587360961 -0 -92.475792724568706 -82.456399135003693 16.269706317199205 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 5.5511151231257827e-017 -0 -0 1 -0 0 -5.5511151231257827e-017 -0 1 -0
		 -147.16514181203365 -8.7670726880665626 2.1322752688952109 1;
	setAttr ".gm" -type "matrix" 0.45352561597835278 -0.14035222595527275 0 0 0.054071548423797917 0.17472350109802429 0 0
		 0 0 0.20619719517491819 0 59.673876499697997 93.754883926241178 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak43";
	rename -uid "2E415085-492A-8C67-12A4-EFA62AFBBD57";
createNode objectSet -n "skinCluster7Set";
	rename -uid "83D29963-4643-5346-B37E-F29AF12A147D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "C4C116F5-45B9-9172-5B12-F89B8D7E1230";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "63032609-4D80-989C-635A-B3A28E56FC01";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet43";
	rename -uid "43780F1B-45AB-0413-13C6-AFB4AA88CB53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId95";
	rename -uid "C3A3CF21-4A27-D557-24AE-218E580D1A0F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	rename -uid "1E9C74F8-48FB-CA35-48D5-01A44906CF2C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	rename -uid "D5E14094-435A-F4D5-5DF7-678C3C4B5F6C";
	setAttr -s 382 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.98509656736435125 0.014899277906033888 
		4.1547296149060926e-006;
	setAttr -s 3 ".wl[1].w[0:2]"  0.98916362794534718 0.010833171161601431 
		3.2008930514696866e-006;
	setAttr -s 3 ".wl[2].w[0:2]"  0.99337538521421953 0.0066222598568222817 
		2.3549289580860225e-006;
	setAttr -s 3 ".wl[3].w[0:2]"  0.99629295887740643 0.0037052778329446198 
		1.7632896489149816e-006;
	setAttr -s 3 ".wl[4].w[0:2]"  0.99791687987518185 0.0020817386235549764 
		1.3815012630972521e-006;
	setAttr -s 3 ".wl[5].w[0:2]"  0.99869219052007474 0.0013066805709403269 
		1.1289089849597259e-006;
	setAttr -s 3 ".wl[6].w[0:2]"  0.99901563888917833 0.00098336811284146152 
		9.9299798016188276e-007;
	setAttr -s 3 ".wl[7].w[0:2]"  0.99912337291371522 0.00087564984886771011 
		9.7723741707792537e-007;
	setAttr -s 3 ".wl[8].w[0:2]"  0.99913021909324129 0.00086871802480498661 
		1.0628819536222693e-006;
	setAttr -s 3 ".wl[9].w[0:2]"  0.99907416180740027 0.00092460968162097338 
		1.2285109787846305e-006;
	setAttr -s 3 ".wl[10].w[0:2]"  0.99897727625547972 0.0010213089140178357 
		1.4148305024355455e-006;
	setAttr -s 3 ".wl[11].w[0:2]"  0.99886303304990265 0.0011354315336915017 
		1.5354164058327772e-006;
	setAttr -s 3 ".wl[12].w[0:2]"  0.99872461212036301 0.0012737868662011469 
		1.6010134357891322e-006;
	setAttr -s 3 ".wl[13].w[0:2]"  0.99848940987824797 0.0015088670641493927 
		1.7230576025837539e-006;
	setAttr -s 3 ".wl[14].w[0:2]"  0.99796355453891517 0.0020344302100141235 
		2.0152510706725731e-006;
	setAttr -s 3 ".wl[15].w[0:2]"  0.99673124154799431 0.0032661218180902989 
		2.6366339154204203e-006;
	setAttr -s 3 ".wl[16].w[0:2]"  0.99421770462719661 0.0057786543051292789 
		3.6410676740652681e-006;
	setAttr -s 3 ".wl[17].w[0:2]"  0.99020483812094306 0.009790492786553388 
		4.6690925035535804e-006;
	setAttr -s 3 ".wl[18].w[0:2]"  0.98589765390086936 0.01409718593017768 
		5.1601689529314357e-006;
	setAttr -s 3 ".wl[19].w[0:2]"  0.98368402368889096 0.016311058691062204 
		4.9176200467290474e-006;
	setAttr -s 3 ".wl[20].w[0:2]"  0.96685545732638778 0.033139636215332426 
		4.9064582797843147e-006;
	setAttr -s 3 ".wl[21].w[0:2]"  0.97672686415627497 0.023269855170450729 
		3.2806732742449721e-006;
	setAttr -s 3 ".wl[22].w[0:2]"  0.98738809057831856 0.012609821391328073 
		2.0880303534967751e-006;
	setAttr -s 3 ".wl[23].w[0:2]"  0.99466821459084653 0.005330420890635036 
		1.3645185184876424e-006;
	setAttr -s 3 ".wl[24].w[0:2]"  0.99807297308873522 0.0019261205510253041 
		9.0636023948284339e-007;
	setAttr -s 3 ".wl[25].w[0:2]"  0.99928319659481724 0.00071617133197598678 
		6.3207320680286489e-007;
	setAttr -s 3 ".wl[26].w[0:2]"  0.99962005174998259 0.00037940490239034611 
		5.4334762694726852e-007;
	setAttr -s 3 ".wl[27].w[0:2]"  0.99967728514489695 0.0003220840181396927 
		6.3083696342750621e-007;
	setAttr -s 3 ".wl[28].w[0:2]"  0.99963537179285489 0.00036373244063849793 
		8.9576650666963355e-007;
	setAttr -s 3 ".wl[29].w[0:2]"  0.99954348979244356 0.00045523680329379566 
		1.2734042624770466e-006;
	setAttr -s 3 ".wl[30].w[0:2]"  0.99944358630385255 0.0005548754417704203 
		1.5382543770670847e-006;
	setAttr -s 3 ".wl[31].w[0:2]"  0.99934722102429285 0.00065121954575259001 
		1.5594299546639253e-006;
	setAttr -s 3 ".wl[32].w[0:2]"  0.99917026343464832 0.00082816759901068924 
		1.5689663408707215e-006;
	setAttr -s 3 ".wl[33].w[0:2]"  0.99869995047704185 0.001298181973233717 
		1.8675497245076028e-006;
	setAttr -s 3 ".wl[34].w[0:2]"  0.99739545711327204 0.0026018866806301081 
		2.6562060978516604e-006;
	setAttr -s 3 ".wl[35].w[0:2]"  0.9940292714526443 0.0059665900329136847 
		4.1385144420109834e-006;
	setAttr -s 3 ".wl[36].w[0:2]"  0.98689606005728858 0.013097895391586352 
		6.0445511250974699e-006;
	setAttr -s 3 ".wl[37].w[0:2]"  0.97619284691229058 0.02379971491431206 
		7.438173397472332e-006;
	setAttr -s 3 ".wl[38].w[0:2]"  0.96639692687616074 0.033595510527784846 
		7.5625960543612355e-006;
	setAttr -s 3 ".wl[39].w[0:2]"  0.96269361170885381 0.03729986066566926 
		6.5276254768704209e-006;
	setAttr -s 3 ".wl[40].w[0:2]"  0.91892684902370603 0.081067024399327475 
		6.1265769663959663e-006;
	setAttr -s 3 ".wl[41].w[0:2]"  0.94252993872857305 0.057466403171311006 
		3.6581001160735476e-006;
	setAttr -s 3 ".wl[42].w[0:2]"  0.9707460504950467 0.029251882373135595 
		2.0671318176821158e-006;
	setAttr -s 3 ".wl[43].w[0:2]"  0.98949254551580546 0.010506275440909534 
		1.1790432849030224e-006;
	setAttr -s 3 ".wl[44].w[0:2]"  0.99725983996386713 0.0027395013993524648 
		6.5863678036497013e-007;
	setAttr -s 3 ".wl[45].w[0:2]"  0.99938189562106505 0.00061768555199580234 
		4.1882693907289302e-007;
	setAttr -s 3 ".wl[46].w[0:2]"  0.9997597420903015 0.00023980290612626753 
		4.5500357227816639e-007;
	setAttr -s 3 ".wl[47].w[0:2]"  0.99974960763606047 0.00024956345506560424 
		8.2890887384190661e-007;
	setAttr -s 3 ".wl[48].w[0:2]"  0.99963008546154375 0.00036834228927992837 
		1.5722491762543399e-006;
	setAttr -s 3 ".wl[49].w[0:2]"  0.99949529431092843 0.00050231219812519885 
		2.3934909463374546e-006;
	setAttr -s 3 ".wl[50].w[0:2]"  0.99942068846240373 0.00057659271648825546 
		2.7188211080163054e-006;
	setAttr -s 3 ".wl[51].w[0:2]"  0.99937563458015333 0.00062187849811793283 
		2.4869217286346719e-006;
	setAttr -s 3 ".wl[52].w[0:2]"  0.99914929681775155 0.00084836767122784516 
		2.3355110204994548e-006;
	setAttr -s 3 ".wl[53].w[0:2]"  0.99823659896331651 0.0017605166542823817 
		2.8843824012729486e-006;
	setAttr -s 3 ".wl[54].w[0:2]"  0.9951781159756945 0.0048173205645135522 
		4.5634597918752357e-006;
	setAttr -s 3 ".wl[55].w[0:2]"  0.98654494155189998 0.013447562531400649 
		7.4959166994550339e-006;
	setAttr -s 3 ".wl[56].w[0:2]"  0.9689736851801608 0.031015706745838836 
		1.0608074000423964e-005;
	setAttr -s 3 ".wl[57].w[0:2]"  0.9453510786883963 0.054636847782908157 
		1.207352869555746e-005;
	setAttr -s 3 ".wl[58].w[0:2]"  0.92407519520475112 0.07591356493898771 
		1.1239856261266068e-005;
	setAttr -s 3 ".wl[59].w[0:2]"  0.91292933652365715 0.087061731503540699 
		8.9319728022447692e-006;
	setAttr -s 3 ".wl[60].w[0:2]"  0.81716178574279497 0.18283028790623221 
		7.926350972819255e-006;
	setAttr -s 3 ".wl[61].w[0:2]"  0.87123684804877022 0.12875900283956751 
		4.1491116621046924e-006;
	setAttr -s 3 ".wl[62].w[0:2]"  0.93628714860210449 0.063710735107265409 
		2.1162906300618898e-006;
	setAttr -s 3 ".wl[63].w[0:2]"  0.97874868998106368 0.021250199151486498 
		1.1108674496515985e-006;
	setAttr -s 3 ".wl[64].w[0:2]"  0.99529103042272749 0.0047083759666230211 
		5.9361064958818466e-007;
	setAttr -s 3 ".wl[65].w[0:2]"  0.99918283075650127 0.000816732407886983 
		4.3683561181567023e-007;
	setAttr -s 3 ".wl[66].w[0:2]"  0.9997112696961189 0.00028798757386503597 
		7.4273001610284699e-007;
	setAttr -s 3 ".wl[67].w[0:2]"  0.99961754367611 0.00038073849707508675 
		1.7178268149625663e-006;
	setAttr -s 3 ".wl[68].w[0:2]"  0.99939187169735111 0.00060482240438526299 
		3.3058982635220481e-006;
	setAttr -s 3 ".wl[69].w[0:2]"  0.99919696210171849 0.00079822052169733159 
		4.8173765841754345e-006;
	setAttr -s 3 ".wl[70].w[0:2]"  0.99913750359467934 0.00085721421149936644 
		5.2821938212221568e-006;
	setAttr -s 3 ".wl[71].w[0:2]"  0.99913999417119825 0.00085530623689763032 
		4.6995919040049587e-006;
	setAttr -s 3 ".wl[72].w[0:2]"  0.99883818072806485 0.0011577003940435363 
		4.1188778915929815e-006;
	setAttr -s 3 ".wl[73].w[0:2]"  0.99716157688780271 0.0028336032668050603 
		4.8198453921996968e-006;
	setAttr -s 3 ".wl[74].w[0:2]"  0.99066196591169253 0.0093302477092105946 
		7.7863790968498841e-006;
	setAttr -s 3 ".wl[75].w[0:2]"  0.97226303380926038 0.027723937576367333 
		1.3028614372399439e-005;
	setAttr -s 3 ".wl[76].w[0:2]"  0.93759795625774844 0.062384135817923028 
		1.7907924328429975e-005;
	setAttr -s 3 ".wl[77].w[0:2]"  0.89052502404564116 0.10945549865899486 
		1.9477295363921611e-005;
	setAttr -s 3 ".wl[78].w[0:2]"  0.84045262099739837 0.15952992026509497 
		1.7458737506709848e-005;
	setAttr -s 3 ".wl[79].w[0:2]"  0.8075161120691895 0.19247089137394091 
		1.299655686946343e-005;
	setAttr -s 3 ".wl[80].w[0:2]"  0.65794882577891689 0.34204253613600799 
		8.6380850751632424e-006;
	setAttr -s 3 ".wl[81].w[0:2]"  0.76091070677248973 0.23908542379290607 
		3.8694346041653767e-006;
	setAttr -s 3 ".wl[82].w[0:2]"  0.88320600470039823 0.11679203051606851 
		1.964783533348616e-006;
	setAttr -s 3 ".wl[83].w[0:2]"  0.96215454572566717 0.037844352021681772 
		1.1022526510856618e-006;
	setAttr -s 3 ".wl[84].w[0:2]"  0.99207953611055277 0.0079198220471240286 
		6.4184232327495075e-007;
	setAttr -s 3 ".wl[85].w[0:2]"  0.99878622339080014 0.0012131637237105439 
		6.1288548938265918e-007;
	setAttr -s 3 ".wl[86].w[0:2]"  0.99958798364626289 0.00041066704538359074 
		1.3493083535491442e-006;
	setAttr -s 3 ".wl[87].w[0:2]"  0.99940659755893502 0.00059026447856510655 
		3.1379624997904697e-006;
	setAttr -s 3 ".wl[88].w[0:2]"  0.99906628565462641 0.00092788806591182177 
		5.8262794617318292e-006;
	setAttr -s 3 ".wl[89].w[0:2]"  0.99879191348211527 0.0011997404505283101 
		8.3460673562912406e-006;
	setAttr -s 3 ".wl[90].w[0:2]"  0.99872681241371597 0.0012640413299401861 
		9.1462563438253274e-006;
	setAttr -s 3 ".wl[91].w[0:2]"  0.99878619732009488 0.0012058065915663625 
		7.9960883388291472e-006;
	setAttr -s 3 ".wl[92].w[0:2]"  0.99841766200649695 0.0015758006298407198 
		6.5373636623186978e-006;
	setAttr -s 3 ".wl[93].w[0:2]"  0.99560739561197464 0.0043853731513247554 
		7.2312367005740597e-006;
	setAttr -s 3 ".wl[94].w[0:2]"  0.98375164723307329 0.016236230690980426 
		1.2122075946054316e-005;
	setAttr -s 3 ".wl[95].w[0:2]"  0.95160875835756964 0.048370290708288043 
		2.0950934142298184e-005;
	setAttr -s 3 ".wl[96].w[0:2]"  0.89109192096798717 0.10887917888778989 
		2.8900144222922804e-005;
	setAttr -s 3 ".wl[97].w[0:2]"  0.80067490091703331 0.19929341508239928 
		3.1684000567475974e-005;
	setAttr -s 3 ".wl[98].w[0:2]"  0.69990049233405471 0.30007224241953134 
		2.7265246413977172e-005;
	setAttr -s 3 ".wl[99].w[0:2]"  0.63710496844704212 0.36287749928983098 
		1.753226312707336e-005;
	setAttr -s 3 ".wl[100].w[0:2]"  0.47559397447721746 0.52439890562969116 
		7.1198930912858201e-006;
	setAttr -s 3 ".wl[101].w[0:2]"  0.63503651581626697 0.36496061976992433 
		2.8644138087305267e-006;
	setAttr -s 3 ".wl[102].w[0:2]"  0.82225334368782277 0.17774494638024688 
		1.7099319303467871e-006;
	setAttr -s 3 ".wl[103].w[0:2]"  0.9425419790234022 0.057456917282545365 
		1.1036940524421079e-006;
	setAttr -s 3 ".wl[104].w[0:2]"  0.98805421370842395 0.011945080665140375 
		7.0562643563375411e-007;
	setAttr -s 3 ".wl[105].w[0:2]"  0.99824661804162562 0.0017525313009612992 
		8.5065741314707166e-007;
	setAttr -s 3 ".wl[106].w[0:2]"  0.99945392335696825 0.00054402114731978723 
		2.0554957118704164e-006;
	setAttr -s 3 ".wl[107].w[0:2]"  0.99919233969225729 0.00080290640104992725 
		4.7539066927359679e-006;
	setAttr -s 3 ".wl[108].w[0:2]"  0.99872480825516385 0.0012663595737331841 
		8.8321711030630631e-006;
	setAttr -s 3 ".wl[109].w[0:2]"  0.99835995581788284 0.0016274210403418778 
		1.2623141775385397e-005;
	setAttr -s 3 ".wl[110].w[0:2]"  0.9983001581816664 0.0016861796002660848 
		1.3662218067466107e-005;
	setAttr -s 3 ".wl[111].w[0:2]"  0.99844826400633313 0.0015401628624697507 
		1.1573131197104734e-005;
	setAttr -s 3 ".wl[112].w[0:2]"  0.99800148938689504 0.0019895501099061051 
		8.9605031987470364e-006;
	setAttr -s 3 ".wl[113].w[0:2]"  0.99357974331681687 0.0064104598694179754 
		9.7968137651418778e-006;
	setAttr -s 3 ".wl[114].w[0:2]"  0.97508092748664632 0.024901680880735771 
		1.7391632618019689e-005;
	setAttr -s 3 ".wl[115].w[0:2]"  0.92639799334980344 0.073571091644601863 
		3.091500559453178e-005;
	setAttr -s 3 ".wl[116].w[0:2]"  0.83020069878395042 0.16975559388245831 
		4.370733359124374e-005;
	setAttr -s 3 ".wl[117].w[0:2]"  0.68276654571655826 0.31718594920941862 
		4.7505074023020657e-005;
	setAttr -s 3 ".wl[118].w[0:2]"  0.527669165931553 0.47229433911719521 
		3.6494951251735869e-005;
	setAttr -s 3 ".wl[119].w[0:2]"  0.43860589203390782 0.56137523014282009 
		1.8877823272086553e-005;
	setAttr -s 3 ".wl[120].w[0:2]"  0.32233485069226669 0.67766020158835938 
		4.9477193739390732e-006;
	setAttr -s 3 ".wl[121].w[0:2]"  0.52884424927371243 0.47115381258431716 
		1.9381419705201516e-006;
	setAttr -s 3 ".wl[122].w[0:2]"  0.76923846476261659 0.23076010256192672 
		1.432675456763312e-006;
	setAttr -s 3 ".wl[123].w[0:2]"  0.92421254081161774 0.075786413711292092 
		1.0454770900249033e-006;
	setAttr -s 3 ".wl[124].w[0:2]"  0.98369399673304114 0.01630525537037044 
		7.478965883651941e-007;
	setAttr -s 3 ".wl[125].w[0:2]"  0.99759690835238879 0.0024020230254274784 
		1.0686221837931239e-006;
	setAttr -s 3 ".wl[126].w[0:2]"  0.9993203924771753 0.00067689766192000653 
		2.7098609046755979e-006;
	setAttr -s 3 ".wl[127].w[0:2]"  0.99898221162786938 0.0010114021026795816 
		6.3862694509713427e-006;
	setAttr -s 3 ".wl[128].w[0:2]"  0.99838758466643962 0.0016005299457392346 
		1.1885387821165439e-005;
	setAttr -s 3 ".wl[129].w[0:2]"  0.99795330035937513 0.0020300187423803822 
		1.668089824456202e-005;
	setAttr -s 3 ".wl[130].w[0:2]"  0.99792732828094133 0.0020551217970813983 
		1.7549921977319893e-005;
	setAttr -s 3 ".wl[131].w[0:2]"  0.99817479471536397 0.0018108621602583917 
		1.4343124377601305e-005;
	setAttr -s 3 ".wl[132].w[0:2]"  0.99757680485780176 0.0024124722325047226 
		1.0722909693436487e-005;
	setAttr -s 3 ".wl[133].w[0:2]"  0.99143819612474282 0.0085498928975932132 
		1.1910977664025847e-005;
	setAttr -s 3 ".wl[134].w[0:2]"  0.96709387482782494 0.032884165386199045 
		2.1959785975997984e-005;
	setAttr -s 3 ".wl[135].w[0:2]"  0.90266876190186363 0.097291413220787104 
		3.9824877349213872e-005;
	setAttr -s 3 ".wl[136].w[0:2]"  0.77092659372658023 0.22901648623585016 
		5.692003756957596e-005;
	setAttr -s 3 ".wl[137].w[0:2]"  0.57339973274271316 0.42654170349767156 
		5.8563759615262965e-005;
	setAttr -s 3 ".wl[138].w[0:2]"  0.37610485425123719 0.62385581889886799 
		3.9326849894831049e-005;
	setAttr -s 3 ".wl[139].w[0:2]"  0.26905783259951294 0.73092544075746413 
		1.6726643022963376e-005;
	setAttr -s 3 ".wl[140].w[0:2]"  0.22996043147573622 0.7700358879015643 
		3.6806226995338665e-006;
	setAttr -s 3 ".wl[141].w[0:2]"  0.46328965353640028 0.536708979330214 
		1.367133385682895e-006;
	setAttr -s 3 ".wl[142].w[0:2]"  0.73393925106043556 0.26605956223758709 
		1.1867019775497855e-006;
	setAttr -s 3 ".wl[143].w[0:2]"  0.91039603875665387 0.089602971155003125 
		9.9008834301145466e-007;
	setAttr -s 3 ".wl[144].w[0:2]"  0.98020907447933892 0.019790136633612187 
		7.8888704894703906e-007;
	setAttr -s 3 ".wl[145].w[0:2]"  0.99709814860530277 0.0029006118842067772 
		1.2395104903062169e-006;
	setAttr -s 3 ".wl[146].w[0:2]"  0.99918600176781314 0.0008107494876307094 
		3.2487445560539164e-006;
	setAttr -s 3 ".wl[147].w[0:2]"  0.99878737257572914 0.0012049014958630875 
		7.7259284077360515e-006;
	setAttr -s 3 ".wl[148].w[0:2]"  0.99809153819708318 0.0018942085996667092 
		1.4253203250194882e-005;
	setAttr -s 3 ".wl[149].w[0:2]"  0.99761655897525225 0.0023639356273134939 
		1.9505397434032438e-005;
	setAttr -s 3 ".wl[150].w[0:2]"  0.99764573944177815 0.0023344593759414482 
		1.9801182280402766e-005;
	setAttr -s 3 ".wl[151].w[0:2]"  0.99797817830686408 0.0020061791474531446 
		1.5642545682725843e-005;
	setAttr -s 3 ".wl[152].w[0:2]"  0.99724388025933275 0.0027447318916418682 
		1.1387849025350749e-005;
	setAttr -s 3 ".wl[153].w[0:2]"  0.99015700368140436 0.0098303388685152364 
		1.2657450080530948e-005;
	setAttr -s 3 ".wl[154].w[0:2]"  0.96273473686131683 0.037241491167012392 
		2.3771971670827352e-005;
	setAttr -s 3 ".wl[155].w[0:2]"  0.88719110417195812 0.11276490482520127 
		4.3991002840606012e-005;
	setAttr -s 3 ".wl[156].w[0:2]"  0.72862713690167891 0.27131035115883351 
		6.2511939487675967e-005;
	setAttr -s 3 ".wl[157].w[0:2]"  0.49677162838665934 0.50316742973826079 
		6.094187507988249e-005;
	setAttr -s 3 ".wl[158].w[0:2]"  0.27500055389971961 0.72496177338740087 
		3.7672712879424065e-005;
	setAttr -s 3 ".wl[159].w[0:2]"  0.16304689660166302 0.83693865370397791 
		1.4449694359045857e-005;
	setAttr -s 3 ".wl[160].w[0:2]"  0.1957447271491834 0.80425233844389366 
		2.9344069229825973e-006;
	setAttr -s 3 ".wl[161].w[0:2]"  0.43638010747484163 0.5636188419552679 
		1.0505698905846816e-006;
	setAttr -s 3 ".wl[162].w[0:2]"  0.71844854630650867 0.2815504002327231 
		1.053460768078504e-006;
	setAttr -s 3 ".wl[163].w[0:2]"  0.90517212154629501 0.094826919022332673 
		9.5943137235907056e-007;
	setAttr -s 3 ".wl[164].w[0:2]"  0.97941082399568036 0.020588353650128302 
		8.2235419122822552e-007;
	setAttr -s 3 ".wl[165].w[0:2]"  0.99695656635740082 0.0030420535314450536 
		1.3801111541298063e-006;
	setAttr -s 3 ".wl[166].w[0:2]"  0.99907070669854925 0.00092563975311093128 
		3.6535483399140692e-006;
	setAttr -s 3 ".wl[167].w[0:2]"  0.99862357180678296 0.0013677329824209768 
		8.6952107961109833e-006;
	setAttr -s 3 ".wl[168].w[0:2]"  0.99785888916449561 0.0021252938879433099 
		1.5816947560928914e-005;
	setAttr -s 3 ".wl[169].w[0:2]"  0.99738703687608843 0.0025920826837866891 
		2.0880440124943445e-005;
	setAttr -s 3 ".wl[170].w[0:2]"  0.9974810698719363 0.002498470251845557 
		2.0459876218053177e-005;
	setAttr -s 3 ".wl[171].w[0:2]"  0.99786727535232844 0.0021168984761542561 
		1.5826171517344151e-005;
	setAttr -s 3 ".wl[172].w[0:2]"  0.99710422361934026 0.002884536530626057 
		1.1239850033800078e-005;
	setAttr -s 3 ".wl[173].w[0:2]"  0.9898925238080678 0.010095119730661477 
		1.2356461270816192e-005;
	setAttr -s 3 ".wl[174].w[0:2]"  0.96100821940119996 0.038968153910294595 
		2.3626688505471081e-005;
	setAttr -s 3 ".wl[175].w[0:2]"  0.87615466283159327 0.12380082732592913 
		4.4509842477758438e-005;
	setAttr -s 3 ".wl[176].w[0:2]"  0.69837416507975558 0.3015632012970349 
		6.2633623209514317e-005;
	setAttr -s 3 ".wl[177].w[0:2]"  0.4511699155976403 0.54877110057020051 
		5.8983832159258949e-005;
	setAttr -s 3 ".wl[178].w[0:2]"  0.22716360857624282 0.77280156131578448 
		3.4830107972808507e-005;
	setAttr -s 3 ".wl[179].w[0:2]"  0.12230852602032133 0.87767885350920161 
		1.2620470477048724e-005;
	setAttr -s 3 ".wl[180].w[0:2]"  0.20395320080915175 0.79604455598783008 
		2.243203018154197e-006;
	setAttr -s 3 ".wl[181].w[0:2]"  0.44408047747999946 0.5559186430362919 
		8.7948370874180095e-007;
	setAttr -s 3 ".wl[182].w[0:2]"  0.72640934034579352 0.27358973131228448 
		9.2834192197675953e-007;
	setAttr -s 3 ".wl[183].w[0:2]"  0.90993790150963216 0.090061219020715358 
		8.794696524440794e-007;
	setAttr -s 3 ".wl[184].w[0:2]"  0.9806610069083791 0.019338157860023426 
		8.3523159749540005e-007;
	setAttr -s 3 ".wl[185].w[0:2]"  0.99701923544218984 0.0029792705200256393 
		1.4940377844535436e-006;
	setAttr -s 3 ".wl[186].w[0:2]"  0.99900129899078638 0.00099475857760242823 
		3.9424316110176887e-006;
	setAttr -s 3 ".wl[187].w[0:2]"  0.99851905071946723 0.0014716538355601684 
		9.2954449725359703e-006;
	setAttr -s 3 ".wl[188].w[0:2]"  0.99774740126412009 0.0022362506921904017 
		1.6348043689502777e-005;
	setAttr -s 3 ".wl[189].w[0:2]"  0.99731468903837051 0.0026644912657831214 
		2.0819695846290902e-005;
	setAttr -s 3 ".wl[190].w[0:2]"  0.99743866127754666 0.0025412519855724392 
		2.0086736880812899e-005;
	setAttr -s 3 ".wl[191].w[0:2]"  0.9978367532753909 0.0021478206568548322 
		1.5426067754259855e-005;
	setAttr -s 3 ".wl[192].w[0:2]"  0.99706411572142517 0.0029249788414126153 
		1.0905437162305135e-005;
	setAttr -s 3 ".wl[193].w[0:2]"  0.98967112244863387 0.010316687498743985 
		1.2190052622147293e-005;
	setAttr -s 3 ".wl[194].w[0:2]"  0.9577197855599977 0.04225654036322788 
		2.3674076774448477e-005;
	setAttr -s 3 ".wl[195].w[0:2]"  0.86279112752377818 0.13716450665625685 
		4.4365819964873241e-005;
	setAttr -s 3 ".wl[196].w[0:2]"  0.6773746332943722 0.32256513558999445 
		6.0231115633429203e-005;
	setAttr -s 3 ".wl[197].w[0:2]"  0.43727494671510891 0.5626715289243206 
		5.3524360570471692e-005;
	setAttr -s 3 ".wl[198].w[0:2]"  0.22864577535724251 0.77132465440000497 
		2.9570242752464428e-005;
	setAttr -s 3 ".wl[199].w[0:2]"  0.13204083857085988 0.86794914049169059 
		1.002093744944532e-005;
	setAttr -s 3 ".wl[200].w[0:2]"  0.25636129054779594 0.74363698135288425 
		1.7280993198803743e-006;
	setAttr -s 3 ".wl[201].w[0:2]"  0.49130254537332818 0.50869673217196409 
		7.2245470775150943e-007;
	setAttr -s 3 ".wl[202].w[0:2]"  0.75298089394292045 0.2470183413136158 
		7.6474346370001425e-007;
	setAttr -s 3 ".wl[203].w[0:2]"  0.91813506120993571 0.081864149284094259 
		7.8950596998572366e-007;
	setAttr -s 3 ".wl[204].w[0:2]"  0.98205093625370365 0.017948223181109203 
		8.4056518729488253e-007;
	setAttr -s 3 ".wl[205].w[0:2]"  0.99717315824512287 0.0028253232444664374 
		1.5185104105503097e-006;
	setAttr -s 3 ".wl[206].w[0:2]"  0.99899377170243397 0.001002259568381989 
		3.9687291839397986e-006;
	setAttr -s 3 ".wl[207].w[0:2]"  0.99851049286630655 0.0014803515400552722 
		9.1555936381711753e-006;
	setAttr -s 3 ".wl[208].w[0:2]"  0.99777560219919104 0.0022087378119383175 
		1.5659988870683408e-005;
	setAttr -s 3 ".wl[209].w[0:2]"  0.99736135513639546 0.0026189236015004267 
		1.9721262104151818e-005;
	setAttr -s 3 ".wl[210].w[0:2]"  0.99747054193491647 0.0025104437249823964 
		1.9014340101106929e-005;
	setAttr -s 3 ".wl[211].w[0:2]"  0.99783153223562049 0.0021538088953268826 
		1.465886905258027e-005;
	setAttr -s 3 ".wl[212].w[0:2]"  0.99696983290717789 0.003019542189967841 
		1.0624902854210599e-005;
	setAttr -s 3 ".wl[213].w[0:2]"  0.98868947475989577 0.011298134641005118 
		1.2390599099095261e-005;
	setAttr -s 3 ".wl[214].w[0:2]"  0.95227243311310372 0.047703520433272507 
		2.4046453623756705e-005;
	setAttr -s 3 ".wl[215].w[0:2]"  0.85217975366156018 0.14777721451841372 
		4.3031820025959288e-005;
	setAttr -s 3 ".wl[216].w[0:2]"  0.67421010066195397 0.32573587247325142 
		5.4026864794579176e-005;
	setAttr -s 3 ".wl[217].w[0:2]"  0.45659674534505656 0.54335920893848388 
		4.4045716459457912e-005;
	setAttr -s 3 ".wl[218].w[0:2]"  0.26949968607260893 0.73047764048416497 
		2.2673443226147998e-005;
	setAttr -s 3 ".wl[219].w[0:2]"  0.18074965316783967 0.81924293422649541 
		7.4126056647639367e-006;
	setAttr -s 3 ".wl[220].w[0:2]"  0.35542892810724241 0.64456971076526026 
		1.361127497382175e-006;
	setAttr -s 3 ".wl[221].w[0:2]"  0.56233301698176485 0.43766636503214901 
		6.1798608619777402e-007;
	setAttr -s 3 ".wl[222].w[0:2]"  0.78267789696198709 0.21732139528235775 
		7.0775565513304812e-007;
	setAttr -s 3 ".wl[223].w[0:2]"  0.92647554648894759 0.073523669744647649 
		7.8376640477360251e-007;
	setAttr -s 3 ".wl[224].w[0:2]"  0.98406527579436498 0.015933888808230229 
		8.3539740475144685e-007;
	setAttr -s 3 ".wl[225].w[0:2]"  0.99748916949675048 0.0025093924415241428 
		1.4380617253916882e-006;
	setAttr -s 3 ".wl[226].w[0:2]"  0.99901429897229166 0.00098199260470088106 
		3.7084230075521465e-006;
	setAttr -s 3 ".wl[227].w[0:2]"  0.9985459266626171 0.0014456460082508948 
		8.4273291320372889e-006;
	setAttr -s 3 ".wl[228].w[0:2]"  0.99784776268128828 0.0021379573638388768 
		1.4279954872875104e-005;
	setAttr -s 3 ".wl[229].w[0:2]"  0.99743623546037929 0.0025458534034893702 
		1.7911136131393296e-005;
	setAttr -s 3 ".wl[230].w[0:2]"  0.9975152134272629 0.0024675351560153138 
		1.7251416721734805e-005;
	setAttr -s 3 ".wl[231].w[0:2]"  0.99782714459012523 0.0021594972973479863 
		1.3358112526709686e-005;
	setAttr -s 3 ".wl[232].w[0:2]"  0.99680069718950104 0.003189315646791242 
		9.9871637078535742e-006;
	setAttr -s 3 ".wl[233].w[0:2]"  0.98734495810864986 0.012642789329518258 
		1.2252561831892461e-005;
	setAttr -s 3 ".wl[234].w[0:2]"  0.94824399475206878 0.051732563724613032 
		2.3441523318043089e-005;
	setAttr -s 3 ".wl[235].w[0:2]"  0.85040654180366004 0.1495543872920522 
		3.9070904287808409e-005;
	setAttr -s 3 ".wl[236].w[0:2]"  0.68936078422195002 0.31059436900800608 
		4.4846770043844787e-005;
	setAttr -s 3 ".wl[237].w[0:2]"  0.50034000247400601 0.49962595987679659 
		3.4037649197430378e-005;
	setAttr -s 3 ".wl[238].w[0:2]"  0.33889755494234586 0.66108545978817745 
		1.6985269476661191e-005;
	setAttr -s 3 ".wl[239].w[0:2]"  0.27102480885334562 0.72896960645191033 
		5.5846947442099461e-006;
	setAttr -s 3 ".wl[240].w[0:2]"  0.46640334022582614 0.53359548700846793 
		1.1727657059216619e-006;
	setAttr -s 3 ".wl[241].w[0:2]"  0.63019587974328639 0.36980341080559509 
		7.0945111863498711e-007;
	setAttr -s 3 ".wl[242].w[0:2]"  0.81482290919899381 0.18517629393259144 
		7.9686841484592961e-007;
	setAttr -s 3 ".wl[243].w[0:2]"  0.93968422130099671 0.060314962977152185 
		8.1572185098127045e-007;
	setAttr -s 3 ".wl[244].w[0:2]"  0.98751869732791309 0.012480493320208523 
		8.0935187835999278e-007;
	setAttr -s 3 ".wl[245].w[0:2]"  0.99788062711728065 0.0021180318781439892 
		1.3410045752819628e-006;
	setAttr -s 3 ".wl[246].w[0:2]"  0.99900681348584075 0.00098984068719163115 
		3.3458269677514541e-006;
	setAttr -s 3 ".wl[247].w[0:2]"  0.99856909976618868 0.001423495498932101 
		7.4047348790838177e-006;
	setAttr -s 3 ".wl[248].w[0:2]"  0.9979253630178343 0.0020623435948261006 
		1.2293387339676108e-005;
	setAttr -s 3 ".wl[249].w[0:2]"  0.9975435950599072 0.0024412013120879107 
		1.5203628004767665e-005;
	setAttr -s 3 ".wl[250].w[0:2]"  0.99763217755563771 0.0023533907737187734 
		1.4431670643362182e-005;
	setAttr -s 3 ".wl[251].w[0:2]"  0.99791211494360932 0.002076793496967955 
		1.1091559422810878e-005;
	setAttr -s 3 ".wl[252].w[0:2]"  0.99667105186345584 0.0033203395870980475 
		8.6085494461739846e-006;
	setAttr -s 3 ".wl[253].w[0:2]"  0.98637902155527157 0.013609667539249743 
		1.1310905478787912e-005;
	setAttr -s 3 ".wl[254].w[0:2]"  0.94733214654335018 0.052646684542171175 
		2.1168914478636368e-005;
	setAttr -s 3 ".wl[255].w[0:2]"  0.8582947018104774 0.14167263521476967 
		3.2662974752927178e-005;
	setAttr -s 3 ".wl[256].w[0:2]"  0.72078445603997521 0.27918087436842826 
		3.4669591596418036e-005;
	setAttr -s 3 ".wl[257].w[0:2]"  0.56227373154135452 0.43770102991371185 
		2.5238544933507916e-005;
	setAttr -s 3 ".wl[258].w[0:2]"  0.4322043525454658 0.56778317484830132 
		1.2472606232766981e-005;
	setAttr -s 3 ".wl[259].w[0:2]"  0.39049819140712122 0.6094976578093122 
		4.1507835665378168e-006;
	setAttr -s 3 ".wl[260].w[0:2]"  0.56206693818892883 0.43793175022966879 
		1.3115814024751501e-006;
	setAttr -s 3 ".wl[261].w[0:2]"  0.70153111088623166 0.29846793922960801 
		9.4988416021516917e-007;
	setAttr -s 3 ".wl[262].w[0:2]"  0.8599930066464071 0.14000607434309617 
		9.190104966407823e-007;
	setAttr -s 3 ".wl[263].w[0:2]"  0.95756803420861092 0.042431127706508559 
		8.3808488054060731e-007;
	setAttr -s 3 ".wl[264].w[0:2]"  0.99109395286919877 0.0089052446600429574 
		8.0247075831801742e-007;
	setAttr -s 3 ".wl[265].w[0:2]"  0.9981547474328939 0.0018440019235392757 
		1.2506435669441849e-006;
	setAttr -s 3 ".wl[266].w[0:2]"  0.99898250666719335 0.0010146335785480437 
		2.8597542585904552e-006;
	setAttr -s 3 ".wl[267].w[0:2]"  0.99861260692460774 0.0013813953410896349 
		5.9977343026036426e-006;
	setAttr -s 3 ".wl[268].w[0:2]"  0.99807013141296175 0.0019202435194323895 
		9.6250676057864342e-006;
	setAttr -s 3 ".wl[269].w[0:2]"  0.99779014071831906 0.0021983122093890456 
		1.1547072291993497e-005;
	setAttr -s 3 ".wl[270].w[0:2]"  0.99791956696188922 0.0020697590163325096 
		1.0674021778366658e-005;
	setAttr -s 3 ".wl[271].w[0:2]"  0.99811214772356205 0.0018796348412821135 
		8.21743515593877e-006;
	setAttr -s 3 ".wl[272].w[0:2]"  0.9966064665301777 0.0033866228161556441 
		6.9106536668516993e-006;
	setAttr -s 3 ".wl[273].w[0:2]"  0.98621123047631598 0.013779021122150787 
		9.7484015331164917e-006;
	setAttr -s 3 ".wl[274].w[0:2]"  0.95129046899637126 0.048692256613889665 
		1.7274389738998908e-005;
	setAttr -s 3 ".wl[275].w[0:2]"  0.87850165999899188 0.12147401721880795 
		2.4322782200160941e-005;
	setAttr -s 3 ".wl[276].w[0:2]"  0.76739530683836343 0.23258048665036959 
		2.4206511266982226e-005;
	setAttr -s 3 ".wl[277].w[0:2]"  0.63718248724285931 0.362800204514451 
		1.7308242689799268e-005;
	setAttr -s 3 ".wl[278].w[0:2]"  0.53388491492586165 0.46610640640906492 
		8.6786650734384864e-006;
	setAttr -s 3 ".wl[279].w[0:2]"  0.50283050106564897 0.49716627009964842 
		3.228834702709547e-006;
	setAttr -s 3 ".wl[280].w[0:2]"  0.66926807101149233 0.33073032097068522 
		1.6080178223049873e-006;
	setAttr -s 3 ".wl[281].w[0:2]"  0.79331291338934828 0.2066858656000265 
		1.2210106253875277e-006;
	setAttr -s 3 ".wl[282].w[0:2]"  0.91100354284855611 0.088995383978504719 
		1.0731729392330873e-006;
	setAttr -s 3 ".wl[283].w[0:2]"  0.97316255536894158 0.02683653307364323 
		9.1155741529675247e-007;
	setAttr -s 3 ".wl[284].w[0:2]"  0.99356463985193622 0.0064345341103711111 
		8.2603769256928009e-007;
	setAttr -s 3 ".wl[285].w[0:2]"  0.9982930810767342 0.0017057929451320217 
		1.1259781338051678e-006;
	setAttr -s 3 ".wl[286].w[0:2]"  0.99895786298335432 0.0010398609223701456 
		2.276094275646172e-006;
	setAttr -s 3 ".wl[287].w[0:2]"  0.99869301284034173 0.0013025413187050538 
		4.4458409531918153e-006;
	setAttr -s 3 ".wl[288].w[0:2]"  0.99831942544808849 0.0016738223971102168 
		6.7521548011573967e-006;
	setAttr -s 3 ".wl[289].w[0:2]"  0.99816993066091153 0.00182228838208413 
		7.7809570043493901e-006;
	setAttr -s 3 ".wl[290].w[0:2]"  0.99827182335157394 0.0017210463588350996 
		7.1302895908893946e-006;
	setAttr -s 3 ".wl[291].w[0:2]"  0.99826111515088445 0.001733080138530292 
		5.8047105852181875e-006;
	setAttr -s 3 ".wl[292].w[0:2]"  0.99653973183356137 0.0034546944769952097 
		5.5736894434268915e-006;
	setAttr -s 3 ".wl[293].w[0:2]"  0.98744974534984553 0.012542238272994752 
		8.0163771596038217e-006;
	setAttr -s 3 ".wl[294].w[0:2]"  0.96075257587341578 0.0392346970982166 
		1.2727028367493542e-005;
	setAttr -s 3 ".wl[295].w[0:2]"  0.90650636718249777 0.09347734391141499 
		1.6288906087290285e-005;
	setAttr -s 3 ".wl[296].w[0:2]"  0.82001353298281243 0.17997073342543471 
		1.5733591752703377e-005;
	setAttr -s 3 ".wl[297].w[0:2]"  0.71586894888434949 0.28411956589857101 
		1.1485217079427809e-005;
	setAttr -s 3 ".wl[298].w[0:2]"  0.63266163461246439 0.36733212675211674 
		6.2386354188403882e-006;
	setAttr -s 3 ".wl[299].w[0:2]"  0.60961186986114824 0.39038520430516505 
		2.9258336867151656e-006;
	setAttr -s 3 ".wl[300].w[0:2]"  0.79507970753612334 0.20491830670940187 
		1.9857544746325298e-006;
	setAttr -s 3 ".wl[301].w[0:2]"  0.88197976377218157 0.11801865177274935 
		1.5844550691533066e-006;
	setAttr -s 3 ".wl[302].w[0:2]"  0.94976860080830838 0.050230092344396356 
		1.3068472953059302e-006;
	setAttr -s 3 ".wl[303].w[0:2]"  0.98330285151381569 0.016696116927677578 
		1.0315585066998392e-006;
	setAttr -s 3 ".wl[304].w[0:2]"  0.99512059951780574 0.004878534044537153 
		8.6643765720133644e-007;
	setAttr -s 3 ".wl[305].w[0:2]"  0.99830141382951976 0.0016975509008158446 
		1.0352696645511264e-006;
	setAttr -s 3 ".wl[306].w[0:2]"  0.99885942766586167 0.001138773853110407 
		1.7984810278564313e-006;
	setAttr -s 3 ".wl[307].w[0:2]"  0.99873908890207164 0.001257785783314914 
		3.125314613340436e-006;
	setAttr -s 3 ".wl[308].w[0:2]"  0.99853689414383073 0.0014586878839859849 
		4.417972183335621e-006;
	setAttr -s 3 ".wl[309].w[0:2]"  0.99844233380263259 0.0015526739198994082 
		4.9922774680216193e-006;
	setAttr -s 3 ".wl[310].w[0:2]"  0.9984255491559636 0.0015696958416978521 
		4.7550023386383503e-006;
	setAttr -s 3 ".wl[311].w[0:2]"  0.99816058749917103 0.0018350567298368108 
		4.3557709922137552e-006;
	setAttr -s 3 ".wl[312].w[0:2]"  0.99639900208040977 0.0035962310641005236 
		4.7668554897194256e-006;
	setAttr -s 3 ".wl[313].w[0:2]"  0.98954215745415075 0.010451281602522736 
		6.5609433264217877e-006;
	setAttr -s 3 ".wl[314].w[0:2]"  0.97109719981676645 0.028893667831568645 
		9.1323516648587762e-006;
	setAttr -s 3 ".wl[315].w[0:2]"  0.93293775192169071 0.067051330630879424 
		1.0917447429926411e-005;
	setAttr -s 3 ".wl[316].w[0:2]"  0.87112188390415002 0.12886754553731536 
		1.0570558534573284e-005;
	setAttr -s 3 ".wl[317].w[0:2]"  0.79706567309140341 0.20292631311243434 
		8.0137961622599558e-006;
	setAttr -s 3 ".wl[318].w[0:2]"  0.74101677764130891 0.25897828151161428 
		4.9408470767520021e-006;
	setAttr -s 3 ".wl[319].w[0:2]"  0.73693823805653913 0.26305882363748428 
		2.9383059764985093e-006;
	setAttr -s 3 ".wl[320].w[0:2]"  0.89394451541367814 0.10605291415581355 
		2.5704305084759966e-006;
	setAttr -s 3 ".wl[321].w[0:2]"  0.93953363949277968 0.06046432870328719 
		2.0318039331640385e-006;
	setAttr -s 3 ".wl[322].w[0:2]"  0.97261895270722987 0.027379461964980461 
		1.5853277898088311e-006;
	setAttr -s 3 ".wl[323].w[0:2]"  0.98941217313231788 0.010586582555833817 
		1.2443118482578896e-006;
	setAttr -s 3 ".wl[324].w[0:2]"  0.99593583897450633 0.0040631048915979783 
		1.0561338957357097e-006;
	setAttr -s 3 ".wl[325].w[0:2]"  0.99801270775726181 0.0019861529383812674 
		1.1393043568583514e-006;
	setAttr -s 3 ".wl[326].w[0:2]"  0.99850103639309373 0.0014973583684951741 
		1.6052384111803132e-006;
	setAttr -s 3 ".wl[327].w[0:2]"  0.99849687963341016 0.0015007387369781427 
		2.3816296116112937e-006;
	setAttr -s 3 ".wl[328].w[0:2]"  0.99838027608857671 0.0016165641904315863 
		3.1597209916520926e-006;
	setAttr -s 3 ".wl[329].w[0:2]"  0.99826326221607109 0.0017331508851744708 
		3.5868987544144632e-006;
	setAttr -s 3 ".wl[330].w[0:2]"  0.99810905647761028 0.0018872991560383069 
		3.644366351375988e-006;
	setAttr -s 3 ".wl[331].w[0:2]"  0.99763177349452492 0.0023644804686480999 
		3.7460368270502122e-006;
	setAttr -s 3 ".wl[332].w[0:2]"  0.99599280059715367 0.0040028414053562928 
		4.3579974900779809e-006;
	setAttr -s 3 ".wl[333].w[0:2]"  0.99115002326861612 0.0088444476739328974 
		5.5290574509911808e-006;
	setAttr -s 3 ".wl[334].w[0:2]"  0.97906477580519358 0.020928306361718926 
		6.9178330874821552e-006;
	setAttr -s 3 ".wl[335].w[0:2]"  0.95496859601127071 0.045023489566251004 
		7.9144224782557103e-006;
	setAttr -s 3 ".wl[336].w[0:2]"  0.91777850973831332 0.08221387111875389 
		7.6191429326830905e-006;
	setAttr -s 3 ".wl[337].w[0:2]"  0.87561912547108989 0.12437477369530384 
		6.1008336063435644e-006;
	setAttr -s 3 ".wl[338].w[0:2]"  0.84865962393099714 0.15133590394325336 
		4.4721257495747034e-006;
	setAttr -s 3 ".wl[339].w[0:2]"  0.85591263304089438 0.14408404781091927 
		3.3191481862730561e-006;
	setAttr -s 3 ".wl[340].w[0:2]"  0.94859122639198168 0.051405519642213827 
		3.2539658043491492e-006;
	setAttr -s 3 ".wl[341].w[0:2]"  0.9698943112308418 0.030103095034738292 
		2.5937344198687482e-006;
	setAttr -s 3 ".wl[342].w[0:2]"  0.98473804170054857 0.015259795601388694 
		2.1626980625832233e-006;
	setAttr -s 3 ".wl[343].w[0:2]"  0.99235481887431276 0.0076432888312488057 
		1.8922944384704995e-006;
	setAttr -s 3 ".wl[344].w[0:2]"  0.9957317770498878 0.0042664915482052259 
		1.731401906929568e-006;
	setAttr -s 3 ".wl[345].w[0:2]"  0.99705865651795744 0.002939564456083787 
		1.7790259588896302e-006;
	setAttr -s 3 ".wl[346].w[0:2]"  0.99743525562408641 0.002562643005677703 
		2.1013702358730407e-006;
	setAttr -s 3 ".wl[347].w[0:2]"  0.99745597451419177 0.0025413888142166905 
		2.6366715915983242e-006;
	setAttr -s 3 ".wl[348].w[0:2]"  0.99734677662406623 0.0026500385143525536 
		3.1848615812648859e-006;
	setAttr -s 3 ".wl[349].w[0:2]"  0.9971722416450306 0.0028242233815372309 
		3.5349734322303652e-006;
	setAttr -s 3 ".wl[350].w[0:2]"  0.99691381193490181 0.0030824849940242669 
		3.7030710738700449e-006;
	setAttr -s 3 ".wl[351].w[0:2]"  0.99635368679847869 0.0036423801171468367 
		3.9330843744756386e-006;
	setAttr -s 3 ".wl[352].w[0:2]"  0.99497774785374005 0.005017828483417525 
		4.4236628423988147e-006;
	setAttr -s 3 ".wl[353].w[0:2]"  0.99166705057135984 0.0083277812640948773 
		5.1681645453310276e-006;
	setAttr -s 3 ".wl[354].w[0:2]"  0.98439172975891065 0.015602220386962538 
		6.0498541269154225e-006;
	setAttr -s 3 ".wl[355].w[0:2]"  0.97135026150982384 0.028643136809027109 
		6.6016811490431241e-006;
	setAttr -s 3 ".wl[356].w[0:2]"  0.95271329268190474 0.047280381007108678 
		6.3263109864128732e-006;
	setAttr -s 3 ".wl[357].w[0:2]"  0.93298830515303954 0.067006120450326806 
		5.5743966335127873e-006;
	setAttr -s 3 ".wl[358].w[0:2]"  0.92261870042600402 0.077376480450760926 
		4.8191232351754026e-006;
	setAttr -s 3 ".wl[359].w[0:2]"  0.92915338601471287 0.07084256697923795 
		4.0470060491411256e-006;
	setAttr -s 3 ".wl[360].w[0:2]"  0.97466990736700698 0.025326110592505415 
		3.9820404878128325e-006;
	setAttr -s 3 ".wl[361].w[0:2]"  0.98365733592514459 0.016339145977790157 
		3.5180970652696446e-006;
	setAttr -s 3 ".wl[362].w[0:2]"  0.98940052608898832 0.010596208952079208 
		3.2649589324370857e-006;
	setAttr -s 3 ".wl[363].w[0:2]"  0.99250941942438675 0.0074874776043737856 
		3.1029712394743162e-006;
	setAttr -s 3 ".wl[364].w[0:2]"  0.9941036772756261 0.0058932899668950487 
		3.0327574788482532e-006;
	setAttr -s 3 ".wl[365].w[0:2]"  0.99478110650199447 0.0052157662045841779 
		3.1272934213857509e-006;
	setAttr -s 3 ".wl[366].w[0:2]"  0.99497589583745494 0.0050207034130202426 
		3.4007495250051829e-006;
	setAttr -s 3 ".wl[367].w[0:2]"  0.99497019158583389 0.0050260209853631044 
		3.7874288028189949e-006;
	setAttr -s 3 ".wl[368].w[0:2]"  0.99485503367177719 0.0051408089351111606 
		4.1573931116837753e-006;
	setAttr -s 3 ".wl[369].w[0:2]"  0.99467998692852855 0.0053156163161559456 
		4.396755315525859e-006;
	setAttr -s 3 ".wl[370].w[0:2]"  0.99444291545762398 0.0055525676107053418 
		4.5169316706200542e-006;
	setAttr -s 3 ".wl[371].w[0:2]"  0.99396675499851517 0.0060285781742401177 
		4.6668272447296724e-006;
	setAttr -s 3 ".wl[372].w[0:2]"  0.99289663990674515 0.0070983594628692146 
		5.0006303857215065e-006;
	setAttr -s 3 ".wl[373].w[0:2]"  0.99064679330297323 0.0093476606239641952 
		5.5460730627201593e-006;
	setAttr -s 3 ".wl[374].w[0:2]"  0.98653726316496515 0.013456634772357371 
		6.10206267748198e-006;
	setAttr -s 3 ".wl[375].w[0:2]"  0.98012329331631776 0.019870403093456165 
		6.3035902261267449e-006;
	setAttr -s 3 ".wl[376].w[0:2]"  0.97151951631884692 0.028474391914935528 
		6.091766217646799e-006;
	setAttr -s 3 ".wl[377].w[0:2]"  0.96314859898747374 0.036845645507136919 
		5.7555053892714387e-006;
	setAttr -s 3 ".wl[378].w[0:2]"  0.96011351532366107 0.039881175068073593 
		5.3096082652859166e-006;
	setAttr -s 3 ".wl[379].w[0:2]"  0.9650239664465613 0.034971375890397303 
		4.6576630413685893e-006;
	setAttr -s 3 ".wl[380].w[0:2]"  0.99624383412297701 0.0037538916948030789 
		2.2741822200513434e-006;
	setAttr -s 3 ".wl[381].w[0:2]"  0.98734086772910412 0.012654224542218514 
		4.9077286773521321e-006;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.9999200919144301 -0 0.012641589529709642 -0 -0 1 -0 0
		 -0.012641589529709642 -0 0.9999200919144301 -0 18.283756109146978 -97.428120729644007 6.7037639203272601 1;
	setAttr ".pm[1]" -type "matrix" 0.99981228479901285 -0 -0.019375117160357731 -0 -0 1 -0 0
		 0.019375117160357731 -0 0.99981228479901285 -0 -29.798807783513517 -101.93631015808178 7.9346019450072722 1;
	setAttr ".pm[2]" -type "matrix" 0.9940736587360961 -0 -0.10870860594742049 -0 -0 1 -0 0
		 0.10870860594742049 -0 0.9940736587360961 -0 -92.475792724568706 -82.456399135003693 16.269706317199205 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 5.5511151231257827e-017 -0 -0 1 -0 0 -5.5511151231257827e-017 -0 1 -0
		 -147.16514181203365 -8.7670726880665626 2.1322752688952109 1;
	setAttr ".gm" -type "matrix" 0.61042055632356151 0 0 0 0 0.27812251497323032 0 0
		 0 0 0.32792241036541075 0 -15.050826309937577 100.08565380770295 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak44";
	rename -uid "E27BA479-40FD-7E0D-0811-A09BB251B524";
createNode objectSet -n "skinCluster8Set";
	rename -uid "32113870-4076-9169-36E8-4E83808CAC88";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "AC1561D8-418F-0B18-BD08-D7A91A3544CC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "99A0E88F-4427-E942-E327-DEA2E7E7A8EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet44";
	rename -uid "B5D808B3-41DA-6B73-933B-95A9CEA502F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId97";
	rename -uid "748A3420-4D75-B320-93A5-31A05E8B458E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	rename -uid "14B233E8-41F5-50B6-1309-77A4ECA5BE50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode geomBind -n "geomBind1";
	rename -uid "3B9D421B-43E2-295A-67C1-1894C74DB5FB";
	setAttr ".mi" 5;
createNode animCurveTL -n "TailikHandle1_translateX";
	rename -uid "AE04B30D-4681-A9A7-7317-B5A73915014A";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.3113340445338972 5 1.3113340147719259
		 8 1.3113341765613171 12 1.3113341554375444 17 1.5184711510984357 21 1.386288038226374
		 24 1.3113340445338972;
createNode animCurveTL -n "TailikHandle1_translateY";
	rename -uid "BBA3745D-48F4-E9C5-FA50-709BE2F800A1";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0.085563421956491081 5 0.28579710697793148
		 8 0.56630596176807357 12 -0.023155261610608165 17 0.018456337909295045 21 -0.12371661164125448
		 24 0.085563421956491081;
createNode animCurveTL -n "TailikHandle1_translateZ";
	rename -uid "415D6746-4E76-CC7B-DB9E-069A00698DEB";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 -0.024829061667728851 5 -0.024829063100980413
		 8 -0.024829055309665133 12 -0.024829056326926557 17 -0.024863904438006425 21 -0.025135595101659761
		 24 -0.024829061667728851;
createNode animCurveTU -n "TailikHandle1_visibility";
	rename -uid "B76FE07D-4843-AFD4-961A-D384DAC71EB7";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 12 1 17 1 21 1 24 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "TailikHandle1_rotateX";
	rename -uid "10DC3406-4598-CA25-94EC-6B94B00951AD";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTA -n "TailikHandle1_rotateY";
	rename -uid "C81ADE05-4DD3-C149-23A8-0CB0A97631F1";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTA -n "TailikHandle1_rotateZ";
	rename -uid "30AAE677-48FC-BD74-B01C-1496EA0F9C0C";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTU -n "TailikHandle1_scaleX";
	rename -uid "11B87B0D-4629-0841-203B-128BFDF8CD3E";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 12 1 17 1 21 1 24 1;
createNode animCurveTU -n "TailikHandle1_scaleY";
	rename -uid "084DBBE3-40C9-77E6-1BC3-D9958A82038C";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 12 1 17 1 21 1 24 1;
createNode animCurveTU -n "TailikHandle1_scaleZ";
	rename -uid "EA7D8AAA-4CFF-3B55-1EC3-C2AD21F109C3";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 12 1 17 1 21 1 24 1;
createNode animCurveTU -n "TailikHandle1_poleVectorX";
	rename -uid "0946DB97-4FF5-3833-6676-7D961F02DE30";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.2456290878491802 5 1.2456290878491805
		 8 1.2456290878491807 12 1.2456290878491809 17 1.2456290878352598 21 1.2456290889654567
		 24 1.2456290878491802;
createNode animCurveTU -n "TailikHandle1_poleVectorY";
	rename -uid "39D06146-405B-4EC5-99E0-FBAEA1CB29C1";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.5628972489601962 5 1.5628972489601962
		 8 1.5628972489601962 12 1.5628972489601962 17 1.5628972644711179 21 1.5628972695258023
		 24 1.5628972489601962;
createNode animCurveTU -n "TailikHandle1_poleVectorZ";
	rename -uid "1DE617D0-4ED9-50F8-D77B-3EABFE7D47C8";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 -0.075897066456313722 5 -0.075897066456313708
		 8 -0.075897066456314166 12 -0.075897066456314069 17 -0.075896747278125731 21 -0.075896624640744856
		 24 -0.075897066456313722;
createNode animCurveTU -n "TailikHandle1_offset";
	rename -uid "925E1DE4-4F95-D1CE-96BE-11BA1F5EAB1C";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTA -n "TailikHandle1_roll";
	rename -uid "80AFB6E5-4CBD-F782-4B11-4E9EB869F4FA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTA -n "TailikHandle1_twist";
	rename -uid "9A8870FE-415E-6986-CE41-47A33AC90372";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 12 0 17 0 21 0 24 0;
createNode animCurveTU -n "TailikHandle1_ikBlend";
	rename -uid "A864689B-4EA1-2364-C863-0593DE2AB063";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 12 1 17 1 21 1 24 1;
createNode animCurveTL -n "Legs1_translateX";
	rename -uid "2A3FA1EE-4EE3-DDF7-223D-FB97C9582B21";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 3.8953749476131421 5 3.9739856884075677
		 9 3.8953749476131421 13 3.9739856884075677 17 3.8953749476131421 20 3.9739856884075677
		 24 3.8953749476131421;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "Legs1_translateY";
	rename -uid "095E59DF-42D7-D3AC-E232-F9AACF7A74EE";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0.80164738983985195 5 0.85266560684421677
		 9 0.80164738983985195 13 0.85266560684421677 17 0.80164738983985195 20 0.85266560684421677
		 24 0.80164738983985195;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "Legs1_translateZ";
	rename -uid "8595051E-4DED-A37F-72D3-C2BE3FC7A43F";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.028117957607358225 5 -0.02811795760735826
		 9 -0.028117957607358225 13 -0.02811795760735826 17 -0.028117957607358225 20 -0.02811795760735826
		 24 -0.028117957607358225;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "Legs1_visibility";
	rename -uid "804CD281-4435-B615-D1C6-D3B7FB9823A9";
	setAttr ".tan" 5;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 9 1 13 1 17 1 20 1 24 1;
	setAttr -s 7 ".kit[0:6]"  9 9 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "Legs1_rotateX";
	rename -uid "74459DA2-4FB1-4509-8ACA-E7B3F263C1D3";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 -14.72272103220187 9 0 13 -14.72272103220187
		 17 0 20 -14.72272103220187 24 0;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "Legs1_rotateY";
	rename -uid "08E0852B-4C49-496F-FA29-1390677CB8F2";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -89.999999999999972 5 -89.999999999999986
		 9 -89.999999999999972 13 -89.999999999999986 17 -89.999999999999972 20 -89.999999999999986
		 24 -89.999999999999972;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "Legs1_rotateZ";
	rename -uid "E4703958-4DE9-38FB-E2CC-BBA9D3534C45";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 9 0 13 0 17 0 20 0 24 0;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "Legs1_scaleX";
	rename -uid "2A13CD7E-457B-132B-2A25-12A404B82123";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.0000000000000004 5 1.0000000000000004
		 9 1.0000000000000004 13 1.0000000000000004 17 1.0000000000000004 20 1.0000000000000004
		 24 1.0000000000000004;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "Legs1_scaleY";
	rename -uid "22FFD16F-4011-88EB-4DFB-C2AD998158EC";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.0000000000000002 5 1.0000000000000002
		 9 1.0000000000000002 13 1.0000000000000002 17 1.0000000000000002 20 1.0000000000000002
		 24 1.0000000000000002;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "Legs1_scaleZ";
	rename -uid "E5764698-4EE8-7463-28E8-15BC58806781";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.0000000000000004 5 1.0000000000000004
		 9 1.0000000000000004 13 1.0000000000000004 17 1.0000000000000004 20 1.0000000000000004
		 24 1.0000000000000004;
	setAttr -s 7 ".kit[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 1 1 1 1 1;
	setAttr -s 7 ".kix[2:6]"  0.1666666567325592 0.1666666567325592 0.1666666567325592 
		0.1666666567325592 0.1666666567325592;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.1666666567325592 0.1666666716337204 0.1666666567325592 
		0.1666666716337204 0.1666666567325592;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "HeadAssembly_translateX";
	rename -uid "038A2A24-4397-104C-531A-328957043846";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 3.2627048353311396 6 3.2627048353311396
		 10 3.2627048353311396 14 3.2627048353311396 18 3.2627048353311396 21 3.2627048353311396
		 24 3.2627048353311396;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "HeadAssembly_translateY";
	rename -uid "6F5CC44D-42E5-D8DB-BB5F-E491688AFFA8";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0.93439108469611498 6 0.93439108469611498
		 10 0.93439108469611498 14 0.93439108469611498 18 0.93439108469611498 21 0.93439108469611498
		 24 0.93439108469611498;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "HeadAssembly_translateZ";
	rename -uid "0881FEA4-4263-6EC4-F5F7-34892B319BAF";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 0 10 0 14 0 18 0 21 0 24 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "HeadAssembly_visibility";
	rename -uid "958294C6-4343-A52B-F319-91AB6C9B11CF";
	setAttr ".tan" 5;
	setAttr -s 7 ".ktv[0:6]"  1 1 6 1 10 1 14 1 18 1 21 1 24 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 9 9 9 1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "HeadAssembly_rotateX";
	rename -uid "F389DBCD-4900-06D7-C24F-45B34D669CA6";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 -12.698151229890307 10 14.879280591672696
		 14 -12.98278937084048 18 18.561984893561561 21 -7.0214685928600602 24 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "HeadAssembly_rotateY";
	rename -uid "143C502A-4A5F-29B4-362E-F4B6C1EC934C";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 0 10 -1.9878466759146985e-016 14 0
		 18 0 21 1.987846675914699e-016 24 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "HeadAssembly_rotateZ";
	rename -uid "32FFB080-4C02-8FC2-F1F8-52A285715492";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 11.461081916232279 6 11.461081916232283
		 10 11.461081916232287 14 11.461081916232278 18 11.461081916232303 21 11.461081916232317
		 24 11.461081916232279;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "HeadAssembly_scaleX";
	rename -uid "E3904ABC-4167-ABC8-8D89-C09D4AEB674F";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0.37035585758325845 6 0.37035585758325845
		 10 0.37035585758325845 14 0.37035585758325845 18 0.37035585758325845 21 0.37035585758325845
		 24 0.37035585758325845;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "HeadAssembly_scaleY";
	rename -uid "84FDAB0B-4775-194B-A01C-B3BD8EC1A9D2";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0.29898019744774623 6 0.29898019744774623
		 10 0.29898019744774623 14 0.29898019744774623 18 0.29898019744774623 21 0.29898019744774623
		 24 0.29898019744774623;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "HeadAssembly_scaleZ";
	rename -uid "5677FA43-40CE-3DAF-10BB-72875C605FF3";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0.34708060491588116 6 0.34708060491588116
		 10 0.34708060491588116 14 0.34708060491588116 18 0.34708060491588116 21 0.34708060491588116
		 24 0.34708060491588116;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  0.2083333283662796;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  0.2083333283662796;
	setAttr -s 7 ".koy[6]"  0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
	setAttr ".outf" 8;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "HeadAssembly_translateX.o" "HeadAssembly.tx";
connectAttr "HeadAssembly_translateY.o" "HeadAssembly.ty";
connectAttr "HeadAssembly_translateZ.o" "HeadAssembly.tz";
connectAttr "HeadAssembly_visibility.o" "HeadAssembly.v";
connectAttr "HeadAssembly_rotateX.o" "HeadAssembly.rx";
connectAttr "HeadAssembly_rotateY.o" "HeadAssembly.ry";
connectAttr "HeadAssembly_rotateZ.o" "HeadAssembly.rz";
connectAttr "HeadAssembly_scaleX.o" "HeadAssembly.sx";
connectAttr "HeadAssembly_scaleY.o" "HeadAssembly.sy";
connectAttr "HeadAssembly_scaleZ.o" "HeadAssembly.sz";
connectAttr "polySphere10.out" "SmallLeftShape.i";
connectAttr "polySphere9.out" "SmallRightShape.i";
connectAttr "polySphere8.out" "BigLeftShape.i";
connectAttr "polySphere11.out" "BigRightShape.i";
connectAttr "MandibleRightjoint1.s" "MandibleRightjoint2.is";
connectAttr "MandibleRightjoint2.tx" "effector3.tx";
connectAttr "MandibleRightjoint2.ty" "effector3.ty";
connectAttr "MandibleRightjoint2.tz" "effector3.tz";
connectAttr "pCylinder2_visibility.o" "pCylinder2.v";
connectAttr "pCylinder2_translateX.o" "pCylinder2.tx";
connectAttr "pCylinder2_translateY.o" "pCylinder2.ty";
connectAttr "pCylinder2_translateZ.o" "pCylinder2.tz";
connectAttr "pCylinder2_rotateX.o" "pCylinder2.rx";
connectAttr "pCylinder2_rotateY.o" "pCylinder2.ry";
connectAttr "pCylinder2_rotateZ.o" "pCylinder2.rz";
connectAttr "pCylinder2_scaleX.o" "pCylinder2.sx";
connectAttr "pCylinder2_scaleY.o" "pCylinder2.sy";
connectAttr "pCylinder2_scaleZ.o" "pCylinder2.sz";
connectAttr "polyCylinder33.out" "pCylinderShape2.i";
connectAttr "polyCylinder34.out" "LegLeft30Shape31.i";
connectAttr "MandibleLeftjoint1.s" "MandibleLeftjoint2.is";
connectAttr "MandibleLeftjoint2.tx" "effector4.tx";
connectAttr "MandibleLeftjoint2.ty" "effector4.ty";
connectAttr "MandibleLeftjoint2.tz" "effector4.tz";
connectAttr "pCylinder1_visibility.o" "pCylinder1.v";
connectAttr "pCylinder1_translateX.o" "pCylinder1.tx";
connectAttr "pCylinder1_translateY.o" "pCylinder1.ty";
connectAttr "pCylinder1_translateZ.o" "pCylinder1.tz";
connectAttr "pCylinder1_rotateX.o" "pCylinder1.rx";
connectAttr "pCylinder1_rotateY.o" "pCylinder1.ry";
connectAttr "pCylinder1_rotateZ.o" "pCylinder1.rz";
connectAttr "pCylinder1_scaleX.o" "pCylinder1.sx";
connectAttr "pCylinder1_scaleY.o" "pCylinder1.sy";
connectAttr "pCylinder1_scaleZ.o" "pCylinder1.sz";
connectAttr "polyCylinder31.out" "pCylinderShape1.i";
connectAttr "polyCylinder32.out" "LegLeft30Shape.i";
connectAttr "MandibleRightjoint1.msg" "MandibleRightikHandle.hsj";
connectAttr "effector3.hp" "MandibleRightikHandle.hee";
connectAttr "ikRPsolver1.msg" "MandibleRightikHandle.hsv";
connectAttr "MandibleRightikHandle_translateX_AnimPinch1.o" "MandibleRightikHandle.tx"
		;
connectAttr "MandibleRightikHandle_translateY_AnimPinch1.o" "MandibleRightikHandle.ty"
		;
connectAttr "MandibleRightikHandle_translateZ_AnimPinch1.o" "MandibleRightikHandle.tz"
		;
connectAttr "MandibleRightikHandle_rotate_AnimPinch1.ox" "MandibleRightikHandle.rx"
		;
connectAttr "MandibleRightikHandle_rotate_AnimPinch1.oy" "MandibleRightikHandle.ry"
		;
connectAttr "MandibleRightikHandle_rotate_AnimPinch1.oz" "MandibleRightikHandle.rz"
		;
connectAttr "MandibleRightikHandle_visibility_AnimPinch1.o" "MandibleRightikHandle.v"
		;
connectAttr "MandibleRightikHandle_scaleX_AnimPinch1.o" "MandibleRightikHandle.sx"
		;
connectAttr "MandibleRightikHandle_scaleY_AnimPinch1.o" "MandibleRightikHandle.sy"
		;
connectAttr "MandibleRightikHandle_scaleZ_AnimPinch1.o" "MandibleRightikHandle.sz"
		;
connectAttr "MandibleRightikHandle_poleVectorX_AnimPinch1.o" "MandibleRightikHandle.pvx"
		;
connectAttr "MandibleRightikHandle_poleVectorY_AnimPinch1.o" "MandibleRightikHandle.pvy"
		;
connectAttr "MandibleRightikHandle_poleVectorZ_AnimPinch1.o" "MandibleRightikHandle.pvz"
		;
connectAttr "MandibleRightikHandle_offset_AnimPinch1.o" "MandibleRightikHandle.off"
		;
connectAttr "MandibleRightikHandle_roll_AnimPinch1.o" "MandibleRightikHandle.rol"
		;
connectAttr "MandibleRightikHandle_twist_AnimPinch1.o" "MandibleRightikHandle.twi"
		;
connectAttr "MandibleRightikHandle_ikBlend_AnimPinch1.o" "MandibleRightikHandle.ikb"
		;
connectAttr "MandibleLeftjoint1.msg" "MandibleLeftikHandle.hsj";
connectAttr "effector4.hp" "MandibleLeftikHandle.hee";
connectAttr "ikRPsolver1.msg" "MandibleLeftikHandle.hsv";
connectAttr "MandibleLeftikHandle_translateX_AnimPinch1.o" "MandibleLeftikHandle.tx"
		;
connectAttr "MandibleLeftikHandle_translateY_AnimPinch1.o" "MandibleLeftikHandle.ty"
		;
connectAttr "MandibleLeftikHandle_translateZ_AnimPinch1.o" "MandibleLeftikHandle.tz"
		;
connectAttr "MandibleLeftikHandle_rotate_AnimPinch1.ox" "MandibleLeftikHandle.rx"
		;
connectAttr "MandibleLeftikHandle_rotate_AnimPinch1.oy" "MandibleLeftikHandle.ry"
		;
connectAttr "MandibleLeftikHandle_rotate_AnimPinch1.oz" "MandibleLeftikHandle.rz"
		;
connectAttr "MandibleLeftikHandle_visibility_AnimPinch1.o" "MandibleLeftikHandle.v"
		;
connectAttr "MandibleLeftikHandle_scaleX_AnimPinch1.o" "MandibleLeftikHandle.sx"
		;
connectAttr "MandibleLeftikHandle_scaleY_AnimPinch1.o" "MandibleLeftikHandle.sy"
		;
connectAttr "MandibleLeftikHandle_scaleZ_AnimPinch1.o" "MandibleLeftikHandle.sz"
		;
connectAttr "MandibleLeftikHandle_poleVectorX_AnimPinch1.o" "MandibleLeftikHandle.pvx"
		;
connectAttr "MandibleLeftikHandle_poleVectorY_AnimPinch1.o" "MandibleLeftikHandle.pvy"
		;
connectAttr "MandibleLeftikHandle_poleVectorZ_AnimPinch1.o" "MandibleLeftikHandle.pvz"
		;
connectAttr "MandibleLeftikHandle_offset_AnimPinch1.o" "MandibleLeftikHandle.off"
		;
connectAttr "MandibleLeftikHandle_roll_AnimPinch1.o" "MandibleLeftikHandle.rol";
connectAttr "MandibleLeftikHandle_twist_AnimPinch1.o" "MandibleLeftikHandle.twi"
		;
connectAttr "MandibleLeftikHandle_ikBlend_AnimPinch1.o" "MandibleLeftikHandle.ikb"
		;
connectAttr "polySphere3.out" "HeadShape.i";
connectAttr "skinCluster5.og[0]" "StingerShape.i";
connectAttr "skinCluster5GroupId.id" "StingerShape.iog.og[2].gid";
connectAttr "skinCluster5Set.mwc" "StingerShape.iog.og[2].gco";
connectAttr "groupId91.id" "StingerShape.iog.og[3].gid";
connectAttr "tweakSet41.mwc" "StingerShape.iog.og[3].gco";
connectAttr "tweak41.vl[0].vt[0]" "StingerShape.twl";
connectAttr "polyCone1.out" "StingerShapeOrig.i";
connectAttr "skinCluster6.og[0]" "TailShape.i";
connectAttr "skinCluster6GroupId.id" "TailShape.iog.og[2].gid";
connectAttr "skinCluster6Set.mwc" "TailShape.iog.og[2].gco";
connectAttr "groupId93.id" "TailShape.iog.og[3].gid";
connectAttr "tweakSet42.mwc" "TailShape.iog.og[3].gco";
connectAttr "tweak42.vl[0].vt[0]" "TailShape.twl";
connectAttr "polySphere6.out" "TailShapeOrig.i";
connectAttr "skinCluster7.og[0]" "ThoraxShape.i";
connectAttr "skinCluster7GroupId.id" "ThoraxShape.iog.og[2].gid";
connectAttr "skinCluster7Set.mwc" "ThoraxShape.iog.og[2].gco";
connectAttr "groupId95.id" "ThoraxShape.iog.og[3].gid";
connectAttr "tweakSet43.mwc" "ThoraxShape.iog.og[3].gco";
connectAttr "tweak43.vl[0].vt[0]" "ThoraxShape.twl";
connectAttr "polySphere5.out" "ThoraxShapeOrig.i";
connectAttr "skinCluster8.og[0]" "AbdomenShape.i";
connectAttr "skinCluster8GroupId.id" "AbdomenShape.iog.og[2].gid";
connectAttr "skinCluster8Set.mwc" "AbdomenShape.iog.og[2].gco";
connectAttr "groupId97.id" "AbdomenShape.iog.og[3].gid";
connectAttr "tweakSet44.mwc" "AbdomenShape.iog.og[3].gco";
connectAttr "tweak44.vl[0].vt[0]" "AbdomenShape.twl";
connectAttr "polySphere4.out" "AbdomenShapeOrig.i";
connectAttr "Legs1_translateX.o" "Legs1.tx";
connectAttr "Legs1_translateY.o" "Legs1.ty";
connectAttr "Legs1_translateZ.o" "Legs1.tz";
connectAttr "Legs1_visibility.o" "Legs1.v";
connectAttr "Legs1_rotateX.o" "Legs1.rx";
connectAttr "Legs1_rotateY.o" "Legs1.ry";
connectAttr "Legs1_rotateZ.o" "Legs1.rz";
connectAttr "Legs1_scaleX.o" "Legs1.sx";
connectAttr "Legs1_scaleY.o" "Legs1.sy";
connectAttr "Legs1_scaleZ.o" "Legs1.sz";
connectAttr "tweak13.og[0]" "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.i"
		;
connectAttr "groupId35.id" "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.iog.og[1].gid"
		;
connectAttr "tweakSet13.mwc" "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.iog.og[1].gco"
		;
connectAttr "tweak13.vl[0].vt[0]" "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.twl"
		;
connectAttr "polyCylinder11.out" "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShapeOrig.i"
		;
connectAttr "tweak17.og[0]" "LegLeftShape5.i";
connectAttr "groupId43.id" "LegLeftShape5.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "LegLeftShape5.iog.og[1].gco";
connectAttr "tweak17.vl[0].vt[0]" "LegLeftShape5.twl";
connectAttr "polyCylinder6.out" "LegLeftShape5Orig.i";
connectAttr "tweak18.og[0]" "LegLeft3Shape8.i";
connectAttr "groupId45.id" "LegLeft3Shape8.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "LegLeft3Shape8.iog.og[1].gco";
connectAttr "tweak18.vl[0].vt[0]" "LegLeft3Shape8.twl";
connectAttr "polyCylinder9.out" "LegLeft3Shape8Orig.i";
connectAttr "tweak19.og[0]" "LegLeft4Shape9.i";
connectAttr "groupId47.id" "LegLeft4Shape9.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "LegLeft4Shape9.iog.og[1].gco";
connectAttr "tweak19.vl[0].vt[0]" "LegLeft4Shape9.twl";
connectAttr "polyCylinder10.out" "LegLeft4Shape9Orig.i";
connectAttr "tweak24.og[0]" "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.i"
		;
connectAttr "groupId57.id" "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.iog.og[1].gid"
		;
connectAttr "tweakSet24.mwc" "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.iog.og[1].gco"
		;
connectAttr "tweak24.vl[0].vt[0]" "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.twl"
		;
connectAttr "polyCylinder1.out" "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShapeOrig.i"
		;
connectAttr "tweak29.og[0]" "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.i"
		;
connectAttr "groupId67.id" "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.iog.og[1].gid"
		;
connectAttr "tweakSet29.mwc" "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.iog.og[1].gco"
		;
connectAttr "tweak29.vl[0].vt[0]" "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.twl"
		;
connectAttr "polyCylinder36.out" "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShapeOrig.i"
		;
connectAttr "tweak33.og[0]" "LegLeftShape38.i";
connectAttr "groupId75.id" "LegLeftShape38.iog.og[1].gid";
connectAttr "tweakSet33.mwc" "LegLeftShape38.iog.og[1].gco";
connectAttr "tweak33.vl[0].vt[0]" "LegLeftShape38.twl";
connectAttr "polyCylinder41.out" "LegLeftShape38Orig.i";
connectAttr "tweak34.og[0]" "LegLeft3Shape41.i";
connectAttr "groupId77.id" "LegLeft3Shape41.iog.og[1].gid";
connectAttr "tweakSet34.mwc" "LegLeft3Shape41.iog.og[1].gco";
connectAttr "tweak34.vl[0].vt[0]" "LegLeft3Shape41.twl";
connectAttr "polyCylinder44.out" "LegLeft3Shape41Orig.i";
connectAttr "tweak35.og[0]" "LegLeft4Shape42.i";
connectAttr "groupId79.id" "LegLeft4Shape42.iog.og[1].gid";
connectAttr "tweakSet35.mwc" "LegLeft4Shape42.iog.og[1].gco";
connectAttr "tweak35.vl[0].vt[0]" "LegLeft4Shape42.twl";
connectAttr "polyCylinder45.out" "LegLeft4Shape42Orig.i";
connectAttr "tweak40.og[0]" "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.i"
		;
connectAttr "groupId89.id" "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.iog.og[1].gid"
		;
connectAttr "tweakSet40.mwc" "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.iog.og[1].gco"
		;
connectAttr "tweak40.vl[0].vt[0]" "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.twl"
		;
connectAttr "polyCylinder47.out" "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShapeOrig.i"
		;
connectAttr "tweak9.og[0]" "LegLeft1Shape11.i";
connectAttr "groupId27.id" "LegLeft1Shape11.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "LegLeft1Shape11.iog.og[1].gco";
connectAttr "tweak9.vl[0].vt[0]" "LegLeft1Shape11.twl";
connectAttr "polyCylinder12.out" "LegLeft1Shape11Orig.i";
connectAttr "tweak10.og[0]" "LegLeft2Shape12.i";
connectAttr "groupId29.id" "LegLeft2Shape12.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "LegLeft2Shape12.iog.og[1].gco";
connectAttr "tweak10.vl[0].vt[0]" "LegLeft2Shape12.twl";
connectAttr "polyCylinder13.out" "LegLeft2Shape12Orig.i";
connectAttr "tweak11.og[0]" "LegLeft3Shape13.i";
connectAttr "groupId31.id" "LegLeft3Shape13.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "LegLeft3Shape13.iog.og[1].gco";
connectAttr "tweak11.vl[0].vt[0]" "LegLeft3Shape13.twl";
connectAttr "polyCylinder14.out" "LegLeft3Shape13Orig.i";
connectAttr "tweak12.og[0]" "LegLeft4Shape14.i";
connectAttr "groupId33.id" "LegLeft4Shape14.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "LegLeft4Shape14.iog.og[1].gco";
connectAttr "tweak12.vl[0].vt[0]" "LegLeft4Shape14.twl";
connectAttr "polyCylinder15.out" "LegLeft4Shape14Orig.i";
connectAttr "tweak14.og[0]" "LegLeft1Shape6.i";
connectAttr "groupId37.id" "LegLeft1Shape6.iog.og[1].gid";
connectAttr "tweakSet14.mwc" "LegLeft1Shape6.iog.og[1].gco";
connectAttr "tweak14.vl[0].vt[0]" "LegLeft1Shape6.twl";
connectAttr "polyCylinder7.out" "LegLeft1Shape6Orig.i";
connectAttr "tweak15.og[0]" "LegLeft2Shape7.i";
connectAttr "groupId39.id" "LegLeft2Shape7.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "LegLeft2Shape7.iog.og[1].gco";
connectAttr "tweak15.vl[0].vt[0]" "LegLeft2Shape7.twl";
connectAttr "polyCylinder8.out" "LegLeft2Shape7Orig.i";
connectAttr "tweak16.og[0]" "LegLeft2Shape32.i";
connectAttr "groupId41.id" "LegLeft2Shape32.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "LegLeft2Shape32.iog.og[1].gco";
connectAttr "tweak16.vl[0].vt[0]" "LegLeft2Shape32.twl";
connectAttr "polyCylinder35.out" "LegLeft2Shape32Orig.i";
connectAttr "tweak20.og[0]" "LegLeft1Shape.i";
connectAttr "groupId49.id" "LegLeft1Shape.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "LegLeft1Shape.iog.og[1].gco";
connectAttr "tweak20.vl[0].vt[0]" "LegLeft1Shape.twl";
connectAttr "polyCylinder2.out" "LegLeft1ShapeOrig.i";
connectAttr "tweak21.og[0]" "LegLeft2Shape.i";
connectAttr "groupId51.id" "LegLeft2Shape.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "LegLeft2Shape.iog.og[1].gco";
connectAttr "tweak21.vl[0].vt[0]" "LegLeft2Shape.twl";
connectAttr "polyCylinder3.out" "LegLeft2ShapeOrig.i";
connectAttr "tweak22.og[0]" "LegLeft3Shape.i";
connectAttr "groupId53.id" "LegLeft3Shape.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "LegLeft3Shape.iog.og[1].gco";
connectAttr "tweak22.vl[0].vt[0]" "LegLeft3Shape.twl";
connectAttr "polyCylinder4.out" "LegLeft3ShapeOrig.i";
connectAttr "tweak23.og[0]" "LegLeft4Shape.i";
connectAttr "groupId55.id" "LegLeft4Shape.iog.og[1].gid";
connectAttr "tweakSet23.mwc" "LegLeft4Shape.iog.og[1].gco";
connectAttr "tweak23.vl[0].vt[0]" "LegLeft4Shape.twl";
connectAttr "polyCylinder5.out" "LegLeft4ShapeOrig.i";
connectAttr "tweak25.og[0]" "LegLeft1Shape34.i";
connectAttr "groupId59.id" "LegLeft1Shape34.iog.og[1].gid";
connectAttr "tweakSet25.mwc" "LegLeft1Shape34.iog.og[1].gco";
connectAttr "tweak25.vl[0].vt[0]" "LegLeft1Shape34.twl";
connectAttr "polyCylinder37.out" "LegLeft1Shape34Orig.i";
connectAttr "tweak26.og[0]" "LegLeft2Shape35.i";
connectAttr "groupId61.id" "LegLeft2Shape35.iog.og[1].gid";
connectAttr "tweakSet26.mwc" "LegLeft2Shape35.iog.og[1].gco";
connectAttr "tweak26.vl[0].vt[0]" "LegLeft2Shape35.twl";
connectAttr "polyCylinder38.out" "LegLeft2Shape35Orig.i";
connectAttr "tweak27.og[0]" "LegLeft3Shape36.i";
connectAttr "groupId63.id" "LegLeft3Shape36.iog.og[1].gid";
connectAttr "tweakSet27.mwc" "LegLeft3Shape36.iog.og[1].gco";
connectAttr "tweak27.vl[0].vt[0]" "LegLeft3Shape36.twl";
connectAttr "polyCylinder39.out" "LegLeft3Shape36Orig.i";
connectAttr "tweak28.og[0]" "LegLeft4Shape37.i";
connectAttr "groupId65.id" "LegLeft4Shape37.iog.og[1].gid";
connectAttr "tweakSet28.mwc" "LegLeft4Shape37.iog.og[1].gco";
connectAttr "tweak28.vl[0].vt[0]" "LegLeft4Shape37.twl";
connectAttr "polyCylinder40.out" "LegLeft4Shape37Orig.i";
connectAttr "tweak30.og[0]" "LegLeft2Shape43.i";
connectAttr "groupId69.id" "LegLeft2Shape43.iog.og[1].gid";
connectAttr "tweakSet30.mwc" "LegLeft2Shape43.iog.og[1].gco";
connectAttr "tweak30.vl[0].vt[0]" "LegLeft2Shape43.twl";
connectAttr "polyCylinder46.out" "LegLeft2Shape43Orig.i";
connectAttr "tweak31.og[0]" "LegLeft2Shape40.i";
connectAttr "groupId71.id" "LegLeft2Shape40.iog.og[1].gid";
connectAttr "tweakSet31.mwc" "LegLeft2Shape40.iog.og[1].gco";
connectAttr "tweak31.vl[0].vt[0]" "LegLeft2Shape40.twl";
connectAttr "polyCylinder43.out" "LegLeft2Shape40Orig.i";
connectAttr "tweak32.og[0]" "LegLeft1Shape39.i";
connectAttr "groupId73.id" "LegLeft1Shape39.iog.og[1].gid";
connectAttr "tweakSet32.mwc" "LegLeft1Shape39.iog.og[1].gco";
connectAttr "tweak32.vl[0].vt[0]" "LegLeft1Shape39.twl";
connectAttr "polyCylinder42.out" "LegLeft1Shape39Orig.i";
connectAttr "tweak36.og[0]" "LegLeft1Shape45.i";
connectAttr "groupId81.id" "LegLeft1Shape45.iog.og[1].gid";
connectAttr "tweakSet36.mwc" "LegLeft1Shape45.iog.og[1].gco";
connectAttr "tweak36.vl[0].vt[0]" "LegLeft1Shape45.twl";
connectAttr "polyCylinder48.out" "LegLeft1Shape45Orig.i";
connectAttr "tweak37.og[0]" "LegLeft2Shape46.i";
connectAttr "groupId83.id" "LegLeft2Shape46.iog.og[1].gid";
connectAttr "tweakSet37.mwc" "LegLeft2Shape46.iog.og[1].gco";
connectAttr "tweak37.vl[0].vt[0]" "LegLeft2Shape46.twl";
connectAttr "polyCylinder49.out" "LegLeft2Shape46Orig.i";
connectAttr "tweak38.og[0]" "LegLeft3Shape47.i";
connectAttr "groupId85.id" "LegLeft3Shape47.iog.og[1].gid";
connectAttr "tweakSet38.mwc" "LegLeft3Shape47.iog.og[1].gco";
connectAttr "tweak38.vl[0].vt[0]" "LegLeft3Shape47.twl";
connectAttr "polyCylinder50.out" "LegLeft3Shape47Orig.i";
connectAttr "tweak39.og[0]" "LegLeft4Shape48.i";
connectAttr "groupId87.id" "LegLeft4Shape48.iog.og[1].gid";
connectAttr "tweakSet39.mwc" "LegLeft4Shape48.iog.og[1].gco";
connectAttr "tweak39.vl[0].vt[0]" "LegLeft4Shape48.twl";
connectAttr "polyCylinder51.out" "LegLeft4Shape48Orig.i";
connectAttr "skinCluster3GroupId.id" "|HoverWing|LeftWings|Rear|RearShape.iog.og[0].gid"
		;
connectAttr "skinCluster3Set.mwc" "|HoverWing|LeftWings|Rear|RearShape.iog.og[0].gco"
		;
connectAttr "groupId15.id" "|HoverWing|LeftWings|Rear|RearShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "|HoverWing|LeftWings|Rear|RearShape.iog.og[1].gco";
connectAttr "skinCluster3.og[0]" "|HoverWing|LeftWings|Rear|RearShape.i";
connectAttr "tweak3.vl[0].vt[0]" "|HoverWing|LeftWings|Rear|RearShape.twl";
connectAttr "transformGeometry7.og" "|HoverWing|LeftWings|Rear|RearShapeOrig.i";
connectAttr "skinCluster4.og[0]" "|HoverWing|LeftWings|Front|FrontShape.i";
connectAttr "skinCluster4GroupId.id" "|HoverWing|LeftWings|Front|FrontShape.iog.og[0].gid"
		;
connectAttr "skinCluster4Set.mwc" "|HoverWing|LeftWings|Front|FrontShape.iog.og[0].gco"
		;
connectAttr "groupId17.id" "|HoverWing|LeftWings|Front|FrontShape.iog.og[1].gid"
		;
connectAttr "tweakSet4.mwc" "|HoverWing|LeftWings|Front|FrontShape.iog.og[1].gco"
		;
connectAttr "tweak4.vl[0].vt[0]" "|HoverWing|LeftWings|Front|FrontShape.twl";
connectAttr "transformGeometry8.og" "|HoverWing|LeftWings|Front|FrontShapeOrig.i"
		;
connectAttr "skinCluster2.og[0]" "|HoverWing|RightWings|Rear|RearShape.i";
connectAttr "skinCluster2GroupId.id" "|HoverWing|RightWings|Rear|RearShape.iog.og[0].gid"
		;
connectAttr "skinCluster2Set.mwc" "|HoverWing|RightWings|Rear|RearShape.iog.og[0].gco"
		;
connectAttr "groupId13.id" "|HoverWing|RightWings|Rear|RearShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "|HoverWing|RightWings|Rear|RearShape.iog.og[1].gco"
		;
connectAttr "tweak2.vl[0].vt[0]" "|HoverWing|RightWings|Rear|RearShape.twl";
connectAttr "transformGeometry11.og" "|HoverWing|RightWings|Rear|RearShapeOrig.i"
		;
connectAttr "skinCluster1.og[0]" "|HoverWing|RightWings|Front|FrontShape.i";
connectAttr "skinCluster1GroupId.id" "|HoverWing|RightWings|Front|FrontShape.iog.og[0].gid"
		;
connectAttr "skinCluster1Set.mwc" "|HoverWing|RightWings|Front|FrontShape.iog.og[0].gco"
		;
connectAttr "groupId11.id" "|HoverWing|RightWings|Front|FrontShape.iog.og[1].gid"
		;
connectAttr "tweakSet1.mwc" "|HoverWing|RightWings|Front|FrontShape.iog.og[1].gco"
		;
connectAttr "tweak1.vl[0].vt[0]" "|HoverWing|RightWings|Front|FrontShape.twl";
connectAttr "transformGeometry12.og" "|HoverWing|RightWings|Front|FrontShapeOrig.i"
		;
connectAttr "WingRightFrontjoint.s" "joint2.is";
connectAttr "joint2.tx" "effector7.tx";
connectAttr "joint2.ty" "effector7.ty";
connectAttr "joint2.tz" "effector7.tz";
connectAttr "WingRightRearjoint.s" "joint4.is";
connectAttr "joint4.tx" "effector8.tx";
connectAttr "joint4.ty" "effector8.ty";
connectAttr "joint4.tz" "effector8.tz";
connectAttr "WingLeftRearjoint.s" "joint6.is";
connectAttr "joint6.tx" "effector5.tx";
connectAttr "joint6.ty" "effector5.ty";
connectAttr "joint6.tz" "effector5.tz";
connectAttr "WingLeftFrontjoint.s" "joint8.is";
connectAttr "joint8.tx" "effector6.tx";
connectAttr "joint8.ty" "effector6.ty";
connectAttr "joint8.tz" "effector6.tz";
connectAttr "groupId3.id" "|WingTransforms|pSphere1|transform1|pSphereShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|WingTransforms|pSphere1|transform1|pSphereShape1.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "|WingTransforms|pSphere1|transform1|pSphereShape1.i"
		;
connectAttr "groupId4.id" "|WingTransforms|pSphere1|transform1|pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts4.og" "|WingTransforms|pSphere1|transform4|pSphereShape1.i"
		;
connectAttr "groupId9.id" "|WingTransforms|pSphere1|transform4|pSphereShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts1.og" "|WingTransforms|pSphere2|transform2|pSphereShape2.i"
		;
connectAttr "groupId1.id" "|WingTransforms|pSphere2|transform2|pSphereShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|WingTransforms|pSphere2|transform2|pSphereShape2.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|WingTransforms|pSphere2|transform2|pSphereShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "|WingTransforms|pSphere2|transform3|pSphereShape2.i"
		;
connectAttr "groupId7.id" "|WingTransforms|pSphere2|transform3|pSphereShape2.ciog.cog[0].cgid"
		;
connectAttr "WingLeftRearjoint.msg" "WingLeftRearikHandle.hsj";
connectAttr "effector5.hp" "WingLeftRearikHandle.hee";
connectAttr "ikRPsolver1.msg" "WingLeftRearikHandle.hsv";
connectAttr "WingLeftRearikHandle_visibility.o" "WingLeftRearikHandle.v";
connectAttr "WingLeftRearikHandle_translateX.o" "WingLeftRearikHandle.tx";
connectAttr "WingLeftRearikHandle_translateY.o" "WingLeftRearikHandle.ty";
connectAttr "WingLeftRearikHandle_translateZ.o" "WingLeftRearikHandle.tz";
connectAttr "WingLeftRearikHandle_rotateX.o" "WingLeftRearikHandle.rx";
connectAttr "WingLeftRearikHandle_rotateY.o" "WingLeftRearikHandle.ry";
connectAttr "WingLeftRearikHandle_rotateZ.o" "WingLeftRearikHandle.rz";
connectAttr "WingLeftRearikHandle_scaleX.o" "WingLeftRearikHandle.sx";
connectAttr "WingLeftRearikHandle_scaleY.o" "WingLeftRearikHandle.sy";
connectAttr "WingLeftRearikHandle_scaleZ.o" "WingLeftRearikHandle.sz";
connectAttr "WingLeftRearikHandle_poleVectorX.o" "WingLeftRearikHandle.pvx";
connectAttr "WingLeftRearikHandle_poleVectorY.o" "WingLeftRearikHandle.pvy";
connectAttr "WingLeftRearikHandle_poleVectorZ.o" "WingLeftRearikHandle.pvz";
connectAttr "WingLeftRearikHandle_offset.o" "WingLeftRearikHandle.off";
connectAttr "WingLeftRearikHandle_roll.o" "WingLeftRearikHandle.rol";
connectAttr "WingLeftRearikHandle_twist.o" "WingLeftRearikHandle.twi";
connectAttr "WingLeftRearikHandle_ikBlend.o" "WingLeftRearikHandle.ikb";
connectAttr "WingLeftFrontjoint.msg" "WingLeftFrontikHandle.hsj";
connectAttr "effector6.hp" "WingLeftFrontikHandle.hee";
connectAttr "ikRPsolver1.msg" "WingLeftFrontikHandle.hsv";
connectAttr "WingLeftFrontikHandle_visibility.o" "WingLeftFrontikHandle.v";
connectAttr "WingLeftFrontikHandle_translateX.o" "WingLeftFrontikHandle.tx";
connectAttr "WingLeftFrontikHandle_translateY.o" "WingLeftFrontikHandle.ty";
connectAttr "WingLeftFrontikHandle_translateZ.o" "WingLeftFrontikHandle.tz";
connectAttr "WingLeftFrontikHandle_rotateX.o" "WingLeftFrontikHandle.rx";
connectAttr "WingLeftFrontikHandle_rotateY.o" "WingLeftFrontikHandle.ry";
connectAttr "WingLeftFrontikHandle_rotateZ.o" "WingLeftFrontikHandle.rz";
connectAttr "WingLeftFrontikHandle_scaleX.o" "WingLeftFrontikHandle.sx";
connectAttr "WingLeftFrontikHandle_scaleY.o" "WingLeftFrontikHandle.sy";
connectAttr "WingLeftFrontikHandle_scaleZ.o" "WingLeftFrontikHandle.sz";
connectAttr "WingLeftFrontikHandle_poleVectorX.o" "WingLeftFrontikHandle.pvx";
connectAttr "WingLeftFrontikHandle_poleVectorY.o" "WingLeftFrontikHandle.pvy";
connectAttr "WingLeftFrontikHandle_poleVectorZ.o" "WingLeftFrontikHandle.pvz";
connectAttr "WingLeftFrontikHandle_offset.o" "WingLeftFrontikHandle.off";
connectAttr "WingLeftFrontikHandle_roll.o" "WingLeftFrontikHandle.rol";
connectAttr "WingLeftFrontikHandle_twist.o" "WingLeftFrontikHandle.twi";
connectAttr "WingLeftFrontikHandle_ikBlend.o" "WingLeftFrontikHandle.ikb";
connectAttr "WingRightFrontjoint.msg" "WingRightFrontikHandle.hsj";
connectAttr "effector7.hp" "WingRightFrontikHandle.hee";
connectAttr "ikRPsolver1.msg" "WingRightFrontikHandle.hsv";
connectAttr "WingRightFrontikHandle_visibility.o" "WingRightFrontikHandle.v";
connectAttr "WingRightFrontikHandle_translateX.o" "WingRightFrontikHandle.tx";
connectAttr "WingRightFrontikHandle_translateY.o" "WingRightFrontikHandle.ty";
connectAttr "WingRightFrontikHandle_translateZ.o" "WingRightFrontikHandle.tz";
connectAttr "WingRightFrontikHandle_rotateX.o" "WingRightFrontikHandle.rx";
connectAttr "WingRightFrontikHandle_rotateY.o" "WingRightFrontikHandle.ry";
connectAttr "WingRightFrontikHandle_rotateZ.o" "WingRightFrontikHandle.rz";
connectAttr "WingRightFrontikHandle_scaleX.o" "WingRightFrontikHandle.sx";
connectAttr "WingRightFrontikHandle_scaleY.o" "WingRightFrontikHandle.sy";
connectAttr "WingRightFrontikHandle_scaleZ.o" "WingRightFrontikHandle.sz";
connectAttr "WingRightFrontikHandle_poleVectorX.o" "WingRightFrontikHandle.pvx";
connectAttr "WingRightFrontikHandle_poleVectorY.o" "WingRightFrontikHandle.pvy";
connectAttr "WingRightFrontikHandle_poleVectorZ.o" "WingRightFrontikHandle.pvz";
connectAttr "WingRightFrontikHandle_offset.o" "WingRightFrontikHandle.off";
connectAttr "WingRightFrontikHandle_roll.o" "WingRightFrontikHandle.rol";
connectAttr "WingRightFrontikHandle_twist.o" "WingRightFrontikHandle.twi";
connectAttr "WingRightFrontikHandle_ikBlend.o" "WingRightFrontikHandle.ikb";
connectAttr "WingRightRearjoint.msg" "WingRightReadikHandle.hsj";
connectAttr "effector8.hp" "WingRightReadikHandle.hee";
connectAttr "ikRPsolver1.msg" "WingRightReadikHandle.hsv";
connectAttr "WingRightReadikHandle_visibility.o" "WingRightReadikHandle.v";
connectAttr "WingRightReadikHandle_translateX.o" "WingRightReadikHandle.tx";
connectAttr "WingRightReadikHandle_translateY.o" "WingRightReadikHandle.ty";
connectAttr "WingRightReadikHandle_translateZ.o" "WingRightReadikHandle.tz";
connectAttr "WingRightReadikHandle_rotateX.o" "WingRightReadikHandle.rx";
connectAttr "WingRightReadikHandle_rotateY.o" "WingRightReadikHandle.ry";
connectAttr "WingRightReadikHandle_rotateZ.o" "WingRightReadikHandle.rz";
connectAttr "WingRightReadikHandle_scaleX.o" "WingRightReadikHandle.sx";
connectAttr "WingRightReadikHandle_scaleY.o" "WingRightReadikHandle.sy";
connectAttr "WingRightReadikHandle_scaleZ.o" "WingRightReadikHandle.sz";
connectAttr "WingRightReadikHandle_poleVectorX.o" "WingRightReadikHandle.pvx";
connectAttr "WingRightReadikHandle_poleVectorY.o" "WingRightReadikHandle.pvy";
connectAttr "WingRightReadikHandle_poleVectorZ.o" "WingRightReadikHandle.pvz";
connectAttr "WingRightReadikHandle_offset.o" "WingRightReadikHandle.off";
connectAttr "WingRightReadikHandle_roll.o" "WingRightReadikHandle.rol";
connectAttr "WingRightReadikHandle_twist.o" "WingRightReadikHandle.twi";
connectAttr "WingRightReadikHandle_ikBlend.o" "WingRightReadikHandle.ikb";
connectAttr "TailJoints.s" "joint10.is";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11.s" "joint12.is";
connectAttr "joint12.tx" "effector9.tx";
connectAttr "joint12.ty" "effector9.ty";
connectAttr "joint12.tz" "effector9.tz";
connectAttr "joint10.msg" "TailikHandle1.hsj";
connectAttr "effector9.hp" "TailikHandle1.hee";
connectAttr "ikRPsolver1.msg" "TailikHandle1.hsv";
connectAttr "TailikHandle1_translateX.o" "TailikHandle1.tx";
connectAttr "TailikHandle1_translateY.o" "TailikHandle1.ty";
connectAttr "TailikHandle1_translateZ.o" "TailikHandle1.tz";
connectAttr "TailikHandle1_visibility.o" "TailikHandle1.v";
connectAttr "TailikHandle1_rotateX.o" "TailikHandle1.rx";
connectAttr "TailikHandle1_rotateY.o" "TailikHandle1.ry";
connectAttr "TailikHandle1_rotateZ.o" "TailikHandle1.rz";
connectAttr "TailikHandle1_scaleX.o" "TailikHandle1.sx";
connectAttr "TailikHandle1_scaleY.o" "TailikHandle1.sy";
connectAttr "TailikHandle1_scaleZ.o" "TailikHandle1.sz";
connectAttr "TailikHandle1_poleVectorX.o" "TailikHandle1.pvx";
connectAttr "TailikHandle1_poleVectorY.o" "TailikHandle1.pvy";
connectAttr "TailikHandle1_poleVectorZ.o" "TailikHandle1.pvz";
connectAttr "TailikHandle1_offset.o" "TailikHandle1.off";
connectAttr "TailikHandle1_roll.o" "TailikHandle1.rol";
connectAttr "TailikHandle1_twist.o" "TailikHandle1.twi";
connectAttr "TailikHandle1_ikBlend.o" "TailikHandle1.ikb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "Eyes1.oc" "blinn1SG.ss";
connectAttr "BigLeftShape.iog" "blinn1SG.dsm" -na;
connectAttr "BigRightShape.iog" "blinn1SG.dsm" -na;
connectAttr "SmallLeftShape.iog" "blinn1SG.dsm" -na;
connectAttr "SmallRightShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "Eyes1.msg" "materialInfo1.m";
connectAttr "Legs.oc" "blinn2SG.ss";
connectAttr "pCylinderShape1.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft30Shape31.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape2.iog" "blinn2SG.dsm" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "LegLeft4Shape48.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape47.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape46.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape45.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft30Shape.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft4Shape9.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape8.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeftShape5.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape32.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape7.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape6.iog" "blinn2SG.dsm" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "LegLeft4Shape14.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape11.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape13.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape36.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape35.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape34.iog" "blinn2SG.dsm" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "LegLeft4Shape.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft4Shape42.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft3Shape41.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeftShape38.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft1Shape39.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape40.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape43.iog" "blinn2SG.dsm" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "LegLeft4Shape37.iog" "blinn2SG.dsm" -na;
connectAttr "LegLeft2Shape12.iog" "blinn2SG.dsm" -na;
connectAttr "StingerShape.iog" "blinn2SG.dsm" -na;
connectAttr "TailShape.iog" "blinn2SG.dsm" -na;
connectAttr "ThoraxShape.iog" "blinn2SG.dsm" -na;
connectAttr "AbdomenShape.iog" "blinn2SG.dsm" -na;
connectAttr "HeadShape.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "Legs.msg" "materialInfo2.m";
connectAttr "file1.oc" "Wings.c";
connectAttr "Wings.oc" "blinn3SG.ss";
connectAttr "blinn3SG.msg" "materialInfo3.sg";
connectAttr "Wings.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "AnimPinch.sl" "BaseAnimation.chsl[0]";
connectAttr "AnimCrawl.sl" "BaseAnimation.chsl[1]";
connectAttr "BaseAnimation1.sl" "BaseAnimation.chsl[2]";
connectAttr "BaseAnimation1.play" "BaseAnimation.cdly[0]";
connectAttr "AnimPinch.play" "BaseAnimation.cdly[1]";
connectAttr "AnimCrawl.play" "BaseAnimation.cdly[2]";
connectAttr "BaseAnimation.csol" "AnimPinch.sslo";
connectAttr "BaseAnimation.fgwt" "AnimPinch.pwth";
connectAttr "BaseAnimation.omte" "AnimPinch.pmte";
connectAttr "BaseAnimation.csol" "AnimCrawl.sslo";
connectAttr "BaseAnimation.fgwt" "AnimCrawl.pwth";
connectAttr "BaseAnimation.omte" "AnimCrawl.pmte";
connectAttr "file2.oc" "Body.c";
connectAttr "Body.oc" "blinn4SG.ss";
connectAttr "blinn4SG.msg" "materialInfo4.sg";
connectAttr "Body.msg" "materialInfo4.m";
connectAttr "file2.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "Wings.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blinn4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Body.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "renderLayerManager2.rlmi[0]" "defaultRenderLayer2.rlid";
connectAttr "AnimPinch1.sl" "BaseAnimation1.chsl[0]";
connectAttr "AnimCrawl1.sl" "BaseAnimation1.chsl[1]";
connectAttr "AnimPinch1.play" "BaseAnimation1.cdly[0]";
connectAttr "AnimCrawl1.play" "BaseAnimation1.cdly[1]";
connectAttr "BaseAnimation.csol" "BaseAnimation1.sslo";
connectAttr "BaseAnimation.fgwt" "BaseAnimation1.pwth";
connectAttr "BaseAnimation.omte" "BaseAnimation1.pmte";
connectAttr "BaseAnimation1.csol" "AnimPinch1.sslo";
connectAttr "BaseAnimation1.fgwt" "AnimPinch1.pwth";
connectAttr "BaseAnimation1.omte" "AnimPinch1.pmte";
connectAttr "MandibleRightikHandle.v" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.tx" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.ty" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.tz" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.rx" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.ry" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.rz" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.sx" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.sy" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.sz" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.pvx" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.pvy" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.pvz" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.off" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.rol" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.twi" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle.ikb" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.v" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.tx" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.ty" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.tz" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.rx" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.ry" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.rz" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.sx" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.sy" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.sz" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.pvx" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.pvy" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.pvz" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.off" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.rol" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.twi" "AnimPinch1.dsm" -na;
connectAttr "MandibleLeftikHandle.ikb" "AnimPinch1.dsm" -na;
connectAttr "MandibleRightikHandle_visibility_AnimPinch1.msg" "AnimPinch1.bnds[0]"
		;
connectAttr "MandibleRightikHandle_translateX_AnimPinch1.msg" "AnimPinch1.bnds[1]"
		;
connectAttr "MandibleRightikHandle_translateY_AnimPinch1.msg" "AnimPinch1.bnds[2]"
		;
connectAttr "MandibleRightikHandle_translateZ_AnimPinch1.msg" "AnimPinch1.bnds[3]"
		;
connectAttr "MandibleRightikHandle_rotate_AnimPinch1.msg" "AnimPinch1.bnds[7]";
connectAttr "MandibleRightikHandle_scaleX_AnimPinch1.msg" "AnimPinch1.bnds[8]";
connectAttr "MandibleRightikHandle_scaleY_AnimPinch1.msg" "AnimPinch1.bnds[9]";
connectAttr "MandibleRightikHandle_scaleZ_AnimPinch1.msg" "AnimPinch1.bnds[10]";
connectAttr "MandibleRightikHandle_poleVectorX_AnimPinch1.msg" "AnimPinch1.bnds[11]"
		;
connectAttr "MandibleRightikHandle_poleVectorY_AnimPinch1.msg" "AnimPinch1.bnds[12]"
		;
connectAttr "MandibleRightikHandle_poleVectorZ_AnimPinch1.msg" "AnimPinch1.bnds[13]"
		;
connectAttr "MandibleRightikHandle_offset_AnimPinch1.msg" "AnimPinch1.bnds[14]";
connectAttr "MandibleRightikHandle_roll_AnimPinch1.msg" "AnimPinch1.bnds[15]";
connectAttr "MandibleRightikHandle_twist_AnimPinch1.msg" "AnimPinch1.bnds[16]";
connectAttr "MandibleRightikHandle_ikBlend_AnimPinch1.msg" "AnimPinch1.bnds[17]"
		;
connectAttr "MandibleLeftikHandle_visibility_AnimPinch1.msg" "AnimPinch1.bnds[18]"
		;
connectAttr "MandibleLeftikHandle_translateX_AnimPinch1.msg" "AnimPinch1.bnds[19]"
		;
connectAttr "MandibleLeftikHandle_translateY_AnimPinch1.msg" "AnimPinch1.bnds[20]"
		;
connectAttr "MandibleLeftikHandle_translateZ_AnimPinch1.msg" "AnimPinch1.bnds[21]"
		;
connectAttr "MandibleLeftikHandle_rotate_AnimPinch1.msg" "AnimPinch1.bnds[25]";
connectAttr "MandibleLeftikHandle_scaleX_AnimPinch1.msg" "AnimPinch1.bnds[26]";
connectAttr "MandibleLeftikHandle_scaleY_AnimPinch1.msg" "AnimPinch1.bnds[27]";
connectAttr "MandibleLeftikHandle_scaleZ_AnimPinch1.msg" "AnimPinch1.bnds[28]";
connectAttr "MandibleLeftikHandle_poleVectorX_AnimPinch1.msg" "AnimPinch1.bnds[29]"
		;
connectAttr "MandibleLeftikHandle_poleVectorY_AnimPinch1.msg" "AnimPinch1.bnds[30]"
		;
connectAttr "MandibleLeftikHandle_poleVectorZ_AnimPinch1.msg" "AnimPinch1.bnds[31]"
		;
connectAttr "MandibleLeftikHandle_offset_AnimPinch1.msg" "AnimPinch1.bnds[32]";
connectAttr "MandibleLeftikHandle_roll_AnimPinch1.msg" "AnimPinch1.bnds[33]";
connectAttr "MandibleLeftikHandle_twist_AnimPinch1.msg" "AnimPinch1.bnds[34]";
connectAttr "MandibleLeftikHandle_ikBlend_AnimPinch1.msg" "AnimPinch1.bnds[35]";
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_visibility_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_visibility_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_visibility.o" "MandibleRightikHandle_visibility_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_translateX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_translateX_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_translateX.o" "MandibleRightikHandle_translateX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_translateY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_translateY_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_translateY.o" "MandibleRightikHandle_translateY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_translateZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_translateZ_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_translateZ.o" "MandibleRightikHandle_translateZ_AnimPinch1.ia"
		;
connectAttr "MandibleRightikHandle_rotateX.o" "MandibleRightikHandle_rotate_AnimPinch1.iax"
		;
connectAttr "MandibleRightikHandle_rotateY.o" "MandibleRightikHandle_rotate_AnimPinch1.iay"
		;
connectAttr "MandibleRightikHandle_rotateZ.o" "MandibleRightikHandle_rotate_AnimPinch1.iaz"
		;
connectAttr "MandibleRightikHandle.ro" "MandibleRightikHandle_rotate_AnimPinch1.ro"
		;
connectAttr "AnimPinch1.oram" "MandibleRightikHandle_rotate_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_rotate_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_rotate_AnimPinch1.wb";
connectAttr "AnimPinch1.sam" "MandibleRightikHandle_scaleX_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_scaleX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_scaleX_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_scaleX.o" "MandibleRightikHandle_scaleX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.sam" "MandibleRightikHandle_scaleY_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_scaleY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_scaleY_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_scaleY.o" "MandibleRightikHandle_scaleY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.sam" "MandibleRightikHandle_scaleZ_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_scaleZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_scaleZ_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_scaleZ.o" "MandibleRightikHandle_scaleZ_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_poleVectorX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_poleVectorX_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_poleVectorX.o" "MandibleRightikHandle_poleVectorX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_poleVectorY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_poleVectorY_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_poleVectorY.o" "MandibleRightikHandle_poleVectorY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_poleVectorZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_poleVectorZ_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_poleVectorZ.o" "MandibleRightikHandle_poleVectorZ_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_offset_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_offset_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_offset.o" "MandibleRightikHandle_offset_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_roll_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_roll_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_roll.o" "MandibleRightikHandle_roll_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_twist_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_twist_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_twist.o" "MandibleRightikHandle_twist_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleRightikHandle_ikBlend_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleRightikHandle_ikBlend_AnimPinch1.wb";
connectAttr "MandibleRightikHandle_ikBlend.o" "MandibleRightikHandle_ikBlend_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_visibility_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_visibility_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_visibility.o" "MandibleLeftikHandle_visibility_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_translateX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_translateX_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_translateX.o" "MandibleLeftikHandle_translateX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_translateY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_translateY_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_translateY.o" "MandibleLeftikHandle_translateY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_translateZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_translateZ_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_translateZ.o" "MandibleLeftikHandle_translateZ_AnimPinch1.ia"
		;
connectAttr "MandibleLeftikHandle_rotateX.o" "MandibleLeftikHandle_rotate_AnimPinch1.iax"
		;
connectAttr "MandibleLeftikHandle_rotateY.o" "MandibleLeftikHandle_rotate_AnimPinch1.iay"
		;
connectAttr "MandibleLeftikHandle_rotateZ.o" "MandibleLeftikHandle_rotate_AnimPinch1.iaz"
		;
connectAttr "MandibleLeftikHandle.ro" "MandibleLeftikHandle_rotate_AnimPinch1.ro"
		;
connectAttr "AnimPinch1.oram" "MandibleLeftikHandle_rotate_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_rotate_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_rotate_AnimPinch1.wb";
connectAttr "AnimPinch1.sam" "MandibleLeftikHandle_scaleX_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_scaleX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_scaleX_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_scaleX.o" "MandibleLeftikHandle_scaleX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.sam" "MandibleLeftikHandle_scaleY_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_scaleY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_scaleY_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_scaleY.o" "MandibleLeftikHandle_scaleY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.sam" "MandibleLeftikHandle_scaleZ_AnimPinch1.acm";
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_scaleZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_scaleZ_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_scaleZ.o" "MandibleLeftikHandle_scaleZ_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_poleVectorX_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_poleVectorX_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_poleVectorX.o" "MandibleLeftikHandle_poleVectorX_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_poleVectorY_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_poleVectorY_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_poleVectorY.o" "MandibleLeftikHandle_poleVectorY_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_poleVectorZ_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_poleVectorZ_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_poleVectorZ.o" "MandibleLeftikHandle_poleVectorZ_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_offset_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_offset_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_offset.o" "MandibleLeftikHandle_offset_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_roll_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_roll_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_roll.o" "MandibleLeftikHandle_roll_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_twist_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_twist_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_twist.o" "MandibleLeftikHandle_twist_AnimPinch1.ia"
		;
connectAttr "AnimPinch1.bgwt" "MandibleLeftikHandle_ikBlend_AnimPinch1.wa";
connectAttr "AnimPinch1.fgwt" "MandibleLeftikHandle_ikBlend_AnimPinch1.wb";
connectAttr "MandibleLeftikHandle_ikBlend.o" "MandibleLeftikHandle_ikBlend_AnimPinch1.ia"
		;
connectAttr "BaseAnimation1.csol" "AnimCrawl1.sslo";
connectAttr "BaseAnimation1.fgwt" "AnimCrawl1.pwth";
connectAttr "BaseAnimation1.omte" "AnimCrawl1.pmte";
connectAttr "Membrane.oc" "blinn5SG.ss";
connectAttr "|HoverWing|LeftWings|Front|FrontShape.iog" "blinn5SG.dsm" -na;
connectAttr "|HoverWing|LeftWings|Rear|RearShape.iog" "blinn5SG.dsm" -na;
connectAttr "|HoverWing|RightWings|Rear|RearShape.iog" "blinn5SG.dsm" -na;
connectAttr "|HoverWing|RightWings|Front|FrontShape.iog" "blinn5SG.dsm" -na;
connectAttr "blinn5SG.msg" "materialInfo5.sg";
connectAttr "Membrane.msg" "materialInfo5.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "file3.oc" "blinn6.c";
connectAttr "blinn6.oc" "blinn6SG.ss";
connectAttr "blinn6SG.msg" "materialInfo6.sg";
connectAttr "blinn6.msg" "materialInfo6.m";
connectAttr "file3.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "|WingTransforms|pSphere2|transform2|pSphereShape2.o" "polyCBoolOp1.ip[0]"
		;
connectAttr "|WingTransforms|pSphere1|transform1|pSphereShape1.o" "polyCBoolOp1.ip[1]"
		;
connectAttr "|WingTransforms|pSphere2|transform2|pSphereShape2.wm" "polyCBoolOp1.im[0]"
		;
connectAttr "|WingTransforms|pSphere1|transform1|pSphereShape1.wm" "polyCBoolOp1.im[1]"
		;
connectAttr "polySphere13.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySphere12.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySphere14.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "transformGeometry1.ig";
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr "blinn6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr "blinn6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[2].dn"
		;
connectAttr "Membrane.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[3].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[4].dn"
		;
connectAttr "blinn5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[5].dn"
		;
connectAttr "polyCBoolOp1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "transformGeometry2.ig";
connectAttr "transformGeometry1.og" "transformGeometry3.ig";
connectAttr "transformGeometry5.og" "transformGeometry4.ig";
connectAttr "polyTweak3.out" "transformGeometry5.ig";
connectAttr "polySphere15.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "transformGeometry6.ig";
connectAttr "polyCBoolOp2.out" "polyTweak4.ip";
connectAttr "|WingTransforms|pSphere2|transform3|pSphereShape2.o" "polyCBoolOp2.ip[0]"
		;
connectAttr "|WingTransforms|pSphere1|transform4|pSphereShape1.o" "polyCBoolOp2.ip[1]"
		;
connectAttr "|WingTransforms|pSphere2|transform3|pSphereShape2.wm" "polyCBoolOp2.im[0]"
		;
connectAttr "|WingTransforms|pSphere1|transform4|pSphereShape1.wm" "polyCBoolOp2.im[1]"
		;
connectAttr "polySphere16.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "polySphere17.out" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "transformGeometry3.og" "transformGeometry7.ig";
connectAttr "transformGeometry2.og" "transformGeometry8.ig";
connectAttr "transformGeometry4.og" "transformGeometry9.ig";
connectAttr "transformGeometry6.og" "transformGeometry10.ig";
connectAttr "transformGeometry9.og" "transformGeometry11.ig";
connectAttr "transformGeometry10.og" "transformGeometry12.ig";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "WingRightFrontjoint.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "WingRightFrontjoint.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "WingRightFrontjoint.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "groupParts6.og" "tweak1.ip[0].ig";
connectAttr "groupId11.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "|HoverWing|RightWings|Front|FrontShape.iog.og[0]" "skinCluster1Set.dsm"
		 -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId11.msg" "tweakSet1.gn" -na;
connectAttr "|HoverWing|RightWings|Front|FrontShape.iog.og[1]" "tweakSet1.dsm" -na
		;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "|HoverWing|RightWings|Front|FrontShapeOrig.w" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "WingRightFrontjoint.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "WingRightFrontjoint.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "WingRightRearjoint.wm" "skinCluster2.ma[0]";
connectAttr "joint4.wm" "skinCluster2.ma[1]";
connectAttr "WingRightRearjoint.liw" "skinCluster2.lw[0]";
connectAttr "joint4.liw" "skinCluster2.lw[1]";
connectAttr "WingRightRearjoint.obcc" "skinCluster2.ifcl[0]";
connectAttr "joint4.obcc" "skinCluster2.ifcl[1]";
connectAttr "groupParts8.og" "tweak2.ip[0].ig";
connectAttr "groupId13.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "|HoverWing|RightWings|Rear|RearShape.iog.og[0]" "skinCluster2Set.dsm"
		 -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId13.msg" "tweakSet2.gn" -na;
connectAttr "|HoverWing|RightWings|Rear|RearShape.iog.og[1]" "tweakSet2.dsm" -na
		;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "|HoverWing|RightWings|Rear|RearShapeOrig.w" "groupParts8.ig";
connectAttr "groupId13.id" "groupParts8.gi";
connectAttr "WingRightRearjoint.msg" "bindPose2.m[0]";
connectAttr "joint4.msg" "bindPose2.m[1]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "WingRightRearjoint.bps" "bindPose2.wm[0]";
connectAttr "joint4.bps" "bindPose2.wm[1]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster3.bp";
connectAttr "WingLeftRearjoint.wm" "skinCluster3.ma[0]";
connectAttr "joint6.wm" "skinCluster3.ma[1]";
connectAttr "WingLeftRearjoint.liw" "skinCluster3.lw[0]";
connectAttr "joint6.liw" "skinCluster3.lw[1]";
connectAttr "WingLeftRearjoint.obcc" "skinCluster3.ifcl[0]";
connectAttr "joint6.obcc" "skinCluster3.ifcl[1]";
connectAttr "groupParts10.og" "tweak3.ip[0].ig";
connectAttr "groupId15.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "|HoverWing|LeftWings|Rear|RearShape.iog.og[0]" "skinCluster3Set.dsm"
		 -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId15.msg" "tweakSet3.gn" -na;
connectAttr "|HoverWing|LeftWings|Rear|RearShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "|HoverWing|LeftWings|Rear|RearShapeOrig.w" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "WingLeftRearjoint.msg" "bindPose3.m[0]";
connectAttr "joint6.msg" "bindPose3.m[1]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "WingLeftRearjoint.bps" "bindPose3.wm[0]";
connectAttr "joint6.bps" "bindPose3.wm[1]";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster4.bp";
connectAttr "WingLeftFrontjoint.wm" "skinCluster4.ma[0]";
connectAttr "joint8.wm" "skinCluster4.ma[1]";
connectAttr "WingLeftFrontjoint.liw" "skinCluster4.lw[0]";
connectAttr "joint8.liw" "skinCluster4.lw[1]";
connectAttr "WingLeftFrontjoint.obcc" "skinCluster4.ifcl[0]";
connectAttr "joint8.obcc" "skinCluster4.ifcl[1]";
connectAttr "groupParts12.og" "tweak4.ip[0].ig";
connectAttr "groupId17.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "|HoverWing|LeftWings|Front|FrontShape.iog.og[0]" "skinCluster4Set.dsm"
		 -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId17.msg" "tweakSet4.gn" -na;
connectAttr "|HoverWing|LeftWings|Front|FrontShape.iog.og[1]" "tweakSet4.dsm" -na
		;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "|HoverWing|LeftWings|Front|FrontShapeOrig.w" "groupParts12.ig";
connectAttr "groupId17.id" "groupParts12.gi";
connectAttr "WingLeftFrontjoint.msg" "bindPose4.m[0]";
connectAttr "joint8.msg" "bindPose4.m[1]";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "WingLeftFrontjoint.bps" "bindPose4.wm[0]";
connectAttr "joint8.bps" "bindPose4.wm[1]";
connectAttr "groupParts22.og" "tweak9.ip[0].ig";
connectAttr "groupId27.id" "tweak9.ip[0].gi";
connectAttr "groupId27.msg" "tweakSet9.gn" -na;
connectAttr "LegLeft1Shape11.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "LegLeft1Shape11Orig.w" "groupParts22.ig";
connectAttr "groupId27.id" "groupParts22.gi";
connectAttr "groupParts24.og" "tweak10.ip[0].ig";
connectAttr "groupId29.id" "tweak10.ip[0].gi";
connectAttr "groupId29.msg" "tweakSet10.gn" -na;
connectAttr "LegLeft2Shape12.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "LegLeft2Shape12Orig.w" "groupParts24.ig";
connectAttr "groupId29.id" "groupParts24.gi";
connectAttr "groupParts26.og" "tweak11.ip[0].ig";
connectAttr "groupId31.id" "tweak11.ip[0].gi";
connectAttr "groupId31.msg" "tweakSet11.gn" -na;
connectAttr "LegLeft3Shape13.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "LegLeft3Shape13Orig.w" "groupParts26.ig";
connectAttr "groupId31.id" "groupParts26.gi";
connectAttr "groupParts28.og" "tweak12.ip[0].ig";
connectAttr "groupId33.id" "tweak12.ip[0].gi";
connectAttr "groupId33.msg" "tweakSet12.gn" -na;
connectAttr "LegLeft4Shape14.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "LegLeft4Shape14Orig.w" "groupParts28.ig";
connectAttr "groupId33.id" "groupParts28.gi";
connectAttr "groupParts32.og" "tweak14.ip[0].ig";
connectAttr "groupId37.id" "tweak14.ip[0].gi";
connectAttr "groupId37.msg" "tweakSet14.gn" -na;
connectAttr "LegLeft1Shape6.iog.og[1]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "LegLeft1Shape6Orig.w" "groupParts32.ig";
connectAttr "groupId37.id" "groupParts32.gi";
connectAttr "groupParts34.og" "tweak15.ip[0].ig";
connectAttr "groupId39.id" "tweak15.ip[0].gi";
connectAttr "groupId39.msg" "tweakSet15.gn" -na;
connectAttr "LegLeft2Shape7.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "LegLeft2Shape7Orig.w" "groupParts34.ig";
connectAttr "groupId39.id" "groupParts34.gi";
connectAttr "groupParts36.og" "tweak16.ip[0].ig";
connectAttr "groupId41.id" "tweak16.ip[0].gi";
connectAttr "groupId41.msg" "tweakSet16.gn" -na;
connectAttr "LegLeft2Shape32.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "LegLeft2Shape32Orig.w" "groupParts36.ig";
connectAttr "groupId41.id" "groupParts36.gi";
connectAttr "groupParts38.og" "tweak17.ip[0].ig";
connectAttr "groupId43.id" "tweak17.ip[0].gi";
connectAttr "groupId43.msg" "tweakSet17.gn" -na;
connectAttr "LegLeftShape5.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "LegLeftShape5Orig.w" "groupParts38.ig";
connectAttr "groupId43.id" "groupParts38.gi";
connectAttr "groupParts40.og" "tweak18.ip[0].ig";
connectAttr "groupId45.id" "tweak18.ip[0].gi";
connectAttr "groupId45.msg" "tweakSet18.gn" -na;
connectAttr "LegLeft3Shape8.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "LegLeft3Shape8Orig.w" "groupParts40.ig";
connectAttr "groupId45.id" "groupParts40.gi";
connectAttr "groupParts42.og" "tweak19.ip[0].ig";
connectAttr "groupId47.id" "tweak19.ip[0].gi";
connectAttr "groupId47.msg" "tweakSet19.gn" -na;
connectAttr "LegLeft4Shape9.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "LegLeft4Shape9Orig.w" "groupParts42.ig";
connectAttr "groupId47.id" "groupParts42.gi";
connectAttr "groupParts44.og" "tweak20.ip[0].ig";
connectAttr "groupId49.id" "tweak20.ip[0].gi";
connectAttr "groupId49.msg" "tweakSet20.gn" -na;
connectAttr "LegLeft1Shape.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "LegLeft1ShapeOrig.w" "groupParts44.ig";
connectAttr "groupId49.id" "groupParts44.gi";
connectAttr "groupParts46.og" "tweak21.ip[0].ig";
connectAttr "groupId51.id" "tweak21.ip[0].gi";
connectAttr "groupId51.msg" "tweakSet21.gn" -na;
connectAttr "LegLeft2Shape.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "LegLeft2ShapeOrig.w" "groupParts46.ig";
connectAttr "groupId51.id" "groupParts46.gi";
connectAttr "groupParts48.og" "tweak22.ip[0].ig";
connectAttr "groupId53.id" "tweak22.ip[0].gi";
connectAttr "groupId53.msg" "tweakSet22.gn" -na;
connectAttr "LegLeft3Shape.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "LegLeft3ShapeOrig.w" "groupParts48.ig";
connectAttr "groupId53.id" "groupParts48.gi";
connectAttr "groupParts50.og" "tweak23.ip[0].ig";
connectAttr "groupId55.id" "tweak23.ip[0].gi";
connectAttr "groupId55.msg" "tweakSet23.gn" -na;
connectAttr "LegLeft4Shape.iog.og[1]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "LegLeft4ShapeOrig.w" "groupParts50.ig";
connectAttr "groupId55.id" "groupParts50.gi";
connectAttr "groupParts52.og" "tweak24.ip[0].ig";
connectAttr "groupId57.id" "tweak24.ip[0].gi";
connectAttr "groupId57.msg" "tweakSet24.gn" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShape.iog.og[1]" "tweakSet24.dsm"
		 -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftFrontJoint1|Upper|UpperShapeOrig.w" "groupParts52.ig"
		;
connectAttr "groupId57.id" "groupParts52.gi";
connectAttr "groupParts54.og" "tweak25.ip[0].ig";
connectAttr "groupId59.id" "tweak25.ip[0].gi";
connectAttr "groupId59.msg" "tweakSet25.gn" -na;
connectAttr "LegLeft1Shape34.iog.og[1]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "LegLeft1Shape34Orig.w" "groupParts54.ig";
connectAttr "groupId59.id" "groupParts54.gi";
connectAttr "groupParts56.og" "tweak26.ip[0].ig";
connectAttr "groupId61.id" "tweak26.ip[0].gi";
connectAttr "groupId61.msg" "tweakSet26.gn" -na;
connectAttr "LegLeft2Shape35.iog.og[1]" "tweakSet26.dsm" -na;
connectAttr "tweak26.msg" "tweakSet26.ub[0]";
connectAttr "LegLeft2Shape35Orig.w" "groupParts56.ig";
connectAttr "groupId61.id" "groupParts56.gi";
connectAttr "groupParts58.og" "tweak27.ip[0].ig";
connectAttr "groupId63.id" "tweak27.ip[0].gi";
connectAttr "groupId63.msg" "tweakSet27.gn" -na;
connectAttr "LegLeft3Shape36.iog.og[1]" "tweakSet27.dsm" -na;
connectAttr "tweak27.msg" "tweakSet27.ub[0]";
connectAttr "LegLeft3Shape36Orig.w" "groupParts58.ig";
connectAttr "groupId63.id" "groupParts58.gi";
connectAttr "groupParts60.og" "tweak28.ip[0].ig";
connectAttr "groupId65.id" "tweak28.ip[0].gi";
connectAttr "groupId65.msg" "tweakSet28.gn" -na;
connectAttr "LegLeft4Shape37.iog.og[1]" "tweakSet28.dsm" -na;
connectAttr "tweak28.msg" "tweakSet28.ub[0]";
connectAttr "LegLeft4Shape37Orig.w" "groupParts60.ig";
connectAttr "groupId65.id" "groupParts60.gi";
connectAttr "groupParts62.og" "tweak29.ip[0].ig";
connectAttr "groupId67.id" "tweak29.ip[0].gi";
connectAttr "groupId67.msg" "tweakSet29.gn" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShape.iog.og[1]" "tweakSet29.dsm"
		 -na;
connectAttr "tweak29.msg" "tweakSet29.ub[0]";
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightFrontjoint1|Upper|UpperShapeOrig.w" "groupParts62.ig"
		;
connectAttr "groupId67.id" "groupParts62.gi";
connectAttr "groupParts64.og" "tweak30.ip[0].ig";
connectAttr "groupId69.id" "tweak30.ip[0].gi";
connectAttr "groupId69.msg" "tweakSet30.gn" -na;
connectAttr "LegLeft2Shape43.iog.og[1]" "tweakSet30.dsm" -na;
connectAttr "tweak30.msg" "tweakSet30.ub[0]";
connectAttr "LegLeft2Shape43Orig.w" "groupParts64.ig";
connectAttr "groupId69.id" "groupParts64.gi";
connectAttr "groupParts66.og" "tweak31.ip[0].ig";
connectAttr "groupId71.id" "tweak31.ip[0].gi";
connectAttr "groupId71.msg" "tweakSet31.gn" -na;
connectAttr "LegLeft2Shape40.iog.og[1]" "tweakSet31.dsm" -na;
connectAttr "tweak31.msg" "tweakSet31.ub[0]";
connectAttr "LegLeft2Shape40Orig.w" "groupParts66.ig";
connectAttr "groupId71.id" "groupParts66.gi";
connectAttr "groupParts68.og" "tweak32.ip[0].ig";
connectAttr "groupId73.id" "tweak32.ip[0].gi";
connectAttr "groupId73.msg" "tweakSet32.gn" -na;
connectAttr "LegLeft1Shape39.iog.og[1]" "tweakSet32.dsm" -na;
connectAttr "tweak32.msg" "tweakSet32.ub[0]";
connectAttr "LegLeft1Shape39Orig.w" "groupParts68.ig";
connectAttr "groupId73.id" "groupParts68.gi";
connectAttr "groupParts70.og" "tweak33.ip[0].ig";
connectAttr "groupId75.id" "tweak33.ip[0].gi";
connectAttr "groupId75.msg" "tweakSet33.gn" -na;
connectAttr "LegLeftShape38.iog.og[1]" "tweakSet33.dsm" -na;
connectAttr "tweak33.msg" "tweakSet33.ub[0]";
connectAttr "LegLeftShape38Orig.w" "groupParts70.ig";
connectAttr "groupId75.id" "groupParts70.gi";
connectAttr "groupParts72.og" "tweak34.ip[0].ig";
connectAttr "groupId77.id" "tweak34.ip[0].gi";
connectAttr "groupId77.msg" "tweakSet34.gn" -na;
connectAttr "LegLeft3Shape41.iog.og[1]" "tweakSet34.dsm" -na;
connectAttr "tweak34.msg" "tweakSet34.ub[0]";
connectAttr "LegLeft3Shape41Orig.w" "groupParts72.ig";
connectAttr "groupId77.id" "groupParts72.gi";
connectAttr "groupParts74.og" "tweak35.ip[0].ig";
connectAttr "groupId79.id" "tweak35.ip[0].gi";
connectAttr "groupId79.msg" "tweakSet35.gn" -na;
connectAttr "LegLeft4Shape42.iog.og[1]" "tweakSet35.dsm" -na;
connectAttr "tweak35.msg" "tweakSet35.ub[0]";
connectAttr "LegLeft4Shape42Orig.w" "groupParts74.ig";
connectAttr "groupId79.id" "groupParts74.gi";
connectAttr "groupParts76.og" "tweak36.ip[0].ig";
connectAttr "groupId81.id" "tweak36.ip[0].gi";
connectAttr "groupId81.msg" "tweakSet36.gn" -na;
connectAttr "LegLeft1Shape45.iog.og[1]" "tweakSet36.dsm" -na;
connectAttr "tweak36.msg" "tweakSet36.ub[0]";
connectAttr "LegLeft1Shape45Orig.w" "groupParts76.ig";
connectAttr "groupId81.id" "groupParts76.gi";
connectAttr "groupParts78.og" "tweak37.ip[0].ig";
connectAttr "groupId83.id" "tweak37.ip[0].gi";
connectAttr "groupId83.msg" "tweakSet37.gn" -na;
connectAttr "LegLeft2Shape46.iog.og[1]" "tweakSet37.dsm" -na;
connectAttr "tweak37.msg" "tweakSet37.ub[0]";
connectAttr "LegLeft2Shape46Orig.w" "groupParts78.ig";
connectAttr "groupId83.id" "groupParts78.gi";
connectAttr "groupParts80.og" "tweak38.ip[0].ig";
connectAttr "groupId85.id" "tweak38.ip[0].gi";
connectAttr "groupId85.msg" "tweakSet38.gn" -na;
connectAttr "LegLeft3Shape47.iog.og[1]" "tweakSet38.dsm" -na;
connectAttr "tweak38.msg" "tweakSet38.ub[0]";
connectAttr "LegLeft3Shape47Orig.w" "groupParts80.ig";
connectAttr "groupId85.id" "groupParts80.gi";
connectAttr "groupParts82.og" "tweak39.ip[0].ig";
connectAttr "groupId87.id" "tweak39.ip[0].gi";
connectAttr "groupId87.msg" "tweakSet39.gn" -na;
connectAttr "LegLeft4Shape48.iog.og[1]" "tweakSet39.dsm" -na;
connectAttr "tweak39.msg" "tweakSet39.ub[0]";
connectAttr "LegLeft4Shape48Orig.w" "groupParts82.ig";
connectAttr "groupId87.id" "groupParts82.gi";
connectAttr "groupParts84.og" "tweak40.ip[0].ig";
connectAttr "groupId89.id" "tweak40.ip[0].gi";
connectAttr "groupId89.msg" "tweakSet40.gn" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShape.iog.og[1]" "tweakSet40.dsm"
		 -na;
connectAttr "tweak40.msg" "tweakSet40.ub[0]";
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegRightBackjoint1|Upper|UpperShapeOrig.w" "groupParts84.ig"
		;
connectAttr "groupId89.id" "groupParts84.gi";
connectAttr "groupParts30.og" "tweak13.ip[0].ig";
connectAttr "groupId35.id" "tweak13.ip[0].gi";
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShapeOrig.w" "groupParts30.ig"
		;
connectAttr "groupId35.id" "groupParts30.gi";
connectAttr "groupId35.msg" "tweakSet13.gn" -na;
connectAttr "|HoverWing|AbdomenAssembly|Legs1|LegLeftBackjoint1|Upper|UpperShape.iog.og[1]" "tweakSet13.dsm"
		 -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster5.bp";
connectAttr "TailJoints.wm" "skinCluster5.ma[0]";
connectAttr "joint10.wm" "skinCluster5.ma[1]";
connectAttr "joint11.wm" "skinCluster5.ma[2]";
connectAttr "TailJoints.liw" "skinCluster5.lw[0]";
connectAttr "joint10.liw" "skinCluster5.lw[1]";
connectAttr "joint11.liw" "skinCluster5.lw[2]";
connectAttr "TailJoints.obcc" "skinCluster5.ifcl[0]";
connectAttr "joint10.obcc" "skinCluster5.ifcl[1]";
connectAttr "joint11.obcc" "skinCluster5.ifcl[2]";
connectAttr "geomBind1.scs" "skinCluster5.gb";
connectAttr "groupParts86.og" "tweak41.ip[0].ig";
connectAttr "groupId91.id" "tweak41.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "StingerShape.iog.og[2]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak41.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId91.msg" "tweakSet41.gn" -na;
connectAttr "StingerShape.iog.og[3]" "tweakSet41.dsm" -na;
connectAttr "tweak41.msg" "tweakSet41.ub[0]";
connectAttr "StingerShapeOrig.w" "groupParts86.ig";
connectAttr "groupId91.id" "groupParts86.gi";
connectAttr "TailJoints.msg" "bindPose5.m[0]";
connectAttr "joint10.msg" "bindPose5.m[1]";
connectAttr "joint11.msg" "bindPose5.m[2]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "TailJoints.bps" "bindPose5.wm[0]";
connectAttr "joint10.bps" "bindPose5.wm[1]";
connectAttr "joint11.bps" "bindPose5.wm[2]";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "TailJoints.wm" "skinCluster6.ma[0]";
connectAttr "joint10.wm" "skinCluster6.ma[1]";
connectAttr "joint11.wm" "skinCluster6.ma[2]";
connectAttr "TailJoints.liw" "skinCluster6.lw[0]";
connectAttr "joint10.liw" "skinCluster6.lw[1]";
connectAttr "joint11.liw" "skinCluster6.lw[2]";
connectAttr "TailJoints.obcc" "skinCluster6.ifcl[0]";
connectAttr "joint10.obcc" "skinCluster6.ifcl[1]";
connectAttr "joint11.obcc" "skinCluster6.ifcl[2]";
connectAttr "bindPose5.msg" "skinCluster6.bp";
connectAttr "geomBind1.scs" "skinCluster6.gb";
connectAttr "groupParts88.og" "tweak42.ip[0].ig";
connectAttr "groupId93.id" "tweak42.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "TailShape.iog.og[2]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak42.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId93.msg" "tweakSet42.gn" -na;
connectAttr "TailShape.iog.og[3]" "tweakSet42.dsm" -na;
connectAttr "tweak42.msg" "tweakSet42.ub[0]";
connectAttr "TailShapeOrig.w" "groupParts88.ig";
connectAttr "groupId93.id" "groupParts88.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "TailJoints.wm" "skinCluster7.ma[0]";
connectAttr "joint10.wm" "skinCluster7.ma[1]";
connectAttr "joint11.wm" "skinCluster7.ma[2]";
connectAttr "TailJoints.liw" "skinCluster7.lw[0]";
connectAttr "joint10.liw" "skinCluster7.lw[1]";
connectAttr "joint11.liw" "skinCluster7.lw[2]";
connectAttr "TailJoints.obcc" "skinCluster7.ifcl[0]";
connectAttr "joint10.obcc" "skinCluster7.ifcl[1]";
connectAttr "joint11.obcc" "skinCluster7.ifcl[2]";
connectAttr "bindPose5.msg" "skinCluster7.bp";
connectAttr "geomBind1.scs" "skinCluster7.gb";
connectAttr "groupParts90.og" "tweak43.ip[0].ig";
connectAttr "groupId95.id" "tweak43.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "ThoraxShape.iog.og[2]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak43.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId95.msg" "tweakSet43.gn" -na;
connectAttr "ThoraxShape.iog.og[3]" "tweakSet43.dsm" -na;
connectAttr "tweak43.msg" "tweakSet43.ub[0]";
connectAttr "ThoraxShapeOrig.w" "groupParts90.ig";
connectAttr "groupId95.id" "groupParts90.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "TailJoints.wm" "skinCluster8.ma[0]";
connectAttr "joint10.wm" "skinCluster8.ma[1]";
connectAttr "joint11.wm" "skinCluster8.ma[2]";
connectAttr "TailJoints.liw" "skinCluster8.lw[0]";
connectAttr "joint10.liw" "skinCluster8.lw[1]";
connectAttr "joint11.liw" "skinCluster8.lw[2]";
connectAttr "TailJoints.obcc" "skinCluster8.ifcl[0]";
connectAttr "joint10.obcc" "skinCluster8.ifcl[1]";
connectAttr "joint11.obcc" "skinCluster8.ifcl[2]";
connectAttr "bindPose5.msg" "skinCluster8.bp";
connectAttr "geomBind1.scs" "skinCluster8.gb";
connectAttr "groupParts92.og" "tweak44.ip[0].ig";
connectAttr "groupId97.id" "tweak44.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "AbdomenShape.iog.og[2]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak44.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId97.msg" "tweakSet44.gn" -na;
connectAttr "AbdomenShape.iog.og[3]" "tweakSet44.dsm" -na;
connectAttr "tweak44.msg" "tweakSet44.ub[0]";
connectAttr "AbdomenShapeOrig.w" "groupParts92.ig";
connectAttr "groupId97.id" "groupParts92.gi";
connectAttr "bindPose5.msg" "geomBind1.bp";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn6SG.pa" ":renderPartition.st" -na;
connectAttr "Eyes1.msg" ":defaultShaderList1.s" -na;
connectAttr "Legs.msg" ":defaultShaderList1.s" -na;
connectAttr "Wings.msg" ":defaultShaderList1.s" -na;
connectAttr "Body.msg" ":defaultShaderList1.s" -na;
connectAttr "Membrane.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer2.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "|WingTransforms|pSphere2|transform2|pSphereShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|WingTransforms|pSphere2|transform2|pSphereShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|WingTransforms|pSphere1|transform1|pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|WingTransforms|pSphere1|transform1|pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
// End of HoverWing4Flinch.ma

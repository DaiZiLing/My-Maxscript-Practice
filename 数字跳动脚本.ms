--数字跳动脚本，WIP

if Number_tools != undefined then closeRolloutFloater Number_tools
Number_tools = newrolloutfloater "DynaNum" 234 641

----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

rollout Format_Rollout "           Format          " width:224 height:358
(
	label 'lbl2' "Line Color" pos:[22,103] width:76 height:16 align:#left
	label 'lbl3' "Fill Color" pos:[22,124] width:76 height:18 align:#left
	GroupBox 'grp1' "Parameter" pos:[8,8] width:205 height:72 align:#left
	label 'lbl81' "Font" pos:[19,30] width:41 height:19 align:#left
	GroupBox 'grp63' "Color" pos:[8,84] width:205 height:64 align:#left
	dropdownList 'geshi01' "" pos:[102,26] width:99 height:22 items:#("Arial", "Calibri", "jpg", "avi", "bmp", "tif") align:#left
	
	label 'lbl35' "Alignment " pos:[17,53] width:70 height:19 align:#left
	dropdownList 'ddl6' "" pos:[102,50] width:99 height:22 items:#("Align_Left", "Align_Center", "Align_Right", "Justify") align:#left
	colorPicker 'foo' "" pos:[99,102] width:57 height:17 color:[127,127,127] align:#left
)

----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

rollout Timeline_Rollout "          Timeline          " width:220 height:357
(
	checkbox 'chk1' "Timeline" pos:[18,24] width:76 height:19 align:#left
	groupBox 'grp28' "Start Frame" pos:[9,9] width:99 height:63 align:#left
	spinner 'spn27' "" pos:[18,47] width:80 height:16 range:[0,100,0] type:#integer align:#left
	groupBox 'grp29' "End Frame" pos:[114,9] width:99 height:63 align:#left
	checkbox 'chk2' "Timeline" pos:[121,24] width:76 height:19 align:#left
	spinner 'spn28' "" pos:[122,47] width:80 height:16 range:[0,100,0] type:#integer align:#left
)
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

rollout Anime_Rollout "          Animation          " width:220 height:357
(
	GroupBox 'grp103' "Variation Pattern" pos:[8,8] width:205 height:45 align:#left
	label 'lbl179' "Mode" pos:[15,29] width:50 height:17 align:#left
	dropdownList 'geshi01' "" pos:[102,25] width:99 height:22 items:#("Increase", "Decrease", "Random", "Oscillation") align:#left
	
	GroupBox 'grp102' "Random / Oscillation Pattern" pos:[8,60] width:205 height:73 align:#left
	label 'lbl76' "方向数量" pos:[22,80] width:56 height:19 align:#left
	spinner 'spn75' "" pos:[84,80] width:56 height:16 range:[1,360,5] type:#integer align:#left
	label 'lbl77' "旋转角度" pos:[22,105] width:56 height:19 align:#left
	spinner 'spn76' "" pos:[84,105] width:56 height:16 range:[-360,360,-45] type:#integer align:#left
	button 'btAll' "渲染" pos:[149,83] width:56 height:33 align:#left
)
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

rollout Advanced_Rollout "          Advanced          " width:220 height:357
(
	label 'lbl37' "Curves " pos:[18,12] width:70 height:19 align:#left
	dropdownList 'ddl7' "" pos:[103,9] width:99 height:22 items:#("Linear", "Quadratic", "Cubic", "Quintic") align:#left
	label 'lbl14' "System" pos:[18,35] width:70 height:19 align:#left
	dropdownList 'ddl6' "" pos:[103,32] width:99 height:22 items:#("Binary", "Octal", "Hexadecimal", "Decimal", "Sexagesimal") align:#left
)

----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

rollout about_rollout "           About           " width:220 height:357
(
	GroupBox 'grp35' "Information" pos:[8,3] width:205 height:71 align:#left
	--button 'btn109' "确定清理" pos:[56,25] width:104 height:20 align:#left
	HyperLink 'lbl3' "BiliBili Website" pos:[58,76] width:101 height:15 address:"https://space.bilibili.com/811796" color:(color 158 158 158) hovercolor:(color 249 250 251) visitedcolor:(color 86 156 214) align:#left
	label 'lbl21' "     [ Dynamic Number 1.0 ]" pos:[14,20] width:193 height:16 align:#left
 
	label 'lbl24' "Developed by @Himeko 2021" pos:[36,36] width:161 height:16 align:#left
	button 'btn5' "Help" pos:[93,53] width:42 height:17 align:#left
)
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

addrollout Format_Rollout Number_tools
addrollout Timeline_Rollout Number_tools
addrollout Anime_Rollout Number_tools
addrollout Advanced_Rollout Number_tools
addrollout About_Rollout Number_tools
About_Rollout.open = false
--Advanced_Rollout.open = false



rollout unnamedRollout "单文件 to 红警2步兵 渲染工具" width:264 height:326
(
							
	label '' "Stand" pos:[7,10] width:47 height:22 align:#left
	label 'lbl5' "Walk_1" pos:[7,35] width:47 height:22 align:#left
	label 'lbl6' "Walk_2" pos:[7,60] width:47 height:22 align:#left
	label 'lbl7' "Fire_1" pos:[7,85] width:47 height:22 align:#left
	label 'lbl8' "Fire_2" pos:[7,110] width:47 height:22 align:#left
	label 'lbl9' "Idel_1" pos:[7,207] width:47 height:22 align:#left
	label 'lbl10' "Idel_2" pos:[7,232] width:47 height:22 align:#left
	label 'lbl11' "Die_1" pos:[7,185] width:47 height:22 align:#left
	label 'lbl12' "Fire_3" pos:[7,135] width:47 height:22 align:#left
	label 'lbl14' "Cheer" pos:[7,253] width:47 height:22 align:#left
	label 'lbl15' "Fire_4" pos:[7,160] width:47 height:22 align:#left
	button 'btn1' "渲染" pos:[120,279] width:89 height:33 align:#left
	spinner 'spn1' "" pos:[88,10] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn3' "" pos:[88,34] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn4' "" pos:[168,34] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn5' "" pos:[88,59] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn6' "" pos:[168,59] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn7' "" pos:[88,84] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn8' "" pos:[168,84] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn9' "" pos:[88,109] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn10' "" pos:[168,109] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn11' "" pos:[88,134] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn12' "" pos:[168,134] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn13' "" pos:[88,159] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn14' "" pos:[168,159] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn15' "" pos:[88,184] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn16' "" pos:[168,184] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn19' "" pos:[88,205] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn20' "" pos:[168,205] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn21' "" pos:[88,231] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn22' "" pos:[168,231] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn25' "" pos:[88,252] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	spinner 'spn26' "" pos:[168,252] width:73 height:16 range:[-1,9999,0] type:#integer align:#left
	
	-- End of Button Brace --
		
		Local Stand_1,Walk_1,Walk_2,Walk_3,Walk_4,Fire_3,Fire_4,Fire_5,Fire_6,Fire_7,Fire_8
		Local Idel_1,Idel_2,Idel_3,Idel_4,Die_1,Die_2,Cheer_1,Cheer_2
		Local Fire_1
		Local Fire_2
	
	--End of Render Progress--
	
	on btn1 pressed do --开始渲染
	(
	---------------------------------------------------------------------------
	clearSelection()
	select $ShadowPlane
	$.receiveshadows = off
	clearSelection()
	select $centerdummy
		print Stand_1
		print Walk_1
		print Walk_2
		print Walk_3
		print Walk_4
		print Fire_1
		print Fire_2
		print Fire_3
		print Fire_4
		print Fire_5
		print Fire_6
		print Fire_7
		print Fire_8
		print Die_1
		print Die_2
		print Idel_1
		print Idel_2
		print Idel_3
		print Idel_4
		print Cheer_1
		print Cheer_2
	for i = 1 to 8 do
	(
		render RA2目标摄像机 frame:Stand_1 outputFile:("D:\RA2Scripts\INF8"+"//"+"A"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Walk_1 toframe:Walk_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"B"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Walk_3 toframe:Walk_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"E"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_1 toframe:Fire_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"C"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_3 toframe:Fire_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"H"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_5 toframe:Fire_6 outputFile:("D:\RA2Scripts\INF8"+"//"+"P"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_7 toframe:Fire_8 outputFile:("D:\RA2Scripts\INF8"+"//"+"K"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 1 do
	(
	rotate $ (angleaxis -135 [0,0,1])
	render RA2目标摄像机 fromframe:Idel_1 toframe:Idel_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"D"+"01"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Die_1 toframe:Die_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"F"+"01"+(i as string)+".png") vfb:off
	rotate $ (angleaxis -90 [0,0,1])
	render RA2目标摄像机 fromframe:Idel_3 toframe:Idel_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"D"+"02"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Die_1 toframe:Die_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"F"+"02"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Cheer_1 toframe:Cheer_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"G"+"01"+(i as string)+".png") vfb:off
	rotate $ (angleaxis -135 [0,0,1])
	)
	---------------------------------------------------------------------------
	---------------------------------------------------------------------------
	clearSelection()
	select $ShadowPlane
	$.receiveshadows = on
	clearSelection()
	select $ShadowPlane
	actionMan.executeAction 0 "40044"
	meditMaterials[16] = MatteShadow ()
	$.material = meditMaterials[16]
	$.receiveshadows = off
	clearSelection()
	select #($基本光照, $基本光照001, $基本光照002)
	$.renderable = off
	clearSelection()
	select $ShadowPlane
	--actionMan.executeAction 0 "40022"
	$.receiveshadows = on
	clearSelection()
	select $centerdummy
	for i = 1 to 8 do
	(
		render RA2目标摄像机 frame:Stand_1 outputFile:("D:\RA2Scripts\INF8"+"//"+"SA"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Walk_1 toframe:Walk_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SB"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Walk_3 toframe:Walk_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"SE"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_1 toframe:Fire_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SC"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_3 toframe:Fire_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"SH"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_5 toframe:Fire_6 outputFile:("D:\RA2Scripts\INF8"+"//"+"SP"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
	for i = 1 to 8 do
	(
		render RA2目标摄像机 fromframe:Fire_7 toframe:Fire_8 outputFile:("D:\RA2Scripts\INF8"+"//"+"SK"+"0"+(i as string)+".png") vfb:off
		rotate $ (angleaxis -45 [0,0,1])
	)
		for i = 1 to 1 do
	(
	rotate $ (angleaxis -135 [0,0,1])
	render RA2目标摄像机 fromframe:Idel_1 toframe:Idel_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SD"+"01"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Die_1 toframe:Die_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SF"+"01"+(i as string)+".png") vfb:off
	rotate $ (angleaxis -90 [0,0,1])
	render RA2目标摄像机 fromframe:Idel_3 toframe:Idel_4 outputFile:("D:\RA2Scripts\INF8"+"//"+"SD"+"02"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Die_1 toframe:Die_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SF"+"02"+(i as string)+".png") vfb:off
	render RA2目标摄像机 fromframe:Cheer_1 toframe:Cheer_2 outputFile:("D:\RA2Scripts\INF8"+"//"+"SG"+"01"+(i as string)+".png") vfb:off
	rotate $ (angleaxis -135 [0,0,1])
	)
	messagebox"渲染完毕！"
	max file open
	---------------------------------------------------------------------------
	)
	on spn1 changed var do
	(
		Stand_1 = var
	)
	on spn3 changed var do
	(
		Walk_1 = var
	)
	on spn4 changed var do
	(
		Walk_2 = var
	)
	on spn5 changed var do
	(
		Walk_3 = var
	)
	on spn6 changed var do
	(
		Walk_4 = var
	)
	on spn7 changed var do
	(
		Fire_1 = var
	)
	on spn8 changed var do
	(
		Fire_2 = var
	)
	on spn9 changed var do
	(
		Fire_3 = var
	)
	on spn10 changed var do
	(
		Fire_4 = var
	)
	on spn11 changed var do
	(
		Fire_5 = var
	)
	on spn12 changed var do
	(
		Fire_6 = var
	)
	on spn13 changed var do
	(
		Fire_7 = var
	)
	on spn14 changed var do
	(
		Fire_8 = var
	)
	on spn15 changed var do
	(
		Die_1 = var
	)
	on spn16 changed var do
	(
		Die_2 = var
	)
	on spn19 changed var do
	(
		Idel_1 = var
	)
	on spn20 changed var do
	(
		Idel_2 = var
	)
	on spn21 changed var do
	(
		Idel_3 = var
	)
	on spn22 changed var do
	(
		Idel_4 = var
	)
	on spn25 changed var do
	(
		Cheer_1 = var
	)
	on spn26 changed var do
	(
		Cheer_2 = var
	)
)
-- End of Rollout --
 createDialog unnamedRollout
gc()
clearlistener()
 -- End of 
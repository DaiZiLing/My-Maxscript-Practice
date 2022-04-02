
	global caizhi_num = 1
	global mapfileN
	global index
	global mapfiles = #() 
	
	macros.run "Medit Tools" "clear_medit_slots"
	max select all
	caizhi_num = 1
		for i in $ do 
			(

				if (meditMaterials[caizhi_num] == undefined) do
				(
					
				)
				meditMaterials[caizhi_num] = i.material
				caizhi_num = caizhi_num + 1
				if caizhi_num > 24 do 
					(
						macros.run "Medit Tools" "clear_medit_slots"
						caizhi_num = 1
						)
			)
			
			
			
			caizhi_num = 1
			
			max select all
		for i in $ do 
		(
			b = selection as array
			for j = 2 to b.count do
			(
				if b.count < 25 do
				(
					if meditMaterials[j].name == meditMaterials[caizhi_num].name do
				(
					i.material = meditMaterials[caizhi_num]
					meditMaterials[j] = Standardmaterial ()
				)
				if meditMaterials[j].name != meditMaterials[caizhi_num].name do
				(
					caizhi_num = caizhi_num + 1
				)
				)
				
				if b.count > 24 do
				(
					macros.run "Medit Tools" "clear_medit_slots"
					--j = 2
				)					
				
			)
		)
		
				
	clearSelection()
	--macros.run "Medit Tools" "clear_medit_slots"
	clearSelection()
				
	---------------------------------------------------------------------------

			--if 	meditMaterials[13] == Multimaterial () do 
			--(
			--	print 3
			--)	

		max select all
		b = selection as array
		for i = 1 to b.count do 
		(
			--print 3
			b[1].EditablePoly.attach b[i] b[1]
		)
		
		--成组、接地、轴心
		clearSelection()
		plane length:1 width:1 pos:[0,0,0] isSelected:on
		$.name = "dummy_plane"
		actionMan.executeAction 0 "40044"
		Group selection name:"组001" 
		select #($组001)
		$组001.pivot.z = $组001.min.z
		wheelcordi = $组001.pivot.z
		wheelcordi_x = $组001.pivot.x
		wheelcordi_y = $组001.pivot.y
		$组001.pos = $组001.pos + [-wheelcordi_x,-wheelcordi_y,-wheelcordi]
		$组001.pivot = [0,0,0]
		actionMan.executeAction 0 "40044"
		delete $
		clearSelection()
		
		if meditMaterials[1].material Standardmaterial () do
		(
			wuticaizhi = $.material
			print wuticaizhi as string
		)
		
		
		
		caizhi_shux = $.material as string --子材质给予正确名字
		if matchPattern caizhi_shux pattern:"*:Standard" == True do 
		(
			caizhi_namee = getFilenameFile ($.material.diffuseMap.fileName)
			$.material.name = caizhi_namee
		)
		
		if matchPattern caizhi_shux pattern:"*:Standard" == False do 
		(
			macros.run "Medit Tools" "clear_medit_slots" 
			meditMaterials[1] = $.material
			caizhi_shuliang = meditMaterials[1].numsubs 
			for i = 1 to caizhi_shuliang do 
			(
				meditMaterials[i+1] = meditMaterials[1].MaterialList[i] 
				caizhi_namee = getFilenameFile (meditMaterials[i+1].diffuseMap.fileName)
				meditMaterials[i+1].name = caizhi_namee
			)
			--macros.run "Medit Tools" "clear_medit_slots" 
		)

		global caizhi_num = 1  ---组装后
		global mapfileN
		global index
		global mapfiles = #() 
		global caizhi_shux
		global caizhi_namee
		global caizhi_shuliang
		
		macros.run "Medit Tools" "clear_medit_slots"
		max select all
		caizhi_num = 1
		for i in $ do 
		(
			if (meditMaterials[caizhi_num] == undefined) do
			(
				)
		caizhi_shux = i.material as string --子材质给予正确名字
	
		if matchPattern caizhi_shux pattern:"*:Standard" == True do --std材质旧版
		(
			if i.material.diffuseMapEnable == false do 
			(
				
			)
			
			if i.material.diffuseMapEnable == true do
			(

				if  matchPattern(getFilenameFile(i.material.diffuseMap.fileName) as string) pattern:"undefined" == True do
						(
							)
				if  matchPattern(getFilenameFile(i.material.diffuseMap.fileName) as string) pattern:"undefined" == False do
						(
							caizhi_namee = getFilenameFile (i.material.diffuseMap.fileName)
							i.material.name = caizhi_namee
							)
			
			)
		)
		
		if matchPattern caizhi_shux pattern:"*:Physical_Material" == True do --std材质旧版
		(
			if i.material.base_color_map_on == false do
			(
				
			)
			
			if i.material.base_color_map_on == true do
			(

				if  matchPattern(getFilenameFile(i.material.diffuseMap.fileName) as string) pattern:"undefined" == True do
						(
							)
				if  matchPattern(getFilenameFile(i.material.diffuseMap.fileName) as string) pattern:"undefined" == False do
						(
							caizhi_namee = getFilenameFile (i.material.diffuseMap.fileName)
							i.material.name = caizhi_namee
							)
			
			)
		)
		
		if matchPattern caizhi_shux pattern:"多维/子对象:Material*" == True do --如果是多维材质
		(
			macros.run "Medit Tools" "clear_medit_slots" 
			meditMaterials[1] = i.material
			caizhi_shuliang = meditMaterials[1].numsubs 
			for j = 1 to caizhi_shuliang do 
			(
				if meditMaterials[1].MaterialList[1].diffuseMapEnable == false do 
				(
					)
				
				meditMaterials[j+1] = meditMaterials[1].MaterialList[j]
					
					if meditMaterials[1].MaterialList[j].diffuseMapEnable == false do 
				(
					)
					if meditMaterials[1].MaterialList[j].diffuseMapEnable == true do 
					(
						
						if (matchPattern (meditMaterials[1].MaterialList[j].diffuseMap.fileName as string) pattern:"undefined") == True do
						(
							)
						
						if (matchPattern (meditMaterials[1].MaterialList[j].diffuseMap.fileName as string) pattern:"undefined") == False do
							(
								if matchPattern meditMaterials[1].MaterialList[j].diffuseMap.fileName pattern:"*.*" == True do 
						(
						caizhi_namee = getFilenameFile (meditMaterials[j+1].diffuseMap.fileName)
						meditMaterials[j+1].name = caizhi_namee
						)
					)
						
					)
			)
			macros.run "Medit Tools" "clear_medit_slots" 
		)
				
		)
		clearSelection()
		---组装后
		
		--(matchPattern (meditMaterials[1].MaterialList[3].diffuseMap.fileName as string) pattern:"undefined")
		--meditMaterials[1].MaterialList[3].diffuseMap.fileName as string
		--getFilenameFile (meditMaterials[1].diffuseMap.fileName)
		matchPattern(getFilenameFile(meditMaterials[3].diffuseMap.fileName) as string) pattern:"undefined"
		meditMaterials[1].diffuseMapEnable
		meditMaterials[1].MaterialList[3].diffuseMap.fileName
		
		meditMaterials[5].showInViewport = true
		$Birth 001
		$pingtai006
		
		max select all --删除poly 和 mesh 以外
		for i in selection do 
		(
			dongxi_minzi = i as string
			if ((matchPattern dongxi_minzi pattern:"*Mesh*") or (matchPattern dongxi_minzi pattern:"*Poly*")) == true then
			(
			print i.name
			)
			
			else
			(
				print i
			)
		)
		
		$.material
		
		
		for i = 1 to bb.count do 
			(
				jindutiao.value = 100.* i / bb.count
				...
				) 
			doit_prog.value = 0 

max select all
			for i in $ do
			(
				minzi = i.name
				if minzi == "aaa" do
				(
					print 999
				)
			)
			
max select all
				for i in $ do
					(
				minzi = i.name as string
						
						if minzi == "acd" do
						(
							print 500
						)
						
				--print minzi
					)

					
s=stringstream "random 0. 1.;random red blue" 
readexpr s --读入第1个表达式并求值 
readexpr s --读入第2个表达式并求值 
seek s 0 --定位到stringSream值开始 

					--debug = newScript() 
					--print $a to:debug 

					
					
					for i in $ do
					(
				minzi = i.name
						
						Texture_Path_2 = stringstream minzi
						print Texture_Path_2
						
				--print minzi
					)
					
		if MaxFileName=="" then 
	(
		max file save
	)
	else 
	(
		saveMaxFile (MaxFilePath+MaxFileName) quiet:true
	)		
	
	
	$Line014.material
	
	--render renderer:#production vfb:on
	meditMaterials[1].diffuseMap.fileName
	$.material
	$.material.diffuseMap.fileName
	meditMaterials[3].base_color_map_on
	
	caizhi_shux = $.material as string
	matchPattern caizhi_shux pattern:"*多维/子对象:*"
	
	encryptScript "柱形多边形减面脚本.ms"
	
for i in selection do
(
	juli = distance $ $a_1
	
	if juli<300 do --1,2
	(
		--
	)
	
	if (juli>=300) and (juli<400) do --3
	(
		print 300
	)
	
	if (juli>=400) and (juli<500) do --4,5
	(
		print 400
	)
	
	if juli>=500 do --6
	(
		addModifier i(optimize ()) 
			i.modifiers[#Optimize].facethreshold1 = 6
			i.modifiers[#Optimize].preservesmooth1 = on
			i.modifiers[#Optimize].preservemat1 = on
	)
)
	print $.name
	
meditMaterials[1] = caizhi_shux
caizhi_shux = meditMaterials[1] as string
matchPattern caizhi_shux pattern:"*Multi/Sub-Object:*"

x = ?
print x
getListenerSel()

include "整理贴图脚本_max2016.ms"

addModifier $(ProOptimizer ()) 
	$.modifiers[#ProOptimizer].OptimizationMode = 2
	$.modifiers[#ProOptimizer].VertexPercent = 65
	$.modifiers[#ProOptimizer].MergeFaces = on
	$.modifiers[#ProOptimizer].MergeFacesAngle = 0
	$.modifiers[#ProOptimizer].KeepUV = on
	$.modifiers[#ProOptimizer].CompactFaces = off
	$.modifiers[#ProOptimizer].PreventFlip = off
	$.modifiers[#ProOptimizer].LockPoints = off
	$.modifiers[#ProOptimizer].Calculate = on
	--maxOps.CollapseNode bb[i] on
	clearSelection()
	
	max select all
	for i in $ do
	(
		maxOps.CollapseNode i on
	)
	
	$.material.bumpMap.normal_map.fileName
	$.material.base_color_map_on
	matchPattern(meditMaterials[1] as string) \
			pattern:"*:Bitmap"
	$.material.texmap_bump_on
	$.filename
	$.material.texmap.filename
	EnvironmentMap
	meditMaterials[1].MaterialList[1].diffuseMap.fileName
	meditMaterials[7]
	matchPattern (meditMaterials[1].MaterialList[j].diffuseMap.fileName as string) pattern:"undefined"
$.material.texmap_diffuse_on
	getFilenameFile (meditMaterials[2].diffuseMap.fileName)
	matchPattern meditMaterials[1].MaterialList[3].diffuseMap.fileName pattern:"*.*"
	meditMaterials[1].MaterialList[1].diffuseMapEnable
	
	matchPattern (meditMaterials[1].MaterialList[1].diffuseMap.fileName as string) pattern:"undefined"
	
	
	if (matchPattern ($.Material as string) pattern:"undefined") == False do
			(
				meditMaterials[1] = EnvironmentMap
			)
	
	for j = 1 to 1 do 
				(
					if meditMaterials[1].MaterialList[1].diffuseMapEnable == false do 
					(
					)
					meditMaterials[j+1] = meditMaterials[1].MaterialList[j]
					if meditMaterials[1].MaterialList[j].diffuseMapEnable == false do 
					(
					)
					if meditMaterials[1].MaterialList[j].diffuseMapEnable == true do 
					(
						if (matchPattern (meditMaterials[1].MaterialList[j].diffuseMap.fileName as string) pattern:"undefined") == True do
						(
						)
						if (matchPattern (meditMaterials[1].MaterialList[j].diffuseMap.fileName as string) pattern:"undefined") == False do
						(
							if matchPattern meditMaterials[1].MaterialList[j].diffuseMap.fileName pattern:"*.*" == True do 
							(
								caizhi_namee = getFilenameFile (meditMaterials[j+1].diffuseMap.fileName)
								meditMaterials[j+1].showInViewport = True
								meditMaterials[j+1].name = caizhi_namee
								--顺带把贴图给拷了
								copyFile meditMaterials[1].MaterialList[j].diffuseMap.fileName (Texture_Path + "//" + getFilenameFile meditMaterials[1].MaterialList[j].diffuseMap.fileName + getFilenameType meditMaterials[1].MaterialList[j].diffuseMap.fileName)
							)
						)
					)
				)
				
				meditMaterials[11][1].name
				matchPattern ($.material.base_color_map as string) pattern:"undefined"
				
				$.material.base_color_map
				caizhi_shux = $.material as string
				matchPattern caizhi_shux pattern:"*:Physical_Material*" == True
				matchPattern(getFilenameFile($.material.base_color_map.fileName) as string) pattern:"undefined"
				
				zicaizhimin = meditMaterials[1][1] as string
				matchPattern zicaizhimin pattern:"*:Physical_Material"
				meditMaterials[1][1].base_color_map_on
				meditMaterials[6][1].texmap_diffuse_on
				
				matchPattern (meditMaterials[1][2].base_color_map as string) pattern:"*:Bitmap*"
				
				matchPattern (meditMaterials[1][1].base_color_map as string) pattern:"undefined"
				
			matchPattern (meditMaterials[1][1].texmap_diffuse.fileName as string) pattern:"undefined"
				if (matchPattern (meditMaterials[1][1].texmap_diffuse.fileName as string) pattern:"undefined") == False do
				(
					print 3
					)
					
					matchPattern (meditMaterials[1][1].texmap_diffuse.fileName as string) pattern:"*.*"
					
					getFilenameFile(meditMaterials[1][1].texmap_diffuse.fileName)
					
					zicaizhimin = meditMaterials[1][1] as string
					matchPattern (meditMaterials[1][1].diffuseMap as string) pattern:"*:Bitmap*"
					
					
	addModifier $(ProOptimizer ()) 
	$.modifiers[#ProOptimizer].OptimizationMode = 2
	$.modifiers[#ProOptimizer].VertexPercent = 25
	$.modifiers[#ProOptimizer].MergeFaces = on
	$.modifiers[#ProOptimizer].MergeFacesAngle = 0
	$.modifiers[#ProOptimizer].CompactFaces = off
	$.modifiers[#ProOptimizer].PreventFlip = off
	$.modifiers[#ProOptimizer].LockPoints = off	
	$.modifiers[#ProOptimizer].Calculate = on
	clearUndoBuffer() 
	
					
	
--local qishi
--local zhongzhi

--qishi = 381
--zhognzhi = 418

for i = 381 to 418 by 2 do
(
	
	$.EditablePoly.SetSelection #Edge #{i}
	
)

--shuzuzhi = shuzu as array
--print shuzuzhi


$.EditablePoly.SetSelection #Edge #{381}
$.EditablePoly.SetSelection #Edge #{383}

wocao = 381, 383
$.EditablePoly.SetSelection #Edge #{wocao}


$.EditablePoly.SetSelection #Edge #{381, 383}

a = getCurrentSelection() #Edge

$.EditablePoly.SetSelection #Edge


shuzu = #()

for i = 439 to 1160 by 3 do
(
	append shuzu i
	shuzuzhi = shuzu as BitArray
	$.EditablePoly.SetSelection #Edge shuzuzhi
)meditMaterials[1].materialList[6].bumpMapEnable

xuanze = $

numSplines xuanze

polyop.getNumEdges $

ResetTransform $

polyop.getElementsUsingFace $



polyop.getNumFaces $


shuzu = #()
append 123 shuzu[1]



shuzu = #(381,382)
--append 383 shuzu[]
shuzuzhi = shuzu as BitArray


$.edges [#{1..100}]



for i in $ do
	(
		modPanel.addModToSelection (Unwrap_UVW ()) ui:on
	convertTo $ PolyMeshObject
			)
			
	$.text = "0" + 10 as string
			293/10
			
			caizhide = meditMaterials[1].MaterialIDList
			caizhideliang = caizhide.count
			meditMaterials[1].MaterialList[1]
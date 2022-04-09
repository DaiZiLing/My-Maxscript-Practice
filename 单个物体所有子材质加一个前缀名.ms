
for j = 1 to 183 do 
	(
								if meditMaterials[1].MaterialList[j].base_color_map_on == off do 
						(
						)
						if meditMaterials[1].MaterialList[j].base_color_map_on == on do 
						(
							if (matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"undefined") == True do
							(
								meditMaterials[1].MaterialList[j].name = "M_981_" + j as string
							)
							if (matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"undefined") == False do
							(
								if matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"*:Bitmap*" == True do 
								(
									caizhi_namee = "M_" + getFilenameFile (meditMaterials[1].MaterialList[j].base_color_map.fileName)
									meditMaterials[1].MaterialList[j].name = caizhi_namee 
								)
							)
						)
	)
	
--此处将单个物体的所有子材质变成标准材质（从物理材质）	
	--Standardmaterial ()
	
	--matchPattern (meditMaterials[1].MaterialList[1].base_color_map as string) pattern:"undefined"
	
	meditMaterials[1] = $.material
	for j = 1 to 187 do 
	(
								if meditMaterials[1].MaterialList[j].base_color_map_on == off do 
						(
							

						)
						if meditMaterials[1].MaterialList[j].base_color_map_on == on do 
						(
							j = 75
							if (matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"undefined") == True do
							(
								yanse = meditMaterials[1].materialList[j].base_color 
								meditMaterials[1].MaterialList[j] = Standardmaterial ()
								meditMaterials[1].MaterialList[j].Diffuse = yanse
								meditMaterials[1].MaterialList[j].name = "M_981_" + j as string
							) --如果没有贴图，则读取颜色
							
							if (matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"undefined") == False do
							(
								/* if matchPattern (meditMaterials[1].MaterialList[j].base_color_map as string) pattern:"*:Bitmap*" == True do 
								(
									caizhi_namee = "M_" + getFilenameFile (meditMaterials[1].MaterialList[j].base_color_map.fileName)
									meditMaterials[1].MaterialList[j].name = caizhi_namee 
								) */
								caizhi_namee = meditMaterials[1].MaterialList[j].base_color_map.fileName 
								
								meditMaterials[1].MaterialList[j] = Standardmaterial ()
								meditMaterials[1].MaterialList[j].diffuseMapEnable = on
								meditMaterials[1].MaterialList[j].diffuseMap = Bitmaptexture fileName:caizhi_namee
								meditMaterials[1].MaterialList[j].name = "M_"+ getFilenameFile (meditMaterials[1].MaterialList[j].diffuseMap.fileName)
							) --如果有贴图，则读取贴图

						)
	)


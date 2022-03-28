--将场景中所有标准材质改为白色，并重命名材质

--scenematerials[i]

global mat_property
global mat_texture_name
global mat_multi_count

for i = 1 to scenematerials.count do 
(
	mat_property = scenematerials[i] as string

			if matchPattern mat_property pattern:"*多维/子对象:*" == True do --这里执行 多维子材质 的判断，如果子材质没有贴图，就不动它
            (
                mat_multi_count = scenematerials[i].MaterialIDList.count
                for j = 1 to mat_multi_count do 
                (
                    if (matchPattern (scenematerials[i].materialList[j].diffuseMap as string) pattern:"*:Bitmap") == True do
                    (
                    mat_texture_name = getFilenameFile (scenematerials[i].materialList[j].diffuseMap.fileName)  --贴图名字，拿来吧你！
                    scenematerials[i].materialList[j].name = mat_texture_name  --改名字
                    scenematerials[i].materialList[j].diffuseMapAmount = 100  --改贴图不透明度
                    scenematerials[i].materialList[j].Diffuse = color 255 255 255  --改成白色
                    )
                )
            )

            --==============================================

            if matchPattern mat_property pattern:"*:Standard__Legacy" == True do --这里执行 旧版标准材质 ，如果子材质没有贴图，就不动它
            (
                if (matchPattern (scenematerials[i].diffuseMap as string) pattern:"*:Bitmap") == True do
                (
                    mat_texture_name = getFilenameFile (scenematerials[i].diffuseMap.fileName)  --贴图名字，拿来吧你！

                    scenematerials[i].name = mat_texture_name  --改名字
                    scenematerials[i].diffuseMapAmount = 100  --改贴图不透明度
                    scenematerials[i].Diffuse = color 255 255 255  --改成白色
                )
            )
)

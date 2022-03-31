meditMaterials[1][25].name

shuliang = 12

--这一坨是改子材质名字
clearlistener()
for i = 1 to 5 do 
(
	meditMaterials[1][i].name = "Shengjiang_" + "FenceYard" + "_" + i as string
)

clearlistener()
for i = 1 to 2 do 
(
	print meditMaterials[1][i].name
)

globalVars.isGlobal #AutodeskLicSerStuckCleanBeta

--这一坨是重命名
che = for o in $ collect o
	che.count

minzi = "DC_shell"

for i = 1 to che.count do
(
	if i < 10 do 
		(
		che[i].name = minzi as string +"_0" + i as string
	)
	if i >= 10 do 
		(
		che[i].name = minzi as string +"_" + i as string
	)
	
)
--这一坨是重命名

for i in $ do
(
i.wirecolor = color (random 0 255) (random 0 255) (random 0 255)
	
 i.pivot.z = i.min.z
)


che = for o in $ collect o
for i = 1 to 4 do
(
	ii = i - 1
	che[i].name = "shiyanshi391"+"_LOD" + ii as string
)

for i = 2 to 14 do 
(
	meditMaterials[i] = copy meditMaterials[1]
	meditMaterials[i].name = "JY_Lawn_" + i as string
)

maxOps.CollapseNode $ off
modPanel.addModToSelection (Unwrap_UVW ()) ui:off
$.modifiers[#unwrap_uvw].unwrap.setMapChannel 2
$.modifiers[#unwrap_uvw].unwrap.flattenMap 90 angleThreshold 0.02 spacing true normalize true rotateClusters true fillHoles 
	
	maxOps.CollapseNode $ off
modPanel.addModToSelection (Unwrap_UVW ()) ui:off
$.modifiers[#unwrap_uvw].unwrap.setMapChannel 2
	$.modifiers[#unwrap_uvw].flattenMapNoParams()
	maxOps.CollapseNode $ off
	
	rollout bakeminzi "展UV测试" width:270 height:269
	(
		
	)
-- End of Rollout --
createDialog bakeminzi
gc()
clearlistener()
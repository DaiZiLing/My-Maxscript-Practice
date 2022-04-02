for i in $ do
(
	--scale i [(random 0.8 1.2),(random 0.8 1.2),(random 0.6 1.5)]
	rotate i (angleaxis (random -10 10) [0,0,1])
	move i [(random -0.10 0.10),(random -0.10 0.10),0]
	--rotate i (angleaxis (random -10 10) [0,1,0])
	--rotate i (angleaxis (random -10 10) [1,0,0])
)

--selectmore $Props_tree*
$.pos
$.eulerangles
$.transform

che = for o in $ collect o --这是树
chewei = for o in $ collect o --这是树的dummy
	
distance $Group1 $Prop_Bush_Lrg_1

chewei[ii].transform
chewei[1].name --9193.702mypfa092d.png

for geshu = 1 to 400 do
(
	--hide all
	ii = random 1 14
	--copy che[ii] --instance
	maxOps.cloneNodes che[ii] cloneType:#instance newNodes:&nnl
	select nnl
	$.transform = chewei[geshu].transform
	clearSelection()
)

$.filename = "E:\\wxt_temp\\320762\\map02\\map02\\Tree-03.vrmesh"
maxOps.cloneNodes $ cloneType:#instance 

	xzhi = $.max.x - $.min.x
	yzhi = $.max.y - $.min.y
	zzhi = $.max.z - $.min.z
he = xzhi + yzhi + zzhi
print he

for i in $ do
(
	xzhi = i.max.x - i.min.x
	yzhi = i.max.y - i.min.y
	zzhi = i.max.z - i.min.z
	he = xzhi + yzhi + zzhi
	if he < 15 do
	(
		hide i
	)
)

che = for o in $ collect o
for i = 1 to 15 do 
(
	che[i].pivot.z = che[i].min.z
)

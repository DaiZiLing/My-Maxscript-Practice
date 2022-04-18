# My-Maxscript-Practice

这里存放我的各种3dmax脚本练习，注意这里的所有脚本大多数是残废的，仅供学习参考使用。

大多数是日常有个什么需求，然后我就用一小段时间写一些小脚本，把这个问题解决了，以后自己用的时候拿来节选跑一遍。

为什么不做UI呢？因为他们的3dsmax版本和我的不一样，同事也用不到233333 （再加上autodesk经常改API名称的原因，就不做啦不做啦）

## 300 Script.ms
300英雄的.x文件存储了一个动漫人物所有的骨骼动画，然后使用状态机来调用这些动画。

十多年前看见暴雪的魔兽争霸、星际争霸都是这么做的，一个文件里可能会包含了有两三千帧动画。

于是这个脚本功能就很简单了，往脚本框里输入状态机的帧范围，点击渲染，直接得出适用于RA2的8向序列帧。（又是一个过时技术，0222年了谁还用序列帧做游戏物体）

![image](https://github.com/DaiZiLing/My-Maxscript-Practice/blob/main/Image/priview_1_1.gif)

## temp.ms
功能包含：成组、调整轴心、位置归于原点、批量物体重命名、批量材质重命名，都是些没啥意思的小功能 ╮(￣▽￣")╭

## 单个物体所有子材质加一个前缀名.ms
正如其名，它可以把所有子材质加一个前缀名、例如：“Iron” → “Vray_Iron”

## 命名改材质杂项.ms
重命名，展UV测试

## 场景中所有标准材质改为白色.ms
有时3dsmax默认的standard材质里，它的默认颜色是中度灰。在给材质加贴图后，这个中度灰可能会被继承到unity的_BaseColor里，需要蛋疼地把所有带贴图的材质颜色换成白色。
这个脚本帮我们把活给干了。

![image](https://github.com/DaiZiLing/My-Maxscript-Practice/blob/main/Image/0418_1.png)

## 数字跳动脚本.ms
之前在项目里做了一个电子表跳动的三维动画，长这样子的 ↓

![image](https://github.com/DaiZiLing/My-Maxscript-Practice/blob/main/Image/0416_2.gif)

这个东西不能K关键帧，只能用脚本实现，然后我就想着把功能整合一下，做个带UI的工具。

![image](https://github.com/DaiZiLing/My-Maxscript-Practice/blob/main/Image/TIM%2020220411010851.png)

最后只做了个框架，功能想往里面加了，摆了属于是

## 种树脚本.ms
没啥新意，就单纯的物体随机摆放，物体之间不会交叉

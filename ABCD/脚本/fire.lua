package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv,notOpenChest)--设置到某个剧情任务时升级 
--taskClassName=任务类名 字符串型
--taskIndex=任务索引 数字型 填nil为忽略，只匹配任务类名 
--shengjiMapClassName=要刷的地图类名 字符串型 
--needLv=升级到多少级为止 数字型
--notOpenChest=是否不开箱子 节约时间  逻辑型 true为设置此地图不开箱子 false或nil为不设置
--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
--SetTaskShengJiData("a5q7",nil,"1_5_7",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",70,true)--滲血水道
--1_5_5,無罪之室
--1_5_7,聖物間
--1_5_3b,大廣場廢墟
g_needMinimizeGame=nil			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=70					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=35*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=true				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82				--大于等于多少级只捡蓝色以上药 
g_needAutoChangeEquip=true		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=false		--交易时仓库号给予缺少的高级换装中的装备 true为给 false为不给 是对仓库号设置的
g_xiaoHaoGetZhuangBei=false		--挂机号向发装仓库号申请领高级换装中的装备 true为申请 false为不申请 

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫

SetTaskMiGongDataByLv(40,1)--在复活的梦魇这个任务时 做迷宫1
SetTaskMiGongDataByLv(68,2)--在复活的梦魇这个任务时 做迷宫2
SetTaskMiGongDataByLv(78,3)
AddNeedBuySkillTime(1,"a1q2")--沖出監牢
AddNeedBuySkillTime(1,"a1q4")--打破鳥蛋
AddNeedBuySkillTime(1,"a1q7")--黑淵危機
AddNeedBuySkillTime(1,"a1q9")--開路先鋒
AddNeedBuySkillTime(2,"a2q4")--清理蜘蛛--陷阱傷害輔助
AddNeedBuySkillTime(2,"a2q9")--盤根錯節
AddNeedBuySkillTime(3,"a3q1")--迷失的愛情
AddNeedBuySkillTime(3,"a3q3")--迷失的愛情
AddNeedBuySkillTime(3,"a3q4")--迷失的愛情
AddNeedBuySkillTime(3,"a3q5")--迷失的愛情
AddNeedBuySkillTime(3,"a3q8")--迷失的愛情
AddNeedBuySkillTime(4,"a4q1")--永恆夢魘
AddNeedBuySkillTime(4,"a4q2")--永恆夢魘
AddNeedBuySkillTime(4,"a4q3")--永恆夢魘
AddNeedBuySkillTime(4,"a4q4")--永恆夢魘
AddNeedBuySkillTime(4,"a4q5")--永恆夢魘
AddNeedBuySkillTime(4,"a4q6")--永恆夢魘
AddNeedBuySkillTime(6,"a6q1")	--在第6章的惊海之王时 检测购买一遍
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(10,"a10q2")	--第10章的死亡和重生任务 检测购买一遍
AddNeedBuySkillTime(11,"a11q1")	--在拾取碎片 这个任务时检测购买一遍

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="侠客"
--SetUseWeapon(str)--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("细剑|盾")

--SetUseZhuangBeiTypeData(typeStr,pos)--设置自己用的装备类型 
--typeStr=类型("StrDex"为决斗者装+护甲闪避 "Str"为野蛮人装+护甲 "DexInt"为暗影装+闪避护盾 "Int"为女巫装+护盾 "Dex"为游侠装+闪避 "StrInt"为圣堂武僧装+力量护盾)
--pos=部位支持部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 不填或nil为设置所有
SetUseZhuangBeiTypeData("StrDex|Dex","衣服")
SetUseZhuangBeiTypeData("StrInt|Int|Str","头盔")
SetUseZhuangBeiTypeData("Dex|DexInt|StrDex","手套")
SetUseZhuangBeiTypeData("Str|StrDex","鞋子")
SetUseZhuangBeiTypeData("StrInt","盾")

--SetShopNotBuyGoods("淨化烈焰","nil")
--SetShopNotBuyGoods("活力","nil")
--SetShopNotBuyGoods("赦免","nil")

--SetNeedSkillLineData(val,str,invalidLv)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--剧情连法
--剧情连法
SetNeedSkillLineData(10,"燃燒箭矢,nil|穿透輔助,nil",2,nil,nil)
SetNeedSkillLineData(92,"爆裂陷阱,nil|迅速組裝輔助,nil|機率中毒輔助,nil",18,nil,nil)
--以上過度--
SetNeedSkillLineData(100,"火焰陷阱,nil|陷阱及地雷傷害輔助,nil|極速苦痛輔助,nil|燃燒傷害輔助,nil|活栓輔助,nil|啟發輔助,nil",nil,nil,0)--3綠3紅
SetNeedSkillLineData(98,"地裂陷阱,nil|陷阱及地雷傷害輔助,nil|進階陷阱輔助,nil|燃燒輔助,nil",nil,nil,0)--3綠1藍
SetNeedSkillLineData(90,"元素淨化,nil|堅定,nil",nil,4,0)--藍紅--副手
SetNeedSkillLineData(85,"鋼筋鐵骨,nil|霜漣之瞬,nil|秘能波動輔助,nil",nil,nil,0)--1紅2藍
SetNeedSkillLineData(50,"受傷時施放輔助,nil|熔岩護盾,nil",nil,10,nil)
--SetNeedSkillLineData(70,"凋零之步,nil|恢復輔助,nil",nil,nil,nil)

--刷圖串法
SetNeedSkillLineData(100,"火焰陷阱,nil|陷阱及地雷傷害輔助,nil|極速苦痛輔助,nil|燃燒傷害輔助,nil|殘酷輔助,nil|啟發輔助,nil",nil,2,1)--3綠3紅-衣服
SetNeedSkillLineData(98,"地裂陷阱,nil|陷阱及地雷傷害輔助,nil|進階陷阱輔助,nil|燃燒輔助,nil",nil,9,1)--3綠1藍-護手
SetNeedSkillLineData(85,"熔岩護盾,nil|持續時間延長輔助,nil|啟發輔助,nil|恢復輔助,nil",nil,10,1)--3紅1綠-腳
SetNeedSkillLineData(88,"受傷時施放輔助,nil|虛無玉,nil|啟發輔助,nil|烈焰衝刺,nil",nil,5,1)--2紅2藍-頭部
SetNeedSkillLineData(90,"優雅,nil|迴旋之刃,nil",nil,3,1)--3綠-武器--剛進圖優雅先不開
--等傳奇裝穿夠了 抗滿了才把元素淨化改探測機,再開優雅(光環開關在內置設定)
SetNeedSkillLineData(96,"堅定,nil|元素淨化,nil|易燃,nil",nil,4,1)--1紅2藍-副手
--主線孔色
--2为衣服
SetZhengTiColorVarData(2,0,1,0,0,50,false)
SetZhengTiColorVarData(2,0,2,0,0,100,true)
SetZhengTiColorVarData(2,0,3,0,0,200,true)
SetZhengTiColorVarData(2,1,3,0,0,250,true)
SetZhengTiColorVarData(2,2,3,0,0,300,true)
SetZhengTiColorVarData(2,3,3,0,0,750,true)--3綠3紅2
--3为主武器
SetZhengTiColorVarData(3,0,1,0,0,5,false)
SetZhengTiColorVarData(3,0,2,0,0,150,true)
SetZhengTiColorVarData(3,1,2,0,0,250,true)--主手刷圖3綠
--4为副武器
SetZhengTiColorVarData(4,1,0,0,0,50,false)
SetZhengTiColorVarData(4,1,0,1,0,100,true)
SetZhengTiColorVarData(4,1,0,2,0,250,true)
SetZhengTiColorVarData(4,1,0,2,1,650,true)--1紅2藍-- 維多里奧的貢獻
--5为头盔
SetZhengTiColorVarData(5,1,0,0,0,50,false)
SetZhengTiColorVarData(5,1,0,1,0,100,true)
SetZhengTiColorVarData(5,1,1,1,0,150,true)
SetZhengTiColorVarData(5,1,0,2,0,250,true)
SetZhengTiColorVarData(5,1,1,2,0,350,true)
SetZhengTiColorVarData(5,2,0,2,0,450,true)
SetZhengTiColorVarData(5,2,0,2,1,600,true)--2紅2藍--藍吉爾菲的榮光 力智
--9为护手
SetZhengTiColorVarData(9,0,1,0,0,50,false)
SetZhengTiColorVarData(9,0,1,1,0,100,true)
SetZhengTiColorVarData(9,0,2,1,0,150,true)
SetZhengTiColorVarData(9,0,3,1,0,300,true)
SetZhengTiColorVarData(9,0,3,1,1,500,true)--3綠1藍
--10为鞋子
SetZhengTiColorVarData(10,1,0,0,0,50,false)
SetZhengTiColorVarData(10,2,0,0,0,100,true)
SetZhengTiColorVarData(10,3,0,0,0,150,true)
SetZhengTiColorVarData(10,3,0,1,0,250,true)
SetZhengTiColorVarData(10,3,1,0,0,500,true)
SetZhengTiColorVarData(10,3,1,0,1,700,true)--3紅1綠--迎暮

--SetNeedSkillLineData(100,"正義之火,nil|元素集中輔助,nil|增加範圍輔助,nil|活栓輔助,nil|燃燒傷害輔助,nil|極速苦痛輔助,nil",nil,2,1)
--SetNeedSkillLineData(95,"火焰陷阱,nil|活栓輔助,nil|極速苦痛輔助,nil|陷阱及地雷傷害輔助,nil",nil,9,1)
--SetNeedSkillLineData(90,"受傷時施放輔助,nil|熔岩護盾,nil|活栓輔助,nil|信念浪湧,nil",nil,10,1)
--SetNeedSkillLineData(80,"重盾衝鋒,nil|快速攻擊輔助,nil|活栓輔助,nil|信念浪湧,nil",nil,5,1)
--SetNeedSkillLineData(70,"堅定,nil|堅決戰吼,nil|活力,nil",nil,4,1)
--SetNeedSkillLineData(60,"惡意,nil|召喚探測機獸,nil|易燃,nil",nil,3,1)
AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,25,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",0,25,0)--主线生效 超过50级就用点金点白色装备

--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
AddAttackSkillData("噴火陷阱","Flamethrower_Trap",true)
AddAttackSkillData("火焰陷阱","Fire_Trap",true)
AddAttackSkillData("爆裂陷阱","Explosive Trap")
AddAttackSkillData("燃燒箭矢","Burning_Arrow",true)
AddAttackSkillData("普通攻击","melee")
--------------------------------------------
AddMoveSkillData("霜漣之瞬","ice_dash")
----------------------------------------------
SetUseBuffSkill("元素净化","purity","元素净化光环","player_aura_resists")--
--SetUseBuffSkill("堅定","determination","堅定光環","player_aura_armour")--
SetUseBuffSkill("清晰","clarity","清晰光環","player_aura_mana_regen")--
--SetUseBuffSkill("召喚探測機獸","skitterbots","探測機獸","skitterbots_buff")--
--SetYiJieZhaoHuanLingTiData("1_5_2","驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")

--SetNeedZhaoHuanMonster(name,className,val)--设置需要召唤的灵体会自动选择比重大的召唤 name=怪物名 className=怪物类名 val=比重
--SetNeedZhaoHuanMonster("驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",20)
--SetNeedZhaoHuanMonster("太阳军卫","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",5)
--SetNeedZhaoHuanMonster("冰哨带","Metadata/Monsters/Guardians/GuardianFire_Blue",4)--冰哨带
--SetNeedZhaoHuanMonster("火炎哨带","Metadata/Monsters/Guardians/GuardianFire",3)
--SetNeedZhaoHuanMonster("诡异行者","Metadata/Monsters/WickerMan/WickerMan",2)
--SetNeedZhaoHuanMonster("恶魔奴隶","Metadata/Monster/CageSpider/CageSpider2",1)


--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级

--SetSkillLimitMaxLv("暗影迷蹤","Metadata/Items/Gems/SkillGemPhaseRun",1)--暗影迷蹤不升級
--SetSkillLimitMaxLv("虛無玉,nil",1)--暗影迷蹤不升級
SetSkillLimitMaxLv("虛無玉",nil,1)--暗影迷蹤不升級
--SetSkillLimitMaxLv("褻瀆","Metadata/Items/Gems/SkillGemDesecrate",1)--褻瀆不升級
SetSkillLimitMaxLv("受傷時施放輔助",nil,1)--暗影迷蹤不升級
SetSkillLimitMaxLv("清晰",nil,14)--清晰14等
--SetSkillLimitMaxLv("脆弱","Metadata/Items/Gems/SkillGemNewVulnerability",1)--暗影迷蹤不升級



---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",0.5)--移动速度 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",0.5)--基础移动速度 +%


--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_strength_and_dexterity",0.7,1)--黃晶
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","fire_and_cold_damage_resistance_%",0.25,0)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","fire_and_lightning_damage_resistance_%",0.25,1)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","cold_and_lightning_damage_resistance_%",0.15,1)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","base_fire_damage_resistance_%",0.2,1)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","base_cold_damage_resistance_%",0.11,1)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","base_lightning_damage_resistance_%",0.1,1)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",0.2,1)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",0.11,1)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",0.1,1)--闪电抗性 %

--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带|盾","base_maximum_life",0.1,1)--加基礎最大生命
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",0.1,1)--加基礎最大生命
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","爪","物理伤害",0.5,1)--物理傷害
--SetAtuoChangeEquipData("女巫|圣堂武僧","戒指|项链","base_item_found_rarity_+%",0.1,2)--異界基礎物品掉落品質 +%

SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","fire_and_cold_damage_resistance_%",0.25,2)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","fire_and_lightning_damage_resistance_%",0.25,2)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","cold_and_lightning_damage_resistance_%",0.25,2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","fire_damage_resistance_%",0.2,2)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","cold_damage_resistance_%",0.2,2)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","lightning_damage_resistance_%",0.2,2)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_strength_and_intelligence",0.7)--額外力量與智慧 val:21	
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_dexterity_and_intelligence",0.6)--額外敏捷與智慧
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_intelligence",0.6)--額外智慧 
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","additional_strength",0.7)--額外力量
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","base_resist_all_elements_%",0.65)--全元素抗性 %

SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",5)

SetNeedFlaskData(1,"生命药剂")
SetNeedFlaskData(2,"生命药剂")
SetNeedFlaskData(3,"水银药剂")--藥劑配合補藥天賦
SetNeedFlaskData(4,"生命药剂")
SetNeedFlaskData(5,"魔力药剂")


--SetNeedFlaskData(1,"生命药剂","緩和之,FlaskBleedCorruptingBloodImmunity3",60,"永恆生命藥劑","Metadata/Items/Flasks/FlaskLife12")
--SetNeedFlaskData(2,"生命药剂","沸騰的,FlaskFullInstantRecovery1",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")
--SetNeedFlaskData(3,"水银药剂","腎上腺素之,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(4,"紫晶药剂","腎上腺素之,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(5,"魔力药剂","耐久的,FlaskEffectNotRemovedOnFullMana1",50,"永恆魔力藥劑","Metadata/Items/Flasks/FlaskMana12")


---------------------------------------高级换装
--SetGaoJiChangeEquipData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv) 高级换装设置 设置换指定的装备
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--name 物品名
--className 物品类名
--wordName 指定词缀
--wordClassName 指定词缀类名
--lineSocketCnt 需要连的洞数量 比如设置4 他就会打到4连为止 nil为忽略
--goodsLv 某些要打洞需要物品等级够了才能打那么多洞，如果定义了打洞数量 需要填这里 2洞要大于等于1级 3洞要大于等于15级 4洞要大于等于28级 5洞要大于等于35级 6洞要大于等于50级
--flaskPos 药剂部位 装备的话可以忽略，药剂的时候才需要用 nil为忽略 1 2 3 4 5 对应5个药剂部位

--SetGaoJiHuanZhuangData("女巫","坚毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","狮眼的荣耀之盾","Lioneye's Remorse",3,15)
--SetGaoJiHuanZhuangData("女巫","大型复合药剂","Metadata/Items/Flasks/FlaskHybrid3","宝视精华","Divination Distillate",nil,nil,2)
--SetGaoJiHuanZhuangData("圣堂武僧","潛能之戒","Metadata/Items/Rings/Ring15","褻瀆之替","Profane Proxy",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","海玉護身符","Metadata/Items/Amulets/Amulet5","拉茲瓦的靈石","Stone of Lazhwar")
--SetGaoJiHuanZhuangData("圣堂武僧","合板鳶盾","Metadata/Items/Armours/Shields/ShieldStrInt8","維多里奧的貢獻","Victario's Charity",3,15,nil,4)
--SetGaoJiHuanZhuangData("圣堂武僧","鍛鐵戒指","Metadata/Items/Rings/Ring1","英靈寶環","Le Heup of All",nil,nil,nil,7,3,1)
--SetGaoJiHuanZhuangData("圣堂武僧","大型複合藥劑","Metadata/Items/Flasks/FlaskHybrid3","寶視精華","Divination Distillate",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","裂臟鉤","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12",nil,nil,3,15,nil,3,0,1)
--SetGaoJiHuanZhuangData("决斗者","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("决斗者","钢影护手","Metadata/Items/Armours/Gloves/GlovesStrDex4","富贵之运","Aurseize",4,28)
--SetGaoJiHuanZhuangData("决斗者","銅鍛魔盾","Metadata/Items/Armours/Shields/ShieldInt6","山特立的回應","Sentari's Answer",3,15)
--SetGaoJiHuanZhuangData("决斗者","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("决斗者","重革腰帶","Metadata/Items/Belts/Belt4","畢斯寇繫帶","Bisco's Leash",nil,nil,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("决斗者","帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--SetGaoJiHuanZhuangData("决斗者","皇室堅盔","Metadata/Items/Armours/Helmets/HelmetStr10",nil,nil,4,28,nil,5,0,1,"帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--SetGaoJiHuanZhuangData("决斗者","砂影短靴","Metadata/Items/Armours/Boots/BootsDex4","龍炎足跡","Goldwyrm",4,28,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("决斗者","水銀藥劑","Metadata/Items/Flasks/FlaskUtility6",nil,nil,nil,15,3,nil,1)
--SetGaoJiHuanZhuangData("决斗者","羊毛手套","Metadata/Items/Armours/Gloves/GlovesInt1","猎宝者的护手","Sadima's Touch",4,28)
--SetGaoJiHuanZhuangData("女巫","朽木圓盾","Metadata/Items/Armours/Shields/ShieldStrDex1","暴雨之舵","Wheel of the Stormsail",3,15)
--SetGaoJiHuanZhuangData("决斗者","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("女巫","喚骨頭盔","Metadata/Items/Armours/Helmets/HelmetAtlas1",nil,nil,4,28,nil,5,1,1)
--SetGaoJiHuanZhuangData("女巫","貴族戰爪","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw14",nil,nil,4,28,nil,3,0,1)
--SetGaoJiHuanZhuangData("女巫","钢影护手","Metadata/Items/Armours/Gloves/GlovesStrDex4","富贵之运","Aurseize",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,8,1,1)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","銅鍛魔盾","Metadata/Items/Armours/Shields/ShieldInt6","山特立的回應","Sentari's Answer",3,15,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","魔性法杖","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand13","泣月","Moonsorrow",3,15,nil,3)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","高尚之人","The Highwayman",nil,nil,nil,8,nil,1)

--SetGaoJiHuanZhuangData("圣堂武僧","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")
--SetGaoJiHuanZhuangData("圣堂武僧","巨型塔盾","Metadata/Items/Armours/Shields/AhnsHeritageDrop","漢恩的遺產","Ahn's Heritage",3,15,nil,4,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","恐懼之牙","Metadata/Items/Weapons/OneHandWeapons/Claws/uniques/TheScourgeClawDrop","災害","The Scourge",3,15,nil,3)
--SetGaoJiHuanZhuangData("圣堂武僧","饰布腰带","Metadata/Items/Belts/Belt5","普兰德斯之印","Perandus Blazon",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","帝金护身符","Metadata/Items/Amulets/Amulet6","冬之心","Winterheart",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","三相戒指","Metadata/Items/Rings/Ring8","竊罪","Thief's Torment",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("圣堂武僧","鐵影長靴","Metadata/Items/Armours/Boots/BootsStrDex2","迎暮","Dusktoe",4,28,nil,10)--鞋子
--SetGaoJiHuanZhuangData("圣堂武僧","鐵影長靴","Metadata/Items/Armours/Boots/BootsStrDex1","日落破滅","Duskblight",4,28,nil,10)--鞋子
--SetGaoJiHuanZhuangData("圣堂武僧","军团手套","Metadata/Items/Armours/Gloves/GlovesStrInt1","虚空","Null and Void",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,4)
--SetGaoJiHuanZhuangData("圣堂武僧","厚裝鳶盾","Metadata/Items/Armours/Shields/ShieldStrInt12","烈炎之翼","Rise of the Phoenix",3,15,nil,4,nil,1)--烈炎之翼 厚裝鳶盾
SetGaoJiHuanZhuangData("游侠","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28,nil,nil,nil,1)
SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")
SetGaoJiHuanZhuangData("游侠","黑曜護身符","Metadata/Items/Amulets/Amulet7","屠戮之心","Carnage Heart",nil,nil,nil,nil,nil,1)
SetGaoJiHuanZhuangData("游侠","饰布腰带","Metadata/Items/Belts/Belt5","普兰德斯之印","Perandus Blazon",nil,nil,nil,nil,nil,1)
SetGaoJiHuanZhuangData("游侠","鍛鐵戒指","Metadata/Items/Rings/Ring1","英靈寶環","Le Heup of All",nil,nil,nil,7,nil,1)
SetGaoJiHuanZhuangData("游侠","黃玉戒指","Metadata/Items/Rings/Ring5","基加薩魯","Kikazaru",nil,nil,nil,8,nil,1)
SetGaoJiHuanZhuangData("游侠","合板鳶盾","Metadata/Items/Armours/Shields/ShieldStrInt8","維多里奧的貢獻","Victario's Charity",3,15,nil,4,nil,1)
SetGaoJiHuanZhuangData("游侠","練武者細劍","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier4","靈護","Aurumvorax",3,15,nil,3,nil,1)
--SetGaoJiHuanZhuangData("游侠","鐵影長靴","Metadata/Items/Armours/Boots/BootsStrDex2","迎暮","Dusktoe",4,28,nil,nil,nil,1)
SetGaoJiHuanZhuangData("游侠","蛇鱗長靴","Metadata/Items/Armours/Boots/BootsStrDex5","啞風輕步","Mutewind Whispersteps",4,28,nil,nil,nil,1)


--SetNeedAddTianFu(tfStr)--设置天赋加点 tfStr=config.ini里设置好的天赋 如"女巫=name1-className1|name2-className2|
SetNeedAddTianFu("游侠升华=AscendancyRaider9-閃避、元素傷害|AscendancyRaider10-石英化身|AscendancyRaider5-閃避、猛攻效果|AscendancyRaider6-極速進攻|AscendancyRaider3-閃避、狂怒球持續時間|AscendancyRaider2-盜獵者之途|")
--精隨天賦(如果要用,下面的基拉克記得取消)
--SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_essence_1_1-精髓稀有機率|atlas_essence_1_5-精髓稀有機率|atlas_essence_1_3-海量精華|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_essence_4_1-禁錮怪物額外精髓機率|atlas_essence_4_2-禁錮怪物額外精髓機率|atlas_essence_4_4-水晶格|atlas_essence_4_3-禁錮怪物額外精髓機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_drops_1-掉落複製地圖|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_essence_3_1-精髓機率|atlas_essence_3_2-禁錮怪物額外精髓機率|atlas_essence_3_3-禁錮怪物額外精髓機率|atlas_essence_3_5-水晶共振|atlas_alva_2_2-穿越怪物群大小|atlas_alva_2_7-穿越怪物群大小|atlas_alva_2_1-穿越怪物群大小|atlas_path_32-物品數量|atlas_essence_2_3-精髓機率|atlas_essence_2_5-精髓機率|atlas_essence_2_2-精髓機率|atlas_essence_2_4-強化能量|atlas_essence_3_6-遺忘的污染器皿機率|atlas_essence_3_4-遺忘的污染器皿機率")
--基拉克任務+地圖升階(拓荒快速拓圖用)
--SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_kirac_1_10-基拉克任務機率|atlas_kirac_1_9-基拉克任務機率|atlas_zana_1_6-重點偵察|atlas_kirac_1_8_-基拉克任務機率|atlas_kirac_1_7-基拉克任務機率|atlas_path_96-掉落複製地圖|atlas_map_tier_5_1-高階地圖機率|atlas_map_tier_5_2-高階地圖機率|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_3-雕塑峽谷|atlas_map_tier_3_1-高階地圖機率|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_3-雕塑海洋|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空")
--基拉克任務+地圖升階(拓荒快速拓圖用48點天賦有流浪之路)
SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_kirac_1_10-基拉克任務機率|atlas_kirac_1_9-基拉克任務機率|atlas_zana_1_6-重點偵察|atlas_kirac_1_8_-基拉克任務機率|atlas_kirac_1_7-基拉克任務機率|atlas_path_96-掉落複製地圖|atlas_map_tier_5_1-高階地圖機率|atlas_map_tier_5_2-高階地圖機率|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_map_tier_3_2-高階地圖機率|atlas_path_94-掉落複製地圖|atlas_map_drops_8-掉落複製地圖|atlas_path_92-掉落複製地圖|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_90-掉落複製地圖|atlas_keystone_smallnodes_1-流浪之路|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_map_drops_4-掉落複製地圖|atlas_path_83-掉落複製地圖|atlas_map_drops_5-掉落複製地圖|atlas_path_84-掉落複製地圖|atlas_path_95-掉落複製地圖|atlas_map_drops_9-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_path_82-掉落複製地圖|atlas_map_drops_14-掉落複製地圖|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_1-掉落複製地圖|atlas_map_drops_2-掉落複製地圖|atlas_map_drops_20-掉落複製地圖|")
SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|dexterity990-敏捷|dexterity992-敏捷|dexterity995-敏捷|intelligence957-智慧|dexterity848-敏捷|dexterity851-敏捷|dexterity1989-敏捷|dexterity841-敏捷|trap_damage1510-陷阱傷害|trap_laying_speed_and_damage1521-陷阱投擲速度|trap_damage_additional_traps_notable1524-工兵大師|mastery_trap237-陷阱專精-20694|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|mastery_attack18-藥劑專精-29214|elemental_reflect_2795-魔力藥劑獲得充能|dexterity855-敏捷|dexterity856-敏捷|dexterity865-敏捷|dexterity860-敏捷|dexterity867-敏捷|intelligence927-智慧|intelligence926-智慧|trap_and_mine_damage1533-陷阱傷害|trap_and_mine_damage1531-陷阱傷害|trap_and_mine_damage1513-陷阱傷害|trap_and_mine_damage_immunity1530-聰明的建設|trap_damage2140-陷阱觸發範圍|trap_damage_aoe_notable2142-不穩定彈藥|trap_damage_trigger_radius2141-陷阱觸發範圍|trap_mine_elemental_penetration_notable_1525-煉獄炸彈|mastery_trap236-陷阱專精-13257|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|life1116-閃避和生命|life1115-閃避和生命|life1117-死亡通緝|perfect_aim591-彈道學|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|intelligence906-智慧|intelligence930-智慧|intelligence960-智慧|aura_effect1553-光環效果|reduced_mana_reservation1200-保留效用|aura_effect_notable1557-影響|life_energy_shield1675-生命和能量護盾|fitness1160-血書|life_energy_shield1676-生命和能量護盾|life_energy_shield1677-生命和能量護盾|intelligence916-智慧|intelligence899-智慧|intelligence953-智慧|trap_speed_trigger_radius2146-陷阱拋射速度與觸發範圍|trap_speed_trigger_radius2147-陷阱拋射速度與觸發範圍|trap_speed_trigger_radius_notable2148-快速彈藥|spell_power1227-冷酷計算|mana1479-魔力和藥劑效果|mana1478-原始精神|fire_cold_damage2087-火焰和冰冷傷害|fire_cold_damage2088-火焰傷害|fire_cold_damage_notable2090-雪鍛|mastery_elemental95-元素專精-17942|evasion538-閃避和法術壓抑|reflexes1091-反射|reflexes706-閃避和法術壓抑|dexterity849-敏捷|life_flasks_1745-生命與藥劑|life_flasks1744-生命與藥劑|life_flasks_notable1747-生物學|dexterity847-敏捷|skill_duration437-技能持續時間|skill_duration1036-技能持續時間|skill_duration_notable1738-卓越的表現|sentinel1541-哨兵|mastery_duration91-持續時間專精-17852|critical_strike_chance1020-暴擊率|assassination1239-刺殺|critical_strike_chance1019-暴擊率|mental_acuity1046-詭計|life1220-生命|fitness617-血液抽取|trap_and_mine_damage1511-陷阱和地雷傷害|additional_trap_and_mine_and_damage1536-怠工者|life1415-生命|life_life_leech1629-嗜血者|mastery_life135-生命專精-47642|dexterity866-敏捷|dexterity864-敏捷|dexterity862-敏捷|life1216-生命|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-34242|dexterity870-敏捷|claws_of_the_pride489-直覺|")
--0417

package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="侠客"
--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("弓|箭袋")
--设置自己用的装备类型 
SetUseZhuangBeiTypeData("StrDex","衣服")
SetUseZhuangBeiTypeData("Dex|DexInt","头盔")
SetUseZhuangBeiTypeData("Str|StrInt|Int|StrDex|Dex|DexInt","手套")
SetUseZhuangBeiTypeData("Str|StrDex|Dex","鞋子")
SetUseZhuangBeiTypeData("StrInt","项链")

g_attackDis=50				--攻击距离
g_duobiHpVal=0.2

------------------基本设置
g_needMinimizeGame=nil		    --最小化遊戲窗口 true为最小化 false或nil为不最小化

--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

SetNeedSkillLineData(93,"燃燒箭矢,nil|氣勢輔助,nil",2,nil,nil)
SetNeedSkillLineData(94,"魔改箭矢輔助,nil|暴風雷雨,nil|幻影射手輔助,nil",nil,nil,nil)
SetNeedSkillLineData(95,"魔改箭矢輔助,nil|狂怒,nil|暴擊獲得暴擊球輔助,nil|爆裂箭雨,nil|冰霜射擊,nil",nil,nil,nil)
SetNeedSkillLineData(96,"鋼筋鐵骨,nil|元素淨化,nil|優雅,nil",nil,nil,nil)
SetNeedSkillLineData(97,"狙擊者印記,nil|擊中時印記輔助,nil|召喚寒冰魔像,nil",nil,nil,nil)
SetNeedSkillLineData(98,"彈片砲塔,nil|快速攻擊輔助,nil|猛毒投射物輔助,nil|齊射輔助,nil",30,nil,nil)
SetNeedSkillLineData(99,"電流箭矢,nil|附加冰冷傷害輔助,nil|元素攻擊傷害輔助,nil|幻影射手輔助,nil|附加火焰傷害輔助,nil",16,nil,nil)
SetNeedSkillLineData(100,"閃電箭矢,nil,1|投射物返回輔助,nil|幻影射手輔助,nil|啟發輔助,nil|元素攻擊傷害輔助,nil|三體輔助,nil|元素攻擊傷害輔助,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,12)


--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
AddAttackSkillData("閃電箭矢","Lightning Arrow",false,100,0)--添加攻击技能
AddAttackSkillData("電流箭矢","Galvanic Arrow",false,50,0)--添加攻击技能
AddAttackSkillData("燃燒箭矢","Burning Arrow")
AddAttackSkillData("普通攻击","melee")
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--狙擊者印記

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("鋼筋鐵骨",nil,14)


-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名

SetNeedFlaskData(1,"生命药剂","nil")
SetNeedFlaskData(2,"生命药剂","nil")
SetNeedFlaskData(3,"水银药剂","nil")
SetNeedFlaskData(4,"生命药剂","nil")
SetNeedFlaskData(5,"魔力药剂","nil")


g_addHpVal=0.8--HP低于多少吃红药
g_addMpVal=0.2--MP低于多少吃蓝药

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",0.25)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",0.25)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",0.35)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",0.3)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",0.3)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",0.3)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_damage_resistance_%",0.3)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_damage_resistance_%",0.3)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","lightning_damage_resistance_%",0.3)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_movement_velocity_+%",0.3)--基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",0.3)--生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","movement_velocity_+%",0.3)--移动速度 +%

SetAtuoChangeEquipData("游侠","项链","additional_strength",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_intelligence",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_lightning_damage",5)--

--游侠--孔色
SetZhengTiColorVarData(2,2,3,1,nil,800,true)
--SetZhengTiColorVarData(2,2,2,1,nil,700,true)
SetZhengTiColorVarData(2,1,3,1,nil,600,true)
--SetZhengTiColorVarData(2,1,3,1,nil,500,true)
SetZhengTiColorVarData(2,1,3,0,nil,400,true)
--SetZhengTiColorVarData(2,1,3,0,nil,300,true)
SetZhengTiColorVarData(2,1,2,0,nil,250,true)
SetZhengTiColorVarData(2,0,2,0,nil,200,true)
SetZhengTiColorVarData(2,1,1,0,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,0,0,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

SetZhengTiColorVarData(3,2,3,1,nil,600,true)
SetZhengTiColorVarData(3,2,3,0,nil,500,true)
SetZhengTiColorVarData(3,1,3,0,nil,400,true)
SetZhengTiColorVarData(3,0,3,0,nil,300,true)
SetZhengTiColorVarData(3,0,2,0,nil,200,true)
SetZhengTiColorVarData(3,0,1,0,nil,10)

SetZhengTiColorVarData(4,3,0,0,nil,300,true)
SetZhengTiColorVarData(4,2,0,0,nil,200,true)
SetZhengTiColorVarData(4,1,0,0,nil,100)

SetZhengTiColorVarData(5,0,3,1,nil,400,true)
SetZhengTiColorVarData(5,0,3,0,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)

--SetZhengTiColorVarData(9,1,2,1,nil,500,true)
SetZhengTiColorVarData(9,1,2,1,nil,400,true)
SetZhengTiColorVarData(9,1,1,1,nil,300,true)
SetZhengTiColorVarData(9,0,1,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)

SetZhengTiColorVarData(10,0,3,1,nil,400,true)
SetZhengTiColorVarData(10,0,3,0,nil,300,true)
SetZhengTiColorVarData(10,0,2,0,nil,200,true)
SetZhengTiColorVarData(10,0,1,0,nil,100)


AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--主线生效 超过50级就用富豪点蓝色装备

--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

--高级换装设置
--SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")
--SetGaoJiHuanZhuangData("游侠","金缕帽","Metadata/Items/Armours/Helmets/HelmetDex1","金缕帽","Goldrim")

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",67,true)--做 到風暴飛刃 的时候刷滲血水道到68级再进行下一任务

SetTaskMiGongDataByLv(40,1)--大于等于40级 做迷宫1
SetTaskMiGongDataByLv(60,2)--大于等于60级 做迷宫2
SetTaskMiGongDataByLv(74,3)--大于等于80级 做迷宫3


SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",0)
SetChangeLimitCnt("腰带",0)
SetChangeLimitCnt("项链|戒指",0)


--SetNeedAddTianFu(tfStr)--设置天赋加点 
--SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|accuracy581-投射物傷害與攻擊速度|attack_speed1488-攻擊速度|attack_speed1489-攻擊速度|attack_speed1487-攻擊速度|perfect_aim591-彈道學|bow_damage_and_speed498-弓的傷害|greater_impact638-鷹靈祝福|dexterity995-敏捷|intelligence957-智慧|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|mastery_attack18-藥劑專精-29214|elemental_reflect_2795-魔力藥劑獲得充能|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|dexterity848-敏捷|dexterity855-敏捷|dexterity856-敏捷|bow_chaos2508-弓的傷害|bow_chaos2509-弓的傷害|master_fletcher515-獵人之局|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|stun_recovery543-生命和避免暈眩|finesse993-嫻熟|mana1479-魔力和藥劑效果|mana1478-原始精神|strength815-力量|chaos_damage1578-混沌持續傷害加成|chaos_damage1579-混沌持續傷害加成|dagger_leech_notable2537-浪費|dexterity981-敏捷|agility965-和諧之體|life703-生命|fitness617-血液抽取|degeneration_damage1569-持續傷害|degeneration_damage_notable1575-亂世|degeneration_damage1570-持續傷害|acceleration1238-毒蛇之牙|dexterity984-敏捷|strength821-力量|dexterity853-敏捷|bow_mobility2507-弓的傷害|bow_damage_move_speed1710-弓的傷害和閃避|bow_damage_move_speed1709-弓的傷害和閃避|bow_damage_speed_notable1711-狩獵之徵|intelligence880-智慧|dexterity975-敏捷|agility833-鬥士藝術|life129-生命|life_armour_evasion_notable1853-英勇|dexterity868-敏捷|dexterity987-敏捷|strength1983-力量|strength1004-力量|life1196-生命|golem's_blood1088-魔像血統 |life1213-生命|strength1005-力量|iron_reflexes1137-霸體|bow_damage_area2517-物理弓傷害|bow_damage_and_critical_strike_chance495-弓持續傷害|bow_area_notable2586-致命箭矢|dexterity875-敏捷|melee_evasion2028-護甲和閃避|melee_evasion2037-護甲和閃避|mace_accuracy_speed_notable2484-勇氣|mastery_evasion109-護甲和閃避專精-58876|dexterity877-敏捷|dexterity839-敏捷|bow_damage_accuracy2513-弓的傷害和命中|bow_damage_accuracy2511-弓的傷害和攻擊速度|bow_damage_accuracy_notable2514-遠視|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|armour_and_evasion1454-護甲和閃避|leather_and_steel1458-迅影秘術|life1116-閃避和生命|life1115-閃避和生命|life1117-死亡通緝|mastery_life130-閃避專精-37190|dexterity850-敏捷|dexterity1988-敏捷|dexterity849-敏捷|life_flasks_1745-生命與藥劑|life_flasks1744-生命與藥劑|life_flasks_notable1747-生物學|reflexes706-閃避和法術壓抑|reflexes1091-反射|dexterity847-敏捷|sentinel1541-哨兵|deaden_keystone2849-咒術災厄|lightning_resistance1290-閃電抗性|cold_resistance1289-冰冷抗性|fire_resistance1288-火焰抗性|dual_wield_damage2125-移動速度和法術壓抑|attack_move_speed_notable1792-疾步|dual_wield_damage726-移動速度和法術壓抑|claws_of_the_pride489-直覺|")
SetNeedAddTianFu("游侠升华=AscendancyRaider5-閃避、猛攻效果|AscendancyRaider6-極速進攻|AscendancyRaider9-閃避、元素傷害|AscendancyRaider10-石英化身|AscendancyRaider7-閃避、猛攻效果|AscendancyRaider8-追獵使徒|")
--SetNeedAddTianFu(tfStr)--设置异界天赋加点 
--SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_kirac_1_10-基拉克任務機率|atlas_kirac_1_9-基拉克任務機率|atlas_zana_1_6-重點偵察|atlas_kirac_1_8_-基拉克任務機率|atlas_kirac_1_7-基拉克任務機率|atlas_path_96-掉落複製地圖|atlas_path_94-掉落複製地圖|atlas_map_drops_8-掉落複製地圖|atlas_path_92-掉落複製地圖|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_90-掉落複製地圖|atlas_keystone_smallnodes_1-流浪之路|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_kirac_2_1-基拉克任務機率|atlas_kirac_2_2-基拉克任務機率|atlas_kirac_2_3-基拉克任務機率|atlas_map_tier_5_1-高階地圖機率|atlas_map_tier_5_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_keystone_enhanced_kirac_crafts-超載電路|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_4_2-高階地圖機率|atlas_map_tier_4_1-高階地圖機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_30_1-相鄰地圖掉落機率|atlas_map_drops_1-掉落複製地圖|atlas_map_drops_10-掉落複製地圖|atlas_map_drops_11-掉落複製地圖|atlas_path_4-相鄰地圖掉落機率|atlas_path_7-相鄰地圖掉落機率|atlas_path_88-掉落複製地圖|atlas_map_drops_12_-掉落複製地圖|atlas_path_87-掉落複製地圖|atlas_map_drops_13-掉落複製地圖|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_path_82-掉落複製地圖|atlas_map_drops_14-掉落複製地圖|atlas_path_85-掉落複製地圖|atlas_map_drops_4-掉落複製地圖|atlas_path_83-掉落複製地圖|atlas_map_drops_5-掉落複製地圖|atlas_path_84-掉落複製地圖|")
SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_drops_1-聖甲蟲掉落率|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_path_93-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-地圖詞綴效果|atlas_map_drops_7-地圖詞綴效果|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|")

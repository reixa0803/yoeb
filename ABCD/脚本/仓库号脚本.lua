package.path = GetPackagePath();
local loadArr={"work","TestFunction"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_imBoss=true
g_needMinimizeGame=false
g_timeOut=1*60*60
g_needBuyGoodsDataArr={}--取消仓库号设置换物品 
AddTaskWork("自动收货",AutoBossJiaoYi)
--RemoveAllSaveIndex()--删除所有存仓分类的设置
--下面存仓设置 从大类到小类设置
SetSaveIndex("通货|可堆叠通货","5|4|3",nil,nil,nil,nil,1)
SetSaveIndex("命运卡","1|2|3|4")
SetSaveIndex("珠宝","3")
SetSaveIndex("爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|箭袋|手套|衣服|盾|腰带|鞋子|头盔|","1|2|3|4")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂","1")
SetSaveIndex("项链|戒指|","2")
SetSaveIndex("异界地图","1")
SetSaveIndex("主动技能宝石|辅助技能宝石","4")

--设置指定装备留多少样
SetGoodsCaoZuo(nil,"3","帝金护身符","Metadata/Items/Amulets/Amulet6","畢斯寇的項圈","Bisco's Collar",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","饰布腰带","Metadata/Items/Belts/Belt5","普兰德斯之印","Perandus Blazon",nil,30,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","三相戒指","Metadata/Items/Rings/Ring8","竊罪","Thief's Torment",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","羊毛手套","Metadata/Items/Armours/Gloves/GlovesInt1","猎宝者的护手","Sadima's Touch",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","坚毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","狮眼的荣耀之盾","Lioneye's Remorse",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","环带长靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","士兵之盔","Metadata/Items/Armours/Boots/HelmetStrInt2","私慾的光輝","Honourhome",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","魔性法杖","Metadata/Items/Armours/Boots/Wand13","泣月","Moonsorrow",nil,30,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","大型复合药剂","Metadata/Items/Flasks/FlaskHybrid3","宝视精华","Divination Distillate",nil,50,nil,nil,nil,true)

SetSaveIndex(nil,"1|2|3|4","奼紫油瓶","Metadata/Items/Currency/Mushrune7")
SetSaveIndex(nil,"1|2|3|4","緋紅油瓶","Metadata/Items/Currency/Mushrune8")
SetSaveIndex(nil,"1|2|3|4","漆黑油瓶","Metadata/Items/Currency/Mushrune9")
SetSaveIndex(nil,"1|2|3|4","乳白油瓶","Metadata/Items/Currency/Mushrune10")

SetSaveIndex(nil,"1|2|3|4","索伏裂片","Metadata/Items/Currency/CurrencyBreachFireShard")
SetSaveIndex(nil,"1|2|3|4","托沃裂片","Metadata/Items/Currency/CurrencyBreachColdShard")
SetSaveIndex(nil,"1|2|3|4","艾許裂片","Metadata/Items/Currency/CurrencyBreachLightningShard")
SetSaveIndex(nil,"1|2|3|4","烏爾尼多裂片","Metadata/Items/Currency/CurrencyBreachPhysicalShard")
SetSaveIndex(nil,"1|2|3|4","夏烏拉裂片","Metadata/Items/Currency/CurrencyBreachChaosShard")
SetSaveIndex(nil,"1|2|3|4","永恆卡魯裂片","Metadata/Items/Currency/CurrencyLegionKaruiShard")
SetSaveIndex(nil,"1|2|3|4","永恆馬拉克斯裂片","Metadata/Items/Currency/CurrencyLegionMarakethShard")
SetSaveIndex(nil,"1|2|3|4","永恆不朽帝國裂片","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard")
SetSaveIndex(nil,"1|2|3|4","永恆聖宗裂片","Metadata/Items/Currency/CurrencyLegionTemplarShard")
SetSaveIndex(nil,"1|2|3|4","永恆瓦爾裂片","Metadata/Items/Currency/CurrencyLegionVaalShard")
SetSaveIndex(nil,"1|2|3|4","遺忘的污染器皿","Metadata/Items/Currency/CurrencyCorruptMonolith")

--SetSaveIndex(nil,"1|2|3|4","混沌石","Metadata/Items/Currency/CurrencyRerollRare")
--SetSaveIndex(nil,"1|2|3|4","改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetSaveIndex(nil,"1|2|3|4","机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
-- SetSaveIndex(nil,"1|2|3|4","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours")
-- SetSaveIndex(nil,"1|2|3|4","链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
-- SetSaveIndex(nil,"1|2|3|4","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")

SetSaveIndex(nil,"1|2|3|4","白银圣油","Metadata/Items/Currency/Mushrune11")
SetSaveIndex(nil,"1|2|3|4","金色圣油","Metadata/Items/Currency/Mushrune12")

SetSaveIndex(nil,"5","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit")
SetSaveIndex(nil,"5","蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetSaveIndex(nil,"5","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetSaveIndex(nil,"5","普兰德斯金币","Metadata/Items/Currency/CurrencyPerandusCoin")
SetSaveIndex(nil,"5","平行石=地平石","Metadata/Items/Currency/CurrencyRerollMapType")
SetSaveIndex(nil,"5","制箱岩=工程石","Metadata/Items/Currency/CurrencyStrongboxQuality")

SetSaveIndex(nil,"1|2|3|4","坚锤","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace18","沉默之雷","Mj?lner")
SetSaveIndex(nil,"1|2|3|4","破城斧","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe17","开膛斧","Soul Taker")

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintDungeon")--藍圖：實驗室 enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintReliquary")--藍圖：展覽室 enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintLibrary")--藍圖：禁忌館藏 enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels")--藍圖：地道 enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Expedition/ExpeditionLogbook")--探險日誌

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion1")--聖甲蟲：鏽蝕戰亂
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion2")--聖甲蟲：圓滑戰亂
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion3")--聖甲蟲：鍍金戰亂
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion4")--聖甲蟲：展翅戰亂
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger1")--聖甲蟲：鏽蝕神諭
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger2")--聖甲蟲：圓滑神諭
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger3")--聖甲蟲：鍍金神諭
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger4")--聖甲蟲：展翅神諭
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight1")--聖甲蟲：鏽蝕凋落
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight2")--聖甲蟲：圓滑凋落
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight3")--聖甲蟲：鍍金凋落
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight4")--聖甲蟲：展翅凋落
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite1")--聖甲蟲：鏽蝕硫酸
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite2")--聖甲蟲：圓滑硫酸
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite3")--聖甲蟲：鍍金硫酸
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite4")--聖甲蟲：展翅硫酸

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--斑駁化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingElemental")--三相化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--神幻化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--利齒化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMana")--明透化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--顫慄化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--畛域化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality")--無瑕化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--附魔化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--鑲飾化石
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--神聖化石

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentFire")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentCold")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentLightning")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentPhysical")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentChaos")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniquePhysical",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,nil)

SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")--卓越偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")--超凡偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden")--全面偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")--瓦爾偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium")--譫妄偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced")--技工偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted")--凋落偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")--勢力偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")--探險家偵查報告
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/CurrencyExtractOil")--精油淬鍊
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchRerollRare")--異能混沌石
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchAddModToRare")--異能崇高石
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchRemoveMod")--異能無效石
SetSaveIndex(nil,"5",nil,"Metadata/Items/MapFragments/CurrencySirusFragment1")--奧赫茲明刻紋
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment2")--巴倫刻紋
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment3")--圖拉克斯刻紋
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment4")--維羅提尼亞刻紋
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragmentsComplete")--尊師殺手刻紋
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber1")--低階異能灰燼
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber2")--高階異能灰燼
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber3")--宏偉異能灰燼
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber4")--卓越異能灰燼
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor1")--低階異能靈液
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor2")--高階異能靈液
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor3")--宏偉異能靈液
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor4")--卓越異能靈液
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyConflictOrb")--衝突寶珠
SetSaveIndex(nil,nil,"Metadata/Items/Currency/CurrencyItemiseSextantModifier")--調查員的羅盤
SetSaveIndex(nil,nil,"Metadata/Items/Currency/CurrencyItemisedSextantModifier")--充能的羅盤

--SetSaveIndex("戒指","1")
SetCompoundDivinationCard("谦逊","Metadata/Items/DivinationCards/DivinationCardHumility",0)--设置合成忠诚命运卡




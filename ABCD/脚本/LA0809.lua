package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="����"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")
--�����Լ��õ�װ������ 
SetUseZhuangBeiTypeData("StrDex","�·�")
SetUseZhuangBeiTypeData("Dex|DexInt","ͷ��")
SetUseZhuangBeiTypeData("Str|StrInt|Int|StrDex|Dex|DexInt","����")
SetUseZhuangBeiTypeData("Str|StrDex|Dex","Ь��")
SetUseZhuangBeiTypeData("StrInt","����")

g_attackDis=50				--��������
g_duobiHpVal=0.2

------------------��������
g_needMinimizeGame=nil		    --��С���[�򴰿� trueΪ��С�� false��nilΪ����С��

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

SetNeedSkillLineData(93,"ȼ����ʸ,nil|����o��,nil",2,nil,nil)
SetNeedSkillLineData(94,"ħ�ļ�ʸ�o��,nil|���L����,nil|��Ӱ�����o��,nil",nil,nil,nil)
SetNeedSkillLineData(95,"ħ�ļ�ʸ�o��,nil|��ŭ,nil|�����@�ñ������o��,nil|���Ѽ���,nil|��˪���,nil",nil,nil,nil)
SetNeedSkillLineData(96,"䓽��F��,nil|Ԫ�؜Q��,nil|����,nil",nil,nil,nil)
SetNeedSkillLineData(97,"�ѓ���ӡӛ,nil|���Еrӡӛ�o��,nil|�ن�����ħ��,nil",nil,nil,nil)
SetNeedSkillLineData(98,"��Ƭ�h��,nil|���ٹ����o��,nil|�Ͷ�Ͷ�����o��,nil|�R���o��,nil",30,nil,nil)
SetNeedSkillLineData(99,"�����ʸ,nil|���ӱ�������o��,nil|Ԫ�ع�������o��,nil|��Ӱ�����o��,nil|���ӻ�������o��,nil",16,nil,nil)
SetNeedSkillLineData(100,"�W늼�ʸ,nil,1|Ͷ���ﷵ���o��,nil|��Ӱ�����o��,nil|���l�o��,nil|Ԫ�ع�������o��,nil|���w�o��,nil|Ԫ�ع�������o��,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,12)


--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("�W늼�ʸ","Lightning Arrow",false,100,0)--��ӹ�������
AddAttackSkillData("�����ʸ","Galvanic Arrow",false,50,0)--��ӹ�������
AddAttackSkillData("ȼ����ʸ","Burning Arrow")
AddAttackSkillData("��ͨ����","melee")
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--�ѓ���ӡӛ

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("䓽��F��",nil,14)


-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"����ҩ��","nil")
SetNeedFlaskData(3,"ˮ��ҩ��","nil")
SetNeedFlaskData(4,"����ҩ��","nil")
SetNeedFlaskData(5,"ħ��ҩ��","nil")


g_addHpVal=0.8--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.2--MP���ڶ��ٳ���ҩ

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_cold_damage_resistance_%",0.25)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_lightning_damage_resistance_%",0.25)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_resist_all_elements_%",0.35)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_fire_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_cold_damage_resistance_%",0.3)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_lightning_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_damage_resistance_%",0.3)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_damage_resistance_%",0.3)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","lightning_damage_resistance_%",0.3)--���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_movement_velocity_+%",0.3)--�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_maximum_life",0.3)--����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","movement_velocity_+%",0.3)--�ƶ��ٶ� +%

SetAtuoChangeEquipData("����","����","additional_strength",0.2)--
SetAtuoChangeEquipData("����","����","additional_intelligence",0.2)--
SetAtuoChangeEquipData("����","����","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("����","��","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("����","��","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("����","��","local_maximum_added_lightning_damage",5)--

--����--��ɫ
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


AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--������Ч ����50�����õ����ɫװ��
AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����
--SetGaoJiHuanZhuangData("����","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa")
--SetGaoJiHuanZhuangData("����","����ñ","Metadata/Items/Armours/Helmets/HelmetDex1","����ñ","Goldrim")

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",67,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongDataByLv(40,1)--���ڵ���40�� ���Թ�1
SetTaskMiGongDataByLv(60,2)--���ڵ���60�� ���Թ�2
SetTaskMiGongDataByLv(74,3)--���ڵ���80�� ���Թ�3


SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",0)
SetChangeLimitCnt("����",0)
SetChangeLimitCnt("����|��ָ",0)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
--SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|accuracy581-Ͷ��������c�����ٶ�|attack_speed1488-�����ٶ�|attack_speed1489-�����ٶ�|attack_speed1487-�����ٶ�|perfect_aim591-�����W|bow_damage_and_speed498-���Ă���|greater_impact638-���`ף��|dexterity995-����|intelligence957-�ǻ�|elemental_damage_es1615-�@��ˎ������|elemental_reflect_2794-����ˎ���@�ó���|elemental_reflect_notable_2796-�aˎ|mastery_attack18-ˎ������-29214|elemental_reflect_2795-ħ��ˎ���@�ó���|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity848-����|dexterity855-����|dexterity856-����|bow_chaos2508-���Ă���|bow_chaos2509-���Ă���|master_fletcher515-�C��֮��|stun_recovery544-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|stun_recovery543-�����ͱ��╞ѣ|finesse993-����|mana1479-ħ����ˎ��Ч��|mana1478-ԭʼ����|strength815-����|chaos_damage1578-������m�����ӳ�|chaos_damage1579-������m�����ӳ�|dagger_leech_notable2537-���M|dexterity981-����|agility965-���C֮�w|life703-����|fitness617-ѪҺ��ȡ|degeneration_damage1569-���m����|degeneration_damage_notable1575-�y��|degeneration_damage1570-���m����|acceleration1238-����֮��|dexterity984-����|strength821-����|dexterity853-����|bow_mobility2507-���Ă���|bow_damage_move_speed1710-���Ă������W��|bow_damage_move_speed1709-���Ă������W��|bow_damage_speed_notable1711-���C֮��|intelligence880-�ǻ�|dexterity975-����|agility833-�Yʿˇ�g|life129-����|life_armour_evasion_notable1853-Ӣ��|dexterity868-����|dexterity987-����|strength1983-����|strength1004-����|life1196-����|golem's_blood1088-ħ��Ѫ�y |life1213-����|strength1005-����|iron_reflexes1137-���w|bow_damage_area2517-��������|bow_damage_and_critical_strike_chance495-�����m����|bow_area_notable2586-������ʸ|dexterity875-����|melee_evasion2028-�o�׺��W��|melee_evasion2037-�o�׺��W��|mace_accuracy_speed_notable2484-��|mastery_evasion109-�o�׺��W�܌���-58876|dexterity877-����|dexterity839-����|bow_damage_accuracy2513-���Ă���������|bow_damage_accuracy2511-���Ă����͹����ٶ�|bow_damage_accuracy_notable2514-�hҕ|life1120-�����ͱ���Ԫ�خ�����B|thick_skin1157-����֮�w|armour_and_evasion1454-�o�׺��W��|leather_and_steel1458-ѸӰ���g|life1116-�W�ܺ�����|life1115-�W�ܺ�����|life1117-����ͨ��|mastery_life130-�W�܌���-37190|dexterity850-����|dexterity1988-����|dexterity849-����|life_flasks_1745-�����cˎ��|life_flasks1744-�����cˎ��|life_flasks_notable1747-����W|reflexes706-�W�ܺͷ��g����|reflexes1091-����|dexterity847-����|sentinel1541-�ڱ�|deaden_keystone2849-���g�Ķ�|lightning_resistance1290-�W늿���|cold_resistance1289-���俹��|fire_resistance1288-���濹��|dual_wield_damage2125-�Ƅ��ٶȺͷ��g����|attack_move_speed_notable1792-����|dual_wield_damage726-�Ƅ��ٶȺͷ��g����|claws_of_the_pride489-ֱ�X|")
SetNeedAddTianFu("��������=AscendancyDeadeye3-Ͷ��������������ٶ�|AscendancyDeadeye14-���L|AscendancyDeadeye5-Ͷ���������������|AscendancyDeadeye4-����|AscendancyDeadeye17-Ͷ���������������|AscendancyDeadeye6-�o�ޏ�ˎ|AscendancyDeadeye19-Ͷ��������������ٶ�|AscendancyDeadeye20_-�L֮���l|") 
--SetNeedAddTianFu(tfStr)--��������츳�ӵ� 
--SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_kirac_1_10-�������΄ՙC��|atlas_kirac_1_9-�������΄ՙC��|atlas_zana_1_6-���c�ɲ�|atlas_kirac_1_8_-�������΄ՙC��|atlas_kirac_1_7-�������΄ՙC��|atlas_path_96-�����}�u�؈D|atlas_path_94-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_kirac_2_1-�������΄ՙC��|atlas_kirac_2_2-�������΄ՙC��|atlas_kirac_2_3-�������΄ՙC��|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_keystone_enhanced_kirac_crafts-���d�·|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_4_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_path_17-�����؈D����C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_path_28-�����؈D����C��|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_path_25_-�����؈D����C��|atlas_path_16-�����؈D����C��|atlas_path_24_-�����؈D����C��|atlas_path_12-�����؈D����C��|atlas_path_22-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_20-�����؈D����C��|atlas_path_1-�����؈D����C��|atlas_path_19-�����؈D����C��|atlas_path_10-�����؈D����C��|atlas_path_6-�����؈D����C��|atlas_path_5-�����؈D����C��|atlas_path_30_1-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_4-�����؈D����C��|atlas_path_7-�����؈D����C��|atlas_path_88-�����}�u�؈D|atlas_map_drops_12_-�����}�u�؈D|atlas_path_87-�����}�u�؈D|atlas_map_drops_13-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|")
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_17-�����؈D����C��|atlas_map_drops_1-�}���x������|atlas_map_drops_16-�}���x������|atlas_map_drops_15-�}���x������|atlas_map_drops_9-�}���x������|atlas_path_93-�}���x������|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_39-��Ʒ����|atlas_path_34-��Ʒ����|atlas_path_80-�؈D�~�YЧ��|atlas_map_drops_7-�؈D�~�YЧ��|atlas_mod_effect_6-�؈D�~�YЧ��|atlas_keystone_nofragments_1-�Զ����Ƶ��hҊ|")

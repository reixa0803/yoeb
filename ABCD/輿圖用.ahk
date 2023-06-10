global opendata =0
global timeh = 0
global timemin = 0
global times = 0
global boss =0
global outkill =0
global outalltime =0
global maptime =0
global skin=0
global alls=0
global dadnb=0
global dadnb=0
global way =0
global bosstime=0
global outkillnb=0
global outalltimenb=0
global skinnb=0
global bossnb=0
global udayboss=0
global allbosstime=0
global gu=0
global gus=0
global ex=0
global Apothecary=0
global nob=""
global exs=0
global dad=0
global guall=0
global Exalted =0
global Ancient =0
global Gemcutter =0
global Divine 	=0
global Alchemy 	=0
global Regret 		=0
global Regal 		=0
global Alteration =0
global Jeweller 	=0
global Chromatic 	=0
global Vaal 		=0
global Fusing 		=0
global Scouring 	=0
global Annulment	=0
global teestalltwoc	=0
global guallday = 0
global boostime=0
global txtend=""
global gualltemp = 0
global gualltemp4h = 0
global 10min =0
global allstemp = 0
global Chaos=0
global exall=0
global exallday=0
global god=0
global seegod=0
global seegodall=0
global seegodmap=0
global seegodgod=0
global fast=0
global deathnameI=""
global  openmapnameI=""
global openmaptemp =""
global openmaptempi=""
global  outkilltxtnameI=""
global  outalltimetxtnameI=""
global maptimeAall=0
global maptimeBall=0
global maptimenow=0

global startnameI=""
global startname=""
global exitebnameI=""
global exitebname=""
global saveok =0
global updatatime =0
global erroralls =0
global errorallstime =0
global  testalltwoc =0
global iotkey=""
global iotname=""
global vob=""
global handthingI=""
global handthing=""
global tubutt =0
global twoex =0
global play29all =0
global errent=0

global playmapAN =0
global playmapAM =0
global playmapAY =0
global playmapBN =0
global playmapBM =0
global playmapBY =0


global diemapAN =0
global diemapAM=0
global diemapAY=0
global diemapBN=0
global diemapBM=0
global diemapBY=0

global minoff		=0
global abcc =0
global logtxtold1=""
global ioton=0
global erroreb=0
global exbuttx =0
global exbutty =0
global errloop =0
global errlooptxttemp=""
global errlooptxttemp2=""
global logtemp=""
global sellyellow=0

global logtxt=""
global delvt=0
global playout=""

global play29=0
#NoEnv
#SingleInstance Force

global  dir:=A_WorkingDir
/*
IsProcessElevated(ProcessID)
{
if !(hProcess := DllCall("OpenProcess", "uint", 0x1000, "int", 0, "uint", ProcessID, "ptr"))
throw Exception("OpenProcess failed", -1)
if !(DllCall("advapi32\OpenProcessToken", "ptr", hProcess, "uint", 0x0008, "ptr*", hToken))
throw Exception("OpenProcessToken failed", -1), DllCall("CloseHandle", "ptr", hProcess)
if !(DllCall("advapi32\GetTokenInformation", "ptr", hToken, "int", 20, "uint*", IsElevated, "uint", 4, "uint*", size))
throw Exception("GetTokenInformation failed", -1), DllCall("CloseHandle", "ptr", hToken) && DllCall("CloseHandle", "ptr", hProcess)
return IsElevated, DllCall("CloseHandle", "ptr", hToken) && DllCall("CloseHandle", "ptr", hProcess)
}
t1:=":"
overtime:= 1761125600
nottt:="https://www.epochconverter.com/"


WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp.Open("GET", "http://worldtimeapi.org/api/ip", false)
WinHttp.Send()
TestString:=% WinHttp.ResponseText
Needle:="unixtime"
StringGetPos, pos, TestString, %Needle%
pos:=pos+20
StringLeft, LTIME, TestString, %pos%
StringRight, nowTIME, LTIME, 10
Clipboard:= nowTIME
ltime:=overtime-nowtime
if(nowtime<overtime)
{

}
else
{
msgbox,版本分析器過期摟 請找原廠商了解 就是YO
exitapp
}

*/
Loop, read, %dir%\LOG\lastrun.log
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
logtxt=%A_LoopField%
death=Player death detected, resurrecting
openmap=Map reinitialized
outkilltxt=Restart state because no monster were killed for
outalltimetxt=Restart because run timer exceeded
godname=Attacking entity Drowned
start=Bot started
exiteb=Exiting bot
openmap29=to The Blood Aqueduct
handthingtxt=Item stucked on cursor and no space in inventory to store it
sellerror=sentence Sell Items in NPC
	
IfInString, logtxt, %sellerror%
{
sellerrorI:=logtxt
sellerror:=logtxt
}


IfInString, logtxt, %handthingtxt%
{
handthing:=logtxt
handthingI:=logtxt
}


IfInString, logtxt, %openmap29%
{
startname:=logtxt
startnameI:=logtxt
}

IfInString, logtxt, %openmap%
{
startnamemap:=logtxt
startnameImap:=logtxt
}

IfInString, logtxt, %start%
{
startnameOPEN:=logtxt
startnameIOPEN:=logtxt
}


IfInString, logtxt, %exiteb%
{
exitebname:=logtxt
exitebnameI:=logtxt
}

IfInString, logtxt, %death%
{
deathname:=logtxt
}
IfInString, logtxt, %outkilltxt%
{
outkilltxtname:=logtxt
}
IfInString, logtxt, %outalltimetxt%
{
outalltimetxtname:=logtxt
}

}
}
CustomColor := "FFFFFF"
Gui, Color, %CustomColor%
Gui Font, s35 q0 c0xFF0006, Impact
Gui Add, Text, vdad x24 y210 w82 h48 +0x200 Center, 0
Gui Font
Gui Font, s35 q0 cFuchsia, Impact
Gui Add, Text, vskin x8 y141 w115 h39 +0x200 Center, 0
Gui Font
Gui Font, s17 Bold
Gui Add, Text, x14 y108 w104 h32 +0x200, 刷圖次數
Gui Font
Gui Font, s20 w600
Gui Add, Text, x8 y181 w115 h32 +0x200, 死亡次數
Gui Font
Gui Font, s13 Bold c0x378845, Calibri
Gui Add, Text, x128 y120 w157 h35 +0x200, 閒置離開次數
Gui Font
Gui Font, s12 Bold c0xFF8000
Gui Add, Text, x136 y215 w148 h23 +0x200,          ____搬磚次數↑↑
Gui Font
Gui Font, s20 Bold c0x008000
Gui Add, Text, voutkill x136 y167 w58 h42 +0x200 Center, 0
Gui Font
Gui Font, s20 Bold c0xFF8000
Gui Add, Text, voutalltime x216 y167 w58 h42 +0x200 Center, 0
Gui Font
Gui Font, s20 Bold Underline c0xFF80FF
Gui Add, Text, vmaptime x152 y247 w58 h42 +0x200 Center, 0
Gui Font
Gui Font, s17 w600
Gui Add, Text, x8 y256 w152 h33 +0x200, 平均毎張圖花
Gui Font
Gui Font, s20 w600
Gui Add, Text, x208 y258 w120 h23 +0x200, 秒
Gui Font
Gui Add, Button, grest x208 y8 w75 h23, 重置紀錄
Gui Font
Gui Font, s50 Bold, Calibri
Gui Add, Text, vtimeh x16 y40 w71 h68 +0x200, 00
Gui Font
Gui Font, s50 Bold, Calibri
Gui Add, Text, vtimes x208 y40 w71 h68 +0x200 Right, 00
Gui Font
Gui Font, s50 Bold, Calibri
Gui Add, Text, x184 y40 w21 h60 +0x200, :
Gui Font
Gui Font, s50 Bold, Calibri
Gui Add, Text, x88 y40 w21 h60 +0x200, :
Gui Font
Gui Font, s50 Bold, Calibri
Gui Add, Text, vtimemin x112 y40 w71 h68 +0x200 Right, 00
Gui Font
Gui Font, s13 Bold c0xC817BF, Times New Roman
Gui Add, Text, x0 y296 w169 h23 +0x200 Center,                         古變總數   預估每日
Gui Font
Gui Font, s15 Bold
Gui Add, Text, vguall x8 y320 w76 h25 +0x200 Center, 0.00
Gui Font
Gui Font, s15 Bold
Gui Add, Text, vguallday x96 y320 w68 h25 +Center , 0.00
Gui Font
Gui Font, s15 Bold
Gui Add, Text, vexall x8 y376 w75 h25 +0x200 Center, 0.00
Gui Font
Gui Font, s15 Bold
Gui Add, Text, vexallday x96 y376 w71 h25 +0x200 Center, 0.00
Gui Font
Gui Font, s13 Bold c0x15Aa50, Times New Roman
Gui Add, Text, x0 y352 w178 h23 +0x200 Center,                        EX總(碎only)每日預估
Gui Font, s9 Bold
Gui Font, Bold c0x8337FF, Tahoma
Gui Add, Radio, x8 y8 w110 h26 +Checked, EB開關同步中
Gui Font, Bold c0x8337FF
Gui Add, Button, gsave x120 y8 w75 h23, 別點我
Gui Font
Gui Font, s10 Bold
Gui Add, Text, x168 y304 w118 h27 Center, 有撿到高價碎片
Gui Font, s11
Gui Add, Text, x176 y334 w120 h23 +0x200, 的地圖數量
Gui Font
Gui Font, s10 Bold, Tahoma
Gui Add, Text, x3 y400 w236 h23 +0x200, 神諭覆蓋率(總數/刷圖數)=
Gui Font
Gui Font, s20 Bold, Segoe UI
Gui Add, Text,vseegod x192 y364 w66 h32 +Center, 0
Gui Font

Gui Add, Text, vebxy x200 y440 w400 h23 +0x200 Center, 

;gui, add,  Text, x3 y425 h30 , 請在開啟EB後的start處 按下CTRL+F8 記憶座標 勾起下處 可解決EB開V之後常常卡住EB停機的情況

Gui Font
gui, add,  checkbox, x290 y8 h30 vminoff gsaveoff, 10分未撿物強制關POE(讓EB自己重啟)
Gui Font
;gui, add,  checkbox, x3 y440 h30 vabcc gbuttch, EB停機時自動按STOP再按START
Gui Font
gui, add,  checkbox, x300 y300 h30 vioton , 20分未撿物Line通知功能 設置請看雲端教學
Gui Font
Gui, Add, Edit, x300 y330 w230 viotkey,請輸入KEY
Gui Font
Gui, Add, Edit, x300 y360 w230 viotname,請輸入編號
Gui Font
Gui, Add, Edit, x300 y390 w100 vnob,自定義暱稱
Gui Font
Gui, Add, Button, x430 y390 w80 gIOTTEST,儲存並測試
Gui Font
Gui Font, s14 Bold c0x5000F4, MS Sans Serif
Gui Add, Text,vseegodalla x243 y390 w47 h28 +Center, 0`%
Gui Font 
Gui Add, Tab3, x300 y50 w250 h250, 通貨每日預估
Gui Tab, 1
Gui Font
Gui Add, Text, x305 y80 w60 h23 +0x200, 野生崇高
Gui Add, Text, x305 y100 w60 h23 +0x200, 古變石
Gui Add, Text, x305 y120 w60 h23 +0x200, 混沌石
Gui Add, Text, x305 y140 w60 h23 +0x200, 寶匠稜鏡
Gui Add, Text, x305 y160 w60 h23 +0x200, 神聖石
Gui Add, Text, x305 y180 w60 h23 +0x200, 點金石
Gui Add, Text, x305 y200 w60 h23 +0x200, 後悔石
Gui Add, Text, x305 y220 w60 h23 +0x200, 無效石
Gui Add, Text, x420 y80 w60 h23 +0x200, 謙遜卡
Gui Add, Text, x420 y100 w60 h23 +0x200, 改造石
Gui Add, Text, x420 y120 w60 h23 +0x200, 工匠石
Gui Add, Text, x420 y140 w60 h23 +0x200, 幻色石
Gui Add, Text, x420 y160 w60 h23 +0x200, 瓦爾寶珠
Gui Add, Text, x420 y180 w60 h23 +0x200, 連結石
Gui Add, Text, x420 y200 w60 h23 +0x200, 重鑄石
Gui Add, Text, x420 y220 w60 h23 +0x200, 逃罪次數
Gui Add, Text, x420 y240 w60 h23 +0x200, 一次存2E
Gui Add, Text, x420 y260 w60 h23 +0x200, 異常回家
Gui Font, s14 Bold c0x5000F4, MS Sans Serif
Gui Add, Text, VExalted 	x355 y80 w60 h23 +0x200, 0
Gui Add, Text, vAncient 	x355 y100 w60 h23 +0x200, 0
Gui Add, Text, vChaos 		x355 y120 w60 h23 +0x200, 0
Gui Add, Text, vGemcutter	x355 y140 w60 h23 +0x200, 0
Gui Add, Text, vDivine 		x355 y160 w60 h23 +0x200, 0
Gui Add, Text, vAlchemy 	x355 y180 w60 h23 +0x200, 0
Gui Add, Text, vRegret 		x355 y200 w60 h23 +0x200, 0
Gui Add, Text, vAnnulment 		x355 y220 w60 h23 +0x200, 0
Gui Add, Text, vRegal 		x470 y80 w60 h23 +0x200, 0
Gui Add, Text, vAlteration 	x470 y100 w60 h23 +0x200, 0
Gui Add, Text, vJeweller 	x470 y120 w60 h23 +0x200, 0
Gui Add, Text, vChromatic 	x470 y140 w60 h23 +0x200, 0
Gui Add, Text, vVaal 		x470 y160 w60 h23 +0x200, 0
Gui Add, Text, vFusing 		x470 y180 w60 h23 +0x200, 0
Gui Add, Text, vScouring 	x470 y200 w60 h23 +0x200, 0
Gui Add, Text, vtestalltwoc 	x470 y220 w60 h23 +0x200, 0
Gui Add, Text, vtwoex	x470 y240 w60 h23 +0x200, 0
Gui Add, Text, verrloop	x470 y260 w60 h23 +0x200, 0

Gui Font

Gui Tab
Gui Show, w555 h474, (YO)EB打圖分析儀V9測試版


IniRead,ioton,%dir%\yoset.ini,set,ioton
IniRead,minoff,%dir%\yoset.ini,set,minoff
IniRead,abcc,%dir%\yoset.ini,set,abcc
IniRead,exbuttx,%dir%\yoset.ini,set,exbuttx
IniRead,exbutty,%dir%\yoset.ini,set,exbutty
IniRead,nob,%dir%\yoset.ini,set,nob
IniRead,iotkey,%dir%\yoset.ini,set,iotkey
IniRead,iotname,%dir%\yoset.ini,set,iotname

if(nob!="")
{
GuiControl,,nob,%nob%
}
if(iotname!="")
{
GuiControl,,iotname,%iotname%
}
if(iotkey!="")
{
GuiControl,,iotkey,%iotkey%
}

GuiControl,,ioton,%ioton%
GuiControl,,minoff,%minoff%
GuiControl,,abcc,%abcc%

;GuiControl,,ebxy,EB開關按鈕座標%exbuttx%,%exbutty%
Gui, Submit, NoHide
SetTimer, timeload, 1000
SetTimer, updatanow, 900000
SetTimer, data, 2000
SetTimer, checkshift, 30000

F8::resbutt()

^LButton::give()
*F12::F12()

F12()
{
send {F12}
if(opendata==0)
{
opendata=1
}
else
{
opendata=0
}
}


checkshift:
{
if GetKeyState("Shift")
		{
		send {shift down}
		send {shift up}
		send {shift up}
		}
		
}
return

updatanow:
{
delvt:=skin/dad
SetFormat, float, .0
daymaptime:=Round(3085/maptime,1)
dadallday:=Round(((dad/skin)*100),0)

allway:=Round((86400/alls)*way,1)
;allnow:="%E5%81%9C{"(daymaptime)")%E5%81%9C("(10min)"%E6%B0%B4"(play29all)
;allnow:="%E5%88%B7("(maptime)")%E6%AD%BB("(dadallday)"%)%E9%A0%90("(daymaptime)")%E5%AF%A6("(udayboss)")%E8%BB%8D("(allway)")%E8%81%96("(Divine)")%E5%8A%91("(Apothecary)")%E6%96%B7("(10min)")%E6%B0%B4%20("(play29all)")"
;"%E6%97%A5%E5%88%B7("(日刷)")%E6%AD%BB("(死)")%E9%A0%90("(預)")%E5%AF%A6("(實)")%E8%BB%8D("(軍)")%E8%81%96("(聖)")%E5%8A%91("(劑)")%E6%96%B7("(斷)")%E6%B0%B4%20("(道)")"

if(dadallday<10)
{
dadalldayss=_%dadallday%
}
else
{
dadalldayss=%dadallday%
}

if(maptime<100)
{
maptimess=_%maptime%
}
else
{
maptimess=%maptime%
}

;//
/*

白-藍-黃 %E7%99%BD-%E8%97%8D-%E9%BB%83

白
黃
藍
%E7%99%BD
%E8%97%8D
%E9%BB%83

緋-園

%E7%B7%8B-%E5%9C%92

global playmapAN =0
global playmapAM =0
global playmapAY =0
global playmapBN =0
global playmapBM =0
global playmapBY =0


global diemapAN =0
global diemapAM=0
global diemapAY=0
global diemapBN=0
global diemapBM=0
global diemapBY=0



*/

playmapAall:=playmapAN+playmapAM+playmapAY
playmapBall:=playmapBN+playmapBM+playmapBY




playmapNall:=playmapAN+playmapBN
playmapMall:=playmapAM+playmapBM
playmapYall:=playmapAY+playmapBY

diemapAall:=diemapAN+diemapAM+diemapAY
diemapBall:=diemapBN+diemapBM+diemapBY

diemapNall:=diemapAN+diemapBN
diemapMall:=diemapAM+diemapBM
diemapYall:=diemapAY+diemapBY

maptimeAall:=maptimeAall+maptimenow
maptimeAall:=maptimeAall+maptimenow

mapAtime:=maptimeAall/playmapAall
mapBtime:=maptimeBall/playmapBall

;allnow:="%E5%88%B7("(skin)")%E6%AD%BB("(dad)")%E5%9C%96%E6%99%82("(maptime)")("(daymaptime)")%E5%81%9C("(10min)"%E6%B0%B4"(play29all)
allnow:="%e5%9c%96%e6%99%82("(maptimess)")%e6%ad%bb%e7%8e%87("(dadalldayss)")%E9%A0%90("(daymaptime)")%E5%AF%A6("(udayboss)")%E8%BB%8D("(allway)")%E8%81%96("(Divine)")%E5%8A%91("(Apothecary)")%E6%96%B7("(10min)")%E6%B0%B4%20("(play29all)")[%E7%B7%8B["(playmapAall)"/%E6%AD%BB"(diemapAall)"/%E6%99%82"(mapAtime)"-%E5%9C%92"(playmapBall)"/%E6%AD%BB"(diemapBall)"/%E6%99%82"(mapBtime)"]%E5%88%B7[%E7%99%BD"(playmapNall)"%E8%97%8D"(playmapMall)"%E9%BB%83"(playmapYall)"]%E6%AD%BB[%E7%99%BD"(diemapNall)"%E8%97%8D"(diemapMall)"%E9%BB%83"(diemapYall)

Iniread,rebackkey,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,rebackkey
Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
dayatxt=https://maker.ifttt.com/trigger/yolist/with/key/%rebackkey%?value1=D%setnb%&value2=%allnow%
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()

timeh1:=Floor(alls/3600)
timemin1:=Mod(Floor(alls/60),60)

a:="%E7%B4%AF%E7%A9%8D"
b:="%E6%99%82"
c:="%E5%88%86"
nwotime=%timeh1%h%timemin1%m_
FormatTime, TheDate,, MM/dd HH:mm

dayatxt=https://maker.ifttt.com/trigger/yolist/with/key/%rebackkey%?value1=E%setnb%&value2=%nwotime%&value3=%TheDate%
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()
}
return


save:
{
/*
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow
WinSet, TransColor, %CustomColor% 150
WinSet, Disable, ,(YO)EB打圖分析儀V10
*/

}
updata()
{
Gui, submit, nohide
upppp:=Alteration*(86400/alls)
/*dayatxt=https://maker.ifttt.com/trigger/yo_bot_money/with/key/dWy1S7KdQOAYGK6WdJpsl-?value1=%nob%&value2=%timeh%&value3=%upppp%
WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()
*/
return
}

errorupdata()
{

Gui, submit, nohide
IniRead,iotkey,%dir%\yoset.ini,set,iotkey
IniRead,iotname,%dir%\yoset.ini,set,iotname
IniRead,nob,%dir%\yoset.ini,set,nob

if(ioton==1)
{
;dayatxt=https://maker.ifttt.com/trigger/yo_bot_data/with/key/dWy1S7KdQOAYGK6WdJpsl-?value1=%nob%&value2=%errorallstime%&value3=%timeh%
dayatxt=https://maker.ifttt.com/trigger/%iotname%/with/key/%iotkey%?value1=%nob%&value2=%errorallstime%&value3=%timeh%
;WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()
}
return
}



timeload:
if(opendata==1)
{
maptimenow++
alls++
erroralls++
if(testalltwoc>0)
{
bosstime++

}
FormatTime, timehday, T12, hh
FormatTime, timemday, T12, mm
FormatTime, timesday, T12, ss
if(alls==25200)
{
updata()
}

if(erroralls==600&&minoff==1)
{

Process, Close ,PathOfExile_x64.exe
Process, Close ,PathOfExile.exe
errorlog("未撿物10分強制關閉POE")
10min++
}

if(erroralls>=1200)
{
errorallstime:=errorallstime+erroralls
erroralls:=0
errorupdata()
errorlog("未撿物20分IOT通知 EBON")
}
timeh:=Floor(alls/3600)
timemin:=Mod(Floor(alls/60),60)
times:=Mod(alls,60)
if(bossnb!=0)
{
bossnb--
}
guallday:= (guall*86400)/alls
exallday:= (exall*86400)/alls
guallday:=Round(guallday,2)
exallday:=Round(exallday,2)
GuiControl,,guallday,%guallday%
GuiControl,,exallday,%exallday%
maptime:= Floor(alls/skin)
GuiControl,,maptime,%maptime%
if(timeh>9)
{
GuiControl,,timeh,%timeh%
}
else
{
GuiControl,,timeh,0%timeh%
}
if(times>9)
{
GuiControl,,times,%times%
}
else
{
GuiControl,,times,0%times%
}
if(timemin>9)
{
GuiControl,,timemin,%timemin%
}
else
{
GuiControl,,timemin,0%timemin%
}
}
else
{
erroralls++
if(erroralls>=1200)
{
errorallstime:=errorallstime+erroralls
erroralls:=0
errorupdata()
errorlog("未撿物20分IOT通知 EBoff")
}
}
return
pause:
opendata==0
return

rest:

reload
return



go:
opendata=1
return


data:
if(opendata==1)
	{
	
	Loop, read, %dir%\LOG\lastrun.log
	{
		Loop, parse, A_LoopReadLine, %A_Tab%
		{
		logtxt=%A_LoopField%
		death=Player death detected, resurrecting
		openmap=Map reinitialized
		openmap29=to The Blood Aqueduct
		alltoc=Running state priority: 6
		outkilltxt=Restart state because no monster were killed for
		outalltimetxt=Restart because run timer exceeded
		godname=Attacking entity Drowned
		start=Bot started
		exiteb=Exiting bot
		errlooptxt=Area has already been explored in
		playout=to login too many times
		
		IfInString, logtxt, %playout%
		{
			if(logtemp!=logtxt)
			{
			logtemp:=logtxt
			errorlog("偵測到斷線跳回登入按鈕_案ENTER")
			errent++
			sleep 500
			send {enter}
			sleep 1500
			send {enter}
			sleep 40000
			}
		}
		
		
		handthingtxt=Item stucked on cursor and no space in inventory to store it
		
		IfInString, logtxt, %handthingtxt%
		{
		handthing:=logtxt
		}
		
		
		sellerrorX=sentence Sell Items in NPC
	
		IfInString, logtxt, %sellerrorX%
		{
		sellerror:=logtxt
		}


		
		
		
		IfInString, logtxt, %death%
		{
			if(dadnb==0)
			{
				if(deathname!=logtxt)
				{
				dadnb:=40
				dad++
				GuiControl,,dad,%dad%
				deathname:=logtxt
				StringSplit, a, txt,"`n`r"
	
				nowmap:=a5  ;//地圖
				nowlv:=a3   ;//品質
				NeedA:="Crimson"
				NeedB:="Park"
				mapN:="Rarity: Normal"
				mapM:="Rarity: Magic"
				mapY:="Rarity: Rare"
				
				If InStr(nowmap, NeedA)
				{
				
					if(nowlv==mapN)
					{
					diemapAN++
					}
					if(nowlv==mapM)
					{
					diemapAM++
					}
					if(nowlv==mapY)
					{
					diemapAY++
					}
				}
				
				If InStr(nowmap, NeedB)
				{
					if(nowlv==mapN)
					{
					diemapBN++
					}
					if(nowlv==mapM)
					{
					diemapBM++
					}
					if(nowlv==mapY)
					{
					diemapBY++
					}
				}
				
				}
			}
		}
		
		IfInString, logtxt, %errlooptxt%
		{
				if(errlooptxttemp!=logtxt)
				{

				errlooptxttemp:=logtxt
				}
		}
		
		
		
		
		IfInString, logtxt, %openmap29%
		{
		startname29:=logtxt
		erroralls:=0
		}
		
		
		IfInString, logtxt, %openmap%
		{
	    openmaptemp:=logtxt
		erroralls:=0

		}
		IfInString, logtxt, %outkilltxt%
		{
		if(outkillnb==0)
		{
		outkillnb:=40
		outkill++
		GuiControl,,outkill,%outkill%
		}
		}
		IfInString, logtxt, %alltoc%
		{
		if(outalltimenb==0)
		{
		outalltimenb:=40
		outalltime++
		GuiControl,,outalltime,%outalltime%
		}
		}
		IfInString, logtxt, %godname%
		{
		if(godnb==0)
		{
		godnb:=15
		god++
		GuiControl,,god,%god%
		}
		}
		IfInString, logtxt, %exiteb%
		{
		exitebnameI:=logtxt
		}
		


	}
	}
	
if(errlooptxttemp!=errlooptxttemp2)
{
errlooptxttemp2:=errlooptxttemp
errloop++

				GuiControl,,errloop,%errloop%
				resbutt()
}


	if(handthing!=handthingI)
	{

		handthingI:=handthing3


	}
	
	
	if(openmaptemp!=openmaptempi)
	{
	openmaptempi:=openmaptemp
	skin++
	
	play29=0
	tubutt:=0
	erroralls:=0
	errorallstime:=0
	GuiControl,,skin,%skin%
	
	StringSplit, a, txt,"`n`r"
	nowmap:=a5  ;//地圖
	nowlv:=a3   ;//品質
	NeedA:="Crimson"
	NeedB:="Park"
	mapN:="Rarity: Normal"
	mapM:="Rarity: Magic"
	mapY:="Rarity: Rare"
	
	If InStr(nowmap, NeedA)
	{
	
		maptimeAall:=maptimeAall+maptimenow
		if(nowlv==mapN)
		{
		playmapAN++
		}
		if(nowlv==mapM)
		{
		playmapAM++
		}
		if(nowlv==mapY)
		{
		playmapAY++
		}
	}
	
	If InStr(nowmap, NeedB)
	{
		maptimeBall:=maptimeBall+maptimenow
		
		if(nowlv==mapN)
	
		{
		playmapBN++
		}
		if(nowlv==mapM)
		{
		playmapBM++
		}
		if(nowlv==mapY)
		{
		playmapBY++
		}
	}
	maptimenow=0
	

	
		
	}
	
	
		if(sellerror!=sellerrori)
		{
		sellerrori:=sellerror
		SLEEP 100
		Click 111,225
		SLEEP 100
		Click 111,225
		SLEEP 100
		}
		
	
	
	if(startname29!=startnameI29)
	{
	play29++
	play29all++
	if(play29>2)
	{
    errorupdata()
	}
	
	
startnameI29:=startname29
		skin++
		GuiControl,,skin,%skin%
	}
	
/*
	if(logtxtold1!=logtxt)
	{
	logtxtold1:=logtxt
	erroreb=0
	}
	else
	{
	erroreb++
	if(erroreb>10)
	{
	if(tubutt==0)
	{
	resbutt()
	erroreb=0
	sleep 3000
	opendata=0
	tubutt++
	}
	}
	}
	*/


	if(exitebname==exitebnameI)
	{
	}
	else
	{
	exitebname:=exitebnameI
	}
	if(dadnb>0)
	{
	dadnb--

	}
	
	if(outkillnb>0)
	{
	outkillnb--
	}
	if(outalltimenb>0)
	{
	outalltimenb--
	}
	if(skinnb>0)
	{
	skinnb--
	}
	if(godnb>0)
	{
	godnb--
	}
	
}

else
{
Loop, read, %dir%\LOG\lastrun.log
{
Loop, parse, A_LoopReadLine, %A_Tab%
{

logtxt=%A_LoopField%
start=to The Blood Aqueduct

IfInString, logtxt, %start%
{
startnameI:=logtxt
}

startop=Bot started
IfInString, logtxt, %startop%
{
startnameIOPEN:=logtxt
}


startmap=Map reinitialized
IfInString, logtxt, %startmap%
{
startnameImap:=logtxt
}
}


}

if(startnameOPEN!=startnameIOPEN)
{


opendata=1
startnameOPEN:=startnameIOPEN

}



if(startname!=startnameI)
{

opendata=1
startname:=startnameI
}


if(startnamemap!=startnameImap)
{

opendata=1
startnamemap:=startnameImap
}


}
return
test()
{


txt=%Clipboard%

if(skin==0)
	{
	;txt:=""
	}
strFileName := "LOG\CH.txt"
StringSplit, a, txt,"`n`r"
gu=Ancient Orb
gus=Ancient Shard
ex=Exalted Orb
exs=Exalted Shard
sc=Chaos Orb
ssc=Chaos Shard
sGemcutter=Gemcutter's Prism
sDivine=Divine Orb
sAlchemy=Orb of Alchemy
sAlchemyS=Alchemy Shard
sAnnulmentS=Annulment Shard
sAnnulment=Orb of Annulment
sRegret=Orb of Regret
sRegal=Regal Orb
sAlteration=Orb of Alteration
ssAlteration=Alteration Shard
sJeweller=Jeweller's Orb
sChromatic=Chromatic Orb
sVaal=Vaal Orb
sFusing=Orb of Fusing
sScouring=Orb of Scouring
sHumility=Humility
cname=Rarity: Currency
dname=Rarity: Divination Card

wayname=Timeless Maraketh Emblem
waynames=Timeless Maraketh Splinter

redboss=Incandescent Invitation
blueboss=Screaming Invitation

sTMD=Mirror of Kalandra


sApothecary=The Apothecary
StringSplit, b, a9,"/"
StringSplit, c, b1,":"
nb:=c2

if(a5==redboss||a5==blueboss)
{
testalltwoc:=testalltwoc+1

if(bosstime>10)
{
allbosstime:=allbosstime+bosstime
bosstime=0

udayboss:=Round(86400/(allbosstime/(testalltwoc-1)),1)

}


}

if(a5==wayname)
{

way:=Round(way+1,2)

}

if(a5==waynames)
{
way:=Round(way+(nb*0.01),2)

}




if(a3==dname)
{
if(a5==sHumility)
{
seegodmap:=1
erroralls:=0
errorallstime:=0
Regal:=Regal+c2
sssee:=Regal*(86400/alls)
GuiControl,,Regal,%sssee%
}

if(a5==sApothecary)
{
Apothecary:=Apothecary+c2

errorlog(txt)
}




}
if(a3==cname)
{

if(a5==sTMD)
{
Apothecary:=Apothecary+99999
}



if(a5==sAlchemyS)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Alchemy:=Alchemy+(c2*0.05)
sssee:=Alchemy*(86400/alls)
GuiControl,,Alchemy,%sssee%
}
if(a5==sAnnulment)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Annulment:=Annulment+c2
sssee:=Annulment*(86400/alls)
GuiControl,,Annulment,%sssee%
}
if(a5==sAnnulmentS)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Annulment:=Annulment+(c2*0.05)
sssee:=Annulment*(86400/alls)
GuiControl,,Annulment,%sssee%
}
if(a5==sScouring)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Scouring:=Scouring+c2
sssee:=Scouring*(86400/alls)
GuiControl,,Scouring,%sssee%
}
if(a5==sScouring)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Scouring:=Scouring+c2
sssee:=Scouring*(86400/alls)
GuiControl,,Scouring,%sssee%
}
if(a5==sFusing)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Fusing:=Fusing+c2
sssee:=Fusing*(86400/alls)
GuiControl,,Fusing,%sssee%
}
if(a5==sVaal)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Vaal:=Vaal+c2
sssee:=Vaal*(86400/alls)
GuiControl,,Vaal,%sssee%
}
if(a5==sChromatic)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Chromatic:=Chromatic+c2
sssee:=Chromatic*(86400/alls)
GuiControl,,Chromatic,%sssee%
}
if(a5==sJeweller)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Jeweller:=Jeweller+c2
sssee:=Jeweller*(86400/alls)
GuiControl,,Jeweller,%sssee%
}
if(a5==sAlteration)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Alteration:=Alteration+c2
sssee:=Alteration*(86400/alls)
GuiControl,,Alteration,%sssee%
}
if(a5==ssAlteration)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Alteration:=Round(Alteration+(c2*0.05),2)
sssee:=Alteration*(86400/alls)
GuiControl,,Alteration,%sssee%
}
if(a5==sRegal)
{
}
if(a5==sRegret)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Regret:=Regret+c2
sssee:=Regret*(86400/alls)
GuiControl,,Regret,%sssee%
}
if(a5==sAlchemy)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Alchemy:=Alchemy+c2
sssee:=Alchemy*(86400/alls)
GuiControl,,Alchemy,%sssee%
}
if(a5==sDivine)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Divine:=Divine+c2
sssee:=Divine*(86400/alls)
GuiControl,,Divine,%sssee%
}
if(a5==sGemcutter)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Gemcutter:=Gemcutter+c2
sssee:=Gemcutter*(86400/alls)
GuiControl,,Gemcutter,%sssee%
}
if(a5==gu)
{
tubutt:=0
seegodmap:=1
erroralls:=0
errorallstime:=0
guall:=Round(guall+c2,2)
GuiControl,,guall,%guall%
}
if(a5==gus)
{
tubutt:=0
seegodmap:=1
erroralls:=0
errorallstime:=0
guall:=Round(guall+(c2*0.05),2)
GuiControl,,guall,%guall%
}
if(a5==ex)
{
tubutt:=0

Exalted:=Round(Exalted+c2,2)
GuiControl,,Exalted,%Exalted%

if(c2>1)
{
twoex:=Round(twoex+1,2)
GuiControl,,twoex,%twoex%
}

}
if(a5==exs)
{
tubutt:=0
seegodmap:=1
exall:=Round(exall+(c2*0.05),2)
GuiControl,,exall,%exall%
}
if(a5==sc)
{
if(c2==2)
{

}
Chaos:=Chaos+c2
sssee:=Chaos*(86400/alls)
GuiControl,,Chaos,%sssee%
}
if(a5==ssc)
{
tubutt:=0
erroralls:=0
errorallstime:=0
Chaos:=Round(Chaos+(c2*0.05),2)
sssee:=Chaos*(86400/alls)
GuiControl,,Chaos,%sssee%
}
}
clipboard =
return
}

give()
{
if(opendata==1)
{
Send, ^c
send ^{LButton}
test()
}
else{
send ^{LButton}
}
;send  {Ctrl up}
return
}


GuiClose:
if(alls>=144000&&saveok==0)
{

return
}

ExitApp
OnMsgBox() {

}


F6::
ebbutt()
Return



ebbutt()
{
CoordMode,mouse,Screen ;設置坐標模式為全屏
MouseGetPos,exbuttx,exbutty,win,class ;取鼠標下信息
GuiControl,,ebxy,EB開關按鈕座標%exbuttx%,%exbutty%
Gui, Submit, NoHide
IniWrite,%abcc%,%dir%\yoset.ini,set,abcc
IniWrite,%exbuttx%,%dir%\yoset.ini,set,exbuttx
IniWrite,%exbutty%,%dir%\yoset.ini,set,exbutty
CoordMode, Mouse, Relative

Return
}

buttch:
Gui, Submit, NoHide
IniWrite,%abcc%,%dir%\yoset.ini,set,abcc
IniWrite,%exbuttx%,%dir%\yoset.ini,set,exbuttx
IniWrite,%exbutty%,%dir%\yoset.ini,set,exbutty
Return

resbutt()
{
abcc=0
if(abcc==1)
{


	send {F12 down}
	sleep 300
	send {F12 up}
	sleep 1000
	
	CoordMode, Mouse, Screen
	Sleep, 500
	Click %exbuttx%,%exbutty% ,down
	Sleep, 500
	Click %exbuttx%,%exbutty% ,up
	Sleep, 3000
	



	poeerror:="Exit"
	IfWinExist,%poeerror%
	{

	send {alt down}
	sleep 200
	send {n}
	sleep 500
	send {alt up}
	sleep 500
	Click %exbuttx%,%exbutty% ,down
	Sleep, 500
	Click %exbuttx%,%exbutty% ,up
	Sleep, 3000
	sleep 500
	}
	
	startnameOPEN:=""
	startnameIOPEN:=""

	

	Click %exbuttx%,%exbutty% ,down
	Sleep, 500
	Click %exbuttx%,%exbutty% ,up

	Sleep, 500
	tgo=0
		
		
		/*while(tgo==0)
		{

		Loop, read, %dir%\LOG\lastrun.log
		{
			Loop, parse, A_LoopReadLine, %A_Tab%
			{
			logtxt=%A_LoopField%
			start=Bot started
			
				IfInString, logtxt, %start%
				{
				startnameOPEN:=logtxt
				}
			}
		}
		
			if(startnameOPEN!=startnameIOPEN)
			{
				tgo=1	

			}
			else
			{
			startnameOPEN:=startnameIOPEN
			Click %exbuttx%,%exbutty% ,down
			Sleep, 500
			Click %exbuttx%,%exbutty% ,up
			Sleep, 2000
			}
		}
		*/
	
	CoordMode, Mouse, Relative
	}
	
	
	
Return
}


IOTTEST:

Gui, Submit, NoHide
IniWrite,%ioton%,%dir%\yoset.ini,set,ioton
IniWrite,%nob%,%dir%\yoset.ini,set,nob
IniWrite,%iotkey%,%dir%\yoset.ini,set,iotkey
IniWrite,%iotname%,%dir%\yoset.ini,set,iotname
if(ioton==1)
{

errorupdata()
msgbox,要是20秒內收到訊息代表成功
}
else
{
msgbox,請先打勾通知功能
}
Return




saveoff:
Gui, Submit, NoHide
IniWrite,%minoff%,%dir%\yoset.ini,set,minoff
Return


errorlog(txt){
Log =%A_ScriptDir%\YOerrorLOG.txt
file := FileOpen(Log,2)
time := A_YYYY . "/" . A_MM . "/" . A_DD . "-" . A_Hour . ":" . A_Min . ":" . A_Sec
ton := file.read()
tset = %ton%`r`n%time%-%txt%
file.write(tset)
Sleep, 1000
}
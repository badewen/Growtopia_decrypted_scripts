delay = 1800000
itemID1 = 4604
itemID2 = 1474
itemID3 = 528
function place1(x, y)
  pkt = {}
  pkt.x = GetLocal().posX
  pkt.y = GetLocal().posY
  pkt.px = x
  pkt.py = y
  pkt.type = 3
  pkt.value = itemID1
  SendPacketRaw(false, pkt)
  Sleep(100)
end
function place2(x, y)
  pkt = {}
  pkt.x = GetLocal().posX
  pkt.y = GetLocal().posY
  pkt.px = x
  pkt.py = y
  pkt.type = 3
  pkt.value = itemID2
  SendPacketRaw(false, pkt)
  Sleep(100)
end
function place3(x, y)
  pkt = {}
  pkt.x = GetLocal().posX
  pkt.y = GetLocal().posY
  pkt.px = x
  pkt.py = y
  pkt.type = 3
  pkt.value = itemID3
  SendPacketRaw(false, pkt)
  Sleep(100)
end
while true do
  place2(math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32))
  LogToConsole("Eat `1Benedict")
  Sleep(250)
  place3(math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32))
  LogToConsole("Eat `2Lucky Clover")
  Sleep(250)
  place1(math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32))
  LogToConsole("Eat `oArroz")
  Sleep(delay)
end
return
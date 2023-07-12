key = "YASUGAMI"
if key == "YASUGAMI" then
  itemID = "7520"
  delayp = 100
  kanan = 198
  plat = 7520
  portal = 544
  bounce = 7160
  slideblock = 440
  function dialog(d)
    if d.v1 == "OnDialogRequest" then
      return true
    elseif d.v1 == "OnSDBroadcast" then
      return true
    end
    return false
  end
  AddHook(dialog, "OnVariant")
  EditToggle("Debug Content", false)
  EditToggle("Debug All Variantlist", false)
  EditToggle("Send Packet", false)
  EditToggle("ModFly", true)
  Sleep(80)
  SendPacket(2, [[
action|input
|text|/ghost]])
  Sleep(1000)
  SendPacket(2, [[
action|input
|text|Script Made by `9Yasugami , `bLucia `wAnd `cBlackGCH, This Script Free Dont Sell Noob `b@BlackGCommunity]])
  function places(id, x, y)
    pkt = {}
    pkt.x = GetLocal().posX
    pkt.y = GetLocal().posY
    pkt.px = x
    pkt.py = y
    pkt.type = 3
    pkt.value = id
    SendPacketRaw(false, pkt)
    Sleep(delayp)
  end
  function main()
    Sleep(100)
    places(plat, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) - 1)
    Sleep(100)
    places(plat, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) + 1)
    Sleep(100)
    FindPath(GetLocal().posX // 32 + 1, GetLocal().posY // 32)
    if GetLocal().posX // 32 == kanan then
      Sleep(100)
      places(portal, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) - 1)
      Sleep(100)
      places(portal, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) + 1)
      Sleep(100)
      SendPacket(2, [[
action|dialog_return
dialog_name|item_search
]] .. plat .. "|1\n" .. slideblock .. "|1\n" .. bounce .. "|1\n")
      Sleep(100)
      FindPath(1, GetLocal().posY // 32 - 2)
      Sleep(3000)
      if 1 == GetLocal().posX // 32 then
        Sleep(100)
        places(1684, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32))
        Sleep(100)
        places(bounce, math.floor(GetLocal().posX / 32) - 1, math.floor(GetLocal().posY / 32))
        Sleep(100)
        places(bounce, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) - 1)
        Sleep(100)
        places(bounce, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) + 1)
        Sleep(100)
        FindPath(GetLocal().posX // 32 + 1, GetLocal().posY // 32)
        Sleep(100)
        if 2 == GetLocal().posX // 32 then
          Sleep(100)
          places(slideblock, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) - 1)
          Sleep(100)
          places(slideblock, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) + 1)
          Sleep(100)
          FindPath(GetLocal().posX // 32 + 1, GetLocal().posY // 32)
          Sleep(100)
          if 3 == GetLocal().posX // 32 then
            Sleep(100)
            places(slideblock, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) - 1)
            Sleep(100)
            places(slideblock, math.floor(GetLocal().posX / 32), math.floor(GetLocal().posY / 32) + 1)
            Sleep(100)
            FindPath(GetLocal().posX // 32 + 1, GetLocal().posY // 32)
            Sleep(100)
          end
        end
      end
    end
  end
  function AvoidError()
    if pcall(function()
      main()
    end) == false then
      Sleep(100)
      AvoidError()
    end
    Sleep(50)
    AvoidError()
  end
  AvoidError()
else
  print("Don't Change Key Idiot")
end

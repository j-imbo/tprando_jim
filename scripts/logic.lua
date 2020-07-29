function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function hasnt(item)
  local count = Tracker:ProviderCountForCode(item)
  
  return count == 0
end

function break_boulders()
  local boom = has_explosives()
  local bnc = has("ballandchain")
  return (boom or bnc)
end

function bomb_arrows()
  local boom = has_explosives()
  local arro = has("bow")
  local rang = has("boomerang")
  if (boom and arro) then
    return true
  elseif (rang and boom) then
    return true, AccessibilityLevel.SequenceBreak
  else return false
  end
end

function has_explosives()
  local bombs = has("bombs")
  local watbom = has("bombswater")
  return (bombs or watbom)
end

function has_bottle()
  local bottles = has("bottle")
  return bottles
end

function has_ranged()
  local boomer = has("boomerang")
  local breakr = has_breakrange()

  return (boomer or breakr)
end

function has_breakrange()
  local sling = has("slingshot")
  local crystal = has_crystalrange()

  return (sling or crystal)
end

function has_crystalrange()
  local bow = has("bow")
  local claw = has("clawshot")

  return (bow or claw)
end

function bottleshop()
  local botshop = has("op_botshop")
  local bottles = has_bottle()

  return botshop or bottles
end

function faron()
  local twil = has("op_twilight")
  local far = has("faron")
  
  return twil or far
end

function eldin()
  local twil = has("op_twilight")
  local eld = has("eldin")
  
  return twil or eld
end

function lanayru()
  local twil = has("op_twilight")
  local lan = has("lanayru")
  
  return twil or lan
end

function midlak()
  local mdh = has("op_mdh")
  local lak = has("lakebed")

  return mdh or lak
end

function skycannon()
  local ecits = has("op_ecits")
  local skyc = has("skycannon")

  return ecits or skyc
end

function skyvis()
  local ecits = hasnt("op_ecits")

  return ecits
end

function desert()
  local memo = has("memo")
  local twil = lanayru()
  local edes = has("op_edes")

  return (edes or memo) and twil
end

function barrier()
  local palace = has("palace")
  local ehc = has("op_ehc")

  return palace or ehc
end

function grove2()
  local man = has("mansion")
  local eg2 = has("op_eg2")

  return man or eg2
end

function mines()
  local gm = has("mines")
  local egm = has ("op_egm")

  return gm or egm
end

function palace()
  local epot = has("op_epot")
  local sky = has("sky")

  return epot or sky
end

function howl1()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 1
end

function howl2()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 2
end

function howl3()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 3
end

function howl4()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 4
end

function howl5()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 5
end

function howl6()
  local dmt = has("howlDMT")
  local uzr = has("howlUZR")
  local sg = has("howlSG")
  local lh = has("howlLH")
  local sp = has("howlSP")
  local hv = has("howlHV")
  local count = 0
  
  if dmt then
    count = count + 1
  end
  if uzr then
    count = count + 1
  end
  if sg then
    count = count + 1
  end
  if lh then
    count = count + 1
  end
  if sp then
    count = count + 1
  end
  if hv then
    count = count + 1
  end

  return count >= 6
end

function sword()
  local wood = has("ws")
  local mas = has("ms")

  return wood or mas
end

function shield()
  local wood = has("shield1")
  local hyl = has("shield2")

  return wood or hyl
end

function dmg()
  local bnc = has("ballandchain")
  local bow = has("bow")
  local bomb = has("bombs")
  local spin = has("spinner")
  local wood = has("ws")
  local mas = has("ms")
  local wolf = has("wolf")
  local boot = has("ironboots")

  return bnc or bow or bomb or spin or wood or mas or wolf or boot
end

function watdmg()
  local watbom = has("waterbombs")
  local wood = has("ws")
  local mas = has("ms")

  return watbom or wood or mas
end

function ook()
  local dmg = dmg()

  return dmg
end

function diababa()
  local boom = has("boomerang")
  local bow = has("bow")
  local bomb = has("bombs")

  local dmg = dmg()

  return (boom or (bow and bomb)) and dmg
end

function dangoro()
  local boot = has("ironboots")

  return boot
end

function fyrus()
  local bow = has("bow")
  local wood = has("ws")
  local mas = has("ms")
  local boot = has("ironboots")

  return bow and (wood or mas) and boot
end

function dekutoad()
  local dmg = dmg()

  return dmg
end

function morpheel()
  local claw = has("clawshot")
  local boot = has("ironboots")
  local watbom = has("bombswater")
  local wood = has("ws")
  local mas = has("ms")

  return claw and boot and (watbom or wood or mas)
end

function deathsword()
  local bow = has("bow")
  local claw = has("claw")
  local boom = has("boomerang")
  local wolf = has("wolf")
  local dmg = dmg()

  return dmg and (bow or claw or boom) and wolf
end

function stallord()
  local spin = has("spinner")
  local mas = has("ms")
  local wood = has("ws")

  return spin and (mas or wood)
end

function darkhammer()
  local dmg = dmg()

  return dmg
end

function blizzeta()
  local bnc = has("ballandchain")

  return bnc
end

function darknut()
  local bnc = has("ballandchain")
  local wood = has("ws")
  local mas = has("ms")
  local ba = bomb_arrows()

  return bnc or wood or mas or ba
end

function armogohma()
  local dom = has("dominion")
  local bow = has("bow")

  return dom and bow
end

function aeralfos()
  local claw = has("clawshot")
  local bnc = has("ballandchain")
  local bow = has("bow")
  local bomb = has("bombs")
  local wood = has("ws")
  local mas = has("ms")
  local wolf = has("wolf")
  local boot = has("ironboots")

  return claw and (bnc or bow or bomb or wood or mas or wolf or boot)
end

function argorok()
  local claw = has("clawshot_double")
  local ord = has("os")
  local mas = has("ms")
  local boot = has("ironboots")

  return claw and (ord or mas) and boot
end
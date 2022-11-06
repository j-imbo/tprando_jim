function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count >= amount
  end
end

function hasnt(item)
  local count = Tracker:ProviderCountForCode(item)
  
  return count == 0
end

function sword()
  return has("ws")
end

function bow()
  return has("bow")
end

function sling()
  return has("sling")
end

function bombs()
  return has("bombs")
end

function claw()
  return has("cs")
end

function spin()
  return has("spinner")
end

function bnc()
  return has("ballandchain")
end

function sc()
  return has("wolf")
end

function ib()
  return has("boots")
end

function gb()
  return has("rang")
end

function lantern()
  return has("lantern")
end

function shield()
  return has("shield1") or has("shield2")
end

function skill(amt)
  return has("skills",amt)
end

function aeralfos()
  -- return claw() and (sword() or bnc() or ib() or sc())
  return claw() and (sword() or bnc() or sc())
end

function armos()
  return sword() or bnc() or bow() or ib() or spin() or sc() or bombs()
end

function baba()
  return sword() or bnc() or bow() or ib() or spin() or sc() or bombs()
end

function gohma()
  return sword() or bnc() or bow() or ib() or spin() or sling() or claw()
end

function bari()
  return bombs() or claw()
end

function beamos()
  return bnc() or bow() or bombs()
end

function bigbaba()
  return sword() or bnc() or bow() or ib() or sc() or cs() or bombs()
end

function chu()
  return sword() or bnc() or bow() or ib() or spin() or sc() or claw()
end

function bokoblin()
  return sword() or bnc() or bow() or ib() or spin() or sc() or bombs()
end

function bombfish()
  return ib() and (sword() or shield() or claw())
end

function bombling()
  return sword() or bnc() or bow() or ib() or spin() or sc() or claw()
end

function bomskit()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function bubble()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function bulblin()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function chilfos()
  return sword() or bnc() or bow() or ib() or sc()
end

function chuworm()
  return (sword() or bnc() or bow() or ib() or spin() or sc() and bombs()) or claw()
end

function darknut()
  return sword()
end

function dekubaba()
  return sword() or bnc() or bow() or ib() or spin() or skill(2) or sling() or claw()
end

function dekulike()
  return sword() or bnc() or bow() or ib() or spin() or sc() or bombs()
end

function dodongo()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function dinalfos()
  return sword() or bnc() or sc()
end

function firebubble()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function firekeese()
  return sword() or bnc() or bow() or ib() or spin() or sc() or sling()
end

function firetoadpoli()
  return sword() or bnc() or bow() or sc()
end

function freezard()
  return bnc()
end

function goron()
  return sword() or bnc() or bow() or ib() or spin() or (shield() and skill(2)) or sling() or lantern() or claw()
end

function ghoulrat()
  return sc()
end

function guay()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function helmasaur()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function helmasaurus()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function icebubble()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function icekeese()
  return sword() or bnc() or bow() or ib() or spin() or sc() or sling()
end

function poe()
  return sc()
end

function kargarok()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function keese()
  return sword() or bnc() or bow() or ib() or spin() or sc() or sling()
end

function leever()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function lizalfos()
  return sword() or bnc() or bow() or ib() or sc()
end

function minifreezard()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function moldorm()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function poisonmite()
  return sword() or bnc() or bow() or ib() or spin() or sc() or lantern()
end

function puppet()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function rat()
  return sword() or bnc() or bow() or ib() or spin() or sc() or sling()
end

function redead()
  return sword() or bnc() or bow() or ib() or sc()
end

function shadowbeast()
  return sword() or (sc() and mdh())
end

function shadowbulblin()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function shadowbaba()
  return sword() or bnc() or bow() or ib() or spin() or skill(2) or sling() or claw()
end

function shadowinsect()
  return sc()
end

function shadowkargarok()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function shadowkeese()
  return sword() or bnc() or bow() or ib() or spin() or sc() or sling()
end

function shadowvermin()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function shellblade()
  return bombs() or (sword() and ib())
end

function skullfish()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function skulltula()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function stalfos()
  return smash()
end

function stalhound()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function stalchild()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function tektite()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function tileworm()
  return (sword() or bnc() or bow() or sc()) and gb()
end

function toado()
  return sword() or bnc() or bow() or spin() or sc()
end

function watertoadpoli()
  return sword() or bnc() or bow() --or sc()
end

function torchslug()
  return sword() or bnc() or bow() or sc()
end

function walltula()
  return bnc() or sling() or bow() or gb() or claw()
end

function whitewolfos()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function younggohma()
  return sword() or bnc() or bow() or ib() or spin() or sc()
end

function zanthead()
  return sc() or sword()
end

function ook()
  return sword() or bnc() or bow() or ib() or sc()
end

function dangoro()
  return (sword() or bnc() or sc()) and ib()
end

function carrierkargarok()
  return sc()
end

function twilitbloat()
  return sc()
end

function dekutoad()
  return sword() or bnc() or bow() or ib() or sc()
end

function skullkid()
  return bow()
end

function kbbridge()
  return bow()
end

function kbdesert()
  return sword() or bnc() or sc()
end

function kbcastle()
  return sword() or bnc() or sc()
end

function deathsword()
  return (sword() or bnc() or ib()) and (gb() or bow() or claw()) and sc()
end

function darkhammer()
  return sword() or bnc() or sc()
end

function phantomzant()
  return sc() or sword()
end

function diababa()
  return (gb() or (bombs() and bow())) and (sword() or bnc() or ib() or sc())
end

function fyrus()
  return bow() and ib() and sword()
end

function morpheel()
  return has("zarmor") and ib() and sword()
end

function stallord()
  return spin() and sword()
end

function blizzeta()
  return bnc()
end

function armogohma()
  return bow() and has("drod_off")
end

function argorok()
  return has("dcs") and ib() and has("os")
end

function zant()
  return has("ms") and gb() and claw() and ib() and has("zarmor") and bnc()
end

function ganondorf()
  return sc() and has("ms") and skill(1)
end

function smash()
  return bnc() or bombs()
end

function webs()
  return lantern() or bombs()
end

function ranged()
  return bnc() or sling() or bow() or claw() or gb()
end

function launchbombs()
  return (gb() or bow()) and bombs()
end

function hangingweb()
  return claw() or bow() or gb() or bnc()
end

function hcpainting()
  return bow() or bombs()
end

function monkeycage()
  return sword() or bnc() or bow() or ib() or spin() or sc() or claw()
end

function minesswitch()
  return ib()
end

function monkeys()
  return monkeycage() and lantern() and gb() and bokoblin() and has("forestsk",4)
end

function hangingbaba()
  return bow() or claw() or gb()
end

function woodendoor()
  return sc() or sword() or smash()
end

function mdh()
  return has("lakebed") or has("op_mdh_skip")
end

function forest()
  return has("forest") or has("op_fw_o") or sc()
end

function ordeals1()
  return bokoblin() and keese() and rat() and baba() and skulltula() and bulblin() and torchslug() and firekeese() and dodongo() and tektite() and lizalfos()
end

function ordeals2()
  return helmasaur() and rat() and spin() and chu() and chuworm() and bubble() and bulblin() and keese() and rat() and stalhound() and poe() and leever()
end

function ordeals3()
  return bokoblin() and icekeese() and bnc() and keese() and rat() and ghoulrat() and stalchild() and redead() and bulblin() and stalfos() and skulltula() and bubble() and lizalfos() and firebubble()
end

function ordeals4()
  return beamos() and keese() and has("dominion") and torchslug() and firekeese() and dodongo() and firebubble() and redead() and poe() and ghoulrat() and chu() and icekeese() and freezard() and chilfos() and icebubble() and leever() and darknut()
end

function palace()
  local shadows = Tracker:ProviderCountForCode("shadow")
  local mirrors = Tracker:ProviderCountForCode("mirror")
  if has("op_pot_o") then
    return true
  elseif has("op_pot_fs") then
    if shadows >= 3 then
      return true
    end
  elseif has("op_pot_ms") then
    if mirrors >= 3 then
      return true
    end
  elseif has("op_pot_v") then
    return has("sky")
  end
  return false
end

function castle()
  local shadows = Tracker:ProviderCountForCode("shadow")
  local mirrors = Tracker:ProviderCountForCode("mirror")
  if has("op_hc_o") then
    return true
  elseif has("op_hc_fs") then
    if shadows >= 3 then
      return true
    end
  elseif has("op_hc_ms") then
    if mirrors >= 3 then
      return true
    end
  elseif has("op_hc_ad") then
    local forest = has("forest")
    local mines = has("mines")
    local lakebed = has("lakebed")
    local grounds = has("grounds")
    local mansion = has("mansion")
    local time = has("time")
    local sky = has("sky")
    local palace = has("palace")
    return forest and mines and lakebed and grounds and mansion and time and sky and palace
  elseif has("op_hc_v") then
    return has("palace")
  end
  return false
end

function mines()
  return has("op_mines_skip") or ib()
end

function lakebed()
  return has("op_lkbd_skip") or (ib() and bombs())
end

function grounds()
  return has("op_grnds_skip") or (kbdesert() and has("desertsk"))
end

function snowpeak()
  return has("op_ruins_skip") or has("earring")
end

function grove()
  return has("op_grove_skip") or has("ms")
end

function skycannon()
  return has("op_cannon_skip") or (has("skybook_full") and has("dominion"))
end

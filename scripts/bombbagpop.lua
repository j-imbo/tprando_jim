BombBag = CustomItem:extend()

local badges = {
    "images/empty.png",
    "images/badge_1.png",
    "images/badge_2.png",
    "images/badge_3g.png"
}

local images = {
    "images/bombbag.png",
    "images/bombbag_giant.png"
}


function BombBag:init()
    self:createItem("Bomb Bag")
    self.number = 1
    self.code = "bombs"
    self:setProperty("active", false)
    self:setProperty("stage", 1)
    self:setProperty("badgeNum", 1)
    self.imageBase = ImageReference:FromPackRelativePath(images[1])
    self.ItemInstance.PotentialIcon = self.imageBase
    self:updateIcon()
end

function BombBag:updateIcon()
    if self:getProperty("stage") then
        self.imageBase = ImageReference:FromPackRelativePath(images[self:getProperty("stage")])
    end
    local img_mod = ""
    if self:getProperty("badgeNum") then
        img_mod = "overlay|" .. badges[self:getProperty("badgeNum")]
        if self:getProperty("badgeNum") == 1 then
            img_mod = img_mod .. ",@disabled"
        end
    end
    self.ItemInstance.Icon = self.imageBase
    self.ItemInstance.IconMods = img_mod
end

function BombBag:onLeftClick()
    if self:getProperty("badgeNum") >= 4 then
        self:setProperty("badgeNum", 1)
        self:setProperty("active", false)
    else
        self:setProperty("badgeNum", self:getProperty("badgeNum") + 1)
        self:setProperty("active", true)
    end
end

function BombBag:onRightClick()
    if self:getProperty("stage") >= #images then
        self:setProperty("stage", 1)
    else
        self:setProperty("stage", self:getProperty("stage") + 1)
    end
end

function BombBag:canProvideCode(code)
    if self.code and self.code == code then return true
    end
    return false
end

function BombBag:providesCode(code)
    if self:getProperty("active") and self:canProvideCode(code) then
        return 1
    end
    return 0
end

function BombBag:advanceToCode(code)
    if code == nil or self:canProvideCode(code) then
        self:setProperty("active", true)
    end
end

function BombBag:save()
    local saveData = {}
    saveData["active"] = self:getProperty("active")
    saveData["stage"] = self:getProperty("stage")
    saveData["badgeNum"] = self:getProperty("badgeNum")
    return saveData
end

function BombBag:load(data)
    if data["active"] ~= nil then
        self:setProperty("active", data["active"])
    end
    if data["stage"] ~= nil then
        self:setProperty("stage", data["stage"])
    end
    if data["badgeNum"] ~= nil then
        self:setProperty("badgeNum", data["badgeNum"])
    end
    return true
end
  
function BombBag:propertyChanged(key, value)
    self:updateIcon()
end
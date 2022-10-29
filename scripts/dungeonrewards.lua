DungeonReward = CustomItem:extend()

local names = {
    "Forest Temple Reward",
    "Goron Mines Reward",
    "Lakebed Temple Reward",
    "Arbiter's Grounds Reward",
    "Snowpeak Ruins Reward",
    "Temple of Time Reward",
    "City in the Sky Reward",
    "Palace of Twilight Reward"
}

local codes = {
    "forest",
    "mines",
    "lakebed",
    "grounds",
    "mansion",
    "time",
    "sky",
    "palace"
}

local rewards = {
    "unknown",
    "shadow",
    "mirror"
}

local images = {
    "images/unknown.png",
    "images/shadows.png",
    "images/mirrorshard.png"
}

function DungeonReward:init(num)
    self:createItem(names[num])
    self.number = num
    self.code = codes[num]
    self:setProperty("active", false)
    self:setProperty("stage", 1)
    self.imageBase = ImageReference:FromPackRelativePath(images[1])
    self.ItemInstance.PotentialIcon = self.imageBase
    self:updateIcon()
end

function DungeonReward:updateIcon()
    if self:getProperty("stage") then
        local imageBase = ImageReference:FromPackRelativePath(images[self:getProperty("stage")])
        if self:getProperty("active") then
            self.ItemInstance.Icon = imageBase
        else
            self.ItemInstance.Icon = ImageReference:FromImageReference(imageBase, "@disabled")
        end
    else
        self.ItemInstance.Icon = self.imageBase
    end
end

function DungeonReward:onLeftClick()
    self:setProperty("active", not self:getProperty("active"))
end

function DungeonReward:onRightClick()
    if self:getProperty("stage") >= #rewards then
        self:setProperty("stage", 1)
    else
        self:setProperty("stage", self:getProperty("stage") + 1)
    end
end

function DungeonReward:canProvideCode(code)
    if self.code and self.code == code or self:getProperty("stage") and
        rewards[self:getProperty("stage")] == code then return true
    end
    return false
end

function DungeonReward:providesCode(code)
    if self:getProperty("active") and self:canProvideCode(code) then
        return 1
    end
    return 0
end

function DungeonReward:advanceToCode(code)
    if code == nil or self:canProvideCode(code) then
        self:setProperty("active", true)
    end
end

function DungeonReward:save()
    local saveData = {}
    saveData["active"] = self:getProperty("active")
    saveData["stage"] = self:getProperty("stage")
    return saveData
end

function DungeonReward:load(data)
    if data["active"] ~= nil then
        self:setProperty("active", data["active"])
    end
    if data["stage"] ~= nil then
        self:setProperty("stage", data["stage"])
    end
    return true
end
  
function DungeonReward:propertyChanged(key, value)
    self:updateIcon()
end
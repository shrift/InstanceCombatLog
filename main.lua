local function uiMessage(message)
    ChatFrame1:AddMessage(message)
end

local InstanceCombatLogFrame = CreateFrame("Frame")
InstanceCombatLogFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
InstanceCombatLogFrame:SetScript("OnEvent", function(self, event, ...)
    local name, type = GetInstanceInfo()
    if (type == "none") then
        uiMessage("Turning combat log off for zone: "..name)
        LoggingCombat(false)
    else
        uiMessage("Turning combat log on for instance: "..name)
        LoggingCombat(true)
    end
end)


-- To register API events
local api = CreateFrame("Frame")

-- API events
api:RegisterEvent("ADDON_LOADED")

-- Remove original ATT RareFind (mostly mounts) and Fanfare sounds
local function removeSounds()
    AllTheThings.ClearSounds("Fanfare")
    AllTheThings.ClearSounds("RareFind")
end

-- Add custom ATT sounds
local function addSounds()
        -- Add the gnome sounds to the "Fanfare" sounds
        AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare1.ogg") -- Hurray!
        AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare2.ogg") -- Woohoo!
    
        -- Add the gnome sounds to the "RareFind" sounds
        AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare1.ogg") -- Hurray!
        AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare2.ogg") -- Woohoo!
end

api:SetScript("OnEvent", function(self, event, arg1, arg2, ...)
    -- When the AddOn is fully loaded, actually run the components
    if event == "ADDON_LOADED" and arg1 == "ATTSoundpackGnome" then
        -- We don't need to check if ATT is also loaded, because it is a dependency for this AddOn
        removeSounds()
        addSounds()
    end
end)
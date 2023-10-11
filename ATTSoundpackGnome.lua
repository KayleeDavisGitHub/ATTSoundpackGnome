local appName = ...
function asset(name)
	return "Interface\\AddOns\\" .. appName .. "\\assets\\" .. name
end

local api = AllTheThings.Audio

api:CreateSoundPack("Gnome (" .. appName .. ")", {
	COMPLETE = {
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare1.ogg"), -- Hurray!
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare2.ogg"), -- Woohoo!
	},
--	DEATH = {
--		asset("death.ogg"),
--	},
	FANFARE = {
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare1.ogg"),
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare2.ogg"),
	},
	RAREFIND = {
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare1.ogg"),
		asset("Interface\\AddOns\\ATTSoundpackGnome\\assets\\fanfare2.ogg"),
	},
--	REMOVE = {
--		asset("removal_sound.ogg"),
--	},
--	REPORT = {
--		asset("report_sound.ogg"),
--	},
})

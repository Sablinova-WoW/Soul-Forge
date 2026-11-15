-- The Horde and Alliance looks' skins (for the controls drawn over their pictures, and their menus and popups): the
-- Cognac skin's gold-framed controls (MaterialCraftUI, MIT) in each faction's colours. Loaded right after Style.lua and
-- before Painted.lua: it wraps S.RegisterSkin, and when Cognac registers it adds a copy of Cognac's skin for each
-- faction, with that faction's scheme and colours. (Painted.lua, loaded after it, has already prepared Cognac's skin
-- for controls over a painted picture by then, so the copies share that too.)
local _, NS = ...
local S = NS.Style

local FACTIONS = {
	horde = {
		label = "Horde",
		credit = "For the Horde! Created by Sablinova",
		roles = {
			surfaceLowest = "0c0807", surface = "17100d", surfaceLow = "120c0a", surfaceContainer = "21160f",
			surfaceHigh = "2c1d14", onSurface = "efe3d2", onSurfaceVariant = "b9a894", outline = "a5743a",
			outlineVariant = "6b3a22", primary = "f2c45a", onPrimary = "2a1608", error = "ff5a45", errorContainer = "6a1a12",
		},
		window = { 0.07, 0.04, 0.03, 0.96 }, sidebar = { 0.09, 0.05, 0.04, 1 },
		rowHover = { 0.95, 0.30, 0.15, 0.16 }, rowSelected = { 0.85, 0.15, 0.10, 0.26 }, navSelected = { 1, 0.55, 0.30, 1 },
	},
	alliance = {
		label = "Alliance",
		credit = "Glory to the Alliance! Created by Sablinova",
		roles = {
			surfaceLowest = "070b16", surface = "0e1528", surfaceLow = "0b1120", surfaceContainer = "142040",
			surfaceHigh = "1c2b52", onSurface = "eef2fb", onSurfaceVariant = "aeb9d4", outline = "c9a64e",
			outlineVariant = "6a5a30", primary = "f2cf6a", onPrimary = "101a33", error = "ff6a5a", errorContainer = "5a1a1a",
		},
		window = { 0.04, 0.06, 0.12, 0.96 }, sidebar = { 0.05, 0.08, 0.16, 1 },
		rowHover = { 0.35, 0.55, 1, 0.16 }, rowSelected = { 0.95, 0.80, 0.40, 0.22 }, navSelected = { 0.55, 0.78, 1, 1 },
	},
}

local register = S.RegisterSkin
function S.RegisterSkin(key, def)
	register(key, def)
	if key ~= "cognac" then return end
	for fkey, fac in pairs(FACTIONS) do
		if fac.ready ~= false then
			local copy = {}
			for k, v in pairs(def) do copy[k] = v end
			copy.label, copy.credit, copy.roles = fac.label, fac.credit, fac.roles
			local base = def.colors
			copy.colors = function(c, M3)
				if base then base(c, M3) end
				c.window, c.sidebar = fac.window, fac.sidebar
				c.rowHover, c.rowSelected, c.navSelected = fac.rowHover, fac.rowSelected, fac.navSelected
			end
			register(fkey, copy)
		end
	end
end

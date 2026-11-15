-- Texture paths for the Horde picture window and its effects (UI.lua, BuildFaction): the addon author's three Horde
-- pictures, one per tab, each in two tiles; the bars' fills, the lit tab plates and the toggles' tick
-- (art-source\horde\make_horde_textures.py). The Horde controls are the Faction skin (UI\Skins\Faction.lua).
local ADDON, NS = ...
local PATH = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\HordePicture\\"
local COSMIC = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\"

NS.HordeArt = {
	profileL = PATH .. "HordeProfileL", profileR = PATH .. "HordeProfileR",
	killsL = PATH .. "HordeKillsL", killsR = PATH .. "HordeKillsR",
	titlesL = PATH .. "HordeTitlesL", titlesR = PATH .. "HordeTitlesR",
	pieces = PATH .. "HordePieces",
	boardsL = PATH .. "HordeProfileL", boardsR = PATH .. "HordeProfileR", boardsPieces = PATH .. "HordeBoardsPieces",   -- (boards: the Profile picture, its frame stays on the Leaderboards: 0.9.4) (0.9.0, art-source\boards)
	glow = COSMIC .. "Glow", star = COSMIC .. "Star",
}

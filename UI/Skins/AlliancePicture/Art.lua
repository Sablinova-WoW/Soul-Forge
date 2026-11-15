-- Texture paths for the Alliance picture window and its effects (UI.lua, BuildFaction): the addon author's three
-- Alliance pictures, one per tab, each in two tiles; the bars' fills, the lit tab plates and the boxes' tick
-- (art-source\alliance\make_alliance_textures.py). The Alliance controls are the Faction skin (UI\Skins\Faction.lua).
local ADDON, NS = ...
local PATH = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\AlliancePicture\\"
local COSMIC = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\"

NS.AllianceArt = {
	profileL = PATH .. "AlliProfileL", profileR = PATH .. "AlliProfileR",
	killsL = PATH .. "AlliKillsL", killsR = PATH .. "AlliKillsR",
	titlesL = PATH .. "AlliTitlesL", titlesR = PATH .. "AlliTitlesR",
	pieces = PATH .. "AlliPieces",
	boardsL = PATH .. "AlliProfileL", boardsR = PATH .. "AlliProfileR", boardsPieces = PATH .. "AlliBoardsPieces",   -- (boards: the Profile picture, its frame stays on the Leaderboards: 0.9.4) (0.9.0, art-source\boards)
	glow = COSMIC .. "Glow", star = COSMIC .. "Star",
}

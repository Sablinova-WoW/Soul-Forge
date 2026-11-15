-- Texture paths for the Cognac picture window and its effects (UI.lua): the addon author's three saloon pictures, one
-- per tab, each in two tiles; the bars' gilded fills and other pieces; the smoke's 16 frames
-- (art-source\cognac\make_cognac_textures.py). The Cognac controls themselves stay MaterialCraftUI's Cognac skin (UI\Skins\Cognac).
local ADDON, NS = ...
local PATH = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\CognacPicture\\"
local COSMIC = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\"

NS.CognacArt = {
	profileL = PATH .. "CogProfileL", profileR = PATH .. "CogProfileR",
	killsL = PATH .. "CogKillsL", killsR = PATH .. "CogKillsR",
	titlesL = PATH .. "CogTitlesL", titlesR = PATH .. "CogTitlesR",
	pieces = PATH .. "CogPieces", smoke = PATH .. "CogSmoke",
	boardsL = PATH .. "CogProfileL", boardsR = PATH .. "CogProfileR", boardsPieces = PATH .. "CogBoardsPieces",   -- (boards: the Profile picture, its frame stays on the Leaderboards: 0.9.4) (0.9.0, art-source\boards)
	tabs = PATH .. "CogTabs",   -- (0.9.30: the four tab plates' lit plate and rim, the user's cup; art-source\cognac\make_tabs.py)
	glow = COSMIC .. "Glow", star = COSMIC .. "Star",
}

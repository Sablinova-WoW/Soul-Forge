-- Material: modern, futuristic, Tron-inspired. The Soul Forge window is the addon author's own pictures (drawn by
-- UI.lua); this skin gives every other control the same look: dark glass with crisp cyan edges, cyan light on hover,
-- a cyan scroll thumb, glowing hexagons for checkboxes. Controls placed over the pictures' own painted boxes are
-- built while NS.paintedControls is set: they draw no box of their own, only their words (the picture is the box).
-- Load it after Style.lua: it takes the "material" key, replacing MaterialCraftUI's flat Material look in this
-- addon (the other looks fall back to "material" only for sliders and dividers, which are kept flat and plain here).
-- Uses MaterialCraftUI's skin interface (MIT).
local ADDON, NS = ...
local S = NS.Style
local PATH = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Material\\"
local COSMIC = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\"
local WHITE = "Interface\\Buttons\\WHITE8X8"

local CYAN = { 0.24, 0.91, 1, 1 }
local CYAN_SOFT = { 0.24, 0.91, 1, 0.55 }
local GLASS = { 0.03, 0.07, 0.085, 0.96 }

local function painted() return NS.paintedControls and true or false end

local function tex(f, layer, file, r, g, b, a, add)
	local t = f:CreateTexture(nil, layer)
	t:SetTexture(file)
	if add then t:SetBlendMode("ADD") end
	if r then t:SetVertexColor(r, g, b, a or 1) end
	return t
end

-- dark glass with a 1px cyan edge (popups, menus, fields and buttons off the picture)
local function glass(f, body, edge)
	f:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1 })
	f:SetBackdropColor(unpack(body or GLASS))
	f:SetBackdropBorderColor(unpack(edge or CYAN_SOFT))
end

local BUTTON = {
	secondary = { bg = { 0.04, 0.10, 0.12, 0.92 }, hover = { 0.06, 0.20, 0.24, 0.95 }, edge = CYAN_SOFT, text = { 0.88, 0.98, 1, 1 } },
	primary = { bg = { 0.04, 0.28, 0.33, 0.95 }, hover = { 0.06, 0.40, 0.46, 1 }, edge = CYAN, text = { 0.95, 1, 1, 1 } },
	selected = { bg = { 0.05, 0.30, 0.36, 0.95 }, hover = { 0.07, 0.40, 0.46, 1 }, edge = CYAN, text = { 1, 0.86, 0.45, 1 } },
	danger = { bg = { 0.25, 0.05, 0.10, 0.95 }, hover = { 0.36, 0.07, 0.14, 1 }, edge = { 1, 0.4, 0.55, 0.8 }, text = { 1, 0.88, 0.92, 1 } },
}

S.RegisterSkin("material", {
	label = "Material",
	paintedAware = true,   -- draws painted controls itself (UI\Skins\Painted.lua leaves it alone)
	credit = "Shatter the Simulation. Created by Sablinova, inspired by iExpulsion",
	roles = {
		surfaceLowest = "050b0d", surface = "081215", surfaceLow = "0b171b", surfaceContainer = "0f1f24",
		surfaceHigh = "15292f", onSurface = "e4fbff", onSurfaceVariant = "8fbac4", outline = "2f9fb0",
		outlineVariant = "1b4a54", primary = "3de8ff", onPrimary = "00262c", error = "ff6b8a", errorContainer = "4a1222",
		success = "7ef0ff", warning = "ffcf6b",
	},
	colors = function(c)
		c.window = { 0.03, 0.07, 0.085, 0.97 }
		c.panel = { 0.05, 0.12, 0.14, 0 }    -- no band behind list headings (the pictures paint their own)
		c.well = { 0.02, 0.06, 0.07, 0.75 }
		c.border = { 0.24, 0.91, 1, 0.35 }
		c.rowHover = { 0.24, 0.91, 1, 0.30 }
		c.rowSelected = { 0.55, 0.35, 1, 0.22 }
		c.navSelected = c.accent
		c.arrow = { 0.6, 0.95, 1, 1 }
		c.scrollThumb = { 0.24, 0.91, 1, 0.85 }
		c.scrollThumbHover = { 0.6, 1, 1, 1 }
	end,
	metrics = { edge = 0, inset = 16, navInset = 4, wellInset = 2, menuInset = 4, tabPad = 14 },
	button = function(b)
		b.painted = painted()
		if b.painted then return end   -- over a painted box: just the words, and a cyan light on hover
		glass(b)
		b.light = tex(b, "HIGHLIGHT", COSMIC .. "Sweep", 0.24, 0.91, 1, 0.35, true)
		b.light:SetAllPoints()
	end,
	paintButton = function(b, enabled)
		local k = BUTTON[b.kind] or BUTTON.secondary
		if b.kind == "ghost" or b.painted then
			b.label:SetTextColor(unpack(enabled and (b.hovered and CYAN or S.colors.text) or S.colors.disabled))
			return
		end
		if not enabled then
			b:SetBackdropColor(0.05, 0.08, 0.09, 0.8)
			b:SetBackdropBorderColor(0.3, 0.4, 0.45, 0.5)
			b.label:SetTextColor(unpack(S.colors.disabled))
			return
		end
		b:SetBackdropColor(unpack((b.hovered or b.down) and k.hover or k.bg))
		b:SetBackdropBorderColor(unpack(k.edge))
		b.label:SetTextColor(unpack(k.text))
	end,
	frame = function(f, role)
		if painted() then return end
		glass(f, role == "window" and { 0.03, 0.07, 0.085, 0.97 } or GLASS, CYAN_SOFT)
	end,
	well = function(f)
		if painted() then return end
		glass(f, { 0.02, 0.06, 0.07, 0.80 }, { 0.24, 0.91, 1, 0.30 })
	end,
	-- dividers: a thin cyan line
	line = function(parent)
		local t = tex(parent, "BORDER", WHITE, 0.24, 0.91, 1, 0.45)
		return t, 1
	end,
	sidebar = function(side)
		local fill = tex(side, "BACKGROUND", WHITE, 0.03, 0.08, 0.09, 0.9)
		fill:SetAllPoints()
		local edge = tex(side, "BORDER", WHITE, 0.24, 0.91, 1, 0.35)
		edge:SetWidth(1)
		edge:SetPoint("TOPRIGHT")
		edge:SetPoint("BOTTOMRIGHT")
	end,
	-- a cyan light across the hovered row
	highlight = function(f)
		local t = tex(f, "HIGHLIGHT", COSMIC .. "Sweep", 0.24, 0.91, 1, 0.45, true)
		t:SetAllPoints()
	end,
	tab = function(b)
		local hover = tex(b, "HIGHLIGHT", COSMIC .. "Sweep", 0.24, 0.91, 1, 0.3, true)
		hover:SetAllPoints()
		b.underline = tex(b, "OVERLAY", WHITE, 0.24, 0.91, 1, 1)
		b.underline:SetHeight(2)
		b.underline:SetPoint("BOTTOMLEFT", 6, 0)
		b.underline:SetPoint("BOTTOMRIGHT", -6, 0)
	end,
	paintTab = function(b, on)
		if on then b.underline:Show() else b.underline:Hide() end
	end,
	navEntry = function(b)
		local hover = tex(b, "HIGHLIGHT", COSMIC .. "Sweep", 0.24, 0.91, 1, 0.35, true)
		hover:SetAllPoints()
		b.selectedTex = tex(b, "BACKGROUND", WHITE, 0.24, 0.91, 1, 0.14)
		b.selectedTex:SetAllPoints()
		b.bar = tex(b, "BORDER", WHITE, 0.24, 0.91, 1, 1)
		b.bar:SetWidth(2)
		b.bar:SetPoint("TOPLEFT")
		b.bar:SetPoint("BOTTOMLEFT")
		b.label:SetPoint("LEFT", S.PAD + 8, 0)
	end,
	paintNav = function(b, on)
		if on then b.bar:Show() b.selectedTex:Show() else b.bar:Hide() b.selectedTex:Hide() end
	end,
	input = function(e)
		local box = e.box or e
		box.painted = painted()
		if box.painted then return end
		glass(box, { 0.02, 0.06, 0.07, 0.9 }, { 0.24, 0.91, 1, 0.35 })
	end,
	paintInput = function(e)
		local box = e.box or e
		if box.painted then return end
		box:SetBackdropBorderColor(unpack(e.focused and CYAN or e.hovered and { 0.24, 0.91, 1, 0.6 } or { 0.24, 0.91, 1, 0.35 }))
	end,
	-- a hexagon: an outline (unless the picture paints one), filled with cyan light while checked
	check = function(b)
		b.painted = painted()
		if not b.painted then
			b.rim = tex(b, "ARTWORK", PATH .. "MatHex", 0.24, 0.91, 1, 0.5)
			b.rim:SetPoint("TOPLEFT", -2, 2)
			b.rim:SetPoint("BOTTOMRIGHT", 2, -2)
		end
		b.fill = tex(b, "OVERLAY", PATH .. "MatHex", 0.4, 0.95, 1, 1)
		b.fill:SetPoint("TOPLEFT", -1, 1)
		b.fill:SetPoint("BOTTOMRIGHT", 1, -1)
		b.glow = tex(b, "OVERLAY", COSMIC .. "Glow", 0.24, 0.91, 1, 0.8, true)
		b.glow:SetPoint("TOPLEFT", -8, 8)
		b.glow:SetPoint("BOTTOMRIGHT", 8, -8)
	end,
	paintCheck = function(b)
		local a = b.usable and 1 or 0.4
		if b.rim then b.rim:SetVertexColor(0.24, 0.91, 1, (b.hovered and b.usable and 0.9 or 0.5) * a) end
		if b.on then b.fill:Show() b.glow:Show() else b.fill:Hide() b.glow:Hide() end
		b.fill:SetAlpha(a)
	end,
	-- sliders stay MaterialCraftUI's plain ones (the other looks fall back to these)
	slider = function(s)
		local thumb = s:CreateTexture(nil, "OVERLAY")
		thumb:SetTexture(WHITE)
		thumb:SetSize(6, 16)
		s:SetThumbTexture(thumb)
		s.track = S.Solid(s, "BACKGROUND", S.colors.border)
		s.track:SetHeight(4)
		s.track:SetPoint("LEFT")
		s.track:SetPoint("RIGHT")
		s.fill = S.Solid(s, "ARTWORK", S.colors.accent)
		s.fill:SetHeight(4)
		s.fill:SetPoint("LEFT")
		s.fill:SetPoint("RIGHT", thumb, "CENTER")
	end,
	paintSlider = function(s)
		local thumb = s:GetThumbTexture()
		local c = not s.usable and S.colors.disabled or s.hovered and S.colors.accentHover or S.colors.accent
		thumb:SetVertexColor(unpack(c))
		s.fill:SetVertexColor(unpack(s.usable and S.colors.accent or S.colors.disabled))
		s.valueText:SetTextColor(unpack(s.usable and S.colors.text or S.colors.disabled))
	end,
})

-- Texture paths for the Material picture window and its effects (UI.lua). Each tab has its own picture (two tiles);
-- the pieces are in MatPieces.tga (art-source\material\make_material_textures.py).
NS.MaterialArt = {
	profileL = PATH .. "MatProfileL", profileR = PATH .. "MatProfileR",
	killsL = PATH .. "MatKillsL", killsR = PATH .. "MatKillsR",
	titlesL = PATH .. "MatTitlesL", titlesR = PATH .. "MatTitlesR",
	boardsL = PATH .. "MatProfileL", boardsR = PATH .. "MatProfileR", boardsPieces = PATH .. "MatBoardsPieces",   -- (boards: the Profile picture, its frame stays on the Leaderboards: 0.9.4) (0.9.0, art-source\boards)
	pieces = PATH .. "MatPieces", hex = PATH .. "MatHex", diamond = PATH .. "MatDiamond", diamondLit = PATH .. "MatDiamondLit",
	infinity = PATH .. "InfinityGlow",   -- (0.9.25: the Leaderboards trophy's infinity sign, art-source\material\make_infinity_glow.py)
	infinitySegs = PATH .. "InfinitySegs",   -- (0.9.26: the infinity sign's tube in 36 pieces along its path, same script)
	trophyTab = PATH .. "TrophyTab",   -- (0.9.25: the Leaderboards tab plate, art-source\material\make_trophy_tab.py)
	glow = COSMIC .. "Glow", sweep = COSMIC .. "Sweep", filament = COSMIC .. "Filament", star = COSMIC .. "Star",
}

-- Cosmic: Soul Forge's own look. The window is the addon author's own picture (drawn by UI.lua); this skin gives
-- the controls a look of their own: buttons, fields and dropdowns are the picture's own painted pill (its Look
-- box), lists sit on void glass, dividers are starlight filaments, the chosen tab gets a nebula glow and a star,
-- checkboxes are soul orbs, hovered rows a soft light sweep (art-source\make_ui_textures.py, make_piece_textures.py).
-- Load it after Style.lua; S.UseSkin("cosmic") switches to it. Uses MaterialCraftUI's skin interface (MIT).
local ADDON, NS = ...
local S = NS.Style
local PATH = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\"

-- The Soul Forge window itself is the addon author's picture (UI\Skins\Cosmic\Picture.tga, drawn by UI.lua);
-- this skin draws everything else: controls, panels, menus and popups.
-- void glass: 64 x 64 art with 12-pixel corners, drawn 1:1
local GLASS_CUT = 16

-- Runs layout(w, h) now and whenever the frame is resized or shown.
local function follow(frame, layout)
	local function run()
		local w, h = frame:GetWidth(), frame:GetHeight()
		if w and h and w > 0 and h > 0 then layout(w, h) end
	end
	frame:HookScript("OnSizeChanged", run)
	frame:HookScript("OnShow", run)
	run()
end

local function tex(f, layer, file)
	local t = f:CreateTexture(nil, layer)
	t:SetTexture(PATH .. file)
	return t
end

-- A group of textures that tint, blend, show and hide together.
local function group(parts)
	local g = { parts = parts }
	function g:SetVertexColor(...) for _, t in ipairs(parts) do t:SetVertexColor(...) end end
	function g:SetBlendMode(m) for _, t in ipairs(parts) do t:SetBlendMode(m) end end
	function g:Show() for _, t in ipairs(parts) do t:Show() end end
	function g:Hide() for _, t in ipairs(parts) do t:Hide() end end
	return g
end

-- A nine-slice of one of the skin's own files: corners `cut` art pixels of a `size` square, drawn at `scale`.
local function slices(f, layer, file, size, cut, scale)
	local parts = {}
	for i = 1, 9 do parts[i] = tex(f, layer, file) end
	-- made once and refilled on each layout (it runs every time the frame is shown)
	local us = { 0, cut / size, 1 - cut / size, 1 }
	local xs, ws, ys, hs = {}, {}, {}, {}
	follow(f, function(w, h)
		local d = math.min(cut * scale, w / 2, h / 2)
		xs[1], xs[2], xs[3], ws[1], ws[2], ws[3] = 0, d, w - d, d, math.max(w - 2 * d, 1), d
		ys[1], ys[2], ys[3], hs[1], hs[2], hs[3] = 0, d, h - d, d, math.max(h - 2 * d, 1), d
		for row = 1, 3 do
			for col = 1, 3 do
				local t = parts[(row - 1) * 3 + col]
				t:SetTexCoord(us[col], us[col + 1], us[row], us[row + 1])
				t:ClearAllPoints()
				t:SetPoint("TOPLEFT", f, "TOPLEFT", xs[col], -ys[row])
				t:SetWidth(ws[col])
				t:SetHeight(hs[row])
			end
		end
	end)
	return group(parts)
end

-- The painted pill (the picture's Look box, its word removed) from Pieces.tga: rounded caps that keep their shape,
-- the middle stretched. Pieces.tga is 512 x 512; the pill is 220 x 43 at 0, 36, caps 22 wide.
local PIECES, PILL_X, PILL_Y, PILL_W, PILL_H, PILL_CAP = 512, 0, 36, 220, 43, 22
local function pill(f, layer)
	local parts = { tex(f, layer, "Pieces"), tex(f, layer, "Pieces"), tex(f, layer, "Pieces") }
	local v0, v1 = PILL_Y / PIECES, (PILL_Y + PILL_H) / PIECES
	parts[1]:SetTexCoord(PILL_X / PIECES, (PILL_X + PILL_CAP) / PIECES, v0, v1)
	parts[2]:SetTexCoord((PILL_X + PILL_CAP) / PIECES, (PILL_X + PILL_W - PILL_CAP) / PIECES, v0, v1)
	parts[3]:SetTexCoord((PILL_X + PILL_W - PILL_CAP) / PIECES, (PILL_X + PILL_W) / PIECES, v0, v1)
	follow(f, function(w, h)
		local cap = math.min(h * PILL_CAP / PILL_H, w / 2)
		parts[1]:ClearAllPoints()
		parts[1]:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
		parts[2]:ClearAllPoints()
		parts[2]:SetPoint("TOPLEFT", f, "TOPLEFT", cap, 0)
		parts[3]:ClearAllPoints()
		parts[3]:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, 0)
		parts[1]:SetWidth(cap); parts[3]:SetWidth(cap); parts[2]:SetWidth(math.max(w - 2 * cap, 1))
		for _, t in ipairs(parts) do t:SetHeight(h) end
	end)
	return group(parts)
end

-- Void glass behind a panel, list or field: the body and its rim, tinted.
local function glass(f, body, rim)
	f.glassBody = slices(f, "BACKGROUND", "GlassBody", 64, GLASS_CUT, 1)
	f.glassBody:SetVertexColor(unpack(body))
	f.glassRim = slices(f, "BORDER", "GlassRim", 64, GLASS_CUT, 1)
	f.glassRim:SetVertexColor(unpack(rim))
end

-- A window in this look is drawn by its addon (Soul Forge paints its picture); anything else gets dark glass.
local function windowFrame(f)
	local t = f:CreateTexture(nil, "BACKGROUND")
	t:SetTexture("Interface\\Buttons\\WHITE8X8")
	t:SetVertexColor(0.03, 0.025, 0.08, 0.96)
	t:SetAllPoints()
end

-- Button tints of the painted pill and label colors, per kind
local PILL = {
	secondary = { tint = { 1, 1, 1, 1 }, text = { 0.93, 0.91, 1, 1 } },
	primary = { tint = { 1, 0.86, 0.62, 1 }, text = { 1, 0.95, 0.82, 1 } },
	selected = { tint = { 1, 0.92, 0.75, 1 }, text = { 1, 0.85, 0.45, 1 } },
	danger = { tint = { 1, 0.62, 0.72, 1 }, text = { 1, 0.88, 0.92, 1 } },
}

S.RegisterSkin("cosmic", {
	label = "Cosmic",
	credit = "Enter the Void. Created by Sablinova",
	roles = {
		surfaceLowest = "05041a", surface = "0b0a24", surfaceLow = "0e0c2c", surfaceContainer = "141235",
		surfaceHigh = "1c1945", onSurface = "ece8ff", onSurfaceVariant = "aaa3d8", outline = "8b7dc6",
		outlineVariant = "3c3478", primary = "ffcf6b", onPrimary = "2a1a00", error = "ff7a8a", errorContainer = "5a1a2a",
		success = "9ad8ff", warning = "ffb870",
	},
	colors = function(c)
		c.window = { 0.03, 0.025, 0.08, 0.96 }
		c.panel = { 0.06, 0.05, 0.15, 0 }   -- no band behind list headings (the gold thread under them stays)
		c.well = { 0.03, 0.03, 0.10, 0.75 }
		c.border = { 0.42, 0.34, 0.72, 0.55 }
		c.rowHover = { 0.55, 0.42, 1, 0.45 }
		c.rowSelected = { 0.35, 0.55, 1, 0.20 }
		c.navSelected = c.accent
		c.arrow = { 0.78, 0.86, 1, 1 }
		c.scrollThumb = { 0.88, 0.7, 0.38, 0.85 }        -- a slim gold thread
		c.scrollThumbHover = { 1, 0.86, 0.52, 1 }
	end,
	metrics = { edge = 0, inset = 16, navInset = 4, wellInset = 2, menuInset = 4, tabPad = 14 },
	-- the painted pill (the picture's own Look box); hovering lights it from within
	button = function(b)
		b.pill = pill(b, "BACKGROUND")
		b.glow = tex(b, "HIGHLIGHT", "Glow")
		b.glow:SetBlendMode("ADD")
		b.glow:SetVertexColor(0.62, 0.48, 1, 0.45)
		b.glow:SetAllPoints()
	end,
	paintButton = function(b, enabled)
		if b.kind == "ghost" then
			b.pill:Hide()   -- just the label, lit on hover
			b.label:SetTextColor(unpack(enabled and S.colors.muted or S.colors.disabled))
			return
		end
		b.pill:Show()
		local k = PILL[b.kind] or PILL.secondary
		if not enabled then
			b.pill:SetVertexColor(0.45, 0.45, 0.55, 0.8)
			b.label:SetTextColor(unpack(S.colors.disabled))
			return
		end
		local shade = b.down and 0.75 or 1
		b.pill:SetVertexColor(k.tint[1] * shade, k.tint[2] * shade, k.tint[3] * shade, k.tint[4])
		b.label:SetTextColor(unpack(k.text))
	end,
	-- Soul Forge paints its own window (the picture); popups and menus are void glass
	frame = function(f, role)
		if role == "window" then
			windowFrame(f)
		else
			glass(f, { 0.05, 0.04, 0.14, 0.98 }, { 0.62, 0.52, 1, 0.65 })
		end
	end,
	well = function(f)
		glass(f, { 0.03, 0.03, 0.10, 0.80 }, { 0.52, 0.44, 0.95, 0.40 })
	end,
	-- a starlight filament: brightest in the middle, fading out at both ends
	line = function(parent)
		local t = tex(parent, "BORDER", "Filament")
		t:SetBlendMode("ADD")
		t:SetVertexColor(0.72, 0.82, 1, 0.85)
		return t, 5
	end,
	sidebar = function(side)
		glass(side, { 0.04, 0.03, 0.11, 0.85 }, { 0.52, 0.44, 0.95, 0.30 })
	end,
	-- a soft violet light sweeping across the hovered row
	highlight = function(f)
		local t = tex(f, "HIGHLIGHT", "Sweep")
		t:SetBlendMode("ADD")
		t:SetVertexColor(unpack(S.colors.rowHover))
		t:SetAllPoints()
	end,
	-- the chosen tab: a nebula glow behind its label and a gold star beneath; a fainter glow on hover
	tab = function(b)
		local hover = tex(b, "HIGHLIGHT", "Glow")
		hover:SetBlendMode("ADD")
		hover:SetVertexColor(0.55, 0.42, 1, 0.30)
		hover:SetAllPoints()
		b.nebula = tex(b, "BACKGROUND", "Glow")
		b.nebula:SetBlendMode("ADD")
		b.nebula:SetVertexColor(0.58, 0.42, 1, 0.75)
		b.nebula:SetPoint("TOPLEFT", -6, 4)
		b.nebula:SetPoint("BOTTOMRIGHT", 6, -4)
		b.star = tex(b, "OVERLAY", "Star")
		b.star:SetBlendMode("ADD")
		b.star:SetVertexColor(1, 0.86, 0.5, 1)
		b.star:SetWidth(16); b.star:SetHeight(16)
		b.star:SetPoint("CENTER", b, "BOTTOM", 0, 3)
	end,
	paintTab = function(b, on)
		if on then b.nebula:Show() b.star:Show() else b.nebula:Hide() b.star:Hide() end
	end,
	navEntry = function(b)
		local hover = tex(b, "HIGHLIGHT", "Sweep")
		hover:SetBlendMode("ADD")
		hover:SetVertexColor(unpack(S.colors.rowHover))
		hover:SetAllPoints()
		b.selectedTex = tex(b, "BACKGROUND", "Glow")
		b.selectedTex:SetBlendMode("ADD")
		b.selectedTex:SetVertexColor(0.58, 0.42, 1, 0.6)
		b.selectedTex:SetAllPoints()
		b.star = tex(b, "OVERLAY", "Star")
		b.star:SetBlendMode("ADD")
		b.star:SetVertexColor(1, 0.86, 0.5, 1)
		b.star:SetWidth(14); b.star:SetHeight(14)
		b.star:SetPoint("LEFT", 4, 0)
		b.label:SetPoint("LEFT", S.PAD + 8, 0)
	end,
	paintNav = function(b, on)
		if on then b.star:Show() b.selectedTex:Show() else b.star:Hide() b.selectedTex:Hide() end
	end,
	-- fields are the painted pill too: dimmer at rest, bright on hover, warm while you type
	input = function(e)
		local box = e.box or e
		box.fieldPill = pill(box, "BACKGROUND")
	end,
	paintInput = function(e)
		local p = (e.box or e).fieldPill
		if not p then return end
		if e.focused then p:SetVertexColor(1, 0.93, 0.8, 1)
		elseif e.hovered then p:SetVertexColor(1, 1, 1, 1)
		else p:SetVertexColor(0.82, 0.8, 0.9, 1) end
	end,
	-- a soul orb: an empty socket, filled with a gold soul while checked
	check = function(b)
		b.socket = tex(b, "ARTWORK", "Socket")
		b.socket:SetPoint("TOPLEFT", -3, 3)
		b.socket:SetPoint("BOTTOMRIGHT", 3, -3)
		b.soul = tex(b, "OVERLAY", "Glow")
		b.soul:SetBlendMode("ADD")
		b.soul:SetPoint("TOPLEFT", -4, 4)
		b.soul:SetPoint("BOTTOMRIGHT", 4, -4)
		b.spark = tex(b, "OVERLAY", "Star")
		b.spark:SetBlendMode("ADD")
		b.spark:SetPoint("TOPLEFT", -2, 2)
		b.spark:SetPoint("BOTTOMRIGHT", 2, -2)
	end,
	paintCheck = function(b)
		local a = b.usable and 1 or 0.4
		b.socket:SetVertexColor(b.hovered and b.usable and 0.80 or 0.60, b.hovered and b.usable and 0.72 or 0.50, 1, a)
		if b.on then
			b.soul:SetVertexColor(1, 0.80, 0.38, 0.95 * a)
			b.spark:SetVertexColor(1, 0.95, 0.80, a)
			b.soul:Show(); b.spark:Show()
		else
			b.soul:Hide(); b.spark:Hide()
		end
	end,
})

-- Texture paths for the picture window and its effects (UI.lua)
NS.CosmicArt = { pictureL = PATH .. "PictureL", pictureR = PATH .. "PictureR", pieces = PATH .. "Pieces", glow = PATH .. "Glow",
	star = PATH .. "Star", sweep = PATH .. "Sweep",
	starGold = PATH .. "StarGold", starViolet = PATH .. "StarViolet", filament = PATH .. "Filament",
	trophyTab = PATH .. "TrophyTab",   -- (0.9.21: the Leaderboards tab's trophy, from the user's picture)
	titlesL = PATH .. "TitlesL", titlesR = PATH .. "TitlesR",   -- (0.9.18: the Profile frame with the Titles picture inside)
	killsL = PATH .. "KillsL", killsR = PATH .. "KillsR",   -- (0.9.15: the Profile frame with the Kills picture inside)
	boardsL = PATH .. "BoardsL", boardsR = PATH .. "BoardsR",   -- (0.9.22: the Profile frame with the Leaderboards picture inside)
	boardsPieces = PATH .. "CosmicBoardsPieces" }   -- (the rows' medals and your row's bar: 0.9.0, art-source\boards)

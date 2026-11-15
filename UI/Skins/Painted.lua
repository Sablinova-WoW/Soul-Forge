-- Controls over a picture's own painted boxes. The picture windows (Cosmic, Material, Cognac) paint their fields,
-- dropdowns and checkboxes into the picture; the live controls laid over them are built while NS.paintedControls is
-- set, and must then draw only their words (and a checkbox only its "on" light), never a box of their own.
-- Loaded right after Style.lua and before the looks: it wraps S.RegisterSkin so every look registered after it gets
-- this, without changing the looks' own files (Cognac is MaterialCraftUI's, MIT). A look that handles
-- painted controls itself says so with paintedAware = true (Material).
local ADDON, NS = ...
local S = NS.Style
local GLOW = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\Glow"
local STAR = "Interface\\AddOns\\" .. ADDON .. "\\UI\\Skins\\Cosmic\\Star"

local function painted() return NS.paintedControls and true or false end

local register = S.RegisterSkin
function S.RegisterSkin(key, def)
	if not def.paintedAware then
		local button, paintButton = def.button, def.paintButton
		if button then
			def.button = function(b)
				b.painted = painted()
				if not b.painted then return button(b) end
			end
		end
		if paintButton then
			def.paintButton = function(b, enabled)
				if b.painted then
					local c = S.colors
					b.label:SetTextColor(unpack(enabled and (b.hovered and c.accent or c.text) or c.disabled))
					return
				end
				return paintButton(b, enabled)
			end
		end
		local input, paintInput = def.input, def.paintInput
		if input then
			def.input = function(e, tall)
				(e.box or e).painted = painted()
				if not (e.box or e).painted then return input(e, tall) end
			end
		end
		if paintInput then
			def.paintInput = function(e)
				if (e.box or e).painted then return end
				return paintInput(e)
			end
		end
		local well = def.well
		if well then
			def.well = function(f)
				if not painted() then return well(f) end
			end
		end
		-- a checkbox over a painted one: a warm light and a spark in it while checked, nothing while not
		local check, paintCheck = def.check, def.paintCheck
		if check then
			def.check = function(b)
				b.painted = painted()
				if not b.painted then return check(b) end
				b.lightOn = b:CreateTexture(nil, "OVERLAY")
				b.lightOn:SetTexture(GLOW); b.lightOn:SetBlendMode("ADD")
				b.lightOn:SetPoint("TOPLEFT", -6, 6); b.lightOn:SetPoint("BOTTOMRIGHT", 6, -6)
				b.spark = b:CreateTexture(nil, "OVERLAY")
				b.spark:SetTexture(STAR); b.spark:SetBlendMode("ADD")
				b.spark:SetPoint("TOPLEFT", 2, -2); b.spark:SetPoint("BOTTOMRIGHT", -2, 2)
			end
		end
		if paintCheck then
			def.paintCheck = function(b)
				if not b.painted then return paintCheck(b) end
				local c = S.colors.accent
				local a = b.usable and 1 or 0.4
				b.lightOn:SetVertexColor(c[1], c[2], c[3], (b.hovered and 0.95 or 0.8) * a)
				b.spark:SetVertexColor(1, 0.95, 0.8, a)
				if b.on then b.lightOn:Show() b.spark:Show() else b.lightOn:Hide() b.spark:Hide() end
			end
		end
	end
	return register(key, def)
end

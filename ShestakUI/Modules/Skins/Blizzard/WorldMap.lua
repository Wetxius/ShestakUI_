local T, C, L = unpack(ShestakUI)
if C.skins.blizzard_frames ~= true then return end

----------------------------------------------------------------------------------------
--	WorldMap skin
----------------------------------------------------------------------------------------
local function LoadSkin()
	if C_AddOns.IsAddOnLoaded("Mapster") then return end

	local frame = CreateFrame("Frame")
	frame:RegisterEvent("VARIABLES_LOADED")
	frame:SetScript("OnEvent", function()
		SetCVar("miniWorldMap", 1)
	end)

	WorldMapFrame:StripTextures()
	WorldMapFramePortrait:SetAlpha(0)
	WorldMapFrame:CreateBackdrop("Default")
	WorldMapFrame.backdrop:ClearAllPoints()
	WorldMapFrame.backdrop:SetPoint("TOPLEFT", 1, -66)
	WorldMapFrame.backdrop:SetSize(700, 468)
	WorldMapFrame.Header = CreateFrame("Frame", nil, WorldMapFrame)
	WorldMapFrame.Header:SetSize(WorldMapFrame.backdrop:GetWidth(), 23)
	WorldMapFrame.Header:SetPoint("BOTTOMLEFT", WorldMapFrame.backdrop, "TOPLEFT", 0, 2)
	WorldMapFrame.Header:SetTemplate("Overlay")

	WorldMapFrame.BorderFrame:StripTextures()
	WorldMapFrame.BorderFrame.NineSlice:Hide()
	WorldMapFrame.BorderFrame.Tutorial:Kill()

	QuestMapFrame:StripTextures()
	QuestMapFrame:CreateBackdrop("Overlay")
	QuestMapFrame.backdrop:ClearAllPoints()
	QuestMapFrame.backdrop:SetPoint("LEFT", WorldMapFrame.backdrop, "RIGHT", 2, 0)
	QuestMapFrame.backdrop:SetSize(326, 468)

	if T.newPatch then
		QuestScrollFrame.SettingsDropdown:ClearAllPoints()
		QuestScrollFrame.SettingsDropdown:SetPoint("TOPRIGHT", QuestMapFrameBackdrop, "TOPRIGHT", -5, -3)
	else
		QuestMapFrame.SettingsDropdown:ClearAllPoints()
		QuestMapFrame.SettingsDropdown:SetPoint("TOPRIGHT", QuestMapFrameBackdrop, "TOPRIGHT", -5, -3)
	end

	if T.newPatch then
		QuestScrollFrame:ClearAllPoints()
		QuestScrollFrame:SetPoint("TOPLEFT", QuestMapFrame.backdrop, "TOPLEFT", 0, -3)
		QuestScrollFrame:SetPoint("BOTTOMRIGHT", QuestMapFrame.backdrop, "BOTTOMRIGHT", 4, 0)
	else
		QuestScrollFrame:ClearAllPoints()
		QuestScrollFrame:SetPoint("TOP", WorldMapFrame.backdrop, "TOP", 0, -3)
		QuestScrollFrame:SetPoint("LEFT", WorldMapFrame.backdrop, "RIGHT", 4, 0)
		QuestScrollFrame:SetSize(259, 463)
	end
	QuestScrollFrame.Contents.Separator.Divider:Hide()
	QuestScrollFrame.Edge:Hide()
	QuestScrollFrame.Background:Hide()

	QuestScrollFrame.SearchBox:DisableDrawLayer("BACKGROUND")

	if not T.newPatch then
		local CampaignOverview = QuestMapFrame.CampaignOverview
		CampaignOverview:StripTextures()
		CampaignOverview.ScrollFrame:StripTextures()
		T.SkinScrollBar(CampaignOverview.ScrollFrame.ScrollBar)
		CampaignOverview:CreateBackdrop("Overlay")
		CampaignOverview.backdrop:SetPoint("TOPLEFT", CampaignOverview.Header, "TOPLEFT",  8, -2)
		CampaignOverview.backdrop:SetPoint("BOTTOMRIGHT", CampaignOverview.Header, "BOTTOMRIGHT", -4, 10)
		CampaignOverview.backdrop.overlay:SetVertexColor(1, 1, 1, 0.2)
		CampaignOverview.Header.Background:SetAlpha(0)
		CampaignOverview.Header.TopFiligree:Hide()
	end

	do
		local frame = QuestScrollFrame.Contents.StoryHeader
		frame:CreateBackdrop("Overlay")
		frame.backdrop:SetPoint("TOPLEFT", 6, -9)
		frame.backdrop:SetPoint("BOTTOMRIGHT", -6, 11)
		frame.HighlightTexture:SetAlpha(0)
		frame.Background:SetAlpha(0)
		frame.Divider:SetAlpha(0)
		frame.backdrop.overlay:SetVertexColor(1, 1, 1, 0.2)
	end

	if T.newPatch then
		QuestScrollFrame.ScrollBar:SetPoint("TOPLEFT", QuestScrollFrame, "TOPRIGHT", -21, -18)
		QuestScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", QuestScrollFrame, "BOTTOMRIGHT", -21, 15)
	else
		QuestScrollFrame.ScrollBar:SetPoint("TOPLEFT", QuestScrollFrame, "TOPRIGHT", 2, -18)
		QuestScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", QuestScrollFrame, "BOTTOMRIGHT", 2, 15)
	end
	T.SkinScrollBar(QuestScrollFrame.ScrollBar)

	local QuestScrollFrameTopBorder = CreateFrame("Frame", "$parentBorder", QuestScrollFrame)
	QuestScrollFrameTopBorder:CreateBackdrop("Overlay")
	QuestScrollFrameTopBorder.backdrop:ClearAllPoints()
	QuestScrollFrameTopBorder.backdrop:SetSize(326, 23)
	QuestScrollFrameTopBorder.backdrop:SetPoint("LEFT", WorldMapFrame.Header, "RIGHT", 2, 0)

	if not T.newPatch then
		local QuestScrollFrameTopBorder = CreateFrame("Frame", "$parentBorder", QuestMapFrame.CampaignOverview)
		QuestScrollFrameTopBorder:CreateBackdrop("Overlay")
		QuestScrollFrameTopBorder.backdrop:ClearAllPoints()
		QuestScrollFrameTopBorder.backdrop:SetSize(326, 23)
		QuestScrollFrameTopBorder.backdrop:SetPoint("LEFT", WorldMapFrame.Header, "RIGHT", 2, 0)
	end

	QuestMapFrame.DetailsFrame:ClearAllPoints()
	QuestMapFrame.DetailsFrame:SetPoint("TOPRIGHT", QuestMapFrame, "TOPRIGHT", -12, -1)
	QuestMapDetailsScrollFrame.ScrollBar:SetPoint("TOPLEFT", QuestMapDetailsScrollFrame, "TOPRIGHT", 1, -26)
	QuestMapDetailsScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", QuestMapDetailsScrollFrame, "BOTTOMLEFT", 13, 27)
	T.SkinScrollBar(QuestMapDetailsScrollFrame.ScrollBar)

	QuestScrollFrame.BorderFrame:StripTextures()

	QuestMapDetailsScrollFrame:SetHeight(340)
	QuestMapDetailsScrollFrame:SetPoint("TOPLEFT", QuestMapFrame.DetailsFrame, "TOPLEFT", 1, -35)

	QuestMapFrame.DetailsFrame:StripTextures()
	QuestMapFrame.DetailsFrame.RewardsFrameContainer.RewardsFrame:StripTextures()
	QuestMapFrame.DetailsFrame.Bg:Hide()

	QuestMapFrame.DetailsFrame.BackFrame:StripTextures()
	QuestMapFrame.DetailsFrame.BackFrame.BackButton:SkinButton()
	QuestMapFrame.DetailsFrame.BackFrame.BackButton:ClearAllPoints()
	QuestMapFrame.DetailsFrame.BackFrame.BackButton:SetPoint("LEFT", WorldMapFrame.Header, "RIGHT", 2, 0)
	QuestMapFrame.DetailsFrame.BackFrame.BackButton:SetSize(326, 23)

	local AbandonButton = QuestMapFrame.DetailsFrame.AbandonButton
	AbandonButton:SkinButton()
	AbandonButton:ClearAllPoints()
	AbandonButton:SetPoint("BOTTOMLEFT", QuestMapFrame.backdrop, "BOTTOMLEFT", 4, 4)

	local TrackButton = QuestMapFrame.DetailsFrame.TrackButton
	TrackButton:SkinButton()
	TrackButton:SetSize(90, 22)
	TrackButton:ClearAllPoints()
	TrackButton:SetPoint("BOTTOMRIGHT", QuestMapFrame.backdrop, "BOTTOMRIGHT", -4, 4)

	local ShareButton = QuestMapFrame.DetailsFrame.ShareButton
	ShareButton:SkinButton(true)
	ShareButton:ClearAllPoints()
	ShareButton:SetPoint("LEFT", AbandonButton, "RIGHT", 3, 0)
	ShareButton:SetPoint("RIGHT", TrackButton, "LEFT", -3, 0)

	-- Quests Buttons
	for i = 1, 2 do
		local button = i == 1 and WorldMapFrame.SidePanelToggle.CloseButton or WorldMapFrame.SidePanelToggle.OpenButton
		local texture = i == 1 and "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up" or "Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up"

		button:ClearAllPoints()
		button:SetPoint("BOTTOMRIGHT", -2, 2)
		button:SetSize(20, 20)
		button:StripTextures()
		button:SetTemplate("Default")
		button:StyleButton()

		button.icon = button:CreateTexture(nil, "BORDER")
		button.icon:SetTexture(texture)
		button.icon:SetTexCoord(0.3, 0.29, 0.3, 0.79, 0.65, 0.29, 0.65, 0.79)
		button.icon:ClearAllPoints()
		button.icon:SetPoint("TOPLEFT", 2, -2)
		button.icon:SetPoint("BOTTOMRIGHT", -2, 2)
	end

	WorldMapFrame.NavBar:Hide()
	WorldMapFrame.BorderFrame.TitleContainer.TitleText:ClearAllPoints()
	WorldMapFrame.BorderFrame.TitleContainer.TitleText:SetPoint("CENTER", WorldMapFrame.Header)

	T.SkinCloseButton(WorldMapFrameCloseButton)
	WorldMapFrameCloseButton:ClearAllPoints()
	WorldMapFrameCloseButton:SetPoint("RIGHT", WorldMapFrame.Header, "RIGHT", -4, 0)
	WorldMapFrameCloseButton:SetSize(15, 15)

	WorldMapFrame.BorderFrame.MaximizeMinimizeFrame.MaximizeButton:Kill()
	WorldMapFrame.BorderFrame.MaximizeMinimizeFrame.MinimizeButton:Kill()

	QuestMapFrame.MapLegend.BorderFrame:StripTextures()
	if not T.newPatch then
		QuestMapFrame.MapLegend.BackButton:SkinButton()
		QuestMapFrame.MapLegend.BackButton:ClearAllPoints()
		QuestMapFrame.MapLegend.BackButton:SetPoint("LEFT", WorldMapFrame.Header, "RIGHT", 2, 0)
		QuestMapFrame.MapLegend.BackButton:SetSize(326, 23)

		MapLegendScrollFrame.ScrollBar:SetPoint("TOPLEFT", MapLegendScrollFrame, "TOPRIGHT", 2, -18)
		MapLegendScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", MapLegendScrollFrame, "BOTTOMRIGHT", 2, 15)
	end

	if T.newPatch then
		MapLegendScrollFrame:ClearAllPoints()
		MapLegendScrollFrame:SetPoint("TOPLEFT", QuestMapFrame.backdrop, "TOPLEFT", 0, -3)
		MapLegendScrollFrame:SetPoint("BOTTOMRIGHT", QuestMapFrame.backdrop, "BOTTOMRIGHT", 4, 0)

		local MapLegendTopBorder = CreateFrame("Frame", "$parentBorder", QuestMapFrame.MapLegend)
		MapLegendTopBorder:CreateBackdrop("Overlay")
		MapLegendTopBorder.backdrop:ClearAllPoints()
		MapLegendTopBorder.backdrop:SetSize(326, 23)
		MapLegendTopBorder.backdrop:SetPoint("LEFT", WorldMapFrame.Header, "RIGHT", 2, 0)

		QuestMapFrame.MapLegend.TitleText:ClearAllPoints()
		QuestMapFrame.MapLegend.TitleText:SetPoint("CENTER", MapLegendTopBorder.backdrop)

		MapLegendScrollFrame.ScrollBar:SetPoint("TOPLEFT", MapLegendScrollFrame, "TOPRIGHT", -21, -18)
		MapLegendScrollFrame.ScrollBar:SetPoint("BOTTOMLEFT", MapLegendScrollFrame, "BOTTOMRIGHT", -21, 15)
	end

	MapLegendScrollFrame.Background:Hide()
	T.SkinScrollBar(MapLegendScrollFrame.ScrollBar)

	-- Floor Dropdown
	local function WorldMapFloorNavigationDropDown(frame)
		T.SkinDropDownBox(frame)
		frame:SetPoint("TOPLEFT", 6, -68)
	end

	-- Tracking Button
	local function WorldMapTrackingOptionsButton(button)
		local shadow = button:GetRegions()
		shadow:Hide()

		button.Background:Hide()
		-- button.IconOverlay:SetAlpha(0)
		button.Border:Hide()

		T.SkinCloseButton(button.ResetButton, nil, nil, true)
		button.ResetButton:SetSize(15, 15)
		button.ResetButton:ClearAllPoints()
		button.ResetButton:SetPoint("CENTER", button, "TOPRIGHT", -4, -4)

		local tex = button:GetHighlightTexture()
		tex:SetAtlas("Map-Filter-Button")
		tex:SetAllPoints(button.Icon)
	end

	-- Tracking Pin
	local function WorldMapTrackingPinButton(button)
		local shadow = button:GetRegions()
		shadow:Hide()

		button.Background:Hide()
		button.IconOverlay:SetAlpha(0)
		button.Border:Hide()

		local tex = button:GetHighlightTexture()
		tex:SetAtlas("Waypoint-MapPin-Untracked")
		tex:SetAllPoints(button.Icon)
	end

	-- Legend
	local function WorldMapLegendButton(button)
		local shadow = button:GetRegions()
		shadow:Hide()

		button.Background:Hide()
		button.IconOverlay:SetAlpha(0)
		button.Border:Hide()

		local tex = button:GetHighlightTexture()
		tex:SetAtlas("QuestNormal")
		tex:SetAllPoints(button.Icon)
	end

	local function HandyNotesButton(button)
		local shadow = button:GetRegions()
		shadow:Hide()

		button.Background:Hide()
		if button.IconOverlay then button.IconOverlay:SetAlpha(0) end
		button.Border:Hide()

		local tex = button:GetHighlightTexture()
		tex:SetAtlas(button.Icon:GetTexture())
		tex:SetAllPoints(button.Icon)
	end

	-- Elements
	WorldMapFloorNavigationDropDown(WorldMapFrame.overlayFrames[1])
	WorldMapTrackingOptionsButton(WorldMapFrame.overlayFrames[2])
	WorldMapTrackingPinButton(WorldMapFrame.overlayFrames[3])
	if not T.newPatch then
		WorldMapLegendButton(WorldMapFrame.overlayFrames[4])
	end

	for i = 1, 15 do
		local button = _G["Krowi_WorldMapButtons"..i]
		if button then
			HandyNotesButton(button)
		end
	end

	for i = 3, #WorldMapFrame.overlayFrames do
		local frame = WorldMapFrame.overlayFrames[i]
		if frame.BountyDropdownButton then
			T.SkinNextPrevButton(frame.BountyDropdownButton)
			break
		end
	end

	-- QuestSessionManagement skin (based on skin from Aurora)
	QuestMapFrame.QuestSessionManagement:StripTextures()

	local ExecuteSessionCommand = QuestMapFrame.QuestSessionManagement.ExecuteSessionCommand
	ExecuteSessionCommand:SetTemplate("Default")
	ExecuteSessionCommand:StyleButton()

	local icon = ExecuteSessionCommand:CreateTexture(nil, "ARTWORK")
	icon:SetPoint("TOPLEFT", 0, 0)
	icon:SetPoint("BOTTOMRIGHT", 0, 0)
	ExecuteSessionCommand.normalIcon = icon

	local sessionCommandToButtonAtlas = { -- Skin from Aurora
		[_G.Enum.QuestSessionCommand.Start] = "QuestSharing-DialogIcon",
		[_G.Enum.QuestSessionCommand.Stop] = "QuestSharing-Stop-DialogIcon"
	}

	hooksecurefunc(QuestMapFrame.QuestSessionManagement, "UpdateExecuteCommandAtlases", function(self, command)
		self.ExecuteSessionCommand:SetNormalTexture(0)
		self.ExecuteSessionCommand:SetPushedTexture(0)
		self.ExecuteSessionCommand:SetDisabledTexture(0)

		local atlas = sessionCommandToButtonAtlas[command]
		if atlas then
			self.ExecuteSessionCommand.normalIcon:SetAtlas(atlas)
		end
	end)

	hooksecurefunc(QuestSessionManager, "NotifyDialogShow", function(_, dialog)
		if not dialog.isSkinned then
			dialog:StripTextures()
			dialog:SetTemplate("Transparent")
			dialog.ButtonContainer.Confirm:SkinButton()
			dialog.ButtonContainer.Decline:SkinButton()
			if dialog.MinimizeButton then
				T.SkinCloseButton(dialog.MinimizeButton, nil, "-")
			end
			dialog.isSkinned = true
		end
	end)
end

tinsert(T.SkinFuncs["ShestakUI"], LoadSkin)
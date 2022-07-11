-- Instances:

local RobloxPromptGui = Instance.new("ScreenGui")
local promptOverlay = Instance.new("Frame")
local ErrorPrompt = Instance.new("Frame")
local PromptLayout = Instance.new("UIListLayout")
local PromptScale = Instance.new("UIScale")
local TitleFrame = Instance.new("Frame")
local TitleFramePadding = Instance.new("UIPadding")
local ErrorTitle = Instance.new("TextLabel")
local SplitLine = Instance.new("Frame")
local MessageArea = Instance.new("Frame")
local MessageAreaPadding = Instance.new("UIPadding")
local ErrorFrame = Instance.new("Frame")
local ErrorFrameLayout = Instance.new("UIListLayout")
local ErrorMessage = Instance.new("TextLabel")
local ButtonArea = Instance.new("Frame")
local ButtonLayout = Instance.new("UIGridLayout")
local LeaveButton = Instance.new("ImageButton")
local ButtonText = Instance.new("TextLabel")
local ShimmerFrame = Instance.new("ImageLabel")
local Shimmer = Instance.new("ImageLabel")
local ShimmerOverlay = Instance.new("ImageLabel")

--Properties:

RobloxPromptGui.Name = "RobloxPromptGui"
RobloxPromptGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RobloxPromptGui.DisplayOrder = 2147483647

promptOverlay.Name = "promptOverlay"
promptOverlay.Parent = RobloxPromptGui
promptOverlay.Active = true
promptOverlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
promptOverlay.BackgroundTransparency = 1.000
promptOverlay.Position = UDim2.new(0, 0, 0, -36)
promptOverlay.Size = UDim2.new(1, 0, 1, 36)

ErrorPrompt.Name = "ErrorPrompt"
ErrorPrompt.Parent = promptOverlay
ErrorPrompt.AnchorPoint = Vector2.new(0.5, 0.5)
ErrorPrompt.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
ErrorPrompt.BorderSizePixel = 0
ErrorPrompt.Position = UDim2.new(0.5, 0, 0.5, 0)
ErrorPrompt.Size = UDim2.new(0, 400, 0, 188)
ErrorPrompt.ZIndex = 8

PromptLayout.Name = "PromptLayout"
PromptLayout.Parent = ErrorPrompt
PromptLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PromptLayout.SortOrder = Enum.SortOrder.LayoutOrder

PromptScale.Name = "PromptScale"
PromptScale.Parent = ErrorPrompt

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = ErrorPrompt
TitleFrame.BackgroundTransparency = 1.000
TitleFrame.BorderSizePixel = 0
TitleFrame.LayoutOrder = 1
TitleFrame.Size = UDim2.new(1, 0, 0, 50)
TitleFrame.ZIndex = 8

TitleFramePadding.Name = "TitleFramePadding"
TitleFramePadding.Parent = TitleFrame
TitleFramePadding.PaddingBottom = UDim.new(0, 11)
TitleFramePadding.PaddingTop = UDim.new(0, 11)

ErrorTitle.Name = "ErrorTitle"
ErrorTitle.Parent = TitleFrame
ErrorTitle.BackgroundTransparency = 1.000
ErrorTitle.Size = UDim2.new(1, 0, 0, 28)
ErrorTitle.ZIndex = 8
ErrorTitle.Font = Enum.Font.SourceSansSemibold
ErrorTitle.Text = "Disconnected"
ErrorTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ErrorTitle.TextSize = 25.000

SplitLine.Name = "SplitLine"
SplitLine.Parent = ErrorPrompt
SplitLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SplitLine.BorderSizePixel = 0
SplitLine.LayoutOrder = 2
SplitLine.Size = UDim2.new(1, -40, 0, 1)
SplitLine.ZIndex = 8

MessageArea.Name = "MessageArea"
MessageArea.Parent = ErrorPrompt
MessageArea.BackgroundTransparency = 1.000
MessageArea.BorderSizePixel = 0
MessageArea.LayoutOrder = 3
MessageArea.Size = UDim2.new(1, 0, 1, -51)
MessageArea.ZIndex = 8

MessageAreaPadding.Name = "MessageAreaPadding"
MessageAreaPadding.Parent = MessageArea
MessageAreaPadding.PaddingBottom = UDim.new(0, 20)
MessageAreaPadding.PaddingLeft = UDim.new(0, 20)
MessageAreaPadding.PaddingRight = UDim.new(0, 20)
MessageAreaPadding.PaddingTop = UDim.new(0, 20)

ErrorFrame.Name = "ErrorFrame"
ErrorFrame.Parent = MessageArea
ErrorFrame.BackgroundTransparency = 1.000
ErrorFrame.Size = UDim2.new(1, 0, 1, 0)
ErrorFrame.ZIndex = 8

ErrorFrameLayout.Name = "ErrorFrameLayout"
ErrorFrameLayout.Parent = ErrorFrame
ErrorFrameLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ErrorFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder
ErrorFrameLayout.Padding = UDim.new(0, 20)

ErrorMessage.Name = "ErrorMessage"
ErrorMessage.Parent = ErrorFrame
ErrorMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ErrorMessage.BackgroundTransparency = 1.000
ErrorMessage.LayoutOrder = 1
ErrorMessage.Size = UDim2.new(1, 0, 1, -56)
ErrorMessage.ZIndex = 8
ErrorMessage.Font = Enum.Font.SourceSans
ErrorMessage.Text = "Failed to get user data: Please Rejoin Server!\n(Error Code: 987)"
ErrorMessage.TextColor3 = Color3.fromRGB(188, 189, 189)
ErrorMessage.TextSize = 20.000
ErrorMessage.TextWrapped = true

ButtonArea.Name = "ButtonArea"
ButtonArea.Parent = ErrorFrame
ButtonArea.BackgroundTransparency = 1.000
ButtonArea.LayoutOrder = 2
ButtonArea.Size = UDim2.new(1, 0, 0, 36)
ButtonArea.ZIndex = 8

ButtonLayout.Name = "ButtonLayout"
ButtonLayout.Parent = ButtonArea
ButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder
ButtonLayout.VerticalAlignment = Enum.VerticalAlignment.Center
ButtonLayout.CellPadding = UDim2.new(0, 10, 0, 0)
ButtonLayout.CellSize = UDim2.new(0, 360, 0, 36)

LeaveButton.Name = "LeaveButton"
LeaveButton.Parent = ButtonArea
LeaveButton.AnchorPoint = Vector2.new(0.5, 0.5)
LeaveButton.BackgroundTransparency = 1.000
LeaveButton.LayoutOrder = 1
LeaveButton.Size = UDim2.new(1, 0, 1, 0)
LeaveButton.ZIndex = 8
LeaveButton.Image = "rbxasset://textures/ui/ErrorPrompt/PrimaryButton.png"
LeaveButton.ScaleType = Enum.ScaleType.Slice
LeaveButton.SliceCenter = Rect.new(8, 8, 9, 9)

ButtonText.Name = "ButtonText"
ButtonText.Parent = LeaveButton
ButtonText.BackgroundTransparency = 1.000
ButtonText.Size = UDim2.new(1, 0, 1, 0)
ButtonText.ZIndex = 8
ButtonText.Font = Enum.Font.SourceSans
ButtonText.Text = "Rejoin"
ButtonText.TextColor3 = Color3.fromRGB(35, 37, 39)
ButtonText.TextSize = 20.000

ShimmerFrame.Name = "ShimmerFrame"
ShimmerFrame.Parent = LeaveButton
ShimmerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ShimmerFrame.BackgroundTransparency = 1.000
ShimmerFrame.BorderSizePixel = 0
ShimmerFrame.ClipsDescendants = true
ShimmerFrame.Size = UDim2.new(1, 0, 1, 0)
ShimmerFrame.Visible = false
ShimmerFrame.ZIndex = 8

Shimmer.Name = "Shimmer"
Shimmer.Parent = ShimmerFrame
Shimmer.BackgroundTransparency = 1.000
Shimmer.BorderSizePixel = 0
Shimmer.Position = UDim2.new(-1, 0, 0, 0)
Shimmer.Size = UDim2.new(1, 0, 2, 0)
Shimmer.ZIndex = 8
Shimmer.Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png"
Shimmer.ImageTransparency = 1.000

ShimmerOverlay.Name = "ShimmerOverlay"
ShimmerOverlay.Parent = ShimmerFrame
ShimmerOverlay.BackgroundTransparency = 1.000
ShimmerOverlay.BorderSizePixel = 0
ShimmerOverlay.Size = UDim2.new(1, 0, 1, 0)
ShimmerOverlay.ZIndex = 9
ShimmerOverlay.Image = "rbxasset://textures/ui/ErrorPrompt/ShimmerOverlay.png"
ShimmerOverlay.ImageColor3 = Color3.fromRGB(57, 59, 61)
ShimmerOverlay.ImageTransparency = 1.000
ShimmerOverlay.ScaleType = Enum.ScaleType.Slice
ShimmerOverlay.SliceCenter = Rect.new(8, 8, 9, 9)

-- Scripts:

local function UQOKF_fake_script() -- LeaveButton.LocalScript 
	local script = Instance.new('LocalScript', LeaveButton)

	LeaveButton.MouseButton1Down:Connect(function()
		local __a = game:GetService("TeleportService")
		local __b = game.PlaceId
		local __c = game:GetService("Players")['LocalPlayer']
		__a:Teleport(__b,__c)
	end)
end
coroutine.wrap(UQOKF_fake_script)()
local function MJLA_fake_script() -- RobloxPromptGui.SetKickEffect 
	local script = Instance.new('LocalScript', RobloxPromptGui)

	local __a = Instance.new("BlurEffect")
	__a.Parent = game:GetService("Lighting")
	__a.Size = 24
	local __b = game:GetService("Players")['LocalPlayer']
	while true do
		wait()
		__b.Character.Humanoid.WalkSpeed = 0
		__b.Character.Humanoid.JumpPower = -100
	end
end
coroutine.wrap(MJLA_fake_script)()
local function PCQPV_fake_script() -- RobloxPromptGui.DisableRobloxGui 
	local script = Instance.new('LocalScript', RobloxPromptGui)

	game.StarterGui:SetCoreGuiEnabled(4,false)
end
coroutine.wrap(PCQPV_fake_script)()

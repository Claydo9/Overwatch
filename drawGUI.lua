local player = game:GetService( "Players" ).LocalPlayer
local playerGui = player.PlayerGui

local gui = Instance.new( "ScreenGui" )
gui.Name = "drawGUI"

local Container = Instance.new( "Frame", gui )
Container.Name = "Container"
Container.BackgroundColor3 = Color3.fromRGB( 36, 36, 36 )
Container.Position = UDim2.new( 0.025, 0, 0.673, 0 )
Container.Size = UDim2.new( 0.3, 0, 0.3, 0 )
Container.ZIndex = 2
Container.BorderSizePixel = 0

local Outline = Instance.new( "Frame", gui )
Outline.Name = "Outline"
Outline.ZIndex = 1
Outline.BorderColor3 = Color3.fromRGB( 150, 150, 150 )
Outline.BorderSizePixel = 3

local UIGradient = Instance.new( "UIGradient", Container )
UIgradient.Name = "UIGradient"
UIGradient.ColorSequence = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(93, 93, 93)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 45

local Divider = Instance.new( "Frame", Container )
Divider.Name = "Divider"
Divider.Position = UDim2.new( 0.305, 0, 0, 0 )
Divider.Size = UDim2.new( 0.002, 0, 1, 0 )
Divider.BackgroundColor3 = Color3.fromRGB( 150, 150, 150 )
Divider.BorderSizePixel = 0

local StatusContainer = Instance.new( "ScrollingFrame", Container )
StatusContainer.Name = "StatusContainer"
StatusContainer.Size = UDim2.new( 0.3, 0, 1, 0 )
StatusContainer.BackgroundTransparency = 1 
StatusContainer.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
StatusContainer.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
StatusContainer.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
StatusContainer.ScrollBarImageColor3 = Color3.fromRGB( 255, 255, 255 )
StatusContainer.ScrollBarThickness = 5
StatusContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
StatusContainer.BorderSizePixel = 0
StatusContainer.ScrollingDirection = Enum.ScrollingDirection.Y

local UIGridLayout = Instance.new( "UIGridLayout", StatusContainer )
UIGridLayout.CellPadding = UDim2.new( 0.005, 0, 0.01, 0 )
UIGridLayout.CellSize = UDim2.new( 0.99, 0, 0.1, 0 )
UIGridLayout.FillDirection = Enum.FillDirection.Vertical

local UIPadding = Instance.new( "UIPadding", StatusContainer )
UIPadding.PaddingBottom = UDim.new( 0.005, 0 )
UIPadding.PaddingLeft = UDim.new( 0.02, 0 )
UIPadding.PaddingRight = UDim.new( 0.02, 0 )
UIPadding.PaddingTop = UDim.new( 0.005, 0 )

-- Tempalte

local TemplateStatus = Instance.new( "Frame", StatusContainer )
TemplateStatus.Name = "TemplateStatus"
TemplateStatus.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
TemplateStatus.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
TemplateStatus.BorderSizePixel = 1

local Indicator = Instance.new( "Frame", TemplateStatus )
Indicator.Name = "Indicator"
Indicator.Size = UDim2.new( 0.1, 0, 0.8, 0 )
Indicator.Position = UDim2.new( 0.013, 0, 0.095, 0 )
Indicator.BackgroundColor3 = Color3.fromRGB( 200, 0, 0 )
Indicator.BorderSizePixel = 0

local StatusToggle = Instance.new( "TextButton", TemplateStatus )
StatusToggle.Name = "StatusToggle"
StatusToggle.BackgroundTransparency = 1
StatusToggle.TextTransparency = 1
StatusToggle.ZIndex = 5
StatusToggle.BorderSizePixel = 0
StatusToggle.Size = UDim2.new( 1, 0, 1, 0 )

local StatusName = Instance.new( "TextLabel", TemplateStatus )
StatusName.Name = "StatusName"
StatusName.Text = "Status"
StatusName.Size = UDim2.new( 0.8, 0, 1, 0 )
StatusName.Position = UDim2.new( 0.2, 0, 0, 0 )
StatusName.Font = Enum.Font.Arial
StatusName.TextSize = 20
StatusName.TextColor = Color3.fromRGB( 255, 255, 255 )
StatusName.TextXAlignment = Enum.TextXAlignment.Left
StatusName.TextWrapped = true

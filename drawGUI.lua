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

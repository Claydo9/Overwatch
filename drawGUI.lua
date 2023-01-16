
getgenv().Overwatch.gui = {}
getgenv().Overwatch.gui.Father = Instance.new( "ScreenGui" )
print("test")
getgenv().Overwatch.gui.Father.Name = "drawGUI"

getgenv().Overwatch.gui.Container = Instance.new( "Frame", getgenv().Overwatch.gui.Father )
getgenv().Overwatch.gui.Container.Name = "Container"
getgenv().Overwatch.gui.Container.BackgroundColor3 = Color3.fromRGB( 36, 36, 36 )
getgenv().Overwatch.gui.Container.Position = UDim2.new( 0.025, 0, 0.673, 0 )
getgenv().Overwatch.gui.Container.Size = UDim2.new( 0.3, 0, 0.3, 0 )
getgenv().Overwatch.gui.Container.ZIndex = 2
getgenv().Overwatch.gui.Container.BorderSizePixel = 0

getgenv().Overwatch.gui.Outline = Instance.new( "Frame", getgenv().Overwatch.gui.Father )
getgenv().Overwatch.gui.Outline.Name = "Outline"
getgenv().Overwatch.gui.Outline.ZIndex = 1
getgenv().Overwatch.gui.Outline.BorderColor3 = Color3.fromRGB( 150, 150, 150 )
getgenv().Overwatch.gui.Outline.BorderSizePixel = 3

getgenv().Overwatch.gui.UIGradient = Instance.new( "UIGradient", getgenv().Overwatch.gui.Container )
getgenv().Overwatch.gui.UIGradient.Name = "UIGradient"
getgenv().Overwatch.gui.UIGradient.ColorSequence = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(93, 93, 93)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
getgenv().Overwatch.gui.UIGradient.Rotation = 45

getgenv().Overwatch.gui.Divider = Instance.new( "Frame", getgenv().Overwatch.gui.Container )
getgenv().Overwatch.gui.Divider.Name = "Divider"
getgenv().Overwatch.gui.Divider.Position = UDim2.new( 0.305, 0, 0, 0 )
getgenv().Overwatch.gui.Divider.Size = UDim2.new( 0.002, 0, 1, 0 )
getgenv().Overwatch.gui.Divider.BackgroundColor3 = Color3.fromRGB( 150, 150, 150 )
getgenv().Overwatch.gui.Divider.BorderSizePixel = 0

getgenv().Overwatch.gui.StatusContainer = Instance.new( "ScrollingFrame", getgenv().Overwatch.gui.Container )
getgenv().Overwatch.gui.StatusContainer.Name = "StatusContainer"
getgenv().Overwatch.gui.StatusContainer.Size = UDim2.new( 0.3, 0, 1, 0 )
getgenv().Overwatch.gui.StatusContainer.BackgroundTransparency = 1 
getgenv().Overwatch.gui.StatusContainer.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
getgenv().Overwatch.gui.StatusContainer.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
getgenv().Overwatch.gui.StatusContainer.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
getgenv().Overwatch.gui.StatusContainer.ScrollBarImageColor3 = Color3.fromRGB( 255, 255, 255 )
getgenv().Overwatch.gui.StatusContainer.ScrollBarThickness = 5
getgenv().Overwatch.gui.StatusContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
getgenv().Overwatch.gui.StatusContainer.BorderSizePixel = 0
getgenv().Overwatch.gui.StatusContainer.ScrollingDirection = Enum.ScrollingDirection.Y

getgenv().Overwatch.gui.UIGridLayout = Instance.new( "UIGridLayout", getgenv().Overwatch.gui.StatusContainer )
getgenv().Overwatch.gui.UIGridLayout.CellPadding = UDim2.new( 0.005, 0, 0.01, 0 )
getgenv().Overwatch.gui.UIGridLayout.CellSize = UDim2.new( 0.99, 0, 0.1, 0 )
getgenv().Overwatch.gui.UIGridLayout.FillDirection = Enum.FillDirection.Vertical

getgenv().Overwatch.gui.UIPadding = Instance.new( "UIPadding", getgenv().Overwatch.gui.StatusContainer )
getgenv().Overwatch.gui.UIPadding.PaddingBottom = UDim.new( 0.005, 0 )
getgenv().Overwatch.gui.UIPadding.PaddingLeft = UDim.new( 0.02, 0 )
getgenv().Overwatch.gui.UIPadding.PaddingRight = UDim.new( 0.02, 0 )
getgenv().Overwatch.gui.UIPadding.PaddingTop = UDim.new( 0.005, 0 )

-- Tempalte

getgenv().Overwatch.gui.TemplateStatus = Instance.new( "Frame", game:GetService("ReplicatedStorage") )
getgenv().Overwatch.gui.TemplateStatus.Name = "TemplateStatus"
getgenv().Overwatch.gui.TemplateStatus.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
getgenv().Overwatch.gui.TemplateStatus.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
getgenv().Overwatch.gui.TemplateStatus.BorderSizePixel = 1

getgenv().Overwatch.gui.Indicator = Instance.new( "Frame", getgenv().Overwatch.gui.TemplateStatus )
getgenv().Overwatch.gui.Indicator.Name = "Indicator"
getgenv().Overwatch.gui.Indicator.Size = UDim2.new( 0.1, 0, 0.8, 0 )
getgenv().Overwatch.gui.Indicator.Position = UDim2.new( 0.013, 0, 0.095, 0 )
getgenv().Overwatch.gui.Indicator.BackgroundColor3 = Color3.fromRGB( 200, 0, 0 )
getgenv().Overwatch.gui.Indicator.BorderSizePixel = 0

getgenv().Overwatch.gui.StatusToggle = Instance.new( "TextButton", getgenv().Overwatch.gui.TemplateStatus )
getgenv().Overwatch.gui.StatusToggle.Name = "StatusToggle"
getgenv().Overwatch.gui.StatusToggle.BackgroundTransparency = 1
getgenv().Overwatch.gui.StatusToggle.TextTransparency = 1
getgenv().Overwatch.gui.StatusToggle.ZIndex = 5
getgenv().Overwatch.gui.StatusToggle.BorderSizePixel = 0
getgenv().Overwatch.gui.StatusToggle.Size = UDim2.new( 1, 0, 1, 0 )

getgenv().Overwatch.gui.StatusName = Instance.new( "TextLabel", getgenv().Overwatch.gui.TemplateStatus )
getgenv().Overwatch.gui.StatusName.Name = "StatusName"
getgenv().Overwatch.gui.StatusName.Text = "Status"
getgenv().Overwatch.gui.StatusName.Size = UDim2.new( 0.8, 0, 1, 0 )
getgenv().Overwatch.gui.StatusName.Position = UDim2.new( 0.2, 0, 0, 0 )
getgenv().Overwatch.gui.StatusName.Font = Enum.Font.Arial
getgenv().Overwatch.gui.StatusName.TextSize = 20
getgenv().Overwatch.gui.StatusName.TextColor = Color3.fromRGB( 255, 255, 255 )
getgenv().Overwatch.gui.StatusName.TextXAlignment = Enum.TextXAlignment.Left
getgenv().Overwatch.gui.StatusName.TextWrapped = true

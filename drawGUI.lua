getgenv().Overwatch.gui = {
    Father = Instance.new( "ScreenGui", game:GetService( "Players" ).LocalPlayer.PlayerGui ),
    Container = Instance.new( "Frame", getgenv().Overwatch.gui.Father ),
    Outline = Instance.new( "Frame", getgenv().Overwatch.gui.Father ),
    UIGradient = Instance.new( "UIGradient", getgenv().Overwatch.gui.Container ),
    Divider = Instance.new( "Frame", getgenv().Overwatch.gui.Container ),
    StatusContainer = Instance.new( "ScrollingFrame", getgenv().Overwatch.gui.Container ),
    UIGridLayout = Instance.new( "UIGridLayout", getgenv().Overwatch.gui.StatusContainer ),
    UIPadding = Instance.new( "UIPadding", getgenv().Overwatch.gui.StatusContainer ),
    TemplateStatus = Instance.new( "Frame", game:GetService("ReplicatedStorage") ),
    Indicator = Instance.new( "Frame", getgenv().Overwatch.gui.TemplateStatus ),
    StatusToggle = Instance.new( "TextButton", getgenv().Overwatch.gui.TemplateStatus ),
    StatusName = Instance.new( "TextLabel", getgenv().Overwatch.gui.TemplateStatus )
}

local function setupGUI()
    local gui = getgenv().Overwatch.gui
    gui.Father.Name = "drawGUI"
    gui.Father.ResetOnSpawn = false

    gui.Container.Name = "Container"
    gui.Container.BackgroundColor3 = Color3.fromRGB( 36, 36, 36 )
    gui.Container.Position = UDim2.new( 0.025, 0, 0.673, 0 )
    gui.Container.Size = UDim2.new( 0.3, 0, 0.3, 0 )
    gui.Container.ZIndex = 2
    gui.Container.BorderSizePixel = 0

    gui.Outline.Name = "Outline"
    gui.Outline.ZIndex = 1
    gui.Outline.BorderColor3 = Color3.fromRGB( 150, 150, 150 )
    gui.Outline.BorderSizePixel = 3

    gui.UIGradient.Name = "UIGradient"
    gui.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(93, 93, 93)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
    gui.UIGradient.Rotation = 45

    gui.Divider.Name = "Divider"
    gui.Divider.Position = UDim2.new( 0.305, 0, 0, 0 )
    gui.Divider.Size = UDim2.new( 0.002, 0, 1, 0 )
    gui.Divider.BackgroundColor3 = Color3.fromRGB( 150, 150, 150 )
    gui.Divider.BorderSizePixel = 0
    gui.Divider.ZIndex = 2

    gui.StatusContainer.Name = "StatusContainer"
    gui.StatusContainer.Size = UDim2.new( 0.3, 0, 1, 0 )
    gui.StatusContainer.BackgroundTransparency = 1 
    gui.StatusContainer.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    gui.StatusContainer.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    gui.StatusContainer.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    gui.StatusContainer.ScrollBarImageColor3 = Color3.fromRGB( 255, 255, 255 )
    gui.StatusContainer.ScrollBarThickness = 5
    gui.StatusContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
    gui.StatusContainer.BorderSizePixel = 0
    gui.StatusContainer.ScrollingDirection = Enum.ScrollingDirection.Y
    gui.StatusContainer.ZIndex = 2

    gui.UIGridLayout.CellPadding = UDim2.new( 0.005, 0, 0.01, 0 )
    gui.UIGridLayout.CellSize = UDim2.new( 0.99, 0, 0.1, 0 )
    gui.UIGridLayout.FillDirection = Enum.FillDirection.Vertical

    gui.UIPadding.PaddingBottom = UDim.new( 0.005, 0 )
    gui.UIPadding.PaddingLeft = UDim.new( 0.02, 0 )
    gui.UIPadding.PaddingRight = UDim.new( 0.02, 0 )
    gui.UIPadding.PaddingTop = UDim.new( 0.005, 0 )

    -- Tempalte

    gui.TemplateStatus.Name = "TemplateStatus"
    gui.TemplateStatus.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    gui.TemplateStatus.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
    gui.TemplateStatus.BorderSizePixel = 1
    gui.TemplateStatus.ZIndex = 2

    gui.Indicator.Name = "Indicator"
    gui.Indicator.Size = UDim2.new( 0.1, 0, 0.8, 0 )
    gui.Indicator.Position = UDim2.new( 0.013, 0, 0.095, 0 )
    gui.Indicator.BackgroundColor3 = Color3.fromRGB( 200, 0, 0 )
    gui.Indicator.BorderSizePixel = 0
    gui.Indicator.ZIndex = 2

    gui.StatusToggle.Name = "StatusToggle"
    gui.StatusToggle.BackgroundTransparency = 1
    gui.StatusToggle.TextTransparency = 1
    gui.StatusToggle.ZIndex = 5
    gui.StatusToggle.BorderSizePixel = 0
    gui.StatusToggle.Size = UDim2.new( 1, 0, 1, 0 )
    gui.StatusToggle.ZIndex = 2

    gui.StatusName.Name = "StatusName"
    gui.StatusName.Text = "Status"
    gui.StatusName.Size = UDim2.new( 0.8, 0, 1, 0 )
    gui.StatusName.Position = UDim2.new( 0.2, 0, 0, 0 )
    gui.StatusName.Font = Enum.Font.Arial
    gui.StatusName.TextSize = 20
    gui.StatusName.TextColor = Color3.fromRGB( 255, 255, 255 )
    gui.StatusName.TextXAlignment = Enum.TextXAlignment.Left
    gui.StatusName.TextWrapped = true
    gui.StatusName.ZIndex = 2
end
setupGUI()

pcall( function()
    getgenv().Overwatch.Functions:Exit()
end )

getgenv().Overwatch = {}
getgenv().Overwatch.Functions = {}
getgenv().Overwatch.Connections = {}
getgenv().Overwatch.gui = {}
local Overwatch = getgenv().Overwatch
local Functions = Overwatch.Functions
local Connections = Overwatch.Connections
local Gui = Overwatch.gui

local player = game:GetService( "Players" ).LocalPlayer
local playerGui = player.PlayerGui 

local function setupGUI()
    local templates = Instance.new( "Folder", game:GetService( "ReplicatedStorage" ) )
    templates.Name = "Templates"

    Gui = {}
    Gui.Father = Instance.new( "ScreenGui", game:GetService( "Players" ).LocalPlayer.PlayerGui )
    Gui.Father.Name = "drawGUI"
    Gui.Father.ResetOnSpawn = false

    Gui.Container = Instance.new( "Frame", Gui.Father )
    Gui.Container.Name = "Container"

    Gui.Container.BackgroundColor3 = Color3.fromRGB( 36, 36, 36 )
    Gui.Container.Position = UDim2.new( 0.025, 0, 0.673, 0 )
    Gui.Container.Size = UDim2.new( 0.3, 0, 0.3, 0 )
    Gui.Container.ZIndex = 2
    Gui.Container.BorderSizePixel = 0
    Gui.Outline = Instance.new( "Frame", Gui.Father )
    Gui.Outline.Name = "Outline"
    Gui.Outline.ZIndex = 1
    Gui.Outline.Size = UDim2.new( 0.3, 0, 0.3, 0 )
    Gui.Outline.Position = UDim2.new( 0.025, 0, 0.673, 0 )
    Gui.Outline.BorderColor3 = Color3.fromRGB( 150, 150, 150 )
    Gui.Outline.BorderSizePixel = 3
    Gui.UIGradient = Instance.new( "UIGradient", Gui.Container )
    Gui.UIGradient.Name = "UIGradient"
    Gui.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(93, 93, 93)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
    Gui.UIGradient.Rotation = 45
    Gui.Divider = Instance.new( "Frame", Gui.Container )
    Gui.Divider.Name = "Divider"
    Gui.Divider.Position = UDim2.new( 0.305, 0, 0, 0 )
    Gui.Divider.Size = UDim2.new( 0.002, 0, 1, 0 )
    Gui.Divider.BackgroundColor3 = Color3.fromRGB( 150, 150, 150 )
    Gui.Divider.BorderSizePixel = 0
    Gui.Divider.ZIndex = 2
    Gui.BUTTON_CONTAINER = Instance.new( "ScrollingFrame", Gui.Container )
    Gui.BUTTON_CONTAINER.Name = "BUTTON_CONTAINER"
    Gui.BUTTON_CONTAINER.Size = UDim2.new( 0.3, 0, 1, 0 )
    Gui.BUTTON_CONTAINER.BackgroundTransparency = 1 
    Gui.BUTTON_CONTAINER.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.BUTTON_CONTAINER.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.BUTTON_CONTAINER.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.BUTTON_CONTAINER.ScrollBarImageColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.BUTTON_CONTAINER.ScrollBarThickness = 5
    Gui.BUTTON_CONTAINER.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Gui.BUTTON_CONTAINER.BorderSizePixel = 0
    Gui.BUTTON_CONTAINER.ScrollingDirection = Enum.ScrollingDirection.Y
    Gui.BUTTON_CONTAINER.ZIndex = 2
    Gui.UIGridLayout = Instance.new( "UIGridLayout", Gui.BUTTON_CONTAINER )
    Gui.UIGridLayout.CellPadding = UDim2.new( 0.005, 0, 0.01, 0 )
    Gui.UIGridLayout.CellSize = UDim2.new( 0.99, 0, 0.1, 0 )
    Gui.UIGridLayout.FillDirection = Enum.FillDirection.Horizontal
    Gui.UIPadding = Instance.new( "UIPadding", Gui.BUTTON_CONTAINER )
    Gui.UIPadding.PaddingBottom = UDim.new( 0.005, 0 )
    Gui.UIPadding.PaddingLeft = UDim.new( 0.02, 0 )
    Gui.UIPadding.PaddingRight = UDim.new( 0.02, 0 )
    Gui.UIPadding.PaddingTop = UDim.new( 0.005, 0 )

    -- Template Toggle Button
    Gui.TOGGLE_BUTTON = Instance.new( "Frame", templates )
    Gui.TOGGLE_BUTTON.Name = "TOGGLE_BUTTON"
    Gui.TOGGLE_BUTTON.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    Gui.TOGGLE_BUTTON.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
    Gui.TOGGLE_BUTTON.BorderSizePixel = 1
    Gui.TOGGLE_BUTTON.ZIndex = 2
    Gui.TOGGLE_BUTTON_INDICATOR = Instance.new( "Frame", Gui.TOGGLE_BUTTON )
    Gui.TOGGLE_BUTTON_INDICATOR.Name = "TOGGLE_BUTTON_INDICATOR"
    Gui.TOGGLE_BUTTON_INDICATOR.Size = UDim2.new( 0.1, 0, 0.8, 0 )
    Gui.TOGGLE_BUTTON_INDICATOR.Position = UDim2.new( 0.013, 0, 0.095, 0 )
    Gui.TOGGLE_BUTTON_INDICATOR.BackgroundColor3 = Color3.fromRGB( 200, 0, 0 )
    Gui.TOGGLE_BUTTON_INDICATOR.BorderSizePixel = 0
    Gui.TOGGLE_BUTTON_INDICATOR.ZIndex = 2
    Gui.TOGGLE_BUTTON_BUTTON_INT = Instance.new( "TextButton", Gui.TOGGLE_BUTTON )
    Gui.TOGGLE_BUTTON_BUTTON_INT.Name = "TOGGLE_BUTTON_INTERNAL"
    Gui.TOGGLE_BUTTON_BUTTON_INT.BackgroundTransparency = 1
    Gui.TOGGLE_BUTTON_BUTTON_INT.TextTransparency = 1
    Gui.TOGGLE_BUTTON_BUTTON_INT.ZIndex = 5
    Gui.TOGGLE_BUTTON_BUTTON_INT.BorderSizePixel = 0
    Gui.TOGGLE_BUTTON_BUTTON_INT.Size = UDim2.new( 1, 0, 1, 0 )
    Gui.TOGGLE_BUTTON_BUTTON_INT.ZIndex = 2
    Gui.TOGGLE_BUTTON_TEXT = Instance.new( "TextLabel", Gui.TOGGLE_BUTTON )
    Gui.TOGGLE_BUTTON_TEXT.Name = "TOGGLE_BUTTON_TEXT"
    Gui.TOGGLE_BUTTON_TEXT.Text = "Text"
    Gui.TOGGLE_BUTTON_TEXT.Size = UDim2.new( 0.8, 0, 1, 0 )
    Gui.TOGGLE_BUTTON_TEXT.Position = UDim2.new( 0.2, 0, 0, 0 )
    Gui.TOGGLE_BUTTON_TEXT.Font = Enum.Font.Arial
    Gui.TOGGLE_BUTTON_TEXT.TextSize = 20
    Gui.TOGGLE_BUTTON_TEXT.BackgroundTransparency = 1
    Gui.TOGGLE_BUTTON_TEXT.TextColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.TOGGLE_BUTTON_TEXT.TextXAlignment = Enum.TextXAlignment.Center
    Gui.TOGGLE_BUTTON_TEXT.TextWrapped = true
    Gui.TOGGLE_BUTTON_TEXT.ZIndex = 2

    -- Template Push Button
    Gui.PUSH_BUTTON = Instance.new( "Frame", templates )
    Gui.PUSH_BUTTON.Name = "PUSH_BUTTON"
    Gui.PUSH_BUTTON.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    Gui.PUSH_BUTTON.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
    Gui.PUSH_BUTTON.BorderSizePixel = 1
    Gui.PUSH_BUTTON.ZIndex = 2
    Gui.PUSH_BUTTON_BUTTON_INT = Instance.new( "TextButton", Gui.PUSH_BUTTON )
    Gui.PUSH_BUTTON_BUTTON_INT.Name = "PUSH_BUTTON_INTERNAL"
    Gui.PUSH_BUTTON_BUTTON_INT.BackgroundTransparency = 1
    Gui.PUSH_BUTTON_BUTTON_INT.TextTransparency = 1
    Gui.PUSH_BUTTON_BUTTON_INT.ZIndex = 5
    Gui.PUSH_BUTTON_BUTTON_INT.BorderSizePixel = 0
    Gui.PUSH_BUTTON_BUTTON_INT.Size = UDim2.new( 1, 0, 1, 0 )
    Gui.PUSH_BUTTON_BUTTON_INT.ZIndex = 5
    Gui.PUSH_BUTTON_TEXT = Instance.new( "TextLabel", Gui.PUSH_BUTTON )
    Gui.PUSH_BUTTON_TEXT.Name = "PUSH_BUTTON_TEXT"
    Gui.PUSH_BUTTON_TEXT.Text = "Text"
    Gui.PUSH_BUTTON_TEXT.Size = UDim2.new( 0.8, 0, 0.8, 0 )
    Gui.PUSH_BUTTON_TEXT.Position = UDim2.new( 0.1, 0, 0.125, 0 )
    Gui.PUSH_BUTTON_TEXT.Font = Enum.Font.Arial
    Gui.PUSH_BUTTON_TEXT.TextSize = 20
    Gui.PUSH_BUTTON_TEXT.BackgroundTransparency = 0
    Gui.PUSH_BUTTON_TEXT.BackgroundColor3 = Color3.fromRGB( 31, 31, 31 )
    Gui.PUSH_BUTTON_TEXT.TextColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.PUSH_BUTTON_TEXT.TextXAlignment = Enum.TextXAlignment.Center
    Gui.PUSH_BUTTON_TEXT.TextWrapped = true
    Gui.PUSH_BUTTON_TEXT.ZIndex = 2   
    Gui.PUSH_BUTTON_CORNER = Instance.new( "UICorner", Gui.PUSH_BUTTON_TEXT )
    Gui.PUSH_BUTTON_CORNER.CornerRadius = UDim.new( 0, 7 )

    -- Template Text Box
    Gui.TEXT_BOX = Instance.new( "Frame", templates )
    Gui.TEXT_BOX.Name = "TEXT_BOX"
    Gui.TEXT_BOX.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    Gui.TEXT_BOX.BorderColor3 = Color3.fromRGB( 198 ,198 ,198 )
    Gui.TEXT_BOX.BorderSizePixel = 1
    Gui.TEXT_BOX.ZIndex = 2
    Gui.TEXT_BOX_INT = Instance.new( "TextBox", Gui.TEXT_BOX )
    Gui.TEXT_BOX_INT.Name = "TEXT_BOX_INTERNAL"
    Gui.TEXT_BOX_INT.Text = "Input Text"
    Gui.TEXT_BOX_INT.Size = UDim2.new( 0.95, 0, 0.8, 0 )
    Gui.TEXT_BOX_INT.Position = UDim2.new( 0.025, 0, 0.1, 0 )
    Gui.TEXT_BOX_INT.Font = Enum.Font.Arial
    Gui.TEXT_BOX_INT.TextSize = 20
    Gui.TEXT_BOX_INT.BackgroundTransparency = 0
    Gui.TEXT_BOX_INT.BorderSizePixel = 0
    Gui.TEXT_BOX_INT.BackgroundColor3 = Color3.fromRGB( 31, 31, 31 )
    Gui.TEXT_BOX_INT.TextColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.TEXT_BOX_INT.TextXAlignment = Enum.TextXAlignment.Center
    Gui.TEXT_BOX_INT.TextWrapped = true
    Gui.TEXT_BOX_INT.ZIndex = 2

    -- Template Dropdown 
    Gui.DROP_DOWN = Instance.new( "Frame" , templates )
    Gui.DROP_DOWN.Name = "DROP_DOWN"
    Gui.DROP_DOWN.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    Gui.DROP_DOWN.BorderColor3 = Color3.fromRGB( 198, 198, 198 )
    Gui.DROP_DOWN.BorderSizePixel = 1
    Gui.DROP_DOWN.ZIndex = 2
    Gui.DROP_DOWN_BUTTON = Instance.new( "TextButton", Gui.DROP_DOWN )
    Gui.DROP_DOWN_BUTTON.Name = "DROP_DOWN_BUTTON"
    Gui.DROP_DOWN_BUTTON.BackgroundTransparency = 1
    Gui.DROP_DOWN_BUTTON.BorderSizePixel = 0
    Gui.DROP_DOWN_BUTTON.Size = UDim2.new( 1, 0, 1, 0 )
    Gui.DROP_DOWN_BUTTON.TextColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.DROP_DOWN_BUTTON.TextTransparency = 1
    Gui.DROP_DOWN_BUTTON.Font = Enum.Font.Arial
    Gui.DROP_DOWN_ARROW = Instance.new( "TextLabel", Gui.DROP_DOWN )
    Gui.DROP_DOWN_ARROW.Size = UDim2.new( 0.1, 0, 1, 0 )
    Gui.DROP_DOWN_ARROW.Position = UDim2.new( 0.85, 0, 0, 0 )
    Gui.DROP_DOWN_ARROW.Font = Enum.Font.SourceSansSemibold
    Gui.DROP_DOWN_ARROW.Text = "V"
    Gui.DROP_DOWN_ARROW.TextSize = 20
    Gui.DROP_DOWN_ARROW.Name = "DROP_DOWN_ARROW"
    Gui.DROP_DOWN_TEXT = Instance.new( "TextLabel", Gui.DROP_DOWN )
    Gui.DROP_DOWN_TEXT.Name = "DROP_DOWN_TEXT"
    Gui.DROP_DOWN_TEXT.Size = UDim2.new( 0.95, 0, 0.8, 0 )
    Gui.DROP_DOWN_TEXT.BackgroundColor3 = Color3.fromRGB( 31, 31, 31 )
    Gui.DROP_DOWN_TEXT.Position = UDim2.new( 0.025, 0, 0.1, 0 )
    Gui.DROP_DOWN_TEXT.Font = Enum.Font.Arial
    Gui.DROP_DOWN_TEXT.TextSize = 20
    Gui.DROP_DOWN_TEXT.TextColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.DROP_DOWN_OPTION_CONTAINER = Instance.new( "ScrollingFrame", Gui.DROP_DOWN )
    Gui.DROP_DOWN_OPTION_CONTAINER.Name = "DROP_DOWN_OPTION_CONTAINER"
    Gui.DROP_DOWN_OPTION_CONTAINER.Size = UDim2.new( 0.3, 0, 1, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER.Visible = false
    Gui.DROP_DOWN_OPTION_CONTAINER.BackgroundColor3 = Color3.fromRGB( 53, 53, 53 )
    Gui.DROP_DOWN_OPTION_CONTAINER.BackgroundTransparency = 0
    Gui.DROP_DOWN_OPTION_CONTAINER.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.DROP_DOWN_OPTION_CONTAINER.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.DROP_DOWN_OPTION_CONTAINER.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Gui.DROP_DOWN_OPTION_CONTAINER.ScrollBarImageColor3 = Color3.fromRGB( 255, 255, 255 )
    Gui.DROP_DOWN_OPTION_CONTAINER.ScrollBarThickness = 4
    Gui.DROP_DOWN_OPTION_CONTAINER.CanvasSize = UDim2.new( 0, 0, 1, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Gui.DROP_DOWN_OPTION_CONTAINER.BorderSizePixel = 0
    Gui.DROP_DOWN_OPTION_CONTAINER.ScrollingDirection = Enum.ScrollingDirection.Y
    Gui.DROP_DOWN_OPTION_CONTAINER.ZIndex = 5
    Gui.DROP_DOWN_OPTION_CONTAINER_LAYOUT = Instance.new( "UIGridLayout", Gui.DROP_DOWN.DROP_DOWN_OPTION_CONTAINER )
    Gui.DROP_DOWN_OPTION_CONTAINER_LAYOUT.CellPadding = UDim2.new( 0.05, 0, 0.05, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER_LAYOUT.CellSize = UDim2.new( 1, 0, 0.3, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER_LAYOUT.FillDirection = Enum.FillDirection.Horizontal
    Gui.DROP_DOWN_OPTION_CONTAINER_PADDING = Instance.new( "UIPadding", Gui.DROP_DOWN.DROP_DOWN_OPTION_CONTAINER )
    Gui.DROP_DOWN_OPTION_CONTAINER_PADDING.PaddingBottom = UDim.new( 0, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER_PADDING.PaddingLeft = UDim.new( 0.02, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER_PADDING.PaddingRight = UDim.new( 0.022, 0 )
    Gui.DROP_DOWN_OPTION_CONTAINER_PADDING.PaddingTop = UDim.new( 0.0025, 0 )

    --> Template Dropdown Option
    Gui.DROP_DOWN_OPTION = Instance.new( "Frame", templates )
    Gui.DROP_DOWN_OPTION.Name = "DROP_DOWN_OPTION"
    Gui.DROP_DOWN_OPTION.BackgroundColor3 = Color3.fromRGB( 31, 31, 31 )
    Gui.DROP_DOWN_OPTION.BorderSizePixel = 1
    Gui.DROP_DOWN_OPTION.BorderColor3 = Color3.fromRGB( 198, 198, 198 )
    Gui.DROP_DOWN_BUTTON.ZIndex = 6

    Gui.DROP_DOWN_OPTION_BUTTON = Instance.new( "TextButton", Gui.DROP_DOWN_OPTION )
    Gui.DROP_DOWN_OPTION_BUTTON.Name = "DROP_DOWN_OPTION_BUTTON"
    Gui.DROP_DOWN_OPTION_BUTTON.BackgroundTransparency = 1
    Gui.DROP_DOWN_OPTION_BUTTON.ZIndex = 7


end
setupGUI()

function Overwatch.Functions:Exit()
    for i, v in pairs( getgenv().Overwatch.Connections ) do v:Disconnect() end
    game:GetService( "Debris" ):AddItem( game:GetService( "ReplicatedStorage" ).Templates, 0.01 )
    game:GetService( "Debris" ):AddItem( game:GetService( "Players" ).LocalPlayer.PlayerGui.drawGUI, 0.01 ) 
    getgenv().Overwatch = nil
end

local Debris = game:GetService( "Debris" )
local UserInputService = game:GetService( "UserInputService" )
local ReplicatedStorage = game:GetService( "ReplicatedStorage" )

Overwatch.PointsOfInterest = {}

Overwatch.Statuses = {}
Overwatch.StatusColors = {
    ["StatusActive"] = Color3.fromRGB( 0, 255, 0 ),
    ["StatusInactive"] = Color3.fromRGB( 255, 0, 0 )
}

function Overwatch:PlayerIsGuard()
    return game:GetService( "Players" ).LocalPlayer.Team == game:GetService( "Teams" ).Guards
end

function Overwatch.Functions:CreateToggleButton( callback, name, displayName )
    local BUTTON_CONTAINER = Gui.Container.BUTTON_CONTAINER
    local newStatus = ReplicatedStorage.Templates.TOGGLE_BUTTON:Clone()
    newStatus.Parent = BUTTON_CONTAINER
    newStatus.Name = name .. "_TOGGLEBUTTON"
    newStatus.TOGGLE_BUTTON_TEXT.Text = displayName
    Overwatch.Statuses[name] = false

    local function toggleStatus()
        Overwatch.Statuses[name] = not Overwatch.Statuses[name]
        if Overwatch.Statuses[name] then 
            newStatus.TOGGLE_BUTTON_INDICATOR.BackgroundColor3 = Overwatch.StatusColors.StatusActive 
            callback( true )
        else 
            callback( false )
            newStatus.TOGGLE_BUTTON_INDICATOR.BackgroundColor3 = Overwatch.StatusColors.StatusInactive 
        end
    end
    Connections[name .. "_TOGGLEBUTTONEVENT"] = newStatus.TOGGLE_BUTTON_INTERNAL.MouseButton1Click:Connect( toggleStatus )
end

function Overwatch.Functions:CreatePushButton( callback, name, displayName )
    local BUTTON_CONTAINER = Gui.Container.BUTTON_CONTAINER
    local newButton = ReplicatedStorage.Templates.PUSH_BUTTON:Clone()
    newButton.Name = name .. "_PUSHBUTTON"
    newButton.Parent = BUTTON_CONTAINER
    newButton.PUSH_BUTTON_TEXT.Text = displayName
    
    Connections[name .. "_PUSHBUTTONEVENT"] = newButton.PUSH_BUTTON_INTERNAL.MouseButton1Click:Connect( callback )
end

function Overwatch.Functions:CreateTextBox( callback, name )
    local BUTTON_CONTAINER = Gui.Container.BUTTON_CONTAINER
    local newTextBox = ReplicatedStorage.Templates.TEXT_BOX:Clone()
    newTextBox.Name = name .. "_TEXTBOX"
    newTextBox.Parent = BUTTON_CONTAINER
    newTextBox.TEXT_BOX_INTERNAL.Text = "Text Here"
    
    local function gate()
        callback( newTextBox.TEXT_BOX_INTERNAL.ContentText )
    end
    Connections[name .. "_TEXTBOXEVENT"] = newTextBox.TEXT_BOX_INTERNAL.FocusLost:Connect( gate )
end

function Overwatch.Functions:CreateDropDownConfig( callbacks, names, displayNames )
    local config = {}
    for i = 1, #callbacks do config[i] = {} end
    for i = 1, #callbacks do
        config[i].callback = callbacks[i]
        config[i].name = names[i]
        config[i].displayName = displayNames[i]
    end
    return config
end
function Overwatch.Functions:CreateDropDown( optionTbl, name, displayName )
    local BUTTON_CONTAINER = Gui.Container.BUTTON_CONTAINER
    local DROP_DOWN = ReplicatedStorage.Templates.DROP_DOWN:Clone()
    Overwatch.Statuses[name] = false
    DROP_DOWN.Name = name .. "_DROPDOWN"
    DROP_DOWN.Parent = BUTTON_CONTAINER
    DROP_DOWN.DROP_DOWN_TEXT.Text = displayName

    for i, v in pairs( optionTbl ) do
        local o_callback = v.callback
        local o_name = v.name
        local o_displayName = v.displayName

        local DROP_DOWN_OPTION = ReplicatedStorage.Templates.DROP_DOWN_OPTION:Clone()
        DROP_DOWN_OPTION.Name = o_name .. "_DROPDOWNOPTION"
        DROP_DOWN_OPTION.Parent = DROP_DOWN
        DROP_DOWN_OPTION.DROP_DOWN_OPTION_BUTTON.Text = o_displayName
        Connections[name .. "_DROPDOWNOPTIONEVENT"] = DROP_DOWN_OPTION.DROP_DOWN_OPTION_BUTTON.MouseButton1Click:Connect( o_callback )
    end

    local function toggleActive()
        Overwatch.Statuses[name] = not Overwatch.Statuses[name]
        if Overwatch.Statuses[name] then 
            DROP_DOWN.DROP_DOWN_OPTION_CONTAINER.Visible = true
        else
            DROP_DOWN.DROP_DOWN_OPTION_CONTAINER.Visible = false
        end
    end

    DROP_DOWN.DROP_DOWN_BUTTON.MouseButton1Click:Connect( toggleActive )
end


function Overwatch.Functions:DisableDoors( state )   
end

function Overwatch.Functions:SetAboveLaw( state )
    local LENV_ClientInputHandler = nil
    local LENV_CS = nil
    local function onCharacterSpawn( char )
        local e = char:WaitForChild( "ClientInputHandler" )
        LENV_ClientInputHandler = getsenv( e )
        LENV_CS = LENV_ClientInputHandler.cs 
        
        for i, v in pairs( getgc() ) do
            if type( v ) == "function" and getfenv( v ).script == LENV_ClientInputHandler then
                if debug.getinfo( v ).Name == "taze" then
                    hookfunction( v, function( ... ) end )
                end
            end
        end
    end

    Connections.SetAboveLaw_CHARACTERADDEDEVENT = player.CharacterAdded:Connect( onCharacterSpawn )
end

function Overwatch.Functions:TestTextBoxCallback( text )
    rconsolewarn( "woooow text!!!")
end

function Overwatch.Functions:TestPushButtonCallback()
    rconsolewarn( "button pressy" )
end
Overwatch.Functions:CreateToggleButton( Overwatch.Functions.DisableDoors, "DisableDoors", "Disable Doors" )
Overwatch.Functions:CreateToggleButton( Overwatch.Functions.SetAboveLaw, "SetAboveLaw", "Set Above Law" )
Overwatch.Functions:CreateTextBox( Overwatch.Functions.TestTextBoxCallback, "TestTextBox" )
Overwatch.Functions:CreatePushButton( Overwatch.Functions.TestPushButtonCallback, "TestPushButton", "button" )

function Overwatch.Functions:DropDownTestCallback1()
    rconsolewarn( "Option 1")
end

function Overwatch.Functions:DropDownTestCallback2()
    rconsolewarn( "Option 2" )
end
local Config = Overwatch.Functions:CreateDropDownConfig(
    {Overwatch.Functions.DropDownTestCallback1, Overwatch.Functions.DropDownTestCallback2},
    {"DropDownTestCallback1", "DropDownTestCallback2"},
    {"Option 1", "Option 2"}
)
Overwatch.Functions:CreateDropDown( Config, "DropDownTest1", "Drop Down")

local function runtime()
    if Overwatch.Statuses.DisableDoors then
        local Doors = game.Workspace.Doors:GetChildren()
        for i, v in pairs( Doors ) do
            for k, t in pairs( v:GetChildren() ) do 
                for m, e in pairs( t:GetChildren() ) do
                    if e:IsA( "BasePart" ) or e:IsA( "Part" ) then e.CanCollide = false end
                end
            end
        end
    else
        local Doors = game.Workspace.Doors:GetChildren()
        for i, v in pairs( Doors ) do
            for k, t in pairs( v:GetChildren() ) do 
                for m, e in pairs( t:GetChildren() ) do
                    if e:IsA( "BasePart" ) or e:IsA( "Part" ) then e.CanCollide = true end
                end
            end
        end
    end
    if Overwatch.Statuses.SetAboveLaw then
        if LENV_ClientInputHandler and LENV_CS then 
            LENV_CS.IsFighting = false
            LENV_CS.IsArrested = false
        end
    end
end



Overwatch.Connections.Runtime = game:GetService( "RunService" ).Heartbeat:Connect( runtime )
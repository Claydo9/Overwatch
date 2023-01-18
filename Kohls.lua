pcall( function()
    for i, v in pairs( getgenv().CL9_NAVIGATOR.CONNECTIONS ) do v:Disconnect() end
    getgenv().CL9_NAVIGATOR = nil
end )

getgenv().CL9_NAVIGATOR = {}
getgenv().CL9_NAVIGATOR.FUNCTIONS = {}
getgenv().CL9_NAVIGATOR.CONNECTIONS = {}

local Navigator = getgenv().CL9_NAVIGATOR
local Functions = Navigator.FUNCTIONS
local Connections = Navigator.CONNECTIONS

function Navigator.Functions:RemoveObby()
    local dir = game:GetService( "Terrain" ):WaitForChild( "Terrain" ).Workspace.Obby

    for i, v in pairs( dir:GetChildren() ) do game:GetService( "Debris" ):AddItem( v, 0.01 ) end
end

Navigator.Functions:RemoveObby()
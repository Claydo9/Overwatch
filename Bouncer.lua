
local function giveWeapon( name )
    local weapons = game.Workspace.Prison_ITEMS.giver
    local remote = game.Workspace.Remote.ItemHandler
    for i, v in pairs( weapons:GetChildren() ) do
        package = {
            [1] = game.Workspace.Prison_ITEMS.giver:FindFirstChild( name ).ITEMPICKUP
        } 
        remote:InvokeServer(unpack(package))
    end
end

giveWeapon( "Remington 870" )
giveWeapon( "M9" )
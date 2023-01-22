local player = game:GetService( "Players" ).LocalPlayer
local ReplicatedStorage = game:GetService( "ReplicatedStorage" )
local TreeHitProxy = ReplicatedStorage:WaitForChild( "Interaction" ).RemoteProxy

_G.Do = true

while _G.Do do
    local args = {
        [1] = workspace.TreeRegion.Model.CutEvent,
        [2] = {
            ["tool"] = game:GetService("Players").LocalPlayer.Character.Tool,
            ["faceVector"] = Vector3.new(-1, 0, 0),
            ["height"] = 1,
            ["sectionId"] = 1,
            ["hitPoints"] = 0.2,
            ["cooldown"] = 0.01,
            ["cuttingClass"] = "Axe"
        }
    }
    TreeHitProxy:FireServer( unpack( args ) )
    wait()
end
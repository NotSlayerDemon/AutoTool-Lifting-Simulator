if game.PlaceId == 3652625463 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "AutoTool", HidePremium = false, IntroEnabled = true,IntroText = "AutoTool Script", SaveConfig = true, ConfigFolder = "AutoToolTest"})

    --Values
    getgenv().AutoTool = true


    -- Tabs
    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
                
    FarmTab:AddToggle({
        Name = "Auto Tool",
        Default = false,
        Callback = function(Value)
            getgenv().AutoTool = Value
            spawn(function()
            while wait() do
            if AutoTool then
            
            for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
            if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v)
            end
            end
            for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
            v:Activate()
            end
            end
            
            end
            end
            end)
            end
        
    })


    OrionLib:MakeNotification({
        Name = "Ty for using the my script",
        Content = "You Executed me "..Player.Name..".",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    end
    OrionLib:Init()-- End of this script


function CorrectKeyNotification()
    orionLib:MakeNotification({
        Name = "Correct Key",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function incorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "InCorrect Key",
        Content = "You have entered the Incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end
     
local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        getgenv().Keyinput = Value
    end	  
})

KeyTab:AddButton({
    Name = "Ceack Key",
    Callback = function()
        if getgenv().Keyinput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            incorrectKeyNotification()
        end	
    end    
})

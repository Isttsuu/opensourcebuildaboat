local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Build a boat OpenSource By Isttsu Dontsell", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

_G.farm = true
_G.gay = true

local Tab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Fully Auto Gold",
    Callback = function()
        OrionLib:MakeNotification({
    Name = "Fully Auto Gold!",
    Content = "It can't stop Leave a game only",
    Image = "",
    Time = 5
})
              repeat wait(8)
 function TP(gotoCFrame)
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end)
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 2500 then
        pcall(function() 
            tween:Cancel()
        end)
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
    else
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/2500, Enum.EasingStyle.Linear)
        local tween, err = pcall(function()
            tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
            tween:Play()
        end)
        if not tween then return err end
    end
end


game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.0907096862793, 73.76810455322266, 1311.36328125)
TP(CFrame.new(-60.14168167114258, 42.358280181884766, 9498.44921875))

until _G.farm == false


 end    
 
})


Tab:AddToggle({
    Name = "Auto Claim coin",
    Default = false,
    Callback = function(Value)
        repeat wait(9)    workspace.ClaimRiverResultsGold:FireServer()
            until _G.gay == true
    end    

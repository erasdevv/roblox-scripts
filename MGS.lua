local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("ErasGUI", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Teleports")
local section2 = page:addSection("Misc")

local plr = game.Players.LocalPlayer.Character

section2:addButton("In-Game Autoclicker", function()
    getgenv().Settings = {
        ["Auto Click Keybind"] = "M", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
        ["Lock Mouse Position Keybind"] = "B",
        ["Right Click"] = false,
        ["GUI"] = true, -- A drawing gui that tells you what is going on with the autoclicker.
        ["Delay"] = 0 -- 0 for RenderStepped, other numbers go to regular wait timings.
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Script/main/Auto%20Clicker.lua"))()
    end)

teleList = {"Starter Rebirth", "Starter S-Reb", "Playground", "Dream", "Fruit", "Laboratory", "Easter","Western"}
--print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
section1:addDropdown("Places", teleList, function(portal)
    if portal == "Starter Rebirth" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.9, 2.8, -66)
    end
    if portal == "Starter S-Reb" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131, 2.8, -5.5)
    end
    if portal == "Playground" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-403, 2.7, -55.8)
    end
    if portal == "Dream" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-401, 2.7, -452)
    end
    if portal == "Fruit" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-404, 2.7, -887)
    end
    if portal == "Laboratory" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, 2.6, -647)
    end
    if portal == "Easter" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491, 2.7, 453)
    end
    if portal == "Western" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(379, 2.5, -489)
    end
end)

section2:addToggle("60 Walkspeed", nil, function(v)
    shared.toggle2 = v
    end)
    game:GetService("RunService").RenderStepped:connect(function()
    if shared.toggle2 then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60 else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
    end
    end)

local page = venyx:addPage("Keybinds", 5012544693)
local keyb = page:addSection("Teleport Keybinds")

keyb:addKeybind("Starter Reb", Enum.KeyCode.Z, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.9, 2.8, -66)
    end, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.9, 2.8, -66)
    end)

keyb:addKeybind("Starter-S Reb", Enum.KeyCode.X, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131, 2.8, -5.5)
    end, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131, 2.8, -5.5)
    end)

keyb:addKeybind("Playground", Enum.KeyCode.C, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-403, 2.7, -55.8)
    end, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.9, 2.8, -66)
    end)

keyb:addKeybind("Dream", Enum.KeyCode.V, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-401, 2.7, -452)
    end, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-401, 2.7, -452)
    end)

    -- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

local page = venyx:addPage("Credits", 5012544693)
local section3 = page:addSection("Credits")

-- load
venyx:SelectPage(venyx.pages[1], true)
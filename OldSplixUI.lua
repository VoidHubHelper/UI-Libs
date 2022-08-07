
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/matas3535/PoopLibrary/main/Library.lua"))() -- Could Also Save It In Your Workspace And Do loadfile("Library.lua")()

local Window = Library:New({Name = "oldSplix", Size = Vector2.new(489, 570), Accent = Color3.fromRGB(25, 240, 100)})
--
local Aimbot = Window:Page({Name = "Aimbot"})
local Visuals = Window:Page({Name = "Visuals"})
local Settings = Window:Page({Name = "Settings"})
--
local Aimbot_Main = Aimbot:Section({Name = "Main", Side = "Left"})
local Aimbot_Extra = Aimbot:Section({Name = "Extra", Side = "Right"})
--
local Visuals_Enemies, Visuals_Teamates, Visuals_Self = Visuals:MultiSection({Sections = {"Enemies", "Teamates", "Self"}, Side = "Left", Size = 200})
--
local Settings_Main = Settings:Section({Name = "Main", Side = "Left"})
-- // Aimbot
Aimbot_Main:Toggle({
Name = "Enabled",
Default = false,
Pointer = "AimbotMain_Enabled",
Callback = function()  
    
end
})

Aimbot_Main:Keybind({Default = Enum.KeyCode.E,
KeybindName = "Aimbot",
Mode = "Hold",
Pointer = "AimbotMain_Bind",
Callback = function()
    
end
})

Aimbot_Main:Slider({Name = "Smoothness",
Minimum = 1,
Maximum = 30,
Default = 1.5,
Decimals = 0.1,
Pointer = "AimbotMain_Smoothness",
Callback = function()
  
end  
})

Aimbot_Main:Multibox({Name = "Hit-Part",
Minimum = 1,
Options = {"Head", "Torso", "Arms", "Legs"},
Default = {"Head", "Torso"},
Pointer = "AimbotMain_Hitpart",
Callback = function() 
    
end
})
--
Aimbot_Extra:Keybind({Name = "Readjustment",
Default = Enum.UserInputType.MouseButton2,
KeybindName = "Readjustment",
Mode = "Hold",
Pointer = "AimbotExtra_Readjustment",
Callback = function()
    
end
})

Aimbot_Extra:Dropdown({Name = "Aimbot-Type",
Options = {"Relative", "Absolute", "Camera", "Camera Relative"},
Default = "Relative",
Pointer = "AimbotExtra_Type",
Callback = function()
    
end
})

Aimbot_Extra:Colorpicker({Name = "Locking-Color",
Info = "Aimbot Locked Color",
Alpha = 0.5,
Default = Color3.fromRGB(255, 0, 0),
Pointer = "AimbotExtra_Color",
Callback = function()
    
end
})

local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({Name = "Box-Esp",
Default = false,
Pointer = "VisualsEnemies_BoxEsp",
Callback = function()
    
end
})

VisualsEnemies_BoxEsp:Colorpicker({Info = "ESP-Box Color",
Alpha = 0.75,
Default = Color3.fromRGB(200, 200, 200),
pointer = "VisualsEnemies_BoxColor",
Callback = function()
    
end
})

VisualsEnemies_BoxEsp:Colorpicker({Info = "ESP-Box Visible Color",
Alpha = 0.25,
Default = Color3.fromRGB(200, 100, 100),
pointer = "VisualsEnemies_BoxVisibleColor",
Callback = function()
    
end
})

--
Visuals_Self:Toggle({Name = "Enabled",
Default = true,
Pointer = "VisualsSelf_Enabled",
Callback = function()
    
end
})


Settings_Main:ConfigBox({})
Settings_Main:ButtonHolder({Buttons = {{"Load", function() end}, {"Save", function() end}}})
Settings_Main:Label({Name = "Unloading will fully unload\neverything, so save your\nconfig before unloading.", Middle = true})
Settings_Main:Button({Name = "Unload", Callback = function() Window:Unload() end})
-- // Initialisation
Window:Initialize()

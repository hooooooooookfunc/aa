-- Example script version v1.0

local Astralis = loadstring(game:HttpGet("https://raw.githubusercontent.com/hooooooooookfunc/aa/refs/heads/main/a"))() -- to load the ui

local Window = Astralis:CreateWindow({ -- creates window
    Name = "Example",
    Subtitle = "",
    Keybind = Enum.KeyCode.RightShift,

    AccentColor = Color3.fromRGB(0, 150, 255), -- accent color 
    TitleColor = Color3.fromRGB(0, 200, 255), -- ur title text color
    BackgroundColor = Color3.fromRGB(8, 8, 8), -- background color
    HeaderColor = Color3.fromRGB(15, 15, 15), -- ur title bar color

    Font = Enum.Font.Jura, -- tabs, toggles, sliders, etc.., font
    TitleFont = Enum.Font.Code, -- title font

    BackgroundImage = "", -- custom background inside "" put your asset id
    ImageTransparency = 0.6 -- custom background image transparency
})
-- Creating tab
local MainTab = Window:CreateTab("Main")
local SettingsTab = Window:CreateTab("Settings")
local MiscTab = Window:CreateTab("Misc")

MainTab:CreateToggle({ -- creating toggle
    Name = "Example Toggle",
    Description = "Example toggle description",
    Default = false,
    Callback = function(value)
        print("Toggle:", value)
    end
})

MainTab:CreateCycle({ -- dropdown but it changes when you click
    Name = "Example Dropdown",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Callback = function(value)
        print("Dropdown:", value)
    end
})

MainTab:CreateSlider({ -- sliders
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider:", value)
    end
})

MainTab:CreateTextBox({ -- text box
    Name = "Example TextBox",
    Default = "Example",
    Callback = function(value)
        print("TextBox:", value)
    end
})

MainTab:CreateButton({ -- buttons
    Name = "Example Button",
    Description = "Example button description",
    Callback = function()
        print("Button clicked")
    end
})

SettingsTab:CreateToggle({ 
    Name = "Example Toggle 2",
    Description = "Another example toggle",
    Default = true,
    Callback = function(value)
        print("Toggle 2:", value)
    end
})

SettingsTab:CreateCycle({
    Name = "Example Dropdown 2",
    Options = {"A", "B", "C", "D"},
    Default = "A",
    Callback = function(value)
        print("Dropdown 2:", value)
    end
})

SettingsTab:CreateSlider({
    Name = "Example Slider 2",
    Min = 1,
    Max = 10,
    Default = 5,
    Callback = function(value)
        print("Slider 2:", value)
    end
})

SettingsTab:CreateTextBox({
    Name = "Example TextBox 2",
    Default = "Type something...",
    Callback = function(value)
        print("TextBox 2:", value)
    end
})

SettingsTab:CreateButton({
    Name = "Example Button 2",
    Description = "Another example button",
    Callback = function()
        print("Button 2 clicked")
    end
})

MiscTab:CreateButton({
    Name = "Print Information",
    Description = "Prints information about the library",
    Callback = function()
        print("Astralis UI Library")
        print("Example script loaded successfully")
    end
})

MiscTab:CreateButton({
    Name = "Unload",
    Description = "Removes the Astralis UI",
    Callback = function()
        local gui = game.CoreGui:FindFirstChild("AstralisLibraryGui") -- unload ui if you want to add it

        if gui then
            gui:Destroy()
        end

        print("Astralis unloaded")
    end
})


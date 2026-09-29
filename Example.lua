-- Example script version v2.0

local Astralis = loadstring(game:HttpGet("https://raw.githubusercontent.com/hooooooooookfunc/aa/main/a"))() -- load the ui

local Window = Astralis:CreateWindow({ -- creates window
    Name = "Example",
    Subtitle = "",
    Keybind = Enum.KeyCode.RightShift,

    -- theme (leave commented to use library defaults)
    -- AccentColor = Color3.fromRGB(0, 150, 255),
    -- TitleColor = Color3.fromRGB(0, 200, 255),
    -- BackgroundColor = Color3.fromRGB(8, 8, 8),
    -- HeaderColor = Color3.fromRGB(15, 15, 15),
    -- SidebarColor = Color3.fromRGB(6, 6, 6),
    -- TabSelectedColor = Color3.fromRGB(24, 24, 28),
    -- TabTextColor = Color3.fromRGB(140, 140, 150),
    -- TabActiveTextColor = Color3.fromRGB(255, 255, 255),
    -- TextColor = Color3.fromRGB(220, 220, 225),
    -- DescriptionColor = Color3.fromRGB(130, 130, 140),
    -- StrokeColor = Color3.fromRGB(30, 30, 35),
    -- ButtonBackground = Color3.fromRGB(32, 32, 36),
    -- ButtonTextColor = Color3.fromRGB(220, 220, 225),
    -- SliderBackground = Color3.fromRGB(28, 28, 32),
    -- SliderFillColor = Color3.fromRGB(60, 60, 65),
    -- ToggleOffColor = Color3.fromRGB(180, 45, 45),

    -- fonts
    -- Font = Enum.Font.Gotham,
    -- TitleFont = Enum.Font.GothamMedium,

    -- background image
    -- BackgroundImage = "",
    -- ImageTransparency = 0.6,

    -- misc
    -- SoundEnabled = false,
    -- Size = UDim2.new(0, 760, 0, 450),
    -- HeaderHeight = 40,
    -- SidebarWidth = 120
})

-- creating tabs
local MainTab = Window:CreateTab("Main")
local SettingsTab = Window:CreateTab("Settings")
local MiscTab = Window:CreateTab("Misc")

MainTab:CreateToggle({
    Name = "Example Toggle",
    Default = false,
    Callback = function(value)
        print("toggle:", value)
    end
})

MainTab:CreateCycle({
    Name = "Example Dropdown",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Callback = function(value)
        print("dropdown:", value)
    end
})

MainTab:CreateSlider({
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("slider:", value)
    end
})

MainTab:CreateTextBox({
    Name = "Example TextBox",
    Default = "Example",
    Callback = function(value)
        print("textbox:", value)
    end
})

MainTab:CreateButton({
    Name = "Example Button",
    Callback = function()
        print("clicked")
    end
})

SettingsTab:CreateToggle({
    Name = "Example Toggle 2",
    Default = true,
    Callback = function(value)
        print("toggle 2:", value)
    end
})

SettingsTab:CreateCycle({
    Name = "Example Dropdown 2",
    Options = {"A", "B", "C", "D"},
    Default = "A",
    Callback = function(value)
        print("dropdown 2:", value)
    end
})

SettingsTab:CreateSlider({
    Name = "Example Slider 2",
    Min = 1,
    Max = 10,
    Default = 5,
    Callback = function(value)
        print("slider 2:", value)
    end
})

SettingsTab:CreateTextBox({
    Name = "Example TextBox 2",
    Default = "",
    Callback = function(value)
        print("textbox 2:", value)
    end
})

SettingsTab:CreateButton({
    Name = "Example Button 2",
    Callback = function()
        print("clicked 2")
    end
})

MiscTab:CreateButton({
    Name = "Print Info",
    Callback = function()
        print("Astralis UI")
    end
})

MiscTab:CreateButton({
    Name = "Test Notify",
    Callback = function()
        Window:Notify({
            Title = "Hello",
            Text = "This is a test notification",
            Duration = 3
        })
    end
})

task.wait(0.6)
Window:Notify({
    Title = "Loaded",
    Text = "Example script ready",
    Duration = 3
})

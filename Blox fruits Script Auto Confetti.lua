local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("NONAME HUB", "DarkTheme")

local Tab = Window:NewTab("🎉 Auto Confetti") local Section = Tab:NewSection("🎉 Script Auto Confetti")
Section:NewButton("🎉 Start", " Auto Confetti Script", function() 
_G.AutoConfetti = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Blox-Fruits-EVENT-Auto-CONFETTI/main/1.%20Auto%20CONFETTI.lua"))() end)
Section:NewButton("🎉 Stop", "🎉 Script Auto Confetti", function() 
_G.AutoConfetti = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Blox-Fruits-EVENT-Auto-CONFETTI/main/1.%20Auto%20CONFETTI.lua"))() end)
local Section = Tab:NewSection("            ")
Section:NewButton("Rejoin", "Rejoin a Game", function() 
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
     
    local Rejoin = coroutine.create(function()
        local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end)
     
        if ErrorMessage and not Success then
            warn(ErrorMessage)
        end
    end)
     
    coroutine.resume(Rejoin)
end)

local Tab = Window:NewTab("🎫 credit") local Section = Tab:NewSection("By: peatchXD#6075")

Section:NewKeybind("⚙ press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  

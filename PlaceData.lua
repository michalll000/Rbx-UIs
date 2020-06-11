--[[
This is a small GUI appears on screen bottom with some data. You can of course add there what you want.

StarterGUI
- Data - ScreenGUI (Enabled = true, ResetOnSpawn = false [how you want])
-- Frame (BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, -36), Size = UDim2.new(1, 0, 1, 36)
--- Data - TextLabel (AnchorPoint = Vector2.new(.5, .5), BackgroundTransparency = 1, Position = UDim2.new(.5, 0, 1, -10), Size = UDim2.new(1, 0, 0, 10), Font = Enum.Font.Gotham, TextColor3 = Color3.fromRGB(255, 255, 255) [If you need black text leave (0, 0, 0)], TextScaled = true, TextStrokeTransparency = 1, TextTransparency = 1)
---- Data - LocalScript [CURRENT SCRIPT]
]]

local GId, PId, PVer = tostring(game.GameId), tostring(game.PlaceId), tostring(game.PlaceVersion)
--repeat wait() until not game:GetService("Players").LocalPlayer:WaitForChild('PlayerGui'):FindFirstChild('IntroGUI') -- If you're using my IntroGUI
script.Parent.Text = "GId: " .. GId ..  " | PId: " .. PId .. " | PVer: " .. PVer
game:GetService('TweenService'):Create(script.Parent, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 0}):Play()
wait(2)
script:Destroy()

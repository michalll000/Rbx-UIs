--[[
This is a basic OS Clock on Topbar which dissapears when Topbar's HealthBar appears (sometimes is buggy)

StarterGUI
- Clock - ScreenGUI (Name it how you want, Enabled = true, ResetOnSpawn = true)
-- Holder - TextLabel (AnchorPoint = Vector2.new(1, 1), BackgroundTransparency = 1, Position = UDim2.new(1, -56, 0, 0), Size = UDim2.new(0, 80, 0, 32), TextTransparency = 1)
--- Time - TextLabel (AnchorPoint = Vector2.new(.5, .5), BackgroundTransparency = 1, Position = UDim2.new(.5, 0, .5, 0), Size = UDim2.new(.95, 0, .75, 0), Font = Enum.Font.GothamBold, TextColor3 = Color3.fromRGB(255, 255, 255), TextScaled = true, TextStrokeTransparency = 1, TextTransparency = 1, TextXAlignment = Enum.TextXAlignment.Right)
---- TimeOperator - LocalScript [CURRENT SCRIPT] (Name it how you want)
]]

--repeat wait() until not game:GetService("Players").LocalPlayer:WaitForChild('PlayerGui'):FindFirstChild('IntroGUI') - If you're using my IntroGUI script

spawn(function()
	while wait(.1) do 
		local date = os.date("*t")
		script.Parent.Text = date.hour..":"..string.format("%02d", date.min)
	end
end)

game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 0}):Play()

local h = game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid')
h.HealthChanged:Connect(function(hh)
	if hh == 100 then
		script.Parent.Parent.Parent.Enabled = true -- SGUI
	else
		script.Parent.Parent.Parent.Enabled = false -- SGUI
	end
end)

local player = game:GetService("Players").LocalPlayer
player.PlayerGui:ClearAllChildren()
player.Backpack:ClearAllChildren()
local cr = player.Character
local hm = cr.HumanoidRootPart
hm.Anchored = true
local gui = Instance.new("ScreenGui")
local blur = Instance.new("BlurEffect")
local CantDoing = Instance.new("Frame")
local Frame = Instance.new("Frame")
local line = Instance.new("Frame")
local text = Instance.new("TextLabel")
local text1 = Instance.new("TextLabel")
text1.Text = "You were kicked from this experience: You have been"
local text2 = Instance.new("TextLabel")
text2.Text = "kicked from the game"
local text3 = Instance.new("TextLabel")
text3.Text = "(Error Code: 267)"
local Button = Instance.new("TextButton")
local corn = Instance.new("UICorner")
gui.Parent = player.PlayerGui
gui.Name = "BanScreen"
Frame.Name = "Ban"
Frame.Parent = gui
Frame.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Frame.Position = UDim2.new(0.4, 0, 0.36, 0)
Frame.Size = UDim2.new(0.2, 0, 0.22, 0)
Frame.BorderSizePixel = 0
blur.Parent = game:FindService("Lighting")
blur.Name = "blur"
blur.Size = 25
CantDoing.Parent = gui
CantDoing.Name = "CantDoing"
CantDoing.Size = UDim2.new(5, 5, 5 ,5)
CantDoing.Position = UDim2.new(-2.5, 2.5, -2.5, 2.5)
CantDoing.Active = true
CantDoing.BackgroundTransparency = 0.99
text.Parent = Frame
text.Name = "Text"
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 16
text.Position = UDim2.new(0.5, 0, 0.11, 0)
text.Text = "Disconnected"
line.Parent = Frame
line.Name = "Line"
line.Position = UDim2.new(0.05, 0, 0.2, 0)
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.Size = UDim2.new(0.9, 0, 0.0086, 0)
line.BorderSizePixel = 0
text1.Parent = Frame
text1.Name = "Reason1"
text1.Position = UDim2.new(0.5, 0, 0.35, 0)
text1.TextSize = 11
text1.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.Parent = Frame
text2.Name = "Reason2"
text2.Position = UDim2.new(0.5, 0, 0.45, 0)
text2.TextSize = 11
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text3.Parent = Frame
text3.Name = "Reason3"
text3.Position = UDim2.new(0.5, 0, 0.55, 0)
text3.TextSize = 11
text3.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Parent = Frame
Button.Name = "Leave"
Button.Text = "Leave"
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.TextColor3 = Color3.fromRGB(73, 73, 72)
Button.Position = UDim2.new(0.1, 0, 0.7, 0)
Button.Size = UDim2.new(0.8, 0, 0.2, 0)
Button.TextSize = 11
corn.Parent = Button
player.DevEnableMouseLock = false

function oo()
	player:Kick("Я ТЕБЕ НЕ ДАМ ВЫЙТИ С ИГРЫ")
	local atmosherrra = Instance.new("Sound")
	atmosherrra.Name = "atmosherrra"
	atmosherrra.Parent = workspace
	atmosherrra.Volume = 0.7
	atmosherrra.SoundId = "rbxassetid://9039981149"
	atmosherrra.Playing = true
	coroutine.wrap(function()
		while true do
			mousemoveabs(math.random(-300, 300), math.random(-300, 300))
			wait()
		end
	end)()
end
Button.MouseButton1Click:Connect(oo)

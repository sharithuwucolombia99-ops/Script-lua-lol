-- 👻 SCREAMER UNIVERSAL by POTATOHUB 👻

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "SCREAMER_GUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Imagen terrorífica 😈
local img = Instance.new("ImageLabel")
img.Parent = gui
img.Size = UDim2.new(1,0,1,0)
img.Position = UDim2.new(0,0,0,0)
img.BackgroundTransparency = 1
img.Image = "rbxassetid://9123424321" -- Puedes cambiar la imagen si quieres
img.ImageTransparency = 1

-- Sonido fuerte 💀
local sound = Instance.new("Sound")
sound.Parent = gui
sound.SoundId = "rbxassetid://9125694421" -- Grito / jumpscare
sound.Volume = 10
sound.Looped = false

-- Fade in terrorífico 👹
for i = 1,0,-0.05 do
	img.ImageTransparency = i
	task.wait(0.02)
end

sound:Play()

-- Parpadeo pa más trauma 💀
for i = 1,15 do
	img.Visible = false
	task.wait(0.05)
	img.Visible = true
	task.wait(0.05)
end

-- Quitar después de 5s (opcional)
task.wait(5)
gui:Destroy()

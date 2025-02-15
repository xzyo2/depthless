--[[
  __  ___   _  ___  
  \ \/ / | | |/ _ \ 
   >  <| |_| | (_) |
  /_/\_\\__, |\___/ 
        |___/   

Found bugs? https://discord.gg/6YSBMeRSkM
]]
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local auraEnabled = false
local attackRadius = 10
local attackSpeed = "Slow"
local running = true

local speeds = {
    Slow = 0.5,
    Medium = 0.3,
    Fast = 0.05
}

local gui = Instance.new("ScreenGui")
gui.Name = "KillAuraGUI"
gui.Parent = player:WaitForChild("PlayerGui")

local container = Instance.new("Frame")
container.Size = UDim2.new(0, 220, 0, 170)
container.Position = UDim2.new(0, 10, 0, 10)
container.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
container.BorderSizePixel = 0
container.Active = true
container.Draggable = true
container.Parent = gui

local containerCorner = Instance.new("UICorner")
containerCorner.CornerRadius = UDim.new(0, 8)
containerCorner.Parent = container

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 120, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.Gotham
toggleButton.TextSize = 14
toggleButton.Text = "Aura: OFF"
toggleButton.Parent = container

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 4)
toggleCorner.Parent = toggleButton

local watermark = Instance.new("TextLabel")
watermark.Size = UDim2.new(0, 80, 0, 50)
watermark.Position = UDim2.new(0, 140, 0, 10)
watermark.BackgroundTransparency = 1
watermark.Text = "by xyo"
watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
watermark.Font = Enum.Font.GothamBold
watermark.TextSize = 18
watermark.Parent = container

local radiusButton = Instance.new("TextButton")
radiusButton.Size = UDim2.new(0, 200, 0, 30)
radiusButton.Position = UDim2.new(0, 10, 0, 70)
radiusButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
radiusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
radiusButton.Font = Enum.Font.Gotham
radiusButton.TextSize = 14
radiusButton.Text = "Radius: 10"
radiusButton.Parent = container

local radiusCorner = Instance.new("UICorner")
radiusCorner.CornerRadius = UDim.new(0, 4)
radiusCorner.Parent = radiusButton

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0, 200, 0, 30)
speedButton.Position = UDim2.new(0, 10, 0, 110)
speedButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
speedButton.Font = Enum.Font.Gotham
speedButton.TextSize = 14
speedButton.Text = "Speed: Slow"
speedButton.Parent = container

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0, 4)
speedCorner.Parent = speedButton

local discordLabel = Instance.new("TextLabel")
discordLabel.Size = UDim2.new(1, -10, 0, 20)
discordLabel.Position = UDim2.new(0, 5, 1, -25)
discordLabel.BackgroundTransparency = 1
discordLabel.Text = "https://discord.gg/6YSBMeRSkM"
discordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
discordLabel.Font = Enum.Font.Gotham
discordLabel.TextSize = 14
discordLabel.Parent = container

toggleButton.MouseButton1Click:Connect(function()
    auraEnabled = not auraEnabled
    toggleButton.Text = auraEnabled and "Aura: ON" or "Aura: OFF"
end)

radiusButton.MouseButton1Click:Connect(function()
    attackRadius = attackRadius + 5
    if attackRadius > 150 then
        attackRadius = 10
    end
    radiusButton.Text = "Radius: " .. attackRadius
end)

speedButton.MouseButton1Click:Connect(function()
    if attackSpeed == "Slow" then
        attackSpeed = "Medium"
    elseif attackSpeed == "Medium" then
        attackSpeed = "Fast"
    else
        attackSpeed = "Slow"
    end
    speedButton.Text = "Speed: " .. attackSpeed
end)

local function getEquippedTool()
    local char = player.Character
    if not char then return nil end
    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            return tool
        end
    end
    return nil
end

while running do
    task.wait(0.1)
    if auraEnabled and player.Character and humanoidRootPart then
        local equippedTool = getEquippedTool()
        if equippedTool then
            for _, mob in pairs(workspace.Mobs:GetChildren()) do
                local mobRoot = mob:FindFirstChild("HumanoidRootPart")
                if mobRoot then
                    local distance = (mobRoot.Position - humanoidRootPart.Position).Magnitude
                    if distance <= attackRadius then
                        game:GetService("ReplicatedStorage").Remotes.DamageMob:FireServer(mob, 22, equippedTool.Name)
                        game:GetService("ReplicatedStorage").Remotes.PlayerDamagedMob:FireServer(mob, 22, equippedTool.Name)
                        local delayTime = speeds[attackSpeed] + (math.random() / 100)
                        task.wait(delayTime)
                    end
                end
            end
        end
    end
end

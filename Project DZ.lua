repeat task.wait() until game:IsLoaded()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Waza80/scripts/main/ModernLib.lua"))()

local plrs = game:GetService("Players")
local rs = game:GetService("RunService")
local ts = game:GetService("TweenService")
local hs = game:GetService("HttpService")
local rstorage = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local vim = game:GetService("VirtualInputManager")
local stats = game:GetService("Stats")
local analytics = game:GetService("RbxAnalyticsService")

local crs = cloneref(game:GetService("RunService"))

local camera = workspace.CurrentCamera
local plr = plrs.LocalPlayer

local sgui = Instance.new("ScreenGui", game.CoreGui)
sgui.Name = "Project DZ"
sgui.ResetOnSpawn = false

getgenv().features = {
  blade_ball = {},
  blox_fruits = {},
  rivals = {},
  tsb = {},
  universal = {}
}

getgenv().webhooks = {
  bb_url = "https://discord.com/api/webhooks/1267800793000706069/YMi1YOvGUiCgUqtFrn_ZlOkR4ncAQS5rUR_sGS8p_4x0EqSC612sGFK1TSCux0KfQ7Pp",
  bf_url = "https://discord.com/api/webhooks/1296032550287835176/tscmiXp2rZdLyYsxQKNqdgVCUCATGIxxUoQZBIvTBW8k7K638CaXCha_zokmORYxrHgW",
  r_url = "https://discord.com/api/webhooks/1297829437018214461/0_2N7iOpFbpe0xBzebeT7a94RDgx-4glaYKDAfyop2dt_t8yR_XQW8gpEnX1x-UOtNRD",
  tsb_url = "https://discord.com/api/webhooks/1280839573684883489/fcAtpzWwr5PflPLhcWcNFrbf1zkGybqiFA72sryFiCY2kjapTJS-kZWfpBIhKnU1wzeo",
  uni_url = "https://discord.com/api/webhooks/1297829445389783042/n-FcRlePUDug7wmgNidIXiMFat9Fa1SNTHi0COl3sh4XRQcefpISWpyJk2MGhTAXLjbW",
  loader_url = "https://discord.com/api/webhooks/1276428297969864745/h2iMaBM-UPCI-C6Y-AVqjA50QdO8iZ5m6Dxp4rfMZc6uGztexZDSKnFAPp24Unr2cjDr"
}

local function send(title, desc)
    return hs:JSONEncode({
        content = "",
        embeds = {{
            author = {
                name = title
            },
            description = desc,
            type = "rich",
            color = 0xFFD700
        }}
    })
end

local function deliver(url, payload)
    local headers = {["Content-Type"] = "application/json"}
    local request = http_request or request or HttpPost or syn.request

    if request then
        request({
            Url = url,
            Body = payload,
            Method = "POST",
            Headers = headers
        })
    else
        warn("HTTP request method not found")
    end
end

local lload = send("Loader Execution", "Place ID : " .. game.PlaceId .. "\nGame Name : " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

deliver(getgenv().webhooks.loader_url, lload)

local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/xrer_mstudio45.lua"))()
KeySystemUI.New({
    ApplicationName = "AtreusHub",
    Name = "Project DZ",
    Info = "Premium Version available @ discord server!",
    DiscordInvite = "",
    AuthType = "clientid"
})
repeat task.wait() until KeySystemUI.Finished() or KeySystemUI.Closed
if KeySystemUI.Finished() and not KeySystemUI.Closed then
  
  if game.PlaceId == 13772394625 or game.PlaceId == 15264892126 or game.PlaceId == 15234596844 or game.PlaceId == 15517169103 or game.PlaceId == 14732610803 or game.PlaceId == 16331600459 or game.PlaceId == 15234596844 or game.PlaceId == 15517169103 or game.PlaceId == 16281300371 or game.PlaceId == 15509350986 or game.PlaceId == 16044264830 or game.PlaceId == 15131065025 then
    setfpscap(200)
    
    local parry_remote, parry_target, spam_target = nil, nil, nil
    
    local bload = send("Blade Ball Script Execution", "Someone has executed Project DZ - Blade Ball")
    
    deliver(getgenv().webhooks.bb_url, bload)
    
    local function get_remote()
      for _, v in ipairs({vim}) do
        local x = v:FindFirstChildOfClass("RemoteEvent")
        if x and x.Name:find("\n") then
          parry_remote = x
          break
        end
      end
    end
  
  task.defer(function()
    rs.PreSimulation:Connect(function()
      if parry_remote then
        return
      end
      get_remote()
    end)
  end)
    
  local Window = Library:CreateWindow({
	Name = "Project DZ ~ Blade Ball",
	MenuDesc = "by DenDenZZZ",
	ShowCloseButton = false,
	SelectorTopDistance = 40,
	Rainbow = false,
	KeySystem = false
})

local Welcome = Window:CreateTab("Welcome")
local Home = Window:CreateTab("Home")
local Crates = Window:CreateTab("Crates")
local Misc = Window:CreateTab("Miscellanous")

local player_info = Welcome:CreateSection("Player Information")

Welcome:CreateLabel("Username : " .. plr.Name)
Welcome:CreateLabel("User ID : " .. plr.UserId)
Welcome:CreateLabel("HWID : " .. analytics:GetClientId())

local changelogs = Welcome:CreateSection("Project DZ Information")

Welcome:CreateParagraph("Games Supported", "~ Blade Ball : 🟢\n~ Blox Fruits : UNDER DEVELOPMENT\n~ The Strongest Battlegrounds : UNDER DEVELOPMENT\n~ Murder Mystery 2 : UNDER DEVELOPMENT\n~ Rivals : ON HOLD")

Welcome:CreateParagraph("Major Changes @ November 10 2024", "~ Anti Curve TEMPORARILY REMOVED\n~ Auto Spam Improvements\n~ Visualizer Fixed\n~ Auto Ability Cooldown Implemented\n~ Crate Buttons Fixed\n~ Follow Ball Improvements\n~ Auto Pilot Adaptation Implemented")

local socials = Welcome:CreateSection("Social Media")

Welcome:CreateButton({
  Name = "Discord Server", Callback = function() setclipboard("https://discord.gg/kAtPE7UrFg")
  end
})

Welcome:CreateButton({
  Name = "YouTube Channel", Callback = function() setclipboard("https://youtube.com/@DenDenZZZ")
  end
})

Welcome:CreateButton({
  Name = "Script Showcase", Callback = function() setclipboard("https://youtu.be/tazJ_OEFXCs?si=zoA3Ol-8UM3yGfOk")
  end
})

local credits = Welcome:CreateSection("Credits")

Welcome:CreateParagraph("Contributors", "KeyRBLX ~ Key System\nWaza80 ~ User Interface\nDenDenZZZ ~ Main Developer\nluau_dll ~ Co Developer")

local ap = Home:CreateSection("Auto Parry")

Home:CreateToggle({
  Name = "Auto Parry",
  Value = true,
  Callback = function(v)
    getgenv().features.blade_ball.auto_parry = v
  end
})

Home:CreateDropdown({
  Name = "Target Method",
  Multiple = false,
  Items = {"Closest", "Farthest", "Fastest", "Slowest", "Random"},
  Callback = function(c)
    getgenv().features.blade_ball.ap_target = c
  end
})

Home:CreateDropdown({
  Name = "Ball Trajectory",
  Multiple = false,
  Items = {"Straight", "Curved", "Random"},
  Callback = function(c)
    getgenv().features.blade_ball.ap_trajectory = c
  end
})

local spam = Home:CreateSection("Spam")

Home:CreateToggle({
  Name = "Auto Spam",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.auto_spam = v
  end
})

local home_others = Home:CreateSection("Other")

Home:CreateToggle({
  Name = "Visualizer",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.visualizer = v
  end
})

Home:CreateToggle({
  Name = "Auto Ability",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.auto_ability = v
  end
})

local auto_crates = Crates:CreateSection("Auto")

Crates:CreateToggle({
  Name = "Auto Explosion",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.auto_explosion = v
  end
})

Crates:CreateToggle({
  Name = "Auto Sword",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.auto_sword = v
  end
})

local manual_crates = Crates:CreateSection("Manual")

Crates:CreateButton({
  Name = "Explosion Crate",
  Callback = function()
    rstorage.Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
  end
})

Crates:CreateButton({
  Name = "Sword Crate",
  Callback = function()
    rstorage.Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
  end
})

local blatant = Misc:CreateSection("Blatant")

Misc:CreateToggle({
  Name = "Follow Ball",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.follow_ball = v
  end
})

Misc:CreateDropdown({
  Name = "Follow Ball Mode",
  Multi = false,
  Items = {"Walk", "Fly", "Teleport", "Below"},
  Callback = function(c)
    getgenv().features.blade_ball.fb_mode = c
  end
})

local extra = Misc:CreateSection("Extra")

Misc:CreateToggle({
  Name = "Camlock to Ball",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.camlock_ball = v
  end
})

Misc:CreateToggle({
  Name = "Parry SFX",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.parry_sfx = v
  end
})

Misc:CreateToggle({
  Name = "Auto Pilot",
  Value = false,
  Callback = function(v)
    getgenv().features.blade_ball.auto_pilot = v
  end
})

local ap_comps = {
      can_parry = true,
      parried = false,
      curved = false,
      
      curving = tick(),
      cooldown = tick(),
      
      range = 0
    }
    
    local as_comps = {
      spamming = false,
      can_spam = false,
      verified = false,
      
      timer = tick(),
      
      time_limit = 0,
      range = 0,
      bs_limit = 0,
      bd_limit = 0
    }
    
    local function fetch_ball()
      for _, ball in ipairs(workspace.Balls:GetChildren()) do
        if ball:GetAttribute("realBall") then
          return ball
        end
      end
    end
    
    local function find_parry_target()
      local target = nil
      local targets = {}
      
      if not plr.Character:FindFirstChild("HumanoidRootPart") then
         return nil
      end
      
      for _, selected in ipairs(workspace.Alive:GetChildren()) do
        if selected.Name ~= plr.Name and selected:IsA("Model") then
          local hrp = selected:FindFirstChild("HumanoidRootPart")
          local humanoid = selected:FindFirstChildOfClass("Humanoid")
          
          if not hrp or not humanoid or humanoid.Health <= 0 then
            return nil
          end
          
          local speed = math.ceil(hrp.Velocity.Magnitude)
          local distance = math.floor((plr.Character.HumanoidRootPart.Position - hrp.Position).Magnitude)
          
          table.insert(targets, {selected = selected, gap = distance, movement = speed})
          
          if getgenv().features.blade_ball.ap_target == "Closest" and (not target or distance < target.gap) then
            target = {selected = selected, gap = distance}
          elseif getgenv().features.blade_ball.ap_target == "Farthest" and (not target or distance > target.gap) then
            target = {selected = selected, gap = distance}
          elseif getgenv().features.blade_ball.ap_target == "Fastest" and (not target or speed > target.movement) then
            target = {selected = selected, movement = speed}
          elseif getgenv().features.blade_ball.ap_target == "Slowest" and (not target or speed < target.movement) then
            target = {selected = selected, movement = speed}
          end
        end
      end
      
      if getgenv().features.blade_ball.ap_target == "Random" and #targets > 0 or getgenv().features.blade_ball.ap_target == nil and #targets > 0 then
        target = targets[math.random(1, #targets)]
      end
      
      parry_target = target and target.selected
      return parry_target
    end
    
    local function find_spam_target()
  
      local max_distance = math.huge
      if not plr.Character:FindFirstChild("HumanoidRootPart") then
        return nil
      end
      
      for _, v in ipairs(workspace.Alive:GetChildren()) do
        if v.Name ~= plr.Name and v:IsA("Model") then
          local hrp = v:FindFirstChild("HumanoidRootPart")
          local humanoid = v:FindFirstChild("Humanoid")
          
          if not hrp or not humanoid or humanoid.Health <= 0 then
            return nil
          end
          
          local distance = math.floor((plr.Character.HumanoidRootPart.Position - hrp.Position).Magnitude)
          
          if distance < max_distance then
            max_distance = distance
            spam_target = v
          end
        end
      end
      return spam_target
    end
    
    workspace.Balls.ChildRemoved:Connect(function()
      ap_comps.can_parry = true
      ap_comps.parried = false
      as_comps.spamming = false
      ap_comps.curved = false
      
    end)
    
    crs.Heartbeat:Connect(function()
    if not getgenv().features.blade_ball.auto_parry then return end

    local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local ball = fetch_ball()
    if not ball then return end

    ball:GetAttributeChangedSignal("target"):Connect(function()
        ap_comps.can_parry = true
        ap_comps.parried = false
    end)

    if ball:GetAttribute("target") ~= plr.Name or (ap_comps.parried and not ap_comps.can_parry) then return end

    local ball_position = ball.Position
    local ball_velocity = ball.zoomies.VectorVelocity
    local ball_speed = math.floor(ball_velocity.Magnitude)
    local ball_distance = math.ceil((hrp.Position - ball_position).Magnitude)
    local ball_direction = (hrp.Position - ball_position).Unit
    local ball_dot = ball_direction:Dot(ball_velocity.Unit)
    local ball_angle = math.asin(ball_dot)

    if ball_speed <= 0 then
      return
    end
    
    ap_comps.range = math.clamp(20 + ball_speed / 10 + stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 10, 33, math.huge)

    if ball_angle < 0.0174533 then
      ap_comps.curved = true
      ap_comps.curving = tick()
      repeat
        cre.Heartbeat:Wait()
      until (tick() - curving) >= 1 or ball_distance <= ap_comps.range or ball_angle > 0.0174533 or interception <= 0.5
      ap_comps.curved = false
    end

    find_parry_target()
    if not parry_target then return end

    local target_position = parry_target.HumanoidRootPart.Position
    local interception = (ball_distance + ap_comps.range) / (ball_speed - ap_comps.range)

    if ball_speed < 250 then
        mode = 1
    elseif ball_speed > 250 then
        mode = 2
    end

    local trajectory
    if getgenv().features.blade_ball.ap_trajectory == "Straight" then
        trajectory = camera.CFrame
    elseif getgenv().features.blade_ball.ap_trajectory == "Curved" then
        trajectory = CFrame.new(camera.CFrame.Position, Vector3.new(math.huge, math.huge, -9999))
    else
        trajectory = CFrame.new(camera.CFrame.Position, Vector3.new(math.random(-9999, 9999), math.random(-9999, 9999), math.random(-9999, 0)))
    end

    if mode == 1 and not ap_comps.parried and not ap_comps.curved and not as_comps.spamming and ap_comps.can_parry and ball_distance <= ap_comps.range then
        parry_remote:FireServer(0, trajectory, {[target_position] = target_position}, {target_position.X, target_position.Y}, false)
        ap_comps.parried = true
        ap_comps.can_parry = false
        ap_comps.cooldown = tick()


            if ap_comps.parried and not ap_comps.can_parry then
                repeat
                    crs.Heartbeat:Wait()
                until (tick() - ap_comps.cooldown) >= 1
                ap_comps.can_parry = true
                ap_comps.parried = false
            end
    elseif mode == 2 and interception <= 0.6 and not ap_comps.parried and ap_comps.can_parry and not ap_comps.curved and not as_comps.spamming then
        parry_remote:FireServer(0, trajectory, {[target_position] = target_position}, {target_position.X, target_position.Y}, false)
        ap_comps.parried = true
        ap_comps.can_parry = false
        ap_comps.cooldown = tick()

            if ap_comps.parried and not ap_comps.can_parry then
                repeat
                    crs.Heartbeat:Wait()
                until (tick() - ap_comps.cooldown) >= 1
                ap_comps.can_parry = true
                ap_comps.parried = false
            end
    end
end)

crs.PreRender:Connect(function()
  if not getgenv().features.blade_ball.auto_spam then
    return
  end
  
  local ball = fetch_ball()
  if not ball then
    return
  end
  
  local ball_position = ball.Position
  local ball_velocity = ball.zoomies.VectorVelocity
  local ball_speed = math.ceil(ball_velocity.Magnitude)
  local ball_distance = math.floor((plr.Character.HumanoidRootPart.Position - ball_position).Magnitude)

  find_spam_target()
  if not spam_target then
    return
  end
  
  local target_position = spam_target.HumanoidRootPart.Position
  local target_distance = (plr.Character.HumanoidRootPart.Position - target_position).Magnitude
  
  as_comps.time_limit = target_distance / 20
  as_comps.range = math.clamp(math.ceil(ball_speed / 15), 25, 100)
  as_comps.bd_limit = math.clamp(math.ceil(ball_speed / 10), 25, 100)
  as_comps.bs_limit = math.clamp(math.ceil(target_distance + ball_distance), 10, 100)
  as_comps.verified = ball:GetAttribute("target") == plr.Name or ball:GetAttribute("target") == spam_target.Name

  ball:GetAttributeChangedSignal("target"):Connect(function()
    as_comps.timer = tick()
    as_comps.can_spam = false
    repeat
      crs.PreRender:Wait()
    until (tick() - as_comps.timer) >= as_comps.time_limit
    as_comps.can_spam = true
  end)
    
    if ball_speed >= as_comps.bs_limit and as_comps.verified and target_distance <= as_comps.range and ball_distance <= as_comps.bd_limit and as_comps.can_spam then
      as_comps.spammming = true
      parry_remote:FireServer(0, camera.CFrame, {[spam_target.Name] = target_position}, {target_position.X, target_position.Y}, false)
      else
        as_comps.spamming = false
    end
end)

task.spawn(function()
  local deball
  
  crs.PreSimulation:Connect(function()
    if not plr.Character then
      return
    end
    
    if not plr.Character:FindFirstChild("imaginary_ball") then
      deball = Instance.new("Part")
      deball.Name = "imaginary_ball"
      deball.Material = Enum.Material.ForceField
      deball.CastShadow = false
      deball.CanCollide = false
      deball.Anchored = true
      deball.Shape = Enum.PartType.Ball
      deball.Transparency = 0.5
      deball.Parent = plr.Character
    else
      deball = plr.Character:FindFirstChild("imaginary_ball")
    end

    if not getgenv().features.blade_ball.visualizer then
      return
    end

    if not plr.Character:FindFirstChild("HumanoidRootPart") then
      return
    end

    local ball = fetch_ball()
    if not ball then
      return
    end

    local distance = math.floor((plr.Character.HumanoidRootPart.Position - ball.Position).Magnitude)
    
    if ball:GetAttribute("target") == plr.Name then
      deball.Size = Vector3.new(distance + 10, distance + 10, distance + 10)
      deball.Color = Color3.new(1, 0, 0)
    else
      deball.Size = Vector3.new(distance, distance, distance)
      deball.Color = Color3.new(1, 1, 1)
    end
  end)
end)

spawn(function()
  while wait() do
    if getgenv().features.blade_ball.auto_ability then
      vim:SendKeyEvent(true, Enum.KeyCode.Q, false, nil)
    end
    if getgenv().features.blade_ball.auto_sword then
      rstorage.Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
    elseif getgenv().features.blade_ball.auto_explosion then
      rstorage.Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
      else
        return
    end
    wait(15)
  end
end)

task.spawn(function()
  rs.Stepped:Connect(function()
    if not getgenv().features.blade_ball.follow_ball then
      return
    end
    
    local ball = fetch_ball()
    if not ball then
      return
    end
    
    local ball_position = ball.Position
    
    if not plr.Character:FindFirstChild("HumanoidRootPart") then
      return
    end
    
    if getgenv().features.blade_ball.fb_mode == "Walk" then
      if not plr.Character:FindFirstChildOfClass("Humanoid") then
        return
      end
      plr.Character.Humanoid:MoveTo(ball_position + Vector3.new(0,0,-15))
    elseif getgenv().features.blade_ball.fb_mode == "Fly" then
      local tifo = TweenInfo.new(0.1)
      local goal = {CFrame = CFrame.new(ball_position + Vector3.new(0, 0, -15))}
      local fly = ts:Create(plr.Character.HumanoidRootPart, tifo, goal)
      fly:Play()
      fly.Completed:Wait()
      if getgenv().features.blade_ball.fb_mode ~= "Fly" or not getgenv().features.blade_ball.follow_ball then
        fly:Destroy()
      end
    elseif getgenv().features.blade_ball.fb_mode == "Teleport" then
      plr.Character.HumanoidRootPart.CFrame = CFrame.new(ball_position + Vector3.new(0, 0, -15))
    elseif getgenv().features.blade_ball.fb_mode == "Below" then
      local tifo = TweenInfo.new(0.1)
      local goal = {CFrame = CFrame.new(ball_position + Vector3.new(0, -15, 0))}
      local under_tween = ts:Create(plr.Character.HumanoidRootPart, tifo, goal)
      under_tween:Play()
      under_tween.Completed:Wait()
      if getgenv().features.blade_ball.fb_mode ~= "Under" or not getgenv().features.blade_ball.follow_ball then
        under_tween:Destroy()
      end
    end
  end)
end)

task.spawn(function()
  rs.Stepped:Connect(function()
    if not getgenv().features.blade_ball.auto_pilot then
      return
    end
    
    local ball = fetch_ball()
    if not ball then
      return
    end
    
    if not plr.Character:FindFirstChildOfClass("Humanoid") or not plr.Character:FindFirstChild("HumanoidRootPart") then
      return
    end

    local destination
    local randValue = math.random(1, 100)

    if randValue >= 80 then
      destination = plr.Character.HumanoidRootPart.Position + Vector3.new(math.random(-100,100), 0, math.random(-100,100))
    elseif randValue < 80 then
      destination = ball.Position
    end

    if destination then
      plr.Character.Humanoid:MoveTo(destination)
      task.wait(0.31)
      if math.random(1, 100) > 20 then
        plr.Character.Humanoid.Jump = true
      end
    end
  end)
end)

task.defer(function()
  rs.Stepped:Connect(function()
    if not getgenv().features.blade_ball.camlock_ball then
      return
    end
    
    local ball = fetch_ball()
    if not ball then
      return
    end
    
    camera.CFrame = camera.CFrame:Lerp(CFrame.new(camera.CFrame.Position, ball.Position), 0.75)
    
  end)
end)

local starbar = Instance.new("Sound", plr)
starbar.SoundId = "rbxassetid://8561500387"

rstorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function()
  if not getgenv().features.blade_ball.parry_sfx then
    return
  end
    starbar:Play()
end)

  elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    
    
    else
    plr:Kick("Game not Supported YET")
  end
  
end
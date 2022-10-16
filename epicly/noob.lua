repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local bedwars = {}
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end

local players = game:GetService("Players")
local textservice = game:GetService("TextService")
local repstorage = game:GetService("ReplicatedStorage")
local lplr = players.LocalPlayer
local lighting = game:GetService("Lighting")
local cam = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	cam = (workspace.CurrentCamera or workspace:FindFirstChild("Camera") or Instance.new("Camera"))
end)
local targetinfo = shared.VapeTargetInfo
local collectionservice = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local mouse = lplr:GetMouse()
local bedwarsblocks = {}
local blockraycast = RaycastParams.new()
blockraycast.FilterType = Enum.RaycastFilterType.Whitelist
local getfunctions
local oldchar
local oldcloneroot
local matchState = 0
local kit = ""
local antivoidypos = 0
local kills = 0
local beds = 0
local reported = 0
local lagbacks = 0
local otherlagbacks = 0
local matchstatetick = 0
local lagbackevent = Instance.new("BindableEvent")
local allowspeed = true
local antivoiding = false

function createwarning(name,text,seconds)
    local frame = GuiLibrary["CreateNotification"](name, text, seconds, "assets/WarningNotification.png")
end
local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end
local Client = require(repstorage.TS.remotes).default.Client
local InventoryUtil = require(repstorage.TS.inventory["inventory-util"]).InventoryUtil
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)

		bedwars = {
			["DamageController"] = KnitClient.Controllers.DamageController,
			["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
			["DamageIndicatorController"] = KnitClient.Controllers.DamageIndicatorController
        }

VapePrivate = COB("Blatant", {
	["Name"] = "Invisibility",
	["Function"] = function(callback)
		if callback then
			VapePrivate["ToggleButton"](false)
            getgenv().invis = true
            spawn(function()
            while invis == true do
				game.Players.LocalPlayer.Character.Head:FindFirstChild("face"):Destroy()
            local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()

for _, part in ipairs(character:GetDescendants()) do
	if part:IsA("BasePart") then
		part.Transparency = 1
	end
end
wait()
end
end)
	        else
		end
	end,
})


	local Invisible = {["Enabled"] = false}
	Invisible = COB("Blatant", {
		["Name"]  = "BlockExploit",
		["Function"] = function(callback)
			if callback then
			end
		end,
		["Default"] = false,
	})



	local Invisible = {["Enabled"] = false}
	Invisible = COB("Utility", {
		["Name"]  = "FunnyItem",
		["Function"] = function(callback)
			if callback then

			end
		end,
		["Default"] = false,
	})

		local function findplayers(arg)
			for i,v in pairs(game:GetService("Players"):GetChildren()) do if v.Name:lower():sub(1, arg:len()) == arg:lower() then return v end end
			return nil
		end
	
		local PlayerCrasher = {["Enabled"] = false}
		local PlayerCrasherPower = {["Value"] = 2}
		local PlayerCrasherDelay = {["Value"] = 2}
		local targetedplayer
		local RunService = game:GetService("RunService")
		local ultrafunnyt = {["Enabled"] = false}
		ultrafunnyt = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
			["Name"] = "PartyCrasher",
			["Function"] = function(callback)
				if callback then
							getgenv().FunnyCrash = true
							for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
						if (v.Name:find("arty") or v.Name:find("otification"))and v:IsA("RemoteEvent") then
							for i2,v2 in pairs(getconnections(v.OnClientEvent)) do 
								v2:Disable()
							end
						end
					end
					spawn(function()
						repeat
							createwarning("PartyCrasher",  "Crashing", 3)
							task.wait(1.6)
						until (not ultrafunnyt["Enabled"])
					end)
					for i = 1, PlayerCrasherPower["Value"] do 
							spawn(function()
								while FunnyCrash == true do
									local args = {
										[1] = {
											["queueType"] = "bedwars_to1"
										}
									}
									
									game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer(unpack(args))
																	game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").leaveQueue:FireServer()
						wait()
						end
							end)
							end
							else
				getgenv().FunnyCrash = false
				end
			end
		})
		PlayerCrasherPower = ultrafunnyt.CreateSlider({
			["Name"] = "Requests per second",
			["Min"] = 1,
			["Max"] = 50,
			["Default"] = 10,
			["Function"] = function() end
		})
		PlayerCrasherDelay = ultrafunnyt.CreateSlider({
			["Name"] = "Seconds per request",
			["Min"] = 0,
			["Max"] = 10,
			["Default"] = 0,
			["Function"] = function() end
		})
VapePrivat = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
    ["Name"] = "GodPack",
    ["Function"] = function(callback)
        if callback then
              local Settings = {
    Resize = true,
    ResizeNum = 2, --default is 1
    Color = Color3.fromRGB(255,255,255),
    LoadTime = 0
}

repeat task.wait() until game:IsLoaded()
local bwgames = {6872274481,8444591321,8560631822}
if not table.find(bwgames,game.PlaceId) then return end
task.wait(Settings.LoadTime)
local cam = game:GetService("Workspace").Camera
cam:WaitForChild("Viewmodel")
cam.Viewmodel.ChildAdded:Connect(function(model)
    if model:FindFirstChild("Handle") then
        local handle = model:FindFirstChild("Handle")
        local name = string.lower(model.Name)
        if Settings.Resize == true then
            handle.Size = handle.Size / Settings.ResizeNum
        end
        handle.Material = Enum.Material.Neon
        handle.TextureID = ""
        handle.Color = Settings.Neon
        if name:find("sword") then
            handle.MeshId = ""
        elseif name:find("snowball") then
            handle.MeshId = ""
        end
    end
end)
VapePrivat["ToggleButton"](false)

        end
    end,
})

	local function getScaffold(vec, diagonaltoggle)
		local realvec = Vector3.new(math.floor((vec.X / 3) + 0.5) * 3, math.floor((vec.Y / 3) + 0.5) * 3, math.floor((vec.Z / 3) + 0.5) * 3) 
		return realvec
	end

	local function getPirateFlag()
		for i,v in pairs(collectionservice:GetTagged("block")) do 
			if v.Name == "pirate_flag" and v:GetAttribute("PlacedByUserId") == lplr.UserId then 
				return v.Position, v
			end
		end
	end

	local function delete(v, flag)
		task.spawn(function()
			pcall(function()
				bedwars["ClientHandler"]:Get(bedwars["PirateRemote"]):CallServer({
					flagPosition = bedwars["BlockController"]:getBlockPosition(flag) * 3,
					itemDrop = v
				})
			end)
		end)
	end

	local deletenearby = {["Enabled"] = false}
	local pickupitemdrop = {["Enabled"] = false}
	local deletenearbyblocks = {["Enabled"] = true}
	local deletenearbyplayers = {["Enabled"] = false}
	local deletenearbyplayershum = {["Enabled"] = false}
	local deleteteammates = {["Enabled"] = false}
	local certainblocks = {["ObjectList"] = {}}
	deletenearby = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
		["Name"] = "DeleteNearby",
		["Function"] = function(callback)
			if callback then 
				local flag, flagobj = getPirateFlag()
				if getItem("pirate_flag") or flag then 
					if entity.isAlive then
						if not flag then 
							bedwars["placeBlock"](getScaffold(entity.character.HumanoidRootPart.Position - (entity.character.HumanoidRootPart.CFrame.lookVector * 4)), "pirate_flag")
							flag, flagobj = getPirateFlag()
						end
						task.delay(0.3, function()
							if flag then 
								if deletenearbyblocks["Enabled"] then
									for i,v in pairs(collectionservice:GetTagged("block")) do 
										if v.Name ~= "pirate_flag" and (v.Position - flag).Magnitude <= 60 then 
											if i % 100 == 0 then 
												task.wait(0.3)
											end
											if #certainblocks["ObjectList"] <= 0 or table.find(certainblocks["ObjectList"], v.Name) then
												delete(v, flag)
											end
										end
									end
								end
								for i,v in pairs(entity.entityList) do 
									if (v.RootPart.Position - flag).Magnitude <= 60 then 
										if (not deleteteammates["Enabled"]) and (not v.Targetable) then continue end
										if deletenearbyplayershum["Enabled"] then 
											delete(v.RootPart, flag)
										end
										if deletenearbyplayers["Enabled"] then
											delete(v.Head, flag)
										end
									end
								end
								if pickupitemdrop["Enabled"] then 
									for i,v in pairs(collectionservice:GetTagged("ItemDrop")) do 
										if (v.Position - flag).Magnitude <= 60 then 
											delete(v, flag)
										end
									end
								end
								delete(flagobj, flag)
							else 
								createwarning("DeleteNearby", "skill", 10)
							end
						end)
					end
				else
					createwarning("DeleteNearby", "no item u stupid", 10)
				end
				deletenearby["ToggleButton"](false)
			end
		end
	})
	pickupitemdrop = deletenearby.CreateToggle({
		["Name"] = "ItemDrop",
		["Function"] = function() end,
		["Default"] = true
	})
	deletenearbyblocks = deletenearby.CreateToggle({
		["Name"] = "Blocks",
		["Function"] = function() end,
		["Default"] = true
	})
	deletenearbyplayers = deletenearby.CreateToggle({
		["Name"] = "Players",
		["Function"] = function() end
	})
	deletenearbyplayershum = deletenearby.CreateToggle({
		["Name"] = "Players Movement",
		["Function"] = function() end
	})
	deleteteammates = deletenearby.CreateToggle({
		["Name"] = "Teammates",
		["Function"] = function() end,
		["Default"] = true
	})
	certainblocks = deletenearby.CreateTextList({
		["Name"] = "NukerList",
		["TempText"] = "block (tesla_trap)",
		["AddFunction"] = function() end
	})

	local function findplayers(arg)
		for i,v in pairs(game:GetService("Players"):GetChildren()) do if v.Name:lower():sub(1, arg:len()) == arg:lower() then return v end end
		return nil
	end

	local PlayerCrasher = {["Enabled"] = false}
	local PlayerCrasherPower = {["Value"] = 2}
	local PlayerCrasherDelay = {["Value"] = 2}
	local PlayerCrasherBox = {["Value"] = ""}
	local targetedplayer	
	PlayerCrasher = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
		["Name"] = "PartyInvite",
		["Function"] = function(callback)
			if callback then
				for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
					if (v.Name:find("arty") or v.Name:find("otification"))and v:IsA("RemoteEvent") then
						for i2,v2 in pairs(getconnections(v.OnClientEvent)) do 
							v2:Disable()
						end
					end
				end
				spawn(function()
					repeat
						task.wait(3)
						createwarning("PartyInvite", targetedplayer and "Inviting "..(targetedplayer.DisplayName or targetedplayer.Name) or "Player not found", 3)
					until (not PlayerCrasher["Enabled"])
				end)
				spawn(function()
					repeat
						task.wait(PlayerCrasherDelay["Value"] == 0 and nil or PlayerCrasherDelay["Value"] / 10)
						local plr = findplayers(PlayerCrasherBox["Value"])
						targetedplayer = plr
						if plr then
							spawn(function()
								for i = 1, PlayerCrasherPower["Value"] do 
									bedwars["LobbyClientEvents"].inviteToParty({
										player = plr
									})
                                                      bedwars["LobbyClientEvents"].removeFromParty({
                                                             player = plr
                                                      })
								end
							end)
						end
					until (not PlayerCrasher["Enabled"])
				end)
			end
		end
	})
	PlayerCrasherBox = PlayerCrasher.CreateTextBox({
		["Name"] = "Player",
		["TempText"] = "player target",
		["FocusLost"] = function(enter) end
	})
	PlayerCrasherPower = PlayerCrasher.CreateSlider({
		["Name"] = "Requests per second",
		["Min"] = 1,
		["Max"] = 10,
		["Default"] = 2,
		["Function"] = function() end
	})
	PlayerCrasherDelay = PlayerCrasher.CreateSlider({
		["Name"] = "Seconds per request",
		["Min"] = 0,
		["Max"] = 10,
		["Default"] = 0,
		["Function"] = function() end
	})
	
		local Crasher = {["Enabled"] = false}
	local CrasherAutoEnable = {["Enabled"] = false}
	local oldcrash
	local oldplay
	Crasher = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
		["Name"] = "ClientCrasher",
		["Function"] = function(callback)
			if callback then
				oldcrash = bedwars["GameAnimationUtil"].playAnimation
				oldplay = bedwars["SoundManager"].playSound
				bedwars["GameAnimationUtil"].playAnimation = function(lplr, anim, ...)
					if anim == bedwars["AnimationType"].EQUIP_1 then 
						return
					end
					return oldcrash(lplr, anim, ...)
				end
				bedwars["SoundManager"].playSound = function(self, num, ...)
					if num == bedwars["SoundList"].EQUIP_DEFAULT or num == bedwars["SoundList"].EQUIP_SWORD or num == bedwars["SoundList"].EQUIP_BOW then 
						return
					end
					return oldplay(self, num, ...)
				end
				local remote = bedwars["ClientHandler"]:Get(bedwars["EquipItemRemote"])["instance"]
				local slowmode = false
				local suc 
				task.spawn(function()
					repeat
						task.wait(slowmode and 0 or 0)
						slowmode = not slowmode
					until (not Crasher["Enabled"])
				end)
				task.spawn(function()
					repeat
						task.wait(0.2)
						suc = pcall(function()
							local inv = lplr.Character.InventoryFolder.Value:GetChildren()
							local item = inv[1]
							local item2 = inv[2]
							if item then
								task.spawn(function()
									for i = 5, (slowmode and 0 or 0) do
										game:GetService("RunService").Heartbeat:Wait()
										task.spawn(function() 
											remote:InvokeServer({
												hand = item
											})
										end)
										task.spawn(function() 
											remote:InvokeServer({
												hand = item2 or false
											})
										end)
									end
								end)
							end
						end)
					until (not Crasher["Enabled"])
				end)
			else
				bedwars["GameAnimationUtil"].playAnimation = oldcrash
				bedwars["SoundManager"].playSound = oldplay
				slowmode = false
			end
		end
	})

	local function getaccessories()
		local count = 0
		if isAlive() then 
			for i,v in pairs(lplr.Character:GetChildren()) do 
				if v:IsA("Accessory") then 
					count = count + 1
				end
			end
		end
		return count
	end

	local AntiCrash = {["Enabled"] = false}
	AntiCrash = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
		["Name"] = "AntiCrash",
		["Function"] = function(callback)
			if callback then 
				local cached = {}
				game:GetService("CollectionService"):GetInstanceAddedSignal("inventory-entity"):connect(function(inv)
					spawn(function()
						local invitem = inv:WaitForChild("HandInvItem")
						local funny
						task.wait(0.2)
						for i,v in pairs(getconnections(invitem.Changed)) do 
							funny = v.Function
							v:Disable()
						end
						if funny then
							invitem.Changed:connect(function(item)
								if cached[inv] == nil then cached[inv] = 0 end
								if cached[inv] >= 6 then return end
								cached[inv] = cached[inv] + 1
								task.delay(1, function() cached[inv] = cached[inv] - 1 end)
								funny(item)
							end)
						end
					end)
				end)
				for i2,inv in pairs(game:GetService("CollectionService"):GetTagged("inventory-entity")) do 
					spawn(function()
						local invitem = inv:WaitForChild("HandInvItem")
						local funny
						task.wait(0.2)
						for i,v in pairs(getconnections(invitem.Changed)) do 
							funny = v.Function
							v:Disable()
						end
						if funny then
							invitem.Changed:connect(function(item)
								if cached[inv] == nil then cached[inv] = 0 end
								if cached[inv] >= 6 then return end
								cached[inv] = cached[inv] + 1
								task.delay(1, function() cached[inv] = cached[inv] - 1 end)
								funny(item)
							end)
						end
					end)
				end
			end
		end
	})
	
	local BiMode_Blur 
local BiMode = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
	["Name"]  = "FourBigGuysExploit",
	["Function"] = function(callback)
		if callback then
			createwarning("FourBigGuysExploit", "Couldnt Find remote!", 5)
		end
	end,
	["Default"] = false,
	["HoverText"] = "ok"
})

    local Messages = {"Pow!","Thump!","Wham!","Hit!","Smack!","Bang!","Pop!","Boom!"}
    local old
    local Enabled = false
    local FunnyIndicator = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "FunnyIndicator",
        ["Function"] = function(callback)
                if callback then
				createwarning("Callback", "CallBack Works", 5)
                old = debug.getupvalue(bedwars["DamageIndicator"],10,{Create})
                debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = function(self,obj,...)
                        spawn(function()
                            pcall(function()
                                obj.Parent.Text = Messages[math.random(1,#Messages)]
                                obj.Parent.TextColor3 =  Color3.fromHSV(tick()%5/5,1,1)
                            end)
                        end)
                        return game:GetService("TweenService"):Create(obj,...)
                    end
                })
            else
                debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = old
                })
                old = nil
            end
        end,
	["Default"] = false,
	["HoverText"] = "Funny Damage Indicators1"
    })

local ui
    spawn(function()
        ui = Instance.new("ScreenGui",game:GetService("CoreGui"))
        ui.Name = "BetterFlyUI"
        ui.Enabled = false
        if syn then syn.protect_gui(ui) end
        local label = Instance.new("TextLabel")
        label.TextSize = 16
        label.Position = UDim2.new(0.4404,0,0.4700,0)
        label.Size = UDim2.new(0.1181,0,0.1374,0)
        label.BackgroundColor3 = Color3.fromRGB(255,255,255)
        label.BackgroundTransparency = 1
        label.Text = "Safe\nStuds: 0\nY: 0\nTime: 0"
        label.TextColor3 = Color3.fromRGB(65,255,65)
        label.Parent = ui
    end)
    local velo
    local part
    local clone
    local Enabled = false
    local BetterFly = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "FunnyFlyV2",
        ["Function"] = function(callback)
            if callback then
                spawn(function()
		createwarning("Spawn", "SpawnFunc Works", 5)
                    local char = lplr.Character
                    local starttick = tick()
                    local startpos = char:FindFirstChild("HumanoidRootPart").Position
                    ui.Enabled = true
                    char.Archivable = true
                    clone = char:Clone()
                    velo = Instance.new("BodyVelocity")
                    velo.MaxForce = Vector3.new(9e9,9e9,9e9)
                    velo.Parent = char:FindFirstChild("HumanoidRootPart")
                    clone.Parent = game:GetService("Workspace")
                    cam.CameraSubject = clone:FindFirstChild("Humanoid")
                    part = Instance.new("Part")
                    part.Anchored = true
                    part.Size = Vector3.new(10,1,10)
                    part.Transparency = 1
                    part.CFrame = clone:FindFirstChild("HumanoidRootPart").CFrame - Vector3.new(0,5,0)
                    part.Parent = game:GetService("Workspace")
                    for i,v in pairs(char:GetChildren()) do
                        if string.lower(v.ClassName):find("part") and v.Name ~= "HumanoidRootPart" then
                            v.Transparency = 1
                        end
                        if v:IsA("Accessory") then
                            v:FindFirstChild("Handle").Transparency = 1
                        end
                    end
                    char:FindFirstChild("Head"):FindFirstChild("face").Transparency = 1
                    spawn(function()
                        while task.wait() do
                            if not Enabled then
                                local studs = (startpos - char:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                local time_ = math.abs(starttick - tick())
                                CreateNotification("BetterFly","Flew "..math.floor(studs).." Studs in "..time_.." Seconds!",5)
                                return
                            end
                            local studs = (startpos - char:FindFirstChild("HumanoidRootPart").Position).Magnitude
                            local Y = char:FindFirstChild("HumanoidRootPart").Position.Y
                            local calctime = math.abs(starttick - tick())
                            if isnetworkowner(char:FindFirstChild("HumanoidRootPart")) then
                                ui.TextLabel.TextColor3 = Color3.fromRGB(65,255,65)
                                ui.TextLabel.Text = "Safe\nStuds: "..math.floor(studs).."\nY: "..math.floor(Y).."\nTime: "..math.floor(calctime)
                            else
                                ui.TextLabel.TextColor3 = Color3.fromRGB(255,65,65)
                                ui.TextLabel.Text = "Unsafe\nStuds: "..math.floor(studs).."\nY: "..math.floor(Y).."\nTime: "..math.floor(calctime)
                            end
                        end
                    end)
                    spawn(function()
                        while task.wait() do
                            if not Enabled then return end
                            for i = 2,30,2 do
                                task.wait(0.01)
                                if not Enabled then return end
                                part.CFrame = CFrame.new(clone:FindFirstChild("HumanoidRootPart").CFrame.X,part.CFrame.Y,clone:FindFirstChild("HumanoidRootPart").CFrame.Z)
                                clone:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(char:FindFirstChild("HumanoidRootPart").CFrame.X,clone:FindFirstChild("HumanoidRootPart").CFrame.Y,char:FindFirstChild("HumanoidRootPart").CFrame.Z)
                                clone:FindFirstChild("HumanoidRootPart").Rotation = char:FindFirstChild("HumanoidRootPart").Rotation
                                if char:FindFirstChild("Humanoid").MoveDirection.Magnitude > 0 then
                                    velo.Velocity = lplr.Character:FindFirstChild("HumanoidRootPart").CFrame.LookVector * char:FindFirstChild("Humanoid").WalkSpeed + Vector3.new(0,25 + i,0)
                                else
                                    velo.Velocity = Vector3.new(0,25 + i,0)
                                end
                            end
                        end
                    end)
                end)
            else
                for i,v in pairs(lplr.Character:GetChildren()) do
                    if string.lower(v.ClassName):find("part") and v.Name ~= "HumanoidRootPart" then
                        v.Transparency = 0
                    end
                    if v:IsA("Accessory") then
                        v:FindFirstChild("Handle").Transparency = 0
                    end
                end
                lplr.Character:FindFirstChild("Head"):FindFirstChild("face").Transparency = 0
                cam.CameraSubject = lplr.Character:FindFirstChild("Humanoid")
                task.delay(0.1, function() velo:Destroy() end)
                velo.Velocity = Vector3.new(0,-100,0)
                velo:Destroy()
                part:Destroy()
                clone:Destroy()
                ui.Enabled = false
            end
        end
    })

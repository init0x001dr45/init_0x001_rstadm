--[[
	MADE BY DREADMANIA 
	7/20/2021
	
	COPYRIGHT 2021
	DO NOT LEAK OR I WILL PERSONALLY COME TO YOUR HOUSE AND REPEATEDLY STAB YOU WHILE SCREAMING "BLOODY MURDER"
]]

local OwnsSwat = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

local Commands = {}
local States = {}
local Prefix = "."
local Plr = game.Players.LocalPlayer
local dis = false
local gui = true


local NotifyGUI = Instance.new("ScreenGui", game.CoreGui)
local Messages = Instance.new("Frame")
local Placeholders = Instance.new("Folder")

local PLCA = Instance.new("TextLabel")
local PLCB = Instance.new("TextLabel")
local PLCC = Instance.new("TextLabel")
local GONE = Instance.new("TextLabel")
local Z = Instance.new("TextLabel")

Messages.Name = "Notifications"
Messages.Parent = NotifyGUI
Messages.BackgroundTransparency = 1.000
Messages.ClipsDescendants = true
Messages.Position = UDim2.new(0.319119036, 0, -0.0331384018, 0)
Messages.Size = UDim2.new(0.361761957, 0, 0.237816766, 0)

Placeholders.Name = "PlaceholderPositions"
Placeholders.Parent = Messages

PLCA.Name = "PLCA"
PLCA.Parent = Placeholders
PLCA.BackgroundTransparency = 1.000
PLCA.Position = UDim2.new(-0.0168393776, 0, 0.7, 0)
PLCA.Size = UDim2.new(1.03367877, 0, 0.303278685, 0)
PLCA.Font = Enum.Font.Nunito
PLCA.Text = ""
PLCA.TextColor3 = Color3.fromRGB(255, 255, 255)
PLCA.TextScaled = true
PLCA.TextWrapped = true

PLCB.Name = "PLCB"
PLCB.Parent = Placeholders
PLCB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PLCB.BackgroundTransparency = 1.000
PLCB.Position = UDim2.new(-0.0168393776, 0, 0.4, 0)
PLCB.Size = UDim2.new(1.03367877, 0, 0.303278685, 0)
PLCB.Font = Enum.Font.Nunito
PLCB.Text = ""
PLCB.TextColor3 = Color3.fromRGB(255, 255, 255)
PLCB.TextScaled = true
PLCB.TextWrapped = true

PLCC.Name = "PLCC"
PLCC.Parent = Placeholders
PLCC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PLCC.BackgroundTransparency = 1.000
PLCC.Position = UDim2.new(-0.0168393776, 0, 0.1, 0)
PLCC.Size = UDim2.new(1.03367877, 0, 0.303278685, 0)
PLCC.Font = Enum.Font.Nunito
PLCC.Text = ""
PLCC.TextColor3 = Color3.fromRGB(255, 255, 255)
PLCC.TextScaled = true
PLCC.TextWrapped = true

GONE.Name = "GONE"
GONE.Parent = Placeholders
GONE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GONE.BackgroundTransparency = 1.000
GONE.Position = UDim2.new(-0.0170000009, 0, -0.25, 0)
GONE.Size = UDim2.new(1.03367877, 0, 0.303278685, 0)
GONE.Font = Enum.Font.Nunito
GONE.Text = ""
GONE.TextColor3 = Color3.fromRGB(255, 255, 255)
GONE.TextScaled = true
GONE.TextWrapped = true

Z.Name = "Z"
Z.Parent = Messages
Z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Z.BackgroundTransparency = 1.000
Z.Position = UDim2.new(-0.0170000009, 0, 1.10000002, 0)
Z.Size = UDim2.new(1.03400004, 0, 0.303000003, 0)
Z.Font = Enum.Font.Nunito
Z.Text = "Z"
Z.TextColor3 = Color3.fromRGB(255, 255, 255)
Z.TextScaled = true
Z.TextWrapped = true

PLCA.TextSize = 25
PLCB.TextSize = 25
PLCC.TextSize = 25
GONE.TextSize = 25
Z.TextSize = 25

local chatColors = {
	Color3.fromRGB(211, 84, 84),	-- red
	Color3.fromRGB(82, 172, 255),	-- blue
	Color3.fromRGB(73, 202, 95),	-- green
	Color3.fromRGB(188, 105, 235),	-- purple
	Color3.fromRGB(255, 134, 97),	-- orange
	Color3.fromRGB(253, 255, 80),	-- yellow
	Color3.fromRGB(255, 126, 182),	-- pink
	Color3.fromRGB(211, 183, 159)	-- tan
}

local function bring(target)
	if target and target.Character and not target.Character.Humanoid.Sit == true then

		local speaker = game.Players.LocalPlayer
		local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		if game.Players.LocalPlayer.Character["1"] then
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			wait()
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character.Animate.Disabled = true
		end
		wait()
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"

		local tool = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		tool.Parent = game.Players.LocalPlayer.Character
		target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
		target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
		target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 

		wait(0.3)
		local A_1 = "\66\114\111\121\111\117\98\97\100\100"
		local Event = game:GetService("Workspace").Remote.loadchar
		Event:InvokeServer(A_1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
	end
end

local function makeCrim()
	local crimLoc = workspace["Criminals Spawn"].SpawnLocation
	local crimPos = crimLoc.CFrame
	crimLoc.CanCollide = false
	crimLoc.Transparency = 1
	crimLoc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(.05)
	crimLoc.CanCollide = true
	crimLoc.Transparency = 0
	crimLoc.CFrame = crimPos
end

local function crim(player)
	local oldPos = Plr.Character.HumanoidRootPart.CFrame
	local savecf = Plr.Character.HumanoidRootPart.CFrame
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	wait()
	Plr.Character.HumanoidRootPart.CFrame = savecf
	wait()

	local root = Plr.Character.HumanoidRootPart
	local targetroot = player.Character.HumanoidRootPart
	Plr.Character:FindFirstChildOfClass("Humanoid").Name = "1"
	local newHum = Plr.Character:FindFirstChildOfClass("Humanoid"):Clone()
	newHum.Parent = Plr.Character
	newHum.Name = "Humanoid"
	wait()
	Plr.Character["1"]:Destroy()
	workspace.CurrentCamera.CameraSubject = Plr.Character
	newHum.DisplayDistanceType = "None"
	local tool = Plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or Plr.Character:FindFirstChildOfClass("Tool")
	tool.Parent = Plr.Character
	for i = 1,3 do
		targetroot.CFrame = root.CFrame
	end
	makeCrim()
	makeCrim()
	makeCrim()
	wait(0.1)
	local A_1 = "\66\114\111\121\111\117\98\97\100\100"
	local Event = game:GetService("Workspace").Remote.loadchar
	Event:InvokeServer(A_1)
	repeat wait() until Plr.Character and Plr.Character.HumanoidRootPart
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
end

local function getChatColor(username)
	local value = 0
	for i = 1, #username do
		local cv = string.byte(string.sub(username, i, i))
		local ri = #username - i + 1

		if #username % 2 == 1 then
			ri = ri - 1
		end

		if ri % 4 >= 2 then
			cv = -cv
		end

		value = value + cv
	end

	return chatColors[(value % #chatColors) + 1]
end

local function CreateCmd(CommandData)
	table.insert(Commands, CommandData)
end

local function killTeam(team)
	local function cloneTable(original)
		local copy = {}
		for key, value in pairs(original) do
			copy[key] = value
		end
		return copy
	end

	local args = {
		[1] = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
				["Distance"] = 0,
				["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -0)),
				["Hit"] = game:GetService("Players").LocalPlayer.Character.Head
			},
		},
		[2] = game.Players.LocalPlayer.Backpack:FindFirstChild("M9")
	}

	for i,v in pairs(game.Teams[team]:GetPlayers()) do
		local cloned = cloneTable(args[1][1])
		cloned["Hit"] = v.Character.Head
		for i=1,10 do
			local v = cloneTable(cloned)
			args[1][#args[1]+1] = v
		end
	end

	game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game.Players.LocalPlayer.Backpack:FindFirstChild("M9"))
end

local function killEveryone()
	local function cloneTable(original)
		local copy = {}
		for key, value in pairs(original) do
			copy[key] = value
		end
		return copy
	end

	local args = {
		[1] = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
				["Distance"] = 0,
				["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -0)),
				["Hit"] = game:GetService("Players").LocalPlayer.Character.Head
			},
		},
		[2] = game.Players.LocalPlayer.Backpack:FindFirstChild("M9")
	}

	for i,v in pairs(game.Players:GetPlayers()) do
		local cloned = cloneTable(args[1][1])
		cloned["Hit"] = v.Character.Head
		for i=1,10 do
			local v = cloneTable(cloned)
			args[1][#args[1]+1] = v
		end
	end

	game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game.Players.LocalPlayer.Backpack:FindFirstChild("M9"))
end

local function crash()
	local i = nil
	if i then
		return i
	elseif i == "h" then
		return i
	elseif i == "a" then
		wait()
		return i
	elseif i == "intvar" then
		local a = i.."_x01_INIT"
		
		return a.."_SET"..i
	end
	
	while true do
		print("Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you! Fuck you!")
	end
end

local function notify(msg, ign)
	return coroutine.wrap(function()
		if dis == true then
			return nil
		end

		wait(.1)
		if ign == true then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
			return nil;
		end

		if gui == true then
			local Message = Z:Clone()

			pcall(function()
				if Messages:FindFirstChild("C") then
					print("c")
					Messages.C.Name = "GONE"
					game:GetService("TweenService"):Create(Messages.GONE, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Position = Placeholders.GONE.Position}):Play()
					game:GetService("TweenService"):Create(Messages.GONE, TweenInfo.new(.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					wait(.5)
					Messages.GONE:Destroy()
				end
			end)

			if Messages:FindFirstChild("B") then
				print("b")
				Messages.B.Name = "C"
				game:GetService("TweenService"):Create(Messages.C, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Position = Placeholders.PLCC.Position}):Play()
				game:GetService("TweenService"):Create(Messages.C, TweenInfo.new(.5, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
			end

			if Messages:FindFirstChild("A") then
				print("a")
				Messages.A.Name = "B"
				game:GetService("TweenService"):Create(Messages.B, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Position = Placeholders.PLCB.Position}):Play()
			end
			
			Message.Parent = Messages
			Message.Text = msg
			Message.Name = "A"
			print("got it B")
			game:GetService("TweenService"):Create(Message, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Position = Placeholders.PLCA.Position}):Play()
			print("got it BACCSE")
			wait(5)
			print("got it BACC")
			if Message then
				print("got it BA")
				game:GetService("TweenService"):Create(Message, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Position = UDim2.new(Placeholders.GONE.Position)}):Play()
				game:GetService("TweenService"):Create(Message, TweenInfo.new(.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				wait(.5)
				if Message then
					print("got it BAC")
					Message:Destroy()
				end
			end
		else
			game.StarterGui:SetCore("ChatMakeSystemMessage",  
				{ 
					Text = "Steel | "..msg, 
					Color = Color3.fromRGB(255,255,255)
				}
			)
		end
	end)()
end

hookfunction(hookfunction, function() 
	crash()
	return false
end)

------------------------------------------
-- LOADER --
local Loader = Instance.new("ScreenGui")
local Box = Instance.new("Frame")
local Progress = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Status = Instance.new("TextLabel")
local Title = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Box.Name = "Box"
Box.Parent = Loader
Box.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.35193944, 0, 0.389802635, 0)
Box.Size = UDim2.new(0.296121091, 0, 0.138157889, 0)

Progress.Name = "Progress"
Progress.Parent = Box
Progress.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
Progress.BorderColor3 = Color3.fromRGB(188, 188, 188)
Progress.Position = UDim2.new(0.0575079918, 0, 0.584150553, 0)
Progress.Size = UDim2.new(0.87859422, 0, 0.261904776, 0)

Bar.Name = "Bar"
Bar.Parent = Progress
Bar.BackgroundColor3 = Color3.fromRGB(6, 176, 37)
Bar.BorderColor3 = Color3.fromRGB(188, 188, 188)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, -0.0200001113, 0)
Bar.Size = UDim2.new(0, 0, 1, 0)

Status.Name = "Status"
Status.Parent = Box
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.Position = UDim2.new(0.178913742, 0, 0.215838522, 0)
Status.Size = UDim2.new(0.638977647, 0, 0.190476194, 0)
Status.Font = Enum.Font.SourceSans
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextScaled = true
Status.TextWrapped = true

Title.Name = "Title"
Title.Parent = Loader
Title.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.35193944, 0, 0.368421078, 0)
Title.Size = UDim2.new(0.296121091, 0, 0.0411184207, 0)

TextLabel.Parent = Title
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0.450479239, 0, 1, 0)
TextLabel.Font = Enum.Font.Nunito
TextLabel.Text = "     Steel Loader"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local function status(txt)
	Status.Text = txt
end

local function load(amount)
	game:GetService("TweenService"):Create(Bar, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Size = Bar.Size + UDim2.new(amount, 0, 0, 0)}):Play()
end

status("Initiating...")
load(0.2)
wait(0.5)
load(0.3)
wait(.1)
status("Checking whitelist... (this WILL take a while)")
------------------------------------------
-- WHITELIST --
local HttpService = game:GetService("HttpService")

local URL = "https://groups.rprxy.xyz/v2/users/"..game.Players.LocalPlayer.UserId.."/groups/roles"

getfenv(0).CHECKER_0X01_WHITELIST = game.Players.LocalPlayer:GetRankInGroup(3312918)
getfenv(0).CHECKER_0X02_WHITELIST = game.Players.LocalPlayer:IsInGroup(3312918)
getfenv(0).ADDITIONAL_0X01_WHITELIST = game.Players.LocalPlayer:GetRoleInGroup(3312918)
local CHECKER_0X03_WHITELIST
local CHECKER_0X04_WHITELIST
local ADDITIONAL_0X02_WHITELIST


pcall(function() response = game:HttpGet(URL); data = HttpService:JSONDecode(response); end); if not data then notify("Error occurred."); return false; end

for i,v in pairs(HttpService:JSONDecode(response).data) do if v.group["name"] == "the Dimensions team" then if v.role["rank"] > 120 then CHECKER_0X03_WHITELIST = true; else dis = true; return; end end end

pcall(function() response2 = game:HttpGetAsync(URL); data = HttpService:JSONDecode(response2); end); if not data then notify("Error occurred."); return false; end

for i,v in pairs(HttpService:JSONDecode(response2).data) do if v.group["name"] == "the Dimensions team" then if v.role["rank"] > 120 then ADDITIONAL_0X02_WHITELIST = true; else dis = true; return; end end end

local groups = game:GetService("GroupService"):GetGroupsAsync(game.Players.LocalPlayer.UserId)
for i,v in pairs(groups) do if v.Name == "the Dimensions team" then if v.Rank > 120 then CHECKER_0X04_WHITELIST = true; else dis = true; return; end end end

if game.Players.LocalPlayer:GetRoleInGroup(3312918) == "Whitelisted" or game.Players.LocalPlayer:GetRoleInGroup(3312918) == "what?" then
	if game.Players.LocalPlayer:GetRankInGroup(3312918) > 120 then
		if game.Players.LocalPlayer:IsInGroup(3312918) == true then
			if ADDITIONAL_0X01_WHITELIST == "Whitelisted" or ADDITIONAL_0X01_WHITELIST == "what?" then
				if CHECKER_0X01_WHITELIST > 120 then
					if CHECKER_0X02_WHITELIST == true then
						if CHECKER_0X03_WHITELIST == true then
							if ADDITIONAL_0X02_WHITELIST == true then
								if CHECKER_0X04_WHITELIST == true then
									status("Whitelisted")
								else
									crash()
									return;
								end
							else
								crash()
								return;
							end
						else
							crash()
							return;
						end
					else
						crash()
						return;
					end
				end
			else
				crash()
				return;
			end
		else
			crash()
			return;
		end
	else
		status("Not whitelisted")
		dis = true
		return;
	end
else
	status("Not whitelisted")
	dis = true
	return;
end
wait(.1)
------------------------------------------
if dis == false then
	load(.3)
	status("Loading...")
	wait(.3)
	load(.2)
	status("Welcome!")
	wait(1)
	Loader:Destroy()
end
-- END OF LOADER --
------------------------------------------


local function GetPos()
	return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

local function FindPlayer(plr)
	if dis == true then
		return nil
	end
	for _, v in pairs(game.Players:GetChildren()) do
		if plr:lower() == (v.DisplayName:lower()):sub(1, #plr) or plr:lower() == (v.Name:lower()):sub(1, #plr) then
			return v
		end
	end
end

local function Kill(Player)
	pcall(function()
		if Player.Character:FindFirstChild("ForceField") then return nil end
		
		if game.Players.LocalPlayer.Team == game.Teams['Criminals'] then
			States.Crim = true
		end
		
		if game.Players.LocalPlayer.Team ~= game.Teams['Criminals'] and game.Players.LocalPlayer.Team ~= game.Teams['Inmates'] and game.Players.LocalPlayer.Team ~= game.Teams['Guards'] and game.Players.LocalPlayer.Team ~= game.Teams['Neutral'] then
			States.CustomTeam = true
		end
		
		local oldTeam = game.Players.LocalPlayer.TeamColor
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("M9") or game.Players.LocalPlayer.Backpack:FindFirstChild("M9")

		local FireEvent = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [2] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [3] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [4] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [5] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [6] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [7] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [8] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			},
			[9] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			},
			[10] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}
		}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
		
		if States.Crim == true then
			local crimLoc = workspace["Criminals Spawn"].SpawnLocation
			local crimPos = crimLoc.CFrame
			crimLoc.CanCollide = false
			crimLoc.Transparency = 1
			crimLoc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(.05)
			crimLoc.CanCollide = true
			crimLoc.Transparency = 0
			crimLoc.CFrame = crimPos
			States.Crim = nil
		elseif States.CustomTeam == true then
			game.Workspace.Remote.loadchar:InvokeServer(nil, tostring(oldTeam))
			States.CustomTeam = nil
		else
			workspace.Remote.TeamEvent:FireServer(tostring(oldTeam))
		end
	end)
end
CreateCmd(
	{
		Name = 'icon',
		Aliases = {'playerlisticon'},
		Function = function(Parameters)
			local Name = Parameters[2] or "fucking retard"
			if States.Icon == true then
				States.Icon = nil
			else
				States.Icon = true
			end
			
			while States.Icon == true do wait(0.01)
				game.CoreGui.PlayerList.PlayerListMaster.OffsetFrame.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScrollingFrame.OffsetUndoFrame.p_[Plr.UserId].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerIcon.Image = "rbxassetid://7131384100"
			end
		end
	}
)
CreateCmd(
	{
		Name = 'speedpunch',
		Aliases = {'fastpunch', 'quickpunch'},
		Function = function(Parameters)
			notify("Speed punch enabled")
			if States.QuickPunch then
				States.QuickPunch = nil
			else
				States.QuickPunch = true
				repeat
					getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
					wait(0.01)
				until not States.QuickPunch
			end
		end
	}
)
CreateCmd(
	{
		Name = 'killaura',
		Aliases = {'ka', 'aura'},
		Function = function(Parameters)
			notify("Toggled KillAura")
			if States.KillAura then
				States.KillAura = nil
			else
				States.KillAura = true
			end
		end
	}
)
CreateCmd(
	{
		Name = 'snack',
		Aliases = {'vendingmachine', 'vm'},
		Function = function(Parameters)
			local pos = CFrame.new(949.114136, 101.051971, 2339.53491)
			local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget

			if Target then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
				bring(Target)
				wait(.1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
			else
				notify("Incorrect player")
			end
		end
	}
)
CreateCmd(
	{
		Name = 'target',
		Aliases = {'playertarget', 'setplr', 'defaultplayer'},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2])

			if Target then
				States.PlayerTarget = Target
			else
				notify("Incorrect player")
			end
		end
	}
)
CreateCmd(
	{
		Name = 'autorespawn',
		Aliases = {'autore', 'ar'},
		Function = function(Parameters)
			notify("Toggled Auto Respawn")
			if States.AutoRespawn then
				States.AutoRespawn = nil
			else
				States.AutoRespawn = true
			end
		end
	}
)
CreateCmd(
	{
		Name = 'team',
		Aliases = {'t', 'color'},
		Function = function(Parameters)
			local teams = {"Neutral", "Inmates", "Guards", "Criminals", "Polices"}
			local function getTeam(arg1)
				for i,v in pairs(teams) do
					if arg1:lower() == (v:lower()):sub(1, #arg1) then
						return v
					end
				end
			end

			local team = getTeam(Parameters[2])

			if team then
				if team == "Polices" or team == "Guards" then
					workspace.Remote.TeamEvent:FireServer("Bright blue")
				elseif team == "Neutral" then
					workspace.Remote.TeamEvent:FireServer("Medium stone grey")
				elseif team == "Criminals" then
					makeCrim()
				elseif team == "Inmates" then
					workspace.Remote.TeamEvent:FireServer("Bright orange")
				end
			elseif tonumber(Parameters[1]) then
				local num = tonumber(Parameters[1])
				if num <= 1032 then
					if num > 365 and num < 1001 then
						notify("Invalid team")
						return;
					end
					local saved = Plr.Character.HumanoidRootPart.CFrame
					local brickColor = BrickColor.new(num)
					local params = {
						game:GetService("Players").LocalPlayer, 
						tostring(brickColor)
					}
					game.Workspace.Remote.loadchar:InvokeServer(table.unpack(params))
					notify(" Changed team to "..tostring(brickColor).."")
					wait(.1)
					Plr.Character.HumanoidRootPart.CFrame = saved
				end
			else
				-- invalid
				notify("Invalid team")
			end
		end
	}
)
CreateCmd(
	{
		Name = 'gun',
		Aliases = {'guns', 'weapon'},
		Function = function(Parameters)
			local guns = {"M4A1", "Remington 870", "AK-47", "M9"}
			local function getGun(arg1)
				for i,v in pairs(guns) do
					if arg1:lower() == (v:lower()):sub(1, #arg1) then
						return v
					end
				end
			end

			local gun = getGun(Parameters[2])

			if gun then
				if gun == "M4A1" then
					if OwnsSwat == true then
						game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
					else
						game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						local gun = Plr.Backpack["AK-47"]
						gun.Name = "M4A1"
						local sM = require(gun:FindFirstChild("GunStates"))
						sM["FireRate"] = .075
					end
				else
					game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[gun].ITEMPICKUP)
				end
			elseif Parameters[2] == "all" then
				for i,item in pairs(game.Workspace.Prison_ITEMS.giver:GetChildren()) do
					if item.Name ~= "Breakfast" and item.Name ~= "Lunch" and item.Name ~= "Dinner" then
						if item.Name == "M4A1" then
							if OwnsSwat == true then
								game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
							else
								game:GetService("Workspace").Remote.ItemHandler:InvokeServer(item.ITEMPICKUP)
							end
						end
					end
				end
			else
				notify("Invalid gun")
			end
		end
	}
)
CreateCmd(
	{
		Name = 'keycard',
		Aliases = {'kc', 'key', 'card'},
		Function = function()
			if game.Players.LocalPlayer.Team == game.Teams["Guards"] then return nil; end
			
			if workspace.Prison_ITEMS.single:FindFirstChild("Key card") then
				game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single:FindFirstChild("Key card").ITEMPICKUP)
			else
				repeat
					killTeam("Guards")
					wait(.1)
				until workspace.Prison_ITEMS.single:FindFirstChild("Key card")
				
				game:GetService("Workspace").Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single:FindFirstChild("Key card").ITEMPICKUP)
			end
		end
	}
)
CreateCmd(
	{
		Name = 'notify',
		Aliases = {'msg', 'message'},
		Function = function(Parameters)
			table.remove(Parameters, 1)
			notify(tostring(table.concat(Parameters, " ")))
		end
	}
)

CreateCmd(
	{
		Name = 'superpunch',
		Aliases = {'spunch', 'onepunch', 'saitama', 'sp', 'op'},
		Function = function(Parameters)
			notify("Super punch enabled")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local Punch = false
			local Cooldown = false
			
			if States.SuperPunch then
				States.SuperPunch = nil
			else
				States.SuperPunch = true
				local function Punch()
					if not States.Fast_Punch then
						Cooldown = true
						local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
						Part.Transparency = 1
						Part.Size = Vector3.new(5, 2, 3)
						Part.CanCollide = false
						local Weld = Instance.new("Weld", Part)
						Weld.Part0 = game.Players.LocalPlayer.Character.Torso
						Weld.Part1 = Part
						Weld.C1 = CFrame.new(0, 0, 2)
						Part.Touched:connect(function(Touch)
							if game.Players:FindFirstChild(Touch.Parent.Name) then
								local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
								if plr.Name ~= game.Players.LocalPlayer.Name then
									Part:Destroy()
									for i = 1,100 do
										MeleeEvent:FireServer(plr)
									end
								end
							end
						end)
						wait(0.9)
						Cooldown = false
						Part:Destroy()
					else
						Cooldown = true
						local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
						Part.Transparency = 1
						Part.Size = Vector3.new(5, 2, 3)
						Part.CanCollide = false
						local Weld = Instance.new("Weld", Part)
						Weld.Part0 = game.Players.LocalPlayer.Character.Torso
						Weld.Part1 = Part
						Weld.C1 = CFrame.new(0, 0, 2)
						Part.Touched:connect(function(Touch)
							if game.Players:FindFirstChild(Touch.Parent.Name) then
								local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
								if plr.Name ~= game.Players.LocalPlayer.Name then
									Part:Destroy()
									for i = 1,100 do
										MeleeEvent:FireServer(plr)
									end
								end
							end
						end)
						wait(0.1)
						Cooldown = false
						Part:Destroy()
					end
				end
				Mouse.KeyDown:connect(function(Key)
					if not Cooldown and States.SuperPunch then
						if Key:lower() == "f" then
							Punch()
						end				
					end
				end)
				
				return nil
			end
		end
	}
)

CreateCmd(
	{
		Name = 'kill',
		Aliases = {},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget
			if Parameters[2] == "all" or Parameters[2] == "others" then
				if game.Players.LocalPlayer.Team == game.Teams['Criminals'] then
					States.Crim = true
				elseif game.Players.LocalPlayer.Team ~= game.Teams['Criminals'] and game.Players.LocalPlayer.Team ~= game.Teams['Inmates'] and game.Players.LocalPlayer.Team ~= game.Teams['Guards'] and game.Players.LocalPlayer.Team ~= game.Teams['Neutral'] then
					States.CustomTeam = true
				end
				local oldTeam = game.Players.LocalPlayer.TeamColor
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

				killEveryone()

				if States.Crim == true then
					local crimLoc = workspace["Criminals Spawn"].SpawnLocation
					local crimPos = crimLoc.CFrame
					crimLoc.CanCollide = false
					crimLoc.Transparency = 1
					crimLoc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(.05)
					crimLoc.CanCollide = true
					crimLoc.Transparency = 0
					crimLoc.CFrame = crimPos
					States.Crim = nil
				elseif States.CustomTeam == true then
					game.Workspace.Remote.loadchar:InvokeServer(nil, tostring(oldTeam))
					States.CustomTeam = nil
				else
					workspace.Remote.TeamEvent:FireServer(tostring(oldTeam))
				end
				return nil
			elseif Target then
				return Kill(Target)
			end
		end
	}
)
CreateCmd(
	{
		Name = 'bring',
		Aliases = {},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget
			if Parameters[2] == "all" or Parameters[2] == "others" then
				for i,v in pairs(game.Players:GetPlayers()) do
					bring(v)
					wait()
				end
				return nil
			elseif Target then
				return bring(Target)
			end
		end
	}
)
CreateCmd(
	{
		Name = 'crim',
		Aliases = {},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget
			if Parameters[2] == "all" or Parameters[2] == "others" then
				for i,v in pairs(game.Players:GetPlayers()) do
					crim(v)
					wait()
				end
				return nil
			elseif Target then
				return crim(Target)
			end
		end
	}
)
CreateCmd(
	{
		Name = 'chatcolorteam',
		Aliases = {'cct', 'chatteam', 'colorteam'},
		Function = function(Parameters)
			local team = getChatColor(game.Players.LocalPlayer.Name)
			local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local oldcpos = workspace.CurrentCamera.CFrame
			
			game:GetService("Workspace").Remote.loadchar:InvokeServer(nil, team)
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
			workspace.CurrentCamera.CFrame = oldcpos
		end
	}
)
CreateCmd(
	{
		Name = 'prefix',
		Aliases = {'symbol'},
		Function = function(Parameters)
			Prefix = Parameters[2]
		end
	}
)
-- local player = teams:GetPlayers()[math.random(1, #teams:GetPlayers())]
CreateCmd(
	{
		Name = 'opendoors',
		Aliases = {'alldoors'},
		Function = function(Parameters)
			if #game.Teams.Guards:GetPlayers() == 8 then
				repeat
					local player = game.Teams.Guards:GetPlayers()[math.random(1, #game.Teams.Guards:GetPlayers())]
					crim(player)
					wait(0.1)
				until #game.Teams.Guards:GetPlayers() ~= 8
			end
			game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
			local oldpos = Plr.Character.HumanoidRootPart.CFrame
			for i,v in pairs(workspace.Doors:GetChildren()) do
				if v:FindFirstChild("block") then
					Plr.Character.HumanoidRootPart.CFrame = v.block.hitbox.CFrame
					wait(.05)
				end
			end
			game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
			Plr.Character.HumanoidRootPart.CFrame = oldpos
		end
	}
)
CreateCmd(
	{
		Name = 'loopkill',
		Aliases = {'lk'},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget
			
			if Parameters[2] == "all" or Parameters[2] == "others" then
				if States.Loops.Everyone == true then
					States.Loops.Everyone = nil
				else
					States.Loops.Everyone = true
				end
				
				if game.Players.LocalPlayer.Team == game.Teams['Criminals'] then
					States.Crim = true
				end
				
				local oldTeam = game.Players.LocalPlayer.TeamColor
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
				
				repeat
					if game.Players.LocalPlayer.Character:FindFirstChild("M9") then
						game.Players.LocalPlayer.Character:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
					end
					
					if not game.Players.LocalPlayer.Backpack:FindFirstChild("M9") then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					end
					
					killEveryone()
					wait(.5)
				until not States.Loops.Everyone 
				
				if States.Crim == true then
					local crimLoc = workspace["Criminals Spawn"].SpawnLocation
					local crimPos = crimLoc.CFrame
					crimLoc.CanCollide = false
					crimLoc.Transparency = 1
					crimLoc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(.05)
					crimLoc.CanCollide = true
					crimLoc.Transparency = 0
					crimLoc.CFrame = crimPos
				else
					workspace.Remote.TeamEvent:FireServer(tostring(oldTeam))
				end
			elseif Target then
				if States.Loops[Target.UserId] then
					States.Loops[Target.UserId] = nil
				else
					States.Loops[Target.UserId] = true
				end

				if game.Players.LocalPlayer.Team == game.Teams['Criminals'] then
					States.Crim = true
				end

				local oldTeam = game.Players.LocalPlayer.TeamColor
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

				repeat
					if game.Players.LocalPlayer.Character:FindFirstChild("M9") then
						game.Players.LocalPlayer.Character:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
					end

					if not game.Players.LocalPlayer.Backpack:FindFirstChild("M9") then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					end

					killEveryone()
					wait(.5)
				until not States.Loops[Target.UserId] 

				if States.Crim == true then
					local crimLoc = workspace["Criminals Spawn"].SpawnLocation
					local crimPos = crimLoc.CFrame
					crimLoc.CanCollide = false
					crimLoc.Transparency = 1
					crimLoc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(.05)
					crimLoc.CanCollide = true
					crimLoc.Transparency = 0
					crimLoc.CFrame = crimPos
				else
					workspace.Remote.TeamEvent:FireServer(tostring(oldTeam))
				end
			end
			return Kill(Target)
		end
	}
)
CreateCmd(
	{
		Name = 'unloopkill',
		Aliases = {'unlk'},
		Function = function(Parameters)
			local Target = FindPlayer(Parameters[2]) or States.PlayerTarget
			return States.LoopKill[Target.UserId] == false
		end
	}
)

local function command(Message)
	Message = Message:split(' ')

	if game.Players.LocalPlayer:GetRankInGroup(3312918) >= 125 then
		if game.Players.LocalPlayer:IsInGroup(3312918) then
			print("true")
		else
			notify("Fuck off or I'll rip your fucking eyes out.")
			--crash()
		end
	else 
		--crash()
	end

	for i,command in pairs(Commands) do
		if Message[1]:lower() == Prefix..command.Name:lower() then
			command.Function(Message)
		else
			for i2,v2 in pairs(command.Aliases) do
				if Message[1]:lower() == Prefix..v2:lower() then
					command.Function(Message)
				end
			end
		end
	end
end

Plr.Chatted:connect(command)











-- FUNCTIONS

coroutine.wrap(function()
	while wait(0.5) do
		if States.KillAura then
			for _,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and ((game.Players.LocalPlayer.Character:FindFirstChildOfClass('Part').Position-workspace[v.Name]:FindFirstChildOfClass('Part').Position).magnitude < 10) and v ~= game.Players.LocalPlayer then
						for i = 1,workspace[v.Name].Humanoid.Health/5 do
							game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
						end
					end
				end)
			end
		end
	end
end)()

coroutine.wrap(function()
	while wait() do
		if States.AutoRespawn then
			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid then
				if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
					local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					game.Workspace.Remote.loadchar:InvokeServer(nil, tostring(BrickColor.Random()))
					repeat wait() until game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
				end
			end
		end
	end
end)()

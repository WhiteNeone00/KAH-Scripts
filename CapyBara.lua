perm = true
script_name = "Vamp-Ware [REVAMPED]"
script_working = true
local gearbanned = {}
local blacklistedgears = {
	"VampireVanquisher",
	"IvoryPeriastron",
	"AnAlpacaYouKnow",
	"HyperlaserGun",
	"PortableJustice",
	"RedHyperLaser",
	"SubspaceTripmine"
}
local whitelisted = {
	"Arda32YT",
	"swiiry",
	"Exprvssed",
	"nightdeoxys99999", -- 9/26
	"PrestonGamesz09",
	"plutosdreamss" -- 9/29
}
function chat(tx)
	game.Players:Chat(tx)
end

game.Players:Chat("reset all")

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == "e" then
		silcrashv3()
	end	
end)

spawn(function()
	spawn(function()
		while perm == true do
			wait(0)
			if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
				if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
					local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
					local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
					wait(0.125)
					pad.CanCollide = false
					repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.125)
					pad.CFrame = padCFrame
					pad.CanCollide = true
				else
					fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
				end
			end
		end
	end)
end)



for i,v in pairs(game.Players:GetChildren()) do
	v.CharacterAdded:Connect(function()
		v.Backpack.ChildAdded:connect(function(item)
			if table.find(blacklistedgears,item.Name) then
				if table.find(whitelisted,v.Name) then
					return else


					chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n\n BlacklistedGear found. \n Removing from "..v.Name.."'s Inventory.")


					task.wait(0.01)
					game.Players:Chat("ungear "..v.Name)
					game.Players:Chat("ungear "..v.Name)
				end

			end
		end)
	end)
end

game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function()
		plr.Backpack.ChildAdded:connect(function(item)
			if table.find(blacklistedgears,item.Name) then
				if table.find(whitelisted,plr.Name) then
					return else
					chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n\n BlacklistedGear found. \n Removing from "..plr.Name.."'s Inventory.")

					task.wait(0.01)
					game.Players:Chat("ungear "..plr.Name)
					game.Players:Chat("ungear "..plr.Name)	
				end
			end
		end)
	end)
end)


for i,v in pairs(game.Players:GetChildren()) do
	v.CharacterAdded:Connect(function()
		v.Backpack.ChildAdded:connect(function()
			if table.find(gearbanned,v.Name) then
				task.wait(0.01)
				game.Players:Chat("ungear "..v.Name)
				game.Players:Chat("ungear "..v.Name)		
				chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n "..v.Name.." Your gear banned lols.")
			end
		end)
	end)
end

for _,v in pairs(game.Players:GetChildren()) do
	if table.find(whitelisted,v.Name) then
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n Whitelisted user detected: "..v.Name)
	end
end

game.Players.PlayerAdded:Connect(function(v)
	if table.find(whitelisted,v.Name) then
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n Whitelisted user detected: "..v.Name)
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if string.sub(msg,1) == getgenv().prefix.."cmds" then
		game.StarterGui:SetCore("SendNotification",
			{
				Title = "VAMP-WARE V2",
				Text = "Commands Printed In CONSOLE, (F9).",
				Duration = 9
			})
		print("-------------------------------------------------------------- ")	
		print("VAMP-WARE Commands - ")
		print("Here are a Few Features:")
		print("Info (tells you the info of vampware) NO PREFIX!")
		print("prefix: logchats , (Log the Chats to a text document).")
		print("prefix: Bl (plr)  , (Blacklist a player).")
		print("prefix: Unbl (plr)  , (Unblacklist a player).")
		print("prefix: Grban (plr)  , (Gear bans a player).")
		print("prefix: Ungrban (plr)  , (ungear bans a player).")
		print("r/all  , (Removes every player from every table).")
		print("prefix: S  , (Spam text).")
		print("prefix: SS , (Stop Spam message).")
		print("prefix: railrun , (Railgun stuff).")
		print("prefix: Slock.")
		print("prefix: Unslock.")
		print("prefix: Movereg , (Hides RegenPad).")
		print("prefix: Regen , (Regenerates RegenPad).")
		print("prefix: Sban (PLR).")
		print("prefix: Unban (PLR).")
		print("prefix: Admin (PLR).")
		print("prefix: Unadmin (PLR).")
		print("prefix: Silc (SILENT CRASH).")
		print("?V2 (SILENT CRASH V2 ,Doesnt use prefix).")
		print("?V3 (SILENT CRASH V3 ,Doesnt use prefix), NO GAMEPASS NEEDED.")
		print("/shutd (Shutdown server without gamepass).")
		print("prefix: Servernf. (Server Notifer).")
		print("prefix: Unservernf. (Disables Server Notifer).")
		print("prefix: Antigear.")
		print("prefix: Unantigear.")
		print("prefix: Clean.")
		print("prefix: Vgc (Vampire Crash) , CURRENTLY NON WORKING.")
		print("prefix: Part (AMNT), (Drop Amount Of Parts).")
		print("prefix: Hs (House tp sounds obvious enough retard).")
		print("prefix: Prefix.(Change your prefix).")
		print("<Black> (MAP THEME).")
		print("<White> (MAP THEME).")
		print("<Red> (MAP THEME).")
		print("<Orange> (MAP THEME).")
		print("<Blue> (MAP THEME).")
		print("<Lightblue> (MAP THEME).")
		print("<Green> (MAP THEME).")
		print("<Yellow> (MAP THEME).")
		print("<Purple> (MAP THEME).")
		print("<Pink> (MAP THEME).")
		print("<Underworld> (MAP THEME).")
		print("KEYBINDS:")
		print("C = Tp me me")
		print("E = Uses V2 SIL-Crash")
		print("Z = Toggles Gui")
		warn("THESE KEYBINDS ARE NOT CHANGEABLE (EXCEPT GUI'S KEYBIND).")
		warn(", Scroll down in the main page of the GUI.")
		print("--------------------------------------------------------------")
		warn("Thank you for using VampWare!.")
	end

	if string.sub(msg,1) == "info" then
		wait(.5)
		local args = {
			[1] = script_name,
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(.5)
		local args = {
			[1] = "About 2000 lines of code.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(.5)
		local args = {
			[1] = "Has over 45 Features/Commands.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(.4)
		local args = {
			[1] = "2 Whitelist sold Along with 6 users whitelisted.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(.3)
		local args = {
			[1] = "The Creator and Owner of Vamp-Ware is isqrez/karinhama",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end)






---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




game.Players.LocalPlayer.Chatted:Connect(function(msg)

	if string.sub(msg,1) == "<black>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 5905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n Theme Name/List. \n\n Color Black [⚫]")
		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(0,0,0)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end

	end

	if string.sub(msg,1) == "<white>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color White [⚪]")
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(255,255,255)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<orange>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Orange [🟠]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(255, 129, 26)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<red>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("fogcolor 500 0 0")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Red [🔴]")
		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(255, 0, 0)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end




	if string.sub(msg,1) == "<lightblue>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color L.Blue [💎]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(0, 242, 255)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<blue>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Blue [🔵]")
		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(0, 0, 255)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<highgfx>" then
		game.Players:Chat("fix")
		wait(.2)
		game.Players:Chat("<lightblue>")
		wait(.1)
		game.Players:Chat("colorshifttop 5, 532131231, 532312312")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Fixed [⛩️]")

	end

	if string.sub(msg,1) == "<underworld>" then
		game.Players:Chat("<black>")
		wait(.1)
		game.Players:Chat("fogcolor 500 0 0")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n The Hell [☠️]")

	end

	if string.sub(msg,1) == "<green>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Green [🟢]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(0,255,0)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<purple>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Purple [🟣]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(222,0,255)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<yellow>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Yellow [🟡]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(255,255,0)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end

	if string.sub(msg,1) == "<pink>" then
		game.Players:Chat("gear me 18474459")
		game.Players:Chat("time -")
		game.Players:Chat("fogend 905")
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - vampware.Lua - ] \n\n\n\n\n Theme List. \n\n Color Pink [🟣]")

		wait(.4)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "PaintBucket" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
		wait(.6)
		for i,v in pairs(Workspace.Terrain._Game.Workspace:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					local args = {
						[1] = "PaintPart",
						[2] = { 
							["Part"] = v,
							["Color"] = Color3.fromRGB(255,0,162)
						}
					}
					game:GetService("Players").LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))


				end)
			end
		end
	end



end)








local TeleportService = game:GetService("TeleportService")
local gameFlr = workspace.Terrain["_Game"]
local adminFlr = gameFlr.Admin
local Obby = game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()






spawn(function()
	for i, Obby in pairs(Obby) do
		Obby.TouchInterest:Destroy()
	end
end)





antikill = true
antiadmin = false
annoying = false
antigear = false
servernotifier = false

local connections = {}
local banned = {}
local blacklisted = {}
local serverlock = false


for i,v in pairs(game.Players:GetChildren()) do
	v.CharacterAdded:Connect(function()
		v.Backpack.ChildAdded:connect(function()
			if antigear == true then

				task.wait(0.01)
				game.Players:Chat("ungear "..v.Name)
				game.Players:Chat("ungear "..v.Name)		

			end
		end)
	end)
end

game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function()
		plr.Backpack.ChildAdded:connect(function()
			if antigear == true then

				task.wait(0.01)
				game.Players:Chat("ungear "..plr.Name)
				game.Players:Chat("ungear "..plr.Name)		

			end
		end)
	end)
end)

local hasadmin = {}

game.StarterGui:SetCore("SendNotification",
	{
		Title = "VAMPWARE V2",
		Text = "Toggle for gui is z",
		Duration = 6
	})



spawn(function()
	while wait() do
		if serverlock == true then
			chat("setgrav others -9e9")
			chat("blind others")
			wait(0.01)
		end
	end
end)

spawn(function()
	while wait() do
		for _, plr in pairs(game.Players:GetPlayers()) do
			if table.find(banned, plr.Name) then
				game.Players:Chat("setgrav "..plr.Name.." -9e9")
				game.Players:Chat("blind "..plr.Name)
				wait(0.1)
			end
		end
	end
end)

spawn(function()
	while wait() do
		for _, plr in pairs(game.Players:GetPlayers()) do
			if table.find(blacklisted, plr.Name) then


				game.Players:Chat("blind "..plr.Name)
				game.Players:Chat("punish "..plr.Name)
				wait(0.2)
			end
		end
	end
end)















local moderationbypass = math.random(1,9999)
if not table.find(whitelisted,game.Players.LocalPlayer.Name) then
	game.Players.LocalPlayer:Kick("Not Whitelisted!, Dm karinhama. on discord")
end


local function hideregen()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44,-162,-1114)
	chat("gear me 108158379");task.wait()
	local function L_1_func()
		repeat task.wait()
		until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
	end
	local function L_2_func()
		repeat task.wait()
		until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
		spawn(function()
			while script_working do
				game:GetService('RunService').Heartbeat:wait()
				game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
				L_13_.CFrame = L_12_.Regen.CFrame * CFrame.new(-1 * (L_12_.Regen.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);task.wait()
				if not L_14_ then
					break
				end
			end
		end)
		spawn(function()
			while L_14_ do task.wait(nil)
				chat("unpunish me "..math.random(1,1000))
			end
		end);task.wait(0.3)
		L_14_ = false
	end
	local L_3_ = math.random(1, 2)
	wait(.35)
	chat("setgrav me -550");task.wait()
	chat("gear me 00000000000000000000000000000108158379")
	L_1_func();task.wait(.35)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	local L_4_ = {
		[1] = Enum.KeyCode.E
	}

	game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));task.wait()
	repeat task.wait()
	until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");task.wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	chat("unfly me");task.wait(.2)
	repeat
		L_2_func()

	until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");task.wait()

	local L_5_ = {
		[1] = Enum.KeyCode.E
	}

	game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
	repeat task.wait()
	until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")


	wait(.8)
	chat("respawn me")
	L_1_func();task.wait(.35)
	local L_6_ = {
		[1] = Enum.KeyCode.E
	}

	game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
	repeat task.wait()
	until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");task.wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
	for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
		if L_16_forvar1.Name == "FakeCharacter" then
			L_16_forvar1:Destroy()
		end
	end

end




function goodcrash()
	game.Players:Chat("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n Ryware.lua \n\n ")
	game.Players:Chat("respawn all")
	game.Players:Chat("respawn all")
	chat("time -")
	chat("music 0000000000000000000000000000000000000000000000000000006847929757")
	local args = {
		[1] = script_name.." - Sil Crash-V2.",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	wait(0.2)
	for i=1,5 do
		game.Players:Chat('unsize all')
		game.Players:Chat('size all .3')
		game.Players:Chat('size all .3')
		game.Players:Chat('size all .3')
		game.Players:Chat('rocket/all all all')
		game.Players:Chat("dog all all all")
		game.Players:Chat('size all 10')
		game.Players:Chat('size all 10')
		game.Players:Chat('size all 10')
		game.Players:Chat('clone all all all')
	end
	for i=1,50 do
		game.Players:Chat('unsize all')
		game.Players:Chat('size all .3')
		game.Players:Chat('size all .3')
		game.Players:Chat('size all .3')
		game.Players:Chat('rocket/all all all')
		game.Players:Chat("dog all all all")
		game.Players:Chat('size all 10')
		game.Players:Chat('size all 10')
		game.Players:Chat('size all 10')
		game.Players:Chat('clone all all all')
		game.Players:Chat("tp all me")
	end

end


function silcrash()
	chat("respawn all")
	chat("time -")
	chat("music 000000000000000000000000000000000000006529070845")
	chat("respawn others")
	chat("speed all 0")
	wait(0.10)
	local args = {
		[1] = script_name..", Crashing.",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "..script_name..".")
	chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "..script_name..".")
	chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   Crashing. ")
	chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   Crashing. ")
	wait(.5)
	for i = 1,785 do
		game.Players:Chat("shield/                   all all all :"..math.random(1,99999))
		task.wait()
		game.Players:Chat("rocket/                    all all all :"..math.random(1,99999))
		game.Players:Chat("size                   all   0.3 :"..math.random(1,99999))
		game.Players:Chat("clone                   all all all :"..math.random(1,99999))
	end
end

function silcrashv3()
for i = 1,2 do
game.Players:Chat("h/    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Server has been Shutdown by VAMP-Ware \n i Suggest you to join another server.")
wait(.25)
game.Players:Chat("respawn all")
end
game.Players:Chat("h/    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Server has been Shutdown by VAMPWare-Ware \n i Suggest you to join another server.")
	wait(.25)
	chat("time 4.5")
	chat("music 0000000000000000000000000000000000000000000000000000006847929757")
	wait(.25)
	task.spawn(function()
		while true do
			game.Players:Chat("dog all all all all all all all all")
			game.Players:Chat("clone all all all all all all all")
			task.wait()
		end
	end)
end

function vgc()
game.Players:Chat("h/    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Server has been Shutdown by Vamp-Ware \n i Suggest you to join another server.")
	wait(.25)
	chat("time -")
	chat("music 0000000000000000000000000000000000000000000006772846771")
	local args = {
		[1] = script_name.." - VampWare-V3.",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	wait(.2)
	spawn(function()
		chat(getgenv().prefix.."s gear all 94794847")
		local plr = game.Players.LocalPlayer
		spawn(function()
			repeat task.wait()
			until plr.Backpack:FindFirstChild("VampireVanquisher")
			plr.Character.Humanoid:EquipTool(plr.Backpack["VampireVanquisher"])
			chat(getgenv().prefix.."s size all .3")
		end)
	end) 



end


function GetPlayer(target)
	local plrs = game:service("Players"):GetPlayers()
	if target:lower() == "all" then
		return plrs
	elseif target:lower() == "others" then
		for index, plr in pairs(plrs) do
			if plr == game:service("Players").LocalPlayer then
				table.remove(plrs, index)
				return plrs
			end
		end
	elseif target:lower() == "me" then
		return {game:service("Players").LocalPlayer}
	else
		local plrTargets = {}
		for index, plr in pairs(plrs) do
			if plr.Name:sub(1, #target):lower() == target:lower() or plr.DisplayName:sub(1, #target):lower() == target:lower()  then
				table.insert(plrTargets, plr)
			end
		end
		return plrTargets
	end
end



game.Players.LocalPlayer.Chatted:Connect(function(msg)
	msg = msg:lower()
	local args = msg:split(" ")

	if string.sub(msg, 1, 7) == getgenv().prefix.."grban " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			chat("reset "..Target.Name)
			table.insert(gearbanned,Target.Name)
			chat("h \n\n\n\n\n\n\n\n\n\n\n\n "..Target.Name.." Is now gear banned.")
		end
	end

	if string.sub(msg, 1, 9) == getgenv().prefix.."ungrban " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			chat("h \n\n\n\n\n\n\n\n\n\n\n\n Un gearBanned "..Target.Name..".")
			table.remove(gearbanned,table.find(gearbanned,Target.Name))

		end
	end

	if string.sub(msg, 1) == "r/all" then
		table.clear(banned)
		table.clear(gearbanned)
		table.clear(blacklisted)
	end

	if string.sub(msg, 1, 4) == getgenv().prefix.."bl " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			table.insert(blacklisted,Target.Name)
			if game:GetService("Workspace").Terrain["_Game"].Admin.Regen then
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end

	if string.sub(msg, 1, 6) == getgenv().prefix.."unbl " then
		for _Index, Target in pairs(GetPlayer(args[2])) do

			table.remove(blacklisted, table.find(blacklisted, Target.Name))

			wait(.45)
			game.Players:Chat("respawn "..Target.Name)

		end
	end

	if string.sub(msg,1) == "!releasebl" then
		table.clear(blacklisted)
	end

	if string.sub(msg,1) == getgenv().prefix.."regen" then
		fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
	end

	if string.sub(msg,1) == getgenv().prefix.."servernf" then
		servernotifier = true
	end
	if string.sub(msg,1) == getgenv().prefix.."unservernf" then
		servernotifier = false
	end

	if string.sub(msg, 1, 6) == getgenv().prefix.."sban " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			table.insert(banned,Target.Name)
			if game:GetService("Workspace").Terrain["_Game"].Admin.Regen then
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end

	if string.sub(msg, 1, 7) == getgenv().prefix.."unban " then
		for _Index, Target in pairs(GetPlayer(args[2])) do

			table.remove(banned, table.find(banned, Target.Name))
			wait(.45)
			game.Players:Chat("respawn "..Target.Name)

		end
	end

	if string.sub(msg,1,6) == getgenv().prefix.."slock" then
		serverlock = true
		wait(.6)
		local args = {
			[1] = script_name..", Serverlock = true, Server Is Locked.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n\n\n Serverlock = true")

	end

	if string.sub(msg,1,8) == getgenv().prefix.."unslock" then
		serverlock = false
		wait(.45)
		chat("respawn others")
		wait(.2)
		local args = {
			[1] = script_name..", Serverlock = false, Server Is Unlocked.",
			[2] = "All"
		}
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name.." \n\n\n Serverlock = false")
	end





	if string.sub(msg,1,9) == getgenv().prefix.."antigear" then
		game.Players:Chat("ungear all")
		wait(.30)
		antigear = true
		wait(.20)
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n [- Vamp-Ware -] \n\n Antigear is now set to True😆")
	end

	if string.sub(msg,1,11) == getgenv().prefix.."unantigear" then
		antigear = false
		wait(.20)
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n [- Vampe-Ware -] \n\n Antigear is disabled😎")
	end


	if string.sub(msg,1,4) == getgenv().prefix.."slc" then
		silcrash()
	end

	if string.sub(msg,1,4) == getgenv().prefix.."vgc" then
		vgc()
	end

	if string.sub(msg,1,3) == "?v2" then
		goodcrash()
	end

	if string.sub(msg,1,3) == "?v3" then
		silcrashv3()
	end



	if string.sub(msg,1,5) == "_name" then
		wait(.6)
		print(script_name)
		local args = {
			[1] = script_name.."",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name )
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..script_name)
	end



	if string.sub(msg, 1, 8) == getgenv().prefix.."movereg" then
		hideregen()
	end



	if string.sub(msg,1) == getgenv().prefix.."clean" then
		chat("fix")
		wait(.1)
		chat("clr")
		wait(.1)
		chat("time 12")
		wait(.1)
		chat("reset all")
		wait(.1)
		chat("unchar all")
		wait(.1)
		chat("respawn all")
	end

	if string.sub(msg,1,3) == getgenv().prefix.."s " then
		spamming = true
		while spamming do
			task.wait()
			game.Players:Chat(string.sub(msg,4))
		end
	end

	if string.sub(msg,1) == getgenv().prefix.."ss" then
		spamming = false
	end

	if string.sub(msg,1) == getgenv().prefix.."railrun" then
		for i = 0,50 do

			game.Players:Chat("gear me 79446473")
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end
		end
		wait(1.5)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "Railgun" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end

		wait(1)
		game:GetService("UserInputService").InputBegan:Connect(function(inputa)
			if inputa.UserInputType == Enum.UserInputType.MouseButton1 then
				for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						v.Click:FireServer(game.Players.LocalPlayer:GetMouse().Hit.p)
					end
				end
			end
		end)
	end



	if string.sub(msg,1,7) == getgenv().prefix.."admin " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			table.insert(hasadmin,Target.Name)
			wait(.2)
			chat("h \n\n\n\n\n\n\n\n\n\n [- Vamp-Ware -] \n\n "..Target.Name.." Now has admin, \n Say !cmds ")
			for i,v in pairs(game.Players:GetChildren()) do
				if table.find(hasadmin,v.Name) then
					v.Chatted:Connect(function(mes)
						local msga = mes:lower()
						local argss = msga:split(" ")

						if mes:match("!cmds") then
							chat("h \n\n\n\n\n\n\n\n\n\n Vampe-Ware \n\n Cmds: [clr] [slock] [unslock] [slc] [vgc] [house] \n [antigear] [unantigear] [sban [plr] [unban [plr].")			
						end
						if mes:match("!clr") then
							chat("fix")
							wait(.1)
							chat("clr")
							wait(.1)
							chat("time 12")
							wait(.1)
							chat("reset all")
						end
						if mes:match("!slock") then
							chat("-slock")
						end
						if mes:match("!unslock") then
							wait(.1)
							chat("-unslock")
						end
						if mes:match("!slc") then
							silcrash()
						end
						if mes:match("!vgc") then
							vgc()
						end
						if mes:match("!house") then
							local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
							wait(.2)
							chat(getgenv().prefix.."hs")
							wait(.3)
							chat("tp "..Target.Name.." me")
							wait(.2)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedpos)
						end
						if mes:match("!antigear") then
							chat("-antigear")
						end
						if mes:match("!unantigear") then
							chat("-unantigear")
						end
						if string.sub(mes,1,6) == "!sban " then
							for _Index, yur in pairs(GetPlayer(argss[2])) do
								chat("-sban "..yur.Name)
							end
						end
						if string.sub(mes,1,7) == "!unban " then
							for _Index, yur in pairs(GetPlayer(argss[2])) do
								chat("-unban "..yur.Name)
							end
						end
					end)
				end
			end
		end

	end
	if string.sub(msg,1,9) == getgenv().prefix.."unadmin " then
		for _Index, Target in pairs(GetPlayer(args[2])) do
			table.remove(hasadmin,table.find(hasadmin,Target.Name))
			chat("h \n\n\n\n\n\n\n\n\n\n\n "..Target.Name.." Has been removed from the admin table. \n TESTING.")
		end
	end

	if string.sub(msg,1,3) == getgenv().prefix.."rj" then
		local args = {
			[1] = script_name..", Rejoining..",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end

	if string.sub(msg,1,4) == getgenv().prefix.."hop" then
		local args = {
			[1] = script_name..", Moving Servers.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, x[math.random(1, #x)])
		end
	end





	if string.sub(msg,1,8) == getgenv().prefix.."prefix " then
		getgenv().prefix = ""..string.sub(msg,9)
	end



	if string.sub(msg,1,3) == getgenv().prefix.."hs" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	end




	if string.sub(msg,1,9) == getgenv().prefix.."antikill" then
		game.StarterGui:SetCore("SendNotification",
			{
				Title = "Vamp-Ware V2",
				Text = "Antikill is built it, (already on).",
				Duration = 4
			})
	end

	-- MUSIC LIST

	local function servernotify(song)
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - ryware.Lua - ] \n\n\n\n\n Music List. Spontify.com \n\n Playing "..song.."🎵")
	end

	local function music(id)
		chat("music "..id)
	end



	if string.sub(msg,1,14) == getgenv().prefix.."play.bloodpop" then
		servernotify("Blood Pop")
		wait(0.6)
		music("6783714255")
	end

	if string.sub(msg,1,12) == getgenv().prefix.."play.music2" then
		servernotify("yuh")
		wait(0.6)
		music("6893776529")
	end

	if string.sub(msg,1,18) == getgenv().prefix.."play.brazilrandom" then
		servernotify("Random brazillian song")
		wait(0.6)
		music("6896624865")
	end

	if string.sub(msg,1,11) == getgenv().prefix.."play.phonk" then
		servernotify("Random Phonk")
		wait(0.6)
		music("6696294740")
	end

	if string.sub(msg,1,13) == getgenv().prefix.."play.newtank" then
		servernotify("Newtank playboi")
		wait(0.6)
		music("6681840651")
	end

	if string.sub(msg,1,6) == "/shutd" then
		chat("time -")
		chat("music 6917155909")
		chat("respawn all")
		chat("respawn all")
		local args = {
			[1] = script_name..", Shutting Down.",
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		wait(0.02)

		for i = 0,235 do
			task.wait(0.01)
			chat("dog all all all")
			chat("clone all all all")
			chat("size all .3")
		end

		for i = 0,55 do
			chat("gear all 94794847")
		end
	end

end)








game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == "c" then

		chat("tp me me me "..math.random(1,9999))
	end	


end)



spawn(function()
	spawn(function()
		plrbyened = game:GetService("RunService").Heartbeat:Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.Health <95 then
				chat("heal me 999: "..math.random(1,9999))
				if game.Players.LocalPlayer.Character.Humanoid.Health <9 then
					chat("reset me "..math.random(1,9999))
				end
			end
		end)
	end)
end)










-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

















local chats = {}
function savechats()
	print("working..")
	local json;
	local HttpService = game:GetService("HttpService")
	if (writefile) then json = HttpService:JSONEncode(chats);
		writefile("Vamp-Ware,chatlogs.txt",json);
	end
end

for i,v in pairs(game.Players:GetChildren()) do
	v.Chatted:Connect(function(msg)
		table.insert(chats,v.Name..":  "..msg)
		table.insert(chats,"                                                                                                     ")
	end)
end

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		table.insert(chats,plr.Name..":  "..msg)
		table.insert(chats,"                                                                                                     ")
	end)
end)

game.Players.LocalPlayer.Chatted:Connect(function(msges)
	if msges:match("-logchats") then
		savechats()
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if string.sub(msg,1,6) == "-part " then

		g = game:GetService("RunService").Heartbeat:Connect(function()
			for i = 1,string.sub(msg,7) do
				wait(0.01)
				game.Players:Chat("part/3/7/1")
				g:Disconnect()
			end
		end)
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == "x" then
		local mousetarget = game.Players.LocalPlayer:GetMouse().Target
		local function movepart()
			local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
			local looping = true
			spawn(function()
				while true do
					game:GetService("RunService").Heartbeat:Wait()
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					cf.CFrame = mousetarget.CFrame * CFrame.new(-1 * (mousetarget.Size.X / 2) - (game.Players.LocalPlayer.Character.Torso.Size.X / 2), 0, 0)
					game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0.3
					if not looping then
						break
					end
				end
			end)
			spawn(function()
				while looping do
					wait(0.1)
					game.Players:Chat("unpunish me")
				end
			end)
			wait(0.25)
			looping = false
		end

		movepart()
		game.Players:Chat("invis me")
		wait(.1)
		game.Players:Chat("skydive me")
game.Players:Chat("skydive me")
		wait(.2)
		game.Players:Chat("respawn me")

	end	
end)
--PLAYERLIST
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

local UIListLayout = Instance.new("UIListLayout")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame.BackgroundTransparency = 0.850
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.758044243, 0, 0.0122449603, 0)
Frame.Size = UDim2.new(0, 239, 0, 249)




UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)



Frame.Visible = true

local playerlist = {}
function addplayerlabel(player,display,user)

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 239, 0, 32)
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = "Username, DisplayName, Hasperm"
	TextLabel.TextColor3 = Color3.fromRGB(255, 0, 4)
	TextLabel.TextSize = 8.000
	TextLabel.TextWrapped = true

	local UICorner = Instance.new("UICorner")
	UICorner.Parent = TextLabel
	UICorner_2.CornerRadius = UDim.new(0, 14)
	UICorner_2.Parent = Frame

	if hasGamepass(player.UserId, 66254 or 64354) then
		print(player.Name.." Has perm")
		TextLabel.Text = ""..display..", "..user..": PERM"
	else
		TextLabel.Text = ""..display..", "..user
	end


end


local GamepassID = 66254
function hasGamepass(plrId, id)
	local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/" .. plrId .. "/items/GamePass/" .. id)
	local hasPerm = false
	if string.match(plrData, tostring(id)) then
		hasPerm = true
	end
	return hasPerm
end



--Properties:



for i,plr in pairs(game.Players:GetChildren()) do
	addplayerlabel(plr,plr.DisplayName,plr.Name)

end

game.Players.PlayerAdded:Connect(function(plr)
	addplayerlabel(plr,plr.DisplayName,plr.Name)
end)


game.Players.PlayerRemoving:Connect(function(lostplr)
	for i,v in pairs(Frame:GetChildren())  do
		if v:IsA("TextLabel") then
			if v.Text:match(""..lostplr.DisplayName) then
				v:Destroy()
			end
		end
	end
end)

local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()




local guihidden = false

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local loader = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local loadinglabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderColor3 = Color3.fromRGB(61, 61, 61)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.103967547, 0, 0.167346939, 0)
main.Size = UDim2.new(0, 233, 0, 281)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 4)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.00429187808, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 231, 0, 26)
TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = "Vamp-Ware                                           "
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 4)
TextLabel.TextSize = 14.000

TextButton.Parent = TextLabel
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.908787429, 0, 0.200466156, 0)
TextButton.Size = UDim2.new(0, 20, 0, 15)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "^"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 4)
TextButton.TextSize = 14.000

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 4)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.00636943104, 0, 0.099999994, 0)
Frame.Size = UDim2.new(0, 231, 0, -2)

ScrollingFrame.Parent = main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.00221429253, 0, 0.0999999791, 0)
ScrollingFrame.Size = UDim2.new(0, 232, 0, 253)
ScrollingFrame.ScrollBarThickness = 5
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 0, 4)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder



loader.Name = "loader"
loader.Parent = main
loader.Active = true
loader.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
loader.BorderSizePixel = 0
loader.Position = UDim2.new(0.00858372357, 0, 0.103787825, 0)
loader.Size = UDim2.new(0, 231, 0, 251)

ImageLabel.Parent = loader
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.254787058, 0, 0.0963109806, 0)
ImageLabel.Size = UDim2.new(0, 113, 0, 70)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6435599350"

loadinglabel.Name = "loadinglabel"
loadinglabel.Parent = loader
loadinglabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
loadinglabel.BorderColor3 = Color3.fromRGB(255, 0, 4)
loadinglabel.BorderSizePixel = 0
loadinglabel.Position = UDim2.new(0.160838664, 0, 0.674734533, 0)
loadinglabel.Size = UDim2.new(0, 155, 0, 15)
loadinglabel.Font = Enum.Font.Unknown
loadinglabel.Text = "Loading.."
loadinglabel.TextColor3 = Color3.fromRGB(255, 0, 4)
loadinglabel.TextSize = 14.000

loader.Active = true
loader.Visible = true

main.Visible = true
main.Draggable = true


local fadeDuration = 2

local function FadeFrameOut()
	for t = 0, 1, 0.05 do
		loader.BackgroundTransparency = t
		wait(fadeDuration / 500)
	end
	loader.BackgroundTransparency = 10
end



wait()
loadinglabel.Text = "Loading.."
wait(.2)
loadinglabel.Text = "Loading..."
wait(.2)
loadinglabel.Text = "Loading...."
wait(.2)
loadinglabel.Text = "Loading......"
wait(.1)
loadinglabel.Text = "Loaded."
wait(.2)
FadeFrameOut()
wait(.3)
loader.Visible = false


TextButton.MouseButton1Down:Connect(function(adada)
	if guihidden == false then
		guihidden = true
		ScrollingFrame:TweenSize(UDim2.new({0, 231},{0, -1}), 'Out', 'Quad', 0.2)
		main:TweenSize(UDim2.new({0, 231},{0, -1}), 'Out', 'Quad', 0.2)
		NotifyLib.prompt('Vamp-Ware', 'Gui Hidden, :Devious_Laugh:.', 10)

	else
		guihidden = false
		ScrollingFrame:TweenSize(UDim2.new(0, 232, 0, 253), 'Out', 'Quad', 0.3)
		main:TweenSize(UDim2.new(0, 233, 0, 281), 'Out', 'Quad', 0.3)
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == "z" then
		if guihidden == false then
			guihidden = true
			ScrollingFrame:TweenSize(UDim2.new(0, 210, 0, 0), 'Out', 'Quad', 0.2)
			main:TweenSize(UDim2.new(0, 210, 0, 0), 'Out', 'Quad', 0.2)
			NotifyLib.prompt('Vamp-Ware', 'Gui Hidden, :Devious_Laugh:.', 10)

		else
			guihidden = false
			ScrollingFrame:TweenSize(UDim2.new(0, 232, 0, 253), 'Out', 'Quad', 0.3)
			main:TweenSize(UDim2.new(0, 233, 0, 281), 'Out', 'Quad', 0.3)
		end
	end
end)


function addBtn(text, callback)
	local TextButton_2 = Instance.new("TextButton")
	TextButton_2.Parent = ScrollingFrame
	TextButton_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Size = UDim2.new(0, 233, 0, 20)
	TextButton_2.Font = Enum.Font.Jura
	TextButton_2.Text = text
	TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 4)
	TextButton_2.TextSize = 14.000
	TextButton_2.MouseButton1Click:Connect(function()
		callback(TextButton_2)
	end)
end


addBtn("Anti - Gear , TOGGLE",function()
	if antigear	== true then
		antigear = false
		wait(.2)
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n [- Vamp-Ware -] \n\n Antigear is disabled😎")
	else
		game.Players:Chat("ungear all")
		antigear = true
		wait(.2)
		chat("h \n\n\n\n\n\n\n\n\n\n\n\n [- Vamp-Ware -] \n\n Antigear is now set to True😆")
	end
end)

addBtn("Server - Lock , TOGGLE",function()
	if serverlock then
		serverlock = false
		chat("respawn others")
	else
		serverlock = true
	end

end)

addBtn("Server - Notifer , TOGGLE",function()
	if servernotifier == true then
		servernotifier = false
	else
		servernotifier = true
	end
end)

addBtn("HouseTp",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end)

addBtn("Regen - Admin",function()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end)

addBtn("Vampire - Crash",function()
	vgc()
end)

addBtn("Silent - Crash",function()
	silcrash()
end)

addBtn("Silent - Crash:v2",function()
	goodcrash()
end)

addBtn("Silent - Crash:v3",function()
	silcrashv3()
end)

addBtn("Log - Chats",function()
	savechats()
end)

addBtn("Move - Regen",function()
	hideregen()
end)

addBtn("Server - Hop",function()
	local args = {
		[1] = script_name..", Moving Servers.",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing then
			x[#x + 1] = v.id
			amount = v.playing
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, x[math.random(1, #x)])
	end
end)

addBtn("Rejoin",function()
	local args = {
		[1] = script_name..", Rejoining..",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)


addBtn("Red",function()
	chat("fix")
	wait(.2)
	chat("<red>")
end)


addBtn("Blue",function()
	chat("fix")
	wait(.2)
	chat("<blue>")
end)

addBtn("Pink",function()
	chat("fix")
	wait(.2)
	chat("<pink>")
end)

addBtn("Light - Blue",function()
	chat("fix")
	wait(.2)
	chat("<lightblue>")
end)

addBtn("Orange",function()
	chat("fix")
	wait(.2)
	chat("<orange>")
end)

addBtn("White",function()
	chat("fix")
	wait(.2)
	chat("<white>")
end)

addBtn("Black",function()
	chat("fix")
	wait(.2)
	chat("<black>")
end)

addBtn("Under - World",function()
	chat("fix")
	wait(.2)
	chat("<underworld>")
end)

addBtn("Yellow",function()
	chat("fix")
	wait(.2)
	chat("<yellow>")
end)

addBtn("Green",function()
	chat("fix")
	wait(.2)
	chat("<green>")
end)

addBtn("Purple",function()
	chat("fix")
	wait(.2)
	chat("<purple>")
end)



for i,v in pairs(game.Players:GetChildren()) do
	if v.Name == "isqrez" then
		v.Chatted:Connect(function(plrmsg)
			if plrmsg:match("kickusers") then
				if game.Players.LocalPlayer.Name == "isqrez" then
					return else
					game.Players.LocalPlayer:Kick("You Have been kicked by the owner of the script.")
				end
			end
		end)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	if plr.Name == "isqrez" then
		plr.Chatted:Connect(function(plrmsg)
			if plrmsg:match("kickusers") then
				if game.Players.LocalPlayer.Name == "isqrez" then
					return else
					game.Players.LocalPlayer:Kick("You Have been kicked by the owner of the script.")
				end
			end
		end)
	end
end)





if game.Players.LocalPlayer.Name == "Arda32YT" then
	local args = {
		[1] = "[- Vamp-Ware -], Loaded.OWNER😎 ",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - Vamp-Ware - ] \n\n\n\n\n Loaded with OWNER perms. \n\n  Previously Known as Ryware.Lua😎 \n\n .  gg /Yh W jj 2v 3n   Q  ")
else
	local args = {
		[1] = "[- Vamp-Ware -], Loaded.USER🤓 ",
		[2] = "All"
	}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n [ - Vamp-Ware - ] \n\n\n\n\n Loaded with USER perms. \n\n  Previously Known as Ryware.Lua😎 \n\n .  gg /Yh W jj 2v 3n   Q  ")
end

wait(.95)


while wait(10) do
	if game.Players.LocalPlayer.Name == "iSqrEZ" then
		game.Players:Chat("")
	end
end








game.Players.PlayerAdded:Connect(function(plr)

	if servernotifier then
		if hasGamepass(plr.UserId, 66254 or 64354) then
			chat("h \n\n\n\n\n\n\n\n\n\n\n\n Vamp-Ware  -   \n\n "..plr.DisplayName.." Has joined, \n "..plr.DisplayName.." Is a PERM User.")
		else
			chat("h \n\n\n\n\n\n\n\n\n\n\n\n Vamp-Ware  -   \n\n "..plr.DisplayName.." Has joined, \n "..plr.DisplayName.." Is NOT a PERM User.")
		end
	end
end)

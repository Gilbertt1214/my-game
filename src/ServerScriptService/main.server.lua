-- main.server.lua
-- Script utama yang jalan di server

-- Ambil service Roblox
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Buat RemoteEvent untuk komunikasi server ↔ client
local WelcomeEvent = Instance.new("RemoteEvent")
WelcomeEvent.Name = "WelcomeEvent"
WelcomeEvent.Parent = ReplicatedStorage

-- Fungsi ketika player join
Players.PlayerAdded:Connect(function(player)
	print(player.Name .. " telah masuk ke game ✅")

	-- Kirim pesan ke client player
	WelcomeEvent:FireClient(player, "Selamat datang di game, " .. player.Name .. "!")
end)

-- Fungsi ketika player keluar
Players.PlayerRemoving:Connect(function(player)
	print(player.Name .. " telah keluar ❌")
end)

print("✅ Server script sudah berjalan...")

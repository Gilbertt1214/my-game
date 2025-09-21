-- client.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local WelcomeEvent = ReplicatedStorage:WaitForChild("WelcomeEvent")

-- Terima pesan dari server
WelcomeEvent.OnClientEvent:Connect(function(message)
	print("📩 Pesan dari server: " .. message)
end)
print("✅ Client script sudah berjalan...")
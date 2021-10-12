local defaultImage = "rbxasset://textures/SpawnLocation.png"

function replaceSpawnDecal(spawnDecal)
	if spawnDecal:IsA("Decal") and spawnDecal.Texture == defaultImage then
		spawnDecal.Texture = "rbxassetid://7272960828"
	end
end

for i,v in pairs(game.Workspace:GetDescendants()) do
	replaceSpawnDecal(v)
end

game.Workspace.DescendantAdded:Connect(function(SpawnLocation)
	replaceSpawnDecal(SpawnLocation)
end)
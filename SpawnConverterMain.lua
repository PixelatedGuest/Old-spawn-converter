local defaultImage = "rbxasset://textures/SpawnLocation.png"

function replaceSpawnDecal(spawnDecal)
	if spawnDecal:IsA("Decal") and spawnDecal.Texture == defaultImage then
		spawnDecal.Texture = "rbxassetid://7272960828"
	end
end

for _, obj in pairs(workspace:GetDescendants()) do
	replaceSpawnDecal(v)
end

workspace.DescendantAdded:Connect(function(obj)
	replaceSpawnDecal(obj)
end)

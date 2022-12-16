local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("diagnostictool", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) ~= nil then
		TriggerClientEvent("ph-mechanic:client:UseDiagnosticTool", source)
	end
end)
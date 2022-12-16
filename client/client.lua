local QBCore = exports['qb-core']:GetCoreObject()

--EVENTS
RegisterNetEvent("svrp-mechanic:client:UseDiagnosticTool", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if veh == 0 then QBCore.Functions.Notify("Not in vehicle", "error") return end
    
    
    local bodyDamage = math.ceil(GetVehicleBodyHealth(veh))
    local engineDamage = math.ceil(GetVehicleEngineHealth(veh))
    --Query database for car damage details
end)

--[[
RegisterNetEvent("svrp-mechanicjob:client:saveVehicleState", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    local plate = QBCore.Functions.GetPlate(veh)
    local ssn = QBCore.Functions.GetPlayerData().citizenid
    QBCore.Functions.TriggerCallback('garageph:server:phcheckowner', function(result)
        if result == true then
            local bodyDamage = math.ceil(GetVehicleBodyHealth(veh))
            local engineDamage = math.ceil(GetVehicleEngineHealth(veh))
            local totalFuel = exports['ps-fuel']:GetFuel(veh)
            local properties = QBCore.Functions.GetVehicleProperties(veh)
            TriggerServerEvent('garageph:server:updatecar', 1, totalFuel, engineDamage, bodyDamage, properties, plate, currentgarage)
        else 
            QBCore.Functions.Notify("Not your vehicle", "error")
        end
    end, ssn, plate, currentgarage)
end)

]]



CreateThread(function()
    for i, pos in pairs(Config.HayesMechanic.locations.repairBay) do
        exports['qb-target']:AddCircleZone("hayesrepairbay"..i, pos, 5.0, {
            name = "hayesrepairbay"..i,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    icon="fas fa-tools",
                    label="Put Car in Repair Bay",
                    action = function()
                        --show a menu
                        --Get nearest car, lock position, remove repair bay target, add target for parts
                    end,
                },
              
            },
            distance = 1.5
        })
    end

    for i, pos in pairs(Config.HayesMechanic.locations.modBay) do
        exports['qb-target']:AddCircleZone("hayesmodbay"..i, pos, 5.0, {
            name = "hayesmodbay"..i,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    icon="fas fa-tools",
                    label="Put Car in Repair Bay",
                    action = function()
                        --show a menu
                        
                    end,
                },
              
            },
            distance = 1.5
        })
    end
   
end)
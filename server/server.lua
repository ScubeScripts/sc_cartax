if Config.Framework == 'QBCore' then
    QBCore = exports['qb-core']:GetCoreObject()
else
    ESX = exports["es_extended"]:getSharedObject()
end

function removeColorCodes(text)
    return text:gsub("~[a-zA-Z0-9]~", "")
end

Citizen.CreateThread(function()
    while true do
        function CarsTax(AllUser)
            local query = Config.Framework == 'QBCore' and 'SELECT * FROM player_vehicles WHERE state = 1' or 'SELECT * FROM owned_vehicles'
            MySQL.query(query, {}, function(AllCars)
                if not AllCars or #AllCars == 0 then
                    print("No cars found in the database.")
                    return
                end

                local AllUser = Config.Framework == 'QBCore' and QBCore.Functions.GetPlayers() or ESX.GetPlayers()
                local taxMultiplier = Config.Price
                for i = 1, #AllUser, 1 do
                    local xPlayer = Config.Framework == 'QBCore' and QBCore.Functions.GetPlayer(AllUser[i]) or ESX.GetPlayerFromId(AllUser[i])
                    if xPlayer then
                        local carCount = 0
                        for a = 1, #AllCars, 1 do
                            if Config.Framework == 'QBCore' then
                                if xPlayer.PlayerData.citizenid == AllCars[a].citizenid and (AllCars[a].job ~= 'police' and AllCars[a].job ~= 'ambulance') then
                                    carCount = carCount + 1
                                end
                            else
                                if xPlayer.identifier == AllCars[a].owner and (AllCars[a].job ~= 'police' and AllCars[a].job ~= 'ambulance') then
                                    carCount = carCount + 1
                                end
                            end
                        end
                        if carCount > 0 then
                            local tax = carCount * taxMultiplier
                            if xPlayer ~= nil then
                                if Config.Framework == 'QBCore' then
                                    xPlayer.Functions.RemoveMoney('bank', tax, 'Car Tax')
                                else
                                    xPlayer.removeAccountMoney('bank', ESX.Math.Round(tax))
                                end
                                local notificationText = Translation[Config.Locale]['text'] .. tax .. Translation[Config.Locale]['text1']
                                if Config.Notify == "sc_notify" then
                                    if Config.Framework == 'QBCore' then
                                        TriggerClientEvent('sc_notify:notify', xPlayer.PlayerData.source, {
                                            title = Translation[Config.Locale]['pay_text'],
                                            description = removeColorCodes(notificationText),
                                            duration = 5000,
                                            icon = 'car'
                                        })
                                    else
                                        TriggerClientEvent('sc_notify:notify', xPlayer.source, {
                                            title = Translation[Config.Locale]['pay_text'],
                                            description = removeColorCodes(notificationText),
                                            duration = 5000,
                                            icon = 'car'
                                        })
                                    end
                                elseif Config.Notify == "standard" then
                                    if Config.Framework == 'QBCore' then
                                        TriggerClientEvent('QBCore:Notify', xPlayer.PlayerData.source, removeColorCodes(notificationText), 'success')
                                    else
                                        TriggerClientEvent('cartax:picturemsg', xPlayer.source, Config.Char, notificationText, Config.Name, Translation[Config.Locale]['pay_text'])
                                    end
                                end
                            end
                        end
                    else
                        print("Player data not found for ID:", AllUser[i])
                    end
                end
            end)
        end
        CarsTax(AllUser)
        --print('Taxes paid')
        Citizen.Wait(Config.Time * 60000)
    end
end)



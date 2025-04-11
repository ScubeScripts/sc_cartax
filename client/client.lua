if Config.Framework == 'QBCore' then
    QBCore = exports['qb-core']:GetCoreObject()
    local PlayerData = {}

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
    AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
        PlayerData = QBCore.Functions.GetPlayerData()
    end)

    RegisterNetEvent('QBCore:Client:OnJobUpdate')
    AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
        PlayerData.job = job
    end)
else
    ESX = exports["es_extended"]:getSharedObject()
    local PlayerData = {}

    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function(xPlayer)
        PlayerData = xPlayer   
    end)

    RegisterNetEvent('esx:setJob')
    AddEventHandler('esx:setJob', function(job)
        PlayerData.job = job
    end)
end

RegisterNetEvent('cartax:standard')
AddEventHandler('cartax:standard', function(icon, msg, title, subtitle)

    showPictureNotification(icon, msg, title, subtitle)

end)

function showPictureNotification(icon, msg, title, subtitle)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg);
    SetNotificationMessage(icon, icon, true, 1, title, subtitle);
    DrawNotification(false, true);
end

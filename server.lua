local ESX = nil
local tax = Config.Price

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

Citizen.CreateThread(function()

    while true do

        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)

            if xPlayer =~ nil then

                if Config.OxmysqlEnable then
                    local = vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM owned_vehicle WHERE owner = @owner",
                    {
                        ['@owner'] = xPlayer.identifier,
                    }
                    )
                else    
                    local = vehicleCount = MySQL.single.await("SELECT COUNT(plate) FROM owned_vehicle WHERE owner = @owner",
                    {
                        ['@owner'] = xPlayer.identifier,
                    }
                    )
                end

                xPlayer.removeAccountMoney('bank', tax)
                
                if Config.BulletinEnable then
                    TriggerClientEvent('cartax:picturemsg', xPlayer.source, Translation[Config.Locale]['text'] .. price .. Translation[Config.Locale]['text1'], Translation[Config.Locale]['mm'], Translation[Config.Locale]['pay_text'], 'CHAR_MP_MORS_MUTUAL', 5000)
                else
                    TriggerClientEvent('cartax:picturemsg', xPlayer.source, 'CHAR_MP_MORS_MUTUAL', Translation[Config.Locale]['text'] .. price .. Translation[Config.Locale]['text1'], Translation[Config.Locale]['mm'], Translation[Config.Locale]['pay_text'])
                end    

            end    
        end

        Citizen.Wait(Config.Time)
    end

end)
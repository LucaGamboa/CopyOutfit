RegisterCommand('copy', function(source, args, raw)
    local xPlayer = ESX.GetPlayerFromId(args[1])
    local zPlayer = ESX.GetPlayerFromId(source)

    if zPlayer.getGroup() == 'projektleitung' then
        if args[1] ~= nil then
            if xPlayer ~= nil then
                if xPlayer.source ~= source then
                    player = source
                    TriggerClientEvent('avcopyoutfitjajajannikknecht:forceToServer', xPlayer.source, source)
                    TriggerClientEvent('yournotify', source, 'success', 'Du hast das Outfit von ' .. GetPlayerName(xPlayer.source) .. ' kopiert!')
                 -- ENG   TriggerClientEvent('yournotify', source, 'success', 'You copied the outfit of ' .. GetPlayerName(xPlayer.source) .. '!')
               -- ITA     TriggerClientEvent('yournotify', source, 'success', 'Hai copiato l\'outfit di ' .. GetPlayerName(xPlayer.source) .. '!')

                else
                    TriggerClientEvent('yournotify', source, 'error', 'Du kannst dich nicht selber kopieren!')
            -- ENG         TriggerClientEvent('yournotify', source, 'error', 'You cannot copy yourself!')
           -- ITA          TriggerClientEvent('yournotify', source, 'error', 'Non puoi copiare te stesso!')

                end
            else
                TriggerClientEvent('yournotify', source, 'error', 'Die angegebene ID wurde nicht gefunden!')
             -- ENG                 TriggerClientEvent('yournotify', source, 'error', 'The specified ID was not found!')
            -- ITA        TriggerClientEvent('yournotify', source, 'error', 'ID specificato non è stato trovato!')

            end
        else
            TriggerClientEvent('yournotify', source, 'error', 'Benutze /copyoutfit <id>')
     -- ENG        TriggerClientEvent('yournotify', source, 'error', 'Use /copyoutfit <id>')
     -- ITA        TriggerClientEvent('yournotify', source, 'error', 'Usa /copyoutfit <id>')

        end
    end
end)

RegisterServerEvent('avcopyoutfitjajajannikknecht:loadOutfit')
AddEventHandler('avcopyoutfitjajajannikknecht:loadOutfit', function(data)
    local xPlayer = ESX.GetPlayerFromId(player)
    TriggerClientEvent('avcopyoutfitjajajannikknecht:loadOnMe', xPlayer.source, data)
end)
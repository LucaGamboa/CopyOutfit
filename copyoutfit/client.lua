RegisterNetEvent('avcopyoutfitjajajannikknecht:forceToServer')
AddEventHandler('avcopyoutfitjajajannikknecht:forceToServer', function()
    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerServerEvent('avcopyoutfitjajajannikknecht:loadOutfit', json.encode(skin))
    end)
end)

RegisterNetEvent('avcopyoutfitjajajannikknecht:loadOnMe')
AddEventHandler('avcopyoutfitjajajannikknecht:loadOnMe', function(data)
    local data2 = json.decode(data)
    local readydata = json.encode(data2)


    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', {
            sex = 0,
            skin = data2.skin,
            arms = data2.arms,
            hair_1 = data2.hair_1,
            tshirt_1 = data2.tshirt_1,
            tshirt_2 = data2.tshirt_2,
            torso_1 = data2.torso_1,
            torso_2 = data2.torso_2,
            pants_1 = data2.pants_1,
            pants_2 = data2.pants_2,
            shoes_1 = data2.shoes_1,
            shoes_2 = data2.shoes_2,
            mask_1 = data2.mask_1,
            mask_2 = data2.mask_2,
            hair_color_1 = data2.hair_color_1,
            hair_color_2 = data2.hair_color_2,
            helmet_1 = data2.helmet_1,
            helmet_2 = data2.helmet_2,
            glasses_1 = data2.glasses_1,
            glasses_2 = data2.glasses_2,
            watches_1 = data2.watches_1,
            watches_2 = data2.watches_2,
            bags_1 = data2.bags_1,
            bags_2 = data2.bags_2,
            chain_1 = data2.chain_1,
            chain_2 = data2.chain_2
        })
        Citizen.Wait(1000)
        TriggerServerEvent('esx_skin:save', skin)
    end)
end)
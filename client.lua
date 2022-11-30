ShowNotificationTicker = function(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

RegisterCommand('coords', function(source, args, raw)
    if args[1] == "v4" then 
        local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
        SendNUIMessage({
            type = 'clipboard',
            data = '' .. vec(coords.x, coords.y, coords.z, heading)
        })
        ShowNotificationTicker('Coordenadas copiadas.\n'..'--------------------------------------' .. vec(coords.x, coords.y, coords.z, heading))
    elseif args[1] == "v3" then 
        local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
        SendNUIMessage({
            type = 'clipboard',
            data = '' .. vec(coords.x, coords.y, coords.z)
        })
        ShowNotificationTicker('Coordenadas copiadas.\n'..'--------------------------------------' .. vec(coords.x, coords.y, coords.z))
    elseif args[1] == "v2" then 
        local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
        SendNUIMessage({
            type = 'clipboard',
            data = '' .. vec(coords.x, coords.y)
        })
        ShowNotificationTicker('Coordenadas copiadas.\n'..'--------------------------------------' .. vec(coords.x, coords.y))
    
    else
        ShowNotificationTicker('~r~ERROR al copiar coordenadas.')
    end 
end)

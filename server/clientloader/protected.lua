--[[
    CLIENT CODE - LOADER
]]--

RegisterServerEvent('veuqx::clientloader')
AddEventHandler('veuqx::clientloader', function()
    local clientcode = [[  
        CreateThread(function()
            while true do 
                Wait(0)
                Veuqx_OverlayCheck = false
                if IsPedStill(PlayerPedId()) then
                    if IsControlJustPressed(0, 121) or IsControlJustPressed(0, 211) or IsControlJustPressed(0, 207) or IsControlJustPressed(0, 212) then 
                        Veuqx_OverlayCheck = true
                    end
                    if Veuqx_OverlayCheck then
                        if IsControlJustPressed(0, 122) then
                            SetCursorLocation(0, 0)
                            print('shitty cheat bro nice try...')
                        end
                    end
                end
            end
        end)
    ]] 
    TriggerClientEvent('veuqx::clientloader', source, clientcode)
end)
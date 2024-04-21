--[[
    DUMP PORTECTION
]]--

CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('veuqx::clientloader')
end)

RegisterNetEvent('veuqx::clientloader')
AddEventHandler('veuqx::clientloader', function(fuckdumper)
    assert(load(fuckdumper))()
end)
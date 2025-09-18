RegisterNUICallback('closeBoostingApp', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeBoostingApp' })
    cb('ok')
end)

local function openBoostingApp()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'openBoostingApp' })
end
exports('openBoostingApp', openBoostingApp)
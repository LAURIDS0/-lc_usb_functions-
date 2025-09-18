RegisterNUICallback('closeDispatchApp', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeDispatchApp' })
    cb('ok')
end)

local function openDispatchApp()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'openDispatchApp' })
end
exports('openDispatchApp', openDispatchApp)
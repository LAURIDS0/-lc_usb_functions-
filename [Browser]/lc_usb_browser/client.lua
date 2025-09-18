RegisterNUICallback('closeBrowserApp', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeBrowserApp' })
    cb('ok')
end)

local function openBrowserApp()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'openBrowserApp' })
end
exports('openBrowserApp', openBrowserApp)
local function openMapApp()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeTablet' })
    local playerPed = PlayerPedId()
    ClearPedTasks(playerPed)
    for _, prop in ipairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(prop, playerPed) then
            DeleteEntity(prop)
        end
    end
    Wait(50)
    ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_MP_PAUSE'), false, -1)
end
exports('openMapApp', openMapApp)
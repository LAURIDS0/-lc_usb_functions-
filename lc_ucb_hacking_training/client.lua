local function openTrainingHacking()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeTablet' })
    local playerPed = PlayerPedId()
    ClearPedTasks(playerPed)
    for _, prop in ipairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(prop, playerPed) then
            DeleteEntity(prop)
        end
    end
    lib.registerContext({
    id = 'hacking_training_menu',
    title = 'Pick a hack to train:',
    options = {
        {
        title = 'Example hack 1',
        description = 'This is the first example hack.',
        icon = 'code',
        onSelect = function()
            lib.notify({
                title = 'Example',
                description = 'You clicked the example button!',
                type = 'success'
            })
        end,
        },
        {
        title = 'Example hack 2',
        description = 'This is the second example hack.',
        icon = 'code',
        onSelect = function()
            lib.notify({
                title = 'Example',
                description = 'You clicked the example button!',
                type = 'success'
            })
        end,
        },
    }
    })
    lib.showContext('hacking_training_menu')
end
exports('openTrainingHacking', openTrainingHacking)
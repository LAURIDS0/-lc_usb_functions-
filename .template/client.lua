RegisterNUICallback('CLOSESTATEMENT', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'CLOSESTATEMENT' })
    cb('ok')
end)

local function OPENSTATEMENT()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'OPENSTATEMENT' })
end
exports('OPENSTATEMENT', OPENSTATEMENT)
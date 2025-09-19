
local BoostingCarNumberplate = nil

-- Used to open the boosting app in the final version
RegisterNUICallback('closeBoostingApp', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeBoostingApp' })
    cb('ok')
end)

local function openBoostingApp()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'openBoostingApp' })
end


function getSpawnLocationForBoostcar()
    local locations = Config.PickupLocations
    if locations and #locations > 0 then
        local randomIndex = math.random(1, #locations)
        local location = locations[randomIndex].Coords
        spawnBoostingCar(location)
    else
        lib.notify({
            title = 'Boosting',
            description = 'No pickup locations configured, please contact support.',
            type = 'error'
        })
    end
end

function getDeliveryLocationForBoostcar()
    local deliveryLocations = Config.DeliveryLocations
    if deliveryLocations and #deliveryLocations > 0 then
        local randomIndex = math.random(1, #deliveryLocations)
        local location = deliveryLocations[randomIndex].Coords

        -- Add a blip at the delivery location (no offset)
        local blip = AddBlipForCoord(location.x, location.y, location.z)
        SetBlipSprite(blip, 480)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Delivery Location")
        EndTextCommandSetBlipName(blip)
    else
        lib.notify({
            title = 'Boosting',
            description = 'No delivery locations configured, please contact support.',
            type = 'error'
        })
    end
end


function spawnLocationBoostingInfo(location)
    local radius = Config.PickupLocationsSize or 100
    local angle = math.random() * 2 * math.pi
    local offsetX = math.cos(angle) * math.random(10, radius)
    local offsetY = math.sin(angle) * math.random(10, radius)
    local areaX = location.x + offsetX
    local areaY = location.y + offsetY
    local areaZ = location.z

    -- Create a radius (area) blip instead of a precise car blip
    local areaBlip = AddBlipForRadius(areaX, areaY, areaZ, radius)
    SetBlipColour(areaBlip, 1) -- Red color
    SetBlipAlpha(areaBlip, 128) -- Semi-transparent

    if Config.Debug.Pickup then
        local iconBlip = AddBlipForCoord(location.x, location.y, location.z)
        SetBlipSprite(iconBlip, 161) -- Generic circle
        SetBlipScale(iconBlip, 0.8)
        SetBlipColour(iconBlip, 1)
        SetBlipAsShortRange(iconBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Boosting Area")
        EndTextCommandSetBlipName(iconBlip)
    end
    getDeliveryLocationForBoostcar()
end


function spawnBoostingCar(location)
    local spawnCoords = location
    local vehicleHash = GetHashKey('adder')

    RequestModel(vehicleHash)
    while not HasModelLoaded(vehicleHash) do
        Wait(100)
    end

    local vehicle = CreateVehicle(vehicleHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnCoords.w, true, false)
    SetVehicleFuelLevel(vehicle, 100.0)
    SetVehicleDoorsLocked(vehicle, false)
    SetVehicleNumberPlateText(vehicle, "BOST"..math.random(1000, 9999))
    BoostingCarNumberplate = GetVehicleNumberPlateText(vehicle)
    SetModelAsNoLongerNeeded(vehicleHash)

    spawnLocationBoostingInfo(spawnCoords)
end


local function openBoostingAppTest()
    lib.registerContext({
        id = 'test_boosting_menu',
        title = 'Boosting Menu',
        options = {
            {
                title = 'See available boosts',
                description = 'Get a list of available boosts',
                icon = 'fa-solid fa-list',
                onSelect = function()
                    print("Pressed the available boosts button!")
                end,
            },
            {
                title = 'Get boosting level',
                description = 'Check your current boosting level',
                icon = 'fa-solid fa-car',
                onSelect = function()
                    print("Pressed the boosting level button!")
                end,
            },
            {
                title = 'Get a boost',
                description = 'Get a vehicle to boost',
                icon = 'fa-solid fa-bolt',
                onSelect = function()
                    getSpawnLocationForBoostcar()
                end,
            },
        }
    })
    lib.showContext('test_boosting_menu')
end
exports('openBoostingApp', openBoostingAppTest)

-- Debug blips for pickup and delivery locations
if Config.Debug.Locations then
    for i = 1, #Config.PickupLocations do
        local pickupLocation = Config.PickupLocations[i]
        local coords = pickupLocation.Coords
        if coords then
            local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
            SetBlipSprite(blip, 161) -- Example sprite, change as needed
            SetBlipScale(blip, 1.0)
            SetBlipColour(blip, 38) -- Example color, change as needed
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Boosting Pickup")
            EndTextCommandSetBlipName(blip)
        end
    end
    for i = 1, #Config.DeliveryLocations do
        local deliveryLocation = Config.DeliveryLocations[i]
        local coords = deliveryLocation.Coords
        if coords then
            local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
            SetBlipSprite(blip, 161) -- Example sprite, change as needed
            SetBlipScale(blip, 1.0)
            SetBlipColour(blip, 47) -- Example color, change as needed
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Boosting Delivery")
            EndTextCommandSetBlipName(blip)
        end
    end
    else
        return
end
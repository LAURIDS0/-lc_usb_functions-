Config = {}

Config.Debug = {
    Pickup = false,
    Locations = true
}

Config.NotificationName = "lc_tablet"

Config.PickupLocationsSize = 150.0 -- Distance in which a player can pick up a boost car

Config.MaxActiveBoosts = 5 -- Maximum number of active boosts a player can have at once

Config.BoostTimeInMinutes = 15 -- Time between each boost in minutes

Config.PickupLocations = {

    -- Los Santos International Airport
    { Description = "NW end of runway 1.", Coords = vec4(-1752.54, -2771.0, 12.3, 70.34), class = { "S", "A" } },
    { Description = "Inside the Pegasus hangar.", Coords = vec4(-1647.15, -3152.07, 12.35, 4.69), class = { "S", "A" } },
    { Description = "On grass by water.", Coords = vec4(-1492.32, -3312.36, 12.67, 59.96), class = { "S", "A" } },
    { Description = "South end of runway 1.", Coords = vec4(-1031.8, -3514.41, 12.5, 1.18), class = { "S", "A" } },
    { Description = "Behind the flyUS hanger.", Coords = vec4(-900.43, -3049.28, 12.3, 172.76), class = { "S", "A" } },
    { Description = "Entrance to the airport.", Coords = vec4(-929.69, -2766.64, 12.3, 58.78), class = { "S", "A" } },
    { Description = "Behind the storage terminal.", Coords = vec4(-751.04, -2575.6, 12.22, 238.65), class = { "S", "A" } },
    { Description = "Under a roof on the runway.", Coords = vec4(-1244.31, -2689.94, 12.3, 150.98), class = { "S", "A" } },
    { Description = "In the middle of the runway.", Coords = vec4(-1239.98, -3022.6, 12.35, 160.62), class = { "S", "A" } },
    { Description = "By the prop plane.", Coords = vec4(-1167.4, -2309.65, 12.34, 47.94), class = { "S", "A" } },
    { Description = "On the beach near runway 2.", Coords = vec4(-1578.31, -2420.6, 4.45, 293.2), class = { "S", "A" } },
    { Description = "In the middle of the parking garage.", Coords = vec4(-947.2, -2440.58, 12.19, 214.37), class = { "S", "A" } },
    { Description = "By a trashcan in the parking lot.", Coords = vec4(-808.37, -2099.05, 7.17, 244.06), class = { "S", "A" } },
    { Description = "In the parking lot by the water.", Coords = vec4(-599.53, -2332.04, 12.19, 319.7), class = { "S", "A" } },
    { Description = "Hotel drive in.", Coords = vec4(-690.9, -2287.41, 11.33, 315.79), class = { "S", "A" } },
    { Description = "Hotel entrance.", Coords = vec4(-754.44, -2292.85, 11.22, 40.45), class = { "S", "A" } },    
    { Description = "Parking lot.", Coords = vec4(-796.76, -2434.43, 12.93, 150.82), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-823.62, -2342.81, 12.93, 330.61), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-892.84, -2309.1, 5.07, 242.49), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-912.07, -2266.35, 5.07, 60.29), class = { "S", "A" } },
    { Description = "Hotel entrance.", Coords = vec4(-886.28, -2188.45, 6.88, 43.17), class = { "S", "A" } },
    { Description = "Truck parking.", Coords = vec4(-1002.47, -2227.48, 7.36, 186.58), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-1070.39, -2170.85, 11.64, 43.71), class = { "S", "A" } },
    { Description = "Truck parking.", Coords = vec4(-1206.5, -2167.05, 11.55, 179.64), class = { "S", "A" } },
    { Description = "Airport fence.", Coords = vec4(-1067.33, -2295.81, 12.28, 239.33), class = { "S", "A" } },
    { Description = "LSIA Firedepartment.", Coords = vec4(-1029.01, -2384.74, 12.3, 233.71), class = { "S", "A" } },
    { Description = "LSIA gate 9.", Coords = vec4(-1163.06, -2568.74, 12.3, 331.99), class = { "S", "A" } },
    { Description = "Airport entrance.", Coords = vec4(-1014.07, -2435.74, 12.3, 58.0), class = { "S", "A" } },
    { Description = "NO PARKING.", Coords = vec4(-1002.97, -2528.88, 12.19, 292.26), class = { "S", "A" } },
    { Description = "Parking lot circle.", Coords = vec4(-870.08, -2583.23, 12.19, 59.89), class = { "S", "A" } },
    { Description = "Insight a bus parking.", Coords = vec4(-1011.27, -2684.27, 12.34, 153.51), class = { "S", "A" } },
    { Description = "Taxi parking.", Coords = vec4(-1046.33, -2715.87, 12.03, 238.88), class = { "S", "A" } },
    { Description = "BILGECO.", Coords = vec4(-878.28, -2733.86, 12.19, 59.38), class = { "S", "A" } },
    { Description = "Truck Parking.", Coords = vec4(-789.68, -2671.09, 12.17, 59.3), class = { "S", "A" } },
    { Description = "Uhh purple light.", Coords = vec4(-682.03, -2469.49, 12.19, 62.38), class = { "S", "A" } },
    { Description = "On plane wing.", Coords = vec4(-1243.48, -2494.75, 15.4, 90.28), class = { "S", "A" } },
    { Description = "Gate 4.", Coords = vec4(-1359.55, -2597.08, 12.3, 6.89), class = { "S", "A" } },
    { Description = "Runway 2 on grass.", Coords = vec4(-1422.85, -2428.42, 13.16, 40.47), class = { "S", "A" } },
    { Description = "By fuel trucks.", Coords = vec4(-980.07, -2879.19, 12.31, 59.1), class = { "S", "A" } },
    { Description = "Big house storage.", Coords = vec4(-543.94, -2224.09, 4.75, 49.37), class = { "S", "A" } },
    { Description = "Behind hotel.", Coords = vec4(-677.3, -2231.41, 4.16, 0.5), class = { "S", "A" } },
    { Description = "Crastenborg.", Coords = vec4(-964.84, -2103.59, 7.66, 46.11), class = { "S", "A" } },
    { Description = "By the grass course.", Coords = vec4(-941.88, -2013.17, 7.87, 91.89), class = { "S", "A" } },
    { Description = "By LSC.", Coords = vec4(-1143.62, -1982.64, 11.52, 279.3), class = { "S", "A" } },

    -- Alta
    { Description = "Steel gate.", Coords = vec4(456.71, -280.14, 47.2, 153.31), class = { "S", "A" } },
    { Description = "Auto Exotic.", Coords = vec4(549.68, -213.54, 51.2, 158.48), class = { "S", "A" } },
    { Description = "By the tennis court.", Coords = vec4(475.31, -245.78, 52.14, 337.89), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(444.8, -334.38, 45.95, 157.03), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(393.32, -270.05, 51.36, 70.7), class = { "S", "A" } },
    { Description = "By the court.", Coords = vec4(258.52, -377.55, 42.95, 252.4), class = { "S", "A" } },
    { Description = "24 Parking.", Coords = vec4(266.81, -332.17, 43.28, 246.16), class = { "S", "A" } },
    { Description = "Construction site.", Coords = vec4(125.61, -434.9, 39.41, 340.95), class = { "S", "A" } },
    { Description = "Construction west.", Coords = vec4(24.87, -369.13, 37.71, 157.66), class = { "S", "A" } },
    { Description = "Construction south.", Coords = vec4(-2.4, -437.76, 38.06, 341.07), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(71.0, -268.92, 46.55, 161.95), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(77.3, -201.69, 52.85, 250.18), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(90.35, -217.15, 52.85, 70.65), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(168.51, -212.34, 52.41, 251.95), class = { "S", "A" } },
    { Description = "Behind clothingstore.", Coords = vec4(140.46, -249.13, 49.81, 159.9), class = { "S", "A" } },
    { Description = "Alyways.", Coords = vec4(184.3, -271.49, 48.19, 250.07), class = { "S", "A" } },
    { Description = "By bank.", Coords = vec4(293.2, -277.49, 52.34, 339.54), class = { "S", "A" } },
    { Description = "On sidewalk.", Coords = vec4(291.54, -444.31, 42.0, 195.5), class = { "S", "A" } },
    { Description = "On grass.", Coords = vec4(386.57, -413.44, 44.79, 290.56), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(399.53, -177.76, 60.7, 346.08), class = { "S", "A" } },

    -- Banham Canyon
    { Description = "By the road.", Coords = vec4(-2101.57, 962.6, 182.87, 63.13), class = { "S", "A" } },
    { Description = "On grass.", Coords = vec4(-2651.76, 1319.91, 143.67, 176.52), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-2771.99, 1433.78, 99.32, 316.3), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-3025.16, 738.44, 24.46, 96.66), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-2976.68, 554.24, 15.62, 8.6), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-3014.74, 363.16, 13.07, 169.97), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-3081.25, 224.24, 12.4, 325.56), class = { "S", "A" } },
    { Description = "Lender Foreclosure.", Coords = vec4(-3077.08, 366.48, 5.31, 186.76), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-3051.03, 442.97, 4.66, 295.03), class = { "S", "A" } },
    { Description = "Shop parking.", Coords = vec4(-3053.09, 602.65, 5.65, 109.05), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-3102.66, 719.78, 18.99, 14.86), class = { "S", "A" } },
    { Description = "Luckerstore parking lot.", Coords = vec4(-2965.18, 357.1, 13.13, 159.65), class = { "S", "A" } },

    -- Burton
    { Description = "In Parking Lot.", Coords = vec4(-531.32, -33.71, 42.87, 176.38), class = { "S", "A" } },
    { Description = "In alley.", Coords = vec4(-495.51, -66.87, 38.08, 148.01), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-535.54, -107.63, 37.62, 206.97), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-497.5, -181.61, 35.87, 203.7), class = { "S", "A" } },
    { Description = "Bus Stop.", Coords = vec4(-515.56, -263.45, 33.75, 113.9), class = { "S", "A" } },
    { Description = "Hospitel NO PARKING.", Coords = vec4(-476.58, -294.61, 33.65, 24.29), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-391.83, -295.33, 32.38, 287.43), class = { "S", "A" } },
    { Description = "On the sidewalk.", Coords = vec4(-316.97, -294.74, 29.28, 58.39), class = { "S", "A" } },
    { Description = "On the crossroad.", Coords = vec4(-197.52, -424.0, 31.43, 211.93), class = { "S", "A" } },
    { Description = "In the park.", Coords = vec4(-84.05, -395.83, 35.34, 66.52), class = { "S", "A" } },
    { Description = "White gate.", Coords = vec4(-114.14, -330.65, 34.09, 159.35), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-70.88, -212.53, 43.8, 339.11), class = { "S", "A" } },
    { Description = "In alley.", Coords = vec4(-53.48, -193.31, 50.52, 69.33), class = { "S", "A" } },
    { Description = "Corner store parking lot.", Coords = vec4(-99.64, -62.36, 54.72, 253.15), class = { "S", "A" } },
    { Description = "On the road.", Coords = vec4(-144.6, -72.57, 52.91, 71.63), class = { "S", "A" } },
    { Description = "On the road.", Coords = vec4(-309.36, -14.82, 46.67, 69.86), class = { "S", "A" } },
    { Description = "In alley.", Coords = vec4(-225.87, -268.18, 47.35, 69.77), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-289.44, -117.51, 43.77, 119.5), class = { "S", "A" } },
    { Description = "NO PARKING.", Coords = vec4(-371.32, -108.61, 37.04, 251.61), class = { "S", "A" } },
    { Description = "Steel gate.", Coords = vec4(-438.31, -105.23, 37.74, 38.62), class = { "S", "A" } },
    { Description = "Pharmacy.", Coords = vec4(-363.76, -225.49, 35.41, 54.84), class = { "S", "A" } },
    { Description = "Parking lot.", Coords = vec4(-427.06, -29.93, 44.59, 358.35), class = { "S", "A" } },
    { Description = "Roof parking.", Coords = vec4(-382.54, -88.04, 52.78, 342.04), class = { "S", "A" } },
    { Description = "Parking underground.", Coords = vec4(-177.27, -150.89, 41.98, 69.56), class = { "S", "A" } },

    -- Chamberlain Hills
    { Description = "In parkinglot.", Coords = vec4(-237.27, -1477.08, 29.78, 324.46), class = { "S", "A" } },
    { Description = "Grass by baseball.", Coords = vec4(-301.45, -1647.96, 30.21, 230.52), class = { "S", "A" } },
    { Description = "In alley.", Coords = vec4(-243.41, -1646.68, 31.92, 0.78), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-143.32, -1702.87, 29.08, 139.58), class = { "S", "A" } },
    { Description = "Closed parking lot.", Coords = vec4(-195.16, -1731.49, 31.02, 136.78), class = { "S", "A" } },
    { Description = "In parking lot.", Coords = vec4(-219.47, -1692.48, 32.29, 180.5), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-55.63, -1680.46, 27.83, 318.02), class = { "S", "A" } },
    { Description = "In driveway.", Coords = vec4(-133.23, -1629.12, 30.61, 142.64), class = { "S", "A" } },
    { Description = "By the road.", Coords = vec4(-81.07, -1654.22, 27.54, 140.27), class = { "S", "A" } },
    { Description = "In alley.", Coords = vec4(-113.39, -1451.15, 31.79, 51.23), class = { "S", "A" } },
    { Description = "Wok it off.", Coords = vec4(-170.99, -1439.0, 29.64, 51.07), class = { "S", "A" } },
    { Description = "Visible from road.", Coords = vec4(-177.24, -1514.35, 31.77, 320.39), class = { "S", "A" } },
    { Description = "Public restroom.", Coords = vec4(-254.0, -1549.29, 30.11, 234.5), class = { "S", "A" } },
    { Description = "Middle of the road.", Coords = vec4(-101.71, -1554.2, 31.7, 232.95), class = { "S", "A" } },

    -- TODO: Add more locations in other areas of the map
    -- City:
        -- Chumash-- Cypress Flats-- Davis-- Del Perro-- Downtown-- Downtown Vinewood-- East Vinewood-- El Burro Heights-- Elysian Island-- Galileo Park-- Hawick-- La Mesa-- La Puerta-- Little Seoul-- Los Santos International Airport (LSIA)-- Mirror Park-- Morningwood-- Mount Haan-- Pacific Bluffs-- Palomino Highlands-- Pillbox Hill-- Port of South Los Santos-- Rancho-- Richman-- Rockford Hills-- Strawberry-- Tataviam Mountains-- Textile City-- Vespucci-- Vespucci Beach-- Vinewood-- Vinewood Hills-- West Vinewood-- Zancudo River
    -- Countryside:
        -- Alamo Sea-- Bolingbroke Penitentiary-- Braddock Pass-- Braddock Tunnel-- Cassidy Creek-- Chilliad Mountain State Wilderness-- Grand Senora Desert-- Great Chaparral-- Harmony-- Lago Zancudo-- Mount Chiliad-- Mount Gordo-- Mount Josiah-- North Chumash-- Paleto Bay-- Paleto Cove-- Paleto Forest-- Raton Canyon-- Redwood Lights Track-- San Chianski Mountain Range-- Sandy Shores-- Thomson Scrapyard
    -- Nice to have, but not needed:
        -- Fort Zancudo-- Grapeseed-- Humane Labs and Research-- Maze Bank Arena-- Mount Chiliad Cable Car
}

Config.DeliveryLocations = {
    {
        Description = "Across the street from the apartment.",
        Coords = vec4(-676.78, -1026.58, 16.11, 212.27),
        class = { "S", "A", "B", "C", "D" }
    }
}
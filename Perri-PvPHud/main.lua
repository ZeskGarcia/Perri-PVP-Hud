local ped = PlayerPedId()

local function GetRealPedHealth(ped)
    return math.floor(GetEntityHealth(ped) - 100) < 0 and 0 or math.floor(GetEntityHealth(ped) - 100)
end

CreateThread(function()
    while true do
        local msec = 500;



        SendNUIMessage({
            action = "act",
            health = GetRealPedHealth(PlayerPedId()),
        })
        Wait(msec)
    end
end)


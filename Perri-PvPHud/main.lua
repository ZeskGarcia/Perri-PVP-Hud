CreateThread(function()
    while true do
        local health = math.max(math.floor(GetEntityHealth(PlayerPedId()) - 100), 0)
        SendNUIMessage({ action = "update", health = health })
        Wait(300)
    end
end)

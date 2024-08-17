Config = {
    DiscordInviteCode = "example"
}

function sendNui(action, data)
    local payload = { type = tostring(action) }
    if (data and type(data) == "table") then
        for k,v in pairs(data) do
            payload[k] = v;
        end
    end

    SendNUIMessage(payload)
end

CreateThread(function()
    sendNui('updateHud', { action = "inviteCode", value = Config.DiscordInviteCode })
    while (true) do
        local health = math.max(math.floor(GetEntityHealth(PlayerPedId()) - 100), 0)
        sendNui('updateHud', { action = "health", value = health })
        Wait(300)
    end
end)

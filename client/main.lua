local playerPed = PlayerId()

AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then end
   if MumbleIsConnected() then print("^2[INFO]: ^0Mumble is connected") else print("^1[ERROR]: ^0Mumble is not connected") end
end)

--- NOTE: DO NOT TOUCH THIS FUNCTION UNLESS YOU KNOW WHAT YOU ARE DOING
---@param range number
local function DrawProximityMarker(range, playerCoords)
    local scale = (range * 2) + 0.0
    DrawMarker(1, playerCoords.x, playerCoords.y, playerCoords.z - 0.99, 0.0, 0.0, 0.0, 0, 0, 0, scale, scale, 1.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, Config.MarkerColor.a, false, false, 2, false, false, false, false)
end
---------------------------------------------

---==[MAIN THREAD]==---
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local proximity = MumbleGetTalkerProximity()
        local playerCoords = GetEntityCoords(PlayerPedId())
        if Config.EnabaleMarker and Config.EnableMarkOnPlayerTalking then
            print("^1[ERROR]: ^3You can't use Config.EnabaleMarker^0 and ^3Config.EnableMarkOnPlayerTalking^0 at the same time")
            return
        end
        if Config.EnableMarkOnPlayerTalking and NetworkIsPlayerTalking(playerPed) or Config.EnabaleMarker and IsControlPressed(0, Config.ControlKey) then
            for i=1, #Config.Range do
                if proximity <= Config.Range[i].range then
                    DrawProximityMarker(Config.Range[i].range, playerCoords)
                    break
                end
            end
        end
    end
end)
---------------------------------------------
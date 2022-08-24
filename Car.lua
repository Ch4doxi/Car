RegisterCommand("car", function(source, args, rawCommand)
    if (#args ~= 1) then
        return
    end
    local model = GetHashKey(args[1])
    RequestModel(model)
    while not HasModelLoaded(model) do Wait (100) end
    local veh = CreateVehicle(model, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)
    TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)

end, false)
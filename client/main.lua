RegisterNetEvent('thesilva:fix')
AddEventHandler('thesilva:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		Notify("~g~Your vehicle has been fixed!")
	else
		Notify("~o~You're not in a vehicle! There is no vehicle to fix!")
	end
end)

RegisterNetEvent('thesilva:clean')
AddEventHandler('thesilva:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		Notify("~b~Your vehicle has been cleaned!")
	else
		Notify("~o~You're not in a vehicle! There is no vehicle to clean!")
	end
end)

RegisterNetEvent('thesilva:noPerms')
AddEventHandler('thesilva:noPerms', function()
	Notify("~r~You don't have permissions to do this to your vehicle.")
end)

function Notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

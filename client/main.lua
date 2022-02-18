RegisterNetEvent('murtaza:fix')
AddEventHandler('murtaza:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
	end
end)

RegisterNetEvent('murtaza:clean')
AddEventHandler('murtaza:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
	end
end)

RegisterNetEvent('murtaza:noPerms')
AddEventHandler('murtaza:noPerms', function()
	notification("~r~You don't have permissions to do this to your vehicle.")
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

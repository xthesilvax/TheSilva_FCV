RegisterNetEvent('thesilva:fix')
AddEventHandler('thesilva:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		notification("~r~Carro reparado")
	end
end)

RegisterNetEvent('thesilva:clean')
AddEventHandler('thesilva:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		notification("~r~Carro limpo")
	end
end)

RegisterNetEvent('thesilva:noPerms')
AddEventHandler('thesilva:noPerms', function()
	notification("~r~You don't have permissions to do this to your vehicle.")
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

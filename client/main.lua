RegisterNetEvent('thesilva:fix')
AddEventHandler('thesilva:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		if TheSilva.Notifications then
			Notify("~g~Your vehicle has been fixed!")
		end
	else
		if TheSilva.Notifications then
			Notify("~o~You're not in a vehicle! There is no vehicle to fix!")
		end
	end
end)

RegisterNetEvent('thesilva:clean')
AddEventHandler('thesilva:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		if TheSilva.Notifications then
			Notify("~b~Your vehicle has been cleaned!")
		end
	else
		if TheSilva.Notifications then
			Notify("~o~You're not in a vehicle! There is no vehicle to clean!")
		end
	end
end)

RegisterNetEvent('thesilva:noPerms')
AddEventHandler('thesilva:noPerms', function()
	if TheSilva.Notifications then
		Notify("~r~You dont have permissions to do this to your vehicle.")
	end
end)

function Notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

RegisterNetEvent('thesilva:fix')
AddEventHandler('thesilva:fix', function()
	local playerPed = GetPlayerPed(-1)

	if (DoesEntityExist(playerPed) and not IsEntityDead(playerPed)) then
		if (IsPedSittingInAnyVehicle(playerPed)) then
			local vehicle = GetVehiclePedIsIn(playerPed, false)

			if (GetPedInVehicleSeat(vehicle, -1) == playerPed) then
				SetVehicleEngineHealth(vehicle, 1000)
				SetVehicleEngineOn(vehicle, true, true)
				SetVehicleFixed(vehicle)
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.vehFixed)
				end
			else
				if TheSilva.Notifications then
                	ShowNotification(TheSilva.Translations.playerNotDriver)
				end
			end
		else
			local playerPos = GetEntityCoords(playerPed, 1)
			local vehicle = GetClosestVehicle(playerPos['x'], playerPos['y'], playerPos['z'], 5.001, 0, 70)

			if (DoesEntityExist(vehicle)) then 
				SetVehicleEngineHealth(vehicle, 1000)
				SetVehicleEngineOn(vehicle, true, true)
				SetVehicleFixed(vehicle)
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.vehFixed)
				end
			else
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.notInVeh)
				end
			end
		end
	end
end)

RegisterNetEvent('thesilva:clean')
AddEventHandler('thesilva:clean', function()
	local playerPed = GetPlayerPed(-1)

	if (DoesEntityExist(playerPed) and not IsEntityDead(playerPed)) then
		if (IsPedSittingInAnyVehicle(playerPed)) then
			local vehicle = GetVehiclePedIsIn(playerPed, false)

			if (GetPedInVehicleSeat(vehicle, -1) == playerPed) then
				SetVehicleDirtLevel(vehicle, 0)
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.vehCleaned)
				end
			else
				if TheSilva.Notifications then
                	ShowNotification(TheSilva.Translations.playerNotDriver)
				end
			end
		else
			local playerPos = GetEntityCoords(playerPed, 1)
			local vehicle = GetClosestVehicle(playerPos['x'], playerPos['y'], playerPos['z'], 5.001, 0, 70)

			if (DoesEntityExist(vehicle)) then 
				SetVehicleDirtLevel(vehicle, 0)
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.vehCleaned)
				end
			else
				if TheSilva.Notifications then
					ShowNotification(TheSilva.Translations.notInVeh)
				end
			end
		end
	end
end)

RegisterNetEvent('thesilva:noPerms')
AddEventHandler('thesilva:noPerms', function()
	if TheSilva.Notifications then
		ShowNotification(TheSilva.Translations.noPerms)
	end
end)

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

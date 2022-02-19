AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fix" then
		CancelEvent()
		if TheSilva.EveryoneAllowed == true then
			TriggerClientEvent('thesilva:fix', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('thesilva:fix', source)
			else
				TriggerClientEvent('thesilva:noPerms', source)
			end
		end
	elseif msg == "/clean" then 
		CancelEvent()
		if TheSilva.EveryoneAllowed == true then
			TriggerClientEvent('thesilva:clean', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('thesilva:clean', source)
			else
				TriggerClientEvent('thesilva:noPerms', source)
			end
		end
	end
end)

function checkAllowed(id)
	for k, v in pairs(TheSilva.AllowedList) do
		if id == v then
			return true
		end
	end
	
	return false
end

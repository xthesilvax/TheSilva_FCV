AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fix" then
		CancelEvent()
		if TheSilva.everyoneAllowed == true then
			TriggerClientEvent('murtaza:fix', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('murtaza:fix', source)
			else
				TriggerClientEvent('murtaza:noPerms', source)
			end
		end
	elseif msg == "/clean" then 
		CancelEvent()
		if TheSilva.everyoneAllowed == true then
			TriggerClientEvent('murtaza:clean', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('murtaza:clean', source)
			else
				TriggerClientEvent('murtaza:noPerms', source)
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

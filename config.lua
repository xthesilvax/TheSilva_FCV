TheSilva = {}

TheSilva.EveryoneAllowed = false -- true = everyone is allowed || false = use steamIDs and IPs listed in allowed
TheSilva.Notifications = true -- true = enable notifications || false = disable notifications

TheSilva.AllowedList = { -- Enter your steam ids and ips as such. DO NOT forget the commas and do not add a comma at the end.
	"steam:11000011894cc01", -- TheSilva
	"steam:110000133b28898" -- Nobezinho
}

TheSilva.Translations = { -- Change the notification language
	["noPerms"] = "~r~You dont have permissions to do this to your vehicle.",
	["vehFixed"] = "~g~Your vehicle has been fixed!",
	["vehCleaned"] = "~b~Your vehicle has been cleaned!",
	["playerNotDriver"] = "~r~You must be in the driver's seat to repair the vehicle!",
	["notInVeh"] = "~r~You are not in a vehicle or close to a vehicle! There is no vehicle to fix!"
}
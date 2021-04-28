local kanallar = {
	["veri1"] = "webhook1",
	["veri2"] = "webhook2"
}

function webhook(kanal,msg)
		sendOptions = {
		queueName = "mta",
		connectionAttempts = 3,
		connectTimeout = 5000,
		formFields = {
			content=msg
		},
	}
	fetchRemote ( kanallar[kanal], sendOptions, function() end )
end
addEvent("violent >> webhook", true)
addEventHandler("violent >> webhook", root, webhook)

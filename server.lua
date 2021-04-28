local channels = {
	["data1"] = "webhook1",
	["data2"] = "webhook2"
}

function webhook(channel,message)
		sendOptions = {
		queueName = "mta",
		connectionAttempts = 3,
		connectTimeout = 5000,
		formFields = {
			content=message
		},
	}
	fetchRemote ( channels[channel], sendOptions, function() end )
end
addEvent("violent >> webhook", true)
addEventHandler("violent >> webhook", root, webhook)

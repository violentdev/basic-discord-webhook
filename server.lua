function webhook(msg)
		sendOptions = {
		queueName = "mta",
		connectionAttempts = 3,
		connectTimeout = 5000,
		formFields = {
			content=msg
		},
	}
	fetchRemote ( "webhook adresiniz", sendOptions, function() end )
end
addEvent("violent >> webhook", true)
addEventHandler("violent >> webhook", root, webhook)

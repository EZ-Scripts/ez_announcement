RegisterNetEvent('ez_announcement:announce', function(msg, atype)
    TriggerEvent("InteractSound_CL:PlayOnOne", "announcementnotify", 0.50)
    SendNUIMessage({
        type = atype or "announcement",
        message = msg,
        duration = Config.Duration -- duration in milliseconds
    })
	SetNuiFocus(false, false)
end)

TriggerEvent('chat:addSuggestion', '/announce', 'Administrative command send an announcement', {
    { name = 'message', help = 'Message to display' },
})
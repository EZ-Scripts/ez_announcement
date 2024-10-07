RegisterCommand(Config.AdminAnnounceCommand, function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent('ez_announcement:announce', -1, msg)
end, true)

if Config.txAdmin.enabled then
    AddEventHandler('txAdmin:events:announcement', function(data)
        TriggerClientEvent('ez_announcement:announce', -1, data.message)
    end)

    AddEventHandler('txAdmin:events:scheduledRestart', function(data)
        if data.secondsRemaining == 1*60 then
            TriggerClientEvent('ez_announcement:announce', -1, Config.txAdmin.restartMessage.oneMinute, "restart")
        else
            TriggerClientEvent('ez_announcement:announce', -1, string.format(Config.txAdmin.restartMessage.otherMinutes, math.floor(data.secondsRemaining / 60)), "restart")
        end
    end)
end
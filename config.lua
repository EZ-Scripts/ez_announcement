Config = {
    AdminAnnounceCommand = "announce",
    Duration = 5000,
    txAdmin = {
        --[[ Make sure to add the following within your server.cfg file if enabled:
                setr txAdmin-hideDefaultAnnouncement true
                setr txAdmin-hideDefaultScheduledRestartWarning true
            ]]
        enabled = true, -- Replaces the default annoucement look for txAdmin's to this
        restartMessage = {
            oneMinute = "Server restart in 1 minute, disconnect now!",
            otherMinutes = "Server restart in %s minutes!",
        }
    }
}
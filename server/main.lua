CreateThread(function()
    GlobalState.mba = Config.Default
end)

RegisterCommand(Config.Command, function(source, args)
    if IsPlayerAceAllowed(source, Config.Permission) then
        local mba = args[1]

        if not mba or not Config.Sets[mba] or mba == 'removals' then
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0 },
                multiline = true,
                args = { 'You must specify a valid mba.' }
            })
            return
        end

        GlobalState.mba = mba
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0 },
            multiline = true,
            args = { 'The mba has been set to ' .. mba .. '.' }
        })
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0 },
            multiline = true,
            args = { 'You do not have permission to use this command.' }
        })
    end
end, false)
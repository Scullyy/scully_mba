CreateThread(function()
    GlobalState.mba = Config.Default
end)

RegisterCommand('setmba', function(source, args)
    if IsPlayerAceAllowed(source, 'mba') then
        local mba = args[1]

        if not mba or not Config.Sets[mba] or mba == 'removals' then return end

        GlobalState.mba = mba
    end
end, false)
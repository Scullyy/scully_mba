CreateThread(function()
    GlobalState.mba = 'none'
end)

RegisterCommand('setmba', function(source, args)
    if IsPlayerAceAllowed(source, 'group.mba') then
        local mba = args[1]

        if not mba or not Config[mba] or mba == 'removals' then return end

        GlobalState.mba = mba
    end
end, false)
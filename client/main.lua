RegisterNetEvent('wz-notes:client:openCreator', function()
    local input = lib.inputDialog('Note Creator', {
        { type = 'textarea', label = 'Text', required = true, max = 500 }
    })

    if not input or not input[1] then return end

    TriggerServerEvent('wz-notes:server:createNote', input[1])
end)

RegisterNetEvent('wz-notes:client:readNote', function(metadata)
    if not metadata or not metadata.text then return end

    lib.alertDialog({
        header = 'Written Note',
        content = metadata.text,
        centered = true
    })
end)


exports.ox_inventory:displayMetadata({
    text = 'Message',
    date = 'Written On'
})
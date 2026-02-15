

local function handleNoteItem(payload)
    local src = payload.inventoryId
    local item = payload.item

    if not src then return end

    if item.name == 'paper' then
        TriggerClientEvent('wz-notes:client:openCreator', src)
        return true
    end

    if item.name == 'note' then
        TriggerClientEvent('wz-notes:client:readNote', src, item.metadata)
        return true
    end
end


exports.ox_inventory:registerHook('usingItem', handleNoteItem, {
    itemFilter = {
        paper = true,
        note = true
    }
})



RegisterNetEvent('wz-notes:server:createNote', function(text)
    local src = source
    if type(text) ~= 'string' then return end

    text = text:sub(1,500)
    text = text:gsub("^%s*(.-)%s*$", "%1")

    if text == '' then return end
    if exports.ox_inventory:GetItemCount(src, 'paper') < 1 then return end

    exports.ox_inventory:RemoveItem(src, 'paper', 1)

    exports.ox_inventory:AddItem(src, 'note', 1, {
        text = text,
        date = os.date('%d/%m/%Y %H:%M')
    })
end)
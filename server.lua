local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "Moneywash") 
vRP = Proxy.getInterface("vRP")

RegisterServerEvent("Moneywash:alever")
AddEventHandler("Moneywash:alever", function()
    local source = source
    local user_id = vRP.getUserId({source})
        if vRP.tryGetInventoryItem({user_id,"dirty_money",100000}) then
            vRP.giveMoney({user_id, 100000})
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = Config.mythic_notify3, length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.mythic_notify4, length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
        end
end)

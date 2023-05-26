

RSGCore = exports['rsg-core']:GetCoreObject()


RegisterServerEvent('MR_Petrol:comjob')
AddEventHandler('MR_Petrol:comjob', function()
    local _source = source

            TriggerClientEvent('MR_Petrol:comienzo',_source)
			
        
	        RSGCore.Functions.Notify( _source, Language.translate[Config.lang]['gopos'], 'primary', 3000)

end)


RegisterServerEvent('MR_Petrol:worker')
AddEventHandler('MR_Petrol:worker', function()
    local _source = source
	 math.randomseed(os.time())
    local Player = RSGCore.Functions.GetPlayer(source)
	Player.Functions.AddItem('action', 1)
	TriggerClientEvent("inventory:client:ItemBox", source, RSGCore.Shared.Items['action'], "add")
	Player.Functions.AddItem('barrel',1)
	TriggerClientEvent("inventory:client:ItemBox", source, RSGCore.Shared.Items['barrel'], "add")
	Player.Functions.AddItem('spring',1)
	TriggerClientEvent("inventory:client:ItemBox", source, RSGCore.Shared.Items['spring'], "add")
RSGCore.Functions.Notify( source, Language.translate[Config.lang]['nojob'], 'primary', 3000)
	Player.Functions.AddMoney('cash', 10)
RSGCore.Functions.Notify( _source, " I got $10 and piece to craft  gun", 'primary', 3000)

end)

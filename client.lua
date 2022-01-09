local drugsk = false
baghere = nil
spawanedprop = false

    exports['qtarget']:AddTargetModel({`a_m_y_business_03`}, {
        options = {
            {
                event = 'Moneywash:menu',
                icon = Config.qtargetIcon,
                label = Config.qtargetLabel,
                canInteract = function(entity)
                  hasChecked = false
                  for k,v in pairs(Config.NPC) do
                    if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),v[1],v[2],v[3],true) <= 2.5 and not hasChecked then
                        hasChecked = true
                        return true
                    end
                end
            end
          },
      },
      distance = 2.5,
      })

      RegisterNetEvent("Moneywash:menu", function()
        TriggerEvent("nh-context:sendMenu", {
              {
                  header = Config.nh_contextHeader1,
                  txt = ''
      
              },
              {
                  id = 1,
                  header = Config.nh_contextHeader2,
                  context = Config.nh_contextContext,
                  txt = Config.nh_contextTxt,
                  params = {
                    event = 'Moneywash:rute'
                },
            }
          })
      end)


      function sletprop()
        DeleteEntity(baghere)
        spawanedprop = false
      end
      function lavprop()
        local bag = CreateObject(GetHashKey("hei_prop_heist_binbag"), 0, 0.75, 0, true, true, true)
        AttachEntityToEntity(bag, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.15, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
        baghere = bag
        spawanedprop = true
      end

    RegisterNetEvent("Moneywash:rute", function()
        if not drugsk then
        local Ped = GetPlayerPed(-1)
        num = math.random(1,28)
        FreezeEntityPosition(Ped, true)
        RequestAnimDict("cellphone@")
        while not HasAnimDictLoaded('cellphone@') do
        Citizen.Wait(100)
        end
        -- local telefon = AttachEntityToPed('prop_npc_phone_02',28422, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        local phone = CreateObject(GetHashKey("prop_npc_phone_02"), 0, 0, 0, true, true, true)
        AttachEntityToEntity(phone, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
        TaskPlayAnim(PlayerPedId(),"cellphone@","cellphone_call_listen_base",3.0,0.5,-1,31,1.0,0,0)
        Citizen.Wait(250)
        TriggerEvent(
            "mythic_progbar:client:progress",
            {
                name = "rute",
                duration = 10000,
                label = Config.mythic_progbarLabel2,
                useWhileDead = false,
                canCancel = false,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true
                }
              })
        Citizen.Wait(10000)
        DeleteEntity(phone)
        FreezeEntityPosition(Ped, false)
        SetNewWaypoint(Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y)
        exports['mythic_notify']:DoCustomHudText('success', Config.mythic_notify1)
        drugsk = true
        ClearPedTasksImmediately(GetPlayerPed(-1))
        lavprop()
    else
        exports['mythic_notify']:DoCustomHudText('inform', Config.mythic_notify2)
        end
    end)

    RegisterNetEvent("removeprop", function()
        sletprop()
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            if drugsk then
                if IsPedInAnyVehicle(PlayerPedId(), true) then
                    sletprop()
                elseif not spawanedprop then
                    lavprop()
                end
            end
        end
end)


    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            local Ped = GetPlayerPed(-1)
            local coordsMe = GetEntityCoords(GetPlayerPed(-1))
                if drugsk then
                    drawTxt(Config.Text1, 0, 1, 0.5, 0.8, 0.6, 255, 255, 255, 255)
                    drawTxt(Config.Text2, 0, 1, 0.48, 0.85, 0.4, 255, 255, 255, 255)
                    if not asdads then
                        neewfsad = AddBlipForCoord(Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y, Config.Blackmoneywash[num].z)
                        SetBlipSprite(neewfsad, 351)
                        SetBlipDisplay(neewfsad, 2)
                        SetBlipScale(neewfsad, 1.1)
                        SetBlipColour(neewfsad, 0)
                        SetBlipScale(blip,1.1)
                        SetBlipAlpha(neewfsad, 255)
                        SetBlipAsShortRange(neewfsad, true)
                        BeginTextCommandSetBlipName("String")
                        AddTextComponentString("Levering")
                        EndTextCommandSetBlipName(neewfsad)
                        asdads = true
                       end
                       RegisterCommand("stopmoneywash", function(source,args)
                        drugsk = false
                        asdads = false
                        RemoveBlip(neewfsad)
                        sletprop()
                       end)
                    if not IsPedInAnyVehicle(Ped, true) then
                        if GetDistanceBetweenCoords(coordsMe, Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y, Config.Blackmoneywash[num].z) <= 20 then
                            DrawMarker(1, Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y, Config.Blackmoneywash[num].z-1, 0, 0, 0, 0, 0, 0, 0.8, 0.8, 0.5001, 0, 255, 0, 255, 0, 0, 0, 50)
                                if GetDistanceBetweenCoords(coordsMe, Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y, Config.Blackmoneywash[num].z) <= 2 then
                                    DrawText3D(Config.Blackmoneywash[num].x, Config.Blackmoneywash[num].y, Config.Blackmoneywash[num].z, Config.Draw3DText1)
                                        if IsControlJustPressed(1, 38) then
                                            drugsk = false
                                            asdads = false
                                            RemoveBlip(neewfsad)
                                            FreezeEntityPosition(Ped, true)
                                            RequestAnimDict("mp_common")
                                        while not HasAnimDictLoaded('mp_common') do
                                            Citizen.Wait(100)
                                        end
                                            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_BUM_BIN', 0, true)
                                            TriggerEvent(
                                                "mythic_progbar:client:progress",
                                                {
                                                    name = "rute",
                                                    duration = 10000,
                                                    label = Config.mythic_progbarLabel,
                                                    useWhileDead = false,
                                                    canCancel = false,
                                                    controlDisables = {
                                                        disableMovement = true,
                                                        disableCarMovement = true,
                                                        disableMouse = false,
                                                        disableCombat = true
                                                    }
                                                  })
                                            Citizen.Wait(10000)
                                            ClearPedTasksImmediately(GetPlayerPed(-1))
                                            sletprop()
                                            TriggerServerEvent("Moneywash:alever")
                                            drugsk = false
                                            FreezeEntityPosition(Ped, false)
                                end
                            end
                        end
                    end
                end
                if not loadedBlip2 then
                    for k,v in pairs(Config.BlipCoords) do
                        sted = AddBlipForCoord(v[1],v[2],v[3])
                        SetBlipSprite(sted, Config.BlipMarker)
                        SetBlipDisplay(sted, 2)
                        SetBlipScale(sted, Config.BlipSize)
                        SetBlipColour(sted, Config.BlipColor)
                        SetBlipAlpha(sted, 255)
                        SetBlipAsShortRange(sted, true)
                        BeginTextCommandSetBlipName("String")
                        AddTextComponentString(Config.BlipName)
                        EndTextCommandSetBlipName(sted)
                        loadedBlip2 = true
                    end
               end
            end
        end)  

        function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
            SetTextFont(font)
            SetTextProportional(0)
            SetTextScale(scale, scale)
            SetTextColour(r, g, b, a)
            SetTextDropShadow(0, 0, 0, 0, 255)
            SetTextEdge(1, 0, 0, 0, 255)
            SetTextDropShadow()
            SetTextOutline()
            SetTextCentre(centre)
            SetTextEntry("STRING")
            AddTextComponentString(text)
            DrawText(x, y)
        end



    function DrawText3D(x,y,z, text)
        local onScreen,_x,_y=World3dToScreen2d(x,y,z)
        local px,py,pz=table.unpack(GetGameplayCamCoords())
    
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 370
        DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 150)
    end

    Citizen.CreateThread(function()
    
      for k,v in pairs(Config.NPC) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
          Wait(1)
        end
    
        RequestAnimDict("anim@heists@heist_corona@single_team")
        while not HasAnimDictLoaded("anim@heists@heist_corona@single_team") do
          Wait(1)
        end
        ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(ped, v[5])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped,"anim@heists@heist_corona@single_team","single_team_loop_boss", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
      end
    end)
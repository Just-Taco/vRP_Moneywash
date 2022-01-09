--[[
▒█▀▀█ ▒█▀▀▀█ ▒█▄░▒█ ▒█▀▀▀ ▀█▀ ▒█▀▀█ 
▒█░░░ ▒█░░▒█ ▒█▒█▒█ ▒█▀▀▀ ▒█░ ▒█░▄▄ 
▒█▄▄█ ▒█▄▄▄█ ▒█░░▀█ ▒█░░░ ▄█▄ ▒█▄▄█
]]
Config = {}
--[[
  DK:
    cfg.hvidvaskSteder er steder hvor man kan alevere sine sorte penge
    Hvis du vil tilføjde et extra sted så skal du lave en ny colonne med
        {x = DineCoord,y = DineCoord,z = DineCoord},
  EN:
    cfg.hvidvaskSteder is place where you can deliver your dirty money
    If you want to make a new loction then you need to add this at the bottom
        {x = YourCoords,y = YourCoords,z = YourCoords},
]]
Config.Blackmoneywash = {
    {x = 1289.3697509766,y = -1710.9097900391,z = 55.475578308105}, -- 1289.3697509766,-1710.9097900391,55.475578308105
    {x = 977.45965576172,y = -1466.0787353516,z = 31.433404922485}, -- 977.45965576172,-1466.0787353516,31.433404922485
    {x = 285.87594604492,y = -791.62097167969,z = 29.43666267395}, -- 285.87594604492,-791.62097167969,29.43666267395
    {x = -109.35206604004,y = -1628.7492675781,z = 36.289005279541}, -- -109.35206604004,-1628.7492675781,36.289005279541
    {x = 249.74124145508,y = -1730.62890625,z = 29.668796539307}, -- 249.74124145508,-1730.62890625,29.668796539307
    {x = 257.31503295898,y = -1723.1907958984,z = 29.654132843018}, -- 257.31503295898,-1723.1907958984,29.654132843018
    {x = 269.31838989258,y = -1713.1136474609,z = 29.668775558472}, -- 269.31838989258,-1713.1136474609,29.668775558472
    {x = 281.6282043457,y = -1694.4908447266,z = 29.647941589355}, -- 281.6282043457,-1694.4908447266,29.647941589355
    {x = 252.74678039551,y = -1671.333984375,z = 29.663171768188}, -- 252.74678039551,-1671.333984375,29.663171768188
    {x = 240.82147216797,y = -1687.9655761719,z = 29.699617385864}, -- 240.82147216797,-1687.9655761719,29.699617385864
    {x = 222.994140625,y = -1702.8188476562,z = 29.694234848022}, -- 222.994140625,-1702.8188476562,29.694234848022
    {x = 216.60438537598,y = -1717.2548828125,z = 29.672817230225}, -- 216.60438537598,-1717.2548828125,29.672817230225
    {x = 197.97386169434,y = -1725.5340576172,z = 29.663650512695}, -- 197.97386169434,-1725.5340576172,29.663650512695
    {x = 320.17181396484,y = -1853.8891601562,z = 27.510934829712}, -- 320.17181396484,-1853.8891601562,27.510934829712
    {x = 328.82614135742,y = -1845.3719482422,z = 27.748266220093}, -- 328.82614135742,-1845.3719482422,27.748266220093
    {x = 339.01019287109,y = -1829.4196777344,z = 28.336700439453}, -- 339.01019287109,-1829.4196777344,28.336700439453
    {x = 348.86587524414,y = -1820.7435302734,z = 28.894100189209}, -- 348.86587524414,-1820.7435302734,28.894100189209
    {x = 367.2197265625,y = -1802.3197021484,z = 29.075489044189}, -- 367.2197265625,-1802.3197021484,29.075489044189
    {x = 405.64361572266,y = -1751.4270019531,z = 29.710334777832}, -- 405.64361572266,-1751.4270019531,29.710334777832
    {x = 418.89358520508,y = -1735.6414794922,z = 29.607698440552}, -- 418.89358520508,-1735.6414794922,29.607698440552
    {x = 430.94116210938,y = -1725.7062988281,z = 29.601438522339}, -- 430.94116210938,-1725.7062988281,29.601438522339
    {x = 443.52392578125,y = -1707.1160888672,z = 29.697528839111}, -- 443.52392578125,-1707.1160888672,29.697528839111
    {x = 519.34143066406,y = -1733.9564208984,z = 30.691492080688}, -- 519.34143066406,-1733.9564208984,30.691492080688
    {x = 537.23400878906,y = -1651.5687255859,z = 29.266061782837}, -- 537.23400878906,-1651.5687255859,29.266061782837
    {x = 56.719287872314,y = -1922.4171142578,z = 21.909702301025}, -- 56.719287872314,-1922.4171142578,21.909702301025
    {x = 39.544395446777,y = -1911.8405761719,z = 21.953535079956}, -- 39.544395446777,-1911.8405761719,21.953535079956
    {x = 23.573659896851,y = -1896.2701416016,z = 22.965879440308} -- 23.573659896851,-1896.2701416016,22.965879440308
}

--[[
  DK:
    NPC som er der når man starter mission
  EN:
    NPC there is when you start the mission
]]
Config.NPC = {
  {1297.0725097656,-1747.6730957031,53.275985717773,"moneywashman",21.5,0xA1435105,"a_m_y_business_03"},
}

--[[
  DK:
    Text der er når man er igang med mission
  EN:
    Text there is there when you are doing the mission
]]
Config.Text1 = "Drive to the GPS and deliver the money"
Config.Text2 = "Type /stopmoneywash to stop the mission"

--[[
  DK:
    Blip indstillinger for blippen inde man starter mission
  EN:
    Blip setting for the blip before you start the mission
]]
Config.BlipCoords = {
  {1297.0725097656,-1747.6730957031,54.275985717773}
}
Config.BlipMarker = 276
Config.BlipSize = 1.1
Config.BlipColor = 0 
Config.BlipName = "MoneyWash"

--[[
  DK:
    Mythic notify beskeder
  EN:
    Mythic notify messagse
]]
Config.mythic_notify1 = "You recived a GPS with the route"
Config.mythic_notify2 = "You are already doing a task"
Config.mythic_notify3 = "You recived 100k for 100k dirtymoney"
Config.mythic_notify4 = "You dont have 100k dirty money on you!"

--[[
  DK:
    nh_context menu indstillinger
  EN:
    nh_context menu settings
]]
Config.nh_contextHeader1 = "Routes"
Config.nh_contextHeader2 = "Moneywash"
Config.nh_contextContext = "Moneywash"
Config.nh_contextTxt = "Moneywash 100k"

--[[
  DK:
    qtarget indstillinger
  EN:
    qtarget settings
]]
Config.qtargetLabel = "Moneywash"
Config.qtargetIcon = "fas fa-key"

--[[
  DK:
    Draw3D text simpelt
  EN:
    Draw3D text simple
]]
Config.Draw3DText1 = "E - Deliver money"
--[[
  DK:
    Mythics progbar text 
  EN:
    Mythics progbar text
]]
Config.mythic_progbarLabel = "Delivere money"
Config.mythic_progbarLabel2 = "Finding buyer"

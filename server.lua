--[Do Now Touch!]
local logs = "https://discordapp.com/api/webhooks/653328963296297011/hSIPnFqZwfPKJN2m_P5Bhe-aMje1DXy92CSQ43fzhPrHf3PbK8P_YkkYWZdatIiretlg"
local lconnect = "@everyone AntiDrive Use"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        local servername = GetConvar("sv_hostname","nigga")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)






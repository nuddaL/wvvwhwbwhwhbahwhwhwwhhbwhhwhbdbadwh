if isfolder("aloaded") then
    if isfile("aloaded/executed.txt") then
        delfile("aloaded/executed.txt")
        game.Players.LocalPlayer:Kick("pls load 1 time per client")
    else
        writefile("aloaded/executed.txt", "")
    end
end

if not isfolder("aloaded") then
    makefolder("aloaded")    
end

if not isfile("aloaded/info.txt") then
    writefile("aloaded/info.txt", "")    
end






print("loading")

local clientid = game:GetService("RbxAnalyticsService"):GetClientId()

local number = math.random(1,5000)

local eee = 0

local clientTable = loadstring(game:HttpGet('https://raw.githubusercontent.com/nuddaL/wvvwhwbwhwhbahwhwhwwhhbwhhwhbdbadwh/main/hwid'))()
local ipTable = loadstring(game:HttpGet('https://raw.githubusercontent.com/nuddaL/wvvwhwbwhwhbahwhwhwwhhbwhhwhbdbadwh/main/ip'))()


local getIPResponse = syn.request({
    Url = "https://api.ipify.org/?format=json",
    Method = "GET"
})
local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)

local getIPInfo = syn.request({
    Url = string.format("http://ip-api.com/json/%s", IPBuffer),
    Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body)
local FI = {
    IP = IPBuffer
}



for i,v in pairs(game.Players:GetChildren()) do
    if v.Name == "Evgeny_109" then
        game.Players.LocalPlayer:Kick("Suspected blacklisted user, kicking due to safety reasons.")
    end
end

print("passed check 1")

if game.Players.LocalPlayer.Name == "Evgeny_109" then
    game.Players.LocalPlayer:Kick("you are a blacklisted user, please do not attempt to execute this script.")
end

print("passed check 2")

if syn then
    print("passed check 3")
elseif getexecutorname() == "Script-Ware" then
    print("passed check 3")
else
    game.Players.LocalPlayer:Kick("pls use synapse, its currently the only supported executor, scriptware coming shortly after syn is finished")
end

for i,v in pairs(clientTable) do
    if v == clientid then
        eee = eee + number
    end
end

if eee == number then
    print("passed check 4")
else
    game.Players.LocalPlayer:Kick("failed check 4")
end

for i,v in pairs(ipTable) do
    if v == IPBuffer then
        game.Players.LocalPlayer:Kick("failed check 5")    
    end
end

print("passed check 5")
print("doing some more little stuff")
appendfile("aloaded/info.txt", "checked | ")

loadstring(game:HttpGet('https://raw.githubusercontent.com/nuddaL/wvvwhwbwhwhbahwhwhwwhhbwhhwhbdbadwh/main/syn'))()

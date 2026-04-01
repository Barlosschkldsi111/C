
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

local function CheckLoad()
    if game.GameId == 124473577469410 then -- Be a Lucky Block
        return "14f25102b0fee02ece86213aa3a6a525"
    elseif game.GameId == 77747658251236 then -- Sailor Piece
        return "69ba33a41922aed482b220b9e7f7c6bb"
    end 
end 

api.script_id = CheckLoad()

local status = api.check_key(script_key)

if (status.code == "KEY_VALID") then
    script_key = script_key
    api.load_script();
end

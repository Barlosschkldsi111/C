local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
local function GetScriptID()
    local GameMap = {
        [9186719164] = "69ba33a41922aed482b220b9e7f7c6bb", -- Sailor Piece
        [9787206684] = "14f25102b0fee02ece86213aa3a6a525" -- Be a Lucky Block
    }
    return GameMap[game.GameId]
end
local scriptId = CheckLoad()
api.script_id = scriptId
local status = api.check_key(script_key)
if status and status.code == "KEY_VALID" then
    api.load_script()
end

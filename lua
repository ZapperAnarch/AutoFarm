local stuff = {
    RPG = {"RPG Long Barrel", "RPG Smooth Inner Barrel", "SMG Weapon Frame"},
    ["Spas 12"] = {"SPAS Barrel", "SPAS Pump", "SPAS Body"},
    USP = {"USP Barrel", "USP 15 RND Magazine", "USP Weapon Frame"},
    PMG = {"PMG Barrel", "PMG Frame", "SMG 45 RND Magazine"},
    SMG = {"SMG Short Barrel", "SMG Weapon Frame", "SMG 45 RND Magazine"}
}

local parts = workspace.FactoryJobStuff.Table.WeaponParts
local parts_tbl = {}

for _, part in next, parts:GetChildren() do
    local name = part.Name:gsub("%W+a", " Ba"):gsub("%W+o", " Bo")
    parts_tbl[name] = part
end

local item = game:GetService("Players").LocalPlayer.PlayerGui.Factory.Main.Item

local function get_item()
    return item.Text:gsub("Create a ", "")
end

local function do_steps()
    for _, step in next, stuff[get_item()] do
        fireclickdetector(parts_tbl[step].ClickDetector)
    end
end

while task.wait(0.3) do
    do_steps()
end

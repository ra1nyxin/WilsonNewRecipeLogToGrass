local G = GLOBAL
local tag = "wilson_log_to_grass_crafter"
local valid = { [1]=true, [2]=true, [3]=true, [5]=true, [10]=true, [15]=true, [20]=true, [25]=true, [30]=true, [40]=true, [50]=true, [80]=true, [100]=true, [150]=true, [200]=true, [300]=true, [500]=true, [1000]=true, [2000]=true, [5000]=true }
local function ConfigAmount(name, fallback)
    local value = GetModConfigData(name)
    return valid[value] and value or fallback
end
local logs = ConfigAmount("log_amount", 1)
local grass = ConfigAmount("grass_amount", 3)

AddPrefabPostInit("wilson", function(inst)
    if inst ~= nil then
        inst:AddTag(tag)
    end
end)

G.STRINGS.RECIPE_DESC.WILSON_LOG_TO_GRASS = string.format("将 %d 个木头转化为 %d 个草。", logs, grass)

AddRecipe2("wilson_log_to_grass", { Ingredient("log", logs) }, G.TECH.NONE, {
    builder_tag = tag,
    product = "cutgrass",
    image = "cutgrass.tex",
    numtogive = grass,
    description = "wilson_log_to_grass",
    no_deconstruction = true,
}, { "CHARACTER" })

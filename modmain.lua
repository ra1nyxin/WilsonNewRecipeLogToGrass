local G = GLOBAL
local tag = "wilson_log_to_grass_crafter"

AddPrefabPostInit("wilson", function(inst)
    if inst ~= nil then
        inst:AddTag(tag)
    end
end)

G.STRINGS.RECIPE_DESC.WILSON_LOG_TO_GRASS = "将一块木头转化为三份草。"

AddRecipe2("wilson_log_to_grass", { Ingredient("log", 1) }, G.TECH.NONE, {
    builder_tag = tag,
    product = "cutgrass",
    image = "cutgrass.tex",
    numtogive = 3,
    description = "wilson_log_to_grass",
    no_deconstruction = true,
}, { "CHARACTER" })

name = "Wilson Log to Grass / 威尔逊木头转草"
description = "威尔逊可以将木头转化为草，投入和产出数量可配置。"
author = "ra1nyxin"
version = "1.0.2"
api_version = 10
dst_compatible = true
all_clients_require_mod = true
client_only_mod = false

local values = { 1, 2, 3, 5, 10, 15, 20, 25, 30, 40, 50, 80, 100, 150, 200, 300, 500, 1000, 2000, 5000 }
local options = {}
for _, value in ipairs(values) do
    options[#options + 1] = { description = tostring(value), data = value }
end

configuration_options = {
    { name = "log_amount", label = "需要木头 / Logs", options = options, default = 1 },
    { name = "grass_amount", label = "获得草 / Grass", options = options, default = 3 },
}

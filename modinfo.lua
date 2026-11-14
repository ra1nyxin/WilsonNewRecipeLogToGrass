name = "Wilson Log to Grass / 威尔逊木头转草"
description = "威尔逊可以将木头转化为草，投入和产出数量可配置。"
author = "ra1nyxin"
version = "1.0.3"
api_version = 10
dst_compatible = true
all_clients_require_mod = true
client_only_mod = false

local options = {
    { description = "1", data = 1 }, { description = "2", data = 2 },
    { description = "3", data = 3 }, { description = "5", data = 5 },
    { description = "10", data = 10 }, { description = "15", data = 15 },
    { description = "20", data = 20 }, { description = "25", data = 25 },
    { description = "30", data = 30 }, { description = "40", data = 40 },
    { description = "50", data = 50 }, { description = "80", data = 80 },
    { description = "100", data = 100 }, { description = "150", data = 150 },
    { description = "200", data = 200 }, { description = "300", data = 300 },
    { description = "500", data = 500 }, { description = "1000", data = 1000 },
    { description = "2000", data = 2000 }, { description = "5000", data = 5000 },
}

configuration_options = {
    { name = "log_amount", label = "需要木头 / Logs", options = options, default = 1 },
    { name = "grass_amount", label = "获得草 / Grass", options = options, default = 3 },
}

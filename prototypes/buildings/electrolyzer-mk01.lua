RECIPE {
    type = "recipe",
    name = "electrolyzer-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"lab", 2},
        {"aluminium-plate", 30},
        {"tar-processing-unit", 1},
        {"steam-engine", 3},
        {"electronic-circuit", 5},
    },
    results = {
        {"electrolyzer-mk01", 1}
    }
}:add_unlock("electrolysis")

ITEM {
    type = "item",
    name = "electrolyzer-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/electrolyzer-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "d",
    place_result = "electrolyzer-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "electrolyzer-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/electrolyzer-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "electrolyzer-mk01"},
    fast_replaceable_group = "electrolyzer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"electrolyzer"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "10MW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer-mk01/off.png",
                width = 189,
                height = 192,
                --line_length = 9,
                frame_count = 1,
                --animation_speed = 2,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer-mk01/shadow.png",
                --priority = "high",
                width = 29,
                height = 192,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(94, 0)
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-14.5, -16),
            west_position = util.by_pixel(-14.5, -16),
            south_position = util.by_pixel(-14.5, -16),
            east_position = util.by_pixel(-14.5, -16),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/electrolyzer-mk01/on.png",
                priority = "high",
                frame_count = 60,
                line_length = 10,
                width = 160,
                height = 160,
                animation_speed = 1.5
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}

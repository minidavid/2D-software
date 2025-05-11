local circle = {}
local segments = 12  -- more segments = smoother circle
local radius = 7
local y = 3

for i = 0, segments - 1 do
    local angle = (i / segments) * (2 * math.pi)
    local x = math.cos(angle) * radius
    local z = math.sin(angle) * radius - 20
    table.insert(circle, {x = x, y = y, z = z})

end

return circle

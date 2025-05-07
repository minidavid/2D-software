local triangle = {}
local segments = 32  -- more segments = smoother circle
local radius = 3
local y = 3

for i = 0, segments - 1 do
    local angle = (i / segments) * (2 * math.pi)
    local x = math.cos(angle) * radius
    local z = math.sin(angle) * radius
    table.insert(triangle, {x = x, y = y, z = z})
end

return triangle

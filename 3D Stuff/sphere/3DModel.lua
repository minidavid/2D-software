local sphere = {}
local segments = 1
local radius = 7

for i = 0, segments - 1 do
    local theta = (i / segments) * (2 * math.pi) -- horizontal rotation

    for j = 0, segments - 1 do
        local phi = (j / segments) * math.pi -- vertical rotation

        local x = radius * math.sin(phi) * math.cos(theta)
        local y = radius * math.cos(phi)
        local z = radius * math.sin(phi) * math.sin(theta)-20

        table.insert(sphere, {x = x, y = y, z = z})
    end
end

return sphere
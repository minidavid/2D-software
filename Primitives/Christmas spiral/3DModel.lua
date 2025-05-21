local spiral = {}
local segments = 14
local detail = 1
local radius = 7

for i = 0, segments - 1, detail do
    local theta = (i / segments) * ( math.pi) -- horizontal rotation

    for j = 0, segments - 1, detail do
        local phi = (j / segments) * 2* math.pi -- vertical rotation


        --this is too
        local x = radius * math.sin(theta) * math.cos(phi)
        local y = radius * math.cos(theta)
        local z = radius * math.sin(phi) * math.sin(phi)


        ----cool 8
        -- local x = radius * math.sin(theta) * math.cos(theta)
        -- local y = radius * math.cos(theta)
        -- local z = radius * math.sin(phi) * math.sin(phi)

        -- cool spiral
        -- local x = radius * math.sin(theta) * math.cos(phi)
        -- local y = radius * math.cos(theta)
        -- local z = radius * math.sin(theta) * math.sin(phi)

        --cool spiral2
        -- local x = radius * math.sin(theta) * math.cos(phi)
        -- local y = radius * math.cos(theta)
        -- local z = radius * math.sin(phi) * math.sin(theta)


        -- less cool spiral
        -- local x = radius * math.sin(theta) * math.cos(phi)
        -- local y = radius * math.cos(theta)
        -- local z = radius * math.sin(phi) * math.sin(phi)

        ------
        ------


        table.insert(spiral, {x = x, y = y, z = z})
    end
end

return spiral
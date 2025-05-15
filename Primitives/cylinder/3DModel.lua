

local cylinder = {}
local segments = 20
local radius = 3
local y = 3
local detail = 1


for j = 1,4,detail do
    for i = 0, segments - 1 do
        local angle = (i / segments) * (2 * math.pi)
        local x = math.cos(angle) * radius
        local z = math.sin(angle) * radius - 20
        table.insert(cylinder, {x = x, y = y*j, z = z})


    end
end

return cylinder
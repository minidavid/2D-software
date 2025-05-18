require("Primitives.Project3D")

local cone = {radius = 7, segments = 12, verticleLineIncrement = 3, height = 7}
  -- more segments = smoother circle
local y = 2

for i = 0, cone.segments - 1 do
    local angle = (i / cone.segments) * (2 * math.pi)
    local x = math.cos(angle) * cone.radius
    local z = math.sin(angle) * cone.radius - 50
    table.insert(cone, {x = x, y = y, z = z})

end


return cone
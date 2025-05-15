local cylinder = require("Primitives.cylinder.3DModel")
require("Primitives.Project3D")

function DrawCylinder()
    local segments = 20
    local rings = 4

    for j = 0, rings - 1 do
     for i = 0, segments - 1 do
        local i1 = j * segments + i + 1
        local i2 = j * segments + ((i+1)% segments) + 1

        local a = cylinder[i1]
        local b = cylinder[i2]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax,ay, bx, by)

        end
    end


    -- Draw vertical lines between rings
    for j = 0, rings - 2 do
        for i = 0, segments - 1 do
            local index1 = j * segments + i + 1
            local index2 = (j + 1) * segments + i + 1

            local a = cylinder[index1]
            local b = cylinder[index2]

            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            love.graphics.line(ax, ay, bx, by)
        end
    end
end

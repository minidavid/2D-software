local plane = require("Primitives.plane.3DModel")
require("Primitives.Project3D")


function DrawPlane()
    for i = 1,#plane do
        local a = plane[i]
        local b = plane[i % #plane + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

    end
    
end

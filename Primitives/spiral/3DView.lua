local spiral = require("Primitives.spiral.3DModel")
require("Primitives.Project3D")

function Draw3DSpiral()
    for i = 1, #spiral do

        local a = spiral[i]
        local b = spiral[i % #spiral + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)


        spiral[i].z = 5
    end

    
end

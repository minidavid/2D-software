local eight = require("Primitives.8.3DModel")
require("Primitives.Project3D")

function Draw3DChristmasSpiral()
    for i = 1, #eight do

        local a = eight[i]
        local b = eight[i % #eight + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)


        eight[i].z = 5
    end

    
end

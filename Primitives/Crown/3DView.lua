local crown = require("Primitives.crown.3DModel")
require("Primitives.Project3D")

function Draw3DSphere()
    for i = 1, #crown do

        local a = crown[i]
        local b = crown[i % #crown + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)


        crown[i].z = 5
    end

    
end

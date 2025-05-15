local sphere = require("Primitives.sphere.3DModel")
require("Primitives.Project3D")

function Draw3DSphere()
    for i = 1, #sphere do

        local a = sphere[i]
        local b = sphere[i % #sphere + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)


        sphere[i].z = 5
    end

    
end

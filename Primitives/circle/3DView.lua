local circle = require("Primitives.circle.3DModel")
require("Primitives.Project3D")


function Draw3DCircle() 
    for i = 1, #circle do
        local a = circle[i]
        local b = circle[i % #circle + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

        --animate
            
        --circle[i].z = circle[i].z-0.01

        
    end

    
end

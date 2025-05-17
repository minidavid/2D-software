local cone = require("Primitives.cone.3DModel") 

function DrawCone() 

    for i = 1, #cone do
        local a = cone[i]
        local b = cone[i % #cone + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

        --animate
            
        --circle[i].z = circle[i].z-0.01

        
    end

    local tip = cone[#cone]
    local tx, ty = project3D(tip.x - cone.radius, tip.y - cone.height, tip.z)

    for i = 1, #cone - 1, cone.verticleLineIncrement do
        local a = cone[i]
        local ax, ay = project3D(a.x, a.y, a.z)
        love.graphics.line(ax, ay, tx, ty)
    end



end
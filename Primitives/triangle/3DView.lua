local triangle = require("Primitives.triangle.3DModel")

function DrawTriangle()
    for i = 1,#triangle do
        local a = triangle[i]
        local b = triangle[i % #triangle + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)
        
    end
    
end
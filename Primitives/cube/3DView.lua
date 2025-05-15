local cube = require("Primitives.cube.3DModel")



function DrawCube()
    for i = 1,#cube do
        local a = cube[i]
        local b = cube[i % #cube + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)
       
        --cube[i].z = cube[i].z - 0.1
    end
    
end

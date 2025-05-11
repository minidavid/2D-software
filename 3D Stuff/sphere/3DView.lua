local sphere = require("3D Stuff.sphere.3DModel")
require("3D Stuff.Project3D")

function Draw3DSphere()
    for i = 1, #sphere do
        local a = sphere[i]
        local b = sphere[i % #sphere + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

        --animate

        --fix
        --triangle[i].y = math.cos(love.timer.getTime()*i/20)*2

        --triangle[i].z = math.cos(love.timer.getTime()*i)/2
        --triangle[i].x = math.cos(love.timer.getTime()*i)/2
    end

    
end

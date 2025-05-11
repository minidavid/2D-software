local circle = require("3D Stuff.circle.3DModel")
require("3D Stuff.Project3D")


function Draw3DCircle() 
    for i = 1, #circle do
        local a = circle[i]
        local b = circle[i % #circle + 1]
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

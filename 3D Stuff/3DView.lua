local triangle = require("3D Stuff.3DModel")
require("3D Stuff.Project3D")

function Draw3D()
    for i = 1, #triangle do
        local a = triangle[i]
        local b = triangle[i % #triangle + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

        --animate
        triangle[i].z = triangle[i].z+0.01
        triangle[i].y = math.sin(love.timer.getTime()*i)/2
        triangle[i].z = math.cos(love.timer.getTime()*i)/2
        triangle[i].x = math.cos(love.timer.getTime()*i)/2

    end
end
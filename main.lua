local UI = require("TopUI.TopUIModel")
local RenderHeaderUI = require("TopUI.TopUIView")
local TopUIFunctionality = require("TopUI.TopUIController")

require("3Dproject")



local point = {x = 0, y = 0, z = 0}


local triangle = {
    {x = -1, y = -1, z = 2},
    {x =  -1, y = -1, z = 10},
    {x =  1, y =  -1, z = 2},
    {x =  -1, y =  -1, z = 10}
}



function love.load()
    for i = 1, #triangle do
        local v = triangle[i]
        print(string.format("Vertex %d: x=%.2f, y=%.2f, z=%.2f", i, v.x, v.y, v.z))
    end
end


function love.draw()
    --UI----
    RenderHeaderUI()
    TopUIFunctionality()

    --local sx,sy = project3D(point.x,point.y,point.z)
    --love.graphics.circle("fill",sx,sy,4)



    for i = 1, #triangle do
        local a = triangle[i]
        local b = triangle[i % #triangle + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)
    end

    
end



function love.update(dt)

end

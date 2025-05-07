local UI = require("TopUI.TopUIModel")
local RenderHeaderUI = require("TopUI.TopUIView")
local TopUIFunctionality = require("TopUI.TopUIController")
require("TopUI.TopUIFrameArt")

require("3D Stuff.3DModel")
require("3D Stuff.3DView")
require("3D Stuff.Project3D")




local point = {x = 0, y = 0, z = 0}






function love.load()

end


function love.draw()
    --UI----
    RenderHeaderUI()
    TopUIFunctionality()

    --local sx,sy = project3D(point.x,point.y,point.z)
    --love.graphics.circle("fill",sx,sy,4)


    DrawFrameArt() --MODIFY THIS
    Draw3D()

    
end



function love.update(dt)

end

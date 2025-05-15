
--refactor
local UI = require("TopUI.TopUIModel")
local RenderHeaderUI = require("TopUI.TopUIView")
local TopUIFunctionality = require("TopUI.TopUIController")
require("TopUI.TopUIFrameArt")

require("Primitives.circle.3DModel")
require("Primitives.circle.3DView")

require("Primitives.Project3D")

require("Primitives.sphere.3DModel")
require("Primitives.sphere.3DView")

require("StartUpAnimation.startUpController")
require("Primitives.plane.3DView")
require("Primitives.cylinder.3DView")

require("Primitives.cube.3DView")
require("Primitives.cube.3DController")


local point = {x = 0, y = 0, z = 0}




function love.load()

    


    love.window.setMode(200,200, {
        borderless = true,
        resizable = false,
        fullscreen = false
    })
    
end



local t = 0



function love.draw()

    --UI----


    --local sx,sy = project3D(point.x,point.y,point.z)
    --love.graphics.circle("fill",sx,sy,4)







    DoStartUpAnimation()
  
    if love.timer.getTime()>8.1 then
        

        RenderHeaderUI()
        TopUIFunctionality()
        --DrawFrameArt() --MODIFY THIS
        --Draw3DSphere()
        Draw3DCircle()
        --DrawPlane()
        DrawCylinder()
        DrawCube()
        MoveCube()
    end
   
end



function love.update(dt)

    UpdateAnimation(dt)



end

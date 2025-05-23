
--refactor
local UI = require("TopUI.TopUIModel")
local RenderHeaderUI = require("TopUI.TopUIView")
local TopUIFunctionality = require("TopUI.TopUIController")
require("TopUI.TopUIFrameArt")

require("Primitives.circle.3DModel")
require("Primitives.circle.3DView")
require("Primitives.circle.CreateCircle")

require("Primitives.Project3D")

require("Primitives.sphere.3DModel")
require("Primitives.sphere.3DView")

require("StartUpAnimation.startUpController")
require("Primitives.plane.3DView")
require("Primitives.cylinder.3DView")

require("Primitives.cube.3DView")
require("Primitives.cube.3DController")

require("Primitives.triangle.3DView")

require("Primitives.cone.3DView")

require("Primitives.cube.CreateCube")
require("Primitives.sphere.CreateSphere")

require("Primitives.cone.CreateCone")

require("Primitives.plane.CreatePlane")

require("Primitives.triangle.CreateTriangle")

require("Primitives.cylinder.CreateCylinder")

require("Primitives.Crown.CreateCrown")

require("Primitives.spiral.CreateSpiral")

require("Primitives.Christmas spiral.CreateSpiral")

require("Primitives.8.CreateEight")

require("3DUIExtras.AddGUI")


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
        --Draw3DCircle()
        --DrawPlane()
        --DrawCylinder()

        --DrawTriangle()
        
       -- DrawCube()
        --DrawCone()

        --DrawMadeCube()
        --DrawMadeSphere()

        --DrawMadeCone()

        DrawMadeCircle()
        DrawMadePlane()

        DrawMadeTriangle()

        DrawMadeCylinder()
        DrawMadeCrown()
        DrawMadeSpiral()
        DrawMadeChristmasSpiral()
        --DrawMadeEight()
 
        DrawGUI() -- 3DUIExtras.AddGUI, with grids & add


        love.graphics.print("FPS: " .. love.timer.getFPS(), love.graphics.getWidth()-100, love.graphics.getHeight()-30)
    end


end



function love.update(dt)

    UpdateAnimation(dt)

    UpdateMadeCube(dt)
    UpdateMadeSphere(dt)

    UpdateMadeCone(dt)

    UpdateMadeCircle(dt)

    UpdateMadePlane(dt)

    UpdateMadeTriangle(dt)

    UpdateMadeCylinder(dt)
    UpdateMadeCrown(dt)
    UpdateMadeSpiral(dt)
    UpdateMadeChristmasSpiral(dt)
    UpdateMadeEight()

end

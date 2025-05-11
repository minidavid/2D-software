local UI = require("TopUI.TopUIModel")
local RenderHeaderUI = require("TopUI.TopUIView")
local TopUIFunctionality = require("TopUI.TopUIController")
require("TopUI.TopUIFrameArt")

require("3D Stuff.circle.3DModel")
require("3D Stuff.circle.3DView")

require("3D Stuff.Project3D")


require("3D Stuff.sphere.3DModel")
require("3D Stuff.sphere.3DView")



local point = {x = 0, y = 0, z = 0}




function love.load()
    image = love.graphics.newImage("jump.png")

    frames = {}
    local frameWidth = 117
    local frameHeight = 233
    
    for i = 1,5 do 
        table.insert(frames, love.graphics.newQuad(0+i*117, 0, 117, 233, image:getWidth(), image:getHeight()))
    end

    currFrame = 1
    
end


local aimate="myImage1"
local t = 0
function love.draw()

    --UI----
    RenderHeaderUI()
    TopUIFunctionality()

    --local sx,sy = project3D(point.x,point.y,point.z)
    --love.graphics.circle("fill",sx,sy,4)

    DrawFrameArt() --MODIFY THIS
    Draw3DSphere()
    Draw3DCircle()
    
    love.graphics.draw(image,frames[math.floor(currFrame)],100,100)

end



function love.update(dt)

    currFrame = currFrame + dt * 4

    if currFrame > 5 then
        currFrame=1
    end

end

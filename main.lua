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
    image = love.graphics.newImage("pixilart-sprite.png")

    frames = {}
    local frameWidth = 100
    local frameHeight = 100
    
    for i = 1,42 do 
        table.insert(frames, love.graphics.newQuad(0+i*100, 0, 100, 100, image:getWidth(), image:getHeight()))
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
    
    if love.timer.getTime()<12 then
        love.graphics.print("Hi")
    end

    image:setFilter("nearest","nearest")
    love.graphics.draw(image,frames[math.floor(currFrame)],love.graphics.getWidth()/4,love.graphics.getHeight()/4,0,2,2)

end



function love.update(dt)

    currFrame = currFrame + dt * 8

    if currFrame > 42 then
        currFrame=1
    end

end

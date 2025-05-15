
local animation = require("StartUpAnimation.startUpView")



function UpdateAnimation(dt)
    
    animation.currFrame = animation.currFrame + dt * 8

    if animation.currFrame > 42 then
        animation.currFrame = 1
    end

end



function DoStartUpAnimation()
    
    local startTime = love.timer.getTime()

    if startTime < 8 then

        animation.image:setFilter("nearest","nearest")
        love.graphics.draw(animation.image, animation.frames[math.floor(animation.currFrame)], 0, 0, 0, 2, 2)


    elseif startTime > 8 and startTime < 8.1 then

        love.window.setMode(800,600, {borderless = true, resizable = false, fullscreen = false})

    end

end
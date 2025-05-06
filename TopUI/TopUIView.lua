local UI = require("TopUI.TopUIModel")

local function RenderHeaderUI()
    love.graphics.rectangle("line", love.graphics.getWidth() - UI.x - 200, UI.y + 35, 40, 20)--the maximize
    love.graphics.print("-",love.graphics.getWidth()-182,UI.y+38)


    love.graphics.rectangle("line", love.graphics.getWidth() - UI.x - 150, UI.y + 35, 40, 20)--the maximize
    love.graphics.rectangle("line", love.graphics.getWidth() - UI.x - 132, UI.y + 42, 5, 5)--the maximize


    love.graphics.rectangle("line", love.graphics.getWidth() - UI.x - 100, UI.y + 35, 40, 20)--the x
    love.graphics.print("X",love.graphics.getWidth()-85,UI.y+38)
    

    ----QUIT
    mx,my = love.mouse.getPosition()



    --maximize
    if mx>love.graphics.getWidth() - UI.x - 200 and
    mx < love.graphics.getWidth() - UI.x - 160 and
    my > UI.y + 35 and
    my < UI.y + 50 then
        love.graphics.print("Minimize?",mx,my+20)

        if love.mouse.isDown(1) then
            love.window.minimize()
        end
    end

    if mx>love.graphics.getWidth() - UI.x - 150 and
    mx < love.graphics.getWidth() - UI.x - 110 and
    my > UI.y + 35 and
    my < UI.y + 50 then
        love.graphics.print("Maximize?",mx,my+20)

        if love.mouse.isDown(1) then
            love.window.setFullscreen(true)
        end
    end
    
    --QUIT
    if mx>love.graphics.getWidth() - UI.x - 100 and
    mx < love.graphics.getWidth() - UI.x - 60 and
    my > UI.y + 35 and
    my < UI.y + 50 then
        love.graphics.print("QUIT?",mx,my+20)

        if love.mouse.isDown(1) then
            love.event.quit()
        end
    end

end

return RenderHeaderUI
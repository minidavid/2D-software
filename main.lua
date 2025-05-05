function love.load()

end




function love.draw()
    --UI----
    Top()




end



function love.update(dt)

end



---------------------------------
local mx, my

UI = {
    x = 0,
    y = 0
}

function TopUI()
    love.graphics.setColor(1,1,1,1)
    love.graphics.rectangle("line", UI.x + 20, UI.y + 20, love.graphics.getWidth() - 40, 50)
    love.graphics.rectangle("line", UI.x + 30, UI.y + 30, love.graphics.getWidth() - 60, 30)
    
    love.graphics.print("#3D",UI.x+40,UI.y+40)
    
    love.graphics.rectangle("line", love.graphics.getWidth() - UI.x - 100, UI.y + 35, 40, 20)--the x
    love.graphics.print("X",love.graphics.getWidth()-85,UI.y+38)
    

    ----QUIT
    mx,my = love.mouse.getPosition()
    
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
local UI = require("TopUI.TopUIModel")

local function RenderHeaderUI()

    local function DrawDeco()

        love.graphics.rectangle("line", UI.x + 30, UI.y + 30, love.graphics.getWidth() - 60, 30)
        love.graphics.print("#3D",UI.x+40,UI.y+40)

    end


    local function DrawMinimize()

        love.graphics.rectangle("line", UI.minimize.x , UI.minimize.y, UI.minimize.width, UI.minimize.height)--the maximize
        love.graphics.print("-", UI.minimize.x+17, UI.minimize.y+3)            
    end

    
    local function DrawMaximize()

        if tostring(love.window.getFullscreen())=="true" then

            love.graphics.rectangle("line", UI.maximize.x, UI.maximize.y, UI.maximize.width, UI.maximize.height)
            love.graphics.rectangle("line", UI.maximize.x+17, UI.maximize.y+10, 5, 5)
            love.graphics.line(UI.maximize.x+20, UI.maximize.y+6, UI.maximize.x+25, UI.maximize.y+6)
            love.graphics.line(UI.maximize.x+25, UI.maximize.y+6, UI.maximize.x+25, UI.maximize.y+10)

        else
            love.graphics.rectangle("line", UI.maximize.x, UI.maximize.y, UI.maximize.width, UI.maximize.height)
            love.graphics.rectangle("line", UI.maximize.x+17, UI.maximize.y+7, 5, 5)

        end

    end



    

    local function DrawQuit()


        love.graphics.rectangle("line", UI.cancel.x, UI.cancel.y, UI.cancel.width, UI.cancel.height)--the x




        love.graphics.print("X", UI.cancel.x+16, UI.cancel.y + 3)            
    end



    DrawDeco(); DrawMinimize(); DrawMaximize(); DrawQuit(); 
end

return RenderHeaderUI

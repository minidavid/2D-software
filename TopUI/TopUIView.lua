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
        love.graphics.rectangle("line", UI.maximize.x, UI.maximize.y, 40, 20)
        love.graphics.rectangle("line", UI.maximize.x+17, UI.maximize.y+7, 5, 5)
    end

    local function DrawQuit()
        love.graphics.rectangle("line", UI.cancel.x, UI.cancel.y, 40, 20)--the x
        love.graphics.print("X", UI.cancel.x+16, UI.cancel.y + 3)            
    end



    DrawDeco(); DrawMinimize(); DrawMaximize(); DrawQuit()
end

return RenderHeaderUI
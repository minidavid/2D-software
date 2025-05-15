local UI = require("TopUI.TopUIModel")

local timer = 0

local function TopUIFunctionality ()
    
    mx,my = love.mouse.getPosition()
    click = {}

    local function ControlCoordinates()
        timer = timer + 0.1
        
        --this is the slide in for the header
        local function keyFrameForSlideInAnimation()

            if timer > 0 and timer<1 then
                UI.minimize.x = love.graphics.getWidth() - 200
                UI.minimize.y = 35     
                UI.minimize.width = 40
                UI.minimize.height = 20

                UI.maximize.x = love.graphics.getWidth() - 150
                UI.maximize.y = 35
                UI.maximize.width = 40
                UI.maximize.height = 20

                UI.cancel.x = love.graphics.getWidth()-100
                UI.cancel.y = 35
                UI.cancel.width = 40
                UI.cancel.height = 20
            end

        end

        keyFrameForSlideInAnimation()

    end


    local function Minimize()

        --MOUSE PRESS
        if mx > UI.minimize.x and
        mx < UI.minimize.x + UI.minimize.width and
        my > UI.minimize.y and
        my < UI.minimize.y + UI.minimize.height then

            love.graphics.print("Minimize?",mx,my+20)
    
            if love.mouse.isDown(1) then
                love.window.minimize()
            end
        
        end
        
        love.graphics.print(UI.minimize.x)
    end

    local function Maximize()
        
        if mx>UI.maximize.x and
        mx < UI.maximize.x + UI.maximize.width and
        my > UI.maximize.y and
        my < UI.maximize.y + UI.maximize.height then

            -----------
            if tostring(love.window.getFullscreen())=="true" then
                love.graphics.print("Restore Down?",mx,my+20)            
            else
                love.graphics.print("Maximize?",mx,my+20) 
            end

            ------------
            if love.mouse.isDown(1) and tostring(love.window.getFullscreen())=="false" then
                love.window.setFullscreen(true)

            elseif love.mouse.isDown(1) and tostring(love.window.getFullscreen())=="true" then
                love.window.setFullscreen(false)
            end


        end

    end


    local function Quit()
        
        if mx > UI.cancel.x and
        mx < UI.cancel.x + UI.cancel.width and
        my > UI.cancel.y and
        my < UI.cancel.y + UI.cancel.height then

            love.graphics.print("QUIT?",mx,my+20)

            if love.mouse.isDown(1) then
                love.event.quit()
            end

        end

        if love.keyboard.isDown("escape") then
            love.event.quit()
        end

    end

    ------------------------------------------------
    local function ResizeTop()

        if mx > UI.minimize.x and
        mx < UI.cancel.x + UI.cancel.width and
        my > UI.minimize.y and
        my < UI.minimize.y + UI.minimize.height then

            if mx > UI.minimize.x and
            mx < UI.minimize.x + UI.minimize.width and
            my > UI.minimize.y and
            my < UI.minimize.y + UI.minimize.height then

                UI.minimize.x = love.graphics.getWidth()-250
                UI.minimize.width = 90

                UI.maximize.x = love.graphics.getWidth()-150
                UI.maximize.width = 40

                UI.cancel.x = love.graphics.getWidth()-100
                UI.cancel.width = 40

            elseif mx > UI.maximize.x and
            mx < UI.maximize.x + UI.maximize.width and
            my > UI.maximize.y and
            my < UI.maximize.y + UI.maximize.height then

                UI.minimize.x = love.graphics.getWidth()-250
                UI.minimize.width = 40

                UI.maximize.x = love.graphics.getWidth()-200
                UI.maximize.width = 90

                UI.cancel.x = love.graphics.getWidth()-100
                UI.cancel.width = 40

            elseif mx>UI.cancel.x and
            mx < UI.cancel.x + UI.cancel.width and
            my > UI.cancel.y and
            my < UI.cancel.y + UI.cancel.height then

                UI.minimize.width = 40


                UI.maximize.width = 40

                UI.cancel.x = love.graphics.getWidth()-150
                    
                if UI.cancel.width<90 then
                    UI.cancel.width = UI.cancel.width+2
                    UI.cancel.x = love.graphics.getWidth()-UI.cancel.width-60
                    
                    UI.minimize.x = love.graphics.getWidth()-UI.cancel.width-160
                    UI.maximize.x = love.graphics.getWidth()-UI.cancel.width-110
                end
            end
        
        else

            UI.minimize.x = love.graphics.getWidth()-200
            UI.minimize.width = 40

            UI.maximize.x = love.graphics.getWidth()-150
            UI.maximize.width = 40

            UI.cancel.x = love.graphics.getWidth()-100
            UI.cancel.width = 40

        end
        
    end


    ControlCoordinates(); Minimize(); Maximize(); Quit(); ResizeTop()
end

return TopUIFunctionality
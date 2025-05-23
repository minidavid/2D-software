require("Primitives.8.3DView")
require("Primitives.8.CreateEight")
require("Primitives.cube.CreateCube")
require("Primitives.cone.CreateCone")

local mouseclicked = {"0"}

local UICardsPos = 0
local words = {"8","Cube","Cone","Circle","Crown","Cylinder","Plane","Sphere","Spiral","Triangle"}
local pushCards = false

function DrawGUI()

    function DrawAdd3DGUI()
        
        love.graphics.rectangle("line", 30,100,50,30)
        love.graphics.print("+", 50,105)


        local mx, my = love.mouse.getPosition()

        ----------- Main Plus Menu --------------
        function HoverOverPlus()
            if mx > 30
            and mx < 80
            and my > 100
            and my < 130
            and mouseclicked[#mouseclicked]
            then

                love.graphics.print("Add 3D Primitive?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "plus")
                    
                end
            end            
        end


        ---------- Su Menu ---------------------
        function HoverOverEight()
            if mx > 30
            and mx < 80
            and my > 130
            and my < 170
            then

                love.graphics.print("Add 8?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "eight")
                    
                end
            end

        end

        function HoverOverCube()
            if mx > 30
            and mx < 80
            and my > 170
            and my < 210 then

                love.graphics.print("Add cube?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cube")
                    
                end
            end

        end


        function HoverOverCone()
            if mx > 30
            and mx < 80
            and my > 211
            and my < 250 then

                love.graphics.print("Add cone?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cone")
                    
                end
            end

        end

        function HoverOverCircle()
            if mx > 30
            and mx < 80
            and my > 251
            and my < 290 then

                love.graphics.print("Add circle?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "circle")
                    
                end
            end

        end

        function HoverOverCrown()
            if mx > 30
            and mx < 80
            and my > 291
            and my < 330 then

                love.graphics.print("Add crown?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "crown")
                    
                end
            end

        end

        function HoverOverCylinder()
            if mx > 30
            and mx < 80
            and my > 331
            and my < 370 then

                love.graphics.print("Add cylinder?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cylinder")
                end
            end

        end

        function HoverOverPlane()
            if mx > 30
            and mx < 80
            and my > 371
            and my < 410 then

                love.graphics.print("Add plane?", mx + 20, my - 30)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "plane")
                end
            end

        end


        ---------- Animate Cards,Add Logic ------
        if mouseclicked[#mouseclicked] == "plus" then
            PushCards()
        
        elseif mouseclicked[#mouseclicked] == "eight" then
            WithDrawCards()
            local mx,my = love.mouse.getPosition()

            if love.mouse.isDown(1) then

                MakeEight(-80+mx/5,60-my/5,50)

            end

            DrawMadeEight()


        elseif mouseclicked[#mouseclicked] == "cube" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeCube(-80+mx/5,60-my/5,50)

            end

            DrawMadeCube()
        
        
        elseif mouseclicked[#mouseclicked] == "cone" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeCone(-80+mx/5,60-my/5,100)

            end

            DrawMadeCone()

        elseif mouseclicked[#mouseclicked] == "circle" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeCircle(-80+mx/5,60-my/5,100)

            end

            DrawMadeCircle()
        
        elseif mouseclicked[#mouseclicked] == "crown" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeCrown(-80+mx/5 ,60-my/5,40)

            end

            DrawMadeCrown()

        elseif mouseclicked[#mouseclicked] == "cylinder" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeCylinder(-80+mx/5 ,60-my/5,80)

            end

            DrawMadeCylinder()

        elseif mouseclicked[#mouseclicked] == "plane" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakePlane(-80+mx/5 ,60-my/5,80)

            end

            DrawMadePlane()
---------------------

        end

        HoverOverPlus(); HoverOverEight(); HoverOverCube(); HoverOverCone(); HoverOverCircle(); HoverOverCrown();
        HoverOverCylinder(); HoverOverPlane()
    end


        --Grid
    function DrawGrid()

        for i = -13, 32 do  -- Smaller range to test visibility
                love.graphics.print("|", 385 + i * 30, love.graphics.getHeight() / 2)
                love.graphics.print(i, 385 + i * 30, love.graphics.getHeight() / 2 + 15)
        end            
    end


        

        DrawAdd3DGUI(); DrawGrid()
    
end

function WithDrawCards()


    for i = 1,10 do
        --animate the card animation
        if UICardsPos > 5 then
            UICardsPos = UICardsPos - 0.1
        else
            pushCards = false
        end
            
        love.graphics.rectangle("line",30, 130, 50, i * UICardsPos)

        if UICardsPos > 25 then
            love.graphics.print(words[i], 32,100+i * UICardsPos)
        end
        
    end    
end

function PushCards()

    pushCards = true
    for i = 1,10 do
        
        --play animation
        if UICardsPos < 40 then
            UICardsPos = UICardsPos + 0.1
        end

        love.graphics.rectangle("line",30, 130, 50, i*UICardsPos)

        if UICardsPos > 25 then
            love.graphics.print(words[i], 32,100+i*UICardsPos)
        end

    end    
end
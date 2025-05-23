require("Primitives.8.3DView")
require("Primitives.8.CreateEight")
require("Primitives.cube.CreateCube")
require("Primitives.cone.CreateCone")
require("Primitives.triangle.CreateTriangle")

local mouseclicked = {"0"}

local UICardsPos = 0
local words = {"8","Cube","Cone","Circle","Crown","Cylinder","Plane","Sphere","Spiral","Triangle"}
local pushCards = false

local widthplus, width8, widthCube, widthCone, widthCircle, widthCrown, widthCylinder, widthPlane, widthSphere, widthSpiral, widthTriangle = 0,0,0,0,0,0,0,0,0,0,0


function MouseClickedIsFalse()
    return mouseclicked[#mouseclicked]~="0"
    and mouseclicked[#mouseclicked]~="eight"
    and mouseclicked[#mouseclicked]~="cube"
    and mouseclicked[#mouseclicked]~="cone"
    and mouseclicked[#mouseclicked]~="circle"
    and mouseclicked[#mouseclicked]~="crown"
    and mouseclicked[#mouseclicked]~="cylinder"
    and mouseclicked[#mouseclicked]~="crown"
    and mouseclicked[#mouseclicked]~="cylinder"
    and mouseclicked[#mouseclicked]~="plane"
    and mouseclicked[#mouseclicked]~="sphere"
    and mouseclicked[#mouseclicked]~="spiral"
    and mouseclicked[#mouseclicked]~="triangle"

end

function DrawGUI()

    function DrawAdd3DGUI()
        
        love.graphics.rectangle("line", 30, 100, 50+widthplus, 30)
        love.graphics.print("+", 50,105)


        local mx, my = love.mouse.getPosition()

        ----------- Main Plus Menu --------------
        function HoverOverPlus()
            if mx > 30
            and mx < 80 + widthplus
            and my > 100
            and my < 130
            then

                love.graphics.print("Add 3D Primitive?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "plus")
                    
                end

                widthplus = 50
            else
                widthplus = 0
            end       

            

        end


        ---------- Su Menu ---------------------
        function HoverOverEight()
            if mx > 30
            and mx < 80 + width8
            and my > 130
            and my < 170
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add 8?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "eight")
                    
                end
            
                width8 = 50
            else
                width8 = 0
            end

        end

        function HoverOverCube()
            if mx > 30
            and mx < 80 + widthCube
            and my > 170
            and my < 210
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add cube?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cube")
                    
                end

                widthCube = 50
            else
                widthCube = 0
            end

        end


        function HoverOverCone()
            if mx > 30
            and mx < 80 + widthCone
            and my > 211
            and my < 250
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add cone?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cone")
                    
                end

                widthCone = 50
            else
                widthCone = 0
            end

        end

        function HoverOverCircle()
            if mx > 30
            and mx < 80 + widthCircle
            and my > 251
            and my < 290
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add circle?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "circle")
                    
                end

                widthCircle = 50
            else
                widthCircle = 0
            end

        end

        function HoverOverCrown()
            if mx > 30
            and mx < 80 + widthCrown
            and my > 291
            and my < 330
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add crown?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "crown")
                    
                end

                widthCrown = 50
            else
                widthCrown = 0
            end

        end

        function HoverOverCylinder()
            if mx > 30
            and mx < 80 + widthCylinder
            and my > 331
            and my < 370
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add cylinder?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "cylinder")
                end

                widthCylinder = 50
            else
                widthCylinder = 0
            end

        end

        function HoverOverPlane()
            if mx > 30
            and mx < 80 + widthPlane
            and my > 371
            and my < 410
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add plane?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "plane")
                end

                widthPlane = 50
            else
                widthPlane = 0
            end

        end

        function HoverOverSphere()
            if mx > 30
            and mx < 80 + widthSphere
            and my > 411
            and my < 450
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add sphere?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "sphere")
                end

                widthSphere = 50
            else
                widthSphere = 0
            end

        end

        function HoverOverSpiral()
            if mx > 30
            and mx < 80 + widthSpiral
            and my > 451
            and my < 490
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add spiral?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "spiral")
                end

                widthSpiral = 50
            else
                widthSpiral = 0
            end

        end

        function HoverOverTriangle()
            if mx > 30
            and mx < 80 + widthTriangle
            and my > 491
            and my < 540
            and MouseClickedIsFalse()
            then

                love.graphics.print("Add triangle?", mx + 30, my - 50)

                -- if you click +
                if love.mouse.isDown(1) then
                    table.insert(mouseclicked, "triangle")
                end

                widthTriangle = 50
            else
                widthTriangle = 0
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

        elseif mouseclicked[#mouseclicked] == "sphere" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeSphere(-80+mx/5 ,60-my/5,50)

            end

            DrawMadeSphere()
        
        elseif mouseclicked[#mouseclicked] == "spiral" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeSpiral(-80+mx/5 ,60-my/5,50)

            end

            DrawMadeSpiral()

        elseif mouseclicked[#mouseclicked] == "triangle" then
            WithDrawCards()

            if love.mouse.isDown(1) then

                MakeTriangle(-80+mx/5 ,60-my/5,50)

            end

            DrawMadeTriangle()
        

---------------------

        end

        HoverOverPlus(); HoverOverEight(); HoverOverCube(); HoverOverCone(); HoverOverCircle(); HoverOverCrown();
        HoverOverCylinder(); HoverOverPlane(); HoverOverSphere(); HoverOverSpiral(); HoverOverTriangle()
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


        if UICardsPos < 39 then
            love.graphics.rectangle("line",30, 130, 50, i*UICardsPos)
        else
            --local words = {"8","Cube","Cone","Circle","Crown","Cylinder","Plane","Sphere","Spiral","Triangle"}

            love.graphics.rectangle("line", 30,130,50+width8, 40)
            love.graphics.rectangle("line", 30,170,50+widthCube, 40)
            love.graphics.rectangle("line", 30,210,50+widthCone, 40)
            love.graphics.rectangle("line", 30,250,50+widthCircle, 40)
            love.graphics.rectangle("line", 30,290,50+widthCrown, 40)
            love.graphics.rectangle("line", 30,330,50+widthCylinder, 40)
            love.graphics.rectangle("line", 30,370,50+widthPlane, 40)
            love.graphics.rectangle("line", 30,410,50+widthSphere, 40)
            love.graphics.rectangle("line", 30,450,50+widthSpiral, 40)
            love.graphics.rectangle("line", 30,490,50+widthTriangle, 40)
        end

        if UICardsPos > 25 then
            love.graphics.print(words[i], 32,100+i*UICardsPos)
        end

    end    
end
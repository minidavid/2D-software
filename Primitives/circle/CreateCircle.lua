local baseCircle = require("Primitives.circle.3DModel")

local listOfCircle = {}



function MakeCircle(x,y,z)

    local newCircle = {}

    for _,point in ipairs(baseCircle) do
        table.insert(newCircle, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        }) 
    end


    table.insert(listOfCircle, newCircle)

end

function UpdateMadeCircle(dt)

    
    if love.keyboard.isDown("a") then
        MakeCircle(0, -5, 50)
        MakeCircle(0, 5, 50)
    end

    for _, circle in ipairs(listOfCircle) do
        for _, point in ipairs(circle) do
            point.z = point.z - 0.1 -- Move towards camera
        end
    end

end

function DrawMadeCircle()
    
    for _,circle in ipairs(listOfCircle) do 
        for i = 1,#circle do
            
            local a = circle[i]
            local b = circle[i % #circle + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            end
            
        end
    end

end
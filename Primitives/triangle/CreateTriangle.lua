local baseTriangle = require("Primitives.triangle.3DModel")

local listOfTriangles = {}



function MakeTriangle(x,y,z)

    local newTriangle = {}
    for _,point in ipairs(baseTriangle) do
        table.insert(newTriangle, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfTriangles, newTriangle)



end

function UpdateMadeTriangle(dt)

    
    if love.keyboard.isDown("a") then
        MakeTriangle(1, 1, 50)
    end

    for _, triangle in ipairs(listOfTriangles) do
        for _, point in ipairs(triangle) do
            point.z = point.z - 0.1 -- Move towards camera
        end
    end

end

function DrawMadeTriangle()
    
    for _,triangle in ipairs(listOfTriangles) do 
        for i = 1,#triangle do
            local a = triangle[i]
            local b = triangle[i % #triangle + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfTriangles, 1)
            end
            
        end
    end

end
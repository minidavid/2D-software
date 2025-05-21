local baseSpiral = require("Primitives.spiral.3DModel")

local listOfSpirals = {}



function MakeSpiral(x,y,z)

    local newSpiral = {}
    for _,point in ipairs(baseSpiral) do
        table.insert(newSpiral, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfSpirals, newSpiral)
end

function UpdateMadeSpiral(dt)

    
    if love.keyboard.isDown("left") then
        MakeSpiral(-1, -1, 20)
    end

    for _, spiral in ipairs(listOfSpirals) do
        for _, point in ipairs(spiral) do
            point.z = point.z - 0.01 -- Move towards camera
        end
    end

end

function DrawMadeSpiral()
    for _,spiral in ipairs(listOfSpirals) do 
        for i = 1,#spiral do
            local a = spiral[i]
            local b = spiral[i % #spiral + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfSpirals, 1)
            end

        end
    end

end
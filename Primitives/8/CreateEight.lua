local baseEight = require("Primitives.8.3DModel")

local listOfEight = {}



function MakeEight(x,y,z)

    local newEight = {}
    for _,point in ipairs(baseEight) do
        table.insert(newEight, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfEight, newEight)
end

function UpdateMadeEight()

    
    if love.keyboard.isDown("8") then
        MakeEight(-1, -1, 20)
    end

    for _, eight in ipairs(listOfEight) do
        for _, point in ipairs(eight) do
            point.z = point.z - 0.01 -- Move towards camera
        end
    end

end

function DrawMadeEight()
    for _,eight in ipairs(listOfEight) do 
        for i = 1,#eight do
            local a = eight[i]
            local b = eight[i % #eight + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfEight, 1)
            end

        end
    end

end
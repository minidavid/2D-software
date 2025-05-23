local baseCrown = require("Primitives.crown.3DModel")

local listOfCrowns = {}



function MakeCrown(x,y,z)

    local newCrown = {}
    for _,point in ipairs(baseCrown) do
        table.insert(newCrown, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfCrowns, newCrown)
end

function UpdateMadeCrown(dt)

    
    if love.keyboard.isDown("up") then
        MakeCrown(-1, -1, 20)
    end

    for _, crown in ipairs(listOfCrowns) do
        for _, point in ipairs(crown) do
            point.z = point.z - 0.01 -- Move towards camera
        end
    end

end

function DrawMadeCrown()
    for _,crown in ipairs(listOfCrowns) do 
        for i = 1,#crown do
            local a = crown[i]
            local b = crown[i % #crown + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfCrowns, 1)
            end

        end
    end

end
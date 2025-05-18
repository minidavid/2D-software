local baseSphere = require("Primitives.sphere.3DModel")

local listOfSphere = {}



function MakeSphere(x,y,z)

    local newSphere = {}
    for _,point in ipairs(baseSphere) do
        table.insert(newSphere, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfSphere, newSphere)
end

function UpdateMadeSphere(dt)

    
    if love.keyboard.isDown("up") then
        MakeSphere(-1, -1, 20)
    end

    for _, sphere in ipairs(listOfSphere) do
        for _, point in ipairs(sphere) do
            point.z = point.z - 0.01 -- Move towards camera
        end
    end

end

function DrawMadeSphere()
    for _,sphere in ipairs(listOfSphere) do 
        for i = 1,#sphere do
            local a = sphere[i]
            local b = sphere[i % #sphere + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfSphere, 1)
            end

        end
    end

end
local baseCylinder = require("Primitives.cylinder.3DModel")

local listOfCylinders = {}



function MakeCylinder(x,y,z)

    local newCylinder = {}
    for _,point in ipairs(baseCylinder) do
        table.insert(newCylinder, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfCylinders, newCylinder)


end

function UpdateMadeCylinder(dt)

    
    if love.keyboard.isDown("c") then
        MakeCylinder(1, 1, 50)
    end

    for _, cylinder in ipairs(listOfCylinders) do
        for _, point in ipairs(cylinder) do
            point.z = point.z - 0.1 -- Move towards camera
        end
    end

end

function DrawMadeCylinder()
    
    for _,cylinder in ipairs(listOfCylinders) do 

            

            local segments = 20
            local rings = 2
            local detail = 10

            for j = 0, rings - 1 do
            for i = 0, segments - 1 do
                local i1 = j * segments + i + 1
                local i2 = j * segments + ((i+1)% segments) + 1

                local a = cylinder[i1]
                local b = cylinder[i2]
                local ax, ay = project3D(a.x, a.y, a.z)
                local bx, by = project3D(b.x, b.y, b.z)

                if a.z > 1 or b.z > 1 then
                    
                    love.graphics.line(ax,ay, bx, by)
                end

                end
            end

            for j = 0, rings - 2 do
                for i = 0, segments - 1, detail do
                        local index1 = j * segments + i + 1
                        local index2 = (j + 1) * segments + i + 1

                        local a = cylinder[index1]
                        local b = cylinder[index2]

                        local ax, ay = project3D(a.x, a.y, a.z)
                        local bx, by = project3D(b.x, b.y, b.z)


                        if a.z > 1 or b.z > 1 then
                            love.graphics.line(ax, ay, bx, by)
                        end

                    end
            end




    end

end
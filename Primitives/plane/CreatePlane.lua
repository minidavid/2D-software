local basePlane = require("Primitives.plane.3DModel")

local listOfPlanes = {}



function MakePlane(x,y,z)

    local newPlane = {}
    for _,point in ipairs(basePlane) do
        table.insert(newPlane, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfPlanes, newPlane)



end

function UpdateMadePlane(dt)

    
    if love.keyboard.isDown("a") then
        MakePlane(1, 1, 50)
    end

    for _, plane in ipairs(listOfPlanes) do
        for _, point in ipairs(plane) do
            point.z = point.z - 0.1 -- Move towards camera
        end
    end

end

function DrawMadePlane()
    
    for _,plane in ipairs(listOfPlanes) do 
        for i = 1,#plane do
            local a = plane[i]
            local b = plane[i % #plane + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            else
                table.remove(listOfPlanes, 1)
            end
            
        end
    end

end
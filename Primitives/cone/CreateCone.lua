local baseCone = require("Primitives.cone.3DModel")

local listOfCones = {}



function MakeCone(x,y,z)

    local newCone = {}
    for _, point in ipairs(baseCone) do
        table.insert(newCone, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z - 10
        })
    end


    table.insert(listOfCones, newCone)
end

function UpdateMadeCone(dt)

    
    if love.keyboard.isDown("up") then
        MakeCone(1, 1, 100)
    end

    for _, cone in ipairs(listOfCones) do
        for _, point in ipairs(cone) do
            point.z = point.z - dt*4  -- Move towards camera
        end
    end

end

function DrawMadeCone()

        ------
        for _,cone in ipairs(listOfCones) do 
            for i = 1, #cone do
                local a = cone[i]
                local b = cone[i % #cone + 1]
                local ax, ay = project3D(a.x, a.y, a.z)
                local bx, by = project3D(b.x, b.y, b.z)

                --animate

                --circle[i].z = circle[i].z - 0.01

                if a.z > 8 or b.z > 8 then
                    love.graphics.line(ax, ay, bx, by)
                end
            
                
            end

            local tip = cone[#cone]

            cone.radius = 7
            cone.segments = 12
            cone.verticleLineIncrement = 3
            cone.height = -7

            local tx, ty = project3D(tip.x - cone.radius, tip.y - cone.height, tip.z)

            for i = 1, #cone - 1, cone.verticleLineIncrement do
                local a = cone[i]
                local ax, ay = project3D(a.x, a.y, a.z)

                if a.z > 8 then
                    love.graphics.line(ax, ay, tx, ty)
                end

            end

        end


        ---------


end


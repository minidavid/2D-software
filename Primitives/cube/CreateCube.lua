local baseCube = require("Primitives.cube.3DModel")

local listOfCubes = {}



function MakeCube(x,y,z)

    local newCube = {}
    for _,point in ipairs(baseCube) do
        table.insert(newCube, {
            x = point.x + x,
            y = point.y + y,
            z = point.z + z
        })    
    end


    table.insert(listOfCubes, newCube)
end

function UpdateMadeCube(dt)

    
    if love.keyboard.isDown("up") then
        MakeCube(1, 1, 5)
    end

    for _, cube in ipairs(listOfCubes) do
        for _, point in ipairs(cube) do
            point.z = point.z - 0.01 -- Move towards camera
        end
    end

end

function DrawMadeCube()
    for _,cube in ipairs(listOfCubes) do 
        for i = 1,#cube do
            local a = cube[i]
            local b = cube[i % #cube + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if a.z > 1 or b.z > 1 then
                love.graphics.line(ax, ay, bx, by)
            end
            
            --cube[i].z = cube[i].z - 0.1
        end
    end

end
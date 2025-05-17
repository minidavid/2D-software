local cube = require("Primitives.cube.3DModel")

local listOfCubes = {}

function MakeCube()
    table.insert(listOfCubes, cube)
end

function UpdateMadeCube(dt)
    for i,v in ipairs(listOfCubes) do
        --v.x = v.x + dt
    end

    
    if love.keyboard.isDown("up") then
        MakeCube()
    end

end

function DrawMadeCube()
    for k,v in ipairs(listOfCubes) do 
        for i = 1,#cube do
            local a = cube[i]
            local b = cube[i % #cube + 1]
            local ax, ay = project3D(a.x, a.y, a.z)
            local bx, by = project3D(b.x, b.y, b.z)

            if cube[i].z > 1 then
                love.graphics.line(ax, ay, bx, by)
            end
            
            --cube[i].z = cube[i].z - 0.1
        end
    end

    for i,v in ipairs(listOfCubes) do
        --print("v.x" .. v.x)
    end
end
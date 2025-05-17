local cube = require("Primitives.cube.3DModel")

function MoveCube()
    
    for i = 1,#cube do
        
            RotateX(cube[i], 1*3.142/180)
            RotateY(cube[i], 1*3.142/180)

    end

end

function RotateX(point, angle)
    local cosA = math.cos(angle)
    local sinA = math.sin(angle)
    
    local x = point.x * cosA - point.z * sinA
    local z = point.x * sinA + point.z * cosA
    point.x = x
    point.z = z

end

function RotateY(point, angle)
    local cosA = math.cos(angle)
    local sinA = math.sin(angle)
    
    local y = point.y * cosA - point.z * sinA
    local z = point.y * sinA + point.z * cosA
    point.y = y
    point.z = z

end


--------Mirror functionality --------------------------

function MirrorCubeX()
    for i = 1,#cube do
        if (love.mouse.isDown(1)) then
            cube[i].x = - cube[i].x
        end

    end
end


function MirrorCubeY()
    for i = 1,#cube do
        if (love.mouse.isDown(1)) then
            cube[i].y = - cube[i].y
        end

    end
end

function MirrorCubeZ()
    for i = 1,#cube do
        if (love.mouse.isDown(1)) then
            cube[i].z = - cube[i].z
        end

    end
end


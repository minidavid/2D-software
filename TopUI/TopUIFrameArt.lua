require("3D Stuff.Project3D")

local triangle2 = {
    -- Back face (z = -10)
    {x = -1, y = -1, z = -10}, -- 1
    {x =  1, y = -1, z = -10}, -- 2
    {x =  1, y =  1, z = -10}, -- 3
    {x = -1, y =  1, z = -10}, -- 4

    -- Front face (z = 1)
    {x = -1, y =  1, z = 1},   -- 5
    {x =  1, y = 1, z = 1},   -- 6
    {x =  1, y = -1, z = 1},   -- 7
    {x = -1, y = -1, z = 1}    -- 8
}

function DrawFrameArt()
    for i = 1, #triangle2 do
        local a = triangle2[i]
        local b = triangle2[i % #triangle2 + 1]
        local ax, ay = project3D(a.x, a.y, a.z)
        local bx, by = project3D(b.x, b.y, b.z)
        love.graphics.line(ax, ay, bx, by)

        --triangle2[i].x = math.sin(love.timer.getTime() + i) * 2
        if triangle2[i].z > -2 then
            --triangle2[i].z = triangle2[i].z - 0.1
        else
            triangle2[i].z = 10
        end

        
    end
end
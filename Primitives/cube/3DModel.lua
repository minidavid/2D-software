require("Primitives.Project3D")


local x = 2
local y = 1
local z = 10

local width = 1
local height = 1
local depth = 1


    local cube ={
        {x = x, y = y, z = z},
        {x = x + width, y = y, z = z},
        {x = x + width, y = y + height, z = z},
        {x = x, y = y + height, z = z},
        {x = x, y = y, z = z},

        {x = x, y = y, z = z-depth},
        
        {x = x, y = y + height, z = z - depth},
        {x = x, y = y + height, z = z},
        {x = x, y = y + height, z = z - depth},

        {x = x + width, y = y + height, z = z - depth},
        {x = x + width, y = y + height, z = z},
        {x = x + width, y = y + height, z = z - depth},

        {x = x + width, y = y, z = z - depth},
        {x = x + width, y = y, z = z}
    }



    --op
    -- Front face (z = 1)



return cube
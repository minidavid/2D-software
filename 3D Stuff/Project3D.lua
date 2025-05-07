function project3D(x,y,z)
    local scale = 300
    local distance =  3
    local fov = scale/(distance+z)

    return 400 + x * fov, 300-y * fov

end


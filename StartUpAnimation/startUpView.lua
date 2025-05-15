
local animation ={
    image = love.graphics.newImage("pixilart-sprite.png"),
    frames = {},
    frameWidth = 100,
    frameHeight = 100,
    currFrame = 1

}

for i = 1,42 do
    table.insert(animation.frames, love.graphics.newQuad(0+i*100, 0, 100, 100, animation.image:getWidth(), animation.image:getHeight()))
end


return animation
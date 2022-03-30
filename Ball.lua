---@diagnostic disable: undefined-global
--[[
    gd50 2022 
    pong remake

    -- Ball Class

    Coded By: Omar Nabil Omar
]]

Ball = Class{}

function  Ball:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    self.dy = math.random(2) == 1 and -100 or 100
    self.dx = math.random(-50, 50)
    
end

--[[
    places the ball in the mddle of the screen ,
    with initial random velocity on both axes.
]]

function Ball.reset()
    self.x = VIRTUAL_WIDTH / 2 -2 
    sely.y = VIRTUAL_HEIGHT / 2 - 2
    self.dy = math.random(2) == 1 and -100 or 100
    self.dx = math.random(-50, 50)
end

--[[
    simply applies velocity to position , scaled by deltaTime.
]]

function Ball:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Ball:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
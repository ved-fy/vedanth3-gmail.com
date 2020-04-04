Pipe = Class{}

local PIPE_IMAGE = love.graphics.newImage('images/pipe.png')

PIPE_HEIGHT = 288
PIPE_WIDTH = 70

PIPE_SPEED = 60

function Pipe:init(orientation, y)
    self.x = VIRTUAL_WIDTH
    self.y = y

    self.width = PIPE_IMAGE:getWidth()
    self.height = PIPE_HEIGHT

    self.orientation = orientation
end

function Pipe:update(dt)
    
end

function Pipe:render()
    love.graphics.draw(PIPE_IMAGE, self.x, 
        (self.orientation == 'top' and self.y + PIPE_HEIGHT or self.y), 
        0, -- Rotation
        1, -- Scale in X axis
        self.orientation == 'top' and -1 or 1 -- Scale in y axis
        )
end
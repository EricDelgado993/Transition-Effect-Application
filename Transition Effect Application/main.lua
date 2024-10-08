-----------------------------------------------------------------------------------------
-- 2D Animation Application
-- Eric Delgado
-- 09/27/24
-----------------------------------------------------------------------------------------

local balls = {}
local deltaX = 1
local deltaY = -deltaX

local upBallCount = 0
local downBallCount = 0
local stayBallCount = 0

local hudText = display.newText("Up: 0  Down: 0  Stay: 0", display.contentCenterX, 20, native.systemFont, 20)

function updateHUD()

    hudText.text = string.format("Up: %d  Down: %d  Stay: %d", upBallCount, downBallCount, stayBallCount)

end

function shrinkBall(event)

    local ball = event.target

    -- Flag for object state to prevent event interference with other objects.
    -- Prevents events to object from occurring while scaling down.
    if ball.isShrinking then

        return true

    end

    ball.isShrinking = true
    
    transition.scaleTo(ball, {xScale=0.01, yScale=0.01, time=3000, onComplete=deleteBall})
    transition.scaleTo(ball.text, {xScale=0.01, yScale=0.01, time=3000})
    
    return true

end

function rotateBall(event)

    local ball = event.target

    if ball.isRotating then

        -- Turn off ball rotation.
        transition.cancel(ball.rotationState)
        transition.cancel(ball.text.rotationState)

        ball.isRotating = false

    else

        -- Turn on ball rotation.
        ball.rotationState = transition.to(ball, {rotation = ball.rotation + 360, time = 2000, iterations = 0})
        ball.text.rotationState = transition.to(ball.text, {rotation = ball.text.rotation + 360, time = 2000, iterations = 0})
        
        ball.isRotating = true

    end

    return true

end

function fadeBall(event)

    ball = event.target

    transition.fadeOut(ball, {time=2000, onComplete=deleteBall})

end

function deleteBall(ball)

    -- Flag for object state to prevent event interference with other objects.
    if ball.isDeleted then

        return

    end
    
    ball.isDeleted = true
    
    local index = table.indexOf(balls, ball)

    -- Decrements ball type amount in HUD counter.
    if ball.ballType == 0 then

        upBallCount = upBallCount - 1
    
    elseif ball.ballType == 1 then

        downBallCount = downBallCount - 1

    elseif ball.ballType == 2 then

        stayBallCount = stayBallCount - 1

    end

    -- Isolates object action to prevent event interference with other objects.
    if index then

        table.remove(balls, index)

    end

    display.remove(ball)
    display.remove(ball.text)

    ball = nil

end

function createBall(event)

    ballRadius = math.random(30, 60)

    local ball = display.newCircle(event.x, event.y, ballRadius)
    ball:setFillColor(math.random(), math.random(), math.random())

    ball.ballRadius = ballRadius
    
    ball.deltaX = deltaX
    ball.deltaY = deltaY

    table.insert(balls, ball)

    ball.ballType = math.random(0, 2)

    -- Uses randomized ballType value to create ball with specefied properties at tap location.
    -- Increments ball type amount in HUD counter upon instantiation.
    if ball.ballType == 0 then

        upBallCount = upBallCount + 1
        ball.text = display.newText("Up", event.x, event.y, native.systemFont, 20)
        ball:addEventListener("tap", shrinkBall)

    elseif ball.ballType == 1 then

        downBallCount = downBallCount + 1
        ball.text = display.newText("Down", event.x, event.y, native.systemFont, 20)
        ball:addEventListener("tap", rotateBall)

    elseif ball.ballType == 2 then

        stayBallCount = stayBallCount + 1
        ball.text = display.newText("Stay", event.x, event.y, native.systemFont, 20)
        transition.fadeOut(ball, {time=2000, onComplete=deleteBall})

    end

end

function update()

    for _, ball in ipairs(balls) do

        -- Moves ball upward.
        if ball.ballType == 0 then

            ball.y = ball.y - 1
            ball.text.y = ball.y
        
        -- Moves ball downward.
        elseif ball.ballType == 1 then

            ball.y = ball.y + 1
            ball.text.y = ball.y

        end

        -- Checks if ball goes out of the screen's bounds.
        if ball.y < -ball.ballRadius or ball.y > display.contentHeight + ball.ballRadius or
        ball.x < -ball.ballRadius or ball.x > display.contentWidth + ball.ballRadius then

        deleteBall(ball)

        end

    end

    updateHUD()

end

Runtime:addEventListener("tap", createBall)

timer.performWithDelay(20, update, 0)

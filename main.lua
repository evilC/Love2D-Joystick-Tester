-- main.lua
-- Author: Brett Chalupa
-- http://brettchalupa.com
-- Love2D Joystick Tester

width = love.graphics.getWidth() -- the width of the game window
height = love.graphics.getHeight() -- the height of the game window
pauseMessage = "Game Paused" -- the message to display when the game is paused

function love.load()
  -- initial game settings
  ascension = love.graphics.newFont( "typefaces/ascension.ttf", 18) -- load the ascension typeface and set the size to 18px
  love.graphics.setFont(ascension)
  love.mouse.setVisible(true)
end

function love.draw()

  love.graphics.print("joystick tester", 325, 10)

  -- joystick 0
  love.graphics.print(love.joystick.getName(0).." - joystick 0", 10, 30)

  if love.joystick.isOpen(0) then
    love.graphics.print("status: is open", 10, 50)
  else
    love.graphics.print("status: is closed", 10, 50)
  end

  love.graphics.print("number of buttons: " .. love.joystick.getNumButtons(0), 10, 70)

  -- check for d-pad input
  love.graphics.print("d-pad", 10, 110)

  love.graphics.print("axis: 0 value: "..love.joystick.getAxis(0, 0), 10, 130)

  love.graphics.print("axis: 1 value: "..love.joystick.getAxis( 0, 1 ), 10, 150)

  -- check for button input
  love.graphics.print("buttons", 10, 190)

  love.graphics.print("button 0: "..tostring(love.joystick.isDown(0,0)), 10, 210)

  love.graphics.print("button 1: "..tostring(love.joystick.isDown(0,1)), 10, 230)

  love.graphics.print("button 2: "..tostring(love.joystick.isDown(0,2)), 10, 250)

  love.graphics.print("button 3: "..tostring(love.joystick.isDown(0,3)), 10, 270)

  love.graphics.print("button 4: "..tostring(love.joystick.isDown(0,4)), 10, 290)

  love.graphics.print("button 5: "..tostring(love.joystick.isDown(0,5)), 10, 310)

  love.graphics.print("button 6: "..tostring(love.joystick.isDown(0,6)), 10, 330)

  love.graphics.print("button 7: "..tostring(love.joystick.isDown(0,7)), 10, 350)

  love.graphics.print("button 8: "..tostring(love.joystick.isDown(0,8)), 10, 370)

  love.graphics.print("button 9: "..tostring(love.joystick.isDown(0,9)), 10, 390)

  love.graphics.print("button 10: "..tostring(love.joystick.isDown(0,10)), 10, 410)

  love.graphics.print("button 11: "..tostring(love.joystick.isDown(0,11)), 10, 430)



end

function love.keypressed(key)
  if key == "0" and love.joystick.isOpen(0) then
    love.joystick.close(0)
  elseif key == "0" then
    love.joystick.open(0)
  end

end


-- Enable debughelper for showing fps and memory usage
require "debugHelper"

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Generate Physics Engine
local physics = require("physics")

-- Enable drawing mode for testing, you can use "normal", "debug" or "hybrid"
physics.setDrawMode("normal")
 
-- Enable multitouch
system.activate("multitouch")
 
-- Find device display height and width
_H = display.contentHeight
_W = display.contentWidth

-- Show background
local background = display.newImageRect("images/background.png", display.contentWidth, display.contentHeight)
background:setReferencePoint( display.TopLeftReferencePoint )
background.x, background.y = 0, 0

-- -- Load background music
-- local music = audio.loadStream("sounds/music.mp3")

-- -- Loop background music
-- audio.play(music, {loops =- 1});

-- -- Create a new text field using native device font
-- local screenText = display.newText("Hello World!", 0, 100, native.systemFontBold, 72)

-- screenText.xScale = 0.5
-- screenText.yScale = 0.5

-- -- Change the center point to bottom left
-- screenText:setReferencePoint(display.BottomCenterReferencePoint)

-- Show FPS 
showFps()

require "polygon"

hg = 
{
  {x = _W / 4.4,  y = _H / 3.85},
  {x = _W / 2.08, y = _H / 4.92},
  {x = _W / 1.29, y = _H / 1.88},
  {x = _W / 1.06, y = _H / 2.46},
  {x = _W / 1.23, y = _H / 1.12},
  {x = _W / 1.9, y = _H / 1.13},
  {x = _W / 2.6, y = _H / 1.27},
  {x = _W / 3.1, y = _H / 1.5}
}
 
paintPoly(hg, 0, 0, {255,255,255,150})

print(isPointInPoly(hg, {160, 90}))
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
local background = display.newImage("images/background.png")

-- Load background music
local music = audio.loadStream("sounds/music.mp3")

-- Loop background music
audio.play(music, {loops =- 1});

-- Create a new text field using native device font
local screenText = display.newText("Hello World!", 0, 100, native.systemFontBold, 72)

screenText.xScale = 0.5
screenText.yScale = 0.5

-- Change the center point to bottom left
screenText:setReferencePoint(display.BottomCenterReferencePoint)

-- Show FPS 
showFps()
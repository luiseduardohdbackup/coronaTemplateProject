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
 
colors = {  {128,255,255,255}, {255,128,255,255}, {255,255,255,255}}
 
myStar = {
        {x=0,y=-110},
        {x=27,y=-35},
        {x=105,y=-35},
        {x=43,y=16},
        {x=65,y=90},
        {x=0,y=45},
        {x=-65,y=90},
        {x=-43,y=15},
        {x=-105,y=-35},
        {x=-27,y=-35},
        {x=0,y=-110},
}
 
myRectangle = {
   {x=40,y=100},
   {x=180,y=100},
   {x=180,y=50},
   {x=40,y=50},
}

hg = {
	{x=100,y=100},
	{x=200,y=100},
	{x=100,y=200},
	{x=200,y=200}
}
 
paintPoly(hg, 0, 0, colors[1]) 
-- paintPoly(myStar, 160, 240, colors[1])
-- paintPoly(myStar, 220, 260, colors[2])
-- paintPoly(myRectangle, 0, 0, colors[3])
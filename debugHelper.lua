function showFps()
		local prevTime = 0
		local curTime  = 0
		local dt       = 0       
		local fps      = 50
		local mem      = 0
              
        local underlay = display.newRoundedRect(0, 0, 300, 20, 12)   
        underlay.x = 240
        underlay.y = 11
        underlay:setFillColor(0, 0, 0, 128)             
        local displayInfo = display.newText("FPS: " .. fps .. " - Memory: ".. mem .. "mb", 120, 2, native.systemFontBold, 16)
        
        local function updateText()
                curTime  = system.getTimer()
                dt       = curTime - prevTime
                prevTime = curTime
                fps      = math.floor(1000 / dt)
                mem      = system.getInfo("textureMemoryUsed") / 1000000
                
                displayInfo.text = "FPS: " .. fps .. " - Memory: ".. string.sub(mem, 1, string.len(mem) - 4) .. "mb"
                underlay:toFront()
                displayInfo:toFront()
        end
        
        Runtime:addEventListener("enterFrame", updateText)
end
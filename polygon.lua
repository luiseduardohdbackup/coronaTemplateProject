function paintPoly(poly, xoffset, yoffset, rgba)
 
    local newLine = display.newLine
    local math_floor = math.floor
    local math_min = math.min
    local math_max = math.max
    local polyGroup = display.newGroup()
 
    local n = #poly
 
    local minY = poly[1].y
    local maxY = poly[1].y
 
    for i = 2, n do
        minY = math_min(minY, poly[i].y)
        maxY = math_max(maxY, poly[i].y)
    end
 
    for y = minY, maxY do
 
        local ints = {}
        local int = 0
        local last = n
 
        for i = 1, n do
            local y1 = poly[last].y
            local y2 = poly[i].y
            if y1 < y2 then
                local x1 = poly[last].x
                local x2 = poly[i].x
                if (y >= y1) and (y < y2) then
                    int = int + 1
                    ints[int] = math_floor((y - y1) * (x2 - x1) / (y2 - y1) + x1)
                end
            elseif y1 > y2 then
                local x1 = poly[last].x
                local x2 = poly[i].x
                if (y >= y2) and (y < y1) then
                    int = int + 1
                    ints[int] = math_floor((y - y2) * (x1 - x2) / (y1 - y2) + x2)
                end
            end
            last = i
        end
 
        local i = 1
        while i < int do
            local line = newLine(ints[i] + xoffset, y + yoffset, ints[i + 1] + xoffset, y + yoffset)
            polyGroup:insert(line)
            line:setColor(rgba[1], rgba[2], rgba[3], rgba[4])
            i = i + 2
        end
    end
 
    return polyGroup
end
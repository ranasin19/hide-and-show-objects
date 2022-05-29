-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
system.activate("multitouch")

local mybc = display.newImage("bv.jpg")
mybc.x = display.contenrX
mybc.y = display.contenrY

local color1 = display.newImageRect("color.png",250,250)
color1.x = display.contentWidth-165
color1.y = display.contentHeight-400


local round1 = display.newRect(150,200,70,30)
local hideText = display.newText("hide it",150,200)
hideText:setFillColor(0,0,1)

local round2 = display.newRect(150,250,70,30)
local showText = display.newText("show it",150,250)
showText:setFillColor(0,0,1)

local round3 = display.newRect(150,300,70,30)
local fadeText = display.newText("fade",150,300)
fadeText:setFillColor(0,0,1)

local function HideColor (event)
color1.alpha=0
end

local function ShowColor (event)
color1.alpha=1
end

local function fadeColor(event)
  if (color1.alpha == 1) then
  transition.fadeOut(color1,{time=1500,alpha=1})
  else if  (color1.alpha ==0) then 
   transition.fadeIn(color1,{time=1500,alpha=1})
end
end
end

round1:addEventListener("tap",HideColor)
round2:addEventListener("tap",ShowColor)
round3:addEventListener("touch",fadeColor)

-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local cowboy = display.newImageRect( "./assets/sprites/cowboy.png", 539, 495 )
cowboy.x = display.contentCenterX 
cowboy.y = display.contentCenterY 
cowboy.id = " cowboy "


local leftarrow = display.newImageRect( "./assets/sprites/leftarrow.png", 200, 200 )
leftarrow.x = display.contentCenterX - 800 
leftarrow.y = display.contentCenterY + 600
leftarrow.id = " leftarrow "

local rightarrow = display.newImageRect( "./assets/sprites/rightarrow.png", 200, 200 )
rightarrow.x = display.contentCenterX - 500 
rightarrow.y = display.contentCenterY + 600
rightarrow.id = " rightarrow "

local drums = audio.loadStream('./assets/audio/drums.wav')

local function leftarrowTouch( event )
	cowboy.x = cowboy.x - 50

	if cowboy.x < 0 then
		cowboy.x = display.contentCenterX
	end
end

local function rightarrowTouch( event )
	cowboy.x = cowboy.x + 50

	if cowboy.x > 2048 then
		cowboy.x = display.contentCenterX
	end
end



local function cowboyTouch()
	audio.play('drums')
	print( 'Sound' )
end 


leftarrow:addEventListener( "touch", leftarrowTouch )
rightarrow:addEventListener( "touch", rightarrowTouch )
cowboy:addEventListener("touch", cowboyTouch)

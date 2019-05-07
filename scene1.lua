-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require("composer")

local scene = composer.newScene()

local function showScene2 ()
	
	local options = {
	  effect = "fade",
	  time = 500
    }
    composer.gotoScene("scene2", options)
end

function scene:create(event)
	local sceneGroup = self.view
end

function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase

	if (phase == "will") then

		local background = display.newRect(0,0,1200,1200)
		background:setFillColor(.3,.1,.8)
		sceneGroup:insert(background)

		local myText = display.newText("Scene 1", 150, 150, native.systemFont, 20)
		myText: setFillColor(1,1,1)
		sceneGroup:insert(myText)

	elseif (phase == "did") then
		timer.performWithDelay(3000,showScene2)
    end
end

function scene:hide(event)
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene1 is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene1 goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene1's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene1 event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
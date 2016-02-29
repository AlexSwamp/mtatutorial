local def = localPlayer:setData("passive",0)

function showText()
	if localPlayer:getData("passive") == 0 then
		outputChatBox("[SG - Passive] #FFFFFFPasszív mód deaktiválva.", 255, 102, 0, true)
		localPlayer:setData("passive",1)
	elseif localPlayer:getData("passive") == 1 then
		outputChatBox("[SG - Passive] #FFFFFFPasszív mód aktiválva.", 255, 102, 0, true)
		localPlayer:setData("passive",0)
	end	
end
bindKey("F1","down",showText)

		for i,v in ipairs(getElementsByType("player")) do
			if tonumber(v:getData("char.faction")) == 2 then
				outputChatBox("#22A7F0[SG - ES] #ffffffA #D24D57" .. jelveny .. " #ffffffszámú egység #87D37Cfelvette a szolgálatot!",v,255,255,255,true)
			end	
		end

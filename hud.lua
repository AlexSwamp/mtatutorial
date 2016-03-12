local x,y = guiGetScreenSize()

function renderHud()
	local hp = getElementHealth(localPlayer)
	local armor = getPedArmor(localPlayer)
	local size_w,size_h = 280,8

	local hpBar = (size_w*(hp/100))
	
	dxDrawRectangle(x/2, 10, 300, 40,tocolor(0, 0, 0, 150))
	dxDrawRectangle(x/2+10, 12, size_w, size_h,tocolor(0, 0, 0, 255/100*30))
	dxDrawRectangle(x/2+10, 12, hpBar, size_h,tocolor(210, 77, 87, 255/100*30))

	dxDrawImage(x/2,10,100,100,'files/ezamegjelenitendokep.png')


end
addEventHandler("onClientRender",getRootElement(),renderHud)

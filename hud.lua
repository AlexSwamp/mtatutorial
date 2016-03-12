local x,y = guiGetScreenSize()

function renderHud()
	local hp = getElementHealth(localPlayer)
	local armor = getPedArmor(localPlayer)
	local size_w,size_h = 280,8 -- panel méretei
	local hpBar = (size_w*(hp/100)) -- hp kiszámítása szélességre
	
	-- rectangle széles, csíkos verzió
	dxDrawRectangle(x/2, 10, 300, 40,tocolor(0, 0, 0, 150)) -- panel bg
	dxDrawRectangle(x/2+10, 12, size_w, size_h,tocolor(0, 0, 0, 255/100*30)) -- hp bg
	dxDrawRectangle(x/2+10, 12, hpBar, size_h,tocolor(210, 77, 87, 255/100*30)) -- hp kirajzolása

	-- Képes széles,csíkos verzió
	dxDrawImage(x/2,10,100,100,'files/cube.png')
	dxDrawImageSection(x+43 + 101, y+h/2+3, hpBar, size_h, 0, 0, hpBar,size_h, 'files/cube.png', 0, 0, 0, tocolor(183,147,59,255))

	-- Textes verzió
	dxDrawText("#D64541Életerő: #ffffff" .. math.ceil(hp) .."%",x/2,10,1,1,tocolor(255,255,255,255),1,"default-bold","left","top",false,false,false,true)
	dxDrawText("#4183D7Armor: #ffffff" .. math.ceil(armor) .."%",x/2+100,10,1,1,tocolor(255,255,255,255),1,"default-bold","left","top",false,false,false,true)
end
addEventHandler("onClientRender",getRootElement(),renderHud)

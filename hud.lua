local x,y = guiGetScreenSize()

function renderHud()
	
	-- Lokalizálás
	local hp = getElementHealth(localPlayer)
	local armor = getPedArmor(localPlayer)
	local size_w,size_h = 280,8 -- panel méretei
	local hpBar = (size_w*(hp/100)) -- hp kiszámítása szélességre
	local armorBar = (size_w*(armor/100)) -- armor kiszámítása szélességre
	local hpBarForSection = -(30*(hp/100)) -- hp kiszámítása a Sectionhoz
	local armorBarForSection = -(30*(armor/100)) -- armor kiszámítása a Sectionhoz

	-- Hud BG felrajzolása
	dxDrawRectangle(x/2, 10, 300, 55,tocolor(0, 0, 0, 150)) -- panel bg

	-- rectangle széles, csíkos verzió
	dxDrawRectangle(x/2+10, 12, size_w, size_h,tocolor(0, 0, 0, 255/100*30)) -- hp bg
	dxDrawRectangle(x/2+10, 12, hpBar, size_h,tocolor(210, 77, 87, 255/100*30)) -- hp kirajzolása
	dxDrawRectangle(x/2+10, 22, size_w, size_h,tocolor(0, 0, 0, 255/100*30)) -- armor bg
	dxDrawRectangle(x/2+10, 22, armorBar, size_h,tocolor(65, 131, 215, 255/100*30)) -- armor kirajzolása

	-- Képes, széles,csíkos verzió[a cube.png kép egy 30,30-s fehér kocka, mely nem áttetsző!]
		-- hp
	dxDrawImage(x/2+250,32,30,30,'files/cube.png',0,0,0,tocolor(0,0,0,255/100*50))
	dxDrawImageSection(x/2+250, 32+30, 30, hpBarForSection, 0, 0, hpBarForSection,30, 'files/cube.png', 0, 0, 0, tocolor(210, 77, 87,255))
		-- armor
	dxDrawImage(x/2+200,32,30,30,'files/cube.png',0,0,0,tocolor(0,0,0,255/100*50))
	dxDrawImageSection(x/2+200, 32+30, 30, armorBarForSection, 0, 0, armorBarForSection,30, 'files/cube.png', 0, 0, 0, tocolor(65, 131, 215,255))

	-- Textes verzió
	dxDrawText("#D64541Életerő: #ffffff" .. math.ceil(hp) .."%",x/2+5,35,1,1,tocolor(255,255,255,255),1,"default-bold","left","top",false,false,false,true)
	dxDrawText("#4183D7Armor: #ffffff" .. math.ceil(armor) .."%",x/2+100,35,1,1,tocolor(255,255,255,255),1,"default-bold","left","top",false,false,false,true)
	
end
addEventHandler("onClientRender",getRootElement(),renderHud)

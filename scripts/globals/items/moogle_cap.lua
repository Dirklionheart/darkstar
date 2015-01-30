-----------------------------------------
--  ID: 16118
--  Moogle Cap
--  Transports the user to their Home Nation
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    return 0;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	local nation = target:getNation(target);
	if (nation == 0) then -- San d'Oria	
		target:setPos(126, 0, -1, 122, ZONE_NORTHERN_SANDORIA);
		return;
	end
	if (nation == 1) then -- Bastok
		target:setPos(106, 0, -71, 130, ZONE_BASTOK_MINES);
		return;
	end
	if (nation == 2) then -- Windurst
		target:setPos(197, -12, 224, 65, ZONE_PORT_WINDURST);
		return;
	end	
	print( "Unable to fetch target's nation." );
end
-----------------------------------------
--  ID: 17040
--  Warp Cudgel
--  Transports the user to their Home Point
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
    target:warp();
end;
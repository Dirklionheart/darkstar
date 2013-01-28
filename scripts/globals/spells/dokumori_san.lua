-----------------------------------------
-- Spell: Dokumori: San
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    local effect = EFFECT_POISON;
    -- Base Stats
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local bonus = AffinityBonus(caster,spell);
    --Duration Calculation
    local duration = 360 * applyResistance(caster,spell,target,dINT,NINJUTSU_SKILL,bonus);
    local power = 20;

    --Calculates resist chanve from Reist Blind
    if(target:hasStatusEffect(effect)) then
        spell:setMsg(75); -- no effect
        return effect;
    end

    if(math.random(0,100) >= target:getMod(MOD_POISONRES)) then
        if(duration >= 120) then
            target:addStatusEffect(effect,power,0,duration);
            spell:setMsg(267);
        else
            spell:setMsg(85);
        end
    else
        spell:setMsg(284);
    end
    return effect;
end;
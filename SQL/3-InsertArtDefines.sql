/*

	Ethnic Diversity (based on R.E.D. Modpack)
	ArtDefines table configuration
	by Nutty and Gedemon (2016)

	This file uses the info stocked in the EDUnitGraphicConfiguration table (from 1-*UnitGraphicConfig.sql) to make all the entries on the 
	various art defines tables. When a model is used multiple times, it will be added once to the tables with unique IDs, and only the required 
	table will be updated.
	
	That means that some entries in the EDUnitGraphicConfiguration table might be redundant (like UC_fxsxml), but it allows us to fill that table 
	without worrying which entry is loaded first, and we can just add the complete entry every time.

*/

-----------------------------------------------
-- Remove "END_OF_INSERT" entries
-----------------------------------------------
DELETE FROM EDUnitGraphicConfiguration WHERE UC_Suffix = 'END_OF_INSERT';

-----------------------------------------------
-- Make ArtDefine_UnitMemberCombats 
-----------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT 'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Suffix || u.UC_MemSuffix,
		a.EnableActions, a.DisableActions, a.MoveRadius, a.ShortMoveRadius, a.ChargeRadius, a.AttackRadius, a.RangedAttackRadius, 
		a.MoveRate, a.ShortMoveRate, a.TurnRateMin, a.TurnRateMax, a.TurnFacingRateMin, a.TurnFacingRateMax, a.RollRateMin, a.RollRateMax, a.PitchRateMin, a.PitchRateMax, a.LOSRadiusScale, a.TargetRadius, a.TargetHeight, a.HasShortRangedAttack, a.HasLongRangedAttack, a.HasLeftRightAttack, a.HasStationaryMelee, a.HasStationaryRangedAttack, a.HasRefaceAfterCombat, a.ReformBeforeCombat, a.HasIndependentWeaponFacing, a.HasOpponentTracking, a.HasCollisionAttack, a.AttackAltitude, a.AltitudeDecelerationDistance, a.OnlyTurnInMovementActions, a.RushAttackFormation
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberCombats AS a 
	WHERE u.UC_Fallback = '' AND a.UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;
--	AND u.UC_fxsxml <> '' 

--fallback
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT 'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Fallback || u.UC_MemSuffix,
		a.EnableActions, a.DisableActions, a.MoveRadius, a.ShortMoveRadius, a.ChargeRadius, a.AttackRadius, a.RangedAttackRadius, 
		a.MoveRate, a.ShortMoveRate, a.TurnRateMin, a.TurnRateMax, a.TurnFacingRateMin, a.TurnFacingRateMax, a.RollRateMin, a.RollRateMax, a.PitchRateMin, a.PitchRateMax, a.LOSRadiusScale, a.TargetRadius, a.TargetHeight, a.HasShortRangedAttack, a.HasLongRangedAttack, a.HasLeftRightAttack, a.HasStationaryMelee, a.HasStationaryRangedAttack, a.HasRefaceAfterCombat, a.ReformBeforeCombat, a.HasIndependentWeaponFacing, a.HasOpponentTracking, a.HasCollisionAttack, a.AttackAltitude, a.AltitudeDecelerationDistance, a.OnlyTurnInMovementActions, a.RushAttackFormation
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberCombats AS a 
	WHERE u.UC_Fallback <> '' AND a.UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;

-----------------------------------------------
-- Make ArtDefine_UnitMemberCombatWeapons 
-----------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
	SELECT 'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Suffix || u.UC_MemSuffix, a."Index", a.SubIndex, a."ID", a.VisKillStrengthMin, a.VisKillStrengthMax, a.ProjectileSpeed, a.ProjectileTurnRateMin, a.ProjectileTurnRateMax, a.HitEffect, a.HitEffectScale, a.HitRadius, a.ProjectileChildEffectScale, a.AreaDamageDelay, a.ContinuousFire, a.WaitForEffectCompletion, a.TargetGround, a.IsDropped, a.WeaponTypeTag, a.WeaponTypeSoundOverrideTag
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberCombatWeapons AS a 
	WHERE u.UC_Fallback = '' AND a.UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;
--	AND u.UC_fxsxml <> '' 

--fallback
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
	SELECT 'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Fallback || u.UC_MemSuffix, a."Index", a.SubIndex, a."ID", a.VisKillStrengthMin, a.VisKillStrengthMax, a.ProjectileSpeed, a.ProjectileTurnRateMin, a.ProjectileTurnRateMax, a.HitEffect, a.HitEffectScale, a.HitRadius, a.ProjectileChildEffectScale, a.AreaDamageDelay, a.ContinuousFire, a.WaitForEffectCompletion, a.TargetGround, a.IsDropped, a.WeaponTypeTag, a.WeaponTypeSoundOverrideTag
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberCombatWeapons AS a 
	WHERE u.UC_Fallback <> '' AND a.UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;

-----------------------------------------------
-- Make ArtDefine_UnitMemberInfos 
-----------------------------------------------
-- Use custom scale with custom model from table
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Suffix || u.UC_MemSuffix, u.UC_Scale, a.ZOffset, a.Domain, 
			u.UC_fxsxml || '.fxsxml', a.MaterialTypeTag, a.MaterialTypeSoundOverrideTag 
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberInfos AS a 
	WHERE u.UC_Fallback = '' AND a.Type = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;
--	AND u.UC_fxsxml <> '' AND u.UC_Scale > 0 

-- Use custom scale with custom model from table (fallback)
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	'ART_DEF_UNIT_MEMBER_' || u.UC_Member || u.UC_Fallback || u.UC_MemSuffix, u.UC_Scale, a.ZOffset, a.Domain, 
			u.UC_fxsxml || '.fxsxml', a.MaterialTypeTag, a.MaterialTypeSoundOverrideTag 
	FROM EDUnitGraphicConfiguration AS u, ArtDefine_UnitMemberInfos AS a 
	WHERE u.UC_Fallback <> '' AND a.Type = 'ART_DEF_UNIT_MEMBER_' || u.UC_Member;

-- Use default scale with custom model from table
-- [Shouldn't need this anymore since Scale is now automatically generated by VBA]
--INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
--	SELECT	'ART_DEF_UNIT_MEMBER_' || UC_Member || UC_Suffix || UC_MemSuffix, Scale, ZOffset, Domain, 
--			UC_fxsxml || '.fxsxml', MaterialTypeTag, MaterialTypeSoundOverrideTag 
--	FROM ArtDefine_UnitMemberInfos JOIN EDUnitGraphicConfiguration ON UC_fxsxml <> '' AND UC_Scale ISNULL;
----	WHERE Type = 'ART_DEF_UNIT_MEMBER_' || UC_Member;


-----------------------------------------------
-- Make ArtDefine_UnitInfoMemberInfos 
-----------------------------------------------
-- REPLACE doesn't work on this table since there isn't a unique requirement and 
-- can't just delete EVERYthing since other mods may have added their own defines

-- Move all entries to a temporary database, so I can later restore ones from prior-activated mods
CREATE TABLE ArtDefine_UnitInfoMemberInfos_Temp AS SELECT * FROM ArtDefine_UnitInfoMemberInfos;
DELETE FROM ArtDefine_UnitInfoMemberInfos;

-- Use custom member(s) with custom number of members
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	'ART_DEF_UNIT_' || UC_Template || UC_Suffix, 
	'ART_DEF_UNIT_MEMBER_' || UC_Member || UC_Suffix || UC_MemSuffix, UC_Num
	FROM EDUnitGraphicConfiguration WHERE UC_Fallback = '';
--	WHERE UC_fxsxml <> '' AND UC_Num > 0

-- Use custom member(s) with custom number of members
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	'ART_DEF_UNIT_' || UC_Template || UC_Suffix, 
	'ART_DEF_UNIT_MEMBER_' || UC_Member || UC_Fallback || UC_MemSuffix, UC_Num
	FROM EDUnitGraphicConfiguration WHERE UC_Fallback <> '';

-- Replace llamas with donkeys for Oceanic civs (maybe just delete the quadruped altogether?)
UPDATE ArtDefine_UnitInfoMemberInfos SET UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_SETTLER_DONKEY'
	WHERE UnitInfoType = 'ART_DEF_UNIT__SETTLER_OCEAN' AND UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_SETTLER_AMER_LLAMA';

-- Use custom member(s) with default number of members
-- [Shouldn't need this anymore since NumMembers is now automatically generated by VBA]
--INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
--	SELECT 'ART_DEF_UNIT_' || UC_Template || UC_Suffix, 
--	'ART_DEF_UNIT_MEMBER_' || UC_Member || UC_Suffix || UC_MemSuffix, NumMembers
--	FROM ArtDefine_UnitInfoMemberInfos 
--	JOIN EDUnitGraphicConfiguration ON UC_fxsxml <> '' AND UC_Num ISNULL;
----	WHERE UnitInfoType = 'ART_DEF_UNIT_' || UC_Template;

-- Create new entries based on fallback member(s) [i.e., no fxsxml]
-- [Shouldn't need this anymore since Model is now automatically generated by VBA]
--INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
--	SELECT	'ART_DEF_UNIT_' || UC_Template || UC_Suffix, a1.UnitMemberInfoType, a1.NumMembers 
--	FROM ArtDefine_UnitInfoMemberInfos AS a1 
--	JOIN EDUnitGraphicConfiguration ON UC_Suffix <> '' AND UC_Fallback <> '' AND UC_fxsxml = ''
--	WHERE a1.UnitInfoType = 'ART_DEF_UNIT_' || UC_Template || UC_Fallback 
--	AND NOT EXISTS (SELECT 1 FROM ArtDefine_UnitInfoMemberInfos AS a2 
--	WHERE a2.UnitInfoType = 'ART_DEF_UNIT_' || UC_Template || UC_Suffix);

-- Create new entries based on fallback member(s) from Civilizations table suffix where one doesn't already exist
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT REPLACE(a1.UnitInfoType, c.ArtStyleSuffix, REPLACE(c.Type, 'CIVILIZATION', '')), a1.UnitMemberInfoType, a1.NumMembers 
	FROM ArtDefine_UnitInfoMemberInfos AS a1 
	JOIN Civilizations AS c ON (a1.UnitInfoType LIKE '%' || c.ArtStyleSuffix) 
	WHERE NOT EXISTS (SELECT 1 FROM ArtDefine_UnitInfoMemberInfos AS a2 
	WHERE a2.UnitInfoType = REPLACE(a1.UnitInfoType, c.ArtStyleSuffix, REPLACE(c.Type, 'CIVILIZATION', '')));

-- Restore any entries from other mods that had been activated prior to this point
INSERT INTO ArtDefine_UnitInfoMemberInfos SELECT * FROM ArtDefine_UnitInfoMemberInfos_Temp AS t
	WHERE NOT EXISTS (SELECT 1 FROM ArtDefine_UnitInfoMemberInfos AS a WHERE a.UnitInfoType = t.UnitInfoType);
DROP TABLE ArtDefine_UnitInfoMemberInfos_Temp;


---------------------------------------------------------
-- Make ArtDefine_UnitInfos from unique entries
---------------------------------------------------------
-- Use custom formation
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
	SELECT DISTINCT 'ART_DEF_UNIT_' || u.UC_Template || u.UC_Suffix, a.DamageStates, u.UC_Form, a.UnitFlagAtlas, a.UnitFlagIconOffset, a.IconAtlas, a.PortraitIndex 
	FROM ArtDefine_UnitInfos AS a, EDUnitGraphicConfiguration AS u 
	WHERE Type = 'ART_DEF_UNIT_' || u.UC_Template;
--	AND UC_Form NOT NULL 

-- Use default formation
-- [Shouldn't need this anymore since Formation is now automatically generated by VBA]
--INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
--	SELECT DISTINCT 'ART_DEF_UNIT_' || UC_Template || UC_Suffix, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex 
--	FROM ArtDefine_UnitInfos 
--	JOIN EDUnitGraphicConfiguration ON UC_fxsxml <> '' AND UC_Form ISNULL 
--	WHERE Type = 'ART_DEF_UNIT_' || UC_Template;

-- Make entries from fallbacks with custom formation
-- [Shouldn't need this anymore since Model is now automatically generated by VBA]
--INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
--	SELECT DISTINCT 'ART_DEF_UNIT_' || u1.UC_Template || u1.UC_Suffix, DamageStates, u2.UC_Form, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex 
--	FROM ArtDefine_UnitInfos 
--	JOIN EDUnitGraphicConfiguration AS u1 ON u1.UC_fxsxml = '' AND u1.UC_Fallback <> '' 
--	JOIN EDUnitGraphicConfiguration AS u2 ON u2.UC_Form NOT NULL AND u2.UC_Template = u1.UC_Template AND u2.UC_Suffix = u1.UC_Fallback 
--	WHERE Type = 'ART_DEF_UNIT_' || u1.UC_Template;

-- Make entries from fallbacks with default formation
-- [Shouldn't need this anymore since Model is now automatically generated by VBA]
--INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
--	SELECT DISTINCT 'ART_DEF_UNIT_' || u1.UC_Template || u1.UC_Suffix, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex 
--	FROM ArtDefine_UnitInfos 
--	JOIN EDUnitGraphicConfiguration AS u1 ON u1.UC_fxsxml = '' AND u1.UC_Fallback <> '' 
--	JOIN EDUnitGraphicConfiguration AS u2 ON u2.UC_Form ISNULL AND u2.UC_Template = u1.UC_Template AND u2.UC_Suffix = u1.UC_Fallback 
--	WHERE Type = 'ART_DEF_UNIT_' || u1.UC_Template;

-- Create new entries based on fallback member(s) from Civilizations table suffix where one doesn't already exist
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
	SELECT REPLACE(a1.Type, c.ArtStyleSuffix, REPLACE(c.Type, 'CIVILIZATION', '')), a1.DamageStates, a1.Formation, a1.UnitFlagAtlas, a1.UnitFlagIconOffset, a1.IconAtlas, a1.PortraitIndex 
	FROM ArtDefine_UnitInfos AS a1, Civilizations AS c 
	WHERE (a1.Type LIKE '%' || c.ArtStyleSuffix) AND NOT EXISTS (SELECT 1 FROM ArtDefine_UnitInfos AS a2 
	WHERE a2.Type = REPLACE(a1.Type, c.ArtStyleSuffix, REPLACE(c.Type, 'CIVILIZATION', '')));


-------------------------------------------------------------------------------------------------------------------------------------------------------
-- Delete temporary EDUnitGraphicConfiguration table
-------------------------------------------------------------------------------------------------------------------------------------------------------
--DROP TABLE EDUnitGraphicConfiguration;

-------------------------------------------------------------------------------------------------------------------------------------------------------
-- Replace Infantry from vanilla with WWII Infantry art defines
-------------------------------------------------------------------------------------------------------------------------------------------------------	
UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_WW2_INFANTRY' WHERE Type = 'UNIT_INFANTRY';

-------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fix higher limit (above that number unit models are not shown) [doesn't deal with multi-model formations of 32+]
-------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 32 WHERE NumMembers > 32;

-------------------------------------------------------------------------------------------------------------------------------------------------------
-- Set all units to have potential cultural variation (ethnic diversity) except where era variation is enabled (note EraDiversity enables some)
-------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE Units ADD COLUMN 'EDEraVariation' INTEGER DEFAULT 0;

UPDATE Units SET UnitArtInfoCulturalVariation = 1 WHERE UnitArtInfoEraVariation <> 1;

CREATE TRIGGER EDCulturalVariation
	AFTER INSERT ON Units
	BEGIN
UPDATE Units SET UnitArtInfoCulturalVariation = 1 WHERE UnitArtInfoEraVariation <> 1;
	END;
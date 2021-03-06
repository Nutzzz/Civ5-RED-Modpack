/*

	Ethnic Diversity
	Era Diversity file
	by Nutty (2016)

	Units that need both era AND cultural diversity, implemented by EraDiversity.lua

*/

--Automatic as defined by EDUnitGraphicConfiguration [not yet implemented; going to have to convert ArtDefine to Unit and import EraVar column]:
--UPDATE Units SET UnitArtInfoCulturalVariation = 1, UnitArtInfoEraVariation = 0, EDEraVariation = 1
--	WHERE Type = (SELECT 'UNIT_' || UC_Template FROM EDUnitGraphicConfiguration WHERE UC_EraVar = 1);

--Hard-coded for now:

--Disable built-in era variation and enable cultural variation
UPDATE Units SET UnitArtInfoCulturalVariation = 1, UnitArtInfoEraVariation = 0, EDEraVariation = 1
	WHERE Type IN
	('UNIT_CARGO_SHIP', 
	'UNIT_ENGINEER',  
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER', 
	'UNIT_CARAVAN', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');

--	'UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET', 
--	'UNIT_VENETIAN_MERCHANT', 
--	'UNIT_ARCHAEOLOGIST',

--Renaissance Era
--[Cargo Ship is the only non-embarked unit with 2 model upgrades; EDEraVariation set to 1 here too]
INSERT INTO Units (              Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_RENAISSANCE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 1
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_RENAISSANCE' = a.Type)
	WHERE u.Type IN 
	('UNIT_CARGO_SHIP');
--[Religious Units aren't era varied by default and don't have new portraits]
--INSERT INTO Units (              Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
--                       UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
--	SELECT (u.Type || '_RENAISSANCE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
--   u.UnitArtInfo || '_RENAISSANCE',                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, u.PortraitIndex, u.IconAtlas, u.UnitFlagAtlas, 0
--	FROM Units AS u
--	WHERE u.Type IN 
--	('UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET');

--Industrial Era (LATE)
INSERT INTO Units (       Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_LATE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_LATE' = a.Type)
	WHERE u.Type IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Units (             Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_INDUSTRIAL'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 1
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_RENAISSANCE' = a.Type)
	WHERE u.Type IN 
	('UNIT_CARGO_SHIP');
--[Religious Units aren't era varied by default and don't have new portraits]
--INSERT INTO Units (           Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
--                        UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
--	SELECT (u.Type || '_INDUSTRIAL'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
--   (u.UnitArtInfo || '_INDUSTRIAL'),                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, u.PortraitIndex, u.IconAtlas, u.UnitFlagAtlas, 0
--	FROM Units AS u
--	WHERE u.Type IN 
--	('UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET');

--Modern Era
INSERT INTO Units (       Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_MODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_LATE' = a.Type)
	WHERE u.Type IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Units (         Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
                    UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_MODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	 (u.Type || '_RENAISSANCE'),                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 1
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_RENAISSANCE' = a.Type)
	WHERE u.Type IN 
	('UNIT_CARGO_SHIP');
--[Religious Units aren't era varied by default and don't have new portraits]
--INSERT INTO Units (       Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
--                         UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
--	SELECT (u.Type || '_MODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
--   (u.UnitArtInfo || '_RENAISSANCE'),                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, u.PortraitIndex, u.IconAtlas, u.UnitFlagAtlas, 0
--	FROM Units AS u
--	WHERE u.Type IN 
--	('UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET');

--Atomic Era (POSTMODERN)
INSERT INTO Units (             Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_POSTMODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_POSTMODERN' = a.Type)
	WHERE u.Type IN 
	('UNIT_CARAVAN', 
	'UNIT_CARGO_SHIP', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');
INSERT INTO Units (             Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_POSTMODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_LATE' = a.Type)
	WHERE u.Type IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
--[Religious Units aren't era varied by default and don't have new portraits]
--INSERT INTO Units (           Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
--                         UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
--	SELECT (u.Type || '_POSTMODERN'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
--   (u.UnitArtInfo || '_RENAISSANCE'),                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, u.PortraitIndex, u.IconAtlas, u.UnitFlagAtlas, 0
--	FROM Units AS u
--	WHERE u.Type IN 
--	('UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET');

--Information Era (FUTURE)
INSERT INTO Units (         Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_FUTURE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_POSTMODERN' = a.Type)
	WHERE u.Type IN 
	('UNIT_CARAVAN', 
	'UNIT_CARGO_SHIP', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');
INSERT INTO Units (       Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
     UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
	SELECT (u.Type || '_FUTURE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
	      a.Type,                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, a.PortraitIndex, a.IconAtlas, u.UnitFlagAtlas, 0
	FROM Units AS u
	JOIN ArtDefine_UnitInfos AS a ON (u.UnitArtInfo || '_LATE' = a.Type)
	WHERE u.Type IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
--[Religious Units aren't era varied by default and don't have new portraits]
--INSERT INTO Units (       Type,   Description,   Civilopedia,   Strategy,   Help,   Requirements, Cost, FaithCost,   Moves,   Immobile,   Class,   Special,   Capture,   Domain,   CivilianAttackPriority,   DefaultUnitAI,   MilitarySupport,   MilitaryProduction,   OneShotTourism,   OneShotTourismPercentOthers,   PrereqResources,   Mechanized,   PrereqTech,   HurryCostModifier,   AdvancedStartCost,   WorkRate,   BaseHurry,   HurryMultiplier,   BaseGold,   NumGoldPerEra,   SpreadReligion,   RemoveHeresy,   ReligionSpreads,   ReligiousStrength,   FoundReligion,   RequiresEnhancedReligion,   ProhibitsSpread,   CanBuyCityState,   Trade,   XPValueDefense,   CombatLimit,   NoMaintenance,
--                         UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation,   DontShowYields, ShowInPedia,   MoveRate,   UnitFlagIconOffset,   PortraitIndex,   IconAtlas,   UnitFlagAtlas, EDEraVariation)
--	SELECT (u.Type || '_FUTURE'), u.Description, u.Civilopedia, u.Strategy, u.Help, u.Requirements,   -1,         0, u.Moves, u.Immobile, u.Class, u.Special, u.Capture, u.Domain, u.CivilianAttackPriority, u.DefaultUnitAI, u.MilitarySupport, u.MilitaryProduction, u.OneShotTourism, u.OneShotTourismPercentOthers, u.PrereqResources, u.Mechanized, u.PrereqTech, u.HurryCostModifier, u.AdvancedStartCost, u.WorkRate, u.BaseHurry, u.HurryMultiplier, u.BaseGold, u.NumGoldPerEra, u.SpreadReligion, u.RemoveHeresy, u.ReligionSpreads, u.ReligiousStrength, u.FoundReligion, u.RequiresEnhancedReligion, u.ProhibitsSpread, u.CanBuyCityState, u.Trade, u.XPValueDefense, u.CombatLimit, u.NoMaintenance, 
--   (u.UnitArtInfo || '_RENAISSANCE'),                            1,                       0, u.DontShowYields,           0, u.MoveRate, u.UnitFlagIconOffset, u.PortraitIndex, u.IconAtlas, u.UnitFlagAtlas, 0
--	FROM Units AS u
--	WHERE u.Type IN 
--	('UNIT_MISSIONARY', 
--	'UNIT_INQUISITOR', 
--	'UNIT_PROPHET');

/*
INSERT OR REPLACE ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE', EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSIONARY';
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE_F1', EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSIONARY_01';
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE_F2', EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSIONARY_02';
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE', Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY';
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE_F1', Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY_01';
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT 'ART_DEF_UNIT_MEMBER_MISSIONARY_RENAISSANCE_F2', Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY_02';
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex)
	SELECT 'ART_DEF_UNIT_MISSIONARY_RENAISSANCE', DamageStates, Formation, UnitFlagAtlas, UnitFlagIconOffset, IconAtlas, PortraitIndex
	FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_MISSIONARY';
*/

--EraVariation enabled by default but no new art defines:
--'UNIT_VENETIAN_MERCHANT'
--'UNIT_ARCHAEOLOGIST'


INSERT INTO Unit_AITypes (UnitType, UnitAIType) 
	SELECT 'UNIT_CARGO_SHIP_RENAISSANCE', UnitAIType FROM Unit_AITypes 
	WHERE UnitType = 'UNIT_CARGO_SHIP';
INSERT INTO Unit_AITypes (UnitType, UnitAIType) 
	SELECT UnitType || '_LATE', UnitAIType FROM Unit_AITypes 
	WHERE UnitType IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Unit_AITypes (UnitType, UnitAIType) 
	SELECT UnitType || '_POSTMODERN', UnitAIType FROM Unit_AITypes 
	WHERE UnitType IN 
	('UNIT_CARAVAN', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');

INSERT INTO Unit_Builds (UnitType, BuildType) 
	SELECT 'UNIT_CARGO_SHIP_RENAISSANCE', BuildType FROM Unit_Builds 
	WHERE UnitType = 'UNIT_CARGO_SHIP';
INSERT INTO Unit_Builds (UnitType, BuildType) 
	SELECT UnitType || '_LATE', BuildType FROM Unit_Builds 
	WHERE UnitType IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Unit_Builds (UnitType, BuildType) 
	SELECT UnitType || '_POSTMODERN', BuildType FROM Unit_Builds 
	WHERE UnitType IN 
	('UNIT_CARAVAN', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');

INSERT INTO Unit_Flavors (UnitType, FlavorType, Flavor)
	SELECT 'UNIT_CARGO_SHIP_RENAISSANCE', FlavorType, Flavor FROM Unit_Flavors 
	WHERE UnitType = 'UNIT_CARGO_SHIP';
INSERT INTO Unit_Flavors (UnitType, FlavorType, Flavor)
	SELECT UnitType || '_LATE', FlavorType, Flavor FROM Unit_Flavors 
	WHERE UnitType IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Unit_Flavors (UnitType, FlavorType, Flavor)
	SELECT UnitType || '_POSTMODERN', FlavorType, Flavor FROM Unit_Flavors 
	WHERE UnitType IN 
	('UNIT_CARAVAN', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');

INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
	SELECT 'UNIT_CARGO_SHIP_RENAISSANCE', PromotionType FROM Unit_FreePromotions 
	WHERE UnitType = 'UNIT_CARGO_SHIP'; 
INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
	SELECT UnitType || '_LATE', PromotionType FROM Unit_FreePromotions 
	WHERE UnitType IN 
	('UNIT_ENGINEER', 
	'UNIT_GREAT_GENERAL', 
	'UNIT_GREAT_ADMIRAL', 
	'UNIT_MERCHANT', 
	'UNIT_SCIENTIST', 
	'UNIT_WORKBOAT', 
	'UNIT_WORKER');
INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
	SELECT UnitType || '_POSTMODERN', PromotionType FROM Unit_FreePromotions 
	WHERE UnitType IN 
	('UNIT_CARAVAN', 
	'UNIT_ARTIST', 
	'UNIT_MUSICIAN', 
	'UNIT_WRITER');


-- Support Promotion for Machiavelli's Unit_CreatedFunctions.lua
INSERT OR ABORT INTO UnitPromotions 
	(                     Type,                 Description,                             Help,             Sound, CannotBeChosen, PortraitIndex, 
	            IconAtlas,      PediaType,                  PediaEntry)
	SELECT 'PROMOTION_CREATED', 'TXT_KEY_PROMOTION_CREATED', 'TXT_KEY_PROMOTION_CREATED_HELP', 'AS2D_IF_LEVELUP',              1,            26,
		'PROMOTION_ATLAS', 'PEDIA_SHARED', 'TXT_KEY_PROMOTION_CREATED';

INSERT OR REPLACE INTO Language_en_US 
	VALUES ('TXT_KEY_PROMOTION_CREATED', 'Created', NULL, NULL);
INSERT OR REPLACE INTO Language_en_US 
	VALUES ('TXT_KEY_PROMOTION_CREATED_HELP', 'This promotion is only used internally and has no effect. Ignore it.', NULL, NULL);


-- COMPATIBILITY (Enlightenment Era)
--Disables carrack cargo ships since the models are used for a new EE unit
DELETE FROM ArtDefine_UnitInfos WHERE Type IN
	('CARGO_SHIP_RENAISSANCE_OTTOMAN',  
	'CARGO_SHIP_RENAISSANCE_RUSSIA', 
	'CARGO_SHIP_RENAISSANCE_ENGLAND', 
	'CARGO_SHIP_RENAISSANCE_FRANCE', 
	'CARGO_SHIP_RENAISSANCE_MED', 
	'CARGO_SHIP_RENAISSANCE_ROME', 
	'CARGO_SHIP_RENAISSANCE_NORTHAF', 
	'CARGO_SHIP_RENAISSANCE_SWEDEN')
	AND EXISTS (SELECT 1 FROM Units WHERE Type = 'UNIT_EE_CARRACK'); 
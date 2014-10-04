/*

	R.E.D. Modpack
	Russia configuration file
	by Gedemon (2012)
	
*/


-- Replace UU Template ---------------------------------------------------------------------------------------------------
--UPDATE ArtDefine_UnitMemberInfos SET Model = 'unit_model_name' WHERE Type = 'ART_DEF_UNIT_MEMBER_U_RUSSIA';
--------------------------------------------------------------------------------------------------------------------------

INSERT INTO UnitGraphicConfiguration
		(	UC_CivSuffix,	UC_MemberSuffix,	UC_fxsxml,						UC_TemplateType,					UC_TemplateMemberType,								UC_NumMember,	UC_Formation,	UC_Scale)
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ANTI_AIRCRAFT_GUN',	'ART_DEF_UNIT_MEMBER_ANTIAIRCRAFTGUN',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ANTI_TANK_GUN',		'ART_DEF_UNIT_MEMBER_ANTITANKGUN',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'Archer_Russia.fxsxml',			'ART_DEF_UNIT_ARCHER',				'ART_DEF_UNIT_MEMBER_ARCHER',						0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'ML-20.fxsxml',					'ART_DEF_UNIT_ARTILLERY',			'ART_DEF_UNIT_MEMBER_ARTILLERY',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ATOMIC_BOMB',			'ART_DEF_UNIT_MEMBER_ATOMICBOMB',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Sovetsky_Soyuz_Class.fxsxml',		'ART_DEF_UNIT_BATTLESHIP',			'ART_DEF_UNIT_MEMBER_BATTLESHIP',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Petlyakov_Pe-8.fxsxml',			'ART_DEF_UNIT_BOMBER',				'ART_DEF_UNIT_MEMBER_BOMBER',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_CANNON',				'ART_DEF_UNIT_MEMBER_CANNON',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_CARAVEL',				'ART_DEF_UNIT_MEMBER_CARAVEL',						0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Project_71.fxsxml',				'ART_DEF_UNIT_CARRIER',				'ART_DEF_UNIT_MEMBER_CARRIER',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_CATAPULT',			'ART_DEF_UNIT_MEMBER_CATAPULT',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_CAVALRY',				'ART_DEF_UNIT_MEMBER_CAVALRY',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_CHARIOT_ARCHER',		'ART_DEF_UNIT_MEMBER_CHARIOTARCHER',				0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Crossbowman_Russia.fxsxml',		'ART_DEF_UNIT_CROSSBOWMAN',			'ART_DEF_UNIT_MEMBER_CROSSBOWMAN',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Gnevny_Class.fxsxml',				'ART_DEF_UNIT_DESTROYER',			'ART_DEF_UNIT_MEMBER_DESTROYER',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Yakovlev_Yak-9.fxsxml',			'ART_DEF_UNIT_FIGHTER',				'ART_DEF_UNIT_MEMBER_FIGHTER',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_FRIGATE',				'ART_DEF_UNIT_MEMBER_FRIGATE',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GALLEY',				'ART_DEF_UNIT_MEMBER_GALLEY',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GUIDED_MISSILE',		'ART_DEF_UNIT_MEMBER_GUIDEDMISSILE',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_HELICOPTER_GUNSHIP',	'ART_DEF_UNIT_MEMBER_HELICOPTERGUNSHIP',			0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Horseman_Russia.fxsxml',			'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						1,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Horseman_Russia_v2.fxsxml',		'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Horseman_Russia.fxsxml',			'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Horseman_Russia_v2.fxsxml',		'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Infantry_Russia.fxsxml',			'ART_DEF_UNIT_INFANTRY',			'ART_DEF_UNIT_MEMBER_INFANTRY',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_IRONCLAD',			'ART_DEF_UNIT_MEMBER_IRONCLAD',						0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'MiG29Russia.fxsxml',				'ART_DEF_UNIT_JET_FIGHTER',			'ART_DEF_UNIT_MEMBER_JETFIGHTER',					0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Knight_Russia.fxsxml',				'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						1,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Knight_Russia_v2.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',		'Knight_Russia_v3.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Knight_Russia.fxsxml',				'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL

--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_LANCER',				'ART_DEF_UNIT_MEMBER_LANCER',						0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Longswordsman_Russia.fxsxml',		'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Longswordsman_Russia_v2.fxsxml',	'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',		'Longswordsman_Russia_v3.fxsxml',	'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Longswordsman_Russia.fxsxml',		'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Longswordsman_Russia_v2.fxsxml',	'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',		'Longswordsman_Russia_v3.fxsxml',	'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				3,				NULL,			0		UNION ALL

--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MECH',				'ART_DEF_UNIT_MEMBER_MECH',							0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'BMP2Russia.fxsxml',			'ART_DEF_UNIT_MECHANIZED_INFANTRY',	'ART_DEF_UNIT_MEMBER_MECHANIZEDINFANTRY',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MISSILE_CRUISER',		'ART_DEF_UNIT_MEMBER_MISSILECRUISER',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ROCKET_ARTILLERY',	'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MOBILE_SAM',			'ART_DEF_UNIT_MEMBER_MOBILESAM',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'T90.fxsxml',					'ART_DEF_UNIT_MODERN_ARMOR',		'ART_DEF_UNIT_MEMBER_MODERNARMOR',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Streltsy_Black_Coat.fxsxml',		'ART_DEF_UNIT_MUSKETMAN',			'ART_DEF_UNIT_MEMBER_MUSKETMAN',					6,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Streltsy_Black_Cap.fxsxml',		'ART_DEF_UNIT_MUSKETMAN',			'ART_DEF_UNIT_MEMBER_MUSKETMAN',					2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Streltsy_Black_Coat.fxsxml',		'ART_DEF_UNIT_MUSKETMAN',			'ART_DEF_UNIT_MEMBER_MUSKETMAN',					7,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Streltsy_Black_Cap.fxsxml',		'ART_DEF_UNIT_MUSKETMAN',			'ART_DEF_UNIT_MEMBER_MUSKETMAN',					4,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_NUCLEAR_MISSILE',		'ART_DEF_UNIT_MEMBER_NUCLEARMISSILE',				0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'akula.fxsxml',					'ART_DEF_UNIT_NUCLEAR_SUBMARINE',	'ART_DEF_UNIT_MEMBER_NUCLEARSUBMARINE',				0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Paratrooper_Russia_MG.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					4,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Paratrooper_Russia.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Paratrooper_Russia_MG.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					4,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Paratrooper_Russia.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					2,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Pikeman_Russia.fxsxml',			'ART_DEF_UNIT_PIKEMAN',				'ART_DEF_UNIT_MEMBER_PIKEMAN',						0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',				'civ5_rusrm.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',			'civ5_rusrm_2.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						4,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',			'civ5_rusrm2.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',				'civ5_rusrm.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',			'civ5_rusrm_2.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',			'civ5_rusrm2.fxsxml',			'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						3,				NULL,			0		UNION ALL

--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SCOUT',				'ART_DEF_UNIT_MEMBER_SCOUT',						0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Spearman_Russia.fxsxml',			'ART_DEF_UNIT_SPEARMAN',			'ART_DEF_UNIT_MEMBER_SPEARMAN',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_STEALTH_BOMBER',		'ART_DEF_UNIT_MEMBER_STEALTHBOMBER',				0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Submarine_Shchuka.fxsxml',			'ART_DEF_UNIT_SUBMARINE',			'ART_DEF_UNIT_MEMBER_SUBMARINE',					0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'Swordsman_Russia.fxsxml',			'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					2,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Swordsman_Russia_v2.fxsxml',		'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',		'Swordsman_Russia_v3.fxsxml',		'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'Swordsman_Russia.fxsxml',			'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'Swordsman_Russia_v2.fxsxml',		'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V3',		'Swordsman_Russia_v3.fxsxml',		'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					2,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',				'T-34-85.fxsxml',				'ART_DEF_UNIT_TANK',				'ART_DEF_UNIT_MEMBER_TANK',							0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_TRANSPORT',			'ART_DEF_UNIT_MEMBER_TRANSPORT',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_TREBUCHET',			'ART_DEF_UNIT_MEMBER_TREBUCHET',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_TRIREME',				'ART_DEF_UNIT_MEMBER_TRIREME',						0,				NULL,			0		UNION ALL

SELECT	'RUSSIA',		'RUSSIA',			'RussiaWarrior.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						5,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'RussiaWarrior2.fxsxml',			'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						4,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'RussiaWarrior.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						3,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA_V2',		'RussiaWarrior2.fxsxml',			'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						6,				NULL,			0		UNION ALL

--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_WORKBOAT',			'ART_DEF_UNIT_MEMBER_WORKBOAT',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLUTE',		0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_TAMBOURINE',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BIGDRUMMER',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BAGPIPER',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_DRUMMER',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLAGBEARER',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ENGINEER',			'ART_DEF_UNIT_MEMBER_GREATENGINEER_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GENERAL',				'ART_DEF_UNIT_MEMBER_GREATGENERAL_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_LEADER',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V1',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V2',	0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SCIENTIST',			'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT__WORKER',				'ART_DEF_UNIT_MEMBER_WORKER_EURO',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT__WORKER_LATE',		'ART_DEF_UNIT_MEMBER_WORKER_EURO_LATE',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT__SETTLER',			'ART_DEF_UNIT_MEMBER_EUROMALE45',					0,				NULL,			0		UNION ALL
SELECT	'RUSSIA',		'RUSSIA',			'russian_galleon.fxsxml',			'ART_DEF_UNIT_GALLEON',				'ART_DEF_UNIT_MEMBER_GALLEON',						0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SS_BOOSTER',			'ART_DEF_UNIT_MEMBER_SS_BOOSTER',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SS_CAPSULE',			'ART_DEF_UNIT_MEMBER_SS_CAPSULE',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SS_ENGINE',			'ART_DEF_UNIT_MEMBER_SS_ENGINE',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SS_STASIS_CHAMBER',	'ART_DEF_UNIT_MEMBER_SS_STASIS_CHAMBER',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ARTIST_LATE',			'ART_DEF_UNIT_MEMBER_GREATARTIST_LATE',				0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_ENGINEER_LATE',		'ART_DEF_UNIT_MEMBER_GREATENGINEER_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GENERAL_LATE',		'ART_DEF_UNIT_MEMBER_GREATGENERAL_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT_LATE',		'ART_DEF_UNIT_MEMBER_GREATMERCHANT_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_SCIENTIST_LATE',		'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_WORKBOAT_LATE',		'ART_DEF_UNIT_MEMBER_WORKBOAT_INDUSTRIAL',			0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_PRIVATEER',			'ART_DEF_UNIT_MEMBER_PRIVATEER',					0,				NULL,			0		UNION ALL
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GREAT_ADMIRAL',		'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL',				0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GREAT_ADMIRAL_LATE',	'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL_LATE',			0,				NULL,			0		UNION ALL	
SELECT	'RUSSIA',		'RUSSIA',			'Composite_Bowman_Russia.fxsxml',	'ART_DEF_UNIT_COMPOSITE_BOWMAN',	'ART_DEF_UNIT_MEMBER_COMPOSITE_BOWMAN',				0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MACHINEGUN',			'ART_DEF_UNIT_MEMBER_MACHINEGUN',					0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GALLEASS',			'ART_DEF_UNIT_MEMBER_GALLEASS',						0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GATLINGGUN',			'ART_DEF_UNIT_MEMBER_GATLINGGUN',					0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_GREAT_PROPHET',		'ART_DEF_UNIT_MEMBER_GREAT_PROPHET',				0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MISSIONARY',			'ART_DEF_UNIT_MEMBER_MISSIONARY',					0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_INQUISITOR',			'ART_DEF_UNIT_MEMBER_INQUISITOR',					0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_XP_PRIVATEER',		'ART_DEF_UNIT_MEMBER_XP_PRIVATEER',					0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_MARINE',				'ART_DEF_UNIT_MEMBER_MARINE',						0,				NULL,			0		UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_WW1_BOMBER',			'ART_DEF_UNIT_MEMBER_WW1_BOMBER',					0,				NULL,			0		UNION ALL	
SELECT	'RUSSIA',		'RUSSIA',			'Polikarpov_Po-2.fxsxml',			'ART_DEF_UNIT_WW1_FIGHTER',			'ART_DEF_UNIT_MEMBER_WW1_FIGHTER',					0,				NULL,			0		UNION ALL	
SELECT	'RUSSIA',		'RUSSIA',				'rusgw1.fxsxml',				'ART_DEF_UNIT_WW1_INFANTRY',		'ART_DEF_UNIT_MEMBER_WW1_INFANTRY',					0,				NULL,			0		UNION ALL	
SELECT	'RUSSIA',		'RUSSIA',			'Renault_FT-17_Russia.fxsxml',		'ART_DEF_UNIT_WW1_TANK',			'ART_DEF_UNIT_MEMBER_WW1_TANK',						4,				'FourBigGuns',	0.11	UNION ALL	
--SELECT	'RUSSIA',		'RUSSIA',			'unit_model_name',				'ART_DEF_UNIT_XCOM_SQUAD',			'ART_DEF_UNIT_MEMBER_XCOM_SQUAD',					0,				NULL,			0		UNION ALL	

SELECT	'END_OF_INSERT',		NULL,			NULL,							NULL,								NULL,											NULL,				NULL,			NULL;

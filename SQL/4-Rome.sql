/*

	R.E.D. Modpack
	ROME configuration file
	by Gedemon (2012)

*/


-- Replace UU Template ---------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Swordsman_Rome.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ROMAN_LEGION';
--------------------------------------------------------------------------------------------------------------------------

INSERT INTO UnitGraphicConfiguration
		(	UC_CivSuffix,	UC_MemberSuffix,	UC_fxsxml,						UC_TemplateType,					UC_TemplateMemberType,								UC_NumMember,	UC_Formation,	UC_Scale	)
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ANTI_AIRCRAFT_GUN',	'ART_DEF_UNIT_MEMBER_ANTIAIRCRAFTGUN',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ANTI_TANK_GUN',		'ART_DEF_UNIT_MEMBER_ANTITANKGUN',					0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Archer_Rome.fxsxml',				'ART_DEF_UNIT_ARCHER',				'ART_DEF_UNIT_MEMBER_ARCHER',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTILLERY',			'ART_DEF_UNIT_MEMBER_ARTILLERY',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ATOMIC_BOMB',			'ART_DEF_UNIT_MEMBER_ATOMICBOMB',					0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Littorio_Class.fxsxml',			'ART_DEF_UNIT_BATTLESHIP',			'ART_DEF_UNIT_MEMBER_BATTLESHIP',					0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',	'Savoia-Marchetti_SM.79_Sparviero.fxsxml',	'ART_DEF_UNIT_BOMBER',				'ART_DEF_UNIT_MEMBER_BOMBER',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_CANNON',				'ART_DEF_UNIT_MEMBER_CANNON',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_CARAVEL',				'ART_DEF_UNIT_MEMBER_CARAVEL',						0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Aquila_Class.fxsxml',				'ART_DEF_UNIT_CARRIER',				'ART_DEF_UNIT_MEMBER_CARRIER',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_CATAPULT',			'ART_DEF_UNIT_MEMBER_CATAPULT',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_CAVALRY',				'ART_DEF_UNIT_MEMBER_CAVALRY',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_CHARIOT_ARCHER',		'ART_DEF_UNIT_MEMBER_CHARIOTARCHER',				0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Crossbowman_Rome.fxsxml',			'ART_DEF_UNIT_CROSSBOWMAN',			'ART_DEF_UNIT_MEMBER_CROSSBOWMAN',					0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Soldati_Class.fxsxml',				'ART_DEF_UNIT_DESTROYER',			'ART_DEF_UNIT_MEMBER_DESTROYER',					0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Fiat_G.55_Centauro.fxsxml',		'ART_DEF_UNIT_FIGHTER',				'ART_DEF_UNIT_MEMBER_FIGHTER',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_FRIGATE',				'ART_DEF_UNIT_MEMBER_FRIGATE',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GALLEY',				'ART_DEF_UNIT_MEMBER_GALLEY',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GUIDED_MISSILE',		'ART_DEF_UNIT_MEMBER_GUIDEDMISSILE',				0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'mangusta.fxsxml',				'ART_DEF_UNIT_HELICOPTER_GUNSHIP',	'ART_DEF_UNIT_MEMBER_HELICOPTERGUNSHIP',			0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',			'Horseman_Rome.fxsxml',				'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						1,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'Horseman_Rome_v2.fxsxml',			'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Horseman_Rome.fxsxml',				'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'Horseman_Rome_v2.fxsxml',			'ART_DEF_UNIT_HORSEMAN',			'ART_DEF_UNIT_MEMBER_HORSEMAN',						2,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',			'Infantry_Italy.fxsxml',			'ART_DEF_UNIT_INFANTRY',			'ART_DEF_UNIT_MEMBER_INFANTRY',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_IRONCLAD',			'ART_DEF_UNIT_MEMBER_IRONCLAD',						0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'EurofighterItaly.fxsxml',			'ART_DEF_UNIT_JET_FIGHTER',			'ART_DEF_UNIT_MEMBER_JETFIGHTER',					0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',			'italian_knight.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						1,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'italian_knight2.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'italian_knight.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'italian_knight2.fxsxml',			'ART_DEF_UNIT_KNIGHT',				'ART_DEF_UNIT_MEMBER_KNIGHT',						2,				NULL,			0		UNION ALL

--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_LANCER',				'ART_DEF_UNIT_MEMBER_LANCER',						0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Longswordsman_Rome.fxsxml',		'ART_DEF_UNIT_LONGSWORDSMAN',		'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MECH',				'ART_DEF_UNIT_MEMBER_MECH',							0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'dardo.fxsxml',				'ART_DEF_UNIT_MECHANIZED_INFANTRY',	'ART_DEF_UNIT_MEMBER_MECHANIZEDINFANTRY',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MISSILE_CRUISER',		'ART_DEF_UNIT_MEMBER_MISSILECRUISER',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ROCKET_ARTILLERY',	'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MOBILE_SAM',			'ART_DEF_UNIT_MEMBER_MOBILESAM',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MODERN_ARMOR',		'ART_DEF_UNIT_MEMBER_MODERNARMOR',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MUSKETMAN',			'ART_DEF_UNIT_MEMBER_MUSKETMAN',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_NUCLEAR_MISSILE',		'ART_DEF_UNIT_MEMBER_NUCLEARMISSILE',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_NUCLEAR_SUBMARINE',	'ART_DEF_UNIT_MEMBER_NUCLEARSUBMARINE',				0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',			'Paratrooper_Italy_MG.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					4,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'Paratrooper_Italy.fxsxml',			'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Paratrooper_Italy_MG.fxsxml',		'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					4,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',		'Paratrooper_Italy.fxsxml',			'ART_DEF_UNIT_PARATROOPER',			'ART_DEF_UNIT_MEMBER_PARATROOPER',					2,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',			'Pikeman_Rome.fxsxml',				'ART_DEF_UNIT_PIKEMAN',				'ART_DEF_UNIT_MEMBER_PIKEMAN',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_RIFLEMAN',			'ART_DEF_UNIT_MEMBER_RIFLEMAN',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SCOUT',				'ART_DEF_UNIT_MEMBER_SCOUT',						0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Spearman_Rome.fxsxml',				'ART_DEF_UNIT_SPEARMAN',			'ART_DEF_UNIT_MEMBER_SPEARMAN',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_STEALTH_BOMBER',		'ART_DEF_UNIT_MEMBER_STEALTHBOMBER',				0,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',			'Submarine_Marcello.fxsxml',		'ART_DEF_UNIT_SUBMARINE',			'ART_DEF_UNIT_MEMBER_SUBMARINE',					0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',
			'Assets/Units/U_Roman_Legion/U_Roman_Legion.fxsxml',		'ART_DEF_UNIT_SWORDSMAN',			'ART_DEF_UNIT_MEMBER_SWORDSMAN',					0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',				'M13-40.fxsxml',				'ART_DEF_UNIT_TANK',				'ART_DEF_UNIT_MEMBER_TANK',							0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_TRANSPORT',			'ART_DEF_UNIT_MEMBER_TRANSPORT',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_TREBUCHET',			'ART_DEF_UNIT_MEMBER_TREBUCHET',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_TRIREME',				'ART_DEF_UNIT_MEMBER_TRIREME',						0,				NULL,			0		UNION ALL

SELECT	'ROME',		'ROME',				'Hastati.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						3,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',			'Principes.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						4,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V3',			'Triarii.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME',				'Hastati.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						4,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V2',			'Principes.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						2,				NULL,			0		UNION ALL
SELECT	'ROME',		'ROME_V3',			'Triarii.fxsxml',				'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						3,				NULL,			0		UNION ALL

--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_WORKBOAT',			'ART_DEF_UNIT_MEMBER_WORKBOAT',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLUTE',		0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_TAMBOURINE',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BIGDRUMMER',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BAGPIPER',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_DRUMMER',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST',				'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLAGBEARER',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ENGINEER',			'ART_DEF_UNIT_MEMBER_GREATENGINEER_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GENERAL',				'ART_DEF_UNIT_MEMBER_GREATGENERAL_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_LEADER',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V1',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT',			'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V2',	0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SCIENTIST',			'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_EARLY',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT__WORKER',				'ART_DEF_UNIT_MEMBER_WORKER_EURO',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT__WORKER_LATE',		'ART_DEF_UNIT_MEMBER_WORKER_EURO_LATE',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT__SETTLER',			'ART_DEF_UNIT_MEMBER_EUROMALE45',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GALLEON',				'ART_DEF_UNIT_MEMBER_GALLEON',						0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SS_BOOSTER',			'ART_DEF_UNIT_MEMBER_SS_BOOSTER',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SS_CAPSULE',			'ART_DEF_UNIT_MEMBER_SS_CAPSULE',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SS_ENGINE',			'ART_DEF_UNIT_MEMBER_SS_ENGINE',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SS_STASIS_CHAMBER',	'ART_DEF_UNIT_MEMBER_SS_STASIS_CHAMBER',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ARTIST_LATE',			'ART_DEF_UNIT_MEMBER_GREATARTIST_LATE',				0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_ENGINEER_LATE',		'ART_DEF_UNIT_MEMBER_GREATENGINEER_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GENERAL_LATE',		'ART_DEF_UNIT_MEMBER_GREATGENERAL_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MERCHANT_LATE',		'ART_DEF_UNIT_MEMBER_GREATMERCHANT_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_SCIENTIST_LATE',		'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_LATE',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_WORKBOAT_LATE',		'ART_DEF_UNIT_MEMBER_WORKBOAT_INDUSTRIAL',			0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_PRIVATEER',			'ART_DEF_UNIT_MEMBER_PRIVATEER',					0,				NULL,			0		UNION ALL
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GREAT_ADMIRAL',		'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL',				0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GREAT_ADMIRAL_LATE',	'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL_LATE',			0,				NULL,			0		UNION ALL	
SELECT	'ROME',		'ROME',		'Composite_Bowman_Rome.fxsxml',			'ART_DEF_UNIT_COMPOSITE_BOWMAN',	'ART_DEF_UNIT_MEMBER_COMPOSITE_BOWMAN',				0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MACHINEGUN',			'ART_DEF_UNIT_MEMBER_MACHINEGUN',					0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GALLEASS',			'ART_DEF_UNIT_MEMBER_GALLEASS',						0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GATLINGGUN',			'ART_DEF_UNIT_MEMBER_GATLINGGUN',					0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_GREAT_PROPHET',		'ART_DEF_UNIT_MEMBER_GREAT_PROPHET',				0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MISSIONARY',			'ART_DEF_UNIT_MEMBER_MISSIONARY',					0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_INQUISITOR',			'ART_DEF_UNIT_MEMBER_INQUISITOR',					0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_XP_PRIVATEER',		'ART_DEF_UNIT_MEMBER_XP_PRIVATEER',					0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_MARINE',				'ART_DEF_UNIT_MEMBER_MARINE',						0,				NULL,			0		UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_WW1_BOMBER',			'ART_DEF_UNIT_MEMBER_WW1_BOMBER',					0,				NULL,			0		UNION ALL	
SELECT	'ROME',		'ROME',			'Ansaldo_SVA-5.fxsxml',				'ART_DEF_UNIT_WW1_FIGHTER',			'ART_DEF_UNIT_MEMBER_WW1_FIGHTER',					0,				NULL,			0		UNION ALL	
SELECT	'ROME',		'ROME',				'itagw1.fxsxml',				'ART_DEF_UNIT_WW1_INFANTRY',		'ART_DEF_UNIT_MEMBER_WW1_INFANTRY',					0,				NULL,			0		UNION ALL	
SELECT		'ROME',		'ROME',			'Fiat_3000.fxsxml',				'ART_DEF_UNIT_WW1_TANK',			'ART_DEF_UNIT_MEMBER_WW1_TANK',						4,			'FourBigGuns',		0.11	UNION ALL	
--SELECT	'ROME',		'ROME',			'unit_model_name',				'ART_DEF_UNIT_WW2_INFANTRY',		'ART_DEF_UNIT_MEMBER_WW2_INFANTRY',					0,				NULL,			0		UNION ALL

SELECT	'END_OF_INSERT',		NULL,			NULL,							NULL,								NULL,											NULL,				NULL,			NULL;

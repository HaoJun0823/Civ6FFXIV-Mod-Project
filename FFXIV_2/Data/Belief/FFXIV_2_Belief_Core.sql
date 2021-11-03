-- FFXIV_2_Belief_Core
-- Author: HaoJun0823
-- DateCreated: 11/2/2021 6:19:07 PM
--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_SCIENCE', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_SCIENCE', 'Amount', '-10'), 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_SCIENCE', 'YieldType', 'YIELD_SCIENCE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_CULTURE', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_CULTURE', 'Amount', '-10'), 
('MODIFIER_BELIEF_FFXIV_2_GLOBAL_CULTURE', 'YieldType', 'YIELD_CULTURE');

--FIRE

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_FIRE_NO_STRATEGIC', 'MODIFIER_PLAYER_ADJUST_LEVIED_UNIT_IGNORE_STRATEGIC_RESOURCE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_FIRE_NO_STRATEGIC', 'Ignore', 'True');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_FIRE_HOUSING', 'MODIFIER_CITY_DISTRICTS_ADJUST_DISTRICT_HOUSING', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_FIRE_HOUSING', 'Amount', '2');

--LAND

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_FFXIV_2_PLOT_MINE_QUARRY');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION', 'Amount', '2'), 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_PLOT_MINE_QUARRY', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_PLOT_MINE_QUARRY', 'REQ_FFXIV_2_PLOT_MINE'), 
('REQSET_FFXIV_2_PLOT_MINE_QUARRY', 'REQ_FFXIV_2_PLOT_QUARRY');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_PLOT_MINE', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'), 
('REQ_FFXIV_2_PLOT_QUARRY', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_PLOT_MINE', 'ImprovementType', 'IMPROVEMENT_MINE'), 
('REQ_FFXIV_2_PLOT_QUARRY', 'ImprovementType', 'IMPROVEMENT_QUARRY');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION_GOLDEN', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 0, 0, 0, 'REQSET_FFXIV_2_LAND_HAS_GOLDEN_AGE', 'REQSET_FFXIV_2_PLOT_MINE_QUARRY');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION_GOLDEN', 'Amount', '2'), 
('MODIFIER_BELIEF_FFXIV_2_LAND_PRODUCTION_GOLDEN', 'YieldType', 'YIELD_PRODUCTION');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_LAND_HAS_GOLDEN_AGE', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_LAND_HAS_GOLDEN_AGE', 'REQ_FFXIV_2_LAND_HAS_GOLDEN_AGE');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_LAND_HAS_GOLDEN_AGE', 'REQUIREMENT_PLAYER_HAS_GOLDEN_AGE');


--WIND

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WIND_HARVEST', 'MODIFIER_PLAYER_GRANT_FAITH_FROM_HARVEST', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WIND_HARVEST', 'Amount', '50');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WIND_MOVEMENT', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WIND_MOVEMENT', 'Amount', '1');

--WATER

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_COAST_HEAL', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_FROM_COMBAT', 0, 0, 0, 'REQSET_FFXIV_2_UNIT_ON_COAST', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_COAST_HEAL', 'Amount', '75');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_UNIT_ON_COAST', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_UNIT_ON_COAST', 'REQ_FFXIV_2_UNIT_ON_COAST');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_UNIT_ON_COAST', 'REQUIREMENT_UNIT_ON_COAST');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_UNIT_ON_COAST', 'Water', 'True');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_COAST', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_FFXIV_2_PLOT_IS_COAST');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_COAST', 'Amount', '1'), 
('MODIFIER_BELIEF_FFXIV_2_WATER_COAST', 'YieldType', 'YIELD_PRODUCTION');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_PLOT_IS_COAST', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_PLOT_IS_COAST', 'REQ_FFXIV_2_PLOT_IS_COAST');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_PLOT_IS_COAST', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_PLOT_IS_COAST', 'TerrainType', 'TERRAIN_COAST');


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_OCEAN', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_FFXIV_2_PLOT_IS_OCEAN');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WATER_OCEAN', 'Amount', '3'), 
('MODIFIER_BELIEF_FFXIV_2_WATER_OCEAN', 'YieldType', 'YIELD_FAITH');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_PLOT_IS_OCEAN', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_PLOT_IS_OCEAN', 'REQ_FFXIV_2_PLOT_IS_OCEAN');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_PLOT_IS_OCEAN', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_PLOT_IS_OCEAN', 'TerrainType', 'TERRAIN_OCEAN');

--THUNDER

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_19', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_19', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_19', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_19', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_19', 'StartEra', 'ERA_ANCIENT');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_29', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_29', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_29', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_29', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_29', 'StartEra', 'ERA_CLASSICAL');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_39', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_39', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_39', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_39', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_39', 'StartEra', 'ERA_MEDIEVAL');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_49', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_49', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_49', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_49', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_49', 'StartEra', 'ERA_RENAISSANCE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_59', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_59', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_59', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_59', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_59', 'StartEra', 'ERA_INDUSTRIAL');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_69', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_69', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_69', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_69', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_69', 'StartEra', 'ERA_MODERN');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_79', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_79', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_79', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_79', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_79', 'StartEra', 'ERA_ATOMIC');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_89', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_89', 'Amount', '10'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_89', 'EndEra', 'ERA_FUTURE'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_89', 'IsWonder', 'True'), 
('MODIFIER_BELIEF_FFXIV_2_WONDER_ERA_89', 'StartEra', 'ERA_INFORMATION');




INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('BELIEF_FFXIV_2_THUNDER_COST_PLOT', 'MODIFIER_FFXIV_2_CITY_ADJUST_PLOT_PURCHASE_COST', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('BELIEF_FFXIV_2_THUNDER_COST_PLOT', 'Amount', '50');
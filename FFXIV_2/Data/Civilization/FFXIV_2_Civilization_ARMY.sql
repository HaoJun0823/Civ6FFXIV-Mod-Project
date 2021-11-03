-- FFXIV_2_Civilization_ARMY
-- Author: HaoJun0823
-- DateCreated: 11/2/2021 7:22:58 PM
--------------------------------------------------------------

--FOREST

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_FOREST_ARMY', 'MODIFIER_FFXIV_2_FOREST_ARMY_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_ATTACH', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_FOREST_ARMY');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY', 'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY', 'Ignore', 'True'), 
('MODIFIER_FFXIV_2_FOREST_ARMY', 'Type', 'FOREST');


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_FOREST_ARMY', 'MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT_ATTACH', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT', 'MODIFIER_PLAYER_UNIT_ADJUST_SEE_THROUGH_FEATURES', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_FOREST_ARMY_PASS_SIGHT', 'CanSee', 'True');

--DESERT

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_ARMY', 'MODIFIER_FFXIV_2_DESERT_ARMY_GOLDEN');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_DESERT_ARMY_GOLDEN', 'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT', 0, 0, 0, 'REQSET_FFXIV_2_IS_GOLD_AGE', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_DESERT_ARMY_GOLDEN', 'Amount', '1');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_IS_GOLD_AGE', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_IS_GOLD_AGE', 'REQ_FFXIV_2_IS_GOLD_AGE');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_IS_GOLD_AGE', 'REQUIREMENT_PLAYER_HAS_GOLDEN_AGE');


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_ARMY', 'MODIFIER_FFXIV_2_DESERT_ARMY_DARKNESS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_DESERT_ARMY_DARKNESS', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH', 0, 0, 0, 'REQSET_FFXIV_2_IS_DARK_AGE', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_DESERT_ARMY_DARKNESS', 'Amount', '5');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_IS_DARK_AGE', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_IS_DARK_AGE', 'REQ_FFXIV_2_IS_DARK_AGE');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_IS_DARK_AGE', 'REQUIREMENT_PLAYER_HAS_DARK_AGE');



--SEA

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_ARMY', 'MODIFIER_FFXIV_2_SEA_ARMY_OCEAN');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_SEA_ARMY_OCEAN', 'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_SEA_ARMY_OCEAN', 'TerrainType', 'TERRAIN_OCEAN'), 
('MODIFIER_FFXIV_2_SEA_ARMY_OCEAN', 'Valid', 'true');



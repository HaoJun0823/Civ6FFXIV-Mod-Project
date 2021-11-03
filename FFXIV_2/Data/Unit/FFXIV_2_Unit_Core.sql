-- FFXIV_2_Unit_Core
-- Author: HaoJun0823
-- DateCreated: 11/3/2021 1:01:23 AM
--------------------------------------------------------------

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
('ABILITY_FFXIV_2_FOREST', 'MODIFIER_FFXIV_2_UNIT_FOREST_MOVEMENT');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNIT_FOREST_MOVEMENT', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 0, 0, 0, 'REQSET_FFXIV_IN_OWNER_TERRITORY', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNIT_FOREST_MOVEMENT', 'Amount', '1');

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
('ABILITY_FFXIV_2_FOREST', 'MODIFIER_FFXIV_2_UNIT_FOREST_COMBAT');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNIT_FOREST_COMBAT', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 0, 0, 0, 'REQSET_FFXIV_IN_OWNER_TERRITORY', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNIT_FOREST_COMBAT', 'Amount', '10');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_IN_OWNER_TERRITORY', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_IN_OWNER_TERRITORY', 'REQ_FFXIV_IN_OWNER_TERRITORY');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_IN_OWNER_TERRITORY', 'REQUIREMENT_UNIT_IN_OWNER_TERRITORY');







INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
('ABILITY_FFXIV_2_DESERT', 'MODIFIER_FFXIV_2_UNIT_DESERT_COOP_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNIT_DESERT_COOP_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 0, 0, 0, NULL, 'REQSET_DESERT_UNIT_COOP');


INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNIT_DESERT_COOP_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_UNIT_DESERT_COOP');


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNIT_DESERT_COOP', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNIT_DESERT_COOP', 'Amount', '5');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_DESERT_UNIT_COOP', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_DESERT_UNIT_COOP', 'REQ_DESERT_UNIT_COOP');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_DESERT_UNIT_COOP', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_DESERT_UNIT_COOP', 'IncludeCenter', 'False'), 
('REQ_DESERT_UNIT_COOP', 'MaxRange', '1'), 
('REQ_DESERT_UNIT_COOP', 'MinRange', '1'), 
('REQ_DESERT_UNIT_COOP', 'UnitType', 'UNIT_FFXIV_2_DESERT');

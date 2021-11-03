-- FFXIV_2_Civilization_Core_Desert
-- Author: HaoJun0823
-- DateCreated: 10/28/2021 12:18:23 AM
--------------------------------------------------------------
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_SAND_A');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_SAND_A', 'MODIFIER_PLAYER_ADJUST_RANDOM_EVENT_NO_UNIT_DAMAGE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_SAND_A', 'NoDamage', 'true'), 
('MODIFIER_FFXIV_2_SAND_A', 'RandomEventType', 'RANDOM_EVENT_DUST_STORM_GRADIENT');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_SAND_B');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_SAND_B', 'MODIFIER_PLAYER_ADJUST_RANDOM_EVENT_NO_UNIT_DAMAGE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_SAND_B', 'NoDamage', 'true'), 
('MODIFIER_FFXIV_2_SAND_B', 'RandomEventType', 'RANDOM_EVENT_DUST_STORM_HABOOB');






INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_ATTACH_OASIS_CULTURE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_ATTACH_OASIS_CULTURE', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_ATTACH_OASIS_CULTURE', 'ModifierId', 'MODIFIER_FFXIV_2_OASIS_CULTURE');




INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_ATTACH_OASIS_GOLD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_ATTACH_OASIS_GOLD', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_ATTACH_OASIS_GOLD', 'ModifierId', 'MODIFIER_FFXIV_2_OASIS_GOLD');





INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_OASIS_GOLD', 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 0, 0, 0, 'REQSET_FFXIV_2_PLOT_IS_OASIS', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_OASIS_GOLD', 'Amount', '2'), 
('MODIFIER_FFXIV_2_OASIS_GOLD', 'YieldType', 'YIELD_GOLD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_OASIS_CULTURE', 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 0, 0, 0, 'REQSET_FFXIV_2_PLOT_IS_OASIS', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_OASIS_CULTURE', 'Amount', '2'), 
('MODIFIER_FFXIV_2_OASIS_CULTURE', 'YieldType', 'YIELD_CULTURE');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_PLOT_IS_OASIS', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_PLOT_IS_OASIS', 'REQ_FFXIV_2_PLOT_IS_OASIS');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_PLOT_IS_OASIS', 'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_PLOT_IS_OASIS', 'FeatureType', 'FEATURE_OASIS');







INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_GOLD');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_CULTURE');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_FAITH');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_SCIENCE');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_PRODUCTION');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_DESERT_CORE', 'MODIFIER_FFXIV_2_GOVERNOR_FOOD');


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_GOLD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_CULTURE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_FAITH', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_SCIENCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_FOOD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, 'REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_GOLD', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_GOLD', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_CULTURE', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_FAITH', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_FAITH', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_SCIENCE', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_SCIENCE', 'YieldType', 'YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_PRODUCTION', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GOVERNOR_FOOD', 'Amount', '10'), 
('MODIFIER_FFXIV_2_GOVERNOR_FOOD', 'YieldType', 'YIELD_FOOD');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_CITY_NOT_HAS_GOVERNOR', 'REQ_FFXIV_2_CITY_NOT_HAS_GOVERNOR');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES 
('REQ_FFXIV_2_CITY_NOT_HAS_GOVERNOR', 'REQUIREMENT_CITY_HAS_GOVERNOR', 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_CITY_NOT_HAS_GOVERNOR', 'Established', 'true');
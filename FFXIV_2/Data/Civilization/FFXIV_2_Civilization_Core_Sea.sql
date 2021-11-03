-- FFXIV_2_Civilization_Core_Sea
-- Author: HaoJun0823
-- DateCreated: 10/28/2021 12:18:49 AM
--------------------------------------------------------------


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_PRODUCTION');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_PRODUCTION', 'ModifierId', 'MODIFIER_FFXIV_2_BOAT_PRODUCTION');


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_FOOD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_FOOD', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_ATTACH_MODIFIER_BOAT_FOOD', 'ModifierId', 'MODIFIER_FFXIV_2_BOAT_FOOD');




INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_BOAT_FOOD', 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 0, 0, 0, 'REQSET_FFXIV_2_PLOT_IS_WATER_BOAT', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_BOAT_FOOD', 'Amount', '1'), 
('MODIFIER_FFXIV_2_BOAT_FOOD', 'YieldType', 'YIELD_FOOD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_BOAT_PRODUCTION', 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 0, 0, 0, 'REQSET_FFXIV_2_PLOT_IS_WATER_BOAT', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_BOAT_PRODUCTION', 'Amount', '1'), 
('MODIFIER_FFXIV_2_BOAT_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_2_PLOT_IS_WATER_BOAT', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_2_PLOT_IS_WATER_BOAT', 'REQ_FFXIV_2_PLOT_IS_WATER_BOAT');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_2_PLOT_IS_WATER_BOAT', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_2_PLOT_IS_WATER_BOAT', 'ImprovementType', 'IMPROVEMENT_FISHING_BOATS');









INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_TRADE_IMMUNITY_SEA');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_TRADE_IMMUNITY_SEA', 'MODIFIER_PLAYER_UNIT_ADJUST_TRADE_ROUTE_PLUNDER_IMMUNITY', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_TRADE_IMMUNITY_SEA', 'DomainType', 'DOMAIN_SEA');






--£¿


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_UNITS_ADJUST_PLUNDER_YIELDS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNITS_ADJUST_PLUNDER_YIELDS', 'MODIFIER_PLAYER_UNITS_ADJUST_PLUNDER_YIELDS', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNITS_ADJUST_PLUNDER_YIELDS', 'Amount', '50');






INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_WAR_WARINESS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_WAR_WARINESS', 'MODIFIER_PLAYER_ADJUST_WAR_WEARINESS', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_WAR_WARINESS', 'Amount', '-50'), 
('MODIFIER_FFXIV_2_WAR_WARINESS', 'Domestic', ''), 
('MODIFIER_FFXIV_2_WAR_WARINESS', 'Enemy', ''), 
('MODIFIER_FFXIV_2_WAR_WARINESS', 'Overall', 'true');






INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_FFXIV_2_SEA_CORE', 'MODIFIER_FFXIV_2_GRANT_TECH_SAILING');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_GRANT_TECH_SAILING', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_GRANT_TECH_SAILING', 'TechType', 'TECH_SAILING');

-- LEADER_FFXIV_2_DESERT_MAIN
-- Author: HaoJun0823
-- DateCreated: 11/2/2021 7:24:08 PM
--------------------------------------------------------------

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_DESERT_MAIN', 'MODIFIER_FFXIV_2_SPY_OFFENSE_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_SPY_OFFENSE_ATTACH', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_SPY_OFFENSE_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_SPY_OFFENSE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_SPY_OFFENSE', 'MODIFIER_CITY_ADJUST_SPY_BONUS', 0, 0, 0, 'REQSET_FFXIV_CITY_HAS_GOVERNOR', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_SPY_OFFENSE', 'Amount', '1');



-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_FFXIV_CITY_HAS_GOVERNOR', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_FFXIV_CITY_HAS_GOVERNOR', 'REQ_FFXIV_CITY_HAS_GOVERNOR');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_FFXIV_CITY_HAS_GOVERNOR', 'REQUIREMENT_CITY_HAS_GOVERNOR');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_FFXIV_CITY_HAS_GOVERNOR', 'Established', 'True');



INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_DESERT_MAIN', 'MODIFIER_FFXIV_2_TRADE_LUXURY_CULTURE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_TRADE_LUXURY_CULTURE', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_LUXURY_FOR_INTERNATIONAL', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_TRADE_LUXURY_CULTURE', 'Amount', '2'), 
('MODIFIER_FFXIV_2_TRADE_LUXURY_CULTURE', 'YieldType', 'YIELD_CULTURE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_DESERT_MAIN', 'MODIFIER_FFXIV_2_TRADE_LUXURY_GOLD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_TRADE_LUXURY_GOLD', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_LUXURY_FOR_INTERNATIONAL', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_TRADE_LUXURY_GOLD', 'Amount', '2'), 
('MODIFIER_FFXIV_2_TRADE_LUXURY_GOLD', 'YieldType', 'YIELD_GOLD');

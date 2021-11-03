-- LEADER_FFXIV_2_SEA_MAIN
-- Author: HaoJun0823
-- DateCreated: 11/2/2021 7:12:10 PM
--------------------------------------------------------------
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_SEA_MAIN', 'MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE_ATTACH', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE');


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE', 'MODIFIER_PLAYER_UNIT_ADJUST_NO_REDUCTION_DAMAGE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_NO_REDUCTION_DAMAGE', 'NoReduction', 'True');



INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_SEA_MAIN', 'MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION_ATTACH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION_ATTACH', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION_ATTACH', 'ModifierId', 'MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION_ATTACH_MODIFIER', 'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION_ATTACH_MODIFIER', 'ModifierId', 'MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION');


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION', 'MODIFIER_CITY_ADJUST_UNIT_DOMAIN_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION', 'Amount', '25'), 
('MODIFIER_FFXIV_2_CITY_UNIT_SEA_PRODUCTION', 'Domain', 'DOMAIN_SEA');



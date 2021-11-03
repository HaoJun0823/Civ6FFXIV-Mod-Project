-- LEADER_FFXIV_2_FOREST_MAIN
-- Author: HaoJun0823
-- DateCreated: 11/2/2021 6:26:51 PM
--------------------------------------------------------------
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_FOREST_MAIN', 'MODIFIER_FFXIV_2_UNITS_HEAL_PER_TURN');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_UNITS_HEAL_PER_TURN', 'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_UNITS_HEAL_PER_TURN', 'Amount', '10'), 
('MODIFIER_FFXIV_2_UNITS_HEAL_PER_TURN', 'Type', 'ALL');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_FOREST_MAIN', 'MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH_RECON');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH_RECON', 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH_RECON', 'Tag', 'CLASS_RECON');


INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_FFXIV_2_FOREST_MAIN', 'MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH', 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_CAN_BUY_UNIT_BY_FAITH', 'Tag', 'CLASS_ALL_UNITS');


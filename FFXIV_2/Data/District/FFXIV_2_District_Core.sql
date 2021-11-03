-- FFXIV_2_District_Core
-- Author: HaoJun0823
-- DateCreated: 11/3/2021 4:07:00 AM
--------------------------------------------------------------
INSERT INTO DistrictModifiers (DistrictType, ModifierId) VALUES 
('DISTRICT_FFXIV_2_SEA', 'MODIFIER_FFXIV_2_DISTRICT_SEA_LUXURY');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_FFXIV_2_DISTRICT_SEA_LUXURY', 'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_AMENITY_FOR_LUXURY_DIVERSITY', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_FFXIV_2_DISTRICT_SEA_LUXURY', 'Amount', '1');

-- FFXIV_2_Modifier
-- Author: HaoJun0823
-- DateCreated: 11/4/2021 1:26:04 AM
--------------------------------------------------------------
-- Custom ModifierType

INSERT INTO Types (Type, Kind) VALUES 
('MODIFIER_FFXIV_2_CITY_ADJUST_PLOT_PURCHASE_COST', 'KIND_MODIFIER');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType) VALUES 
('MODIFIER_FFXIV_2_CITY_ADJUST_PLOT_PURCHASE_COST', 'COLLECTION_CITY_PLOT_YIELDS', 'EFFECT_ADJUST_PLOT_PURCHASE_COST');
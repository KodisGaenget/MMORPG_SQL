--SKAPA PLAYER
Insert into [Player]([Name],[OriginalHealth],[CurrentHealth],[Power],[Armor],[Damage],[Level],[CurrentExp],[Position],[Class]) values ('Zaai',1000,1000,1000,1000,1000,1000,100000, 1, 'Warrior');

INSERT INTO ItemType ([Id]) Values 
    ('Armor'),
    ('Consumable'),
    ('Weapon');

INSERT INTO [Slot] ([Id]) Values 
    ('Helmet'),
    ('Chest'),
    ('Gloves'),
    ('Legs'),
    ('Boots'),
    ('Weapon');

INSERT INTO [WeaponType] ([Id]) Values 
    ('Daggers'),
    ('ThrowingStar'),
    ('DoubleEdgedAxe'),
    ('Warhammer'),
    ('Staff'),
    ('SpellBook');

INSERT INTO [MATERIAL] ([Id]) Values 
    ('Cloth'),
    ('Leather'),
    ('Plate');

INSERT INTO [ConsumableType] ([Id]) Values 
    ('HealthPotion'),
    ('PowerPotion'),
    ('ArmorPotion'),
    ('DamagePotion'),
    ('CritPotion');


-- SKAPA ITEM
INSERT INTO [Item] ([Name], Price, ItemType, WeaponType, Slot, [Material], MinDamage, MaxDamage, Defense, AmountToRestore, ConsumableType, DropChance, MaxStack) 
VALUES 
('PlateHelmet', 5, 'Armor', null, 'Helmet', 'Plate', null, null, 5, null, null, 20, 1), 
('PlateChest', 5, 'Armor', null, 'Chest', 'Plate', null, null, 5, null, null, 20, 1),
('PlateGloves', 5, 'Armor', null, 'Gloves', 'Plate', null, null, 5, null, null, 20, 1),
('PlateLegs', 5, 'Armor', null, 'Legs', 'Plate', null, null, 5, null, null, 20, 1),
('PlateBoots', 5, 'Armor', null, 'Boots', 'Plate', null, null, 5, null, null, 20, 1),
('SupaDupaAxe', 5, 'Weapon', 'DoubleEdgedAxe', 'Weapon', null, 1, 5, null, null, null, 20, 1),
('Lesser Health Potion', 10, 'Consumable', null, null, null, null, null, null, null, 'HealthPotion', 10, 5),
('Greater Health Potion', 100, 'Consumable', null, null, null, null, null, null, null, 'HealthPotion', 50, 5),
('Superior Potion', 500, 'Consumable', null, null, null, null, null, null, null, 'HealthPotion', 300, 5),
('Lesser Restoring Potion', 10, 'Consumable', null, null, null, null, null, null, null, 'PowerPotion', 10, 5),
('Greater Restoring Potion', 100, 'Consumable', null, null, null, null, null, null, null, 'PowerPotion', 50, 5),
('Greater Restoring Potion', 500, 'Consumable', null, null, null, null, null, null, null, 'PowerPotion', 300, 5);
-- ('Gold', 1, 'Consumable', null, null, null, null, null, 5, null, null, 60, 10000000)


Insert into Equipment(PlayerId, Helmet,Chest,Gloves,Legs,Boots,Weapon)
VALUES
(1,1,2,3,4,5,6);



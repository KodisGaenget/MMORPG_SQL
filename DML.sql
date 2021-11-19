--SKAPA PLAYER--
Insert into [Character]([Name],[OriginalHealth],[CurrentHealth],[Power],[Armor],[BaseDamage],[Level],[CurrentExp],[Position],[Class], [CharacterType], [CoinPurse]) values ('Zaai',1000,1000,1000,110,10,10,100000, 1, 'Warrior', 'Player',1000);
-- Insert into [Character]([Name],[OriginalHealth],[CurrentHealth],[Power],[Armor],[Damage],[Level],[CurrentExp],[Position],[Class]) values ('Bert',1000,1000,1000,110,90,11,1180, 1, 'Warrior');

INSERT INTO ItemType ([Id]) Values 
    ('Armor'),
    ('Consumable'),
    ('Weapon'),
    ('Key');

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

INSERT INTO [CharacterType] ([Id]) Values 
    ('Player'),
    ('Enemy');


INSERT INTO [ConsumableType] ([Id]) Values 
    ('HealthPotion'),
    ('PowerPotion'),
    ('ArmorPotion'),
    ('DamagePotion'),
    ('CritPotion');


-- SKAPA ITEM
INSERT INTO [Item] ([Name], Price, ItemType, WeaponType, Slot, [Material], MinDamage, MaxDamage, Defense, AmountToRestore, ConsumableType, DropChance, MaxStack) 
VALUES 
('PlateHelmet', 5, 'Armor', null, 'Helmet', 'Plate', null, null, 5, null, null, 0, 1), 
('PlateChest', 5, 'Armor', null, 'Chest', 'Plate', null, null, 5, null, null, 0, 1),
('PlateGloves', 5, 'Armor', null, 'Gloves', 'Plate', null, null, 5, null, null, 0, 1),
('PlateLegs', 5, 'Armor', null, 'Legs', 'Plate', null, null, 5, null, null, 0, 1),
('PlateBoots', 5, 'Armor', null, 'Boots', 'Plate', null, null, 5, null, null, 0, 1),
('SupaDupaAxe', 5, 'Weapon', 'DoubleEdgedAxe', 'Weapon', null, 1, 5, null, null, null, 0, 1),
('Lesser Health Potion', 10, 'Consumable', null, null, null, null, null, null, 50, 'HealthPotion', 0, 5),
('Greater Health Potion', 100, 'Consumable', null, null, null, null, null, null, 100, 'HealthPotion', 0, 5),
('Superior Potion', 500, 'Consumable', null, null, null, null, null, null, 500 ,'HealthPotion', 0, 5),
('Lesser Restoring Potion', 10, 'Consumable', null, null, null, null, null, null, 50, 'PowerPotion', 0, 5),
('Greater Restoring Potion', 100, 'Consumable', null, null, null, null, null, null, 100, 'PowerPotion', 0, 5),
('Greater Restoring Potion', 500, 'Consumable', null, null, null, null, null, null, 500, 'PowerPotion', 0, 5);
-- ('Gold', 1, 'Consumable', null, null, null, null, null, 5, null, null, 60, 10000000)


Insert into Equipment(PlayerId, Helmet,Chest,Gloves,Legs,Boots,Weapon)
VALUES
(1,1,2,3,4,5,6);



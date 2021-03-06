--
CREATE OR ALTER PROCEDURE GetAllItems

AS
BEGIN

Select [Id],[ItemType] From Item;

RETURN 
END
GO

CREATE OR ALTER PROCEDURE GetArmorItem
@id int
AS
BEGIN

Select [Id],[Name],[Price],[ItemType],[Slot],[Defense],[Material] From Item where ItemType = 'Armor' AND Id = @id;


RETURN 
END
GO

CREATE OR ALTER PROCEDURE GetWeaponItem
@id int
AS
BEGIN

Select [Id],[Name],[Price],[ItemType],[Slot],[MinDamage],[MaxDamage],[WeaponType] From Item where ItemType = 'Weapon' AND Id = @id;


RETURN 
END
GO

CREATE OR ALTER PROCEDURE GetConsumableItem
@id int
AS
BEGIN

Select [Id],[Name],[Price],[ItemType],[Slot],[AmountToRestore],[ConsumableType],[MaxStack] From Item where ItemType = 'Consumable' AND Id = @id;


RETURN 
END
GO

CREATE OR ALTER PROCEDURE GetKeyItem
@id int
AS
BEGIN

Select [Id],[Name],[Price],[ItemType],[Slot] From Item where ItemType = 'Key' AND Id = @id;


RETURN 
END
GO

CREATE OR ALTER PROCEDURE LoadEquipped
@playerID int
AS
BEGIN

-- Enklare och smidigare skrivet
Select i.Slot, i.Id
From Equipment eq
inner join Item i on i.Id in (eq.Helmet, eq.Chest, eq.Gloves, eq.Legs, eq.Boots, eq.Weapon) 
where eq.PlayerId = @playerID;

-- Select i.Slot, i.Id From Equipment eq inner join Item i on eq.Helmet = i.Id or Chest = i.Id or gloves = i.Id or Legs = i.Id or Boots = i.Id or Weapon = i.Id where eq.PlayerId = @playerID;

RETURN 
END
GO

CREATE OR ALTER PROCEDURE UpdatePlayer
@playerID int,
@ohp INTEGER,
@chp INTEGER,
@power INTEGER,
@armor INTEGER,
@dmg INTEGER,
@lvl INTEGER,
@cexp INTEGER,
@pos INTEGER,
@class Varchar(15)

AS
BEGIN

UPDATE [Character] Set OriginalHealth = @ohp, CurrentHealth = @chp, Power = @power, Armor = @armor, Damage = @dmg, [Level] = @lvl, CurrentExp = @cexp, Position = @pos, Class = @class WHERE Id = @playerID
DECLARE @id INTEGER
Set @Id = SCOPE_IDENTITY()
Select @Id as Id;

RETURN 
END
GO


CREATE OR ALTER PROCEDURE Add_NewPlayer
@name VARCHAR(40),
@ohp INTEGER = 100,
@chp INTEGER = 100,
@power INTEGER = 0,
@armor INTEGER = 0,
@dmg INTEGER = 0,
@lvl INTEGER = 1,
@cexp INTEGER = 0,
@pos INTEGER = 1,
@class VARCHAR(15) = 'NOCLASS'

AS
BEGIN

INSERT INTO [Character] (
    [Name],
    [OriginalHealth], 
    [CurrentHealth], 
    [Power], 
    [Armor], 
    [Damage], 
    [Level], 
    [CurrentExp], 
    [Position], 
    [Class]) 
    VALUES(
    @name,
    @ohp,
    @chp,
    @power,
    @armor,
    @dmg,
    @lvl,
    @cexp,
    @pos,
    @class
        )
DECLARE @id INTEGER
Set @Id = SCOPE_IDENTITY()
Select @Id as Id;

RETURN 
END
GO

CREATE OR ALTER PROCEDURE Add_NewItem( 
@name VARCHAR(50),
@price INTEGER,
@itemType VARCHAR(50),
@slot VARCHAR(50),
@mindmg INTEGER,
@maxdmg INTEGER,
@weapontype VARCHAR(50),
@def INTEGER,
@material VARCHAR(50),
@amtorest INTEGER,
@constype VARCHAR(50),
@maxstack INTEGER
)

AS
BEGIN

INSERT INTO Item
(
    [Name],
    [Price],
    [ItemType],
    [Slot],
    [MinDamage],
    [MaxDamage],
    [WeaponType],
    [Defense],
    [Material],
    [AmountToRestore],
    [ConsumableType],
    [MaxStack]
)
VALUES
(
    @name,
    @price,
    @itemtype,
    @slot,
    @mindmg,
    @maxdmg,
    @weapontype,
    @def,
    @material,
    @amtorest,
    @constype,
    @maxstack
)

RETURN 
END
GO

-- EXEC Add_NewItem 'Sharpened Dildo', 69, 'Weapon', 'Weapon', 16, 21, 'Warhammer', NULL, NULL, NULL, NULL, 1  
-- EXEC Add_NewPlayer 'Elite', 10000,10000,10000,10000,10000,10000,100000000,1,'Mage';
-- EXEC LoadEquipped 1;
-- Exec GetArmorItem 1;
-- Exec GetWeaponItem 6;

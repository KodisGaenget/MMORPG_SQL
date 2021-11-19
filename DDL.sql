--
DROP TABLE IF EXISTS Inventory, Item, [Character], Equipment, Slot, ItemType, ConsumableType, WeaponType, [Material], Room, Loot_Item, CharacterType;

CREATE TABLE [CharacterType] (
  [Id] Varchar(10),
  PRIMARY KEY ([Id])
);

CREATE TABLE [Character] (
  [Id] integer identity(1,1),
  [Name] varchar(40) UNIQUE not null,
  [OriginalHealth] integer not null,
  [CurrentHealth] integer not null,
  [Power] integer,
  [CurrentPower] integer,
  [Armor] integer,
  [Penetration] integer,
  [BaseDamage] integer,
  [Level] integer DEFAULT 1,
  [CurrentExp] integer DEFAULT 0,
  [Position] integer DEFAULT 1,
  [Class] varchar(15) not null,
  [CharacterType] VARCHAR(10),
  [ExpValue] Integer,
  [CoinPurse] Integer
  PRIMARY KEY ([Id]),
   CONSTRAINT [FK_Character.CharacterType]
    FOREIGN KEY ([CharacterType])
      REFERENCES [CharacterType]([Id])
);

CREATE TABLE [Slot] (
  [Id] Varchar(10),
  PRIMARY KEY ([Id])
);

CREATE TABLE [ItemType] (
  [Id] varchar(30),
  PRIMARY KEY ([Id])
);

CREATE TABLE [ConsumableType] (
  [Id] varchar(20),
  PRIMARY KEY ([Id])
);

CREATE TABLE [WeaponType] (
  [Id] Varchar(20),
  PRIMARY KEY ([Id])
);

CREATE TABLE [Material] (
  [Id] Varchar(10),
  PRIMARY KEY ([Id])
);

CREATE TABLE [Item] (
  [Id] integer identity (1,1),
  [Name] varchar(50) not null,
  [Price] integer DEFAULT 0,
  [ItemType] varchar(30) not null,
  [Slot] varchar(10) null,

  [MinDamage] int null,
  [MaxDamage] int null,
  [WeaponType] varchar(20) null,

  [Defense] int null,
  [Material] varchar(10) null,

  [AmountToRestore] int null,
  [ConsumableType] varchar(20) null,
  [MaxStack] INTEGER Default 1
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Item.Slot]
    FOREIGN KEY ([Slot])
      REFERENCES [Slot]([Id]),
  CONSTRAINT [FK_Item.ItemType]
    FOREIGN KEY ([ItemType])
      REFERENCES [ItemType]([Id]),
  CONSTRAINT [FK_Item.ConsumableType]
    FOREIGN KEY ([ConsumableType])
      REFERENCES [ConsumableType]([Id]),
  CONSTRAINT [FK_Item.WeaponType]
    FOREIGN KEY ([WeaponType])
      REFERENCES [WeaponType]([Id]),
  CONSTRAINT [FK_Item.Type]
    FOREIGN KEY ([Material])
      REFERENCES [Material]([Id])
);

CREATE TABLE [Equipment] (
  [Id] int identity(1,1) not null,
  [PlayerId] int not null,
  [Helmet] int,
  [Chest] int,
  [Gloves] int,
  [Legs] int,
  [Boots] int,
  [Weapon] int,
  PRIMARY KEY ([Id])
);

CREATE TABLE [Inventory] (
  [Id] integer identity (1,1),
  [PlayerId] integer not null,
  [ItemId] integer not null,
  [Amount] INTEGER default 1,
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Inventory.ItemId]
    FOREIGN KEY ([ItemId])
      REFERENCES [Item]([Id])
);

CREATE TABLE Room
(
    [Room_Id] INT IDENTITY(1,1) PRIMARY KEY, 
    [Name] VARCHAR(50), 
    [Description] VARCHAR(MAX), 
    [ExamineText] VARCHAR(MAX), 
    [RoomExamined] BIT, 
    [North] INT, 
    [East] INT, 
    [South] INT, 
    [West] INT, 
    [ItemInRoomID] INT, 
    [ItemRequiredToEnter] INT,
    [EnemyInRoom] INT
)


CREATE TABLE [Loot_Item] (
  [Id] int,
  [ItemId] int,
  [EnemyId] int,
  [Dropchance] int,
  PRIMARY KEY ([Id]),
  CONSTRAINT [FK_Loot_Item.ItemId]
    FOREIGN KEY ([ItemId])
      REFERENCES [Item]([Id]),
  CONSTRAINT [FK_Loot_Item.EnemyId]
    FOREIGN KEY ([EnemyId])
      REFERENCES [Character]([Id])
);


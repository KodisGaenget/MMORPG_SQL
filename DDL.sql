--
DROP TABLE IF EXISTS Inventory, Item, Player, Equipment, Slot, ItemType, ConsumableType, WeaponType, [Material];

CREATE TABLE [Player] (
  [Id] integer identity(1,1),
  [Name] varchar(40) UNIQUE not null,
  [OriginalHealth] integer not null,
  [CurrentHealth] integer not null,
  [Power] integer,
  [Armor] integer,
  [Damage] integer,
  [Level] integer DEFAULT 1,
  [CurrentExp] integer DEFAULT 0,
  [Position] integer DEFAULT 1,
  [Class] varchar(15) not null,
  PRIMARY KEY ([Id])
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
  [DropChance] int DEFAULT 0,
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

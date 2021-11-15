Select * From Inventory;

SELECT Id, Name, OriginalHealth, CurrentHealth, Power, Armor, Damage, Level, CurrentExp FROM Player WHERE Id = 1;



SELECT inv.ItemId FROM Player as p inner join Inventory as inv on inv.PlayerID = p.Id  WHERE p.Id = 1;

-- Get info about item
Select i.Name, i.ItemType from inventory inv inner join Item i on i.Id = inv.ItemId;

select * from Item;
select * from Player;
select * from Inventory;

-- Delete Inventory where PlayerId = 1;


Update Item set Slot = 'Weapon' where Id = 6;

SELECT ItemId, Amount FROM Player as p inner join Inventory as inv on inv.PlayerID = p.Id  where p.id = 1;










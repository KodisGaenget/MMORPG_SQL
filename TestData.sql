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


SELECT * FROM Item
-- 

--NYA ROOM-TABELLEN VALUES

INSERT INTO Room([Name], [Description], [ExamineText], [North], [East], [South], [West], [ItemInRoomID], [ItemRequiredToEnter], [EnemyInRoom])
VALUES
(
    ('Foyer', 'You open the door to the castle and enter the foyer. Its moist and water is leaking in from every where. You notice a rack with 3 knobs on it on which there is one jacket hanging. ''Nice jacket, very modern. It looks brand new, only used a few times. Im starting to get the feeling that Im not alone in here.'' {There is only one door right in front of you.', 'You came up short, there is nothing of value in this room', 2, NULL, NULL, NULL),
    ('Dank hallway', 'As you open the door, you arrive at a dank hallway. You hear a strange sound emanating from the walls, but there is no way to hear where the sound is coming from. A thought hits you as you take a glance around the room: ''Im starting to suspect that that Im not alone in this old castle even more than before the previous room''. There is one door to your left, one door to your right and one door straight ahead., Theres two vials on the sideboard in the hallway. You pick them up and gain 2 small health potions', 5, 4, 1, 3),
    ('Library', 'You open the door to the library and step in. As you enter the door SLAMS SHUT HARD AS GODAMN HELL BEHIND YOU AND A BOOK COMES FLYING TOWARDS YOU. You manage to dodge the first two books as you think: ''What the shit is going on in here?!'' but there are too many books coming at you too fast. The third book hits you in the head knocking you on your ass. As youre starting to get back up on your feet you notice a rancid odor so bad that you can taste it in your mouth. Youve encountered a toxic fart cloud', 'You notice a weak, glowing light from one of the books in the book shelf, you open it and feel a small rush of power run through you. You gained 200 XP', null, 2, null, null),
    ('Dildo exhibition room', 'Hmm, this door opened smooth, a bit too smooth. Suspiciously smooth even. Almost as if its been lubricated''. The first thing you notice is the big neon sign reading ''DILDOS'' in glowing purple letters and an arrow pointing you to around the corner at the end of the room. Suddenly, a slap echoes throughout the room. You slowly walk toward the end of the room and take a peek around the corner. You see two small Goblins with red cheeks slapping each other with the various different sizes of dildos surrounding the entire room on shelve after shelve after shelve of dildos. You notice a shrine in the middle of the room with a huge double ended dildo of pure gold and small candles lit around it: ''This must be a temple to worship some sort of dildo god''', 'As you examine the room you notice a chest on the floor labeled ''weapons''. Its unlocked, lucky you. You dig around and find a Sharpened dildo', null, null, null, 2),
    ('Living room', 'You enter a regular living room with a couch next to a fireplace, a shelve with books and really expensive-looking curtains covering a window. ''THUD, THUD, THUD, THUD''. You hear four thuds and then some sort of deep rolling sound, like four huge wheels of cheese rolling on hardwood from the room right in front of you. Unfortunately for you, thats the only way forward since that is the only door in this room.', 'Theres a wepon mounted above the fire place. You gain a Double edged axe.', 6, null, 2, null);


     
)

Living room, Kitchen, Storage room, Stairway, TOrture chamber, Prison cells, Observatory





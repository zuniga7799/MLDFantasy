Create table dbo.Players(
	PlayerId int primary key identity(1,1),
	PlayerName nvarchar(35),
	Position nvarchar(2),
	Age int,
	Salary int,
	[Contract] int,
	Points float,
	PPG float,
	Team nvarchar (3),
	[TeamId] int NOT NULL Foreign Key references Teams(TeamId),
	Eligibility  nvarchar(35),
	[Status]  nvarchar (35),
)

Alter table dbo.Players
	Add Constraint [TeamId] FOREIGN KEY (TeamId) REFERENCES Teams (TeamId)
		on UPDATE CASCADE



insert into dbo.Players values
('Salvador Perez',	'C',	31,		6,	2026,	351.75,	2.46,	'KC',	1,	'C',	'Act'),
('Jared Walsh',	'1B',	28,		5,	2026,	358,	2.28,	'LAA',	1,	'1B',	'Act'),
('Nico Hoerner',	'2B',	24,		2,	2026,	128.75,	1.98,	'CHC',	1,	'2B',	'Act'),
('DJ LeMahieu',	'3B',	33,		13,	2026,	428.5,	2.91,	'NYY',	1,	'1B,2B,3B',	'Act'),
('Kyle Farmer',	'SS',	31,		1,	2024,	154.75,	1.52,	'CIN',	1,	'SS',	'Act'),
('Jesse Winker',	'LF',	28,		2,	2026,	371,	2.69,	'SEA',	1,	'LF',	'Act'),
('Bryan Reynolds',	'CF',	27,		3,	2026,	439,	2.78,	'PIT',	1,	'CF',	'Act'),
('Aaron Judge',	'RF',	29,		18,	2026,	419.75,	2.96,	'NYY',	1,	'RF',	'Act'),
('Christian Vazquez',	'UT',	31,		6,	2026,	259.25,	1.88,	'BOS',	1,	'C',	'Act'),
('Luke Voit',	'UT',	31,		1,	2026,	335.5,	2.52,	'SD',	1,	'1B',	'Act'),
('Kyle Lewis',	'UT',	26,		1,	2026,	248.25,	2.09,	'SEA',	1,	'CF',	'Act'),
('Alejandro Kirk',	'C',	23,		1,	2026,	218.5,	2.32,	'TOR',	1,	'C',	'Res'),
('Nathaniel Lowe',	'1B',	26,		1,	2026,	338,	2.18,	'TEX',	1,	'1B',	'Res'),
('Jonathan Schoop',	'1B',	30,		9,	2024,	347.5,	2.24,	'DET',	1,	'1B,2B',	'Res'),
('Jean Segura',	'2B',	32,		4,	2024,	372,	2.7,	'PHI',	1,	'2B',	'Res'),
('Justin Turner',	'3B',	37,		7,	2026,	361.75,	2.7,	'LAD',	1,	'3B',	'Res'),
('Joey Wendle',	'SS',	31,		4,	2024,	282.75,	2.11,	'MIA',	1,	'3B,SS',	'Res'),
('Jorge Soler',	'RF',	30,		8,	2024,	342.5,	2.36,	'MIA',	1,	'RF',	'Res'),
('Hunter Dozier',	'RF',	30,		1,	2021,	246.5,	1.87,	'KC',	1,	'3B,RF',	'Res'),
('Eloy Jimenez',	'UT',	25,		20,	2026,	369,	2.46,	'CHW',	1,	'LF',	'Res'),
('Fernando Tatis Jr.',	'SS',	23,		40,	2026,	331.5,	3.72,	'SD',	1,	'SS',	'IR'),
('Francisco Alvarez',	'C',	20,		1,	2050,	0,	0,	'NYM',	1,	'C',	'Min'),
('Dillon Dingler',	'C',	23,		1,	2027,	0,	0,	'DET',	1,	'C',	'Min'),
('Brett Baty',	'3B',	22,		1,	2050,	0,	0,	'NYM',	1,	'3B',	'Min'),
('Elehuris Montero',	'3B',	23,		1,	2027,	60.25,	2.62,	'COL',	1,	'3B',	'Min'),
('Gunnar Henderson',	'SS',	20,		1,	2050,	0,	0,	'BAL',	1,	'SS',	'Min'),
('Ed Howard',	'SS',	20,		1,	2050,	0,	0,	'CHC',	1,	'SS',	'Min'),
('Greg Jones',	'SS',	24,		1,	2027,	0,	0,	'TB',	1,	'SS',	'Min'),
('Orelvis Martinez',	'SS',	20,		2,	2050,	0,	0,	'TOR',	1,	'SS',	'Min'),
('Jeremy Pena',	'SS',	24,		1,	2026,	276.75,	2.45,	'HOU',	1,	'SS',	'Min'),
('Jose Salas',	'SS',	18,		1,	2050,	0,	0,	'MIA',	1,	'SS',	'Min'),
('Kyle Stowers',	'LF',	24,		1,	2027,	0,	0,	'BAL',	1,	'LF,CF',	'Min'),
('Owen Caissie',	'CF',	19,		1,	2050,	0,	0,	'CHC',	1,	'CF',	'Min'),
('Brenton Doyle',	'CF',	23,		1,	2027,	0,	0,	'COL',	1,	'CF,RF',	'Min'),
('Alek Thomas',	'CF',	21,		1,	2050,	109.75,	3.14,	'ARI',	1,	'CF',	'Min'),
('Kevin Alcantara',	'CF',	19,		1,	2050,	0,	0,	'CHC',	1,	'CF,RF',	'Min'),
('Jairo Pomares',	'RF',	21,		1,	2050,	0,	0,	'SF',	1,	'RF',	'Min'),
('Seth Beer',	'UT',	25,		1,	2027,	101.5,	2.21,	'ARI',	1,	'UT',	'Min')

select * from players 

Create table dbo.Owners(
	OwnerId int primary key identity(1,1),
	FirstName nvarchar (35) not null,
	LastName nvarchar (35) not null
)

insert into dbo.Owners values
('Mikey', 'Zuniga'),
('Jonathan', 'Wade'),
('Austin', 'Michals'),
('Tyler', 'Graham'),
('Sonny', 'Villani'),
('Zach', 'Graham'),
('Bails', 'James'),
('Cory', 'Ott'),
('Todd', 'Stringer'),
('Trevor', 'Lardy'),
('Bobby', 'Dano'),
('John', 'Pensch')

select * from dbo.Owners 

Create table dbo.Teams(
	TeamId int primary key identity(1,1),
	TeamName nvarchar(35) not null,
	Salary int not null,
	[OwnerId] nvarchar (35) not null,
	Wins int,
	Losses int,
	Abbreviation nvarchar(4)
)

insert into dbo.Teams values
('Show Me Ya Tatis', 370, 1, 0, 0, 'SMYT'),
('Acuna Matata', 384, 2, 0, 0, 'WADE'),
('Billy Beane', 357, 3, 0, 0, 'BEAN'),
('Bryce Krispie Treats', 310, 4, 0, 0, 'HARP'),
('Dustin Harris Hype Train', 273, 5, 0, 0, 'DUST'),
('Eggs Odorizzi', 370, 6, 0, 0, 'ZACH'),
('Georgia Peaches', 333, 7, 0, 0, 'BAIL'),
('High Cheeze', 334, 8, 0, 0, 'CORY'),
('Jack of All Trades', 402, 9, 0, 0, 'Jack'),
('Kiriloff Szn', 294, 10, 0, 0, 'TREV'),
('Nazty Boys', 298, 11, 0, 0, 'BOB'),
('Grim Reiver', 295, 12, 0, 0, 'JP')

select * 
from Teams inner join Owners on Teams.OwnerId = Owners.OwnerId



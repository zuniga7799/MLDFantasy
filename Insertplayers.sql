Create table dbo.Players(
	PlayerId int identity(1,1),
	PlayerName nvarchar(35),
	Position nvarchar(2),
	Age int,
	Salary int,
	[Contract] int,
	Points float,
	PPG float,
	Team nvarchar (3),
	[Owner] nvarchar (35),
	Eligibility  nvarchar(35),
	[Status]  nvarchar (35)
)


select * 
from dbo.Players

insert into dbo.Players values
('Salvador Perez',	'C',	31,		6,	2026,	351.75,	2.46,	'KC',	'SMYT',	'C',	'Act'),
('Jared Walsh',	'1B',	28,		5,	2026,	358,	2.28,	'LAA',	'SMYT',	'1B',	'Act'),
('Nico Hoerner',	'2B',	24,		2,	2026,	128.75,	1.98,	'CHC',	'SMYT',	'2B',	'Act'),
('DJ LeMahieu',	'3B',	33,		13,	2026,	428.5,	2.91,	'NYY',	'SMYT',	'1B,2B,3B',	'Act'),
('Kyle Farmer',	'SS',	31,		1,	2024,	154.75,	1.52,	'CIN',	'SMYT',	'SS',	'Act'),
('Jesse Winker',	'LF',	28,		2,	2026,	371,	2.69,	'SEA',	'SMYT',	'LF',	'Act'),
('Bryan Reynolds',	'CF',	27,		3,	2026,	439,	2.78,	'PIT',	'SMYT',	'CF',	'Act'),
('Aaron Judge',	'RF',	29,		18,	2026,	419.75,	2.96,	'NYY',	'SMYT',	'RF',	'Act'),
('Christian Vazquez',	'UT',	31,		6,	2026,	259.25,	1.88,	'BOS',	'SMYT',	'C',	'Act'),
('Luke Voit',	'UT',	31,		1,	2026,	335.5,	2.52,	'SD',	'SMYT',	'1B',	'Act'),
('Kyle Lewis',	'UT',	26,		1,	2026,	248.25,	2.09,	'SEA',	'SMYT',	'CF',	'Act'),
('Alejandro Kirk',	'C',	23,		1,	2026,	218.5,	2.32,	'TOR',	'SMYT',	'C',	'Res'),
('Nathaniel Lowe',	'1B',	26,		1,	2026,	338,	2.18,	'TEX',	'SMYT',	'1B',	'Res'),
('Jonathan Schoop',	'1B',	30,		9,	2024,	347.5,	2.24,	'DET',	'SMYT',	'1B,2B',	'Res'),
('Jean Segura',	'2B',	32,		4,	2024,	372,	2.7,	'PHI',	'SMYT',	'2B',	'Res'),
('Justin Turner',	'3B',	37,		7,	2026,	361.75,	2.7,	'LAD',	'SMYT',	'3B',	'Res'),
('Joey Wendle',	'SS',	31,		4,	2024,	282.75,	2.11,	'MIA',	'SMYT',	'3B,SS',	'Res'),
('Jorge Soler',	'RF',	30,		8,	2024,	342.5,	2.36,	'MIA',	'SMYT',	'RF',	'Res'),
('Hunter Dozier',	'RF',	30,		1,	2021,	246.5,	1.87,	'KC',	'SMYT',	'3B,RF',	'Res'),
('Eloy Jimenez',	'UT',	25,		20,	2026,	369,	2.46,	'CHW',	'SMYT',	'LF',	'Res'),
('Fernando Tatis Jr.',	'SS',	23,		40,	2026,	331.5,	3.72,	'SD',	'SMYT',	'SS',	'IR'),
('Francisco Alvarez',	'C',	20,		1,	2050,	0,	0,	'NYM',	'SMYT',	'C',	'Min'),
('Dillon Dingler',	'C',	23,		1,	2027,	0,	0,	'DET',	'SMYT',	'C',	'Min'),
('Brett Baty',	'3B',	22,		1,	2050,	0,	0,	'NYM',	'SMYT',	'3B',	'Min'),
('Elehuris Montero',	'3B',	23,		1,	2027,	60.25,	2.62,	'COL',	'SMYT',	'3B',	'Min'),
('Gunnar Henderson',	'SS',	20,		1,	2050,	0,	0,	'BAL',	'SMYT',	'SS',	'Min'),
('Ed Howard',	'SS',	20,		1,	2050,	0,	0,	'CHC',	'SMYT',	'SS',	'Min'),
('Greg Jones',	'SS',	24,		1,	2027,	0,	0,	'TB',	'SMYT',	'SS',	'Min'),
('Orelvis Martinez',	'SS',	20,		2,	2050,	0,	0,	'TOR',	'SMYT',	'SS',	'Min'),
('Jeremy Pena',	'SS',	24,		1,	2026,	276.75,	2.45,	'HOU',	'SMYT',	'SS',	'Min'),
('Jose Salas',	'SS',	18,		1,	2050,	0,	0,	'MIA',	'SMYT',	'SS',	'Min'),
('Kyle Stowers',	'LF',	24,		1,	2027,	0,	0,	'BAL',	'SMYT',	'LF,CF',	'Min'),
('Owen Caissie',	'CF',	19,		1,	2050,	0,	0,	'CHC',	'SMYT',	'CF',	'Min'),
('Brenton Doyle',	'CF',	23,		1,	2027,	0,	0,	'COL',	'SMYT',	'CF,RF',	'Min'),
('Alek Thomas',	'CF',	21,		1,	2050,	109.75,	3.14,	'ARI',	'SMYT',	'CF',	'Min'),
('Kevin Alcantara',	'CF',	19,		1,	2050,	0,	0,	'CHC',	'SMYT',	'CF,RF',	'Min'),
('Jairo Pomares',	'RF',	21,		1,	2050,	0,	0,	'SF',	'SMYT',	'RF',	'Min'),
('Seth Beer',	'UT',	25,		1,	2027,	101.5,	2.21,	'ARI',	'SMYT',	'UT',	'Min')


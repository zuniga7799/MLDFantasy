Create table dbo.Players(
	PlayerId int identity(1,1),
	PlayerName nvarchar(35),
	Position nvarchar(2),
	Age int,
	Salary int,
	[Contract] int,
	PPG float,
	Team nvarchar (3),
	[Owner] nvarchar (35)
)

insert into dbo.Players values
('Aaron Judge', 'RF', 29, 18, 2026, 2.96, 'NYY', 'SMYT') 

select * 
from dbo.Players
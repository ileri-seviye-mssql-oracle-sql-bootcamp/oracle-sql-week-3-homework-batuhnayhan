--4 combine örneði

--1.örnek
select 
sp.goal,
sp.shots_total,
sp.shots_ontarget,
sp.shots_fk
from players p join shooting_performance sp on p.id = sp.player_id
where p.first_name = 'Ýrfan Can'
UNION ALL
select 
pp.assist,
pp.passes_total,
pp.passes_key,
pp.total_distance
from players p join passing_performance pp on p.id = pp.player_id
where p.first_name = 'Ýrfan Can'

--2.örnek
select
p.first_name,
p.last_name,
pp.assist,
t.team
from players p
    join positions po on p.positions_id = po.id 
    join passing_performance pp on p.id = pp.player_id
    join teams t on p.team_id = t.id
where po.position = 'Orta Saha' and t.team = 'Alanyaspor'
UNION
select
p.first_name,
p.last_name,
pp.assist,
t.team
from players p
    join positions po on p.positions_id = po.id 
    join passing_performance pp on p.id = pp.player_id
    join teams t on p.team_id = t.id
where po.position = 'Orta Saha' and t.team = 'Beþiktaþ'

--3.örnek
select 
sp.shots_ontarget,
sp.shots_fk
from players p join shooting_performance sp on p.id = sp.player_id
where p.first_name = 'Uðurcan'
UNION ALL
select 
aerials_won,
aerials_lost
from players p join defensive_performance dp on p.id = dp.player_id
where p.first_name = 'Uðurcan'

--4.örnek
select team from teams
UNION ALL
select league from teams



-- 4 join örneði

-- pozisyonu orta saha olan ve Alanyaspor'da oynayan oyuncularýn isimlerini ve asist sayýsýný getiren sql sorgusu
select
p.first_name,
p.last_name,
pp.assist,
t.team
from players p
    join positions po on p.positions_id = po.id 
    join passing_performance pp on p.id = pp.player_id
    join teams t on p.team_id = t.id
where po.position = 'Orta Saha' and t.team = 'Alanyaspor';


-- hangi pozisyonda kaç futbolcu oldugunu getiren sql sorgusu
select
po.position,
count(*) as kac_kisi
from players p
    join positions po on p.positions_id = po.id 
    join shooting_performance sp on p.id = sp.player_id
group by po.position


-- isminde e harfi geçen futbolcularýn toplam attýðý þut sayýlarýný getiren sql sorgusu
select
p.first_name,
sp.shots_total
from players p
    join shooting_performance sp on p.id = sp.player_id
where p.first_name like '%e%'


-- pozisyonu defans olup birden fazla gol atan futbolcunun ismini ve kaç gol attýgýný getiren sql sorgusu
select
p.first_name,
sp.goal
from players p
    join positions po on p.positions_id = po.id 
    join shooting_performance sp on p.id = sp.player_id
where po.position = 'Defans' and sp.goal > 1;

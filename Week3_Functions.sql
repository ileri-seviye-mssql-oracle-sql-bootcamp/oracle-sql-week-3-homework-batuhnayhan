--seçeceðiniz 15-20 adet tek satýr fonksiyon örneði oluþturunuz.

select
    lower(first_name),
    upper(last_name),
    initcap(first_name),
    concat(first_name,last_name) as fullname
from players

select
    last_name,
    substr(last_name,2,7),
    length(last_name),
    instr(last_name,'a'),
    replace(last_name,'a','o'),
    lpad(last_name,15,'*'),
    rpad(last_name,15,'*')
from players

select
    to_char(sysdate, 'YYYY')
from dual;

select 
    round(goal),
    mod(goal,3)
from shooting_performance

select 
    next_day(sysdate, 'Cuma'),
    last_day(sysdate)
from dual;

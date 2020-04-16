********Query**********
1.Name of the player who played at least one match.
select p_name
from position natural join player
where position is not null

2.Name of the highest payed player.
select p_name, salary
from player
where salary >=(select max(salary) from player
)

3.League which has maximum number of clubs
select league_name
from(
 select league_name, count(club_name) as c
 from club
 group by league_name
)
where c>= ( select max(c) 
from(
 select league_name, count(club_name) as c
 from club
 group by league_name) 
)

4.Show the country with its number of players
select country_name, count(p_id)
from player
group by country_name

5.Show the number of Argentine players play in premier league
select p_name
from player natural left join club 
where country_name='ARG' and club_name in (select club_name from club where league_name='Premier League')

6.Show the name of the coaches who doesn't manage any clubs
select distinct name
from coach natural left join manages 
where club_name is null

7.List of the player who played in CF position
select p_name
from player natural join position
where position='CF'

8.List of the venues with no of matches in it
select v_name, count(m_id) as NO_of_Matches
from match natural right join venue
group by v_name

9.Number of player play in premier league
select count(p_id)
from player p join club c on p.club_name=c.club_name
where league_name='Premier League'

********Function, Procedure, Trigger********
1.A function which takes country name as input and returns number of players in it
create or replace function co_pl_49(cName varchar)
  return number is
  x number;
begin
    select count(p_id) into x
    from player
    where country_name=cName;
    return x;
end;

----
begin
dbms_output.put_line(co_pl_49('BRA'));
end;
----

2.A function which takes club name as input and return its winning percentage
create or replace function per_49(cl varchar)
  return number is
  x number;
  y number;
  p number;
begin
    select won into x
    from club
    where club_name=cl;
    select won+drawn+lost into y
    from club
    where club_name=cl;
    p:=(x/y)*100;
    return p;
end;
----
begin
dbms_output.put_line(per_49('PSG'));
end;
----
3.A Procedure which  adds 10% to the salary of the coaches
create or replace type c_list49 as table of varchar;
create or replace procedure add_49(x in out number )
is
begin
    x:=x*1.1;
end;

----
declare 
x number;
begin
    select salary into x
    from coach
    where name='Morinho';
    add_49(x);
    dbms_output.put_line(x);
end;
----
4.A function which takes a range and gives the list of the venue which capacity is within that range
create or replace type vList49 as table of varchar(100);
create or replace function ven49(i number, f number)
  return vList49 is
  x vList49;
begin
    select v_name bulk collect into x
    from venue
    where capacity >= i and capacity <=f;
    return x;
end;
----
select *
from table(ven49(70000,90000))
----
5.A trigger prints new name
create or replace trigger trg49
after insert or update on player
for each row
begin
    dbms_output.put_line(:new.p_name);
end;
----
insert into player values('001333','Aspas','SPA','FCB',TO_DATE('1992/06/12 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
----

6.A trigger which prints total number of players
create or replace trigger trg1_49
after insert or delete or update on player
declare 
n number;
begin
    select count(p_id) into n
    from player;
    dbms_output.put_line(n);
end;
----
insert into player values('001334','Nacho','SPA','RMA',TO_DATE('1992/06/12 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
----

7.A function which returns list of players with player id who plays in league 1
create or replace type pler as object(n varchar(30), ln varchar(30));
create or replace type pl_49 as table of pler;

create or replace function lipl49
return pl_49 is
x pl_49;
begin
    select pler(p,l) bulk collect into x from(
    select p_name as p, p_id as l 
    from player p join club c on p.club_name=c.club_name
    where league_name='League 1'
    );
    return x;
end;
----
select *
from table(lipl49)
----

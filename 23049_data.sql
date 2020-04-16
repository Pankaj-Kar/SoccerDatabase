delete from position;
delete from player;
delete from played;
delete from manages;
delete from coach;
delete from club;
delete from league;
delete from match;
delete from venue;
insert into venue values('Camp Noe',99354);
insert into venue values('Santiago Bernabue',80000);
insert into venue values('Old Trafford',99999);
insert into venue values('Etihad Stadium',49000);
insert into venue values('Parc Des Princes',49999);
insert into venue values('Anfield Stadium',60000);
insert into venue values('Allianz Stadium',48000);
insert into venue values('San Siro',80000);

insert into match values('900001','Camp Noe','03-00','RMA');
insert into match values('900002','Old Trafford','02-01','MCT');
insert into match values('900003','San Siro','01-03','JUV');
insert into match values('900004','Parc Des Princes','02-05','PSG');


insert into league values('La Liga','SPA');
insert into league values('Premier League','ENG');
insert into league values('Serie A','ITA');
insert into league values('League 1','FRA');

insert into club values('FCB','SPA','La Liga',4,2,1,'110001');
insert into club values('RMA','SPA','La Liga',6,3,2,'110002');
insert into club values('MNU','ENG','Premier League',10,2,2,'110003');
insert into club values('MCT','ENG','Premier League',9,3,2,'110004');
insert into club values('LIV','ENG','Premier League',8,1,4,null);
insert into club values('JUV','ITA','Serie A',8,1,4,'110006');
insert into club values('ACM','ITA','Serie A',8,2,4,'110007');
insert into club values('PSG','FRA','League 1',10,0,0,'110008');



insert into coach values('110001','FCB','Valverde','SPA','25000',TO_DATE('1964/02/09 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110002','RMA','Solari','ARG','30000',TO_DATE('1979/02/09 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110003','MNU','Morinho','SPA','40000',TO_DATE('1964/02/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110004','MCT','Guardiola','SPA','30000',TO_DATE('1970/11/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110005',null,'Klopp','ENG',null,TO_DATE('1974/01/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110006','JUV','Allegri','ITA','30000',TO_DATE('1980/02/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110007','ACM','Gattuso','ITA','20000',TO_DATE('1982/01/12 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
insert into coach values('110008','PSG','Tuchel','GER','40000',TO_DATE('1970/03/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));




insert into manages values('110001','FCB');
insert into manages values('110002','RMA');
insert into manages values('110003','MNU');
insert into manages values('110004','MCT');
insert into manages values('110006','JUV');
insert into manages values('110007','ACM');
insert into manages values('110008','PSG');


insert into played values('FCB','900001');
insert into played values('RMA','900001');
insert into played values('MNU','900002');
insert into played values('MCT','900002');
insert into played values('JUV','900003');
insert into played values('ACM','900003');





insert into player values('001011','Messi','ARG','FCB',TO_DATE('1987/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),75000);
insert into player values('001012','Pique','SPA','FCB',TO_DATE('1987/02/02 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),12000);
insert into player values('001013','Umtiti','CAM','FCB',TO_DATE('1993/11/14 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),10000);
insert into player values('001014','Coutinho','BRA','FCB',TO_DATE('1992/06/12 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),80000);
insert into player values('001015','Malcom','BRA','FCB',TO_DATE('1997/02/26 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001016','Arthur','BRA','FCB',TO_DATE('1996/08/12 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001017','Dembele','FRA','FCB',TO_DATE('1990/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),70000);
insert into player values('001018','Suarez','URG','FCB',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),30000);
insert into player values('001019','Jordi Alba','SPA','FCB',TO_DATE('1989/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),12000);
insert into player values('001020','Ter Stegan','GER','FCB',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),15000);
insert into player values('001021','Vidal','CHI','FCB',TO_DATE('1987/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),10000);
insert into player values('001022','Rakitic','CRO','FCB',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001023','Busquets','SPA','FCB',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);

insert into player values('001031','Navas','COS','RMA',TO_DATE('1986/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001032','Carvajal','SPA','RMA',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),12000);
insert into player values('001033','Ramos','SPA','RMA',TO_DATE('1986/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),25000);
insert into player values('001034','Varane','SPA','RMA',TO_DATE('1993/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001035','Marcelo','BRA','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),30000);
insert into player values('001036','Kroos','GER','RMA',TO_DATE('1990/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),28000);
insert into player values('001037','Modric','CRO','RMA',TO_DATE('1985/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),50000);
insert into player values('001038','Casemiro','BRA','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),30000);
insert into player values('001039','Asensio','SPA','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),35000);
insert into player values('001040','Isco','SPA','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),34000);
insert into player values('001041','Bale','WAL','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),60000);
insert into player values('001042','Benzema','FRA','RMA',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),40000);
insert into player values('001043','Vinicious','BRA','RMA',TO_DATE('1999/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),9000);

insert into player values('001051','De Gea','SPA','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),23000);
insert into player values('001052','Lindelof','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),23000);
insert into player values('001053','Bailly','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001054','Pogba','FRA','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),50000);
insert into player values('001055','Sanchez','CHI','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),30000);
insert into player values('001056','Mata','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001057','Lukaku','BEL','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001058','Rashford','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),20000);
insert into player values('001059','Martial','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),22000);
insert into player values('001060','Lingard','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001061','Rojo','ARG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001062','Reneira','ENG','MNU',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);

insert into player values('001071','Ederson','BRA','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),33000);
insert into player values('001072','Walker','ENG','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
insert into player values('001073','Danilo','BRA','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),43000);
insert into player values('001074','Kompany','BEL','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),33000);
insert into player values('001075','Sterling','ENG','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),75000);
insert into player values('001076','Aguero','ARG','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),34000);
insert into player values('001077','Mangala','FRA','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001078','De Bruyne','BEL','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),29000);
insert into player values('001079','Sane','GER','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
insert into player values('001080','David Silva','SPA','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001081','Jesus','BRA','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),28000);
insert into player values('001082','Otamendi','ARG','MCT',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);

insert into player values('001091','Szczesny','POL','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001092','Seigilo','ITA','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001093','Chiellini','ITA','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001094','Pjanic','BOH','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001095','Khedira','Ger','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001096','Ronaldo','POR','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),76000);
insert into player values('001097','Dybala','ARG','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),70000);
insert into player values('001098','Costa','BRA','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001099','Matuidi','FRA','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001100','Mandzukic','CRO','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001101','Bonucci','ITA','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001102','Cancelo','POR','JUV',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);

insert into player values('001111','Calabria','ITA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001112','Mauri','ITA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),14000);
insert into player values('001113','Suso','SPA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
insert into player values('001114','Higuain','ARG','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),40000);
insert into player values('001115','Borni','ITA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001116','Conti','ITA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),28000);
insert into player values('001117','Ronagnoli,ITA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001118','Zapata','COL','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),12000);
insert into player values('001119','Reina','SPA','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),11000);
insert into player values('001121','Strinic','CRO','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),14000);
insert into player values('001122','Kessie','ICO','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),13000);
insert into player values('001123','Laxalt','URU','ACM',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001124','Busquets','SPA','FCB',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);

insert into player values('001131','Buffon','ITA','PSG',TO_DATE('1988/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001132','Thiago Silva','BRA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001133','Kehra','GER','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),22000);
insert into player values('001134','Marquinhos','BRA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),48000);
insert into player values('001135','Alves','BRA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),28000);
insert into player values('001136','Veratti','ITA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),33000);
insert into player values('001137','Mbappe','FRA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001138','Cavani','URU','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001139','Neymar','BRA','PSG',TO_DATE('1996/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),90000);
insert into player values('001140','Di Maria','ARG','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),23000);
insert into player values('001141','Bernert','SPA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);
insert into player values('001142','Rabiot','FRA','PSG',TO_DATE('1992/06/24 00:00:00', 'yyyy/mm/dd hh24:mi:ss'),18000);



insert into position values('900001','001011','CF');
insert into position values('900001','001012','CB');
insert into position values('900001','001013','LW');
insert into position values('900001','001014','AM');
insert into position values('900001','001015','RW');
insert into position values('900001','001016','LM');
insert into position values('900001','001017',null);
insert into position values('900001','001018','SS');
insert into position values('900001','001019','LB');
insert into position values('900001','001020','GK');
insert into position values('900001','001021',null);
insert into position values('900001','001022','RM');
insert into position values('900001','001023','RB');

insert into position values('900001','001031','GK');
insert into position values('900001','001032','CB');
insert into position values('900001','001033','LW');
insert into position values('900001','001034','AM');
insert into position values('900001','001035','RW');
insert into position values('900001','001036','LM');
insert into position values('900001','001037',null);
insert into position values('900001','001038','SS');
insert into position values('900001','001039','LB');
insert into position values('900001','001040','GK');
insert into position values('900001','001041','LF');
insert into position values('900001','001042','CF');
insert into position values('900001','001043',null);

insert into position values('900002','001051','GK');
insert into position values('900002','001052','CB');
insert into position values('900002','001053','LW');
insert into position values('900002','001054','AM');
insert into position values('900002','001055','RW');
insert into position values('900002','001056','LM');
insert into position values('900002','001057','CF');
insert into position values('900002','001058','SS');
insert into position values('900002','001059','LB');
insert into position values('900002','001060','GK');
insert into position values('900002','001061',null);
insert into position values('900002','001062','CF');

insert into position values('900002','001071','GK');
insert into position values('900002','001072','CB');
insert into position values('900002','001073','LW');
insert into position values('900002','001074','AM');
insert into position values('900002','001075','RW');
insert into position values('900002','001076','LM');
insert into position values('900002','001077','CF');
insert into position values('900002','001078','SS');
insert into position values('900002','001079','LB');
insert into position values('900002','001080','GK');
insert into position values('900002','001081',null);
insert into position values('900002','001082','CF');

insert into position values('900003','001091','GK');
insert into position values('900003','001092','CB');
insert into position values('900003','001093','LW');
insert into position values('900003','001094','AM');
insert into position values('900003','001095','RW');
insert into position values('900003','001096','LM');
insert into position values('900003','001097','CF');
insert into position values('900003','001098','SS');
insert into position values('900003','001099','LB');
insert into position values('900003','001100','GK');
insert into position values('900003','001101',null);
insert into position values('900003','001102','CF');

insert into position values('900003','001101','GK');
insert into position values('900003','001102','CF');
insert into position values('900003','001103','CB');
insert into position values('900003','001104','CF');
insert into position values('900003','001105','CB');
insert into position values('900003','001106','AM');
insert into position values('900003','001107','CB');
insert into position values('900003','001108','CM');
insert into position values('900003','001108','CM');
insert into position values('900003','001110','CF');
insert into position values('900003','001111',null);
insert into position values('900003','001112','CF');

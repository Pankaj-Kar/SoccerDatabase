create table venue(
    v_name varchar(30),
    capacity numeric(5,0),
    primary key(v_name)
);
create table match(
    m_id varchar(6),
    v_name varchar(30),
    result varchar(5),
    opposition varchar(25),
    primary key(m_id),
    foreign key(v_name) references venue on delete set null 
);

create table league(
    league_name varchar(20),
    country_name varchar(20),
    primary key(league_name)
);
create table club(
    club_name varchar(25),
    country_name varchar(20),
    league_name varchar(20),
    won numeric(4,0),
    drawn numeric(4,0),
    lost numeric(4,0),
    c_id varchar(10),
    primary key(club_name),
    foreign key(league_name) references league on delete cascade
);
create table coach(
    c_id varchar(10),
    club_name varchar(25),
    name varchar(20),
    country_name varchar(20),
    salary numeric(5,0),
    c_dob date default(sysdate),
    primary key(c_id)
);
create table manages(
    c_id varchar(20),
    club_name varchar(25),
    primary key(c_id, club_name),
    foreign key(c_id) references coach on delete set null,
    foreign key(club_name) references club on delete set null  
);
create table played(
    club_name varchar(25),
    m_id varchar(6),
    primary key(m_id, club_name),
    foreign key(m_id) references match on delete cascade,
    foreign key(club_name) references club on delete cascade
);
create table player(
    p_id varchar(6),
    p_name varchar(20),
    country_name varchar(20),
    club_name varchar(20),
    dob date default(sysdate),
    salary numeric(6,0),
    primary key(p_id),
    foreign key(club_name) references club on delete set null 
);
create table position(
    m_id varchar(6),
    p_id varchar(6),
    position varchar(15) ,
    primary key(m_id, p_id),
    foreign key(m_id) references match on delete set null,
    foreign key(p_id) references player on delete cascade
);
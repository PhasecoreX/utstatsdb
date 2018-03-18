/* columns named to follow total.sql */
CREATE TABLE %dbpre%totalspecials (
  ts_stype smallint(5) NOT NULL,
  ts_score smallint(5) NOT NULL default 0,
  ts_plr mediumint(8) NOT NULL,
  ts_gms mediumint(8) NOT NULL default 0,
  ts_tm bigint(19) NOT NULL default 0
);

CREATE INDEX ts_ps ON %dbpre%totalspecials (ts_plr,ts_stype);

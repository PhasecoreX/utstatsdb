CREATE TABLE %dbpre%players (
  pnum mediumint(8) unsigned NOT NULL auto_increment,
  plr_name varchar(61) NOT NULL default '',
  plr_bot tinyint(3) unsigned NOT NULL default 0,
  plr_frags mediumint(9) NOT NULL default 0,
  plr_score int(10) NOT NULL default 0,
  plr_kills mediumint(8) unsigned NOT NULL default 0,
  plr_deaths mediumint(8) unsigned NOT NULL default 0,
  plr_suicides mediumint(8) unsigned NOT NULL default 0,
  plr_headshots mediumint(8) unsigned NOT NULL default 0,
  plr_firstblood mediumint(8) unsigned NOT NULL default 0,
  plr_transgib mediumint(8) unsigned NOT NULL default 0,
  plr_user varchar(35) NOT NULL default '',
  plr_id varchar(32) NOT NULL default '',
  plr_key varchar(32) NOT NULL default '',
  plr_ip varchar(21) NOT NULL default '',
  plr_netspeed mediumint(8) unsigned NOT NULL default 0,
  plr_rpg tinyint(1) unsigned NOT NULL default 0,
  plr_matches mediumint(8) unsigned NOT NULL default 0,
  plr_time bigint(19) unsigned NOT NULL default 0,
  plr_fph float NOT NULL default 0,
  plr_sph float NOT NULL default 0,
  plr_eff float NOT NULL default 0,
  plr_wins mediumint(8) unsigned NOT NULL default 0,
  plr_teamwins mediumint(8) unsigned NOT NULL default 0,
  plr_losses mediumint(8) unsigned NOT NULL default 0,
  plr_multi1 mediumint(8) unsigned NOT NULL default 0,
  plr_multi2 mediumint(8) unsigned NOT NULL default 0,
  plr_multi3 mediumint(8) unsigned NOT NULL default 0,
  plr_multi4 mediumint(8) unsigned NOT NULL default 0,
  plr_multi5 mediumint(8) unsigned NOT NULL default 0,
  plr_multi6 mediumint(8) unsigned NOT NULL default 0,
  plr_multi7 mediumint(8) unsigned NOT NULL default 0,
  plr_spree1 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet1 int(10) unsigned NOT NULL default 0,
  plr_spreek1 mediumint(8) unsigned NOT NULL default 0,
  plr_spree2 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet2 int(10) unsigned NOT NULL default 0,
  plr_spreek2 mediumint(8) unsigned NOT NULL default 0,
  plr_spree3 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet3 int(10) unsigned NOT NULL default 0,
  plr_spreek3 mediumint(8) unsigned NOT NULL default 0,
  plr_spree4 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet4 int(10) unsigned NOT NULL default 0,
  plr_spreek4 mediumint(8) unsigned NOT NULL default 0,
  plr_spree5 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet5 int(10) unsigned NOT NULL default 0,
  plr_spreek5 mediumint(8) unsigned NOT NULL default 0,
  plr_spree6 mediumint(8) unsigned NOT NULL default 0,
  plr_spreet6 int(10) unsigned NOT NULL default 0,
  plr_spreek6 mediumint(8) unsigned NOT NULL default 0,
  plr_combo1 mediumint(8) unsigned NOT NULL default 0,
  plr_combo2 mediumint(8) unsigned NOT NULL default 0,
  plr_combo3 mediumint(8) unsigned NOT NULL default 0,
  plr_combo4 mediumint(8) unsigned NOT NULL default 0,
  plr_flagcapture mediumint(8) unsigned NOT NULL default 0,
  plr_flagreturn mediumint(8) unsigned NOT NULL default 0,
  plr_flagkill mediumint(8) unsigned NOT NULL default 0,
  plr_cpcapture mediumint(8) unsigned NOT NULL default 0,
  plr_bombcarried mediumint(8) unsigned NOT NULL default 0,
  plr_bombtossed mediumint(8) unsigned NOT NULL default 0,
  plr_bombkill mediumint(8) unsigned NOT NULL default 0,
  plr_nodeconstructed mediumint(8) unsigned NOT NULL default 0,
  plr_nodedestroyed mediumint(8) unsigned NOT NULL default 0,
  plr_nodeconstdestroyed mediumint(8) unsigned NOT NULL default 0,
  UNIQUE KEY pnum (pnum),
  KEY plr_name (plr_name),
  KEY plr_bot (plr_bot,plr_name),
  KEY plr_usrid (plr_user,plr_id),
  KEY plr_sscore (plr_bot,plr_score,plr_frags,plr_deaths),
  KEY plr_skills (plr_bot,plr_kills,plr_frags,plr_deaths),
  KEY plr_sdeaths (plr_bot,plr_deaths,plr_frags),
  KEY plr_ssuicides (plr_bot,plr_suicides,plr_frags,plr_deaths),
  KEY plr_seff (plr_bot,plr_eff,plr_kills,plr_frags,plr_deaths),
  KEY plr_sfph (plr_bot,plr_fph,plr_kills,plr_frags,plr_deaths),
  KEY plr_ssph (plr_bot,plr_sph,plr_kills,plr_frags,plr_deaths),
  KEY plr_smatches (plr_bot,plr_matches,plr_kills,plr_frags,plr_deaths),
  KEY plr_stime (plr_bot,plr_time,plr_kills,plr_frags,plr_deaths),
  KEY plr_sfrags (plr_bot,plr_frags,plr_deaths),
  KEY plr_swins (plr_bot,plr_wins,plr_teamwins,plr_matches,plr_kills,plr_frags,plr_deaths)
) Type=MyISAM;

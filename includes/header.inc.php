<?php

$twidth = 720;
$twidthm = $twidth + 160;

$stylefile = "style{$layout}.css";
$logofile = "utstatsdblogo.png";
if (!isset($sidebarlogo) || !file_exists("resource/{$sidebarlogo}")) {
  $sidebarlogo = "utlogo.png";
}

echo <<<EOF
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>$title</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Style-Type" content="text/css" />
  <link rel="icon" href="resource/uicon.png" type="image/png" />
  <link rel="stylesheet" href="resource/{$stylefile}" type="text/css" />
</head>

EOF;

if (!$navbar) {
  // =========== Side Menu Bar ===========
  echo <<<EOF
<body class="side-nav">

<table cellpadding="0" cellspacing="0" border="0"><tr>
<td width="159" class="sidebar" valign="top">
  <a href="{$sidebarlink}"><img src="resource/{$sidebarlogo}" border="0" alt="Unreal Tournament Logo" /></a>
  <br />
  <p><a class="sidebar" href="index.php">{$LANG_INC_MAIN}</a></p>
  <p><a class="sidebar" href="index.php?stats=matches">{$LANG_INC_MATCHES}</a></p>
  <p><a class="sidebar" href="index.php?stats=players">{$LANG_INC_PLAYERS}</a></p>

EOF;

  if (isset($ranksystem) && $ranksystem) {
    echo <<<EOF
  <p><a class="sidebar" href="rankings.php">{$LANG_INC_RANKINGS}</a></p>

EOF;
  }

  echo <<<EOF
  <p><a class="sidebar" href="index.php?stats=maps">{$LANG_INC_MAPS}</a></p>

EOF;

  if ($serverlist) {
    echo <<<EOF
  <p><a class="sidebar" href="index.php?stats=servers">{$LANG_INC_SERVERS}</a></p>

EOF;
  }

  echo <<<EOF
  <p><a class="sidebar" href="totals.php">{$LANG_INC_TOTALS}</a></p>
  <p><a class="sidebar" href="careerhighs.php">{$LANG_INC_CAREERHIGHS}</a></p>
  <p><a class="sidebar" href="matchhighs.php">{$LANG_INC_MATCHHIGHS}</a></p>
  <p><a class="sidebar" href="index.php?stats=help">{$LANG_INC_HELP}</a></p>

EOF;

if ($menulinks) {
  echo '<div class="menulinks">';
  for ($i = 0; $i < $menulinks; $i++) {
    echo "  <p><a class=\"sidebar\" href=\"{$menu_url[$i]}\">{$menu_descr[$i]}</a></p>";
  }
  echo '</div>';
}

  echo <<<EOF
</td>
<td width="$twidth" valign="top" align="center">

<header>
  <div class="head-logo">
    <a href="index.php"><img src="resource/{$logofile}" border="0" alt="UTStatsDB" /></a>
  </div>
</header>

EOF;
} else {
  // =========== Top Menu Bar ===========
  echo <<<EOF
<body class="top-nav">

<header>
  <div class="side-logo">
    <a href="{$sidebarlink}"><img src="resource/{$sidebarlogo}" border="0" alt="Unreal Tournament Logo" /></a>
  </div>
  <div class="head-logo">
    <a href="index.php"><img src="resource/{$logofile}" border="0" alt="UTStatsDB" /></a>
  </div>
</header>

<table cellpadding="0" cellspacing="0" border="0" align="center">
<tr>
<td class="topbar" valign="top" align="center">
  <a class="topbar" href="index.php">{$LANG_INC_MAIN}</a>
  &nbsp;&#8729; &nbsp;<a class="topbar" href="index.php?stats=matches">{$LANG_INC_MATCHES}</a>
  &nbsp;&#8729; &nbsp;<a class="topbar" href="index.php?stats=players">{$LANG_INC_PLAYERS}</a>

EOF;

  if (isset($ranksystem) && $ranksystem)
    echo "&nbsp;&#8729; &nbsp;<a class=\"topbar\" href=\"rankings.php\">{$LANG_INC_RANKINGS}</a>\n";

  echo "&nbsp;&#8729; &nbsp;<a class=\"topbar\" href=\"index.php?stats=maps\">{$LANG_INC_MAPS}</a>\n";

  if ($serverlist)
    echo "&nbsp;&#8729; &nbsp;<a class=\"topbar\" href=\"index.php?stats=servers\">{$LANG_INC_SERVERS}</a>\n";

  echo "&nbsp;&#8729; &nbsp;<a class=\"topbar\" href=\"totals.php\">{$LANG_INC_TOTALS}</a>\n";

  if (isset($ranksystem) && $ranksystem && $serverlist)
    echo "<br />\n";
  else
    echo "&nbsp;| &nbsp;";

  echo <<<EOF
  <a class="topbar" href="careerhighs.php">{$LANG_INC_CAREERHIGHS}</a>
  &nbsp;&#8729; &nbsp;<a class="topbar" href="matchhighs.php">{$LANG_INC_MATCHHIGHS}</a>
  &nbsp;&#8729; &nbsp;<a class="topbar" href="index.php?stats=help">{$LANG_INC_HELP}</a>

EOF;

  if ($menulinks) {
    echo '<div class="menulinks">';
    for ($i = 0; $i < $menulinks; $i++) {
      echo "  &nbsp;<a class=\"topbar\" href=\"{$menu_url[$i]}\">{$menu_descr[$i]}</a>";
    }
    echo "</div>";
  }

  echo <<<EOF
</td>
</tr>
<tr>
<td width="$twidth" valign="top" align="center">

EOF;
}

?>

<?php
$ua_list = array(
	'iPhone',    // Apple iPhone
	'iPod',    // Apple iPod touch
	'Android',    // Android
	'dream',    // Pre 1.5 Android
	'CUPCAKE',    // 1.5+ Android
	'blackberry',    // blackberry
	'webOS',    // Palm Pre Experimental
	'incognito',    // Other iPhone browser
	'webmate',    // Other iPhone browser
	'Kindle'
);

$ua = false;

for($i=0; $i<sizeof($ua_list); $i++) {
	$str = "/".$ua_list[$i]."/i";
	$ret = preg_match($str, $_SERVER['HTTP_USER_AGENT']);
	if($ret != 0 ){ $ua = true; }
}

if ( $_GET['if'] == "pc" ) { $ua = false; }
if ( $_GET['if'] == "sp" ) { $ua = true; }

if (!$ua) {
	require_once ("index.tpl");
} else {
	require_once ("smart.tpl");
}
?>
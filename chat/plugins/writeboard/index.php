<?php

/*

CometChat
Copyright (c) 2016 Inscripts
License: https://www.cometchat.com/legal/license

*/

include_once(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR."plugins.php");
include_once(dirname(__FILE__).DIRECTORY_SEPARATOR."config.php");

if (file_exists(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php")) {
	include_once(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php");
}

if ($p_<3) exit;

$action = $subaction = $room = $chatroommode = $to = $random = $callback = $callbackfn = null;

if(!empty($_REQUEST['action'])){
	$action = $_REQUEST['action'];
}

if(!empty($_REQUEST['room'])){
	$room = $_REQUEST['room'];
}
if(!empty($_REQUEST['chatroommode'])){
	$chatroommode = $_REQUEST['chatroommode'];
}
if(!empty($_REQUEST['id'])){
	$to = intval($_REQUEST['id']);
}
if(!empty($_REQUEST['roomid'])){
	$to = intval($_REQUEST['roomid']);
}
if(!empty($_REQUEST['to'])){
	$to = intval($_REQUEST['to']);
}
if(!empty($_REQUEST['random'])){
	$random = $_REQUEST['random'];
}
if(!empty($_REQUEST['callback'])){
	$callback = $_REQUEST['callback'];
}
if(!empty($_REQUEST['callbackfn'])){
	$callbackfn = $_REQUEST['callbackfn'];
}

if(empty($room)){
	if(!empty($chatroommode)){
		$room = md5($channelprefix."writeboard_groups".$to);
	}else{
		$room = $userid<$to? md5($userid).md5($to) : md5($to).md5($userid);
		$room = md5($channelprefix.'writeboard_users'.$grp);
	}
}

if ($action == 'request') {
	$optionalmessage = 0;
	
	if(function_exists('hooks_sendOptionalMessage')) {
		$optionalmessage = hooks_sendOptionalMessage(array('to' => $to, 'plugin' => 'writeboard'));
	}

	if($optionalmessage == 0){
		$response = sendMessage($to,$writeboard_language[2]." <a href='javascript:void(0);' class='accept_Write' to='".$userid."' random='".$to."' chatroommode='0' mobileAction=\"javascript:jqcc.ccwriteboard.accept('".$userid."','".$to."');\">".$writeboard_language[3]."</a> ".$writeboard_language[4],1);

		$processedMessage = $_SESSION['cometchat']['user']['n'].": ".$writeboard_language[2];
	   	pushMobileNotification($to,$response['id'],$processedMessage);

		sendMessage($to,$writeboard_language[5],2);
	}
	
	if (!empty($callback)) {
		header('content-type: application/json; charset=utf-8');
		echo $callback.'()';
	}
}

if ($action == 'accept') {
	sendMessage($to,$writeboard_language[6],1);

	if (!empty($callback)) {
		header('content-type: application/json; charset=utf-8');
		echo $callback.'()';
	}
}

if ($action == 'writeboard') {

	if (!empty($chatroommode)) {
		sendChatroomMessage($to,$writeboard_language[2]." <a href='javascript:void(0);' class='accept_Write' to='".$to."' random='".$to."' chatroommode='".$chatroommode."' mobileAction=\"javascript:jqcc.ccwriteboard.accept('".$userid."','".$to."','".$chatroommode."');\">".$writeboard_language[3]."</a>",0);
	}

	$name = "Unknown".rand(0,999);

    $sql = getUserDetails($userid);

	if ($guestsMode && $userid >= $firstguestID) {
		$sql = getGuestDetails($userid);
	}

	$result = mysqli_query($GLOBALS['dbh'],$sql);

	if($row = mysqli_fetch_assoc($result)) {

		if (function_exists('processName')) {
			$row['username'] = processName($row['username']);
		}

		$name = $row['username'];
	}

echo <<<EOD
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="user-scalable=0,width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>{$writeboard_language[0]}</title>
<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-weight: inherit;
	font-style: inherit;
	font-size: 100%;
	font-family: inherit;
	vertical-align: baseline;
    text-align: center;
}

html {
  height: 100%;
  overflow: hidden; /* Hides scrollbar in IE */
}

body {
  height: 100%;
  margin: 0;
  padding: 0;
}

</style>
</head>
<body>
	<iframe src="{$etherURL}/p/chat-{$room}?userName={$name}" width="100%" height="100%" frameborder="0">
</body>
</html>
EOD;
}

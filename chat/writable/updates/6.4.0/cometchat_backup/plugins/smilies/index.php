<?php

/*

CometChat
Copyright (c) 2016 Inscripts
License: https://www.cometchat.com/legal/license

*/
include_once(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR."plugins.php");

if (file_exists(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php")) {
	include_once(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php");
}

$id = $_GET['id'];

$text = '';
$people_text = '';
$nature_text = '';
$objects_text = '';
$places_text = '';
$symbols_text = '';

$used = array();

$chatroommode = 0;
$broadcastmode = 0;
$caller = '';
if (!empty($_GET['chatroommode'])) {
	$chatroommode = 1;
}
if (!empty($_GET['broadcastmode'])) {
	$broadcastmode = 1;
}
if (!empty($_GET['caller'])) {
	$caller = $_GET['caller'];
}
$embed = '';
$embedcss = '';
$close = "setTimeout('window.close()',2000);";
$before = 'window.opener';

if (!empty($_GET['embed']) && $_GET['embed'] == 'web') {
	$embed = 'web';
	$embedcss = 'embed';
	$close = "";
	$before = 'parent';

	if ($chatroommode == 1) {
		$before = "$('#cometchat_trayicon_chatrooms_iframe,#cometchat_container_chatrooms .cometchat_iframe,.cometchat_embed_chatrooms',parent.document)[0].contentWindow";
	}
	if ($broadcastmode == 1) {
		$before = "$('#cometchat_trayicon_chatrooms_iframe,#cometchat_container_chatrooms .cometchat_iframe,.cometchat_embed_chatrooms',parent.document)[0].contentWindow";
	}
}

if (!empty($_GET['embed']) && $_GET['embed'] == 'desktop') {
	$embed = 'desktop';
	$embedcss = 'embed';
	$close = "";
	$before = 'parentSandboxBridge';
}

foreach ($smileys as $pattern => $result) {

	if (!empty($used[$result])) {
	} else {
		$title = str_replace("-"," ",ucwords(preg_replace("/\.(.*)/","",$result)));
		$class = str_replace("-"," ",preg_replace("/\.(.*)/","",$result));
		if (in_array($result, $people)) {
			$people_text .= '<span class="cometchat_smiley '.$class.' people" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px;"></span>';
		} elseif (in_array($result, $nature)) {
			$nature_text .= '<span class="cometchat_smiley '.$class.' nature" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px;"></span>';
		} elseif (in_array($result, $objects)) {
			$objects_text .= '<span class="cometchat_smiley '.$class.' objects" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px;"></span>';
		} elseif (in_array($result, $places)) {
			$places_text .= '<span class="cometchat_smiley '.$class.' places" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px;"></span>';
		} elseif (in_array($result, $symbols)) {
			$symbols_text .= '<span class="cometchat_smiley '.$class.' symbols" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px;"></span>';
		} else {
			$text .= '<img class="cometchat_smiley" width="20" height="20" src="'.BASE_URL.'writable/images/smileys/'.$result.'" title="'.$pattern.' ('.$title.')" to="'.$id.'" pattern="'.$pattern.'" chatroommode="'.$chatroommode.'" caller = "'.$caller.'" style="padding:2px">';
		}

		$used[$result] = 1;
	}
}
$hideadditional = '';
$tablength = "tab_length6";
$showadditional = '<div id="additional" class="tab tab_length6 "><h2>'.$smilies_language[7].'</h2></div>';
if(empty($text)){
	$tablength = "tab_length5";
	$showadditional = '';
}

$extrajs = "";
$scrollcss = "overflow-y:scroll;overflow-x:hidden;position:absolute;top:26px;";
if ($sleekScroller == 1) {
	$extrajs = '<script src="../../js.php?type=core&name=scroll"></script>';
	$scrollcss = "";
}

$cc_theme = '';
if(!empty($_REQUEST['cc_theme'])){
	$cc_theme = $_REQUEST['cc_theme'];
}
if($cc_theme == 'embedded'){
	$scrollcss = "";
}
$baseurl = BASE_URL;
echo <<<EOD
<!DOCTYPE html>
<html>
	<head>
		<title>{$smilies_language[0]}</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<link type="text/css" rel="stylesheet" media="all" href="../../css.php?type=plugin&name=smilies&subtype=smilies&cc_theme={$cc_theme}" />
		<script src="../../js.php?type=core&name=jquery"></script>
		<script>
			$ = jQuery = jqcc;
		</script>
		{$extrajs}
		<style>
			.container_body {
				{$scrollcss};
			}
			.container_body.embed {
				{$scrollcss};
			}
		</style>
		<script type="text/javascript">
	    	$(function(){
	    		$('.tab').click(function(){
	    			$('.tab').removeClass('selected');
	    			$('.emojis').removeClass('emoji_selected');
	    			$(this).addClass('selected');
	    			$('.'+$(this).attr('id')).addClass('emoji_selected');
	    		});
				$('.cometchat_smiley').click(function(){
					var to = $(this).attr('to');
					var pattern = $(this).attr('pattern');
					var chatroommode = $(this).attr('chatroommode');
					var caller = $(this).attr('caller');
					var controlparameters = {"type":"plugins", "name":"ccsmilies", "method":"addtext", "params":{"to":to, "pattern":pattern, "chatroommode":chatroommode, "caller":caller}};
					controlparameters = JSON.stringify(controlparameters);
					if(typeof(parent) != 'undefined' && parent != null && parent != self){
						parent.postMessage('CC^CONTROL_'+controlparameters,'*');
					} else {
						window.opener.postMessage('CC^CONTROL_'+controlparameters,'*');
					}
				});
				var mobileDevice = navigator.userAgent.match(/ipad|ipod|iphone|android|windows ce|Windows Phone|blackberry|palm|symbian/i);
				if(mobileDevice){
					$(".container_body").css({ 'overflow-y': 'auto','width':'100%'});
				}else if (jQuery().slimScroll) {
					$(".container_body").slimScroll({ width: '100%'});
					$(".container_body").slimScroll({ height: 'auto'});
				}
			});
	    </script>
	</head>
	<body>
		<div class="cometchat_wrapper">
			<div id="tabs">
			    <div id="people" class="tab {$tablength} selected"><img src="{$baseurl}images/smile.svg"/></div>
			    <div id="nature" class="tab {$tablength}"><img src="{$baseurl}images/panda.svg"/></div>
			    <div id="objects" class="tab {$tablength}"><img src="{$baseurl}images/coffee.svg"/></div>
			    <div id="places" class="tab {$tablength}"><img src="{$baseurl}images/transportation.svg"/></div>
			    <div id="symbols" class="tab {$tablength}"><img src="{$baseurl}images/ball.svg"/></div>
			    {$showadditional}
		    </div>
			<div class="container_body {$embedcss}">
				<div class="people emojis emoji_selected" id="emoji-people">{$people_text}</div>
				<div class="nature emojis" id="emoji-nature">{$nature_text}</div>
				<div class="objects emojis" id="emoji-objects">{$objects_text}</div>
				<div class="places emojis" id="emoji-places">{$places_text}</div>
				<div class="symbols emojis" id="emoji-symbols">{$symbols_text}</div>
				<div class="additional emojis" id="emoji-additional">{$text}</div>
			</div>
		</div>
	</body>
</html>
EOD;

<?php

include_once(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR.'config.php');

$camWidth = '450';
$camHeight = '335';

$webRTCServer = 'r.chatforyoursite.com';
$webRTCPHPServer = 's.chatforyoursite.com';

if(CS_TEXTCHAT_SERVER!=''&& TRANSPORT == 'cometservice-selfhosted' && USE_COMET == '1'){
	$webRTCServer = parse_url(CS_TEXTCHAT_SERVER, PHP_URL_HOST);
	$webRTCPHPServer = $_SERVER['HTTP_HOST'].BASE_URL."transports/cometservice-selfhosted";
}

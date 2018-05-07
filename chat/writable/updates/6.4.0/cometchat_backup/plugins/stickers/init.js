<?php
	include_once(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR."config.php");
	include_once(dirname(__FILE__).DIRECTORY_SEPARATOR."config.php");

	if (file_exists(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php")) {
		include_once(dirname(__FILE__).DIRECTORY_SEPARATOR."lang.php");
	}
?>

/*
 * CometChat
 * Copyright (c) 2016 Inscripts - support@cometchat.com | http://www.cometchat.com | http://www.inscripts.com
*/

(function($){

	$.ccstickers = (function () {

		var height = <?php echo $stiHeight;?>;
		var width = <?php echo $stiWidth;?>;
		var mobileDevice = navigator.userAgent.match(/ipad|ipod|iphone|android|windows ce|Windows Phone|blackberry|palm|symbian/i);

        return {

			getTitle: function() {
				return jqcc.ccstickers.getLanguage('title');
			},

			init: function (params) {
				var id = params.to;
				if(typeof(params.caller) == "undefined") {
					params.caller = '';
				}
				jqcc.ccstickers.loadstickers(params);				
			},
			sendStickerMessage: function(params) {

				var baseUrl = $.cometchat.getBaseUrl();
				var baseData = $.cometchat.getBaseData();
				var to = params.to;
				var key = params.key;
				var chatroommode = params.chatroommode;
				var category = params.category;
				var caller = params.caller;
				var calleeAPI = '<?php echo $theme;?>';

				var localmessageid = jqcc.ccstickers.processofflineMessage(params);
				$.ajax({
					url: baseUrl+'plugins/stickers/index.php?action=sendSticker&callback=?',
					type: 'GET',
					data: {to: to, key: key, basedata: baseData, chatroommode: chatroommode, category: category, caller: caller, localmessageid:localmessageid},
					dataType: 'jsonp',
					success: function(data) {
						if(data != null && typeof(data) != 'undefined'){
							if(typeof(data.localmessageid) == 'undefined') {
								data.localmessageid = '';
							}
							if(chatroommode == 1){
								if(typeof (jqcc[calleeAPI].addChatroomMessage)!=='undefined'){
									jqcc[calleeAPI].addChatroomMessage(jqcc.cometchat.getChatroomVars('myid'), data.m,data.id,1,Math.floor(new Date().getTime()),'0','1',to);
								}
								if(mobileDevice){
									jqcc[calleeAPI].closeModule('stickers');
									$('#currentroom').find('.cometchat_userchatarea').css('display','block');
									setTimeout(function(){
										$('#currentroom_convo').css('height',$(window).height()-($('#currentroom').find('.cometchat_tabsubtitle').outerHeight()+$('#currentroom').find('.cometchat_tabinputcontainer').outerHeight(true)+$('#currentroom').find('.cometchat_prependMessages').outerHeight(true)));
									}, 10);
								}
							} else {
								jqcc.cometchat.chatWith(to);
								jqcc[calleeAPI].addMessages([{"from": to, "message": data.m, "id": data.id, "broadcast": 0,"localmessageid": data.localmessageid}]);
								if(mobileDevice){
									jqcc[calleeAPI].closeModule('stickers');
				                    $('#cometchat_user_'+to+'_popup').find('.cometchat_userchatarea').css('display','block');
				                    setTimeout(function(){
				                        $('#cometchat_tabcontenttext_'+to).css('height',$(window).height()-(jqcc('#cometchat_user_'+to+'_popup').find('.cometchat_tabsubtitle').outerHeight()+jqcc('#cometchat_user_'+to+'_popup').find('.cometchat_tabinputcontainer').outerHeight(true)+jqcc('#cometchat_user_'+to+'_popup').find('.cometchat_prependMessages').outerHeight(true)));
				                    }, 10);
								}
							}
                            if(data.hasOwnProperty("localmessageid") && typeof(data.localmessageid) != '') {
                            	var offlinemessages = jqcc.cometchat.getFromStorage('offlinemessagesqueue');
                                if(offlinemessages.hasOwnProperty(data.localmessageid)) {
                                    delete offlinemessages[data.localmessageid];
                                    jqcc.cometchat.updateToStorage('offlinemessagesqueue',offlinemessages);
                                }
                            }
                            if(jqcc.isEmptyObject(jqcc.cometchat.getFromStorage('offlinemessagesqueue'))) {
                                jqcc.cometchat.updateToStorage('offmsgcounter',{'lmid':0});
                            }
						}
					},
					error: function(data) {

					}
				});
			},
			appendStickerMessage: function(controlparameters) {
				var to = controlparameters.to;
				var data = controlparameters.data;
				var chatroommode = controlparameters.chatroommode;
				var calleeAPI = '<?php echo $theme;?>';
				if(chatroommode == 1){
					if(typeof (jqcc[calleeAPI].addChatroomMessage)!=='undefined'){
						jqcc[calleeAPI].addChatroomMessage(jqcc.cometchat.getChatroomVars('myid'), data.m,data.id,1,Math.floor(new Date().getTime()),'0','0',to);
					}
				} else {
					if(typeof (jqcc[calleeAPI].addMessages)!=='undefined'){
                        jqcc[calleeAPI].addMessages([{"from": to, "message": data.m, "id": data.id, "broadcast": 0}]);
                        if(mobileDevice){
                        	var tabcontenttext_height = ($(window).height()*30)/100;
                        	jqcc('#cometchat_tabcontenttext_'+to).css('height',tabcontenttext_height);
                        }
                    }
				}
			},
			processControlMessage: function(controlparameters) {
				var baseUrl = $.cometchat.getBaseUrl();
				var category = controlparameters.category;
				var imageName = controlparameters.key+'.png';
				var message = "<img class=\"cometchat_stickerImage\" type=\"image\" src=\""+baseUrl+"plugins/stickers/images/"+category+"/"+imageName+"\" />";
				return message;
			},
			getLanguage: function(id) {
				stickers_language =  <?php echo json_encode($stickers_language); ?>;
				if(typeof id==undefined){
					return stickers_language;
				}else{
					return stickers_language[id];
				}
			},
			processofflineMessage: function(params) {
				var to = params.to;
				var key = params.key;
				var chatroommode = params.chatroommode;
				var category = params.category;
				var caller = params.caller;
				var calleeAPI = '<?php echo $theme;?>';

				var controlparameters = {"type":"plugins","name":"stickers","method":"sendSticker","params":{"to":to,"key":key,"chatroommode":chatroommode,"category":category,"caller":caller}};
				controlparameters = JSON.stringify(controlparameters);
				var message = 'CC^CONTROL_'+controlparameters;

				var localmessageid = jqcc.cometchat.updateOfflinemessages(to, message, '', chatroommode);
				if(localmessageid != '' && localmessageid != 'undefined') {
					jqcc[calleeAPI].addMessages([{"from": to, "message": message, "broadcast": 0, "direction": 2, "calledfromsend": 0, "localmessageid": localmessageid}]);
				}
				return localmessageid;
			},
			loadstickers: function(params){
				var extraQueryString = '';
				baseUrl = $.cometchat.getBaseUrl();
				baseData = $.cometchat.getBaseData();
				
				if(params.chatroommode==1){
					extraQueryString='&chatroommode=1';
				}

				loadPopupInChatbox(baseUrl+'plugins/stickers/index.php?id='+params.to+extraQueryString+'&basedata='+baseData+'&caller='+params.caller, 'stickers', 0, params.to, params.chatroommode);
			}
        };
    })();

})(jqcc);

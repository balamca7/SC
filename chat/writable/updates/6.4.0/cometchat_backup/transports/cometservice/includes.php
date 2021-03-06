<?php
 /*

CometChat
Copyright (c) 2016 Inscripts
License: https://www.cometchat.com/legal/license

*/
 global $trayicon;
 $callbackfn = '';
 if(!empty($_GET['callbackfn']) && $_GET['callbackfn'] == 'desktop'){
    $desktopmode = 1;
 }else{
    $desktopmode = 0;
 }
 include_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'comet.js');
 ?>
var cometid = '';
var cc_translate_use_google = 0;
function initializeCometService(){
    comet = COMET.init({
        'desktop': '<?php echo $desktopmode;?>',
        'baseurl': '<?php echo BASE_URL;?>',
        'KEY_A': '<?php echo KEY_A; ?>',
        'KEY_B': '<?php echo KEY_B; ?>',
        'KEY_C': '<?php echo KEY_C; ?>',
        'ssl': (window.location.protocol=='https:') ? true : false
    });
};

<?php
if(file_exists(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR.'modules'.DIRECTORY_SEPARATOR.'realtimetranslate'.DIRECTORY_SEPARATOR.'config.php')) {
    include_once(dirname(dirname(dirname(__FILE__))).DIRECTORY_SEPARATOR.'modules'.DIRECTORY_SEPARATOR.'realtimetranslate'.DIRECTORY_SEPARATOR.'config.php');
    if($useGoogle == 1 && !empty($googleKey) && in_array('realtimetranslate', $trayicon)){
?>
    cc_translate_use_google = 1;
<?php
    }
}
?>

function cometcall_function(id, td, calleeAPI){
    cometid = id;
    comet.subscribe({
        channel: id
    }, function(incoming){
        incoming.selfadded=0;
        incoming.old=0;
        if(jqcc.cookie('<?php echo $cookiePrefix;?>rttlang')&& incoming.fromid != jqcc.cometchat.getUserID() && (incoming.message).indexOf('CC^CONTROL_') == -1 && cc_translate_use_google){
            var lang = jqcc.cookie('<?php echo $cookiePrefix;?>rttlang');
            jqcc.ajax({
                url: "https://www.googleapis.com/language/translate/v2?key=<?php echo $googleKey;?>&callback=?",
                data: {q: incoming.message, target: lang},
                dataType: 'jsonp',
                success: function(data){
                    if(typeof(data.data)!="undefined"){
                        incoming.message = data.data.translations[0].translatedText+' <span class="untranslatedtext">('+incoming.message+')</span>';
                    }
                    if(typeof (jqcc[calleeAPI].addMessages)=="function"){
                        jqcc[calleeAPI].addMessages([incoming]);
                    }
                }
            });
        }else{
            if(typeof (jqcc[calleeAPI].addMessages)=="function"){
                jqcc[calleeAPI].addMessages([incoming]);
            }
        }
    });
}
function chatroomcall_function(id,userid){
    comet.subscribe({
        channel: id
    }, function(incoming){
        incoming.calledfromsend=0;
        jqcc.cometchat.setChatroomVars('newMessages', jqcc.cometchat.getChatroomVars('newMessages')+1);
        if(jqcc.cookie('<?php echo $cookiePrefix;?>rttlang') && incoming.fromid != userid && (incoming.message).indexOf('CC^CONTROL_') == -1 && cc_translate_use_google){
            var lang = jqcc.cookie('<?php echo $cookiePrefix;?>rttlang');
            jqcc.ajax({
                url: "https://www.googleapis.com/language/translate/v2?key=<?php echo $googleKey;?>&callback=?",
                data: {q: incoming.message, target: lang},
                dataType: 'jsonp',
                success: function(data){
                    if(typeof(data.data)!="undefined"){
                        incoming.message = data.data.translations[0].translatedText+' <span class="untranslatedtext">('+incoming.message+')</span>';
                    }
                    jqcc[jqcc.cometchat.getChatroomVars('calleeAPI')].addChatroomMessage(incoming);
                }
            });
        }else{
            jqcc[jqcc.cometchat.getChatroomVars('calleeAPI')].addChatroomMessage(incoming);
        }
    });
}

function cometuncall_function(id){
    comet.unsubscribe({channel: id});
}

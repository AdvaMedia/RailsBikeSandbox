(function(){tinymce.create('tinymce.plugins.LocoMediaPlugin',{init:function(ed,url){ed.addCommand('locoMedia',function(){ed.windowManager.open({file:url+'/dialog.htm?7',width:645,height:350,inline:1},{plugin_url:url})});ed.addButton('locomedia',{title:'locomedia.image_desc',cmd:'locoMedia'})},getInfo:function(){return{longname:'Locomotive Media File',author:'Didier Lafforgue',authorurl:'http://www.locomotivecms.com',infourl:'http://www.locomotivecms.com',version:tinymce.majorVersion+"."+tinymce.minorVersion}}});tinymce.PluginManager.add('locomedia',tinymce.plugins.LocoMediaPlugin)})();
!function(n){n.fn.charCount=function(i){function t(t){var e=n(t).val().length,s=i.allowed-e;s<=i.warning&&0<=s?n(t).next().addClass(i.cssWarning):n(t).next().removeClass(i.cssWarning),s<0?n(t).next().addClass(i.cssExceeded):n(t).next().removeClass(i.cssExceeded),n(t).next().html(i.counterText+s)}var e={allowed:140,warning:20,css:"counter",counterElement:"span",cssWarning:"warning",cssExceeded:"exceeded",counterText:""};i=n.extend(e,i);this.each(function(){n(this).after("<"+i.counterElement+' class="'+i.css+'">'+i.counterText+"</"+i.counterElement+">"),t(this),n(this).on("keyup",function(){t(this)}),n(this).on("change",function(){t(this)})})}}(jQuery);var List={init:function(t){t=t||{},List.overlay=new Dribbble.Overlay.Simple({$el:$("#overlay"),onHide:function(){List.overlay.$el.find(".display").html('<div class="processing">Loading\u2026</div>')}}),$(document.body).on("click","#list-add .add a.create",List.showCreate),$(document.body).on("click","#list-add ol.lists li a",List.toggleClicked),$(document.body).on("submit","#list-add .create-list form",List.create),$(document.body).on("click","#list-add .create-list form .cancel",List.cancel)},attach:function(){this.attached||(this.attached=!0,User.loggedIn()&&(List.init(),$(document).on("click","a.show-list-ui",function(t){this.$target=$(t.currentTarget),this.$target.parents(".blocking-current-user").length?Dribbble.Notify.alert("You have been blocked from adding this member to a list at their request."):List.launch(t),t.preventDefault()}.bind(this))))},launch:function(t){return List.listsUrl=$(t.currentTarget).attr("href"),List.showOverlay(),!1},showOverlay:function(){return List.listAll(),List.overlay.show(),!1},count:function(){return $("#list-add .add ol.lists li").length},listAll:function(t){t=t||{},List.overlay.$el.find(".display").load(List.listsUrl,function(){List.count()?(List.showAdd(),t.selectFirst&&List.toggle($("ol.lists li:first-child"))):List.showCreate()})},hideOverlay:function(){return $listLink=$('a.show-list-ui[href="'+List.listsUrl+'"]'),$listings=$("#list-add .add ol.lists li.included"),$listings.length?$listLink.addClass("listed"):$listLink.removeClass("listed"),List.overlay.hide(),!1},addToListPane:function(){return $("#list-add .add")},newListPane:function(){return $("#list-add .create-list")},showAdd:function(){return List.addToListPane().show(),List.newListPane().hide(),!1},showCreate:function(){List.addToListPane().hide(),List.newListPane().show();var t=$("div.list-form .name");return t.next().hasClass("counter")||t.charCount({allowed:32,warning:10}),!1},cancel:function(){return List.count()?List.showAdd():List.hideOverlay(),!1},toggle:function(e){if(!e.hasClass("processing")){e.addClass("processing");var t=e.modelId(),s=$("#overlay .add form").attr("action"),i=this.updateListed;if(e.hasClass("included")){e.removeClass("included");var n=s+"/"+t;$.ajax(n,{type:"DELETE",success:function(t){e.replaceWith(t),i(this.$target)}.bind(this)})}else $.post(s,{list_id:t,screenshot_id:List.screenshotId},function(t){e.replaceWith(t),i(this.$target)}.bind(this));return!1}},updateListed:function(t){var e=0<$("#list-add ol.lists .included").length;$(".floating-sidebar-container")[e?"addClass":"removeClass"]("listed-by-current-user"),e?t.addClass("outlined"):t.removeClass("outlined")},toggleClicked:function(){return List.toggle($(this).closest("li"))},create:function(){return $form=$(this),$.ajax({type:"POST",url:$form.attr("action"),data:$form.serialize(),beforeSend:function(){$('#list-add form input[type="submit"]').attr("disabled","true").attr("value","Processing, please wait\u2026"),$('#list-add form input[type="submit"]').addClass("processing")},statusCode:{201:function(){List.listAll({selectFirst:!0})},422:function(t){List.newListPane().html(t.responseText)}}}),!1}};
$(document).ready(function() {
	$("a.disclosure").html('▼').click(function(){disclose($(this))});
	//setTimeout("equalize()", 5000);
	equalize();
	$("#linktype").click(function(){$("#bytheme").hide();$("#bytype").show();$(this).addClass("sel");$("#linktheme").removeClass("sel");return false;});
	$("#linktheme").click(function(){$("#bytype").hide();$("#bytheme").show();$(this).addClass("sel");$("#linktype").removeClass("sel");return false;});
	
	$("#by_type").click(function(){$("#by_theme_list").hide();$("#by_type_list").show();$(this).addClass("act_cat");$("#by_theme").removeClass("act_cat");return false;});
	$("#by_theme").click(function(){$("#by_type_list").hide();$("#by_theme_list").show();$(this).addClass("act_cat");$("#by_type").removeClass("act_cat");return false;});
	
	$(".tb_tab1_link").click(function(){$(".tb_tab2").hide();$(".tb_tab1").show();$(".tb_tab1_link").addClass("ts_current");$(".tb_tab2_link").removeClass("ts_current");equalize();return false;});
	$(".tb_tab2_link").click(function(){$(".tb_tab1").hide();$(".tb_tab2").show();$(".tb_tab2_link").addClass("ts_current");$(".tb_tab1_link").removeClass("ts_current");equalize();return false;});
	
	$("#search_query").click(function(){
		if($(this).val()=="Enter a product name") {$(this).val("")}
	});
	
});

function disclose(t) {
	var sbi = $(t).parent().siblings(".sbinner");
	if (sbi.length > 0) {
		if ($(sbi).css('display') == 'none') $(t).html('▼');
		else $(t).html('▶');
		$(sbi).slideToggle(500);
	}
}

function equalize() {
	var ch = $("div#content").height();
	var lh = $("div#left_column").height();
	var rh = $("div#right_column").height();
	if ((rh != null)&&((rh < lh)||(rh < ch))) $("div#right_column").height(Math.max(lh,ch)+60);
}
function filter_input(e,regexp)
{
  e=e || window.event;
  var target=e.target || e.srcElement;
  var isIE=document.all;

  if (target.tagName.toUpperCase()=='INPUT')
  {
    var code=isIE ? e.keyCode : e.which;
    if (code<32 || e.ctrlKey || e.altKey) return true;

    var char=String.fromCharCode(code);
    if (!regexp.test(char)) return false;
  }
  return true;
}

function limitText(limitField, limitNum, limitRow) {
	str = limitField.value;
	if (str.length > limitNum) {
		limitField.value = str.substring(0, limitNum);
	}
	strings = str.split('\n');
	cnt=0;
	for(i=0;i<strings.length;i++){
		cnt+=Math.ceil(strings[i].length/50);
	}
}

function filter_limit(e,len,row)
{
	e = e || window.event;
    var target = e.target || e.srcElement;
	str = target.value;
	if (str.length>len) target.value=str.substr(0,len);
	
	strings = str.split('\n');
	cnt=0;
	for(i=0;i<strings.length;i++){
		cnt+=Math.ceil(strings[i].length/40);
		if (strings[i].length%40==0) cnt++;
	}
	
    var code=e.keyCode?e.keyCode:(e.which?e.which:e.charCode);
	if(code==13) cnt++;
    switch (code){
        case 8:
        case 9:
        case 46:
        case 35:
		case 36:
		case 37:
        case 38:
        case 39:
        case 40:
        return true;
    }
	r = (str.length < len) && (cnt <= row);
	return r;
}
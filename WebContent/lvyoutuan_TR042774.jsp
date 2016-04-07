<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>

<html lang="en-US">

<head>

<meta charset="GB2312">

<meta name="keywords" content="" />

<meta name="description" content="" />

<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'/>

<link href="m.css" rel="stylesheet" type="text/css" />

<title>触屏版</title>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>

<script src="js/manhuatoTop.1.0.js" type="text/javascript"></script>

<script src="js/common.js" type="text/javascript"></script>

</head>



<body>

<div id="frame" style="margin-bottom:50px;">

	<div id="top">

		<a id="logo" href="index.html"><img src="images/home.png" align="top"></a>

		<a id="title">菜品详情</a>

		<!--a id="search" href="search.jsp"><img src="images/search.png" align="top"></a-->

		<span id="list"><a href="javascript:window.history.back();"><img src="images/goback.png" align="top"></a>

		

		   <a href="login.html"><img src="images/userlogin.png" align="top"></a>

		

		</span>

	</div>

	<div id="con">

		<div class="tour_div">

			

			<div class="tour_img">

				

					<img src="uploadpic/meishi/0.png" width="100%">

				

				<div class="tour_type"></div>

			

				

			</div>


			<div class="tour_info">

				<table border="1px" bordercolor="#D8D8D6" class="on">
					<s:action name="ShowDishAction"/>
					<tr class="table_title">

						<td colspan=2><img src="images/i0.png"><span class="tc0">菜品详情</span></td>

					</tr>

					<tr>

						<td width="80" align="center">菜品ID</td>

						<td>

							<font color=blue>"${dishList.get(0).getMeishiId()}"</font>

						</td>

					</tr>

					<tr>

						<td align="center">菜品描述</td>

						<td>

							"${dishList.get(0).getName()}"

						</td>

					</tr>

					<tr>

						<td align="center">菜品价格</td>

						<td>

							"${dishList.get(0).getPrice()}"

						</td>

					</tr>

					<tr>

						<td align="center">菜品描述</td>

						<td>

							"${dishList.get(0).getDescription()}"

						</td>

					</tr>

					

					

					

				</table>

			</div>

			<div class="tour_sp">

				

			</div>

			<!--¿ª°à-->

			<div class="opendate">

				<table border="1px" bordercolor="#D8D8D6">

					<tr class="table_title">

						

					</tr>

					<tr>

						

					</tr>

				</table>

			</div>

			<!--ÐÐ³Ì-->

			<div class="proinfo">

				

			</div>

			

			<!--·ÑÓÃ-->

			<div class="priceinfo">

				

			</div>

			

			

			<!--ÌáÐÑ-->

			<div class="notice">

				

			</div>

			

			

			

		</div>

	</div>

	







<div id="menu" style="position:fixed;bottom:0px;width:100%;height:44px;line-height:44px;z-index:999;background:url(images/menubg.png) repeat-x;">

	<ul style="margin:0 auto;list-style-type:none;width:100%;max-width:500px;height:100%;">

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;Ð¡¶þÍÆ¼ö</div><img class="line" src="images/line.png" width=1>

		

		<span style="background-size:100%;">

			<img src="images/navbg4.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="onsale_0.html">Ã¿ÈÕÍÆ¼ö</a>

		

			<a href="onsale_2.html">Çå²ÖÃëÉ±</a>

		

			<a href="onsale.html">ÏÞÊ±ÌØÂô</a>

		

			<a href="hot.html">µ±¼¾ÈÈµã</a>

		

			</div>

		</span>

		

		</li>

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;ÂÃÓÎ³¬ÊÐ</div><img class="line" src="images/line.png" width=1>

		

		<span style="background-size:100%;">

			<img src="images/navbg4.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="list.html">Ä¿µÄµØ</a>

		

			<a href="rank.html">ÅÅÐÐ°ñ</a>

		

			<a href="search.html">ÂÃÓÎËÑË÷</a>

		

			<a href="javascript:beginTalk()">ÔÚÏß×ÉÑ¯</a>

		

			</div>

		</span>

		

		</li>

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;¶©µ¥´¦Àí</div>

		

		<span style="background-size:100%;">

			<img src="images/navbg5.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="#">ÎÒµÄ¶©µ¥</a>

		

			<a href="#">»áÔ±×ÊÁÏ</a>

		

			<a href="#">¹ØÁªÎ¢ÐÅ</a>

		

			<a href="#">ÁªÏµÎÒÃÇ</a>

		

			<a href="#">½øÈëÖ÷Õ¾</a>

		

			</div>

		</span>

		

		</li>

		

	</ul>

</div>

<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="images/front.png" width="100%" height="100%"></div>

<style>

#menu ul li{float:left;width:33.3%;height:100%;text-align:center;position:relative;font-size:14px;}

#menu ul li .line{position:absolute;top:0px;right:0px;z-index:30;}

#menu ul li .menu_li{position:absolute;top:0px;left:0px;z-index:20;width:100%;height:100%;color:#454545;background:url(images/menubg.png) repeat-x;}

#menu ul li .img_front{position:absolute;top:0px;left:0px;z-index:30;width:100%;height:100%;}

#menu ul li .img_front img{width:100%;height:100%;}

#menu ul li span{position:absolute;bottom:-300px;left:50%;width:104px;margin-left:-52px;height:auto;text-align:center;z-index:10;}

#menu ul li span a{float:left;width:100%;height:43px;line-height:43px;color:#454545;text-decoration:none;}

</style>

<script>

function beginTalk() {

	var t = window.location.toString();

	var newT = t.replace(new RegExp("&", "gm"), "<and>"); 

	window.open("italk/index_m.jsp@fs_AccessAddress=" + newT, "talk");

}

window.onload = function(){

	$('#menu ul li').each(function(j){

		$('#menu ul li').eq(j).removeClass("on");

		$('#menu ul li span').eq(j).animate({bottom:-$('#menu ul li span').eq(j).height()},100);

	});

}

$('#menu ul li').each(function(i){

	$(this).click(function(){

		if($(this).attr("class")!="on"){

			$('#menu ul .on span').animate({bottom:-$('#menu ul .on span').height()},200);

			$('#menu ul .on').removeClass("on");

			$(this).addClass("on");

			$('#menu ul li span').eq(i).animate({bottom:35},200);

			$('.footer_front').show();

		}else{

			$('#menu ul li span').eq(i).animate({bottom:-$('#menu ul li span').eq(i).height()},200);

			$(this).removeClass("on");

			$('.footer_front').hide();

		}

	});

});

$('.footer_front').click(function(){

	$('#menu ul .on span').animate({bottom:-$('#menu ul .on span').height()},200);

	$('#menu ul .on').removeClass("on");

	$(this).hide();

});

</script>

</div>

<table border="1px" bordercolor="#D8D8D6" style="width:100%;position:fixed;height:50px;bottom:44px;z-index:888;">

	<tr></tr>

</table>

<div id="share_div" style="display:none;position:fixed;width:100%;height:100%;background-color:rgba(0,0,0,0.5);top:0px;z-index:999;">

	<table border="1px" bordercolor="#D8D8D6" style="margin:0 auto;width:230px;background-color:#ffffff;max-width:500px;margin-top:20px;" class="bdsharebuttonbox">

		<tr>

			

		</tr>

		<tr>

			

		</tr>

		<tr>

			

		</tr>

		<tr>

			

		</tr>

		<tr>

			

		</tr>

		<tr>

			

		</tr>

	</table>

	<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>

</div>

<script>

function beginTalk() {

	var t = window.location.toString();

	var newT = t.replace(new RegExp("&", "gm"), "<and>"); 

	window.open("italk/index_m.jsp@fs_AccessAddress=" + newT, "talk");

}

function showshare(){

	document.getElementById('share_div').style.display='';

}

function closeshare(){

	document.getElementById('share_div').style.display='none';

}

$('.table_title').click(function() {

	if($(this).parent().parent('table').attr('class')!='on'){

		$('.tour_div .on').removeClass('on');

		$(this).parent().parent('table').addClass('on');

		$('.table_title').each(function(i) {

			$('.table_title').eq(i).parent().children('tr').each(function(j) {

				if(j!=0){

					$(this).hide();

				}

			});

		});

		$(this).parent().children('tr').each(function(j) {

			$(this).show();

		});

		$("html,body").animate({scrollTop: $(this).offset().top-3}, 500);

	}else{

		$('.tour_div .on').removeClass('on');

		$(this).parent().children('tr').each(function(j) {

			if(j!=0){

				$(this).hide();

			}

		});

	}

	

});

$('.table_title').each(function(i) {

	if(i!=0){

		$('.table_title').eq(i).parent().children('tr').each(function(j) {

			if(j!=0){

				$(this).hide(500);

			}

		});

	}

});

function dateQuery(ProductNo,day,year,month){

	htmlobj=$.ajax({url:"DateQueryAction.jsp@ProductNo="+ProductNo+"&day="+day+"&year="+year+"&month="+month+"&selected=1&traveltype=0",async:false});

	$("#open_div").html(htmlobj.responseText);

}

function doReserve(ProductNo,fr_SeatDate,weekNum,num,id,fi_bakNo1,status,priceID){

	htmlobj=$.ajax({url:"TicketQueryAction.jsp@ProductNo="+ProductNo+"&fr_SeatDate="+fr_SeatDate+"&weekNum="+weekNum+"&status="+status+"&day="+fi_bakNo1,async:false});

	$("#open_div_bak").html($("#open_div").html());

	$("#open_div").html(htmlobj.responseText);

}



dateQuery('TR042774','11','2014','09');



function backtolist(){

	$("#open_div").html($("#open_div_bak").html());

	$("#open_div_bak").html("");

}

function Round(a_Num,a_Bit) 

{ 

	return(Math.round(a_Num*Math.pow(10,a_Bit))/Math.pow(10,a_Bit)); 

} 

function countsub(count,num){

	var p1=count*100;

	var p2=num;

	return Round(p1*p2/100,2);

}

function addToShoppingCart(str1,str2){

	loginObj="cart";

	var bool =true;

	var sumPrice=0;

	var sumCostPrice=0;

	var totalnum=0;

	if(document.form_opendate.num!=null){

		if(document.form_opendate.num.length!=null){

			for(var i=0;i<document.form_opendate.num.length;i++){

				if(Number(document.form_opendate.num[i].value)>0){

					sumPrice+=countsub(document.form_opendate.fd_webprice[i].value,document.form_opendate.num[i].value)-countsub(document.form_opendate.fi_MinusPrice[i].value,document.form_opendate.num[i].value);

					sumCostPrice+=countsub(document.form_opendate.fd_costprice[i].value,document.form_opendate.num[i].value);

					var fi_IsCount = document.form_opendate.fi_IsCount[i].value;

					if (fi_IsCount == "1") {

						totalnum += Number(document.form_opendate.num[i].value);

					}

				}

			}

		}

		else{

			if(Number(document.form_opendate.num.value)>0){

				sumPrice+=countsub(document.form_opendate.fd_webprice.value,document.form_opendate.num.value)-countsub(document.form_opendate.fi_MinusPrice.value,document.form_opendate.num.value);

				sumCostPrice+=countsub(document.form_opendate.fd_costprice.value,document.form_opendate.num.value);

				var fi_IsCount = document.form_opendate.fi_IsCount.value;

				if (fi_IsCount == "1") {

					totalnum += Number(document.form_opendate.num.value);

				}

			}

		}

	}

	else{

		alert("¸Ã¿ª°àÈÕÆÚÒÑ¾­±¨Ãû½áÊø");

		bool=false;

		return;

	}

	if(totalnum<=0){

		alert("ÇëÌîÐ´ÊýÁ¿");

		bool=false;

		return;

	}

	if(bool){

		document.form_opendate.ProductPrice.value=sumPrice;

		document.form_opendate.ProductCostPrice.value=sumCostPrice;

		document.form_opendate.totalnum.value=totalnum;

		document.form_opendate.startDate.value=str1;

		document.form_opendate.endDate.value=str2;

		

		document.form_opendate.GTY_Num.value=totalnum;

		document.form_opendate.GTY_ProductPrice.value=countsub(document.form_opendate.GTY_WebPrice.value,document.form_opendate.GTY_Num.value);

		document.form_opendate.GTY_ProductCostPrice.value=countsub(document.form_opendate.GTY_Cost.value,document.form_opendate.GTY_Num.value);

		

		document.form_opendate.action="addToShoppingCart.jsp";

		document.form_opendate.submit();

	}

}

</script>

</body>

</html>
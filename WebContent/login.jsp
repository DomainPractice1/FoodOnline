<!DOCTYPE HTML>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<div id="frame">

	<div id="top">

		<a id="logo" href="index.html"><img src="images/home.png" align="top"></a>

		<a id="title">登录</a>

		<!--a id="search" href="search.jsp"><img src="images/search.png" align="top"></a-->

		<span id="list"><a href="javascript:window.history.back();"><img src="images/goback.png" align="top"></a><a href="login.jsp"><img src="images/userlogin.png" align="top"></a></span>

	</div>

	<div id="con">

		<div id="login_div">

		<form name="form2" onKeyDown="onKeyDown()" method="post" action="login">

		<input name="t" id="t" value="" type="hidden">

		<div class="userline_info"></div>

		<div class="userline"><div class="userline_1">用户名&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="userline_2"><input type="text" name="user.username" id="userId" placeholder="请输入用户名/手机/邮箱"/></div><div class="userline_3"><img src="images/login.png"></div></div>

		<div class="userline_info" id="username_info"></div>

		<div class="userline"><div class="userline_1 c1">密码&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="userline_2"><input name="user.password" id="userPassword" type="password" placeholder="请输入密码"/></div><div class="userline_3"><img src="images/lock.png"></div></div>

		<div class="userline_info" id="pass_info"></div>

		<div class="login_button" ><input type="submit" value="登 录" style="width:100%;height:100%;background:none;border:none;color:#ffffff;font-size:16px;"></div>

		<div class="reg_div">

			<div class="reg_div_1"><!--a href="./getpwd.jsp" target="_self" style="color:#7A7A7A;">忘记密码？</a--></div>

			<div class="reg_div_2"><a href="register.jsp" target="_self">立即注册</a></div>

		</div>

		</form>

		</div>

	</div>

	





<div id="footer"><a href="http://www.cssmoban.com/">企业网站模板</a></div>

<div id="menu" style="position:fixed;bottom:0px;width:100%;height:44px;line-height:44px;z-index:999;background:url(images/menubg.png) repeat-x;">

	<ul style="margin:0 auto;list-style-type:none;width:100%;max-width:500px;height:100%;">

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;小二推荐</div><img class="line" src="images/line.png" width=1>

		

		<span style="background-size:100%;">

			<img src="images/navbg4.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="onsale_0.html">每日推荐</a>

		

			<a href="onsale_2.html">清仓秒杀</a>

		

			<a href="onsale.html">限时特卖</a>

		

			<a href="hot.html">当季热点</a>

		

			</div>

		</span>

		

		</li>

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;旅游超市</div><img class="line" src="images/line.png" width=1>

		

		<span style="background-size:100%;">

			<img src="images/navbg4.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="list.html">目的地</a>

		

			<a href="rank.html">排行榜</a>

		

			<a href="search.html">旅游搜索</a>

		

			<a href="javascript:beginTalk()">在线咨询</a>

		

			</div>

		</span>

		

		</li>

		

		<li><img class="img_front" src="images/front.png"><div class="menu_li"><img src="images/coin.png" width=10>&nbsp;订单处理</div>

		

		<span style="background-size:100%;">

			<img src="images/navbg5.png" width=100%>

			<div style="position:absolute;top:0px;left:0px;">

		

			<a href="#">我的订单</a>

		

			<a href="#">会员资料</a>

		

			<a href="#">关联微信</a>

		

			<a href="#">联系我们</a>

		

			<a href="#">进入主站</a>

		

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

<script>

function check(){

	if(document.form2.userId.value==""){

		alert("用户名不能为空!");

		return false;

	}else if(document.form2.userPassword.value==""){

		alert("登陆密码不能为空!");

		return false;

	}

	document.form2.submit();

}

$('.login_button input').click(function (e) {

	e.preventDefault()

	check();

});

</script>

</body>

</html>
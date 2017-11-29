<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="./css/body.css">
	<link rel="stylesheet" href="./css/animate.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


	<script>
	$(function () {
		  // スライドショー（3秒で切り替え）
		  var timer = setInterval(slideshow, 3000);

		  function slideshow() {
		    $('img:first').fadeOut('fast', function() {
		      $(this).next('img').fadeIn();
		      // 最後尾に移動
		      $('#frame').append(this);
		    });
		  }

		  $('#frame img').hover(
		    function () {
		      // スライドショーを中止
		      clearInterval(timer);
		    },
		    function () {
		      // スライドショーを再開
		      timer = setInterval(slideshow, 3000);
		    }
		  );
		});
	</script>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color:  #8c2121;
}

#main {
	width: 100%;
	height: 472px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #8c2121;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}

#frame img {
  display: none;
  width: 200px;
  height: 200px;
  max-width: 100%;
  max-heght: 100%;
}

#frame img:first-child  {
  display: inline;
}
</style>
</head>
<body>

	<div id="header">
		<div id=""></div>
	</div>

	<div id="main">

		<div id="top">
			<p><s:property value="userName" escape="false"/>さん </p>
			<p>ログインありがとうございます！</p>
		</div>
			<div>
			<table>
				<tr>
					<td>商品の購入へは </td>
					<td> <a href='<s:url action="MyPageAction" />'>商品購入</a></td>
				</tr>
					<tr>
						<td>過去の商品の購入履歴は</td>
						<td> <a href='<s:url action="HistoryAction" />'>商品履歴</a></td>
					</tr>
					<tr>
						<td>ログアウトの場合は</td>
						<td>
							 <a href='<s:url action="LogoutAction" />'> ログアウト</a>
						</td>
					</tr>

				</table>


				<table>
					<tr>
						<td>パスワードを変更する場合は</td>
						<td><a href='<s:url action="UpdatePasswordAction" />'>パスワード変更</a></td>
					</tr>
				</table>
				<table>
					<tr>
						<td>退会する場合は</td>
						<td><a href='<s:url action="UnsubscribeAction" />'>退会</a></td>
					</tr>
				</table>

				<div id="frame">
						<img src="./img/cake001.jpg">
						<img src="./img/cake002.jpg">
						<img src="./img/cake046.jpg">
						<img src="./img/cake053.jpg">
						<img src="./img/cake091.jpg">
						<img src="./img/cake100.jpg">
						<img src="./img/cake102.jpg">
						<img src="./img/cake104.jpg">
						<img src="./img/cake124.jpg">
						<img src="./img/cake132.jpg">
						<img src="./img/cake135.jpg">
						<img src="./img/cake138.jpg">
						<img src="./img/cake158.jpg">
						<img src="./img/cake159.jpg">
						<img src="./img/cake162.jpg">
						<img src="./img/cake163.jpg">
						<img src="./img/cake166.jpg">
						<img src="./img/cake179.jpg">
						<img src="./img/cake184.jpg">
				</div>

	</div>
	</div>

	<div id="footer">
		<div id=""></div>
	</div>

</body>
</html>
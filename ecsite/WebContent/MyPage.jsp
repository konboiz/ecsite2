<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Home画面</title>
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
	background-color: black;
}

#main {
	width: 100%;
	height: 400px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
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
				<s:form action="MyPageAction" escape="false">
				<tr>
					<td>
					<a>商品の購入へは </a> <s:submit value="商品購入" escape="false"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
				</s:form>
				<s:form action="HistoryAction" escape="false" >
					<tr>
						<td>
					  <a>過去の商品の購入履歴は</a> <s:submit value="購入履歴" escape="false" />
						</td>
					</tr>
				</s:form>
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

	</div>
	</div>

	<div id="footer">
		<div id=""></div>
	</div>

</body>
</html>
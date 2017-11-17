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
		<!-- ログインの場合はLoginAction  新規作成の場合はMyPageActionに移動させる -->
		<!-- mainの背景に画像を挿入する予定 -->

		<div id="top">
			<p>ようこそ！ 〇〇へ!!</p>
			<p>まずはログインをお願いします!!!!</p>
		</div>
			<div>
			<table>
				<s:form action="HomeAction" escape="false">
				<tr>
					<td>
					<a>登録済みの方は </a> <s:submit value="ログイン" escape="false"/>
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
				<s:form action="GoUserCreateAction" escape="false" >
					<tr>
						<td>
					  <a>まだ登録していない方は</a> <s:submit value="ユーザー登録" escape="false" />
						</td>
					</tr>
				</s:form>
				</table>
			</div>
	</div>

	<div id="footer">
		<div id=""></div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>login画面</title>
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
		<div id="pr"></div>
	</div>
	<div id="main">
		<div id="top">
			<p>ログイン画面</p>
		</div>
	</div>
	<s:form action="LoginAction">
		<table>
			<tr>
				<td><a>下記を入力してログインをお願いします。</a></td>
			</tr>
			<tr>
				<td>
					<label>ユーザー名：</label>
				</td>
				<td>
					<s:textfield name="userName" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label>ユーザーID：</label>
				</td>
				<td>
					<s:textfield name="userId" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label>パスワード：</label>
				</td>
				<td>
					<s:password name="password" escape="false" />
				</td>
			</tr>
			<tr>
				<s:submit value="ログイン" />
			</tr>
		</table>
	</s:form>
	<div id="text-link">
		<p>
			新規ユーザー登録は<a href='<s:url action="GoUserCreateAction" />'>こちら</a>
		</p>
		<p>
			Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a>
		</p>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>
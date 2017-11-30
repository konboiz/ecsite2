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
	background: #fffdb1;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 45px auto;
	border: 1px solid #333;
	font-size: medium;
	font-weight: 900;
	letter-spacing: 10px;
	background-color:white;
}

#header {
	width: 100%;
	height: 80px;
	background-color: #8c2121;
}

#main {
	width: 100%;
	height: 457px;
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

#log {
	text-align: center;
	font-size: medium;
}

.user{
	font-weight: 900;
    font-size: 15px;
}

.log {
	font-weight: 900;
    font-size: 20px;
    color: red;
}

.kotira {
font-size: 18px;
}

.henko {
	font-weight: 600;
    font-size: 14px;

}

.sweets{
	font-size: 23px;
    font-family: cursive;
    width: 100%;
    height: 85px;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;
    font-family: unset;
    letter-spacing: 10px;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr">
			<span class="sweets">MYSWEETS</span>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>ログイン画面</p>
		</div>
		<div id="log">
			<p>下記を入力して<span class="log">ログイン</span>をお願いします　↓　↓　↓</p>
		</div>
	<s:form action="LoginAction">
		<table >
			<tr>
				<td>
					<label><span class="user">ユーザー名：</span></label>
					<s:textfield name="userName" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label><span class="user">ユーザーID：</span></label>
					<s:textfield name="userId" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label><span class="user">パスワード：</span></label>
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
			<span class="henko">新規ユーザー登録</span>は<a href='<s:url action="GoUserCreateAction" />'><span class="kotira">こちら</span></a>
		</p>
		<p>
			<span class="henko">Home</span>へ戻る場合は<a href='<s:url action="GoHomeAction" />'><span class="kotira">こちら</span></a>
		</p>
	</div>
</div>
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>
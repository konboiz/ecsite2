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
<title>商品詳細画面</title>
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
	height: 500px;
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

	<s:iterator value="myPageDTO">
		<s:form action="ItemAction">
			<table>

				<tr>
					<td>
						<label>商品コード</label>
					</td>
					<td>
						<s:hidden name="itemId" value="%{itemId}" />
					</td>
				</tr>
				<tr>
					<td>
						<label>商品名</label>
					</td>
					<td>
						<s:property value="itemName" />
						<input type="hidden" name="itemName" value='<s:property value="itemName" />' />
					</td>
				</tr>
				<tr>
					<td>
						<label>値段</label>
					</td>
					<td>
						<s:property value="price" /><span>円</span>
						<input type="hidden" name="price" value='<s:property value="price" />' />

					</td>
					<td>
						<img src="<s:property value="image_file_path" />" />
					</td>
				</tr>
				<tr>
					<td>
						<label>購入個数</label>
					</td>
					<td>
						<select name="count">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<label>支払方法</label>
					</td>
					<td>
						<select name="payment">
							<option value="1" selected="selected">クレジットカード</option>
							<option value="2">コンビニ払い・電子マネー</option>
							<option value="3">代引き ＋324円</option>
							<option value="4">現金</option>
						</select>
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

				<tr>
					<td>
						<label>配送方法</label>
					</td>
					<td>

						<select name="transport">
						<option value="1" selected="selected">通常配送</option>
						<option value="2">配送日指定</option>
						<option value="3">お急ぎ便</option>
						<option value="4">冷凍クール便</option>

						</select>
					</td>
				</tr>

				<s:submit value="支払い確認画面へ" />

			</table>
		</s:form>
	</s:iterator>


</body>
</html>
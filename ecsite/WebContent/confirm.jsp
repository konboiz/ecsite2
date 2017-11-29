
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
	<meta charset="utf-8">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>BuyItemConfirm画面</title>
	<style type="text/css">
	/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fffdb1;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

	/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
		}

		#header {
		   width: 100%;
		   height: 80px;
		   background-color: #8c2121;
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
			clear:both;
		}
	</style>
	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>購入最終確認画面</p>
		</div>
		<div>
			<s:form>

				<tr>
					<td>
						<label>氏名：</label>
					</td>
					<td>
						<s:property value="#session.userName" />
					</td>
				</tr>
				<tr>
					<td>
						<label>お届け先：</label>
					</td>
					<td>
						<s:property value="#session.address" />
					</td>
				</tr>
				<tr>
					<td>
						<s:hidden name="itemId" value="%{itemId}" />
					</td>
				</tr>
				<tr>
					<td>
						<label>商品名：</label>
					</td>
					<td>
						<s:property value="itemName" />
						<input type="hidden" name="itemName" value='<s:property value="itemName" />' />
					</td>
				</tr>
				<tr>
					<td>
						<label>値段：</label>
					</td>
					<td>
						<s:property value="#session.price" /><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<label>購入個数：</label>
					</td>
					<td>
						<s:property value="#session.count" /><span>個</span>
					</td>
				</tr>

				<tr>
					<td>支払い方法：</td>
					<td>
						<s:property value="payment" />
						<input type="hidden" name="payment" value='<s:property value="payment" />' />
					</td>
				</tr>
				<tr>
					<td>お届け方法：</td>
					<td>
						<s:property value="transport" />
						<input type="hidden" name="transport" value='<s:property value="transport" />' />
					</td>
				</tr>
				<tr>
					<td>
						<label>合計金額：</label>
					</td>
					<td>
						<s:property value="#session.amount" /><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>


				<tr>
					<td><input type="button" value="戻る" onclick="submitAction('HomeAction')" /></td>
					<td><input type="button" value="完了" onclick="submitAction('ConfirmAction')" /></td>
				</tr>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>
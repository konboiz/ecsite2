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
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========TEMPLATE LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
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
			clear:both;
		}

		#text-center {
			display: inline-block;
			text-align: center;
		}
	</style>
</head>
<body>
商品詳細画面<br/>
item.jspです。
<s:form action="ItemAction">

  	商品番号<s:property value="item_id" /><br/>
  	<s:property value="product_name" />
						<s:param name="hiddinid" value="item_id"/>
						 <s:hidden name="hiddinid"  value="%{item_id}"/>


				<s:submit value="カート画面"/>
			</s:form>


			<s:iterator value="itemDTO" >
<s:form action="CartAction">






<%-- <s:param name="Lex" value="product_name"/>
  title="<s:property value="product_name"/>"><s:property value="product_name"/></a>

 <s:hidden name="Lex"  value="%{product_name}"/> --%>

			<table>
				<tr>
					<td>
						<span>商品名</span>
					</td>
					<td>
						<s:property value="item_name" />
						<s:param name="item_id" value="item_id"/>
						 <s:hidden name="item_id"  value="%{item_id}"/>

					</td>
				</tr>
				<tr>
				<td>
						<span>値段</span>

					</td>
						<td>
						<s:property value="price" /><span>円</span>
						<s:param name="price" value="price"/>
						 <s:hidden name="price"  value="%{price}"/>

					</td>


					<td>
						<img src = "<s:property value="image_file_path" />"/>

					</td>



				</tr>

						<s:submit value="カートに入れる"/>

			</table>
		</s:form>
</s:iterator>


</body>
</html>
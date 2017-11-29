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
	<title>UserCreate画面</title>
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
		   font-size: large;
			font-family: cursive;
			width: 100%;
			height: 100px;
			background-color: #8c2121;
			color: #FFFFFF;
			display: flex;
			align-items: center;
			justify-content: center;
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
</head>
<body>
	<div id="header">
	 	<div id="pr">
	 	<p>新規登録</p>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>下記の入力をお願い致します。</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
			<s:form action="UserCreateAction">
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　ユーザーID：</label>
					</td>
					<td>
						<input type="text" name="userId" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　パスワード：</label>
					</td>
					<td>
						<input type="text" name="password" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　氏名(ユーザー名)：</label>
					</td>
					<td>
						<input type="text" name="first_name" value="" />
					</td>
					<td>
						<input type="text" name="family_name" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　性別</label>
					</td>
					<td>
						<input type="checkbox" name="gender" value="0" checked="checked" /> 男
						<input type="checkbox" name="gender" value="1" />女
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　郵便番号：</label>
					</td>
					<td>
					<!--pc=postal code(郵便番号)の略-->

						<input type="text" name="pc_1" value="" />
					</td>
					<td>
						<input type="text" name="pc_2" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　 都道府県：</label>
					</td>
					<td>
					<select name="prefecture">
								 <option value="select" selected>都道府県を選択</option>
								 <option value="1">北海道</option>
								 <option value="2">青森県</option>
								 <option value="3">岩手県</option>
								 <option value="4">宮城県</option>
								 <option value="5">秋田県</option>
								 <option value="6">山形県</option>
								 <option value="7">福島県</option>
								 <option value="8">茨城県</option>
								 <option value="9">栃木県</option>
								 <option value="10">群馬県</option>
								 <option value="11">埼玉県</option>
								 <option value="12">千葉県</option>
								 <option value="13">東京都</option>
								 <option value="14">神奈川県</option>
								 <option value="15">新潟県</option>
								 <option value="16">富山県</option>
								 <option value="17">石川県</option>
								 <option value="18">福井県</option>
								 <option value="19">山梨県</option>
								 <option value="20">長野県</option>
								 <option value="21">岐阜県</option>
								 <option value="22">静岡県</option>
								 <option value="23">愛知県</option>
								 <option value="24">三重県</option>
								 <option value="25">滋賀県</option>
								 <option value="26">京都府</option>
								 <option value="27">大阪府</option>
								 <option value="28">兵庫県</option>
								 <option value="29">奈良県</option>
								 <option value="30">和歌山県</option>
								 <option value="31">鳥取県</option>
								 <option value="32">島根県</option>
								 <option value="33">岡山県</option>
								 <option value="34">広島県</option>
								 <option value="35">山口県</option>
								 <option value="36">徳島県</option>
								 <option value="37">香川県</option>
								 <option value="38">愛媛県</option>
								 <option value="39">高知県</option>
								 <option value="40">福岡県</option>
								 <option value="41">佐賀県</option>
								 <option value="42">長崎県</option>
								 <option value="43">熊本県</option>
								 <option value="44">大分県</option>
								 <option value="45">宮崎県</option>
								 <option value="46">鹿児島県</option>
								 <option value="47">沖縄県</option>
						</select>

					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　市町村区：</label>
					</td>
					<td>
						<input type="text" name="city" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>	　　　　　　　　　　　　　　　　町・番地：</label>
					</td>
					<td>
						<input type="text" name="banchi" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　建物名：</label>
					</td>
					<td>
						<input type="text"  name="building_name" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　会社名：</label>
					</td>
					<td>
						<input type="text" name="company" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　電話番号：</label>
					</td>
					<td>
						<input type="text" name="tel_1" value="" />
					</td>
					<td>
						<input type="text" name="tel_2" value="" />
					</td>
					<td>
						<input type="text" name="tel_3" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　E-メール：</label>
					</td>
					<td>
						<input type="text" name="email" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<div>
				<span>マイページに戻る場合は</span><a href='<s:url action="GoMyPageAction" />'>こちら</a>
			</div>
		</div>
	</div>
		<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>
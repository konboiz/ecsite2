<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>お届け先住所登録</title>
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
		   background:#fff;
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
</style>

</head>
<body>
<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">

		<!-- 住所登録はMyPage.ispに移動させる -->
			<p>お届け先情報登録</p>
		</div>
		<div>
			<table>
			<s:form action="ConfirmAction" escape="false">

<<<<<<< HEAD
=======
						<input type="text" name="pc_1" value="" />
					</td>
					<td>
						<input type="text" name="pc_2" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>お届け先住所</label>
					</td>
					<td>
						<s:property value="" />
					</td>
					<td>
						<label> 都道府県</label>
					</td>
					<td>
					<select name="prefecture">

								 <option value="" selected>都道府県を選択</option>
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
						<label>市町村名</label>
					</td>
					<td>
						<input type="text" name="city" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>	町・番地</label>
					</td>
					<td>
						<input type="text" name="banchi" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>建物名</label>
					</td>
					<td>
						<input type="text"  name="building_name" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>会社名</label>
					</td>
					<td>
						<input type="text" name="company" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>電話番号</label>
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
						<br/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
>>>>>>> branch 'master' of https://github.com/konboiz/ecsite
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
				<s:submit value="確認"/>
			</s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
		</div>
	</div>
		<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>
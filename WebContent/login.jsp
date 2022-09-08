
<html>
<head>
<link href='CSS/style.css' rel='stylesheet' />
<script src='JS/script.js'></script>
<style type="text/css">
	.validate{
		color:red;
		font-size:20px;
		padding-top:2px;
	}
</style>
</head>
<body>
	<div class="bank-pic">
		<form action="authentication.jsp">
			<table class='ta'>
				<tr>
					<td colspan='2' align='center' class="td-top">
						<label>Login User Form</label>
					</td>
				</tr>
				<tr>
					<td class='tad'>User ID</td>
					<td class='tad'><input type='text' name='uid'  id='uid'/></td>
				</tr>
				<tr>
				<td colspan='2' align="center" class='validate'><label id='uidtext'></label></td>
				</tr>
				<tr>
					<td class='tad'>Password</td>
					<td class='tad'><input type='password' name='pass' id='pass'/></td>
				</tr>
				<tr>
				<td class='validate' colspan='2' align="center"><label id='passtext'></label></td>
				</tr>
				<tr>
					<td colspan="2" align="center" class='validate'>
					<%
						String msg =request.getParameter("msg");
					%>
						<label style='color:red'><%=msg==null?"":msg%></label>
					</td>
				</tr>
				<tr>
					<td colspan='2' align='center'>
						<button class="btn" onclick="return checkData()">Submit</button>
					</td>
				</tr>
			</table>
			</form>
</div>
</body>
</html>
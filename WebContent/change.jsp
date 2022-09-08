<%@ include file="menu.jsp" %>
<div class="right">
	<div class="content">
		<form action='change-password.jsp'>
		<table>	
		<tr>
		<td><label class='la'>Enter Current Password:</label></td>
		<td><input type="text" name='pass' /></td>
		</tr>
		<tr>
		<td><label class='la'>Enter New Password:</label></td>
		<td><input type="text" name='newpass' /></td>
		</tr>
		<tr>
		<td><label class='la'>Re-Enter New Password:</label></td>
		<td><input type="text" name='repass' /></td>
		</tr>
		<tr>
		<td colspan='2' align="center">
		<button class='btn'>Submit</button>
		</td>
		</tr>
		</table>
		</form>
	</div>
</div>
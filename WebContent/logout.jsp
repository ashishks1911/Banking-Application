<%@ include file="menu.jsp" %>

<div class="right">
	<div class="content">
		<label style="color:red">You have been logged out successfully.</label>
	</div>
</div>
<%
	session.invalidate();
%>
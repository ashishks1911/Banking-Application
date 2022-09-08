<%@ page import="java.sql.*" %>
<%
	PreparedStatement ps = (PreparedStatement)application.getAttribute("balance");
	ps.setString(1,(String)session.getAttribute("account"));
	ResultSet rst = ps.executeQuery();
	rst.next();
%>
<%@ include file="menu.jsp" %>

<div class="right" style='z-index:2'>
	<div class="content">
		<label style='color:green'>Your Current available balance is : &#8377;<%=rst.getString(1)%></label>
	</div>
</div>
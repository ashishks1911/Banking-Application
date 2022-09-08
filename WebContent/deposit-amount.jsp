
<%@ page import="java.sql.*" %>
<%
	int amt = Integer.parseInt(request.getParameter("amount"));
	PreparedStatement ps = (PreparedStatement)application.getAttribute("deposit");
	ps.setInt(1,amt);
	ps.setObject(2,session.getAttribute("account"));
	ps.executeUpdate();
%>
<%@ include file="menu.jsp" %>
<div class="right">
	<div class="content">
			<label>&#8377;<%=amt%> credited into your Account.</label>
	</div>
</div>
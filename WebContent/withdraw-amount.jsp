<%@ page import="java.sql.*" %>
<%
	int amt = Integer.parseInt(request.getParameter("amount"));
	PreparedStatement ps1 = (PreparedStatement)application.getAttribute("balance");
	ps1.setObject(1,session.getAttribute("account"));
	ResultSet rst = ps1.executeQuery();
	rst.next();
	int balance = rst.getInt(1);
	//.....................................................................
	
	if(balance<amt)
	{
		%>
		<jsp:include page="withdraw.jsp">
			<jsp:param value="Insufficient Balance" name="text"/>
		</jsp:include>
		<%
		return;
	}
	
	PreparedStatement ps = (PreparedStatement)application.getAttribute("withdraw");
	ps.setInt(1,amt);
	ps.setObject(2,session.getAttribute("account"));
	ps.executeUpdate();
%>
<%@ include file="menu.jsp" %>
<div class="right">
	<div class="content">
			<label style='color:red'>&#8377;<%=amt%> debited from your Account.</label>
	</div>
</div>
<%@ page import="java.sql.*" %>
<%
	String account2 =request.getParameter("account-2");
	PreparedStatement ps1 =	(PreparedStatement)application.getAttribute("accountcheck");
	ps1.setString(1,account2);
	ResultSet rst1 = ps1.executeQuery();
	if(rst1.next())
	{
		
	}
	else
	{
		%>
		<%@ include file="menu.jsp" %>
		<div class="right">
			<div class="content">
				<label style='color:red'>Account Number Does not Exist</label>
			</div>
		</div>
		
		<%
		return;
	}
	//............................................
	int amt = Integer.parseInt(request.getParameter("amount"));
	//...............................................
	PreparedStatement ps2 = (PreparedStatement)application.getAttribute("balance");
	ps2.setObject(1,session.getAttribute("account"));
	ResultSet rst = ps2.executeQuery();
	rst.next();
	int bal= Integer.parseInt(rst.getString(1));
	if(bal<amt)
	{
		%>
			<label>Insufficient Balance</label>
			
		<%
		return;
	}
	PreparedStatement ps3 = (PreparedStatement)application.getAttribute("withdraw");
	ps3.setInt(1,amt);
	ps3.setObject(2,session.getAttribute("account"));
	ps3.executeUpdate();
	
	//...................................................
	
	PreparedStatement ps4 = (PreparedStatement)application.getAttribute("deposit");
	ps4.setInt(1,amt);
	ps4.setString(2,account2);
	ps4.executeUpdate();
	
%>
<%@ include file="menu.jsp" %>
<div class="right">
	<div class="content">
			<label>&#8377;<%=amt%> Transferred from your Account.</label>
	</div>
</div>
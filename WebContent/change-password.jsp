<%@ page import="java.sql.*" %>
<%
	String pass= request.getParameter("pass");
	String newpass = request.getParameter("newpass");
	String repass = request.getParameter("repass");
	
	PreparedStatement ps = (PreparedStatement)application.getAttribute("accountcheck");
	ps.setObject(1,session.getAttribute("account"));
	ResultSet rst=ps.executeQuery();
	rst.next();
	String pwd=rst.getString(2);
	if(!pass.equals(pwd))
	{
		%>
		<label style="color:red">Incorrect password</label>
		<%
		return;	
	}
	//.............................................
	PreparedStatement ps1 = (PreparedStatement)application.getAttribute("password");
	ps1.setObject(1,newpass);
	ps1.setObject(2,session.getAttribute("account"));
	int n = ps1.executeUpdate();
	
	if(n>=1)
	{
		%>
		<label style="color:red;font-size:42px">Password changed Successfully.</label>
		<%
	}
	
%>
<%@ page import="java.sql.*" %>
<%
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	PreparedStatement ps = (PreparedStatement)application.getAttribute("login");
	ps.setString(1,uid);
	ps.setString(2,pass);
	ResultSet rst= ps.executeQuery();
	if(rst.next())
	{
	//	session.setMaxInactiveInterval(20);   // Time out 
	
		Cookie [] cookies = request.getCookies();
		for(Cookie co:cookies)
		{
			if(co.getName().equals("JSESSIONID"))
			{
				co.setMaxAge(10*60);
				co.setPath("/Bank-app");
				response.addCookie(co);
				break;
			}
		}
		String uname = rst.getString(3);
		String account = rst.getString(4);
		session.setAttribute("username",uname);
		session.setAttribute("account",account);
		Boolean check =true;
		application.setAttribute("flag",check);
		response.sendRedirect("/Bank-app");
		return;
	}
%>
<jsp:include page="login.jsp">
<jsp:param  name="msg" value="User ID or password is incorrect" />
</jsp:include>
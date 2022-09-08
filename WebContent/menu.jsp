<% 
if(session.getAttribute("username")==null) 
{ 
	response.sendRedirect("login.jsp");
	return;
}

String name=(String)session.getAttribute("username");
String account=(String)session.getAttribute("account");
%>
    <html>
    <head>
        <title>Menu</title>
        <link href='CSS/style.css' rel='stylesheet' />
    </head>
    <body>
        <div class="header">
            <div class="menu-left">
                <Label><span style="color:maroon">Hi,</span>
                    <%=name%>
                </Label>
            </div>
            <div class="menu-right">
                <label><span style="color:maroon">Account No.:</span>
                    <%=account%>
                </label>
            </div>
        </div>
         <div class="left" >
                <ul>
                    <li><a href="/Bank-app">Home</a></li>
                    <li><a href="show-balance.jsp">Show Balance</a></li>
                    <li><a href="deposit.jsp">Deposit Money</a></li>
                    <li><a href="withdraw.jsp">Withdraw Money</a></li>
                    <li><a href="transfer-money.jsp">Transfer Money</a></li>
                    <li><a href="change.jsp">Change Password</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
           </div>
           
    </body>
    </html>

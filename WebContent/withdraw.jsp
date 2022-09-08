<%@ include file="menu.jsp" %>

<div class="right">
	<div class="content">
		<form action='withdraw-amount.jsp' >
			<label>Enter the Amount to Withdraw : &#8377;</label>
			<input type='text' name='amount' id='amount' class='tb'/>
			<button class='btn'>Withdraw</button>
			<%
				String text=request.getParameter("text");
			%>
		</form>
		<label style="color:red;margin-left:145px"><%=text==null?"":text%></label>
	</div>
</div>
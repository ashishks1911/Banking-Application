<%@ include file="menu.jsp" %>

<div class="right">
	<div class="content">
		<form action='transfer.jsp' >
		<table>
		<tr>
			<td><label for='bankname' class='la'>Select the Bank Name</label></td>
			<td><select name='bankname' class='tb'>
					<option value='State Bank of India'>State Bank of India</option>
					<option value='HDFC Bank'>HDFC Bank</option>
					<option value='Kotak Mahindra Bank'>Kotak Mahindra Bank</option>
					<option value='ICICI Bank'>ICICI Bank</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label class='la'>Enter the Bank Account Number to Transfer Money</label></td>
			<td><input type='text' name='account-2' id='account-2' class='tb'></td>
		</tr>
		<tr>
			<td><label class='la'>Enter the Amount to be Transferred : &#8377;</label></td>
			<td><input type='text' name='amount' id='amount' class='tb'></td>
		</tr>
		<tr>
			<td colspan='2' align='center'>
				<button class='btn'>Transfer Money</button>
			</td>	
			</table>
		</form>
	</div>
</div>

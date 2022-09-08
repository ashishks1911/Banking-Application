function checkData()
{
	var uid = document.getElementById('uid');
	var pass= document.getElementById('pass');
	
	document.getElementById('uidtext').innerHTML="";
	document.getElementById('passtext').innerHTML="";
	
	if(uid.value=="" && pass.value=="")
	{
		document.getElementById('uidtext').innerHTML="User ID is Required";
		document.getElementById('passtext').innerHTML="password is required";
		return false;
	}
	
	if(uid.value=="")
	{
		document.getElementById('uidtext').innerHTML="User ID is Required";
		return false;
	}
	if(pass.value=="")
	{
		document.getElementById('passtext').innerHTML="password is required";
		return false;
	}
	return true;
}
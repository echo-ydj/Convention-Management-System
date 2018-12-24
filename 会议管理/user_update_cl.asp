<!--#include file="link_nr.asp"-->
<% 


	name1=Request("name")
	name=trim(Request.Form("textfield1"))
 	pwd=trim(Request.Form("textfield2"))
	isadmin=trim(Request.Form("textfield3"))
	issqr=trim(Request.Form("textfield4"))
	isfbr=trim(Request.Form("textfield5"))
	isspr=trim(Request.Form("textfield6"))
	isqcr=trim(Request.Form("textfield7"))
	

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("update user_1 set name='"&name&"',pwd='"&pwd&"',isadmin='"&isadmin&"',issqr='"&issqr&"',isfbr='"&isfbr&"', isspr='"&isspr&"',isqcr='"&isqcr&"' where name='"&name1&"' ")
	
	
	
	
	
	
	
Response.Redirect("text.asp")
	
	%>
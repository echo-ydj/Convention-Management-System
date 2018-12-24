<!--#include file="link_nr.asp"-->
<% 


	name1=Request("name")
	hymc=trim(Request.Form("textfield1"))
 	jy_nr=trim(Request.Form("textfield2"))
	fjsc=trim(Request.Form("textfield3"))
	jly=trim(Request.Form("textfield4"))
	gly=trim(Request.Form("textfield5"))
	
	
	

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("update hy_jy set hymc='"&hymc&"',jy_nr='"&jy_nr&"',fjsc='"&fjsc&"',jly='"&jly&"',gly='"&gly&"' where hymc='"&name1&"' ")
	
	
	
	
	
	
	
Response.Redirect("text.asp")
	
	%>
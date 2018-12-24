<!--#include file="link_nr.asp"-->
<% 


	name1=Request("name")
	hys_name=trim(Request.Form("textfield1"))
 	rn_person=trim(Request.Form("textfield2"))
	hyzy=trim(Request.Form("textfield3"))
	hys_use=trim(Request.Form("textfield4"))
	explain=trim(Request.Form("textfield5"))
	
	

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("update hy_set set hys_name='"&hys_name&"',rn_person='"&rn_person&"',hyzy='"&hyzy&"',hys_use='"&hys_use&"',explain='"&explain&"' where hys_name='"&name1&"' ")
	
	
	
	
	
	
	
''Response.Redirect("会议设置_select.asp")
	
	%>
	<a href="会议设置_select.asp">修改成功</a>
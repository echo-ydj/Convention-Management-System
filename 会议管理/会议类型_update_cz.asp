<!--#include file="link_nr.asp"-->
<% 


		name=Request("name")
	hyxz=trim(Request.Form("textfield1"))
 	bz=trim(Request.Form("textfield2"))
	
	

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("update hy_type set hyxz='"&hyxz&"',bz='"&bz&"' where hyxz='"&name&"' ")
	
	
	
	
	''Response.Redirect("会议类型_select.asp")
	
	
%>
<a href="会议类型_select.asp"> 修改完成</a>
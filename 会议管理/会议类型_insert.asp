<!--#include file="link_nr.asp"-->
<% 
	hyxz=trim(Request.Form("textfield1"))
	bz=trim(Request.Form("textfield2"))

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("insert into hy_type values (' "& hyxz &" ' ,' "&bz&" ' )")
	
	''Response.Redirect("��������_select.asp")

%>
<a href="��������_select.asp">����ɹ�</a>
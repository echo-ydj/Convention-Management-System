<!--#include file="link_nr.asp"-->
<% 
		name1=Request("name")
	Response.Write(name1)
	bit=trim(Request.Form("textfield3"))
	if bit="true" then 
	bit=1
	else 
	bit=0
	end if 
	yj=trim(Request.Form("yj"))

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("update hy_apply set flag='"&bit&"',xgyj='"&yj&"'where hys_name='"&name1&"' ")
	set rs=conn.execute("select * from hy_apply where hys_name='"&name1&"' ")
	
	''�޸Ļ���������   
	''����δ������������ͬ��
	b=date()
	''Response.Write(b)
	''Response.Write(rs("hy_start"))
	if rs("hy_start")>=b  and bit=1 then

	set rs_0=server.CreateObject("adodb.recordset")
	set rs_0=conn.execute("update hy_set set hys_use='"&bit&"' where hys_name='"&name1&"' ")
	Response.Write(hys_use)
	''��ͬ��
	else 
	bit=0
	set rs_0=conn.execute("update hy_set set hys_use='"&bit&"' where hys_name='"&name1&"' ")
	
	 
	end if
	
	
	
	

	
	%>
	<a href="������_select.asp">��ɲ���</a>
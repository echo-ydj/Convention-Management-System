
<!--#include file="link_nr.asp"-->

<%''rs.close
''rs=nothing
%>
<% ''set cn=server.CreateObject("adodb.connection")
''set rs=Server.CreateObject("adodb.recordset")
%>
<% 
	''Response.Redirect("manage.html")
	

	user_name=trim(Request.Form("textfield1"))
 	user_pwd=trim(Request.Form("textfield2"))

	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("select * from user_1 where name='"& user_name &"' and pwd ='"&user_pwd&"' ")
	sql="select * from user_1 where name='"& user_name &"' and pwd ='"&user_pwd&"' "
	''Response.Write(sql)
	%>
	<% if not rs.bof and not rs.eof then%>
	<br>
	<%''Response.Write(rs("isspr"))%>
	<% if rs("isspr")="True" or rs("isadmin")="True" then
	'Response.Write("------------")
	'Response.Redirect("manang.html")%>
	<a href="manage.html">登录成功</a>
	
	<%else%>
	<a href="manage_申请人.asp">登录成功</a>
	
	
	<%end  if%>
	
	<%else%>
	<a href="登录.asp">用户名或密码错误请重新登录!</a>
	
	<%
	'Response.Write("0231313132132")
	end if
	%>
	
	
 
 



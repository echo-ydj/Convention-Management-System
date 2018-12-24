
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
	set rs=conn.execute("select * from user_1 where name=' "& user_name &" ' and pwd =' "&user_pwd&" ' ")
	%>
	<% if not rs.bof and not rs.eof then%>
	<td><%=rs(0)%></td>
	<td><%=rs(1)%></td>
	<td><%=rs(2)%></td>
	<%
	Response.Write("0231313132132")
	end if
	%>
	
 
 



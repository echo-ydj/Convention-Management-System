<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">



			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<h2>�ѿ������Ҫ</h2>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>��������</td>
<td>��Ҫ����</td>
<td>�����ϴ�</td>
<td>��¼Ա</td>
<td>����Ա</td>
<td colspan="2">����</td>
</tr>

<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	a=now()
	b=date()
	Response.Write(a)
	''Response.Write(b)
	set rs_0=conn.execute("select * from hy_apply where hy_start <'"&b&"' ")
	%>
<% 
 do while not rs_0.bof and not rs_0.eof%>

<%
 	hymc=rs_0("hyxz")
	set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_jy where hymc='"&hymc&"'")
	i=1
	%>
<% do while not rs.bof and not rs.eof%>
<tr <% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>

<td><%=rs("hymc")%></td>
<td><%=rs("jy_nr")%></td>
<td><%=rs("fjsc")%></td>
<td><%=rs("jly")%></td>
<td><%=rs("gly")%></td>

<td>
<a href="�����Ҫ_delect.asp?name=<%=rs("hymc")%>">ɾ��</a></td>
<td>
<a href="�����Ҫ_update.asp?name=<%=rs("hymc")%>">�޸�</a>
</td>
</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
<%
rs_0.movenext()
''next
i=i+1
loop
%>
</table>
<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_jy")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>��������</td>
<td>��Ҫ����</td>
<td>�����ϴ�</td>
<td>��¼Ա</td>
<td>����Ա</td>
<td colspan="2">����</td>
</tr>
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
</table>
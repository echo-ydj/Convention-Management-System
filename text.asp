<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from user_1")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>�û���</td>
<td>����</td>
<td>�Ƿ����Ա</td>
<td>�Ƿ�������</td>
<td>�Ƿ񷢲���</td>
<td>�Ƿ�������</td>
<td>�Ƿ������</td>
<td colspan="2">����</td>
</tr>
<% do while not rs.bof and not rs.eof%>
<tr <% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>
<td ><%=rs(0).value%></td>
<td><%=rs(1).value%></td>
<td><%=rs(2).value%></td>
<td><%=rs(3).value%></td>
<td><%=rs("isfbr")%></td>
<td><%=rs("isspr")%></td>
<td><%=rs("isqcr")%></td>

<td>
<a href="del_user.asp?name=<%=rs("name")%>">ɾ��</a></td>
<td>
<a href="user_update.asp?name=<%=rs("name")%>">�޸�</a>
</td>
</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>
<a href="manage.html">������ҳ</a>

<%''rs.close
''rs=nothing
%>
<br>
<%''=now() %>
<%''=date()%>
<%''=time()%>
<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_set")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>����������</td>
<td>��������</td>
<td>��������Դ</td>
<td>ʹ�����</td>
<td>˵��</td>
<td colspan="2">����</td>

</tr>
<% do while not rs.bof and not rs.eof%>
<tr<% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>
<td ><%=rs(0).value%></td>
<td><%=rs(1).value%></td>
<td><%=rs(2).value%></td>
<td><%=rs(3).value%></td>
<td><%=rs(4).value%></td>

<td>
<a href="��������_delect.asp?name=<%=rs("hys_name")%>">ɾ��</a></td>
<td>
<a href="��������_update.asp?name=<%=rs("hys_name")%>">�޸�</a>
</td>

</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>

<a href="#">������ҳ</a>
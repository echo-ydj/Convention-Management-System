<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_apply")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>��������</td>
<td>��������</td>
<td>Ԥ��</td>
<td>�����ϴ�</td>
<td>������</td>
<td>��¼��</td>
<td>�μ���Ա</td>
<td>����ص�</td>
<td>������</td>
<td>���Ὺʼʱ��</td>
<td>�������ʱ��</td>
<td>��������</td>
<td>������</td>

<td>�Ƿ�����</td>
<td>�޸����</td>


<td colspan="2">����</td>
</tr>
<% do while not rs.bof and not rs.eof%>
<tr <% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>
<td><%=rs("hyxz")%></td>
<td><%=rs("hyyt")%></td>
<td><%=rs("ys")%></td>
<td><%=rs("fjsc")%></td>
<td><%=rs("zcr")%></td>
<td><%=rs("jly")%></td>
<td><%=rs("cjry")%></td>
<td><%=rs("hydd")%></td>
<td><%=rs("hys_name")%></td>
<td><%=rs("hy_start")%></td>
<td><%=rs("hy_over")%></td>
<td><%=rs("hy_nr")%></td>
<td><%=rs("spr")%></td>
<td><%=rs("flag")%></td>
<td><%=rs("xgyj")%></td>







<td>
<a href="#?name=<%=rs("hyxz")%>">ɾ��</a></td>
<td>
<a href="#?name=<%=rs("hyxz")%>">�޸�</a>
</td>
</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>
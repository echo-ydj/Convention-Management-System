<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	a=now()
	b=date()
	Response.Write(a)
	''Response.Write(b)
	set rs=conn.execute("select * from hy_apply where hy_start>'"&b&"' ")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<h2>δ������</h2>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>��������</td>
<td>��������</td>
<td>������</td>
<td>������</td>
<td>��ʼʱ��</td>
<td>����ʱ��</td>
<td>��������</td>



</tr>
<% do while not rs.bof and not rs.eof%>
<tr <% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>

<td><%=rs("hyxz")%></td>
<td><%=rs("hyyt")%></td>

<td><%=rs("zcr")%></td>
<td><%=rs("hys_name")%></td>
<td><%=rs("hy_start")%></td>
<td><%=rs("hy_over")%></td>
<td><%=rs("hy_nr")%></td>




</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>
<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_type")
	i=1
	%>
			
<%
''for i=0 to  rs.RecordCount
''if rs.bof or rs.eof then exit for

%>
<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>会议类型</td>
<td>备注</td>
<td colspan="2">操作</td>
</tr>
<% do while not rs.bof and not rs.eof%>
<tr<% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>

<br>
<td ><%=rs(0).value%></td>
<td><%=rs(1).value%></td>
<td>
<a href="会议类型_delect.asp?name=<%=rs("hyxz")%>">删除</a></td>
<td>
<a href="会议类型_update.asp?name=<%=rs("hyxz")%>">修改</a>
</td>
</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>

<a href="#">返回首页</a>
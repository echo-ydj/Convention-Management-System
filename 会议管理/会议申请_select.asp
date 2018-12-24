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
<td>会议性质</td>
<td>会议议题</td>
<td>预算</td>
<td>附件上传</td>
<td>主持人</td>
<td>记录人</td>
<td>参加人员</td>
<td>会议地点</td>
<td>会议室</td>
<td>开会开始时间</td>
<td>会议结束时间</td>
<td>会议内容</td>
<td>审批人</td>

<td>是否审批</td>
<td>修改意见</td>


<td colspan="2">操作</td>
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
<a href="#?name=<%=rs("hyxz")%>">删除</a></td>
<td>
<a href="#?name=<%=rs("hyxz")%>">修改</a>
</td>
</tr>

<%
rs.movenext()
''next
i=i+1
loop
%>
</table>
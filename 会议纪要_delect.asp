<!--#include file="link_nr.asp"-->
<%
dim aa
aa=Request("name")
set rs=Server.CreateObject("adodb.recordset")
sql="delete from hy_jy where hymc= '"& aa &"' "
rs.open sql,Conn,1,2
set rs=nothing
%>

<%'' Response.Redirect("text.asp")%>

<script language="vbscript">
alert("删除成功")
window.location.href="text.asp"


</script>
<a href="会议纪要_select.asp">删除成功</a>
<!--#include file="link_nr.asp"-->
<%
dim aa
aa=Request("name")
set rs=Server.CreateObject("adodb.recordset")
sql="delete from hy_type where hyxz= '"& aa &"' "
rs.open sql,Conn,1,2
set rs=nothing
%>

<% ''Response.Redirect("会议类型_select.asp")%>

<script language="vbscript">
alert("删除成功")
window.location.href="text.asp"


</script>


<a href="会议类型_select.asp">删除成功</a>
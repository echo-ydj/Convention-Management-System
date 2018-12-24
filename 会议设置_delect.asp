<!--#include file="link_nr.asp"-->
<%
dim aa
aa=Request("name")
set rs=Server.CreateObject("adodb.recordset")
sql="delete from hy_set where hys_name= '"& aa &"' "
rs.open sql,Conn,1,2
set rs=nothing
%>

<%'' Response.Redirect("会议设置_select.asp")%>
<a href="会议设置_select.asp">删除成功</a>
<script language="vbscript">
alert("删除成功")
window.location.href="会议设置_select.asp"


</script>
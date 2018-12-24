<!--#include file="link_nr.asp"-->
<%
dim aa
aa=Request("name")
set rs=Server.CreateObject("adodb.recordset")
sql="delete from user_1 where name= '"& aa &"' "
rs.open sql,Conn,1,2
set rs=nothing
%>

<% Response.Redirect("text.asp")%>

<script language="vbscript">
alert("É¾³ý³É¹¦")
window.location.href="text.asp"


</script>
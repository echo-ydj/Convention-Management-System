<!--#include file="link_nr.asp"-->
<%
dim aa
aa=Request("name")
set rs=Server.CreateObject("adodb.recordset")
sql="delete from hy_set where hys_name= '"& aa &"' "
rs.open sql,Conn,1,2
set rs=nothing
%>

<%'' Response.Redirect("��������_select.asp")%>
<a href="��������_select.asp">ɾ���ɹ�</a>
<script language="vbscript">
alert("ɾ���ɹ�")
window.location.href="��������_select.asp"


</script>
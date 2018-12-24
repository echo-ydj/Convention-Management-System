<!--#include file="link_nr.asp"-->
<%
set rs=server.CreateObject("adodb.recordset")

hymc=Request.Form("textfield")
jy_nr=Cint(Request.Form("textfield2")) 
fjsc=Request.Form("file")
jly=Request.Form("textfield4")
gly=Request.Form("textfield5")
set rs=conn.execute("insert into hy_jy values (' "& hymc&" ' ,' "&jy_nr&" ',' "&fjsc&" ','"&jly&"' ,' "&gly&" ' )")


%>


<!--#include file="link_nr.asp"-->
<%
set rs=server.CreateObject("adodb.recordset")

sql="select * from hy_apply"
rs.open sql,ConnStr,1,3
rs.addnew


rs("hyxz")=Request.Form("textfield")
rs("hyyt")=Request.Form("textfield2")
rs("ys")=Request.Form("textfield3")
rs("fjsc")=Request.Form("file")
rs("zcr")=Request.Form("textfield4")
rs("jly")=Request.Form("textarea5")
rs("cjry")=Request.Form("textarea6")
rs("hydd")=Request.Form("textarea7")
rs("hys_name")=Request.Form("textarea1")
rs("hy_start")=Cdate(Request.Form("textarea8"))
rs("hy_over")=CDate(Request.Form("textarea9"))
rs("nr")=Request.Form("textarea")
rs("spr")=Request.Form("textfield10")




rs.Update



rs.close

Response.Redirect("ly_nr.asp")




%>
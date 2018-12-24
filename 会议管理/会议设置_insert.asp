<!--#include file="link_nr.asp"-->

<%
hys_name=trim(Request.Form("01"))
rn_person=trim(Request.Form("02"))
hyzy=trim(Request.Form("03"))
hys_use=trim(Request.Form("00"))
explain=trim(Request.Form("04"))

if(hys_use="true")then

    bit = 1

else 

  bit = 0
end if
set rs=server.CreateObject("adodb.recordset")
set rs=conn.execute("insert into hy_set values (' "& hys_name &" ' ,' "&rn_person&" ',' "&hyzy&" ','"&bit&"' ,' "&explain&" ' )")

%>
<a href="会议设置_select.asp">查看会议设置</a>
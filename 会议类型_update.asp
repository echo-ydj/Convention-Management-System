<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	set rs=conn.execute("select * from hy_type where hyxz='"&name&"'")
	i=1
	%>

<form action="会议类型_update_cz.asp?name=<%=rs("hyxz")%>" method="post" name="form1">
<label>
会议性质:<input type="text" name="textfield1" value=<%=rs("hyxz")%>>
</label>
<p>
  <label>备注:
  <input type="text" name="textfield2" value=<%=rs("bz")%>>
  </label>

  <input type="submit" name="Submit" value="提交">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

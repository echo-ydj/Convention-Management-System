<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	set rs=conn.execute("select * from hy_type where hyxz='"&name&"'")
	i=1
	%>

<form action="��������_update_cz.asp?name=<%=rs("hyxz")%>" method="post" name="form1">
<label>
��������:<input type="text" name="textfield1" value=<%=rs("hyxz")%>>
</label>
<p>
  <label>��ע:
  <input type="text" name="textfield2" value=<%=rs("bz")%>>
  </label>

  <input type="submit" name="Submit" value="�ύ">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

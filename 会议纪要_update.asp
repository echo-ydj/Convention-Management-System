<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	''Request.write(name)
	set rs=conn.execute("select * from hy_jy where hymc='"&name&"'")
	
	%>

<form action="会议纪要_update_cz.asp?name=<%=rs("hymc")%>" method="post" name="form1">
<label>
会议名称:<input type="text" name="textfield1" value=<%=rs("hymc")%>>
</label>
<p>
  <label>纪要内容:
  <input type="text" name="textfield2" value=<%=rs("jy_nr")%>>
  </label>
</p>
<p><label>附件:
  <input type="text" name="textfield3" value=<%=rs("fjsc")%>>
</label>
</p>
<p>
  <label>记录员:
 <input type="text" name="textfield4" value=<%=rs("jly")%>>
</p>
<p>
  <label>管理员:
	<input type="text" name="textfield5"value=<%=rs("gly")%>>
</p></label>

<p>
  <label>
  <input type="submit" name="Submit" value="提交">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	set rs=conn.execute("select * from hy_set where hys_name='"&name&"'")
	i=1
	%>

<form action="会议设置_update_cz.asp?name=<%=rs("hys_name")%>" method="post" name="form1">
<label>
会议室名称:<input type="text" name="textfield1" value=<%=rs("hys_name")%>>
</label>
<p>
  <label>容纳人数:
  <input type="text" name="textfield2" value=<%=rs("rn_person")%>>
  </label>
</p>
<p><label>会议室资源:
  <input type="text" name="textfield3" value=<%=rs("hyzy")%>>
</label>
</p>
<p>
  <label>使用情况:
   <select name="textfield4" size="1" >
		<%if rs("hys_use")="True"then%>
        <option value="true">占用</option>
		<option value="false">未占用</option>
		<%else%>
		<option value="false">未占用</option>
		<option value="true">占用</option>
		<%end if%>	
		
      </select>
 
</p>
<p>
  <label>说明:
	<input type="text" name="textfield5"value=<%=rs("explain")%>>
</p></label>

<p>
  <label>
  <input type="submit" name="Submit" value="提交">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

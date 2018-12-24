<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	set rs=conn.execute("select * from user_1 where name='"&name&"'")
	i=1
	%>

<form action="user_update_cl.asp?name=<%=rs("name")%>" method="post" name="form1">
<label>
用户名:<input type="text" name="textfield1" value=<%=rs("name")%>>
</label>
<p>
  <label>密码:
  <input type="text" name="textfield2" value=<%=rs("pwd")%>>
  </label>
</p>
<p><label>是否为管理员:
  <select name="textfield3" size="1" >
		<%if rs(2)="True"then%>
        <option value="true">是</option>
		<option value="false">不是</option>
		<%else%>
		<option value="false">不是</option>
		<option value="true">是</option>
		<%end if%>	
		
      </select>

</label>
</p>
<p>
  <label>是否为申请人:
   <select name="textfield4" size="1" >
		<%if rs("issqr")="True"then%>
        <option value="true">是</option>
		<option value="false">不是</option>
		<%else%>
		<option value="false">不是</option>
		<option value="true">是</option>
		<%end if%>	
		
      </select>
 
</p>
<p>
  <label>是否发布人:
    <select name="textfield5" size="1" >
		<%if rs("isfbr")="True"then%>
        <option value="true">是</option>
		<option value="false">不是</option>
		<%else%>
		<option value="false">不是</option>
		<option value="true">是</option>
		<%end if%>	
		
      </select>

</p></label>
<p>
  <label>是否审批人:
    <select name="textfield6" size="1" >
		<%if rs("isspr")="True"then%>
        <option value="true">是</option>
		<option value="false">不是</option>
		<%else%>
		<option value="false">不是</option>
		<option value="true">是</option>
		<%end if%>
</select>
</label>
</p>
<p>
  <label>是否起草人:
      <select name="textfield7" size="1" >
		<%if rs("isqcr")="True"then%>
        <option value="true">是</option>
		<option value="false">不是</option>
		<%else%>
		<option value="false">不是</option>
		<option value="true">是</option>
		<%end if%>
</select>
  

</p>
</label>
<p>
  <label>
  <input type="submit" name="Submit" value="提交">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	name=Request("name")
	set rs=conn.execute("select * from hy_set where hys_name='"&name&"'")
	i=1
	%>

<form action="��������_update_cz.asp?name=<%=rs("hys_name")%>" method="post" name="form1">
<label>
����������:<input type="text" name="textfield1" value=<%=rs("hys_name")%>>
</label>
<p>
  <label>��������:
  <input type="text" name="textfield2" value=<%=rs("rn_person")%>>
  </label>
</p>
<p><label>��������Դ:
  <input type="text" name="textfield3" value=<%=rs("hyzy")%>>
</label>
</p>
<p>
  <label>ʹ�����:
   <select name="textfield4" size="1" >
		<%if rs("hys_use")="True"then%>
        <option value="true">ռ��</option>
		<option value="false">δռ��</option>
		<%else%>
		<option value="false">δռ��</option>
		<option value="true">ռ��</option>
		<%end if%>	
		
      </select>
 
</p>
<p>
  <label>˵��:
	<input type="text" name="textfield5"value=<%=rs("explain")%>>
</p></label>

<p>
  <label>
  <input type="submit" name="Submit" value="�ύ">
  </label>
</p>
<p><br>
  &nbsp;</p>
</form>

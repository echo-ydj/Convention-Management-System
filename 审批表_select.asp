<!--#include file="link_nr.asp"-->
<link rel="stylesheet" type="text/css" href="css/style_1.css">
<% set rs=Server.CreateObject("adodb.recordset")
	''rs.open "select * from user_1",ConnStr,3
	set rs=conn.execute("select * from hy_apply")
	i=1
	%>

<table border="1" bgcolor="">
<tr bgcolor="#999999">
<td>��������</td>
<td>��������</td>
<td>Ԥ��</td>
<td>�����ϴ�</td>
<td>������</td>
<td>��¼��</td>
<td>�μ���Ա</td>
<td>����ص�</td>
<td>������</td>
<td>���鿪ʼʱ��</td>
<td>�������ʱ��</td>

<td>��������</td>
<td>������</td>
<td>�Ƿ�ͬ��</td>
<td>�޸����</td>

<td>ȷ��</td>
</tr>

<% do while not rs.bof and not rs.eof%>
<tr<% if i mod 2=0 then %> bgcolor="#999999"<% end if %>>
<form action="����_update_cz.asp?name=<%=rs("hys_name")%>" method="post" name="form1">
<br>
<td ><%=rs("hyxz")%></td>
<td><%=rs("hyyt")%></td>
<td><%=rs("ys")%></td>
<td><%=rs("fjsc")%></td>
<td><%=rs("zcr")%></td>
<td><%=rs("jly")%></td>
<td><%=rs("cjry")%></td>
<td><%=rs("hydd")%></td>
<td><%=rs("hys_name")%></td>
<td><%=rs("hy_start")%></td>
<td><%=rs("hy_over")%></td>
<td><%=rs("hy_nr")%></td>
<td><%=rs("spr")%></td>
<td>
<select name="textfield3" size="1" >
		<%if rs("flag")="True"then%>
        <option value="true">ͬ��</option>
		<option value="false">��ͬ��</option>
		<%else%>
		<option value="false">��ͬ��</option>
		<option value="true">ͬ��</option>
		<%end if%>	
		
      </select>
	  </td>
	<td><input name="yj" type="text"></td>



<td><input type="submit" name="Submit" value="�ύ"></td>
</form>
</tr>
<%
rs.movenext()
''next
i=i+1
loop
%>
</table>

<a href="manage.html">������ҳ</a>
<!--#include file="link_nr.asp"-->
<%
	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("select * from hy_type")


%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<link rel="stylesheet" href="css/style.css" type="text/css">
<title>�����Ҫ</title>

</head>


<body>
<div align="center">
<h2>�����Ҫ</h2>
  <form action="�����Ҫ_insert.asp" method="post" enctype="multipart/form-data" name="form1">
    <label>
	������������:
       <select name="hyxz" size="1" >
		<% do while not rs.bof and not rs.eof%>
        <option value="<%=rs("hyxz")%>"><%=rs("hyxz")%></option>

			<%rs.movenext()
			loop
			%>
      </select>
    </label>
    <p>
      <label>
	  ��Ҫ����:
      <input type="text" name="textfield2">
      </label>
</p>
    <p>
      <label></label>
      <label>
	  �����ϴ�:
      <input type="file" name="file">
      </label>
    </p>
    <p>
      <label>
	  ��¼Ա:
      <input type="text" name="textfield4">
      </label>
</p>
    <p>
      <label>
	  ����Ա:
      <input type="text" name="textfield5">
      </label>
    </p>
   
	 <label>
    <input type="submit" name="Submit" value="�ύ">
    </label>
    <label>
    <input name="Submit2" type="reset" value="����">
    </label>
  </form>
  <a href="�����Ҫ_select.asp">�鿴�����Ҫ</a>
</div>
</body>
</html>

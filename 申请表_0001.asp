<!--#include file="link_nr.asp"-->
<%
	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("select * from hy_type")
set rs_1=server.CreateObject("adodb.recordset")
	set rs_1=conn.execute("select * from hy_set where hys_use=0")

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ݻ��鰲��(������)</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<div align="center" style="background-color:lightgrey;">
<h2>���������</h2>
<form action="����.asp" method="post"  name="form1">
  <label>��������:
  
		  <select name="hyxz" size="1" >
		<% do while not rs.bof and not rs.eof%>
        <option value="<%=rs("hyxz")%>"><%=rs("hyxz")%></option>

			<%rs.movenext()
			loop
			%>
      </select>
  </label>
  
  
  <p>
    <label>��������:
    <input type="text" name="textfield2">
    </label>
  </p>
  <p>
    <label>Ԥ��:
    <input type="text" name="textfield3">
    </label>
  </p>
  <p>
    <label>���鸽�����:
    <input type="file" name="file">
    </label>
  </p>
  <p>
    <label>������:
    <input type="text" name="textfield4">
    </label>
  </p>
  <p>
    <label>��¼��Ա:
    <input type="text" name="textfield5">
    </label>
  </p>
  <p>
    <label>�μ���Ա:
    <input type="text" name="textfield6">
    </label>
  </p>
  <p>����ص�:
    <label>
    <input type="text" name="textfield7">
    </label>
  </p>
  <p>������:
    <label>
      <select name="hys_name" size="1" >
		<% do while not rs_1.bof and not rs_1.eof%>
        <option value="<%=rs_1("hys_name")%>"><%=rs_1("hys_name")%></option>

			<%rs_1.movenext()
			loop
			%>
      </select>
    </label>

  <p>
    <label>���鿪ʼʱ��:
    <input type="text" name="textfield8">
    </label>
  </p>
  <p>
    <label>�������ʱ��:
    <input type="text" name="textfield9">
    </label>
  </p>
  <p>
    <label>��������:    
	</label>
  </p>

  <textarea name="textarea" cols="40" style="overflow:scroll;rows:100px;"></textarea>
  <p >
    <label>������:
    <input  type="text" name="textfield10" >
    </label>
  </p>
  <p>
    <label>
    <input type="submit" name="Submit" value="�ύ">
    </label>
    <label>
    <input name="Submit2" type="reset" value="����">
    </label>
  </p>
</form>
<a href="��������_select.asp">�鿴�����</a>
</div>


</body>

</html>


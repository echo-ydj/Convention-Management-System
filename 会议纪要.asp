<!--#include file="link_nr.asp"-->
<%
	set rs=server.CreateObject("adodb.recordset")
	set rs=conn.execute("select * from hy_type")


%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<link rel="stylesheet" href="css/style.css" type="text/css">
<title>会议纪要</title>

</head>


<body>
<div align="center">
<h2>会议纪要</h2>
  <form action="会议纪要_insert.asp" method="post" enctype="multipart/form-data" name="form1">
    <label>
	会议类型名称:
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
	  纪要内容:
      <input type="text" name="textfield2">
      </label>
</p>
    <p>
      <label></label>
      <label>
	  附件上传:
      <input type="file" name="file">
      </label>
    </p>
    <p>
      <label>
	  记录员:
      <input type="text" name="textfield4">
      </label>
</p>
    <p>
      <label>
	  管理员:
      <input type="text" name="textfield5">
      </label>
    </p>
   
	 <label>
    <input type="submit" name="Submit" value="提交">
    </label>
    <label>
    <input name="Submit2" type="reset" value="重置">
    </label>
  </form>
  <a href="会议纪要_select.asp">查看会议纪要</a>
</div>
</body>
</html>

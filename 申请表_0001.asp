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
<title>起草会议安排(申请人)</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<div align="center" style="background-color:lightgrey;">
<h2>会议申请表</h2>
<form action="测试.asp" method="post"  name="form1">
  <label>会议性质:
  
		  <select name="hyxz" size="1" >
		<% do while not rs.bof and not rs.eof%>
        <option value="<%=rs("hyxz")%>"><%=rs("hyxz")%></option>

			<%rs.movenext()
			loop
			%>
      </select>
  </label>
  
  
  <p>
    <label>会议议题:
    <input type="text" name="textfield2">
    </label>
  </p>
  <p>
    <label>预算:
    <input type="text" name="textfield3">
    </label>
  </p>
  <p>
    <label>会议附件添加:
    <input type="file" name="file">
    </label>
  </p>
  <p>
    <label>主持人:
    <input type="text" name="textfield4">
    </label>
  </p>
  <p>
    <label>记录人员:
    <input type="text" name="textfield5">
    </label>
  </p>
  <p>
    <label>参加人员:
    <input type="text" name="textfield6">
    </label>
  </p>
  <p>会议地点:
    <label>
    <input type="text" name="textfield7">
    </label>
  </p>
  <p>会议室:
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
    <label>会议开始时间:
    <input type="text" name="textfield8">
    </label>
  </p>
  <p>
    <label>会议结束时间:
    <input type="text" name="textfield9">
    </label>
  </p>
  <p>
    <label>会议内容:    
	</label>
  </p>

  <textarea name="textarea" cols="40" style="overflow:scroll;rows:100px;"></textarea>
  <p >
    <label>审批人:
    <input  type="text" name="textfield10" >
    </label>
  </p>
  <p>
    <label>
    <input type="submit" name="Submit" value="提交">
    </label>
    <label>
    <input name="Submit2" type="reset" value="重置">
    </label>
  </p>
</form>
<a href="会议申请_select.asp">查看申请表</a>
</div>


</body>

</html>


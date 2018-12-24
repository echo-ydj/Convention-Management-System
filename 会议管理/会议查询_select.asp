<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>会议查询</title>
<link rel="stylesheet" href="css/style_1.css"  type="text/css">
</head>

<body>


<ul>
	<li><a href="#"target="ifra">已开会议</a></li>
	 
	
	<li><a target="ifra1">已开会议</a>待开会议</li>
	
	<li><a target="_self">已开会议</a>会议纪要</li>
</ul>

<iframe   src="会议类型_select.asp"    name="ifra"></iframe>
<iframe  src="会议类型_select.asp"  width="200px"  height="400px"  name="ifra1"></iframe>
<iframe  src="会议类型_select.asp"  width="200px"  height="400px"  name="ifra2"></iframe>

</body>
</html>

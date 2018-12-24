<!--#include file="link_nr.asp"-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>会议查询</title>
<link rel="stylesheet" href="css/style_1.css"  type="text/css">
<style>

#contain{
display:none
}
#containb{
display:none
}
#containc{
display:none
}
div{
margin-right:5%;

}
#div{
margin-left:20px;
}

</style>


<SCRIPT LANGUAGE="JavaScript">
function aa(){
  contain.style.display='block';
  containb.style.display='none';
  containc.style.display='none';
  
  
}
function bb(){
  containb.style.display='block';
  contain.style.display='none';
  containc.style.display='none';
}

function cc(){
  containc.style.display='block';
  containb.style.display='none';
  contain.style.display='none';
}


</SCRIPT>
</head>

<body>
<div style="float:left">

<ul>
	<li><a href="select_已开会议.asp"target="ifra" onclick=aa()>已开会议</a></li>
	 
	<li><a href="select_未开会议.asp" target="ifra1" onclick=bb()>待开会议</a></li>
	
	<li><a href="select_已开会议纪要.asp" target="ifra2" onclick=cc()>会议纪要</a></li>
</ul>
</div>
<div id="div" align="center">
<div id="contain" >
<iframe  src="select_已开会议.asp"   name="ifra" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>
<div id="containb">
<iframe  src="select_未开会议.asp"    name="ifra1" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>
<div id="containc">
<iframe  src="select_已开会议纪要.asp"   name="ifra2" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>

</div>
</body>
</html>

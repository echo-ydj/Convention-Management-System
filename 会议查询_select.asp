<!--#include file="link_nr.asp"-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����ѯ</title>
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
	<li><a href="select_�ѿ�����.asp"target="ifra" onclick=aa()>�ѿ�����</a></li>
	 
	<li><a href="select_δ������.asp" target="ifra1" onclick=bb()>��������</a></li>
	
	<li><a href="select_�ѿ������Ҫ.asp" target="ifra2" onclick=cc()>�����Ҫ</a></li>
</ul>
</div>
<div id="div" align="center">
<div id="contain" >
<iframe  src="select_�ѿ�����.asp"   name="ifra" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>
<div id="containb">
<iframe  src="select_δ������.asp"    name="ifra1" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>
<div id="containc">
<iframe  src="select_�ѿ������Ҫ.asp"   name="ifra2" noresize="noresize" scrolling="yes" width="800px" height="300px;"></iframe></div>

</div>
</body>
</html>

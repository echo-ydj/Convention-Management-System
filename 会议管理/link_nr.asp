<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
Dim conn,ConnStr 
ConnStr="Driver={SQL Server};Server=(local);Uid=sa;Pwd=123;Database=»áÒé;"
set Conn=server.CreateObject("adodb.connection")

conn.open ConnStr
''Conn.close
''set Conn=nothing

%>

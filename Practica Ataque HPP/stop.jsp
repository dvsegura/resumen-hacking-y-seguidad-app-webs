<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<TITLE>WAF</TITLE>
</HEAD>
<body bgColor="#000000">
<%
String id = request.getParameter("id");
%>
<div style="margin-top:50px;color:#FFF;font-size:40px;text-align:center;">
<font color="FF0000">
Ataque bloqueado por el WAF, solo puede introducir numeros y ha introducido: <% out.print(id);%>
</font>
</div>
</body>
</HTML>
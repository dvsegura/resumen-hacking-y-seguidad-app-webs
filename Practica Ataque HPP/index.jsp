<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 trANSITIONAL //EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "java.io.*"%>
<%@ page import= "java.net.*"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<TITLE>WAF</TITLE>
</HEAD>
<body bgColor="#000">
<%
String id = request.getParameter("id");
String qs = request.getQueryString();
if(id != null){
    if(id != ""){
        try{
            String rex = "^\\d+$";
            Boolean match = id.matches(rex);
            if(match == true){
                URL sql_libros = new URL("http://localhost/librosSeguridad.php?" + qs);
                URLConnection sql_libros_connection = sql_libros.openConnection();
                BufferedReander in = new BufferedReander(new InputStreamReader(sql_libros_connection.getInputStream()));
                String inputLine;
                while((inputLine = in.readLine()) != null){
                    out.print(inputLine);
                    in.close();
                }
            }else{
                response.sendRedirect("stop.jsp?"+qs);
            }
        }
        catch(Exception ex){
            out.print("<font color= '#ffff00'>");
            out.println("ex");
            out.print("</font>");
        }
        finally{

        }
    }
}else{
    URL sql_libros = new URL("http://localhost/librosSeguridad.php");
    URLConnection sql_libros_connection = sql_libros.openConnection();
    BufferedReander in = new BufferedReander(new InputStreamReader(sql_libros_connection.getInputStream()));
    String inputLine;
    while((inputLine = in.readLine()) != null){
        out.print(inputLine);
        in.close();
    }
}
%>
</font>
</div>
<center>
</center>
</body>
</HTML>
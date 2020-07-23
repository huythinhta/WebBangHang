<%-- 
    Document   : login
    Created on : Oct 6, 2019, 2:03:37 PM
    Author     : Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        
        <form action="controllerCustomer" method="post" class="box">
            <h1>Đăng nhập</h1>
            <input type="text" name="txtusername" placeholder="Username"/><br/>
            <input type="password" name="txtpassword" placeholder="Password"/><br/>
            <input type="submit" name="btaction" value="login"/>
            <input type="reset" value="reset"/>
        </form>
    </body>
</html>

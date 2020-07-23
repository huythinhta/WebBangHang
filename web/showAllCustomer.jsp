<%-- 
    Document   : showAllCustomer
    Created on : Oct 13, 2019, 4:02:05 PM
    Author     : Thinh
--%>

<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="model.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--        <link rel="stylesheet" href="css/styleMenu.css">-->
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    </head>
    <body>
       
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">Shop của Thịnh</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>

                    <li><a href="showAllCustomer.jsp">Customer</a></li>
                    <li><a href="showAllProduct.jsp">Product</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="showcart.jsp">Show cart</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span><font color="red">welcome, ${sessionScope.USER}</font></a></li>
                    
                </ul>
                 
            </div>
        </nav>
        <h1>Khách Hàng</h1>
        <table border="1" class="table">
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Last name</td>
                <td>email</td>
                <td>phone number</td>
                <td>address</td>
                <td><form action="controllerCustomer" method="get">
                        <input type="submit" value="Insert" name="btaction" ></form></td>
            </tr>
            <%
                Customers dskhachhang = new Customers();
                List<Customer> list = dskhachhang.showCustomer("");
                for (Customer ctm : list) {
                    out.print("<form action='controllerCustomer' method='get'>");
                    out.print("<tr>"
                            + "<td>" + ctm.getUsername() + "</td>"
                            + "<td>" + ctm.getPassword() + "</td>"
                            + "<td>" + ctm.getLastname() + "</td>"
                            + "<td>" + ctm.getEmail() + "</td>"
                            + "<td>" + ctm.getPhonenumber() + "</td>"
                            + "<td>" + ctm.getAddress() + "</td>"
                            + "<td>" + "<input type='submit' name='btaction' value='Update'>" + "</td>"
                            + "<td>" + "<input type='submit' name='btaction' value='Delete'>" + "</td>"
                            + "<input type='hidden' name='txtUsername' value='" + ctm.getUsername() + "'>"
                            + "<input type='hidden' name='txtPassword' value='" + ctm.getPassword() + "'>"
                            + "<input type='hidden' name='txtLastname' value='" + ctm.getLastname() + "'>"
                            + "<input type='hidden' name='txtEmail' value='" + ctm.getEmail() + "'>"
                            + "<input type='hidden' name='txtPhonenumber' value='" + ctm.getPhonenumber() + "'>"
                            + "<input type='hidden' name='txtAddress' value='" + ctm.getAddress() + "'>"
                            + "</tr>");
                    out.print("</form>");
                }
            %>
        </table>
    
</body>
 <%@ include file="footer.jsp" %> 
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</html>

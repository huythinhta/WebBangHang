<%-- 
    Document   : showAllProduct
    Created on : Oct 6, 2019, 2:13:08 PM
    Author     : Thinh
--%>

<%@page import="model.Products"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_product.css">
        


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

    <content> 

        <%
            Products dsSanpham = new Products();
            List<Product> list = dsSanpham.showProduct("");
            for (Product sp : list) {
                out.print("<form action='controllerProduct' method='post'>");
                out.print("<div class=\"card1\">");
                out.print("<div class=\"top-section1\">");
                out.print("<img id=\"image-container1\" src='" + sp.getImg() + "' alt=\"\">");
                out.print("<div class=\"price1\">" + sp.getPrice() + " US Dollar " + "</div></div>");
                out.print("<div class=\"product-info1\">");
                out.print("<div class=\"name\">" + sp.getName() + "</div>");
                out.print("<div class=\"dis1\">" + sp.getCategory() + "</div>");
                out.print("<input type='submit' class=\"btn btn-warning\" name='action' value='Update'>");

                out.print("<input type='submit' class=\"btn btn-warning\" name='action' value='Delete'>");
                out.print("</div></div>");
                out.print("<input type='hidden' name='txtCode' value='" + sp.getCode() + "'>"
                        + "<input type='hidden' name='txtName' value='" + sp.getName() + "'>"
                        + "<input type='hidden' name='txtPrice' value='" + sp.getPrice() + "'>"
                        + "<input type='hidden' name='txtCategory' value='" + sp.getCategory() + "'>"
                        + "<input type='hidden' name='txtImg' value='" + sp.getImg() + "'>"
                );
                out.print("</form>");
            }
        %>
        <form action="controllerProduct" method="get">
            <input type="submit" class="btn btn-primary btn-block" value="Insert" name="action" ></form>

    </content>
</body>
<!-- Footer -->
<%@ include file="footer_1.jsp" %> 
</html>

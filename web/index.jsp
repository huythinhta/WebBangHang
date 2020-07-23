<%-- 
    Document   : index
    Created on : Oct 6, 2019, 2:43:12 PM
    Author     : Thinh
--%>

<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <link rel="stylesheet" href="css/style_product.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
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
                    <li><a href="showcart1.jsp">Test</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="showcart1.jsp">Show cart</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span><font color="red">welcome, ${sessionScope.USER}</font></a></li>

                </ul>
            </div>
        </nav>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="img/slide1.jpg" alt="Los Angeles" width="100%" height="500px" > 
                </div>

                <div class="item">
                    <img src="img/slide2.png" alt="Chicago" width="100%" height="500px">
                </div>

                <div class="item">
                    <img src="img/slide3.jpg" alt="New York" width="100%" height="500px">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    
        <h1 style="text-align: center;padding-top: 20px">Sản Phẩm</h1>
        <hr border="1">
        
        <div> 
            <%
                Products dsSanpham = new Products();
                List<Product> list = dsSanpham.showProductbycategory("SM");
                for (Product sp : list) {
                    out.print("<form action='controllerCartBean' method='get'>");
                    out.print("<div class=\"card1\">");
                    out.print("<div class=\"top-section1\">");
                    out.print("<img id=\"image-container1\" src='" + sp.getImg() + "' alt=\"\">");
                    out.print("<div class=\"price1\">" + sp.getPrice() + "$" + "</div></div>");
                    out.print("<div class=\"product-info1\">");
                    out.print("<div class=\"name\">" + sp.getName() + "</div>");
                    out.print("<div class=\"dis1\">" + sp.getPrice() + "$</div>");
                    out.print("<input type='submit' class=\"btn1\" name='action' value='Add to Cart'>");
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
        </div>
        <div>
            <%
                Products dsSanpham2 = new Products();
                List<Product> list2 = dsSanpham2.showProductbycategory("LT");
                for (Product sp : list2) {
                    out.print("<form action='controllerCartBean' method='get'>");
                    out.print("<div class=\"card1\">");
                    out.print("<div class=\"top-section1\">");
                    out.print("<img id=\"image-container1\" src='" + sp.getImg() + "' alt=\"\">");
                    out.print("<div class=\"price1\">" + sp.getPrice() + "$" + "</div></div>");
                    out.print("<div class=\"product-info1\">");
                    out.print("<div class=\"name\">" + sp.getName() + "</div>");
                    out.print("<div class=\"dis1\">" + sp.getPrice() + "$</div>");
                    out.print("<input type='submit' class=\"btn1\" name='action' value='Add to Cart'>");
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
        </div>
    
</tbody>

</body>

</html>

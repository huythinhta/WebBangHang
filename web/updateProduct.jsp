<%-- 
    Document   : updateProduct
    Created on : Oct 13, 2019, 3:07:52 PM
    Author     : Thinh
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="border"></div>
            <form action="controllerProduct" method="get">
                <c:choose>
                    <c:when test = "${sessionScope.Check =='Insert'}">
                        <h1>Insert Product:</h1><br>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Mã sản phẩm" name="txtCode">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Tên sản phẩm" name="txtName">
                        </div>
                        
                        <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Giá tiền" name="txtPrice">
                                <div class="input-group-append">
                                    <span class="input-group-text">US Dollar</span>
                                </div>
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Mã loại" name="txtCategory">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="txtImg" value="img/" >
                            <div class="input-group-append">
                                    <span class="input-group-text">.jpg</span>
                                </div>
                        </div>
                        <input type="submit" name="action" value="insert" class="btn-primary">

                    </c:when>
                    <c:when test = "${sessionScope.Check == 'Update'}">
                        <h1>Update Product:${sessionScope.Code}</h1>
                        
                        <div class="input-group mb-3">
                            <input type="hidden" class="form-control" name="txtCode" value="${sessionScope.Code}">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="txtName" value="${sessionScope.Name}">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="txtPrice" value="${sessionScope.Price}">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="txtCategory" value="${sessionScope.Category}">
                        </div>
                        
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="txtImg" value="${sessionScope.Img}">
                        </div>
                        <input type="submit" name="action" value="update" class="btn-danger">
                    </c:when>
                </c:choose>

            </form>
        </div>
    </body>
</html>

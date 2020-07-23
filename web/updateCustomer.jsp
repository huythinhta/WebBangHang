<%-- 
    Document   : updateCustomer
    Created on : Oct 13, 2019, 6:44:33 PM
    Author     : Thinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--        <link rel="stylesheet" type="text/css" href="css/khachhang.css">-->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <style>
            
        </style>
    </head>
    <body>
        <div class="contact-section">
            <div class="border"></div>
            <form action="controllerCustomer" method="get">
                <c:choose>
                    <c:when test="${sessionScope.Check == 'Insert'}">
                        <h3>Insert Customer:</h3><br>
                        <div class="container">

                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Username" name="txtUsername">
                            </div>

                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Password" name="txtPassword">
                            </div>

                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Họ và tên" name="txtLastname">
                            </div>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Email" name="txtEmail">
                                <div class="input-group-append">
                                    <span class="input-group-text">@example.com</span>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">+84</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Số điện thoại" name="txtPhonenumber">
                            </div>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Địa chỉ" name="txtAddress">
                            </div>
                            <input type="submit" class="lienlac-btn" name="btaction" value="insert">
                        </c:when>
                        <c:when test="${sessionScope.Check =='Update'}">
                            <div class="container">
                            <h3>Update Customer: ${sessionScope.Username}</h3><br>
                            
                            <div class="input-group mb-3">
                                <input type="hidden" class="form-control" placeholder="Username" name="txtUsername" value="${sessionScope.Username}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Password" name="txtPassword" value="${sessionScope.Password}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Họ và tên" name="txtLastname" value="${sessionScope.Lastname}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Email" name="txtEmail" value="${sessionScope.Email}">
                                <div class="input-group-append">
                                    <span class="input-group-text">@example.com</span>
                                </div>
                            </div>
                            
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text">+84</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Số điện thoại" name="txtPhonenumber" value="${sessionScope.Phonenumber}">
                            </div>
                            
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Địa chỉ" name="txtAddress" value="${sessionScope.Address}">
                            </div>
                            <input type="submit" class="btn btn-primary" name="btaction" value="update">
                        </c:when>
                    </c:choose>

                </div>

            </form>
        </div>
    </body>
</html>

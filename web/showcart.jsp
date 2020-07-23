<%-- 
    Document   : showcart
    Created on : Oct 6, 2019, 2:37:25 PM
    Author     : Thinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css"

    </head>
    <body>
        <h1>Your shopping cart!</h1>

        <c:set var="shop" value="${sessionScope.SHOP}"/>
        <c:if test="${not empty shop}">
            <table class="table table-hover" border="1">
                <thead class="thead-dark">
                    <tr>
                        <td>No.</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Category</td>
                        <td>Image</td>
                        <td>Action</td>
                        <td class="total">Total</td>
                    </tr>
                </thead>
                <tbody>

                    <c:set var="count" value="0"/>
                    <c:set var="total" value="0"/>
                <form action="controllerCartBean">
                    <c:forEach var="rows" items="${shop}">
                        <c:set var="count" value="${count + 1}"/>
                        <tr>
                            <td>${count}</td>
                            <td>${rows.value.sanpham.code}</td>
                            <td>${rows.value.sanpham.name}</td>
                            <td>${rows.value.sanpham.price}</td>
                            <td>${rows.value.quantity}</td>
                    <td>${rows.value.sanpham.category}</td>
                    <td><img src ='${rows.value.sanpham.img}' width=50px height=50px />
                    <td><input type="checkbox" name="rmv"
                               value="${rows.value.sanpham.code}"/></td>
                    <td class="cart_price" >
                        <p> <c:set var="a" value="${rows.value.sanpham.price * rows.value.quantity}"/>${rows.value.sanpham.price * rows.value.quantity}</p>
                    </td>
                    <c:set var="total" value= "${total + a}" />
                </tr>
            </c:forEach>
            <tr>
                <c:url var="add" value="controllerCartBean">
                    <c:param name="action" value="AddMore"/>
                </c:url>
                <td colspan="2"><a href="${add}">Add more</a></td>
                <td><input type="submit" value="Remove" name="action"/></td>
                <td><h1>Tổng tiền</h1>${total}</td>
            </tr>
        </form>
    </tbody>

</table>
<hr>
<div class="container" >

    <div class="input-group mb-1">
        <input type="text" class="form-control" placeholder="Some text">
    </div>

    <div class="input-group mb-1" style="padding-left: 10px">
        <div class="input-group-prepend">
            <span class="input-group-text">Phương thức giao hàng</span>
            <div class="input-group-text">
                <input type="radio" name="gender" value="male">
            </div>
            <span class="input-group-text">Grab Expresss 2h</span>
            <div class="input-group-text">
                <input type="radio" name="gender" value="female">
            </div>
            <span class="input-group-text">Giao qua bưu điện</span>
            <div class="input-group-text">
                <input type="radio" name="gender" value="female">
            </div>
            <span class="input-group-text">Giao hàng tiết kiệm</span>
        </div>
    </div> 

</c:if>

</div>

</body>
<%@ include file="footer_1.jsp" %> 
</html>

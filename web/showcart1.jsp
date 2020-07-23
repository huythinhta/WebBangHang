<%-- 
    Document   : showcart1
    Created on : Oct 23, 2019, 8:24:20 AM
    Author     : Huy Thinh
--%>
<%@page import="model.Customer"%>
<%@page import="java.util.List"%>
<%@page import="model.Customers"%>
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
        <div class="container">

        </div>
        <div class="card">
            <div class="card-header">
                Ngày tạo hóa đơn
                <strong><%= (new java.util.Date()).toLocaleString()%></strong> 
                <span class="float-right"> <strong>Khách hàng:</strong> ${sessionScope.USER}</span>
            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-6">
                        <h6 class="mb-3">To:</h6>
                        <div>
                            Name:${sessionScope.User}
                        </div>
                        <%
                            Customers ctms = new Customers();
                            String username = (String) session.getAttribute("USER");
                            List<Customer> list = ctms.showCustomer(username);
                            for (Customer ct : list) {
                                out.print("<div>" + ct.getLastname() + "</div>"
                                        + "<div>Address:" + ct.getAddress() + "</div>"
                                        + "<div>Email:" + ct.getEmail() + "</div>"
                                        + "<div>Phone:" + ct.getPhonenumber() + "</div>"
                                );
                            }
                        %>
                    </div>
                </div>
                <div class="table-responsive-sm">
                    <c:set var="shop" value="${sessionScope.SHOP}"/>
                    <c:if  test="${not empty shop}">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th class="center">No.</th>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Category</th>
                                    <th>Image</th>
                                    <th>Action</th>
                                    <th>Total</th>
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
                                        <td><img src ='${rows.value.sanpham.img}' width=50px height=50px></td>
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
                                    <td><a href="${add}">Add more</a></td>
                                    <th><input type="submit" value="Remove" name="action"/></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </form>
                            </tbody>
                        </table>
                    </c:if>
                </div>
                <div class="row">
                    <c:set var="ship" value="1"/>
                    <c:set var="grab" value="300"/>
                    <c:set var="buudien" value="200"/>
                    <c:set var="tietkiem" value="100"/>
                    <div class="col-lg-4 col-sm-5">

                        <div class="input-group mb-1" style="padding-left: 10px">
                            <form>
                                <select name="item" id="item">
                                    <option value="nhanh">Giao hàng nhanh</option>
                                    <option value="tietkiem">Giao hàng tiết kiệm</option>
                                    <option value="dennhan">Đến shop nhận</option>
                                </select>
                                <input type="button" name="action" value="chon" onclick="ship();">
                            </form>
                        </div>
                    </div> 
                    <div class="col-lg-3 col-sm-5 ml-auto">
                        <table class="table table-clear">
                            <tbody>
                                <tr>
                                    <td class="left">
                                        <strong>Tiền hảng</strong>
                                    </td>
                                    <td class="right" id="tongtien">${total}</td>
                                </tr> 
                                <tr>
                                    <td class="left">
                                        <strong>Tiền giao hàng</strong>

                                    </td>
                                    <td class="right">
                                        <div id="tienship"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="left">
                                        <strong>Tổng tiền cần thanh toán</strong>
                                    </td>
                                    <td class="right">
                                        <div id="tongTien"></div>
                                        <input type="button" name="action" id="buy" value="buy" onclick="buy();">
                                    </td>

                                </tr> 

                                </body>
                            <script>
                                function ship()
                                {
                                    var a = document.getElementById("item").value;
                                    var giaTien = document.getElementById("tongtien").innerHTML;
                                    var tien = parseFloat(giaTien);

                                    if (a == "nhanh") {
                                        tien = tien + 30;
                                        document.getElementById('tienship').innerHTML = '300';
                                    } else if (a == "tietkiem") {
                                        tien = tien + 20;
                                        document.getElementById('tienship').innerHTML = '200';
                                    } else if (a == "dennhan")
                                    {
                                        document.getElementById('tienship').innerHTML = 'Miễn phí';
                                    }
                                    document.getElementById("tongTien").innerHTML = tien + " USD";
                                }
                                function buy()
                                {
                                    var b = alert("Mua hàng thành công ! Chúc bạn may mắn");
                                    document.write(b);

                                    window.location = "index.jsp"
                                }
                            </script>
                            </html>

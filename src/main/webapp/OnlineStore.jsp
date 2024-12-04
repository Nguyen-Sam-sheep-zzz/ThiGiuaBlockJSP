<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Order" %>
<%@ page import="com.example.demo1.Cart" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cart List</title>
</head>
<body>
<% List<Cart> carts = new ArrayList<>();
    carts.add(new Cart("Jacket", 10, 5000, "50000"));
    carts.add(new Cart("Jacket", 10, 5000, "50000"));
    carts.add(new Cart("Bomber", 10, 5000, "50000"));
    carts.add(new Cart("Hat", 10, 5000, "50000"));
    carts.add(new Cart("T", 10, 5000, "50000"));

    request.setAttribute("carts", carts);
%>
<h1>Danh sách giỏ hàng</h1>
<table border="1">
    <tr>
        <th>Tên sản phẩm</th>
        <th>Số lượng</th>
        <th>Giá</th>
        <th>Tổng giá</th>
    </tr>
    <c:forEach items="${carts}" var="carts">
        <tr>
            <td>${carts.nameProduct}</td>
            <td>${carts.quantity}</td>
            <td>${carts.price}</td>
            <td>${carts.total}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

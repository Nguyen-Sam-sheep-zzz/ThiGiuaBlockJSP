<%@ page import="com.example.demo1.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Order" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Order List</title>
</head>
<body>
<% List<Order> orders = new ArrayList<>();
    orders.add(new Order("1", "20-10-2021", "Chí Anh", "Đã giao"));
    orders.add(new Order("2", "20-10-2022", "Khuc Nhan", "Đã giao"));
    orders.add(new Order("3", "20-10-2023", "Bao Khanh", "Đã giao"));
    orders.add(new Order("4", "04-12-2024", "Chí Anh", "Đang giao"));
    orders.add(new Order("5", "20-12-2024", "Chí Anh", "Chưa giao"));
    request.setAttribute("orders", orders);
%>
<h1>Danh sách đơn hàng</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Ngày đặt hàng</th>
        <th>Tên khách hàng</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${orders}" var="orders">
        <tr>
            <td>${orders.orderId}</td>
            <td>${orders.orderDate}</td>
            <td>${orders.customer}</td>
            <td>${orders.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

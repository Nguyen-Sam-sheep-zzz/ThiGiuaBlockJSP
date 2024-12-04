<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Ticket" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí vé xem phim</title>
</head>
<body>
<% List<Ticket> tickets = new ArrayList<>();
    tickets.add(new Ticket("1","Death note","???",20000));
    tickets.add(new Ticket("2","One piece","???",20000));
    tickets.add(new Ticket("3","HxH","???",20000));
    tickets.add(new Ticket("4","Dragon Ball","???",20000));
    tickets.add(new Ticket("5","Doraemon","???",20000));
    request.setAttribute("tickets", tickets);
%>
<h1>Danh sách phiếu</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên phim</th>
        <th>Xuất chiếu</th>
        <th>Giá</th>
    </tr>
    <c:forEach items="${tickets}" var="tickets">
        <tr>
            <td>${tickets.id}</td>
            <td>${tickets.name}</td>
            <td>${tickets.show}</td>
            <td>${tickets.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Car" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cars list</title>
</head>
<body>
<% List<Car> cars = new ArrayList<>();
    cars.add(new Car("BMW", "Sâm", 20000000, "Còn hàng"));
    cars.add(new Car("Vinfast", "PNV", 20000000, "Còn hàng"));
    cars.add(new Car("Toyota", "Sâm", 20000000, "Còn hàng"));
    cars.add(new Car("Ford", "Sâm", 20000000, "Còn hàng"));
    cars.add(new Car("Mazda", "Sâm", 20000000, "Còn hàng"));
    request.setAttribute("cars", cars);
%>
<h1>Danh sách xe</h1>
<table border="1">
    <tr>
        <th>Tên xe</th>
        <th>Nhà phát hành</th>
        <th>Giá</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${cars}" var="cars">
        <tr>
            <td>${cars.name}</td>
            <td>${cars.manufacturer}</td>
            <td>${cars.price}</td>
            <td>${cars.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

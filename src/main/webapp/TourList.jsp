<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Order" %>
<%@ page import="com.example.demo1.Ticket" %>
<%@ page import="com.example.demo1.Tour" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Tour List</title>
</head>
<body>
<% List<Tour> tours = new ArrayList<>();
    tours.add(new Tour("Tam dao", "Tam dao", "20-10-2022", "còn chỗ",2000000));
    tours.add(new Tour("Hồ gươm", "Hồ gươm", "20-10-2022", "còn chỗ",2000000));
    tours.add(new Tour("Hồ Tây", "Hồ Tây", "20-10-2022", "còn chỗ",2000000));
    tours.add(new Tour("????", "???", "20-10-2022", "còn chỗ",2000000));
    tours.add(new Tour("Bí ẩn", "Bí ẩn", "20-10-2022", "còn chỗ",2000000));
    request.setAttribute("tours", tours);
%>
<h1>Danh sách tour</h1>
<table border="1">
    <tr>
        <th>Tên  tour</th>
        <th>Địa điểm</th>
        <th>Ngày khởi hành</th>
        <th>Tình trạng</th>
        <th>Giá</th>
    </tr>
    <c:forEach items="${tours}" var="tours">
        <tr>
            <td>${tours.name}</td>
            <td>${tours.location}</td>
            <td>${tours.departureDate}</td>
            <td>${tours.status}</td>
            <td>${tours.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

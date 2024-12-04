<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Courses" %>
<%@ page import="com.example.demo1.Event" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí sự kiện</title>
</head>
<body>
<% List<Event> events = new ArrayList<>();
    events.add(new Event("Hát","28-02-2020","Hà nội",3000));
    events.add(new Event("Múa","28-02-2020","Hà nội",3000));
    events.add(new Event("Nhảy","28-02-2020","Hà nội",3000));
    events.add(new Event("Xiếc","28-02-2020","Hà nội",3000));
    events.add(new Event("Kịch","28-02-2020","Hà nội",3000));
    request.setAttribute("events", events);
%>
<h1>Quản lí sự kiện</h1>
<table border="1">\
    <tr>
        <th>Tên sự kiện</th>
        <th>Ngày tổ chức </th>
        <th>Địa điểm</th>
        <th>Số lượng người tham gia</th>
    </tr>
    <c:forEach items="${events}" var="events">
        <tr>
            <td>${events.name}</td>
            <td>${events.date}</td>
            <td>${events.location}</td>
            <td>${events.quantity}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

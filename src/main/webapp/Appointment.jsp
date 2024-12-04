<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Appointment" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách cuộc hẹn</title>
</head>
<body>
<% List<Appointment> appointments = new ArrayList<>();
    appointments.add(new Appointment("Sâm","20-00-2000","Hà nội", "oắt"));
    appointments.add(new Appointment("Khánh","20-00-2000","Hà nội", "oắt"));
    appointments.add(new Appointment("Sâm2","20-00-2000","Hà nội", "oắt"));
    appointments.add(new Appointment("Sâm3","20-00-2000","Hà nội", "oắt"));
    appointments.add(new Appointment("Sâm4","20-00-2000","Hà nội", "oắt"));
    request.setAttribute("appointments", appointments);
%>
<h1>Danh sách cuộc hẹn</h1>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Ngày hẹn</th>
        <th>địa điểm </th>
        <th>Mô tả</th>
    </tr>
    <c:forEach items="${appointments}" var="appointments">
        <tr>
            <td>${appointments.name}</td>
            <td>${appointments.date}</td>
            <td>${appointments.location}</td>
            <td>${appointments.describe}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

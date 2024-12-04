<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Scholarship" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<% List<Scholarship> scholarships = new ArrayList<>();
    scholarships.add(new Scholarship("Khuyến học", "HSG", 200000, "20-10-2020"));
    scholarships.add(new Scholarship("Khuyến học", "HSG", 200000, "20-10-2020"));
    scholarships.add(new Scholarship("Khuyến học", "HSG", 200000, "20-10-2020"));
    scholarships.add(new Scholarship("Khuyến học", "HSG", 200000, "20-10-2020"));
    scholarships.add(new Scholarship("Khuyến học", "HSG", 200000, "20-10-2020"));
    request.setAttribute("scholarships", scholarships);
%>
<h1> Quản lí học bổng</h1>
<table border="1">
    <tr>
        <th>Tên học bổng</th>
        <th>Tiêu chí</th>
        <th>Giá trị</th>
        <th>Hạn nộp</th>
    </tr>
    <c:forEach items="${scholarships}" var="scholarships">
        <tr>
            <td>${scholarships.name}</td>
            <td>${scholarships.criteria}</td>
            <td>${scholarships.value}</td>
            <td>${scholarships.deadline}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

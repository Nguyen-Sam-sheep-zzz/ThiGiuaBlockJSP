<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Ticket" %>
<%@ page import="com.example.demo1.Courses" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí khóa học</title>
</head>
<body>
<% List<Courses> courses = new ArrayList<>();
    courses.add(new Courses("Toán","Cấn Tuấn Anh",2,2000000));
    courses.add(new Courses("Văn","Cấn Tuấn Anh",2,2000000));
    courses.add(new Courses("OOP","Cấn Tuấn Anh",2,2000000));
    courses.add(new Courses("Tiếng anh","Cấn Tuấn Anh",2,2000000));
    courses.add(new Courses("Web","Cấn Tuấn Anh",2,2000000));
    request.setAttribute("courses", courses);
%>
<h1>Danh sách khóa học</h1>
<table border="1">
    <tr>
        <th>Tên khóa học</th>
        <th>Giảng viên</th>
        <th>Số giờ học</th>
        <th>Giá</th>
    </tr>
    <c:forEach items="${courses}" var="courses">
        <tr>
            <td>${courses.name}</td>
            <td>${courses.lecturer}</td>
            <td>${courses.numberOfHours}</td>
            <td>${courses.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

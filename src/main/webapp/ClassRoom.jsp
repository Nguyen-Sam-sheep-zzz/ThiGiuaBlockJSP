<%@ page import="com.example.demo1.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Class room</title>
</head>
<body>
<% List<Student> students = new ArrayList<>();
    students.add(new Student("Chí Anh", "1", 8, "đậu"));
    students.add(new Student("Bảo Khánh", "2", 8, "đậu"));
    students.add(new Student("Văn Dân", "3", 8, "đậu"));
    students.add(new Student("Nhân Sâm", "4", 8, "đậu"));
    students.add(new Student("Khúc Nhân", "5", 8, "đậu"));
    request.setAttribute("students", students);
%>
<h1>Danh sách sinh viên</h1>
<table border="1">
    <tr>
        <th>Tên sinh viên</th>
        <th>ID</th>
        <th>Điểm trung bình</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${students}" var="students">
        <tr>
            <td>${students.name}</td>
            <td>${students.studentId}</td>
            <td>${students.averageScore}</td>
            <td>${students.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

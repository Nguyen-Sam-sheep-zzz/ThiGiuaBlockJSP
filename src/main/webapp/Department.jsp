<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Employee" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí nhân viên</title>
</head>
<body>
<% List<Employee> employees = new ArrayList<>();
    employees.add(new Employee("Chí Anh", "Trưởng phòng",20000000,"Nhân sự","đang làm"));
    employees.add(new Employee("Bảo Khánh", "Nhân viên",20000000,"Nhân sự","đang làm"));
    employees.add(new Employee("Sâm", "Nhân viên",20000000,"Nhân sự","đang làm"));
    employees.add(new Employee("Dân", "Nhân viên",20000000,"Nhân sự","đang làm"));
    employees.add(new Employee("Khánh", "Nhân viên",20000000,"Nhân sự","đang làm"));
    request.setAttribute("employees", employees);
%>
<h1>Danh sách nhân viên</h1>
<table border="1">
    <tr>
        <th>Tên nhân viên</th>
        <th>Chức vụ</th>
        <th>Lương</th>
        <th>Phòng ban</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${employees}" var="employees">
        <tr>
            <td>${employees.name}</td>
            <td>${employees.position}</td>
            <td>${employees.salary}</td>
            <td>${employees.department}</td>
            <td>${employees.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

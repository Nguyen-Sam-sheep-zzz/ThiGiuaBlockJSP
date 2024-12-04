<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.EmployeeTimekeeping" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí chấm công</title>
</head>
<body>
<% List<EmployeeTimekeeping> employeeTimekeepings = new ArrayList<>();
    employeeTimekeepings.add(new EmployeeTimekeeping("Chí Anh","20-10-2022",2,"Hoạt động"));
    employeeTimekeepings.add(new EmployeeTimekeeping("Khánh","20-10-2022",2,"Hoạt động"));
    employeeTimekeepings.add(new EmployeeTimekeeping("Nhân","20-10-2022",2,"Hoạt động"));
    employeeTimekeepings.add(new EmployeeTimekeeping("Sâm","20-10-2022",2,"Hoạt động"));
    employeeTimekeepings.add(new EmployeeTimekeeping("Huy","20-10-2022",2,"Hoạt động"));
    request.setAttribute("employeeTimekeepings", employeeTimekeepings);
%>
<h1>Danh sách chấm công</h1>
<table border="1">
    <tr>
        <th>Tên nhân viên</th>
        <th>Ngày vào làm</th>
        <th>Số giờ làm</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${employeeTimekeepings}" var="employeeTimekeepings">
        <tr>
            <td>${employeeTimekeepings.name}</td>
            <td>${employeeTimekeepings.workday}</td>
            <td>${employeeTimekeepings.numberOfWorkingHours}</td>
            <td>${employeeTimekeepings.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Leave" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí nghỉ phép</title>
</head>
<body>
<% List<Leave> leaves = new ArrayList<>();
    leaves.add(new Leave("Sâm","28-02-2020","28-02-2025","Hoạt động"));
    leaves.add(new Leave("Khánh","28-02-2020","28-02-2025","Hoạt động"));
    leaves.add(new Leave("Nhân","28-02-2020","28-02-2025","Hoạt động"));
    leaves.add(new Leave("Huy","28-02-2020","28-02-2025","Hoạt động"));
    leaves.add(new Leave("Dân","28-02-2020","28-02-2025","Hoạt động"));
    request.setAttribute("leaves", leaves);
%>
<h1>Quản lí nghỉ phép</h1>
<table border="1">\
    <tr>
        <th>Tên nhân viên</th>
        <th>Ngày bắt đầu</th>
        <th>Ngày kết thúc</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${leaves}" var="leaves">
        <tr>
            <td>${leaves.name}</td>
            <td>${leaves.dateF}</td>
            <td>${leaves.dateF}</td>
            <td>${leaves.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

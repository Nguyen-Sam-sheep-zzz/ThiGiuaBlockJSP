<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Patient" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí Bệnh nhân</title>
</head>
<body>
<% List<Patient> patients= new ArrayList<>();
    patients.add(new Patient("Chí Anh",18,"què","20-10-2022","Hoạt động"));
    patients.add(new Patient("Sâm",18,"ốm","20-10-2022","Hoạt động"));
    patients.add(new Patient("Khánh",18,"Quỷ cẩu","20-10-2022","Hoạt động"));
    patients.add(new Patient("Nhân",18,"Nhặng","20-10-2022","Hoạt động"));
    patients.add(new Patient("Huy",18,"què","20-10-2022","Hoạt động"));
    request.setAttribute("patients", patients);
%>
<h1>Danh sách bệnh nhân</h1>
<table border="1">
    <tr>
        <th>Tên bệnh nhân</th>
        <th>Tuổi</th>
        <th>Bệnh lí</th>
        <th>Ngày vào viện</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${patients}" var="patients">
        <tr>
            <td>${patients.name}</td>
            <td>${patients.age}</td>
            <td>${patients.sick}</td>
            <td>${patients.date}</td>
            <td>${patients.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

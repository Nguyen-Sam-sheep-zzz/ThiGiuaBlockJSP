<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Pet" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pet List</title>
</head>
<body>
<% List<Pet> pets = new ArrayList<>();
    pets.add(new Pet("mèo", 20, "Ăn thịt", "Sâm"));
    pets.add(new Pet("chó", 20, "Ăn thịt", "Sâm"));
    pets.add(new Pet("gà", 20, "Ăn thịt", "Sâm"));
    pets.add(new Pet("vịt", 20, "Ăn thịt", "Sâm"));
    pets.add(new Pet("lợn", 20, "Ăn thịt", "Sâm"));
    request.setAttribute("pets",pets);
%>
<h1>Danh sách thú cưng</h1>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Giống loài</th>
        <th>Chủ</th>
    </tr>
    <c:forEach items="${pets}" var="pets">
        <tr>
            <td>${pets.name}</td>
            <td>${pets.age}</td>
            <td>${pets.species}</td>
            <td>${pets.owner}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Document" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Quản lí tài liệu</title>
</head>
<body>
<% List<Document> documents = new ArrayList<>();
    documents.add(new Document("Chí Anh", "Toán","Cấn Tuấn Anh", "PDF"));
    documents.add(new Document("Sâm", "Toán","Cấn Tuấn Anh", "PDF"));
    documents.add(new Document("Khánh", "Toán","Cấn Tuấn Anh", "PDF"));
    documents.add(new Document("Huh", "Toán","Cấn Tuấn Anh", "PDF"));
    documents.add(new Document("GG", "Toán","Cấn Tuấn Anh", "PDF"));
    request.setAttribute("documents", documents);
%>
<h1>Quản lí tài liệu</h1>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Môn học</th>
        <th>Giảng viên</th>
        <th>Định dạng</th>
    </tr>
    <c:forEach items="${documents}" var="documents">
        <tr>
            <td>${documents.name}</td>
            <td>${documents.subject}</td>
            <td>${documents.gv}</td>
            <td>${documents.format}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

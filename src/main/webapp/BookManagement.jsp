<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Book" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book management</title>
</head>
<body>
<% List<Book> books = new ArrayList<>();
    books.add(new Book("Tiếng việt 1", "Sâm", "joke", "2001"));
    books.add(new Book("Tiếng việt 2", "Sâm", "joke", "2001"));
    books.add(new Book("Tiếng việt 3", "Sâm", "aa", "2001"));
    books.add(new Book("Tiếng việt 4", "Sâm", "aa", "2001"));
    books.add(new Book("Tiếng việt 5", "Sâm", "aa", "2001"));

    request.setAttribute("books", books);
%>
<h1>Quản lí sách</h1>
<table border="1">
    <tr>
        <th>Tên sách</th>
        <th>Tác giả</th>
        <th>Thể loại</th>
        <th>Năm phát hành</th>
    </tr>
    <c:forEach items="${books}" var="books">
        <tr>
            <td>${books.name}</td>
            <td>${books.author}</td>
            <td>${books.genre}</td>
            <td>${books.yearOfPublication}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

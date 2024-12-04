<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Tour" %>
<%@ page import="com.example.demo1.Vote" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Vote List</title>
</head>
<body>
<% List<Vote> votes = new ArrayList<>();
    votes.add(new Vote("Ai?",1,2000000));
    votes.add(new Vote("ở đâu?",2,2000000));
    votes.add(new Vote("mck?",3,2000000));
    votes.add(new Vote("wxrdie?",2,2000000));
    votes.add(new Vote("????",1,2000000));
    request.setAttribute("votes", votes);
%>
<h1>Danh sách votes</h1>
<table border="1">
    <tr>
        <th>Câu hỏi</th>
        <th>Bình chọn</th>
        <th>Giá</th>
    </tr>
    <c:forEach items="${votes}" var="votes">
        <tr>
            <td>${votes.question}</td>
            <td>${votes.options}</td>
            <td>${votes.total}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

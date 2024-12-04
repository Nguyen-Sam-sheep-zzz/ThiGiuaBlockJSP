<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.Book" %>
<%@ page import="com.example.demo1.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Bank acc</title>
</head>
<body>
<% List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("1234", "Sâm", "20000000", "đang hoạt động"));
    customers.add(new Customer("1235", "Khánh", "20000000", "đang hoạt động"));
    customers.add(new Customer("1236", "Nhân", "20000000", "đang hoạt động"));
    customers.add(new Customer("1237", "Dân", "20000000", "đang hoạt động"));
    customers.add(new Customer("1232", "Huy", "20000000", "đang hoạt động"));
    request.setAttribute("customers", customers);
%>
<h1>Quản lí tài khoản khách hàng</h1>
<table border="1">
    <tr>
        <th>Số tài khoản</th>
        <th>Tên chủ Tk</th>
        <th>Số dư</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach items="${customers}" var="customers">
        <tr>
            <td>${customers.accountNumber}</td>
            <td>${customers.name}</td>
            <td>${customers.balance}</td>
            <td>${customers.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

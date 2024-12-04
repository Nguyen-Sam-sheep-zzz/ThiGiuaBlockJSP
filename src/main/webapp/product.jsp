<%@ page import="com.example.demo1.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prodcut List</title>
</head>
<body>
<% List<Product> products = new ArrayList<>();
    products.add(new Product("IphoneX", 200000, "10", "https://th.bing.com/th/id/OIP.gXlmZJ1dYJtEQV2iIfnK8QHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    products.add(new Product("Iphone11", 200000, "11", "https://th.bing.com/th/id/OIP.gXlmZJ1dYJtEQV2iIfnK8QHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    products.add(new Product("Iphone12", 200000, "12", "https://th.bing.com/th/id/OIP.gXlmZJ1dYJtEQV2iIfnK8QHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    products.add(new Product("Iphone13", 200000, "13", "https://th.bing.com/th/id/OIP.gXlmZJ1dYJtEQV2iIfnK8QHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    products.add(new Product("Iphone14", 200000, "14", "https://th.bing.com/th/id/OIP.gXlmZJ1dYJtEQV2iIfnK8QHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    request.setAttribute("products", products);
%>
<h1>Danh sách sản phẩm</h1>
<table border="1">
    <tr>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Mô tả</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${products}" var="products">
        <tr>
            <td>${products.name}</td>
            <td>${products.price}</td>
            <td>${products.description}</td>
            <td><img src="${products.imageUrl}" alt="Product Image" width="70" height="50"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

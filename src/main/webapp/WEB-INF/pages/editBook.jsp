<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 30.10.2019
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png" href="<c:url value="/res/15.png"/>"/>
    <c:if test="${empty book.title}">
        <title>Добавление книги</title>
    </c:if>
    <c:if test="${!empty book.title}">
        <title>Изменение книги</title>
    </c:if>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную
    </a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/books"/>">
        <span class="icon icon-prev"></span>Назад
    </a>
</p>
<c:url value="/addBook" var="addURL"/>
<c:url value="/editBook" var="editURL"/>
<form class="style" action="${empty book.title ? addURL : editURL}" name="book" method="POST">
    <c:choose>
        <c:when test="${!empty book.title}">
            <p class="heading">Изменить книгу</p>
            <input type="hidden" name="id" value="${book.id}">
        </c:when>
        <c:otherwise>
            <p class="heading">Добавить книгу</p>
        </c:otherwise>
    </c:choose>
    <p><input type="text" name="title" placeholder="Заголовок" value="${book.title}" autofocus>
    <p><input type="text" name="author" placeholder="Автор" value="${book.author}">
    <p><input type="number" name="year" placeholder="Год" value="${book.year}">
    <p><input type="text" name="publisher" placeholder="Издательство" value="${book.publisher}">
    <p><input type="number" name="qtyOfPages" placeholder="Кол-во стр." value="${book.qtyOfPages}">
    <p><input type="submit" value="Подтвердить"></p>
    <p class="heading">${message}</p>
</form>
</body>
</html>

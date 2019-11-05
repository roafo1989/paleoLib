<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 31.10.2019
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/11.png"/>"/>
    <c:if test="${empty author.lastname}">
        <title>Добавление автора</title>
    </c:if>
    <c:if test="${!empty author.lastname}">
        <title>Изменение автора</title>
    </c:if>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/"/>">
        <span class="icon icon-prev"></span>Вернуться на главную
    </a>
</p>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 200px; color: #e7f6ff; font-size: 15px" href="<c:url value="/authors"/>">
        <span class="icon icon-prev"></span>Назад
    </a>
</p>
<c:url value="/addAuthor" var="addAuthorURL"/>
<c:url value="/editAuthor" var="editAuthorURL"/>
<form class="style" action="${empty author.lastname ? addAuthorURL : editAuthorURL}" name="author" method="POST">
    <c:choose>
        <c:when test="${!empty author.lastname}">
            <p class="heading">Изменить имя автора</p>
            <input type="hidden" name="id" value="${author.id}">
        </c:when>
    <c:otherwise>
        <p class="heading">Добавить автора</p>
    </c:otherwise>
    </c:choose>
        <p><input type="text" name="lastname" placeholder="Фамилия" value="${author.lastname}" autofocus>
        <p><input type="text" name="firstname" placeholder="Имя" value="${author.firstname}">
        <p><input type="text" name="surname" placeholder="Отчество" value="${author.surname}">
        <p><input type="submit" value="Подтвердить">
</body>
</html>

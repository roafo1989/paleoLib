<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roafo
  Date: 29.10.2019
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Палеобиблиотека</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png/jpg/jpeg" href="<c:url value="/res/18.png"/>"/>
</head>
<body>
<p colspan="7" class="left-side link right-side">
    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/books">
    <span class="iconBook"></span>Список книг</a>

    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/authors">
        <span class="iconAuthor"></span>Список авторов</a>

    <a style="margin-right: 70px; color: #e7f6ff; font-size: 100%" href="/publishers">
        <span class="iconPub"></span>Список издательств</a>
</p>

</body>
</html>
